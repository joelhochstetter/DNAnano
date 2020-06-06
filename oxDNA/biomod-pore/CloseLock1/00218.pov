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
	<24.509474, 35.159328, 34.955238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356863, 34.796261, 35.025181>,  <24.265297, 34.578419, 35.067146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356863, 34.796261, 35.025181>,  <24.509474, 35.159328, 34.955238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356863, 34.796261, 35.025181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884638, -0.303681, 0.353828,
		-0.268058, 0.289679, 0.918820,
		-0.381525, -0.907669, 0.174857,
		24.242405, 34.523960, 35.077637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696217, 34.930630, 35.644844>,  <24.509474, 35.159328, 34.955238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696217, 34.930630, 35.644844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604053, 34.603504, 35.433903>,  <24.548756, 34.407230, 35.307339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604053, 34.603504, 35.433903>,  <24.696217, 34.930630, 35.644844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604053, 34.603504, 35.433903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805939, -0.464075, 0.367555,
		-0.545321, -0.340325, 0.766032,
		-0.230408, -0.817810, -0.527351,
		24.534931, 34.358162, 35.275696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556826, 34.262306, 36.044056>,  <24.696217, 34.930630, 35.644844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556826, 34.262306, 36.044056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723719, 34.221554, 35.682827>,  <24.823854, 34.197102, 35.466091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723719, 34.221554, 35.682827>,  <24.556826, 34.262306, 36.044056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723719, 34.221554, 35.682827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730635, -0.553335, 0.399992,
		-0.540451, -0.826705, -0.156433,
		0.417235, -0.101881, -0.903069,
		24.848888, 34.190990, 35.411907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601910, 33.588356, 35.778931>,  <24.556826, 34.262306, 36.044056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601910, 33.588356, 35.778931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912304, 33.806511, 35.652184>,  <25.098539, 33.937405, 35.576134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912304, 33.806511, 35.652184>,  <24.601910, 33.588356, 35.778931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912304, 33.806511, 35.652184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627985, -0.621009, 0.469022,
		0.059021, -0.562941, -0.824387,
		0.775983, 0.545385, -0.316866,
		25.145100, 33.970127, 35.557125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070236, 33.236031, 35.341625>,  <24.601910, 33.588356, 35.778931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070236, 33.236031, 35.341625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260183, 33.511654, 35.560604>,  <25.374151, 33.677029, 35.691990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260183, 33.511654, 35.560604>,  <25.070236, 33.236031, 35.341625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260183, 33.511654, 35.560604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598425, -0.708933, 0.373231,
		0.645281, 0.150370, -0.749000,
		0.474868, 0.689059, 0.547446,
		25.402643, 33.718372, 35.724838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738163, 33.133656, 35.262890>,  <25.070236, 33.236031, 35.341625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738163, 33.133656, 35.262890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719717, 33.309185, 35.621845>,  <25.708651, 33.414505, 35.837219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719717, 33.309185, 35.621845>,  <25.738163, 33.133656, 35.262890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719717, 33.309185, 35.621845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580931, -0.719032, 0.381461,
		0.812645, 0.538911, -0.221771,
		-0.046113, 0.438827, 0.897388,
		25.705883, 33.440834, 35.891060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465591, 33.270939, 35.451263>,  <25.738163, 33.133656, 35.262890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465591, 33.270939, 35.451263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191071, 33.215973, 35.736950>,  <26.026358, 33.182995, 35.908363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191071, 33.215973, 35.736950>,  <26.465591, 33.270939, 35.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191071, 33.215973, 35.736950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494200, -0.808582, 0.319315,
		0.533625, 0.572113, 0.622841,
		-0.686302, -0.137414, 0.714218,
		25.985180, 33.174747, 35.951214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313374, 33.020641, 35.512772>,  <26.465591, 33.270939, 35.451263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313374, 33.020641, 35.512772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692196, 32.932514, 35.419353>,  <27.919489, 32.879639, 35.363304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692196, 32.932514, 35.419353>,  <27.313374, 33.020641, 35.512772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692196, 32.932514, 35.419353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245174, -0.965921, -0.082982,
		-0.207302, 0.135848, -0.968799,
		0.947056, -0.220322, -0.233543,
		27.976313, 32.866417, 35.349289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252035, 32.657860, 34.853188>,  <27.313374, 33.020641, 35.512772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252035, 32.657860, 34.853188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595114, 32.567101, 35.037739>,  <27.800961, 32.512646, 35.148472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595114, 32.567101, 35.037739>,  <27.252035, 32.657860, 34.853188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595114, 32.567101, 35.037739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248365, -0.968556, -0.014621,
		0.450191, -0.102051, -0.887081,
		0.857696, -0.226902, 0.461382,
		27.852423, 32.499031, 35.176155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622459, 32.156391, 34.427376>,  <27.252035, 32.657860, 34.853188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622459, 32.156391, 34.427376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784149, 32.093597, 34.787811>,  <27.881163, 32.055923, 35.004074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784149, 32.093597, 34.787811>,  <27.622459, 32.156391, 34.427376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784149, 32.093597, 34.787811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274809, -0.960489, -0.044051,
		0.872401, -0.229821, -0.431392,
		0.404224, -0.156980, 0.901088,
		27.905416, 32.046505, 35.058136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992256, 31.548691, 34.339767>,  <27.622459, 32.156391, 34.427376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992256, 31.548691, 34.339767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955818, 31.546886, 34.738102>,  <27.933954, 31.545803, 34.977100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955818, 31.546886, 34.738102>,  <27.992256, 31.548691, 34.339767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955818, 31.546886, 34.738102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097962, -0.995099, -0.013468,
		0.991012, -0.098780, 0.090207,
		-0.091095, -0.004510, 0.995832,
		27.928490, 31.545534, 35.036850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434162, 31.059088, 34.565689>,  <27.992256, 31.548691, 34.339767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434162, 31.059088, 34.565689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171688, 31.121595, 34.860985>,  <28.014204, 31.159100, 35.038162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171688, 31.121595, 34.860985>,  <28.434162, 31.059088, 34.565689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171688, 31.121595, 34.860985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373456, -0.917361, -0.137764,
		0.655706, -0.366100, 0.660318,
		-0.656186, 0.156267, 0.738242,
		27.974833, 31.168476, 35.082458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446350, 30.446518, 35.035473>,  <28.434162, 31.059088, 34.565689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446350, 30.446518, 35.035473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102276, 30.631958, 35.120472>,  <27.895832, 30.743221, 35.171471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102276, 30.631958, 35.120472>,  <28.446350, 30.446518, 35.035473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102276, 30.631958, 35.120472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506506, -0.825186, -0.250040,
		0.059432, -0.322713, 0.944629,
		-0.860186, 0.463600, 0.212499,
		27.844219, 30.771038, 35.184223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163425, 30.108959, 35.602421>,  <28.446350, 30.446518, 35.035473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163425, 30.108959, 35.602421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852480, 30.303499, 35.442837>,  <27.665913, 30.420223, 35.347088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852480, 30.303499, 35.442837>,  <28.163425, 30.108959, 35.602421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852480, 30.303499, 35.442837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485131, -0.867246, -0.111950,
		-0.400442, 0.106521, 0.910110,
		-0.777364, 0.486352, -0.398958,
		27.619270, 30.449404, 35.323151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571884, 30.047590, 36.037739>,  <28.163425, 30.108959, 35.602421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571884, 30.047590, 36.037739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437851, 30.108137, 35.665760>,  <27.357431, 30.144466, 35.442574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437851, 30.108137, 35.665760>,  <27.571884, 30.047590, 36.037739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437851, 30.108137, 35.665760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600197, -0.795124, 0.086840,
		-0.726281, 0.587252, 0.357282,
		-0.335081, 0.151369, -0.929951,
		27.337326, 30.153547, 35.386776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838711, 29.976461, 36.056347>,  <27.571884, 30.047590, 36.037739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838711, 29.976461, 36.056347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952536, 29.931114, 35.675575>,  <27.020830, 29.903906, 35.447113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952536, 29.931114, 35.675575>,  <26.838711, 29.976461, 36.056347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952536, 29.931114, 35.675575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646967, -0.755471, -0.103427,
		-0.707431, 0.645299, -0.288323,
		0.284561, -0.113369, -0.951931,
		27.037905, 29.897104, 35.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214388, 29.619343, 35.811436>,  <26.838711, 29.976461, 36.056347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214388, 29.619343, 35.811436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499752, 29.595999, 35.532112>,  <26.670971, 29.581993, 35.364517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499752, 29.595999, 35.532112>,  <26.214388, 29.619343, 35.811436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499752, 29.595999, 35.532112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309294, -0.920428, -0.239061,
		-0.628793, 0.386532, -0.674694,
		0.713412, -0.058359, -0.698310,
		26.713776, 29.578491, 35.322620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899235, 29.380634, 35.296204>,  <26.214388, 29.619343, 35.811436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899235, 29.380634, 35.296204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283979, 29.285681, 35.241844>,  <26.514826, 29.228708, 35.209229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283979, 29.285681, 35.241844>,  <25.899235, 29.380634, 35.296204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283979, 29.285681, 35.241844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266177, -0.926739, -0.265148,
		-0.063003, 0.291210, -0.954582,
		0.961863, -0.237383, -0.135901,
		26.572538, 29.214466, 35.201073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871128, 28.906502, 34.743942>,  <25.899235, 29.380634, 35.296204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871128, 28.906502, 34.743942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232643, 28.847567, 34.904671>,  <26.449553, 28.812206, 35.001106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232643, 28.847567, 34.904671>,  <25.871128, 28.906502, 34.743942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232643, 28.847567, 34.904671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074161, -0.978585, -0.192019,
		0.421507, 0.143745, -0.895360,
		0.903787, -0.147338, 0.401820,
		26.503780, 28.803366, 35.025215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114176, 28.269911, 34.272739>,  <25.871128, 28.906502, 34.743942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114176, 28.269911, 34.272739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325712, 28.298210, 34.611046>,  <26.452635, 28.315189, 34.814030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325712, 28.298210, 34.611046>,  <26.114176, 28.269911, 34.272739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325712, 28.298210, 34.611046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189252, -0.961599, 0.198774,
		0.827352, -0.265182, -0.495143,
		0.528840, 0.070750, 0.845768,
		26.484364, 28.319435, 34.864777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640671, 27.939888, 34.135986>,  <26.114176, 28.269911, 34.272739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640671, 27.939888, 34.135986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595226, 27.919298, 34.532864>,  <26.567959, 27.906944, 34.770988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595226, 27.919298, 34.532864>,  <26.640671, 27.939888, 34.135986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595226, 27.919298, 34.532864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252130, -0.964471, -0.078905,
		0.961001, -0.259125, 0.096597,
		-0.113611, -0.051473, 0.992191,
		26.561142, 27.903856, 34.830521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042995, 27.269838, 34.381935>,  <26.640671, 27.939888, 34.135986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042995, 27.269838, 34.381935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812496, 27.362957, 34.695301>,  <26.674196, 27.418829, 34.883320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812496, 27.362957, 34.695301>,  <27.042995, 27.269838, 34.381935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812496, 27.362957, 34.695301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309351, -0.949381, 0.054570,
		0.756465, -0.210905, 0.619096,
		-0.576249, 0.232798, 0.783417,
		26.639622, 27.432796, 34.930325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153240, 26.741030, 34.769985>,  <27.042995, 27.269838, 34.381935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153240, 26.741030, 34.769985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819672, 26.905300, 34.917454>,  <26.619530, 27.003862, 35.005936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819672, 26.905300, 34.917454>,  <27.153240, 26.741030, 34.769985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819672, 26.905300, 34.917454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462160, -0.884778, -0.059800,
		0.301636, -0.220255, 0.927633,
		-0.833921, 0.410677, 0.368674,
		26.569496, 27.028503, 35.028057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951363, 26.313694, 35.183414>,  <27.153240, 26.741030, 34.769985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951363, 26.313694, 35.183414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603069, 26.498682, 35.116543>,  <26.394094, 26.609674, 35.076420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603069, 26.498682, 35.116543>,  <26.951363, 26.313694, 35.183414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603069, 26.498682, 35.116543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480039, -0.873133, 0.084858,
		-0.106722, 0.154140, 0.982268,
		-0.870731, 0.462471, -0.167176,
		26.341850, 26.637423, 35.066391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473827, 25.975098, 35.634277>,  <26.951363, 26.313694, 35.183414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473827, 25.975098, 35.634277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292870, 26.129202, 35.312553>,  <26.184296, 26.221664, 35.119518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292870, 26.129202, 35.312553>,  <26.473827, 25.975098, 35.634277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292870, 26.129202, 35.312553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638530, -0.769539, -0.009457,
		-0.622591, 0.509298, 0.594134,
		-0.452393, 0.385261, -0.804310,
		26.157152, 26.244780, 35.071259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815657, 25.894909, 35.764645>,  <26.473827, 25.975098, 35.634277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815657, 25.894909, 35.764645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864145, 25.898262, 35.367607>,  <25.893238, 25.900274, 35.129387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864145, 25.898262, 35.367607>,  <25.815657, 25.894909, 35.764645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864145, 25.898262, 35.367607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621603, -0.778976, -0.082493,
		-0.773896, 0.626997, -0.089219,
		0.121222, 0.008383, -0.992590,
		25.900513, 25.900776, 35.069832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215609, 25.765268, 35.268291>,  <25.815657, 25.894909, 35.764645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215609, 25.765268, 35.268291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516542, 25.644199, 35.034241>,  <25.697104, 25.571558, 34.893810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516542, 25.644199, 35.034241>,  <25.215609, 25.765268, 35.268291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516542, 25.644199, 35.034241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348045, -0.936745, 0.037055,
		-0.559334, 0.175774, -0.810092,
		0.752337, -0.302675, -0.585131,
		25.742243, 25.553396, 34.858700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897943, 25.277390, 34.770092>,  <25.215609, 25.765268, 35.268291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897943, 25.277390, 34.770092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293892, 25.226513, 34.795303>,  <25.531462, 25.195986, 34.810432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293892, 25.226513, 34.795303>,  <24.897943, 25.277390, 34.770092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293892, 25.226513, 34.795303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140666, -0.938586, 0.315072,
		0.019086, -0.320747, -0.946972,
		0.989873, -0.127193, 0.063032,
		25.590855, 25.188354, 34.814213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295574, 24.658625, 34.465649>,  <24.897943, 25.277390, 34.770092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295574, 24.658625, 34.465649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455143, 24.813726, 34.798035>,  <25.550884, 24.906788, 34.997467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455143, 24.813726, 34.798035>,  <25.295574, 24.658625, 34.465649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455143, 24.813726, 34.798035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348001, -0.774385, 0.528416,
		0.848385, -0.499974, -0.173980,
		0.398922, 0.387755, 0.830968,
		25.574820, 24.930054, 35.047325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728451, 24.599438, 33.875782>,  <25.295574, 24.658625, 34.465649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728451, 24.599438, 33.875782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074543, 24.400820, 33.848026>,  <26.282198, 24.281649, 33.831371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074543, 24.400820, 33.848026>,  <25.728451, 24.599438, 33.875782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074543, 24.400820, 33.848026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426293, 0.801440, -0.419484,
		0.263908, 0.333369, 0.905106,
		0.865232, -0.496546, -0.069393,
		26.334112, 24.251856, 33.827209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306498, 24.722740, 33.224064>,  <25.728451, 24.599438, 33.875782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306498, 24.722740, 33.224064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506554, 24.547068, 32.925541>,  <25.626587, 24.441664, 32.746426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506554, 24.547068, 32.925541>,  <25.306498, 24.722740, 33.224064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506554, 24.547068, 32.925541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654488, -0.756046, 0.006307,
		-0.567013, 0.485296, -0.665570,
		0.500141, -0.439183, -0.746308,
		25.656595, 24.415312, 32.701649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791142, 24.893482, 32.649849>,  <25.306498, 24.722740, 33.224064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791142, 24.893482, 32.649849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012421, 25.212130, 32.552383>,  <26.145189, 25.403318, 32.493904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012421, 25.212130, 32.552383>,  <25.791142, 24.893482, 32.649849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012421, 25.212130, 32.552383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368840, -0.028038, -0.929070,
		-0.746946, 0.603832, 0.278314,
		0.553199, 0.796618, -0.243660,
		26.178381, 25.451115, 32.479286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311661, 25.419216, 32.485889>,  <25.791142, 24.893482, 32.649849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311661, 25.419216, 32.485889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662670, 25.445095, 32.295830>,  <25.873276, 25.460623, 32.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662670, 25.445095, 32.295830>,  <25.311661, 25.419216, 32.485889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662670, 25.445095, 32.295830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467170, -0.108172, -0.877525,
		-0.108172, 0.992024, -0.064699,
		0.877525, 0.064699, -0.475145,
		25.925928, 25.464504, 32.153286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280560, 25.957638, 31.996653>,  <25.311661, 25.419216, 32.485889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280560, 25.957638, 31.996653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527952, 25.663115, 31.886868>,  <25.676388, 25.486401, 31.820995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527952, 25.663115, 31.886868>,  <25.280560, 25.957638, 31.996653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527952, 25.663115, 31.886868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631147, -0.257399, -0.731709,
		0.468116, 0.625777, -0.623915,
		0.618482, -0.736308, -0.274465,
		25.713497, 25.442223, 31.804527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188124, 25.829374, 31.225639>,  <25.280560, 25.957638, 31.996653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188124, 25.829374, 31.225639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349274, 25.502884, 31.391275>,  <25.445963, 25.306990, 31.490658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349274, 25.502884, 31.391275>,  <25.188124, 25.829374, 31.225639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349274, 25.502884, 31.391275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507119, -0.575704, -0.641401,
		0.761920, 0.048413, -0.645859,
		0.402876, -0.816224, 0.414089,
		25.470137, 25.258017, 31.515503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693665, 26.209862, 30.698355>,  <25.188124, 25.829374, 31.225639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693665, 26.209862, 30.698355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880749, 26.328785, 30.365404>,  <25.992998, 26.400139, 30.165634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880749, 26.328785, 30.365404>,  <25.693665, 26.209862, 30.698355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880749, 26.328785, 30.365404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712325, 0.430759, 0.554111,
		0.523298, -0.852087, -0.010310,
		0.467710, 0.297309, -0.832379,
		26.021061, 26.417978, 30.115690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344896, 26.059574, 30.814974>,  <25.693665, 26.209862, 30.698355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344896, 26.059574, 30.814974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366364, 26.338936, 30.529499>,  <26.379244, 26.506554, 30.358213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366364, 26.338936, 30.529499>,  <26.344896, 26.059574, 30.814974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366364, 26.338936, 30.529499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712289, 0.474128, 0.517539,
		0.699831, -0.536128, -0.472019,
		0.053670, 0.698405, -0.713688,
		26.382465, 26.548458, 30.315393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108004, 26.091644, 30.593740>,  <26.344896, 26.059574, 30.814974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108004, 26.091644, 30.593740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921974, 26.437185, 30.516319>,  <26.810356, 26.644510, 30.469868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921974, 26.437185, 30.516319>,  <27.108004, 26.091644, 30.593740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921974, 26.437185, 30.516319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814991, 0.503167, 0.287425,
		0.345682, -0.024069, -0.938043,
		-0.465074, 0.863854, -0.193551,
		26.782452, 26.696342, 30.458254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580118, 26.527304, 30.356979>,  <27.108004, 26.091644, 30.593740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580118, 26.527304, 30.356979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290943, 26.776451, 30.476578>,  <27.117439, 26.925940, 30.548336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290943, 26.776451, 30.476578>,  <27.580118, 26.527304, 30.356979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290943, 26.776451, 30.476578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688563, 0.685194, 0.237468,
		-0.056958, 0.377551, -0.924235,
		-0.722936, 0.622868, 0.298995,
		27.074062, 26.963312, 30.566277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792160, 27.231461, 30.174709>,  <27.580118, 26.527304, 30.356979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792160, 27.231461, 30.174709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500652, 27.305515, 30.438414>,  <27.325748, 27.349949, 30.596636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500652, 27.305515, 30.438414>,  <27.792160, 27.231461, 30.174709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500652, 27.305515, 30.438414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513618, 0.784520, 0.347455,
		-0.452874, 0.591821, -0.666823,
		-0.728767, 0.185139, 0.659259,
		27.282022, 27.361057, 30.636190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519735, 27.916672, 30.051672>,  <27.792160, 27.231461, 30.174709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519735, 27.916672, 30.051672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433620, 27.812178, 30.428057>,  <27.381952, 27.749481, 30.653887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433620, 27.812178, 30.428057>,  <27.519735, 27.916672, 30.051672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433620, 27.812178, 30.428057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594555, 0.729324, 0.338511,
		-0.774697, 0.632330, -0.001695,
		-0.215287, -0.261236, 0.940961,
		27.369034, 27.733807, 30.710344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505032, 28.548065, 30.439974>,  <27.519735, 27.916672, 30.051672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505032, 28.548065, 30.439974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536465, 28.274282, 30.729897>,  <27.555325, 28.110012, 30.903851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536465, 28.274282, 30.729897>,  <27.505032, 28.548065, 30.439974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536465, 28.274282, 30.729897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607120, 0.609532, 0.509780,
		-0.790715, 0.399985, 0.463446,
		0.078581, -0.684458, 0.724805,
		27.560040, 28.068945, 30.947338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771151, 28.953985, 31.030821>,  <27.505032, 28.548065, 30.439974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771151, 28.953985, 31.030821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809652, 28.584213, 31.178423>,  <27.832754, 28.362350, 31.266985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809652, 28.584213, 31.178423>,  <27.771151, 28.953985, 31.030821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809652, 28.584213, 31.178423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644309, 0.340445, 0.684808,
		-0.758683, 0.171840, 0.628387,
		0.096254, -0.924429, 0.369008,
		27.838528, 28.306885, 31.289125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615648, 29.016432, 31.656446>,  <27.771151, 28.953985, 31.030821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615648, 29.016432, 31.656446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859894, 28.704857, 31.599297>,  <28.006441, 28.517912, 31.565006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859894, 28.704857, 31.599297>,  <27.615648, 29.016432, 31.656446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859894, 28.704857, 31.599297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654901, 0.395235, 0.644122,
		-0.445261, -0.486876, 0.751461,
		0.610612, -0.778935, -0.142873,
		28.043077, 28.471176, 31.556435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828848, 28.873793, 32.288155>,  <27.615648, 29.016432, 31.656446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828848, 28.873793, 32.288155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115946, 28.713383, 32.060463>,  <28.288204, 28.617136, 31.923849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115946, 28.713383, 32.060463>,  <27.828848, 28.873793, 32.288155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115946, 28.713383, 32.060463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684040, 0.253323, 0.684045,
		-0.130121, -0.880344, 0.456139,
		0.717745, -0.401026, -0.569227,
		28.331270, 28.593075, 31.889694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150873, 28.507437, 32.766026>,  <27.828848, 28.873793, 32.288155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150873, 28.507437, 32.766026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404072, 28.544497, 32.458588>,  <28.555990, 28.566732, 32.274124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404072, 28.544497, 32.458588>,  <28.150873, 28.507437, 32.766026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404072, 28.544497, 32.458588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731496, 0.253432, 0.632997,
		0.253432, -0.962906, 0.092649,
		-0.632997, -0.092649, 0.768590,
		28.593971, 28.572290, 32.228012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740107, 28.318499, 33.072433>,  <28.150873, 28.507437, 32.766026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740107, 28.318499, 33.072433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852921, 28.520395, 32.746075>,  <28.920609, 28.641533, 32.550259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852921, 28.520395, 32.746075>,  <28.740107, 28.318499, 33.072433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852921, 28.520395, 32.746075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721295, 0.449195, 0.527217,
		0.632606, -0.737198, -0.237379,
		0.282034, 0.504741, -0.815901,
		28.937531, 28.671818, 32.501305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559008, 28.108730, 32.957184>,  <28.740107, 28.318499, 33.072433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559008, 28.108730, 32.957184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432581, 28.453768, 32.799179>,  <29.356726, 28.660789, 32.704376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432581, 28.453768, 32.799179>,  <29.559008, 28.108730, 32.957184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432581, 28.453768, 32.799179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685616, 0.495455, 0.533343,
		0.655770, -0.102256, -0.748004,
		-0.316065, 0.862594, -0.395013,
		29.337761, 28.712545, 32.680676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185593, 28.487284, 32.808434>,  <29.559008, 28.108730, 32.957184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185593, 28.487284, 32.808434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906574, 28.773869, 32.804176>,  <29.739164, 28.945820, 32.801624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906574, 28.773869, 32.804176>,  <30.185593, 28.487284, 32.808434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906574, 28.773869, 32.804176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594529, 0.586990, 0.549526,
		0.399960, 0.376994, -0.835409,
		-0.697544, 0.716463, -0.010639,
		29.697311, 28.988808, 32.800983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584539, 29.058811, 32.772938>,  <30.185593, 28.487284, 32.808434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584539, 29.058811, 32.772938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233168, 29.205715, 32.895237>,  <30.022345, 29.293858, 32.968616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233168, 29.205715, 32.895237>,  <30.584539, 29.058811, 32.772938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233168, 29.205715, 32.895237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475763, 0.612072, 0.631678,
		0.044847, 0.700350, -0.712390,
		-0.878430, 0.367258, 0.305750,
		29.969639, 29.315893, 32.986961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622387, 29.889751, 32.784058>,  <30.584539, 29.058811, 32.772938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622387, 29.889751, 32.784058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310707, 29.797153, 33.017040>,  <30.123699, 29.741594, 33.156830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310707, 29.797153, 33.017040>,  <30.622387, 29.889751, 32.784058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310707, 29.797153, 33.017040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309223, 0.666338, 0.678509,
		-0.545185, 0.708804, -0.447627,
		-0.779201, -0.231496, 0.582456,
		30.076946, 29.727705, 33.191776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230589, 30.529907, 32.963039>,  <30.622387, 29.889751, 32.784058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230589, 30.529907, 32.963039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156208, 30.239113, 33.227436>,  <30.111580, 30.064636, 33.386074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156208, 30.239113, 33.227436>,  <30.230589, 30.529907, 32.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156208, 30.239113, 33.227436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162722, 0.640651, 0.750392,
		-0.968991, 0.247093, -0.000832,
		-0.185950, -0.726988, 0.660993,
		30.100424, 30.021017, 33.425735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891792, 30.931084, 33.431629>,  <30.230589, 30.529907, 32.963039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891792, 30.931084, 33.431629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959446, 30.598244, 33.642914>,  <30.000038, 30.398540, 33.769684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959446, 30.598244, 33.642914>,  <29.891792, 30.931084, 33.431629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959446, 30.598244, 33.642914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187104, 0.553293, 0.811702,
		-0.967670, -0.038456, 0.249270,
		0.169134, -0.832099, 0.528210,
		30.010185, 30.348614, 33.801376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488533, 30.990137, 34.083267>,  <29.891792, 30.931084, 33.431629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488533, 30.990137, 34.083267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811556, 30.759260, 34.131763>,  <30.005369, 30.620733, 34.160862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811556, 30.759260, 34.131763>,  <29.488533, 30.990137, 34.083267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811556, 30.759260, 34.131763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164029, 0.417250, 0.893866,
		-0.566521, -0.701961, 0.431629,
		0.807557, -0.577194, 0.121239,
		30.053823, 30.586102, 34.168137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347620, 30.836962, 34.789532>,  <29.488533, 30.990137, 34.083267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347620, 30.836962, 34.789532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730743, 30.762777, 34.701710>,  <29.960617, 30.718266, 34.649017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730743, 30.762777, 34.701710>,  <29.347620, 30.836962, 34.789532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730743, 30.762777, 34.701710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278090, 0.405104, 0.870952,
		-0.072585, -0.895262, 0.439587,
		0.957809, -0.185463, -0.219559,
		30.018085, 30.707138, 34.635841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539249, 30.615513, 35.494595>,  <29.347620, 30.836962, 34.789532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539249, 30.615513, 35.494595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880749, 30.709686, 35.308826>,  <30.085648, 30.766190, 35.197365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880749, 30.709686, 35.308826>,  <29.539249, 30.615513, 35.494595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880749, 30.709686, 35.308826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280550, 0.543400, 0.791207,
		0.438642, -0.805784, 0.397876,
		0.853748, 0.235433, -0.464420,
		30.136873, 30.780315, 35.169498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092438, 30.570498, 35.942585>,  <29.539249, 30.615513, 35.494595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092438, 30.570498, 35.942585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210541, 30.823139, 35.655838>,  <30.281403, 30.974724, 35.483791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210541, 30.823139, 35.655838>,  <30.092438, 30.570498, 35.942585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210541, 30.823139, 35.655838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220844, 0.684879, 0.694384,
		0.929543, -0.363338, 0.062731,
		0.295259, 0.631606, -0.716865,
		30.299118, 31.012621, 35.440777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861998, 30.670719, 35.967739>,  <30.092438, 30.570498, 35.942585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861998, 30.670719, 35.967739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677643, 30.982162, 35.797394>,  <30.567030, 31.169027, 35.695187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677643, 30.982162, 35.797394>,  <30.861998, 30.670719, 35.967739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677643, 30.982162, 35.797394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345701, 0.599472, 0.721889,
		0.817359, 0.185488, -0.545453,
		-0.460886, 0.778606, -0.425860,
		30.539377, 31.215744, 35.669636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261738, 31.211185, 35.737530>,  <30.861998, 30.670719, 35.967739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261738, 31.211185, 35.737530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918570, 31.385447, 35.846470>,  <30.712667, 31.490004, 35.911835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918570, 31.385447, 35.846470>,  <31.261738, 31.211185, 35.737530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918570, 31.385447, 35.846470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477055, 0.478655, 0.737094,
		0.190757, 0.762295, -0.618480,
		-0.857922, 0.435655, 0.272350,
		30.661194, 31.516144, 35.928173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516001, 31.869785, 36.031971>,  <31.261738, 31.211185, 35.737530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516001, 31.869785, 36.031971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138416, 31.810907, 36.150135>,  <30.911865, 31.775579, 36.221035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138416, 31.810907, 36.150135>,  <31.516001, 31.869785, 36.031971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138416, 31.810907, 36.150135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246113, 0.282456, 0.927172,
		-0.219917, 0.947920, -0.230401,
		-0.943963, -0.147196, 0.295412,
		30.855228, 31.766748, 36.238758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388229, 32.445110, 36.412453>,  <31.516001, 31.869785, 36.031971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388229, 32.445110, 36.412453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126778, 32.173744, 36.546627>,  <30.969908, 32.010925, 36.627132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126778, 32.173744, 36.546627>,  <31.388229, 32.445110, 36.412453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126778, 32.173744, 36.546627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090824, 0.369705, 0.924700,
		-0.751346, 0.634876, -0.180033,
		-0.653628, -0.678418, 0.335439,
		30.930689, 31.970219, 36.647259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111998, 32.815899, 36.889614>,  <31.388229, 32.445110, 36.412453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111998, 32.815899, 36.889614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028881, 32.446735, 37.019264>,  <30.979012, 32.225235, 37.097054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028881, 32.446735, 37.019264>,  <31.111998, 32.815899, 36.889614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028881, 32.446735, 37.019264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067015, 0.317146, 0.946006,
		-0.975875, 0.218294, -0.004051,
		-0.207793, -0.922912, 0.324124,
		30.966543, 32.169861, 37.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703405, 32.931221, 37.450516>,  <31.111998, 32.815899, 36.889614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703405, 32.931221, 37.450516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879000, 32.574364, 37.493183>,  <30.984356, 32.360249, 37.518784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879000, 32.574364, 37.493183>,  <30.703405, 32.931221, 37.450516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879000, 32.574364, 37.493183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113002, 0.172594, 0.978490,
		-0.891360, -0.417488, 0.176579,
		0.438985, -0.892141, 0.106666,
		31.010695, 32.306721, 37.525185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269934, 32.572529, 37.912777>,  <30.703405, 32.931221, 37.450516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269934, 32.572529, 37.912777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644976, 32.434383, 37.896637>,  <30.870001, 32.351498, 37.886951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644976, 32.434383, 37.896637>,  <30.269934, 32.572529, 37.912777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644976, 32.434383, 37.896637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107119, 0.176493, 0.978456,
		-0.330797, -0.921725, 0.202475,
		0.937603, -0.345359, -0.040351,
		30.926256, 32.330776, 37.884533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405411, 31.926041, 38.388397>,  <30.269934, 32.572529, 37.912777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405411, 31.926041, 38.388397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727530, 32.156830, 38.333847>,  <30.920801, 32.295303, 38.301117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727530, 32.156830, 38.333847>,  <30.405411, 31.926041, 38.388397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727530, 32.156830, 38.333847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054429, 0.301002, 0.952069,
		0.590366, -0.759277, 0.273800,
		0.805298, 0.576972, -0.136374,
		30.969120, 32.329922, 38.292934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630241, 31.914265, 39.009560>,  <30.405411, 31.926041, 38.388397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630241, 31.914265, 39.009560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878132, 32.174545, 38.834049>,  <31.026867, 32.330715, 38.728745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878132, 32.174545, 38.834049>,  <30.630241, 31.914265, 39.009560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878132, 32.174545, 38.834049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293850, 0.326024, 0.898532,
		0.727729, -0.685779, 0.010837,
		0.619728, 0.650704, -0.438773,
		31.064051, 32.369755, 38.702415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286383, 31.836666, 39.262146>,  <30.630241, 31.914265, 39.009560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286383, 31.836666, 39.262146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239208, 32.209904, 39.126247>,  <31.210903, 32.433846, 39.044708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239208, 32.209904, 39.126247>,  <31.286383, 31.836666, 39.262146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239208, 32.209904, 39.126247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222260, 0.358255, 0.906782,
		0.967829, 0.031429, -0.249640,
		-0.117934, 0.933095, -0.339744,
		31.203829, 32.489834, 39.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836117, 32.157539, 39.649033>,  <31.286383, 31.836666, 39.262146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836117, 32.157539, 39.649033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627781, 32.464413, 39.499287>,  <31.502779, 32.648537, 39.409439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627781, 32.464413, 39.499287>,  <31.836117, 32.157539, 39.649033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627781, 32.464413, 39.499287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318998, 0.581690, 0.748250,
		0.791812, 0.270297, -0.547698,
		-0.520840, 0.767188, -0.374365,
		31.471529, 32.694569, 39.386978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212391, 32.806492, 39.797813>,  <31.836117, 32.157539, 39.649033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212391, 32.806492, 39.797813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846075, 32.952667, 39.731144>,  <31.626286, 33.040371, 39.691143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846075, 32.952667, 39.731144>,  <32.212391, 32.806492, 39.797813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846075, 32.952667, 39.731144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103699, 0.616022, 0.780874,
		0.388034, 0.697835, -0.602044,
		-0.915793, 0.365437, -0.166672,
		31.571337, 33.062298, 39.681141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257374, 33.471203, 39.861511>,  <32.212391, 32.806492, 39.797813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257374, 33.471203, 39.861511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874401, 33.397659, 39.950520>,  <31.644617, 33.353531, 40.003925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874401, 33.397659, 39.950520>,  <32.257374, 33.471203, 39.861511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874401, 33.397659, 39.950520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114310, 0.466363, 0.877176,
		-0.265057, 0.865274, -0.425494,
		-0.957433, -0.183863, 0.222522,
		31.587172, 33.342499, 40.017277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103630, 33.911701, 40.398159>,  <32.257374, 33.471203, 39.861511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103630, 33.911701, 40.398159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764618, 33.699688, 40.409164>,  <31.561211, 33.572479, 40.415768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764618, 33.699688, 40.409164>,  <32.103630, 33.911701, 40.398159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764618, 33.699688, 40.409164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062592, 0.151294, 0.986505,
		-0.527039, 0.834373, -0.161402,
		-0.847533, -0.530029, 0.027513,
		31.510359, 33.540680, 40.417419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620489, 34.271614, 40.866360>,  <32.103630, 33.911701, 40.398159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620489, 34.271614, 40.866360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462236, 33.905193, 40.840031>,  <31.367285, 33.685341, 40.824234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462236, 33.905193, 40.840031>,  <31.620489, 34.271614, 40.866360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462236, 33.905193, 40.840031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209775, 0.020363, 0.977538,
		-0.894131, 0.400553, -0.200220,
		-0.395632, -0.916047, -0.065818,
		31.343546, 33.630379, 40.820286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092726, 34.358227, 41.330883>,  <31.620489, 34.271614, 40.866360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092726, 34.358227, 41.330883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179129, 33.971069, 41.279472>,  <31.230970, 33.738773, 41.248627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179129, 33.971069, 41.279472>,  <31.092726, 34.358227, 41.330883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179129, 33.971069, 41.279472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127600, -0.158493, 0.979080,
		-0.968019, -0.195086, -0.157739,
		0.216005, -0.967896, -0.128531,
		31.243931, 33.680702, 41.240913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583128, 33.882149, 41.710770>,  <31.092726, 34.358227, 41.330883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583128, 33.882149, 41.710770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921324, 33.674206, 41.661953>,  <31.124241, 33.549438, 41.632664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921324, 33.674206, 41.661953>,  <30.583128, 33.882149, 41.710770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921324, 33.674206, 41.661953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018348, -0.256685, 0.966321,
		-0.533678, -0.814775, -0.226563,
		0.845489, -0.519861, -0.122037,
		31.174971, 33.518250, 41.625343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437799, 33.207970, 42.046654>,  <30.583128, 33.882149, 41.710770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437799, 33.207970, 42.046654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835829, 33.224396, 42.010551>,  <31.074646, 33.234249, 41.988892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835829, 33.224396, 42.010551>,  <30.437799, 33.207970, 42.046654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835829, 33.224396, 42.010551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099150, -0.421982, 0.901166,
		-0.001082, -0.905674, -0.423974,
		0.995072, 0.041062, -0.090254,
		31.134350, 33.236713, 41.983475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600733, 32.693584, 42.347267>,  <30.437799, 33.207970, 42.046654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600733, 32.693584, 42.347267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950447, 32.887745, 42.348495>,  <31.160275, 33.004242, 42.349232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950447, 32.887745, 42.348495>,  <30.600733, 32.693584, 42.347267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950447, 32.887745, 42.348495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251077, -0.457619, 0.852963,
		0.415435, -0.744962, -0.521963,
		0.874285, 0.485404, 0.003068,
		31.212732, 33.033367, 42.349415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077797, 32.197521, 42.516708>,  <30.600733, 32.693584, 42.347267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077797, 32.197521, 42.516708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272717, 32.539833, 42.586205>,  <31.389668, 32.745220, 42.627903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272717, 32.539833, 42.586205>,  <31.077797, 32.197521, 42.516708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272717, 32.539833, 42.586205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270537, -0.337124, 0.901752,
		0.830272, -0.392418, -0.395799,
		0.487297, 0.855778, 0.173741,
		31.418905, 32.796566, 42.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647915, 31.970152, 42.843300>,  <31.077797, 32.197521, 42.516708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647915, 31.970152, 42.843300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630981, 32.360344, 42.929691>,  <31.620821, 32.594460, 42.981525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630981, 32.360344, 42.929691>,  <31.647915, 31.970152, 42.843300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630981, 32.360344, 42.929691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166859, -0.206231, 0.964172,
		0.985072, 0.076852, -0.154038,
		-0.042331, 0.975481, 0.215976,
		31.618282, 32.652988, 42.994484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183853, 32.097412, 43.331711>,  <31.647915, 31.970152, 42.843300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183853, 32.097412, 43.331711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951902, 32.417656, 43.392071>,  <31.812731, 32.609802, 43.428288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951902, 32.417656, 43.392071>,  <32.183853, 32.097412, 43.331711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951902, 32.417656, 43.392071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108618, -0.107599, 0.988243,
		0.807430, 0.589451, -0.024566,
		-0.579878, 0.800606, 0.150904,
		31.777939, 32.657837, 43.437344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461224, 32.731777, 43.768387>,  <32.183853, 32.097412, 43.331711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461224, 32.731777, 43.768387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063606, 32.761395, 43.800354>,  <31.825035, 32.779163, 43.819534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063606, 32.761395, 43.800354>,  <32.461224, 32.731777, 43.768387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063606, 32.761395, 43.800354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077727, -0.032007, 0.996461,
		0.076340, 0.996741, 0.026061,
		-0.994048, 0.074044, 0.079917,
		31.765392, 32.783607, 43.824329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400555, 33.205532, 44.357666>,  <32.461224, 32.731777, 43.768387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400555, 33.205532, 44.357666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023048, 33.073666, 44.347675>,  <31.796545, 32.994545, 44.341682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023048, 33.073666, 44.347675>,  <32.400555, 33.205532, 44.357666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023048, 33.073666, 44.347675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038880, 0.035653, 0.998608,
		-0.328315, 0.943425, -0.046465,
		-0.943768, -0.329664, -0.024975,
		31.739918, 32.974766, 44.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941227, 33.643303, 44.801727>,  <32.400555, 33.205532, 44.357666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941227, 33.643303, 44.801727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758261, 33.290573, 44.755856>,  <31.648481, 33.078934, 44.728333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758261, 33.290573, 44.755856>,  <31.941227, 33.643303, 44.801727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758261, 33.290573, 44.755856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186538, -0.030938, 0.981960,
		-0.869469, 0.470554, -0.150343,
		-0.457414, -0.881829, -0.114675,
		31.621037, 33.026024, 44.721455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237532, 33.722500, 45.079910>,  <31.941227, 33.643303, 44.801727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237532, 33.722500, 45.079910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278625, 33.324631, 45.076706>,  <31.303282, 33.085907, 45.074783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278625, 33.324631, 45.076706>,  <31.237532, 33.722500, 45.079910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278625, 33.324631, 45.076706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533671, -0.061912, 0.843423,
		-0.839429, -0.082376, -0.537190,
		0.102736, -0.994677, -0.008009,
		31.309446, 33.026226, 45.074303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586626, 33.554192, 45.323677>,  <31.237532, 33.722500, 45.079910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586626, 33.554192, 45.323677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827614, 33.236942, 45.359421>,  <30.972206, 33.046593, 45.380867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827614, 33.236942, 45.359421>,  <30.586626, 33.554192, 45.323677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827614, 33.236942, 45.359421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530520, -0.314298, 0.787251,
		-0.596303, -0.521701, -0.610123,
		0.602470, -0.793123, 0.089356,
		31.008354, 32.999004, 45.386227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066305, 33.008583, 45.352180>,  <30.586626, 33.554192, 45.323677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066305, 33.008583, 45.352180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420256, 32.933228, 45.522591>,  <30.632626, 32.888012, 45.624836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420256, 32.933228, 45.522591>,  <30.066305, 33.008583, 45.352180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420256, 32.933228, 45.522591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459128, -0.198187, 0.865981,
		-0.078708, -0.961890, -0.261866,
		0.884877, -0.188390, 0.426031,
		30.685719, 32.876709, 45.650398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927771, 32.430412, 45.758968>,  <30.066305, 33.008583, 45.352180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927771, 32.430412, 45.758968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281290, 32.556351, 45.897400>,  <30.493402, 32.631912, 45.980457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281290, 32.556351, 45.897400>,  <29.927771, 32.430412, 45.758968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281290, 32.556351, 45.897400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307965, -0.165375, 0.936914,
		0.352213, -0.934626, -0.049198,
		0.883801, 0.314842, 0.346080,
		30.546431, 32.650803, 46.001225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053196, 32.026611, 46.255367>,  <29.927771, 32.430412, 45.758968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053196, 32.026611, 46.255367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289972, 32.334988, 46.349396>,  <30.432039, 32.520012, 46.405811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289972, 32.334988, 46.349396>,  <30.053196, 32.026611, 46.255367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289972, 32.334988, 46.349396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285255, -0.072385, 0.955714,
		0.753813, -0.632783, 0.177066,
		0.591943, 0.770939, 0.235070,
		30.467556, 32.566269, 46.419918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370115, 31.870399, 46.854374>,  <30.053196, 32.026611, 46.255367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370115, 31.870399, 46.854374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363853, 32.269829, 46.833958>,  <30.360096, 32.509487, 46.821709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363853, 32.269829, 46.833958>,  <30.370115, 31.870399, 46.854374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363853, 32.269829, 46.833958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478468, 0.037340, 0.877311,
		0.877966, 0.038157, 0.477201,
		-0.015657, 0.998574, -0.051040,
		30.359156, 32.569401, 46.818645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452503, 32.045883, 47.608879>,  <30.370115, 31.870399, 46.854374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452503, 32.045883, 47.608879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345524, 32.397125, 47.450184>,  <30.281336, 32.607872, 47.354969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345524, 32.397125, 47.450184>,  <30.452503, 32.045883, 47.608879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345524, 32.397125, 47.450184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474922, 0.238123, 0.847199,
		0.838404, 0.415000, 0.353347,
		-0.267448, 0.878107, -0.396735,
		30.265289, 32.660557, 47.331161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636389, 32.486549, 48.065590>,  <30.452503, 32.045883, 47.608879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636389, 32.486549, 48.065590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374983, 32.702736, 47.853622>,  <30.218140, 32.832447, 47.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374983, 32.702736, 47.853622>,  <30.636389, 32.486549, 48.065590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374983, 32.702736, 47.853622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403180, 0.343951, 0.848023,
		0.640597, 0.767847, -0.006870,
		-0.653515, 0.540471, -0.529915,
		30.178928, 32.864876, 47.694649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573750, 33.067078, 48.397400>,  <30.636389, 32.486549, 48.065590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573750, 33.067078, 48.397400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245750, 33.029823, 48.171505>,  <30.048950, 33.007473, 48.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245750, 33.029823, 48.171505>,  <30.573750, 33.067078, 48.397400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245750, 33.029823, 48.171505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562840, 0.310455, 0.766048,
		0.103981, 0.946014, -0.306992,
		-0.820000, -0.093132, -0.564736,
		29.999750, 33.001884, 48.002083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147545, 33.721542, 48.573421>,  <30.573750, 33.067078, 48.397400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147545, 33.721542, 48.573421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904175, 33.453026, 48.404102>,  <29.758152, 33.291916, 48.302509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904175, 33.453026, 48.404102>,  <30.147545, 33.721542, 48.573421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904175, 33.453026, 48.404102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691134, 0.186038, 0.698372,
		-0.390063, 0.717464, -0.577145,
		-0.608427, -0.671294, -0.423297,
		29.721647, 33.251637, 48.277115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500719, 34.064545, 48.561783>,  <30.147545, 33.721542, 48.573421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500719, 34.064545, 48.561783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438223, 33.671066, 48.526146>,  <29.400724, 33.434978, 48.504765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438223, 33.671066, 48.526146>,  <29.500719, 34.064545, 48.561783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438223, 33.671066, 48.526146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723950, 0.052691, 0.687838,
		-0.671927, 0.171966, -0.720376,
		-0.156242, -0.983693, -0.089091,
		29.391350, 33.375957, 48.499420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848665, 33.927582, 48.569103>,  <29.500719, 34.064545, 48.561783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848665, 33.927582, 48.569103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993469, 33.569450, 48.672897>,  <29.080353, 33.354572, 48.735176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993469, 33.569450, 48.672897>,  <28.848665, 33.927582, 48.569103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993469, 33.569450, 48.672897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702336, -0.078940, 0.707455,
		-0.612921, -0.438354, -0.657399,
		0.362011, -0.895329, 0.259488,
		29.102072, 33.300850, 48.750744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244543, 33.649944, 48.756977>,  <28.848665, 33.927582, 48.569103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244543, 33.649944, 48.756977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535120, 33.417664, 48.903980>,  <28.709467, 33.278294, 48.992184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535120, 33.417664, 48.903980>,  <28.244543, 33.649944, 48.756977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535120, 33.417664, 48.903980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527448, -0.128315, 0.839842,
		-0.440543, -0.803939, -0.399504,
		0.726444, -0.580704, 0.367507,
		28.753054, 33.243454, 49.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037191, 33.006939, 48.870644>,  <28.244543, 33.649944, 48.756977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037191, 33.006939, 48.870644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348757, 33.039341, 49.119392>,  <28.535696, 33.058781, 49.268642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348757, 33.039341, 49.119392>,  <28.037191, 33.006939, 48.870644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348757, 33.039341, 49.119392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602221, -0.180079, 0.777754,
		0.174987, -0.980311, -0.091485,
		0.778915, 0.081003, 0.621876,
		28.582432, 33.063641, 49.305954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907171, 32.495678, 49.504574>,  <28.037191, 33.006939, 48.870644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907171, 32.495678, 49.504574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206308, 32.690628, 49.684887>,  <28.385790, 32.807598, 49.793076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206308, 32.690628, 49.684887>,  <27.907171, 32.495678, 49.504574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206308, 32.690628, 49.684887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461229, -0.106954, 0.880811,
		0.477496, -0.866619, 0.144805,
		0.747840, 0.487372, 0.450780,
		28.430660, 32.836842, 49.820122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036495, 32.122204, 50.059071>,  <27.907171, 32.495678, 49.504574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036495, 32.122204, 50.059071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185595, 32.485504, 50.135113>,  <28.275055, 32.703484, 50.180740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185595, 32.485504, 50.135113>,  <28.036495, 32.122204, 50.059071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185595, 32.485504, 50.135113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296036, -0.077771, 0.952005,
		0.879443, -0.411139, 0.239886,
		0.372750, 0.908249, 0.190107,
		28.297421, 32.757980, 50.192146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477127, 32.073841, 50.545338>,  <28.036495, 32.122204, 50.059071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477127, 32.073841, 50.545338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350803, 32.453175, 50.557522>,  <28.275009, 32.680775, 50.564831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350803, 32.453175, 50.557522>,  <28.477127, 32.073841, 50.545338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350803, 32.453175, 50.557522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260958, -0.117675, 0.958151,
		0.912232, 0.294643, 0.284638,
		-0.315808, 0.948334, 0.030457,
		28.256062, 32.737675, 50.566658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794270, 32.400074, 51.155746>,  <28.477127, 32.073841, 50.545338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794270, 32.400074, 51.155746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501839, 32.654221, 51.056278>,  <28.326380, 32.806709, 50.996597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501839, 32.654221, 51.056278>,  <28.794270, 32.400074, 51.155746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501839, 32.654221, 51.056278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242190, 0.099067, 0.965158,
		0.637866, 0.765828, 0.081455,
		-0.731075, 0.635369, -0.248667,
		28.282516, 32.844830, 50.981678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716087, 32.878494, 51.697296>,  <28.794270, 32.400074, 51.155746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716087, 32.878494, 51.697296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363562, 32.898884, 51.509388>,  <28.152046, 32.911118, 51.396645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363562, 32.898884, 51.509388>,  <28.716087, 32.878494, 51.697296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363562, 32.898884, 51.509388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472529, -0.094869, 0.876194,
		0.000099, 0.994184, 0.107698,
		-0.881315, 0.050977, -0.469771,
		28.099167, 32.914177, 51.368458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376745, 33.372917, 52.088810>,  <28.716087, 32.878494, 51.697296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376745, 33.372917, 52.088810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100035, 33.148365, 51.907127>,  <27.934010, 33.013634, 51.798119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100035, 33.148365, 51.907127>,  <28.376745, 33.372917, 52.088810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100035, 33.148365, 51.907127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401876, -0.223288, 0.888053,
		-0.599952, 0.796867, -0.071139,
		-0.691775, -0.561378, -0.454204,
		27.892502, 32.979950, 51.770866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782387, 33.458321, 52.563293>,  <28.376745, 33.372917, 52.088810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782387, 33.458321, 52.563293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709335, 33.138397, 52.334576>,  <27.665504, 32.946442, 52.197346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709335, 33.138397, 52.334576>,  <27.782387, 33.458321, 52.563293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709335, 33.138397, 52.334576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427307, -0.459210, 0.778803,
		-0.885470, 0.386564, -0.257899,
		-0.182627, -0.799809, -0.571798,
		27.654547, 32.898453, 52.163036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090651, 33.308155, 52.795517>,  <27.782387, 33.458321, 52.563293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090651, 33.308155, 52.795517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236105, 32.986874, 52.606777>,  <27.323378, 32.794106, 52.493534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236105, 32.986874, 52.606777>,  <27.090651, 33.308155, 52.795517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236105, 32.986874, 52.606777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598974, -0.589532, 0.541924,
		-0.713442, 0.085561, -0.695471,
		0.363635, -0.803200, -0.471846,
		27.345196, 32.745914, 52.465225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392576, 32.837715, 52.657936>,  <27.090651, 33.308155, 52.795517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392576, 32.837715, 52.657936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731468, 32.625229, 52.657009>,  <26.934803, 32.497738, 52.656452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731468, 32.625229, 52.657009>,  <26.392576, 32.837715, 52.657936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731468, 32.625229, 52.657009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471067, -0.753296, 0.458956,
		-0.245548, -0.387753, -0.888456,
		0.847232, -0.531218, -0.002313,
		26.985638, 32.465862, 52.656315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248045, 32.106373, 52.325443>,  <26.392576, 32.837715, 52.657936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248045, 32.106373, 52.325443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537838, 32.153114, 52.597168>,  <26.711714, 32.181160, 52.760204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537838, 32.153114, 52.597168>,  <26.248045, 32.106373, 52.325443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537838, 32.153114, 52.597168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409985, -0.719195, 0.560955,
		0.554108, -0.684912, -0.473139,
		0.724484, 0.116850, 0.679315,
		26.755184, 32.188168, 52.800964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497862, 31.406309, 52.544449>,  <26.248045, 32.106373, 52.325443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497862, 31.406309, 52.544449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540068, 31.691307, 52.821930>,  <26.565392, 31.862307, 52.988419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540068, 31.691307, 52.821930>,  <26.497862, 31.406309, 52.544449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540068, 31.691307, 52.821930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392363, -0.611166, 0.687406,
		0.913738, -0.344712, 0.215071,
		0.105513, 0.712495, 0.693699,
		26.571722, 31.905056, 53.030041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742525, 31.064259, 53.091549>,  <26.497862, 31.406309, 52.544449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742525, 31.064259, 53.091549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552635, 31.391718, 53.220825>,  <26.438702, 31.588194, 53.298389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552635, 31.391718, 53.220825>,  <26.742525, 31.064259, 53.091549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552635, 31.391718, 53.220825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447106, -0.540606, 0.712629,
		0.758111, 0.193803, 0.622662,
		-0.474725, 0.818648, 0.323189,
		26.410217, 31.637312, 53.317783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315794, 30.617758, 52.604866>,  <26.742525, 31.064259, 53.091549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315794, 30.617758, 52.604866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573683, 30.389837, 52.808693>,  <26.728416, 30.253084, 52.930988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573683, 30.389837, 52.808693>,  <26.315794, 30.617758, 52.604866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573683, 30.389837, 52.808693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532537, -0.143433, -0.834165,
		0.548398, 0.809168, 0.210966,
		0.644720, -0.569802, 0.509570,
		26.767099, 30.218897, 52.961563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095566, 30.778643, 52.511433>,  <26.315794, 30.617758, 52.604866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095566, 30.778643, 52.511433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998699, 30.391699, 52.541283>,  <26.940580, 30.159533, 52.559193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998699, 30.391699, 52.541283>,  <27.095566, 30.778643, 52.511433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998699, 30.391699, 52.541283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359028, -0.160798, -0.919371,
		0.901363, -0.195848, 0.386249,
		-0.242165, -0.967361, 0.074622,
		26.926050, 30.101490, 52.563671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690405, 30.292564, 52.435143>,  <27.095566, 30.778643, 52.511433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690405, 30.292564, 52.435143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356770, 30.105440, 52.318214>,  <27.156590, 29.993166, 52.248058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356770, 30.105440, 52.318214>,  <27.690405, 30.292564, 52.435143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356770, 30.105440, 52.318214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403712, -0.156541, -0.901394,
		0.375920, -0.869856, 0.319429,
		-0.834087, -0.467809, -0.292325,
		27.106543, 29.965097, 52.230518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753494, 30.773796, 52.934807>,  <27.690405, 30.292564, 52.435143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753494, 30.773796, 52.934807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104368, 30.615831, 53.044048>,  <28.314894, 30.521051, 53.109592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104368, 30.615831, 53.044048>,  <27.753494, 30.773796, 52.934807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104368, 30.615831, 53.044048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299151, -0.004597, 0.954195,
		-0.375570, -0.918706, -0.122172,
		0.877186, -0.394915, 0.273105,
		28.367525, 30.497356, 53.125980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305759, 31.012133, 53.395458>,  <27.753494, 30.773796, 52.934807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305759, 31.012133, 53.395458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380514, 30.822420, 53.739582>,  <28.425367, 30.708593, 53.946056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380514, 30.822420, 53.739582>,  <28.305759, 31.012133, 53.395458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380514, 30.822420, 53.739582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378957, -0.773153, -0.508553,
		0.906347, 0.421063, 0.035239,
		0.186887, -0.474280, 0.860309,
		28.436581, 30.680136, 53.997673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077766, 30.822771, 53.629700>,  <28.305759, 31.012133, 53.395458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077766, 30.822771, 53.629700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748608, 30.600859, 53.678787>,  <28.551113, 30.467710, 53.708241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748608, 30.600859, 53.678787>,  <29.077766, 30.822771, 53.629700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748608, 30.600859, 53.678787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279814, -0.583655, -0.762266,
		0.494518, -0.592927, 0.635523,
		-0.822895, -0.554783, 0.122718,
		28.501740, 30.434423, 53.715603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309288, 30.034710, 53.598152>,  <29.077766, 30.822771, 53.629700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309288, 30.034710, 53.598152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931936, 30.092796, 53.478855>,  <28.705524, 30.127647, 53.407276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931936, 30.092796, 53.478855>,  <29.309288, 30.034710, 53.598152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931936, 30.092796, 53.478855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238903, -0.326309, -0.914575,
		-0.230126, -0.934043, 0.273142,
		-0.943381, 0.145213, -0.298238,
		28.648922, 30.136360, 53.389385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016459, 29.340111, 53.238583>,  <29.309288, 30.034710, 53.598152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016459, 29.340111, 53.238583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840832, 29.670633, 53.097481>,  <28.735456, 29.868946, 53.012817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.840832, 29.670633, 53.097481>,  <29.016459, 29.340111, 53.238583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840832, 29.670633, 53.097481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012654, -0.398276, -0.917178,
		-0.898366, -0.398237, 0.185325,
		-0.439065, 0.826306, -0.352759,
		28.709112, 29.918526, 52.991653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594948, 29.120592, 52.759323>,  <29.016459, 29.340111, 53.238583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594948, 29.120592, 52.759323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700830, 29.494776, 52.665649>,  <28.764360, 29.719286, 52.609444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700830, 29.494776, 52.665649>,  <28.594948, 29.120592, 52.759323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700830, 29.494776, 52.665649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132691, -0.275873, -0.951991,
		-0.955156, 0.220926, -0.197153,
		0.264709, 0.935460, -0.234187,
		28.780243, 29.775414, 52.595394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359154, 29.159058, 52.092854>,  <28.594948, 29.120592, 52.759323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359154, 29.159058, 52.092854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596937, 29.475767, 52.149017>,  <28.739607, 29.665792, 52.182716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596937, 29.475767, 52.149017>,  <28.359154, 29.159058, 52.092854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596937, 29.475767, 52.149017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398330, -0.138261, -0.906762,
		-0.698535, 0.594963, -0.397577,
		0.594460, 0.791772, 0.140411,
		28.775274, 29.713299, 52.191139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295841, 29.518454, 51.531986>,  <28.359154, 29.159058, 52.092854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295841, 29.518454, 51.531986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657681, 29.624607, 51.665417>,  <28.874784, 29.688299, 51.745476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657681, 29.624607, 51.665417>,  <28.295841, 29.518454, 51.531986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657681, 29.624607, 51.665417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366005, -0.082438, -0.926954,
		-0.218499, 0.960612, -0.171704,
		0.904599, 0.265383, 0.333576,
		28.929060, 29.704222, 51.765488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626429, 29.869947, 51.002056>,  <28.295841, 29.518454, 51.531986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626429, 29.869947, 51.002056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955357, 29.818457, 51.223766>,  <29.152714, 29.787561, 51.356792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955357, 29.818457, 51.223766>,  <28.626429, 29.869947, 51.002056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955357, 29.818457, 51.223766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557264, -0.014844, -0.830202,
		0.115097, 0.991569, 0.059528,
		0.822319, -0.128727, 0.554274,
		29.202053, 29.779839, 51.390049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115208, 30.304932, 50.811913>,  <28.626429, 29.869947, 51.002056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115208, 30.304932, 50.811913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333651, 30.018221, 50.985348>,  <29.464716, 29.846195, 51.089409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.333651, 30.018221, 50.985348>,  <29.115208, 30.304932, 50.811913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333651, 30.018221, 50.985348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626727, 0.006138, -0.779215,
		0.555861, 0.697276, 0.452576,
		0.546106, -0.716777, 0.433590,
		29.497482, 29.803188, 51.115425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773872, 30.625263, 50.802460>,  <29.115208, 30.304932, 50.811913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773872, 30.625263, 50.802460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786961, 30.226271, 50.827621>,  <29.794813, 29.986876, 50.842720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786961, 30.226271, 50.827621>,  <29.773872, 30.625263, 50.802460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786961, 30.226271, 50.827621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624827, -0.028712, -0.780235,
		0.780077, 0.064836, 0.622315,
		0.032719, -0.997483, 0.062909,
		29.796776, 29.927027, 50.846493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446379, 30.523764, 50.612888>,  <29.773872, 30.625263, 50.802460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446379, 30.523764, 50.612888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283680, 30.159382, 50.585411>,  <30.186062, 29.940752, 50.568924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283680, 30.159382, 50.585411>,  <30.446379, 30.523764, 50.612888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283680, 30.159382, 50.585411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780907, -0.307686, -0.543612,
		0.474070, -0.274754, 0.836521,
		-0.406746, -0.910955, -0.068693,
		30.161655, 29.886095, 50.564804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950811, 30.096342, 50.780468>,  <30.446379, 30.523764, 50.612888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950811, 30.096342, 50.780468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700968, 29.893240, 50.543133>,  <30.551062, 29.771379, 50.400734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700968, 29.893240, 50.543133>,  <30.950811, 30.096342, 50.780468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700968, 29.893240, 50.543133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779256, -0.355438, -0.516162,
		0.051189, -0.784761, 0.617681,
		-0.624611, -0.507754, -0.593335,
		30.513584, 29.740913, 50.365131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181601, 29.391008, 50.635193>,  <30.950811, 30.096342, 50.780468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181601, 29.391008, 50.635193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930046, 29.465261, 50.333187>,  <30.779114, 29.509813, 50.151985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930046, 29.465261, 50.333187>,  <31.181601, 29.391008, 50.635193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930046, 29.465261, 50.333187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704169, -0.275696, -0.654322,
		-0.329617, -0.943150, 0.042665,
		-0.628887, 0.185632, -0.755012,
		30.741381, 29.520952, 50.106682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361975, 28.946554, 50.153137>,  <31.181601, 29.391008, 50.635193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361975, 28.946554, 50.153137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098316, 29.155888, 49.937119>,  <30.940121, 29.281487, 49.807507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098316, 29.155888, 49.937119>,  <31.361975, 28.946554, 50.153137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098316, 29.155888, 49.937119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399557, -0.364666, -0.841055,
		-0.637087, -0.770158, 0.031268,
		-0.659147, 0.523332, -0.540045,
		30.900572, 29.312887, 49.775105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976442, 28.513981, 49.765980>,  <31.361975, 28.946554, 50.153137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976442, 28.513981, 49.765980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986818, 28.851917, 49.552223>,  <30.993044, 29.054680, 49.423969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986818, 28.851917, 49.552223>,  <30.976442, 28.513981, 49.765980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986818, 28.851917, 49.552223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352142, -0.508025, -0.786070,
		-0.935587, -0.167791, -0.310681,
		0.025938, 0.844841, -0.534388,
		30.994600, 29.105370, 49.391907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892780, 28.265989, 49.033669>,  <30.976442, 28.513981, 49.765980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892780, 28.265989, 49.033669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009418, 28.646950, 48.998108>,  <31.079401, 28.875526, 48.976772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009418, 28.646950, 48.998108>,  <30.892780, 28.265989, 49.033669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009418, 28.646950, 48.998108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306124, -0.180970, -0.934632,
		-0.906234, 0.245320, -0.344323,
		0.291597, 0.952401, -0.088903,
		31.096897, 28.932671, 48.971436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683895, 28.433842, 48.335972>,  <30.892780, 28.265989, 49.033669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683895, 28.433842, 48.335972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905823, 28.736385, 48.474590>,  <31.038980, 28.917912, 48.557762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905823, 28.736385, 48.474590>,  <30.683895, 28.433842, 48.335972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905823, 28.736385, 48.474590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291607, 0.213326, -0.932447,
		-0.779191, 0.618398, -0.102202,
		0.554821, 0.756357, 0.346551,
		31.072269, 28.963293, 48.578556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417109, 29.123838, 48.044270>,  <30.683895, 28.433842, 48.335972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417109, 29.123838, 48.044270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810112, 29.121660, 48.118729>,  <31.045914, 29.120354, 48.163403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810112, 29.121660, 48.118729>,  <30.417109, 29.123838, 48.044270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810112, 29.121660, 48.118729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172892, 0.398130, -0.900889,
		-0.069206, 0.917313, 0.392107,
		0.982506, -0.005445, 0.186149,
		31.104864, 29.120028, 48.174572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666101, 29.640160, 47.575249>,  <30.417109, 29.123838, 48.044270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666101, 29.640160, 47.575249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984871, 29.409004, 47.645622>,  <31.176132, 29.270311, 47.687847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984871, 29.409004, 47.645622>,  <30.666101, 29.640160, 47.575249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984871, 29.409004, 47.645622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328301, 0.169851, -0.929176,
		0.507079, 0.798244, 0.325081,
		0.796925, -0.577890, 0.175936,
		31.223948, 29.235638, 47.698402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243069, 29.980209, 47.056908>,  <30.666101, 29.640160, 47.575249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243069, 29.980209, 47.056908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340235, 29.602016, 47.143681>,  <31.398535, 29.375101, 47.195744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340235, 29.602016, 47.143681>,  <31.243069, 29.980209, 47.056908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340235, 29.602016, 47.143681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442567, -0.090977, -0.892109,
		0.863207, 0.312712, 0.396339,
		0.242916, -0.945481, 0.216928,
		31.413109, 29.318373, 47.208759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832777, 29.875957, 46.681309>,  <31.243069, 29.980209, 47.056908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832777, 29.875957, 46.681309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760653, 29.494890, 46.779213>,  <31.717379, 29.266249, 46.837955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760653, 29.494890, 46.779213>,  <31.832777, 29.875957, 46.681309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760653, 29.494890, 46.779213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386785, -0.297466, -0.872875,
		0.904370, -0.062719, 0.422115,
		-0.180311, -0.952670, 0.244761,
		31.706560, 29.209089, 46.852642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415161, 29.597382, 46.682472>,  <31.832777, 29.875957, 46.681309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415161, 29.597382, 46.682472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153477, 29.302996, 46.612770>,  <31.996468, 29.126364, 46.570950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153477, 29.302996, 46.612770>,  <32.415161, 29.597382, 46.682472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153477, 29.302996, 46.612770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484446, -0.230833, -0.843818,
		0.580796, -0.636452, 0.507548,
		-0.654208, -0.735965, -0.174259,
		31.957214, 29.082207, 46.560493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805210, 29.213318, 46.330143>,  <32.415161, 29.597382, 46.682472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805210, 29.213318, 46.330143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432789, 29.074986, 46.283592>,  <32.209335, 28.991985, 46.255661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432789, 29.074986, 46.283592>,  <32.805210, 29.213318, 46.330143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432789, 29.074986, 46.283592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203314, -0.226836, -0.952475,
		0.302998, -0.910464, 0.281509,
		-0.931051, -0.345833, -0.116380,
		32.153473, 28.971235, 46.248680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928452, 28.622429, 45.902161>,  <32.805210, 29.213318, 46.330143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928452, 28.622429, 45.902161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539436, 28.709116, 45.868221>,  <32.306026, 28.761129, 45.847858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539436, 28.709116, 45.868221>,  <32.928452, 28.622429, 45.902161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539436, 28.709116, 45.868221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081565, -0.024048, -0.996378,
		-0.217976, -0.975937, 0.005711,
		-0.972540, 0.216721, -0.084844,
		32.247673, 28.774132, 45.842770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636375, 28.102192, 45.495476>,  <32.928452, 28.622429, 45.902161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636375, 28.102192, 45.495476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371841, 28.402102, 45.486759>,  <32.213120, 28.582047, 45.481529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371841, 28.402102, 45.486759>,  <32.636375, 28.102192, 45.495476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371841, 28.402102, 45.486759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001641, -0.027602, -0.999617,
		-0.750087, -0.661120, 0.017024,
		-0.661337, 0.749772, -0.021789,
		32.173439, 28.627033, 45.480221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001247, 27.842985, 45.128082>,  <32.636375, 28.102192, 45.495476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001247, 27.842985, 45.128082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002300, 28.242588, 45.110279>,  <32.002930, 28.482349, 45.099598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002300, 28.242588, 45.110279>,  <32.001247, 27.842985, 45.128082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002300, 28.242588, 45.110279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150165, -0.043613, -0.987698,
		-0.988657, 0.009281, 0.149901,
		0.002629, 0.999005, -0.044512,
		32.003090, 28.542290, 45.096924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526726, 27.937252, 44.654526>,  <32.001247, 27.842985, 45.128082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526726, 27.937252, 44.654526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765034, 28.258259, 44.667370>,  <31.908018, 28.450863, 44.675076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765034, 28.258259, 44.667370>,  <31.526726, 27.937252, 44.654526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765034, 28.258259, 44.667370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061410, 0.085376, -0.994454,
		-0.800805, 0.590492, 0.100147,
		0.595768, 0.802515, 0.032107,
		31.943764, 28.499014, 44.677002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218920, 28.429420, 44.241623>,  <31.526726, 27.937252, 44.654526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218920, 28.429420, 44.241623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585690, 28.588072, 44.259212>,  <31.805752, 28.683264, 44.269764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585690, 28.588072, 44.259212>,  <31.218920, 28.429420, 44.241623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585690, 28.588072, 44.259212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006654, 0.125366, -0.992088,
		-0.399005, 0.909378, 0.117591,
		0.916925, 0.396631, 0.043971,
		31.860767, 28.707062, 44.272404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178501, 29.055300, 43.847965>,  <31.218920, 28.429420, 44.241623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178501, 29.055300, 43.847965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563017, 28.945995, 43.862091>,  <31.793726, 28.880413, 43.870567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563017, 28.945995, 43.862091>,  <31.178501, 29.055300, 43.847965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563017, 28.945995, 43.862091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017436, -0.067570, -0.997562,
		0.274983, 0.959563, -0.060190,
		0.961291, -0.273263, 0.035311,
		31.851404, 28.864016, 43.872684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542908, 29.484280, 43.279312>,  <31.178501, 29.055300, 43.847965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542908, 29.484280, 43.279312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817909, 29.210279, 43.375740>,  <31.982910, 29.045879, 43.433598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817909, 29.210279, 43.375740>,  <31.542908, 29.484280, 43.279312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817909, 29.210279, 43.375740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281736, -0.054357, -0.957951,
		0.669301, 0.726512, 0.155619,
		0.687504, -0.685001, 0.241066,
		32.024158, 29.004780, 43.448059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138294, 29.864494, 43.122456>,  <31.542908, 29.484280, 43.279312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138294, 29.864494, 43.122456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192326, 29.468161, 43.122269>,  <32.224743, 29.230360, 43.122158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192326, 29.468161, 43.122269>,  <32.138294, 29.864494, 43.122456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192326, 29.468161, 43.122269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161711, 0.022510, -0.986581,
		0.977550, 0.133191, 0.163270,
		0.135079, -0.990835, -0.000467,
		32.232849, 29.170910, 43.122128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766129, 29.785627, 42.783756>,  <32.138294, 29.864494, 43.122456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766129, 29.785627, 42.783756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593166, 29.425474, 42.764435>,  <32.489388, 29.209381, 42.752842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593166, 29.425474, 42.764435>,  <32.766129, 29.785627, 42.783756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593166, 29.425474, 42.764435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246471, -0.066500, -0.966866,
		0.867338, -0.429984, 0.250674,
		-0.432407, -0.900384, -0.048301,
		32.463444, 29.155359, 42.749943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265457, 29.297604, 42.451843>,  <32.766129, 29.785627, 42.783756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265457, 29.297604, 42.451843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908195, 29.130133, 42.386143>,  <32.693836, 29.029650, 42.346722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908195, 29.130133, 42.386143>,  <33.265457, 29.297604, 42.451843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908195, 29.130133, 42.386143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230829, -0.113300, -0.966375,
		0.385989, -0.901040, 0.197837,
		-0.893157, -0.418677, -0.164254,
		32.640247, 29.004530, 42.336868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350204, 28.709873, 41.980831>,  <33.265457, 29.297604, 42.451843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350204, 28.709873, 41.980831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958858, 28.789890, 41.959690>,  <32.724052, 28.837900, 41.947006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958858, 28.789890, 41.959690>,  <33.350204, 28.709873, 41.980831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958858, 28.789890, 41.959690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061020, 0.034865, -0.997527,
		-0.197706, -0.979167, -0.046317,
		-0.978360, 0.200043, -0.052855,
		32.665352, 28.849903, 41.943832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147488, 28.330597, 41.368439>,  <33.350204, 28.709873, 41.980831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147488, 28.330597, 41.368439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879288, 28.620672, 41.431099>,  <32.718369, 28.794718, 41.468697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879288, 28.620672, 41.431099>,  <33.147488, 28.330597, 41.368439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879288, 28.620672, 41.431099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032668, 0.182087, -0.982740,
		-0.741194, -0.664040, -0.098398,
		-0.670495, 0.725186, 0.156655,
		32.678139, 28.838228, 41.478096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616615, 28.191978, 40.905170>,  <33.147488, 28.330597, 41.368439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616615, 28.191978, 40.905170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555984, 28.576288, 40.998066>,  <32.519608, 28.806873, 41.053802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555984, 28.576288, 40.998066>,  <32.616615, 28.191978, 40.905170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555984, 28.576288, 40.998066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101192, 0.218640, -0.970545,
		-0.983253, -0.170610, 0.064083,
		-0.151574, 0.960775, 0.232243,
		32.510513, 28.864521, 41.067738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034954, 28.345573, 40.484600>,  <32.616615, 28.191978, 40.905170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034954, 28.345573, 40.484600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208950, 28.684549, 40.606339>,  <32.313347, 28.887936, 40.679382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208950, 28.684549, 40.606339>,  <32.034954, 28.345573, 40.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208950, 28.684549, 40.606339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211302, 0.424628, -0.880365,
		-0.875290, 0.318645, 0.363776,
		0.434993, 0.847441, 0.304343,
		32.339447, 28.938782, 40.697639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611698, 28.863682, 40.307934>,  <32.034954, 28.345573, 40.484600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611698, 28.863682, 40.307934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952305, 29.069534, 40.348076>,  <32.156670, 29.193047, 40.372162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952305, 29.069534, 40.348076>,  <31.611698, 28.863682, 40.307934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952305, 29.069534, 40.348076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262438, 0.584028, -0.768139,
		-0.453921, 0.627746, 0.632369,
		0.851517, 0.514632, 0.100358,
		32.207760, 29.223925, 40.378185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442123, 29.493303, 40.125786>,  <31.611698, 28.863682, 40.307934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442123, 29.493303, 40.125786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835262, 29.560881, 40.096218>,  <32.071148, 29.601427, 40.078476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835262, 29.560881, 40.096218>,  <31.442123, 29.493303, 40.125786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835262, 29.560881, 40.096218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168538, 0.660243, -0.731898,
		-0.074845, 0.731804, 0.677393,
		0.982850, 0.168946, -0.073921,
		32.130116, 29.611565, 40.074043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501299, 30.354345, 40.073650>,  <31.442123, 29.493303, 40.125786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501299, 30.354345, 40.073650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831724, 30.169907, 39.944031>,  <32.029980, 30.059244, 39.866257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831724, 30.169907, 39.944031>,  <31.501299, 30.354345, 40.073650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831724, 30.169907, 39.944031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085947, 0.671335, -0.736154,
		0.556987, 0.580257, 0.594195,
		0.826062, -0.461097, -0.324053,
		32.079544, 30.031578, 39.846813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858097, 30.793030, 39.677746>,  <31.501299, 30.354345, 40.073650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858097, 30.793030, 39.677746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064289, 30.465479, 39.576771>,  <32.188004, 30.268950, 39.516186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064289, 30.465479, 39.576771>,  <31.858097, 30.793030, 39.677746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064289, 30.465479, 39.576771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331923, 0.462403, -0.822199,
		0.790004, 0.340040, 0.510164,
		0.515482, -0.818875, -0.252433,
		32.218933, 30.219816, 39.501041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507381, 31.107487, 39.503407>,  <31.858097, 30.793030, 39.677746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507381, 31.107487, 39.503407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472340, 30.753790, 39.319912>,  <32.451317, 30.541571, 39.209816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472340, 30.753790, 39.319912>,  <32.507381, 31.107487, 39.503407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472340, 30.753790, 39.319912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317830, 0.411628, -0.854135,
		0.944092, -0.220624, 0.244980,
		-0.087602, -0.884244, -0.458736,
		32.446060, 30.488518, 39.182293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112694, 30.957808, 39.248894>,  <32.507381, 31.107487, 39.503407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112694, 30.957808, 39.248894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824455, 30.841208, 38.997253>,  <32.651512, 30.771248, 38.846272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824455, 30.841208, 38.997253>,  <33.112694, 30.957808, 39.248894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824455, 30.841208, 38.997253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311658, 0.674324, -0.669445,
		0.619356, -0.678467, -0.395072,
		-0.720602, -0.291498, -0.629096,
		32.608276, 30.753757, 38.808525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623569, 31.072834, 39.735847>,  <33.112694, 30.957808, 39.248894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623569, 31.072834, 39.735847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981693, 31.227535, 39.647442>,  <34.196568, 31.320356, 39.594398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981693, 31.227535, 39.647442>,  <33.623569, 31.072834, 39.735847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981693, 31.227535, 39.647442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329190, -0.240182, 0.913207,
		0.300099, -0.890357, -0.342351,
		0.895307, 0.386751, -0.221018,
		34.250286, 31.343561, 39.581135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054348, 30.646484, 40.095047>,  <33.623569, 31.072834, 39.735847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054348, 30.646484, 40.095047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262016, 30.980715, 40.023190>,  <34.386616, 31.181253, 39.980076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262016, 30.980715, 40.023190>,  <34.054348, 30.646484, 40.095047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262016, 30.980715, 40.023190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575043, -0.186006, 0.796698,
		0.632287, -0.516927, -0.577061,
		0.519172, 0.835576, -0.179647,
		34.417767, 31.231388, 39.969296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785301, 30.443979, 40.136520>,  <34.054348, 30.646484, 40.095047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785301, 30.443979, 40.136520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789993, 30.835577, 40.217945>,  <34.792809, 31.070536, 40.266800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789993, 30.835577, 40.217945>,  <34.785301, 30.443979, 40.136520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789993, 30.835577, 40.217945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580310, -0.172447, 0.795928,
		0.814311, 0.108792, -0.570142,
		0.011729, 0.978992, 0.203559,
		34.793510, 31.129274, 40.279015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508980, 30.534817, 40.311058>,  <34.785301, 30.443979, 40.136520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508980, 30.534817, 40.311058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304245, 30.847494, 40.453594>,  <35.181404, 31.035101, 40.539116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304245, 30.847494, 40.453594>,  <35.508980, 30.534817, 40.311058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304245, 30.847494, 40.453594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598747, 0.027143, 0.800478,
		0.616057, 0.623071, -0.481930,
		-0.511836, 0.781694, 0.356340,
		35.150696, 31.082003, 40.560497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982128, 31.015411, 40.594269>,  <35.508980, 30.534817, 40.311058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982128, 31.015411, 40.594269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643375, 31.128824, 40.774227>,  <35.440125, 31.196873, 40.882202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643375, 31.128824, 40.774227>,  <35.982128, 31.015411, 40.594269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643375, 31.128824, 40.774227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505343, 0.165610, 0.846877,
		0.165610, 0.944554, -0.283533,
		-0.846877, 0.283533, 0.449897,
		35.389313, 31.213884, 40.909195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207081, 31.649902, 41.036064>,  <35.982128, 31.015411, 40.594269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207081, 31.649902, 41.036064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853886, 31.489399, 41.133492>,  <35.641968, 31.393097, 41.191948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853886, 31.489399, 41.133492>,  <36.207081, 31.649902, 41.036064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853886, 31.489399, 41.133492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260983, 0.011637, 0.965273,
		-0.390159, 0.915890, 0.094447,
		-0.882985, -0.401259, 0.243572,
		35.588989, 31.369020, 41.206562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016094, 32.009995, 41.666931>,  <36.207081, 31.649902, 41.036064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016094, 32.009995, 41.666931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777172, 31.689398, 41.655384>,  <35.633820, 31.497040, 41.648457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777172, 31.689398, 41.655384>,  <36.016094, 32.009995, 41.666931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777172, 31.689398, 41.655384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161291, -0.155300, 0.974611,
		-0.785626, 0.577487, 0.222036,
		-0.597308, -0.801492, -0.028864,
		35.597980, 31.448950, 41.646725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509293, 32.004456, 42.306488>,  <36.016094, 32.009995, 41.666931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509293, 32.004456, 42.306488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495712, 31.621492, 42.191792>,  <35.487564, 31.391714, 42.122974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495712, 31.621492, 42.191792>,  <35.509293, 32.004456, 42.306488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495712, 31.621492, 42.191792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182371, -0.276151, 0.943654,
		-0.982643, 0.084331, -0.165228,
		-0.033952, -0.957407, -0.286737,
		35.485527, 31.334270, 42.105770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806690, 31.832483, 42.511856>,  <35.509293, 32.004456, 42.306488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806690, 31.832483, 42.511856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037018, 31.506912, 42.480984>,  <35.175213, 31.311569, 42.462460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037018, 31.506912, 42.480984>,  <34.806690, 31.832483, 42.511856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037018, 31.506912, 42.480984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165508, -0.208493, 0.963918,
		-0.800649, -0.542268, -0.254766,
		0.575819, -0.813926, -0.077180,
		35.209763, 31.262735, 42.457829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520004, 31.371363, 43.062138>,  <34.806690, 31.832483, 42.511856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520004, 31.371363, 43.062138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885532, 31.236244, 42.971966>,  <35.104851, 31.155172, 42.917862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885532, 31.236244, 42.971966>,  <34.520004, 31.371363, 43.062138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885532, 31.236244, 42.971966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069572, -0.416675, 0.906390,
		-0.400097, -0.843968, -0.357268,
		0.913828, -0.337788, -0.225427,
		35.159679, 31.134905, 42.904335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556240, 30.665113, 43.208618>,  <34.520004, 31.371363, 43.062138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556240, 30.665113, 43.208618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943802, 30.762781, 43.224628>,  <35.176338, 30.821383, 43.234234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943802, 30.762781, 43.224628>,  <34.556240, 30.665113, 43.208618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943802, 30.762781, 43.224628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049162, -0.348526, 0.936009,
		0.242497, -0.904936, -0.349693,
		0.968906, 0.244171, 0.040028,
		35.234474, 30.836033, 43.236637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875565, 29.993183, 43.482288>,  <34.556240, 30.665113, 43.208618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875565, 29.993183, 43.482288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103298, 30.311752, 43.563843>,  <35.239937, 30.502893, 43.612774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103298, 30.311752, 43.563843>,  <34.875565, 29.993183, 43.482288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103298, 30.311752, 43.563843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103324, -0.315353, 0.943333,
		0.815589, -0.516004, -0.261830,
		0.569332, 0.796425, 0.203883,
		35.274097, 30.550680, 43.625008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487640, 29.752506, 43.777935>,  <34.875565, 29.993183, 43.482288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487640, 29.752506, 43.777935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421925, 30.131056, 43.889206>,  <35.382496, 30.358185, 43.955971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421925, 30.131056, 43.889206>,  <35.487640, 29.752506, 43.777935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421925, 30.131056, 43.889206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100785, -0.264432, 0.959124,
		0.981250, 0.185611, -0.051936,
		-0.164290, 0.946374, 0.278181,
		35.372639, 30.414968, 43.972660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831749, 29.758728, 44.544712>,  <35.487640, 29.752506, 43.777935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831749, 29.758728, 44.544712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661888, 30.119804, 44.516941>,  <35.559971, 30.336451, 44.500278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661888, 30.119804, 44.516941>,  <35.831749, 29.758728, 44.544712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661888, 30.119804, 44.516941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107700, 0.025769, 0.993849,
		0.898926, 0.429521, 0.086277,
		-0.424656, 0.902689, -0.069424,
		35.534492, 30.390612, 44.496113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152401, 30.185831, 45.112682>,  <35.831749, 29.758728, 44.544712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152401, 30.185831, 45.112682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789665, 30.318623, 45.008812>,  <35.572025, 30.398298, 44.946491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789665, 30.318623, 45.008812>,  <36.152401, 30.185831, 45.112682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789665, 30.318623, 45.008812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259812, 0.044812, 0.964619,
		0.331872, 0.942221, 0.045615,
		-0.906840, 0.331981, -0.259673,
		35.517612, 30.418217, 44.930912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968086, 30.737085, 45.591217>,  <36.152401, 30.185831, 45.112682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968086, 30.737085, 45.591217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618740, 30.622702, 45.433502>,  <35.409134, 30.554071, 45.338875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618740, 30.622702, 45.433502>,  <35.968086, 30.737085, 45.591217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618740, 30.622702, 45.433502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396295, -0.053437, 0.916567,
		-0.283170, 0.956751, -0.066654,
		-0.873364, -0.285959, -0.394287,
		35.356731, 30.536915, 45.315216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519817, 31.156271, 46.032089>,  <35.968086, 30.737085, 45.591217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519817, 31.156271, 46.032089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295025, 30.881218, 45.848202>,  <35.160149, 30.716187, 45.737869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295025, 30.881218, 45.848202>,  <35.519817, 31.156271, 46.032089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295025, 30.881218, 45.848202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459733, -0.202361, 0.864694,
		-0.687619, 0.697289, -0.202404,
		-0.561983, -0.687632, -0.459714,
		35.126431, 30.674929, 45.710289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899624, 31.299911, 46.099709>,  <35.519817, 31.156271, 46.032089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899624, 31.299911, 46.099709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852921, 30.909002, 46.028934>,  <34.824898, 30.674458, 45.986469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852921, 30.909002, 46.028934>,  <34.899624, 31.299911, 46.099709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852921, 30.909002, 46.028934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581496, -0.077154, 0.809883,
		-0.805127, 0.197450, -0.559271,
		-0.116761, -0.977272, -0.176935,
		34.817894, 30.615820, 45.975853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189091, 31.232944, 46.056240>,  <34.899624, 31.299911, 46.099709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189091, 31.232944, 46.056240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333023, 30.868896, 46.138412>,  <34.419384, 30.650467, 46.187717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333023, 30.868896, 46.138412>,  <34.189091, 31.232944, 46.056240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333023, 30.868896, 46.138412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633457, -0.076653, 0.769971,
		-0.685019, -0.407193, -0.604104,
		0.359834, -0.910120, 0.205431,
		34.440971, 30.595861, 46.200043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601643, 30.783556, 46.187225>,  <34.189091, 31.232944, 46.056240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601643, 30.783556, 46.187225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911201, 30.591721, 46.352673>,  <34.096935, 30.476620, 46.451942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911201, 30.591721, 46.352673>,  <33.601643, 30.783556, 46.187225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911201, 30.591721, 46.352673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578853, -0.270677, 0.769197,
		-0.256940, -0.834703, -0.487087,
		0.773894, -0.479588, 0.413622,
		34.143368, 30.447844, 46.476761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312176, 30.238754, 46.643120>,  <33.601643, 30.783556, 46.187225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312176, 30.238754, 46.643120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694122, 30.258846, 46.760220>,  <33.923290, 30.270903, 46.830479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694122, 30.258846, 46.760220>,  <33.312176, 30.238754, 46.643120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694122, 30.258846, 46.760220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246001, -0.418591, 0.874222,
		0.166455, -0.906785, -0.387343,
		0.954870, 0.050232, 0.292747,
		33.980583, 30.273916, 46.848045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460056, 29.539875, 46.970978>,  <33.312176, 30.238754, 46.643120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460056, 29.539875, 46.970978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718475, 29.815226, 47.102890>,  <33.873528, 29.980436, 47.182037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718475, 29.815226, 47.102890>,  <33.460056, 29.539875, 46.970978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718475, 29.815226, 47.102890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195429, -0.268468, 0.943256,
		0.737852, -0.673840, -0.038915,
		0.646051, 0.688378, 0.329778,
		33.912292, 30.021740, 47.201824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965950, 29.257763, 47.585300>,  <33.460056, 29.539875, 46.970978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965950, 29.257763, 47.585300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022533, 29.648010, 47.652424>,  <34.056484, 29.882158, 47.692696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022533, 29.648010, 47.652424>,  <33.965950, 29.257763, 47.585300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022533, 29.648010, 47.652424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020789, -0.172401, 0.984807,
		0.989726, -0.135823, -0.044670,
		0.141460, 0.975618, 0.167807,
		34.064972, 29.940695, 47.702766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220715, 29.282839, 48.243912>,  <33.965950, 29.257763, 47.585300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220715, 29.282839, 48.243912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136257, 29.670042, 48.189690>,  <34.085583, 29.902365, 48.157154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136257, 29.670042, 48.189690>,  <34.220715, 29.282839, 48.243912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136257, 29.670042, 48.189690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182056, 0.097310, 0.978461,
		0.960350, 0.231278, 0.155686,
		-0.211147, 0.968009, -0.135558,
		34.072914, 29.960445, 48.149021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641094, 29.677198, 48.728672>,  <34.220715, 29.282839, 48.243912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641094, 29.677198, 48.728672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310963, 29.881277, 48.631905>,  <34.112885, 30.003725, 48.573845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310963, 29.881277, 48.631905>,  <34.641094, 29.677198, 48.728672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310963, 29.881277, 48.631905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244928, 0.062550, 0.967521,
		0.508758, 0.857780, 0.073337,
		-0.825333, 0.510197, -0.241917,
		34.063362, 30.034336, 48.559330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554966, 30.412224, 49.033470>,  <34.641094, 29.677198, 48.728672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554966, 30.412224, 49.033470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185741, 30.302025, 48.926094>,  <33.964207, 30.235905, 48.861668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185741, 30.302025, 48.926094>,  <34.554966, 30.412224, 49.033470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185741, 30.302025, 48.926094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328630, 0.202121, 0.922578,
		-0.199911, 0.939813, -0.277107,
		-0.923059, -0.275499, -0.268445,
		33.908825, 30.219376, 48.845562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108582, 30.889723, 49.291393>,  <34.554966, 30.412224, 49.033470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108582, 30.889723, 49.291393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851078, 30.592936, 49.216499>,  <33.696575, 30.414864, 49.171562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851078, 30.592936, 49.216499>,  <34.108582, 30.889723, 49.291393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851078, 30.592936, 49.216499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515672, 0.239857, 0.822527,
		-0.565379, 0.626062, -0.537022,
		-0.643762, -0.741967, -0.187232,
		33.657951, 30.370346, 49.160328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386337, 31.183220, 49.339664>,  <34.108582, 30.889723, 49.291393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386337, 31.183220, 49.339664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338356, 30.788282, 49.381168>,  <33.309566, 30.551321, 49.406071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338356, 30.788282, 49.381168>,  <33.386337, 31.183220, 49.339664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338356, 30.788282, 49.381168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639877, 0.156804, 0.752309,
		-0.759057, 0.023849, -0.650587,
		-0.119957, -0.987342, 0.103763,
		33.302368, 30.492081, 49.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684059, 31.067698, 49.404877>,  <33.386337, 31.183220, 49.339664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684059, 31.067698, 49.404877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846584, 30.726879, 49.536896>,  <32.944099, 30.522388, 49.616108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846584, 30.726879, 49.536896>,  <32.684059, 31.067698, 49.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846584, 30.726879, 49.536896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496486, 0.097368, 0.862566,
		-0.767081, -0.514334, -0.383467,
		0.406310, -0.852044, 0.330049,
		32.968479, 30.471266, 49.635910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174370, 30.922136, 49.927856>,  <32.684059, 31.067698, 49.404877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174370, 30.922136, 49.927856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469055, 30.664583, 50.010483>,  <32.645866, 30.510052, 50.060059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469055, 30.664583, 50.010483>,  <32.174370, 30.922136, 49.927856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469055, 30.664583, 50.010483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342220, -0.091554, 0.935149,
		-0.583216, -0.759625, -0.287799,
		0.736712, -0.643885, 0.206563,
		32.690067, 30.471418, 50.072453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886684, 30.288940, 50.279053>,  <32.174370, 30.922136, 49.927856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886684, 30.288940, 50.279053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270859, 30.343313, 50.376286>,  <32.501362, 30.375937, 50.434624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270859, 30.343313, 50.376286>,  <31.886684, 30.288940, 50.279053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270859, 30.343313, 50.376286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227119, -0.122874, 0.966084,
		0.161192, -0.983069, -0.087139,
		0.960434, 0.135934, 0.243080,
		32.558990, 30.384092, 50.449211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114250, 29.677235, 50.663303>,  <31.886684, 30.288940, 50.279053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114250, 29.677235, 50.663303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371666, 29.947729, 50.806721>,  <32.526115, 30.110025, 50.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371666, 29.947729, 50.806721>,  <32.114250, 29.677235, 50.663303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371666, 29.947729, 50.806721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170106, -0.330362, 0.928399,
		0.746269, -0.658454, -0.097570,
		0.643542, 0.676239, 0.358546,
		32.564728, 30.150600, 50.914284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414604, 29.450245, 51.211658>,  <32.114250, 29.677235, 50.663303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414604, 29.450245, 51.211658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578678, 29.812040, 51.258385>,  <32.677124, 30.029118, 51.286419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578678, 29.812040, 51.258385>,  <32.414604, 29.450245, 51.211658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578678, 29.812040, 51.258385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097532, -0.170858, 0.980456,
		0.906770, -0.390779, -0.158300,
		0.410189, 0.904488, 0.116816,
		32.701736, 30.083387, 51.293430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048168, 29.407360, 51.658798>,  <32.414604, 29.450245, 51.211658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048168, 29.407360, 51.658798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915604, 29.783863, 51.684738>,  <32.836067, 30.009764, 51.700302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915604, 29.783863, 51.684738>,  <33.048168, 29.407360, 51.658798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915604, 29.783863, 51.684738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038477, -0.082159, 0.995876,
		0.942702, 0.327547, 0.063445,
		-0.331409, 0.941256, 0.064848,
		32.816181, 30.066240, 51.704193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406700, 29.657625, 52.200043>,  <33.048168, 29.407360, 51.658798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406700, 29.657625, 52.200043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108379, 29.919535, 52.150963>,  <32.929386, 30.076681, 52.121513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108379, 29.919535, 52.150963>,  <33.406700, 29.657625, 52.200043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108379, 29.919535, 52.150963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108900, 0.061883, 0.992125,
		0.657210, 0.753288, 0.025153,
		-0.745799, 0.654773, -0.122703,
		32.884640, 30.115967, 52.114151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602135, 30.262484, 52.532604>,  <33.406700, 29.657625, 52.200043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602135, 30.262484, 52.532604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204876, 30.295998, 52.500019>,  <32.966518, 30.316107, 52.480469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204876, 30.295998, 52.500019>,  <33.602135, 30.262484, 52.532604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204876, 30.295998, 52.500019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049994, 0.325424, 0.944246,
		0.105624, 0.941849, -0.319006,
		-0.993149, 0.083787, -0.081459,
		32.906933, 30.321135, 52.475582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476990, 30.858526, 52.788807>,  <33.602135, 30.262484, 52.532604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476990, 30.858526, 52.788807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107933, 30.704327, 52.793278>,  <32.886501, 30.611807, 52.795959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107933, 30.704327, 52.793278>,  <33.476990, 30.858526, 52.788807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107933, 30.704327, 52.793278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186888, 0.472273, 0.861412,
		-0.337356, 0.792683, -0.507784,
		-0.922640, -0.385501, 0.011182,
		32.831142, 30.588676, 52.796631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057415, 31.448254, 52.876690>,  <33.476990, 30.858526, 52.788807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057415, 31.448254, 52.876690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923733, 31.086588, 52.983112>,  <32.843521, 30.869589, 53.046967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923733, 31.086588, 52.983112>,  <33.057415, 31.448254, 52.876690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923733, 31.086588, 52.983112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344116, 0.379863, 0.858655,
		-0.877433, 0.195414, -0.438092,
		-0.334208, -0.904167, 0.266060,
		32.823471, 30.815338, 53.062931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186829, 32.006290, 53.292095>,  <33.057415, 31.448254, 52.876690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186829, 32.006290, 53.292095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236507, 32.389046, 53.397118>,  <33.266315, 32.618698, 53.460133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236507, 32.389046, 53.397118>,  <33.186829, 32.006290, 53.292095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236507, 32.389046, 53.397118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242566, 0.285855, -0.927065,
		-0.962152, 0.051451, 0.267611,
		0.124196, 0.956891, 0.262556,
		33.273766, 32.676113, 53.475883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546715, 32.448235, 53.209465>,  <33.186829, 32.006290, 53.292095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546715, 32.448235, 53.209465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856846, 32.700287, 53.192509>,  <33.042923, 32.851521, 53.182335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856846, 32.700287, 53.192509>,  <32.546715, 32.448235, 53.209465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856846, 32.700287, 53.192509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313782, 0.326086, -0.891745,
		-0.548096, 0.704697, 0.450549,
		0.775327, 0.630135, -0.042395,
		33.089443, 32.889328, 53.179790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244896, 33.026016, 52.852341>,  <32.546715, 32.448235, 53.209465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244896, 33.026016, 52.852341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634331, 33.111164, 52.819305>,  <32.867992, 33.162254, 52.799484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634331, 33.111164, 52.819305>,  <32.244896, 33.026016, 52.852341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634331, 33.111164, 52.819305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158666, 0.370644, -0.915122,
		-0.164192, 0.904051, 0.394629,
		0.973584, 0.212870, -0.082586,
		32.926407, 33.175026, 52.794529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215481, 33.682735, 52.580315>,  <32.244896, 33.026016, 52.852341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215481, 33.682735, 52.580315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581749, 33.544830, 52.497681>,  <32.801510, 33.462086, 52.448101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581749, 33.544830, 52.497681>,  <32.215481, 33.682735, 52.580315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581749, 33.544830, 52.497681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083556, 0.339473, -0.936897,
		0.393140, 0.875154, 0.282039,
		0.915674, -0.344766, -0.206585,
		32.856453, 33.441402, 52.435703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557056, 34.139141, 52.132877>,  <32.215481, 33.682735, 52.580315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557056, 34.139141, 52.132877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726681, 33.785995, 52.052151>,  <32.828457, 33.574108, 52.003716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726681, 33.785995, 52.052151>,  <32.557056, 34.139141, 52.132877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726681, 33.785995, 52.052151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015662, 0.229964, -0.973073,
		0.905498, 0.409481, 0.111346,
		0.424060, -0.882860, -0.201818,
		32.853897, 33.521137, 51.991604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204983, 34.273880, 51.620220>,  <32.557056, 34.139141, 52.132877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204983, 34.273880, 51.620220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121712, 33.883415, 51.595661>,  <33.071751, 33.649136, 51.580925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121712, 33.883415, 51.595661>,  <33.204983, 34.273880, 51.620220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121712, 33.883415, 51.595661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070757, 0.047581, -0.996358,
		0.975529, -0.211762, 0.059165,
		-0.208176, -0.976162, -0.061401,
		33.059258, 33.590565, 51.577240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544773, 34.030163, 51.029682>,  <33.204983, 34.273880, 51.620220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544773, 34.030163, 51.029682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329506, 33.697784, 51.086124>,  <33.200348, 33.498360, 51.119991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329506, 33.697784, 51.086124>,  <33.544773, 34.030163, 51.029682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329506, 33.697784, 51.086124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004644, -0.164494, -0.986367,
		0.842826, -0.531484, 0.084666,
		-0.538166, -0.830943, 0.141108,
		33.168056, 33.448502, 51.128456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820896, 33.528500, 50.588688>,  <33.544773, 34.030163, 51.029682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820896, 33.528500, 50.588688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456921, 33.379723, 50.662090>,  <33.238537, 33.290455, 50.706131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456921, 33.379723, 50.662090>,  <33.820896, 33.528500, 50.588688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456921, 33.379723, 50.662090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153806, -0.108290, -0.982149,
		0.385176, -0.921917, 0.041330,
		-0.909936, -0.371943, 0.183507,
		33.183941, 33.268139, 50.717144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732468, 32.801983, 50.251163>,  <33.820896, 33.528500, 50.588688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732468, 32.801983, 50.251163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364517, 32.956818, 50.276459>,  <33.143749, 33.049717, 50.291634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364517, 32.956818, 50.276459>,  <33.732468, 32.801983, 50.251163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364517, 32.956818, 50.276459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158096, -0.218387, -0.962971,
		-0.358946, -0.895807, 0.262085,
		-0.919872, 0.387089, 0.063235,
		33.088554, 33.072945, 50.295429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346519, 32.274849, 49.868267>,  <33.732468, 32.801983, 50.251163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346519, 32.274849, 49.868267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113068, 32.599030, 49.888470>,  <32.972996, 32.793537, 49.900589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113068, 32.599030, 49.888470>,  <33.346519, 32.274849, 49.868267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113068, 32.599030, 49.888470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142484, -0.040980, -0.988948,
		-0.799424, -0.584372, 0.139393,
		-0.583626, 0.810451, 0.050503,
		32.937981, 32.842163, 49.903622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650578, 32.123962, 49.557823>,  <33.346519, 32.274849, 49.868267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650578, 32.123962, 49.557823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704025, 32.519726, 49.535172>,  <32.736095, 32.757183, 49.521580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704025, 32.519726, 49.535172>,  <32.650578, 32.123962, 49.557823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704025, 32.519726, 49.535172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135915, -0.038310, -0.989980,
		-0.981668, 0.139982, 0.129357,
		0.133623, 0.989413, -0.056633,
		32.744114, 32.816551, 49.518181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367744, 32.261932, 48.967690>,  <32.650578, 32.123962, 49.557823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367744, 32.261932, 48.967690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561340, 32.609390, 49.010040>,  <32.677498, 32.817863, 49.035450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561340, 32.609390, 49.010040>,  <32.367744, 32.261932, 48.967690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561340, 32.609390, 49.010040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057516, 0.152306, -0.986658,
		-0.873179, 0.471447, 0.123676,
		0.483994, 0.868643, 0.105875,
		32.706539, 32.869984, 49.041801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981853, 32.709892, 48.563160>,  <32.367744, 32.261932, 48.967690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981853, 32.709892, 48.563160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349579, 32.860634, 48.608490>,  <32.570213, 32.951080, 48.635689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349579, 32.860634, 48.608490>,  <31.981853, 32.709892, 48.563160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349579, 32.860634, 48.608490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132490, -0.025237, -0.990863,
		-0.370552, 0.925928, -0.073130,
		0.919313, 0.376855, 0.113325,
		32.625374, 32.973690, 48.642487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995234, 33.214584, 48.052200>,  <31.981853, 32.709892, 48.563160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995234, 33.214584, 48.052200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363888, 33.100525, 48.157486>,  <32.585079, 33.032089, 48.220657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363888, 33.100525, 48.157486>,  <31.995234, 33.214584, 48.052200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363888, 33.100525, 48.157486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255755, -0.063801, -0.964634,
		0.291857, 0.956358, 0.014127,
		0.921634, -0.285148, 0.263214,
		32.640377, 33.014980, 48.236450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288311, 33.210434, 47.462093>,  <31.995234, 33.214584, 48.052200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288311, 33.210434, 47.462093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599125, 33.063438, 47.666515>,  <32.785614, 32.975243, 47.789169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599125, 33.063438, 47.666515>,  <32.288311, 33.210434, 47.462093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599125, 33.063438, 47.666515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455064, -0.232986, -0.859438,
		0.434898, 0.900374, -0.013809,
		0.777033, -0.367484, 0.511053,
		32.832233, 32.953194, 47.819832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960548, 33.639698, 47.352444>,  <32.288311, 33.210434, 47.462093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960548, 33.639698, 47.352444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061298, 33.263767, 47.444775>,  <33.121750, 33.038208, 47.500175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061298, 33.263767, 47.444775>,  <32.960548, 33.639698, 47.352444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061298, 33.263767, 47.444775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600697, -0.035182, -0.798702,
		0.758764, 0.339832, 0.555690,
		0.251875, -0.939828, 0.230830,
		33.136860, 32.981819, 47.514023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680645, 33.591049, 47.267628>,  <32.960548, 33.639698, 47.352444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680645, 33.591049, 47.267628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592289, 33.201420, 47.248100>,  <33.539276, 32.967640, 47.236385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592289, 33.201420, 47.248100>,  <33.680645, 33.591049, 47.267628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592289, 33.201420, 47.248100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535076, -0.079186, -0.841084,
		0.815416, -0.211903, 0.538697,
		-0.220885, -0.974077, -0.048815,
		33.526024, 32.909195, 47.233456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238419, 33.156998, 47.389061>,  <33.680645, 33.591049, 47.267628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238419, 33.156998, 47.389061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967903, 32.965775, 47.164886>,  <33.805592, 32.851040, 47.030380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967903, 32.965775, 47.164886>,  <34.238419, 33.156998, 47.389061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967903, 32.965775, 47.164886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667737, -0.076580, -0.740447,
		0.311055, -0.874986, 0.371005,
		-0.676292, -0.478054, -0.560440,
		33.765015, 32.822357, 46.996754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629089, 32.841496, 46.935936>,  <34.238419, 33.156998, 47.389061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629089, 32.841496, 46.935936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283825, 32.783836, 46.742371>,  <34.076664, 32.749241, 46.626232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283825, 32.783836, 46.742371>,  <34.629089, 32.841496, 46.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283825, 32.783836, 46.742371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483163, 0.042524, -0.874497,
		0.146634, -0.988642, 0.032942,
		-0.863164, -0.144148, -0.483911,
		34.024876, 32.740593, 46.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690208, 32.233047, 46.407055>,  <34.629089, 32.841496, 46.935936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690208, 32.233047, 46.407055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364376, 32.438080, 46.298447>,  <34.168877, 32.561100, 46.233280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364376, 32.438080, 46.298447>,  <34.690208, 32.233047, 46.407055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364376, 32.438080, 46.298447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348545, 0.058360, -0.935473,
		-0.463658, -0.856654, -0.226196,
		-0.814578, 0.512579, -0.271524,
		34.120003, 32.591854, 46.216988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501675, 31.880157, 45.766697>,  <34.690208, 32.233047, 46.407055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501675, 31.880157, 45.766697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321606, 32.234661, 45.810307>,  <34.213566, 32.447365, 45.836472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321606, 32.234661, 45.810307>,  <34.501675, 31.880157, 45.766697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321606, 32.234661, 45.810307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135210, 0.188342, -0.972751,
		-0.882645, -0.423165, -0.204618,
		-0.450173, 0.886261, 0.109023,
		34.186554, 32.500538, 45.843014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243660, 31.916401, 45.101612>,  <34.501675, 31.880157, 45.766697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243660, 31.916401, 45.101612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256741, 32.296143, 45.226612>,  <34.264587, 32.523987, 45.301613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256741, 32.296143, 45.226612>,  <34.243660, 31.916401, 45.101612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256741, 32.296143, 45.226612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405057, 0.273253, -0.872503,
		-0.913707, 0.155109, -0.375608,
		0.032697, 0.949354, 0.312501,
		34.266548, 32.580948, 45.320362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908417, 32.374496, 44.614136>,  <34.243660, 31.916401, 45.101612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908417, 32.374496, 44.614136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181759, 32.586449, 44.815037>,  <34.345764, 32.713619, 44.935577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181759, 32.586449, 44.815037>,  <33.908417, 32.374496, 44.614136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181759, 32.586449, 44.815037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500435, 0.160943, -0.850683,
		-0.531592, 0.832663, -0.155188,
		0.683356, 0.529878, 0.502249,
		34.386765, 32.745411, 44.965714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241615, 32.829994, 44.090515>,  <33.908417, 32.374496, 44.614136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241615, 32.829994, 44.090515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476967, 32.878166, 44.410339>,  <34.618179, 32.907070, 44.602234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476967, 32.878166, 44.410339>,  <34.241615, 32.829994, 44.090515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476967, 32.878166, 44.410339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780232, 0.174993, -0.600513,
		-0.212237, 0.977177, 0.008999,
		0.588382, 0.120430, 0.799565,
		34.653481, 32.914295, 44.650208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585140, 33.536800, 44.002392>,  <34.241615, 32.829994, 44.090515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585140, 33.536800, 44.002392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807373, 33.319893, 44.254513>,  <34.940712, 33.189751, 44.405785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807373, 33.319893, 44.254513>,  <34.585140, 33.536800, 44.002392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807373, 33.319893, 44.254513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829522, 0.309716, -0.464725,
		0.056789, 0.781042, 0.621892,
		0.555579, -0.542264, 0.630302,
		34.974049, 33.157215, 44.443604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051060, 33.998672, 44.366920>,  <34.585140, 33.536800, 44.002392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051060, 33.998672, 44.366920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206337, 33.630585, 44.346928>,  <35.299503, 33.409733, 44.334930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206337, 33.630585, 44.346928>,  <35.051060, 33.998672, 44.366920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206337, 33.630585, 44.346928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715700, 0.335193, -0.612714,
		0.580588, 0.202076, 0.788722,
		0.388189, -0.920223, -0.049984,
		35.322792, 33.354519, 44.331932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800667, 34.090164, 44.427231>,  <35.051060, 33.998672, 44.366920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800667, 34.090164, 44.427231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776608, 33.730873, 44.253067>,  <35.762173, 33.515301, 44.148571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776608, 33.730873, 44.253067>,  <35.800667, 34.090164, 44.427231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776608, 33.730873, 44.253067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848442, 0.183787, -0.496356,
		0.525860, -0.399272, 0.751035,
		-0.060151, -0.898223, -0.435405,
		35.758564, 33.461407, 44.122444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506123, 33.843281, 44.498116>,  <35.800667, 34.090164, 44.427231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506123, 33.843281, 44.498116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338226, 33.629738, 44.204498>,  <36.237488, 33.501614, 44.028328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338226, 33.629738, 44.204498>,  <36.506123, 33.843281, 44.498116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338226, 33.629738, 44.204498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876146, -0.027113, -0.481282,
		0.237032, -0.845142, 0.479115,
		-0.419742, -0.533854, -0.734041,
		36.212303, 33.469582, 43.984287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075676, 33.425201, 44.261986>,  <36.506123, 33.843281, 44.498116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075676, 33.425201, 44.261986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804279, 33.380516, 43.971561>,  <36.641441, 33.353703, 43.797306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804279, 33.380516, 43.971561>,  <37.075676, 33.425201, 44.261986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804279, 33.380516, 43.971561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734605, -0.101871, -0.670804,
		0.000976, -0.988505, 0.151188,
		-0.678495, -0.111718, -0.726061,
		36.600731, 33.347000, 43.753742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182640, 32.835083, 43.879704>,  <37.075676, 33.425201, 44.261986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182640, 32.835083, 43.879704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988125, 33.086845, 43.637260>,  <36.871414, 33.237904, 43.491795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988125, 33.086845, 43.637260>,  <37.182640, 32.835083, 43.879704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988125, 33.086845, 43.637260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777477, -0.004926, -0.628892,
		-0.398816, -0.777059, -0.486956,
		-0.486287, 0.629409, -0.606110,
		36.842239, 33.275669, 43.455429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439629, 32.567123, 43.287304>,  <37.182640, 32.835083, 43.879704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439629, 32.567123, 43.287304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272812, 32.911972, 43.172188>,  <37.172722, 33.118881, 43.103119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272812, 32.911972, 43.172188>,  <37.439629, 32.567123, 43.287304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272812, 32.911972, 43.172188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626012, 0.042904, -0.778632,
		-0.658928, -0.504882, -0.557591,
		-0.417040, 0.862122, -0.287791,
		37.147701, 33.170609, 43.085850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217419, 32.544125, 42.587765>,  <37.439629, 32.567123, 43.287304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217419, 32.544125, 42.587765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 32.940659, 42.638695>,  <37.238037, 33.178581, 42.669254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 32.940659, 42.638695>,  <37.217419, 32.544125, 42.587765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230305, 32.940659, 42.638695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342870, 0.108700, -0.933073,
		-0.938830, 0.073714, -0.336398,
		0.032214, 0.991338, 0.127326,
		37.239967, 33.238060, 42.676891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025856, 32.847054, 41.887939>,  <37.217419, 32.544125, 42.587765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025856, 32.847054, 41.887939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220692, 33.127850, 42.095768>,  <37.337593, 33.296329, 42.220463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220692, 33.127850, 42.095768>,  <37.025856, 32.847054, 41.887939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220692, 33.127850, 42.095768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576007, 0.188962, -0.795305,
		-0.656478, 0.686656, -0.312313,
		0.487086, 0.701995, 0.519568,
		37.366817, 33.338448, 42.251637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920700, 33.555805, 41.478455>,  <37.025856, 32.847054, 41.887939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920700, 33.555805, 41.478455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236591, 33.563736, 41.723709>,  <37.426125, 33.568493, 41.870861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236591, 33.563736, 41.723709>,  <36.920700, 33.555805, 41.478455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236591, 33.563736, 41.723709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556182, 0.398563, -0.729252,
		-0.258832, 0.916927, 0.303730,
		0.789726, 0.019825, 0.613139,
		37.473511, 33.569683, 41.907650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331356, 34.031357, 41.208424>,  <36.920700, 33.555805, 41.478455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331356, 34.031357, 41.208424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583755, 33.829475, 41.444088>,  <37.735195, 33.708347, 41.585487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583755, 33.829475, 41.444088>,  <37.331356, 34.031357, 41.208424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583755, 33.829475, 41.444088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765631, 0.282680, -0.577842,
		0.125095, 0.815700, 0.564788,
		0.631000, -0.504704, 0.589163,
		37.773056, 33.678062, 41.620838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804630, 34.432064, 41.463673>,  <37.331356, 34.031357, 41.208424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804630, 34.432064, 41.463673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000004, 34.087708, 41.520657>,  <38.117229, 33.881092, 41.554848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000004, 34.087708, 41.520657>,  <37.804630, 34.432064, 41.463673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000004, 34.087708, 41.520657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831543, 0.409718, -0.375057,
		0.264513, 0.301656, 0.915989,
		0.488435, -0.860892, 0.142464,
		38.146534, 33.829441, 41.563396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458450, 34.590847, 41.819221>,  <37.804630, 34.432064, 41.463673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458450, 34.590847, 41.819221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508900, 34.230980, 41.652035>,  <38.539169, 34.015060, 41.551723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508900, 34.230980, 41.652035>,  <38.458450, 34.590847, 41.819221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508900, 34.230980, 41.652035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862466, 0.307621, -0.401898,
		0.490149, -0.309797, 0.814727,
		0.126121, -0.899664, -0.417969,
		38.546738, 33.961082, 41.526646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088963, 34.372433, 41.986965>,  <38.458450, 34.590847, 41.819221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088963, 34.372433, 41.986965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010006, 34.167694, 41.652531>,  <38.962631, 34.044849, 41.451870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010006, 34.167694, 41.652531>,  <39.088963, 34.372433, 41.986965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010006, 34.167694, 41.652531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857016, 0.323998, -0.400685,
		0.475982, -0.795635, 0.374708,
		-0.197394, -0.511849, -0.836090,
		38.950787, 34.014141, 41.401703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715282, 34.108810, 41.849865>,  <39.088963, 34.372433, 41.986965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715282, 34.108810, 41.849865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502964, 34.106705, 41.510872>,  <39.375572, 34.105442, 41.307476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502964, 34.106705, 41.510872>,  <39.715282, 34.108810, 41.849865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502964, 34.106705, 41.510872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826725, 0.216842, -0.519139,
		0.186502, -0.976193, -0.110749,
		-0.530795, -0.005261, -0.847484,
		39.343727, 34.105125, 41.256626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140244, 33.585178, 41.381062>,  <39.715282, 34.108810, 41.849865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140244, 33.585178, 41.381062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920586, 33.826527, 41.149757>,  <39.788792, 33.971336, 41.010975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920586, 33.826527, 41.149757>,  <40.140244, 33.585178, 41.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920586, 33.826527, 41.149757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791097, 0.152211, -0.592451,
		-0.269448, -0.782802, -0.560908,
		-0.549148, 0.603368, -0.578259,
		39.755840, 34.007538, 40.976280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424774, 33.106915, 40.838577>,  <40.140244, 33.585178, 41.381062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424774, 33.106915, 40.838577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764225, 32.995033, 40.658978>,  <40.967896, 32.927902, 40.551216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764225, 32.995033, 40.658978>,  <40.424774, 33.106915, 40.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764225, 32.995033, 40.658978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463902, 0.014409, -0.885769,
		0.254224, 0.959978, -0.117528,
		0.848625, -0.279705, -0.448999,
		41.018814, 32.911121, 40.524277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267464, 33.389717, 40.213238>,  <40.424774, 33.106915, 40.838577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267464, 33.389717, 40.213238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654488, 33.295227, 40.177410>,  <40.886703, 33.238533, 40.155914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654488, 33.295227, 40.177410>,  <40.267464, 33.389717, 40.213238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654488, 33.295227, 40.177410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198846, 0.930783, -0.306762,
		0.155829, 0.279002, 0.947563,
		0.967563, -0.236221, -0.089565,
		40.944756, 33.224361, 40.150539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830601, 33.957947, 40.457821>,  <40.267464, 33.389717, 40.213238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830601, 33.957947, 40.457821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987709, 33.721390, 40.176117>,  <41.081974, 33.579456, 40.007095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987709, 33.721390, 40.176117>,  <40.830601, 33.957947, 40.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987709, 33.721390, 40.176117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223634, 0.804242, -0.550620,
		0.892029, 0.058772, 0.448141,
		0.392775, -0.591389, -0.704263,
		41.105541, 33.543972, 39.964836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523697, 34.179966, 40.379719>,  <40.830601, 33.957947, 40.457821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523697, 34.179966, 40.379719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365326, 33.995342, 40.062180>,  <41.270302, 33.884567, 39.871655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365326, 33.995342, 40.062180>,  <41.523697, 34.179966, 40.379719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365326, 33.995342, 40.062180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445893, 0.659106, -0.605607,
		0.802757, -0.593750, -0.055153,
		-0.395931, -0.461563, -0.793850,
		41.246548, 33.856873, 39.824024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065525, 33.933811, 40.128242>,  <41.523697, 34.179966, 40.379719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065525, 33.933811, 40.128242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765152, 34.004906, 39.873837>,  <41.584930, 34.047562, 39.721191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765152, 34.004906, 39.873837>,  <42.065525, 33.933811, 40.128242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765152, 34.004906, 39.873837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596978, 0.594488, -0.538704,
		0.282353, -0.784215, -0.552526,
		-0.750929, 0.177741, -0.636014,
		41.539875, 34.058228, 39.683033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466591, 33.849228, 39.530098>,  <42.065525, 33.933811, 40.128242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466591, 33.849228, 39.530098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412849, 34.192928, 39.727535>,  <42.380604, 34.399147, 39.845997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412849, 34.192928, 39.727535>,  <42.466591, 33.849228, 39.530098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412849, 34.192928, 39.727535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954215, -0.022154, 0.298299,
		0.267249, 0.511074, -0.816934,
		-0.134355, 0.859251, 0.493596,
		42.372543, 34.450703, 39.875614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972252, 34.408699, 39.320168>,  <42.466591, 33.849228, 39.530098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972252, 34.408699, 39.320168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854633, 34.416702, 39.702400>,  <42.784061, 34.421505, 39.931740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854633, 34.416702, 39.702400>,  <42.972252, 34.408699, 39.320168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854633, 34.416702, 39.702400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955630, -0.012215, 0.294316,
		0.017562, 0.999725, -0.015532,
		-0.294045, 0.020012, 0.955582,
		42.766418, 34.422707, 39.989075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566319, 34.727814, 39.630951>,  <42.972252, 34.408699, 39.320168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566319, 34.727814, 39.630951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333603, 34.613758, 39.935638>,  <43.193974, 34.545326, 40.118450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333603, 34.613758, 39.935638>,  <43.566319, 34.727814, 39.630951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333603, 34.613758, 39.935638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788956, 0.029759, 0.613728,
		-0.197664, 0.958025, 0.207647,
		-0.581787, -0.285136, 0.761722,
		43.159065, 34.528217, 40.164154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715492, 34.108402, 39.195866>,  <43.566319, 34.727814, 39.630951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715492, 34.108402, 39.195866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868778, 33.926895, 38.874062>,  <43.960751, 33.817993, 38.680977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868778, 33.926895, 38.874062>,  <43.715492, 34.108402, 39.195866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868778, 33.926895, 38.874062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832832, 0.206900, -0.513403,
		0.399418, 0.866771, -0.298621,
		0.383218, -0.453763, -0.804514,
		43.983742, 33.790768, 38.632706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720734, 34.526905, 38.634159>,  <43.715492, 34.108402, 39.195866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720734, 34.526905, 38.634159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739254, 34.180218, 38.435501>,  <43.750366, 33.972206, 38.316307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739254, 34.180218, 38.435501>,  <43.720734, 34.526905, 38.634159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739254, 34.180218, 38.435501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589180, 0.377798, -0.714238,
		0.806674, 0.325679, -0.493163,
		0.046297, -0.866719, -0.496643,
		43.753143, 33.920200, 38.286507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806316, 34.721786, 37.892361>,  <43.720734, 34.526905, 38.634159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806316, 34.721786, 37.892361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650341, 34.355957, 37.935268>,  <43.556755, 34.136459, 37.961014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.650341, 34.355957, 37.935268>,  <43.806316, 34.721786, 37.892361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650341, 34.355957, 37.935268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511727, 0.118373, -0.850954,
		0.765563, -0.386708, -0.514170,
		-0.389935, -0.914573, 0.107267,
		43.533360, 34.081585, 37.967449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757504, 34.455566, 37.189846>,  <43.806316, 34.721786, 37.892361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757504, 34.455566, 37.189846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528831, 34.226608, 37.424980>,  <43.391628, 34.089233, 37.566059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528831, 34.226608, 37.424980>,  <43.757504, 34.455566, 37.189846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528831, 34.226608, 37.424980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646189, -0.127384, -0.752471,
		0.505593, -0.810021, -0.297055,
		-0.571677, -0.572398, 0.587831,
		43.357327, 34.054890, 37.601330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546307, 33.887100, 36.697483>,  <43.757504, 34.455566, 37.189846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546307, 33.887100, 36.697483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290398, 33.892262, 37.004864>,  <43.136852, 33.895359, 37.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290398, 33.892262, 37.004864>,  <43.546307, 33.887100, 36.697483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290398, 33.892262, 37.004864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764109, -0.118161, -0.634173,
		0.082620, -0.992911, 0.085454,
		-0.639775, 0.012901, 0.768454,
		43.098465, 33.896133, 37.235401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119564, 33.216812, 36.653641>,  <43.546307, 33.887100, 36.697483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119564, 33.216812, 36.653641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953873, 33.526592, 36.844906>,  <42.854458, 33.712460, 36.959663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953873, 33.526592, 36.844906>,  <43.119564, 33.216812, 36.653641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953873, 33.526592, 36.844906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804238, -0.065459, -0.590691,
		-0.426160, -0.629241, 0.649957,
		-0.414233, 0.774449, 0.478164,
		42.829601, 33.758926, 36.988354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416645, 33.120804, 36.504871>,  <43.119564, 33.216812, 36.653641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416645, 33.120804, 36.504871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400387, 33.488159, 36.662308>,  <42.390633, 33.708572, 36.756771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400387, 33.488159, 36.662308>,  <42.416645, 33.120804, 36.504871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400387, 33.488159, 36.662308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838994, 0.182555, -0.512603,
		-0.542620, -0.351058, 0.763100,
		-0.040646, 0.918386, 0.393593,
		42.388195, 33.763676, 36.780384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730400, 33.138226, 36.614132>,  <42.416645, 33.120804, 36.504871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730400, 33.138226, 36.614132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868969, 33.513416, 36.619724>,  <41.952110, 33.738529, 36.623081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868969, 33.513416, 36.619724>,  <41.730400, 33.138226, 36.614132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868969, 33.513416, 36.619724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721790, 0.276036, -0.634683,
		-0.599177, 0.209773, 0.772646,
		0.346417, 0.937976, 0.013982,
		41.972893, 33.794807, 36.623920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160706, 33.581432, 36.574600>,  <41.730400, 33.138226, 36.614132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160706, 33.581432, 36.574600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456032, 33.821404, 36.451324>,  <41.633228, 33.965385, 36.377357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456032, 33.821404, 36.451324>,  <41.160706, 33.581432, 36.574600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456032, 33.821404, 36.451324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636234, 0.467851, -0.613451,
		-0.223838, 0.649000, 0.727114,
		0.738311, 0.599928, -0.308193,
		41.677525, 34.001381, 36.358868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816032, 34.270626, 36.512230>,  <41.160706, 33.581432, 36.574600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816032, 34.270626, 36.512230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154316, 34.257088, 36.299198>,  <41.357285, 34.248962, 36.171379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154316, 34.257088, 36.299198>,  <40.816032, 34.270626, 36.512230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154316, 34.257088, 36.299198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453238, 0.481266, -0.750305,
		0.281709, 0.875921, 0.391667,
		0.845704, -0.033849, -0.532578,
		41.408028, 34.246933, 36.139423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830898, 34.974972, 36.343327>,  <40.816032, 34.270626, 36.512230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830898, 34.974972, 36.343327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099751, 34.791687, 36.110680>,  <41.261063, 34.681717, 35.971092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099751, 34.791687, 36.110680>,  <40.830898, 34.974972, 36.343327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099751, 34.791687, 36.110680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422005, 0.408369, -0.809411,
		0.608399, 0.789476, 0.081109,
		0.672133, -0.458216, -0.581614,
		41.301392, 34.654221, 35.936195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141209, 35.525806, 35.913177>,  <40.830898, 34.974972, 36.343327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141209, 35.525806, 35.913177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163017, 35.181557, 35.710655>,  <41.176102, 34.975006, 35.589142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163017, 35.181557, 35.710655>,  <41.141209, 35.525806, 35.913177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163017, 35.181557, 35.710655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451476, 0.431024, -0.781273,
		0.890616, 0.271180, -0.365054,
		0.054518, -0.860627, -0.506308,
		41.179371, 34.923370, 35.558762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382778, 35.665173, 35.262157>,  <41.141209, 35.525806, 35.913177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382778, 35.665173, 35.262157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206493, 35.308605, 35.219921>,  <41.100723, 35.094666, 35.194580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206493, 35.308605, 35.219921>,  <41.382778, 35.665173, 35.262157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206493, 35.308605, 35.219921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523909, 0.350951, -0.776113,
		0.728899, -0.286720, -0.621690,
		-0.440710, -0.891417, -0.105593,
		41.074280, 35.041180, 35.188244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402203, 35.557312, 34.534462>,  <41.382778, 35.665173, 35.262157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402203, 35.557312, 34.534462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135036, 35.287727, 34.660740>,  <40.974735, 35.125977, 34.736507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135036, 35.287727, 34.660740>,  <41.402203, 35.557312, 34.534462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135036, 35.287727, 34.660740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466008, 0.047986, -0.883478,
		0.580281, -0.737207, -0.346122,
		-0.667916, -0.673961, 0.315699,
		40.934662, 35.085541, 34.755451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305008, 35.273350, 33.942451>,  <41.402203, 35.557312, 34.534462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305008, 35.273350, 33.942451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997601, 35.157593, 34.170708>,  <40.813156, 35.088139, 34.307663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997601, 35.157593, 34.170708>,  <41.305008, 35.273350, 33.942451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997601, 35.157593, 34.170708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597958, 0.007506, -0.801492,
		0.227664, -0.957181, -0.178814,
		-0.768515, -0.289394, 0.570645,
		40.767044, 35.070774, 34.341900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107506, 34.811745, 33.581112>,  <41.305008, 35.273350, 33.942451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107506, 34.811745, 33.581112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803131, 34.916447, 33.818584>,  <40.620506, 34.979267, 33.961067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803131, 34.916447, 33.818584>,  <41.107506, 34.811745, 33.581112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803131, 34.916447, 33.818584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604804, 0.045125, -0.795095,
		-0.234911, -0.964079, 0.123974,
		-0.760940, 0.261757, 0.593679,
		40.574848, 34.994972, 33.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605080, 34.297142, 33.530643>,  <41.107506, 34.811745, 33.581112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605080, 34.297142, 33.530643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377281, 34.588383, 33.683247>,  <40.240601, 34.763126, 33.774807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377281, 34.588383, 33.683247>,  <40.605080, 34.297142, 33.530643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377281, 34.588383, 33.683247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655814, -0.122654, -0.744892,
		-0.495561, -0.674411, 0.547348,
		-0.569498, 0.728098, 0.381506,
		40.206432, 34.806812, 33.797699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899658, 34.083805, 33.495567>,  <40.605080, 34.297142, 33.530643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899658, 34.083805, 33.495567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897366, 34.483047, 33.520050>,  <39.895988, 34.722595, 33.534740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897366, 34.483047, 33.520050>,  <39.899658, 34.083805, 33.495567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897366, 34.483047, 33.520050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664502, 0.041937, -0.746108,
		-0.747264, -0.044951, 0.663005,
		-0.005734, 0.998108, 0.061208,
		39.895645, 34.782478, 33.538414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191723, 34.237408, 33.502232>,  <39.899658, 34.083805, 33.495567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191723, 34.237408, 33.502232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380878, 34.578606, 33.413898>,  <39.494373, 34.783325, 33.360901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380878, 34.578606, 33.413898>,  <39.191723, 34.237408, 33.502232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380878, 34.578606, 33.413898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546661, 0.087469, -0.832773,
		-0.691038, 0.514531, 0.507665,
		0.472892, 0.852999, -0.220829,
		39.522747, 34.834507, 33.347649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733356, 34.886814, 33.461597>,  <39.191723, 34.237408, 33.502232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733356, 34.886814, 33.461597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041183, 34.939335, 33.211632>,  <39.225880, 34.970848, 33.061653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041183, 34.939335, 33.211632>,  <38.733356, 34.886814, 33.461597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041183, 34.939335, 33.211632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637944, 0.201141, -0.743350,
		0.028092, 0.970722, 0.238557,
		0.769570, 0.131303, -0.624917,
		39.272053, 34.978725, 33.024158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626053, 35.564175, 33.044979>,  <38.733356, 34.886814, 33.461597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626053, 35.564175, 33.044979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826775, 35.263851, 32.873177>,  <38.947208, 35.083656, 32.770096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826775, 35.263851, 32.873177>,  <38.626053, 35.564175, 33.044979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826775, 35.263851, 32.873177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574084, 0.082338, -0.814646,
		0.647007, 0.655369, -0.389709,
		0.501806, -0.750808, -0.429511,
		38.977318, 35.038609, 32.744324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951939, 35.782063, 32.444115>,  <38.626053, 35.564175, 33.044979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951939, 35.782063, 32.444115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889919, 35.393612, 32.371590>,  <38.852707, 35.160542, 32.328075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889919, 35.393612, 32.371590>,  <38.951939, 35.782063, 32.444115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889919, 35.393612, 32.371590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274422, 0.218646, -0.936422,
		0.949027, -0.095436, -0.300399,
		-0.155049, -0.971126, -0.181311,
		38.843403, 35.102276, 32.317196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517704, 35.551174, 32.091942>,  <38.951939, 35.782063, 32.444115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517704, 35.551174, 32.091942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161900, 35.387424, 32.010761>,  <38.948418, 35.289177, 31.962053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161900, 35.387424, 32.010761>,  <39.517704, 35.551174, 32.091942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161900, 35.387424, 32.010761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075185, 0.306979, -0.948742,
		0.450687, -0.859174, -0.242282,
		-0.889510, -0.409370, -0.202949,
		38.895046, 35.264614, 31.949877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644238, 35.167641, 31.338181>,  <39.517704, 35.551174, 32.091942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644238, 35.167641, 31.338181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876381, 35.347229, 31.066412>,  <40.015667, 35.454983, 30.903351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876381, 35.347229, 31.066412>,  <39.644238, 35.167641, 31.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876381, 35.347229, 31.066412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641445, -0.261991, -0.721047,
		-0.501728, 0.854277, 0.135938,
		0.580360, 0.448966, -0.679420,
		40.050488, 35.481918, 30.862585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257198, 35.599052, 30.958853>,  <39.644238, 35.167641, 31.338181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257198, 35.599052, 30.958853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566444, 35.435268, 30.765095>,  <39.751991, 35.336998, 30.648840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566444, 35.435268, 30.765095>,  <39.257198, 35.599052, 30.958853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566444, 35.435268, 30.765095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628997, -0.396685, -0.668584,
		0.081604, 0.821575, -0.564230,
		0.773113, -0.409458, -0.484397,
		39.798378, 35.312431, 30.619776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137413, 35.784786, 30.317905>,  <39.257198, 35.599052, 30.958853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137413, 35.784786, 30.317905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387856, 35.473667, 30.295925>,  <39.538120, 35.286995, 30.282738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387856, 35.473667, 30.295925>,  <39.137413, 35.784786, 30.317905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387856, 35.473667, 30.295925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457101, -0.309030, -0.834002,
		0.631706, 0.547290, -0.549018,
		0.626104, -0.777801, -0.054951,
		39.575687, 35.240326, 30.279440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579159, 36.410759, 30.285585>,  <39.137413, 35.784786, 30.317905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579159, 36.410759, 30.285585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906731, 36.459244, 30.061205>,  <40.103271, 36.488335, 29.926577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906731, 36.459244, 30.061205>,  <39.579159, 36.410759, 30.285585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906731, 36.459244, 30.061205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569826, -0.287995, 0.769648,
		-0.068257, -0.949929, -0.304919,
		0.818926, 0.121217, -0.560952,
		40.152409, 36.495609, 29.892920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973484, 35.740654, 30.209875>,  <39.579159, 36.410759, 30.285585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973484, 35.740654, 30.209875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236942, 36.028297, 30.121269>,  <40.395020, 36.200882, 30.068106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236942, 36.028297, 30.121269>,  <39.973484, 35.740654, 30.209875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236942, 36.028297, 30.121269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641942, -0.383434, 0.663994,
		0.392544, -0.579540, -0.714172,
		0.658649, 0.719105, -0.221516,
		40.434536, 36.244030, 30.054813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544800, 35.505722, 29.881907>,  <39.973484, 35.740654, 30.209875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544800, 35.505722, 29.881907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661053, 35.816299, 30.105572>,  <40.730804, 36.002647, 30.239771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661053, 35.816299, 30.105572>,  <40.544800, 35.505722, 29.881907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661053, 35.816299, 30.105572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526967, -0.617664, 0.583779,
		0.798648, 0.124996, -0.588675,
		0.290633, 0.776446, 0.559164,
		40.748241, 36.049232, 30.273321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291428, 35.465477, 30.011591>,  <40.544800, 35.505722, 29.881907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291428, 35.465477, 30.011591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163597, 35.690865, 30.316319>,  <41.086899, 35.826099, 30.499155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163597, 35.690865, 30.316319>,  <41.291428, 35.465477, 30.011591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163597, 35.690865, 30.316319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581917, -0.517803, 0.627099,
		0.747825, 0.643723, -0.162414,
		-0.319580, 0.563472, 0.761819,
		41.067722, 35.859905, 30.544865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868362, 35.904476, 30.331892>,  <41.291428, 35.465477, 30.011591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868362, 35.904476, 30.331892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576012, 35.855541, 30.600473>,  <41.400600, 35.826180, 30.761621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576012, 35.855541, 30.600473>,  <41.868362, 35.904476, 30.331892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576012, 35.855541, 30.600473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658965, -0.382649, 0.647568,
		0.177708, 0.915758, 0.360287,
		-0.730879, -0.122339, 0.671453,
		41.356747, 35.818840, 30.801908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092182, 36.174480, 30.995537>,  <41.868362, 35.904476, 30.331892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092182, 36.174480, 30.995537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811348, 35.895840, 31.054611>,  <41.642845, 35.728653, 31.090055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811348, 35.895840, 31.054611>,  <42.092182, 36.174480, 30.995537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811348, 35.895840, 31.054611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548110, -0.396265, 0.736580,
		-0.454582, 0.598094, 0.660030,
		-0.702090, -0.696605, 0.147686,
		41.600719, 35.686859, 31.098917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018963, 36.101185, 31.710838>,  <42.092182, 36.174480, 30.995537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018963, 36.101185, 31.710838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819714, 35.772903, 31.598892>,  <41.700165, 35.575935, 31.531725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819714, 35.772903, 31.598892>,  <42.018963, 36.101185, 31.710838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819714, 35.772903, 31.598892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335000, -0.479846, 0.810878,
		-0.799780, 0.310162, 0.513957,
		-0.498124, -0.820699, -0.279867,
		41.670277, 35.526695, 31.514933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692436, 35.889858, 32.279911>,  <42.018963, 36.101185, 31.710838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692436, 35.889858, 32.279911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759357, 35.559200, 32.064999>,  <41.799511, 35.360806, 31.936052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759357, 35.559200, 32.064999>,  <41.692436, 35.889858, 32.279911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759357, 35.559200, 32.064999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328460, -0.467093, 0.820938,
		-0.929582, -0.313822, 0.193372,
		0.167306, -0.826644, -0.537279,
		41.809547, 35.311207, 31.903814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666435, 35.378273, 32.733734>,  <41.692436, 35.889858, 32.279911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666435, 35.378273, 32.733734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863083, 35.174755, 32.451054>,  <41.981071, 35.052643, 32.281445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863083, 35.174755, 32.451054>,  <41.666435, 35.378273, 32.733734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863083, 35.174755, 32.451054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564830, -0.431360, 0.703488,
		-0.662778, -0.745018, 0.075318,
		0.491622, -0.508798, -0.706705,
		42.010571, 35.022118, 32.239040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779072, 34.758110, 33.014584>,  <41.666435, 35.378273, 32.733734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779072, 34.758110, 33.014584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060368, 34.771957, 32.730541>,  <42.229145, 34.780266, 32.560116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060368, 34.771957, 32.730541>,  <41.779072, 34.758110, 33.014584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060368, 34.771957, 32.730541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648044, -0.441981, 0.620235,
		-0.292381, -0.896356, -0.333255,
		0.703244, 0.034618, -0.710105,
		42.271339, 34.782341, 32.517509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977425, 34.069672, 32.955288>,  <41.779072, 34.758110, 33.014584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977425, 34.069672, 32.955288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283421, 34.280399, 32.807091>,  <42.467018, 34.406834, 32.718174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283421, 34.280399, 32.807091>,  <41.977425, 34.069672, 32.955288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283421, 34.280399, 32.807091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643437, -0.600085, 0.475276,
		0.028056, -0.601967, -0.798029,
		0.764985, 0.526815, -0.370492,
		42.512917, 34.438442, 32.695942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475731, 33.574429, 32.703411>,  <41.977425, 34.069672, 32.955288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475731, 33.574429, 32.703411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702427, 33.900787, 32.749226>,  <42.838444, 34.096603, 32.776714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702427, 33.900787, 32.749226>,  <42.475731, 33.574429, 32.703411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702427, 33.900787, 32.749226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720618, -0.558270, 0.411151,
		0.399398, -0.150479, -0.904343,
		0.566737, 0.815899, 0.114534,
		42.872448, 34.145557, 32.783585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071877, 33.332363, 32.642014>,  <42.475731, 33.574429, 32.703411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071877, 33.332363, 32.642014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140846, 33.680035, 32.827400>,  <43.182228, 33.888638, 32.938633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140846, 33.680035, 32.827400>,  <43.071877, 33.332363, 32.642014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140846, 33.680035, 32.827400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758719, -0.417258, 0.500241,
		0.628183, 0.265387, -0.731407,
		0.172428, 0.869175, 0.463468,
		43.192574, 33.940788, 32.966442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810188, 33.256855, 32.819992>,  <43.071877, 33.332363, 32.642014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810188, 33.256855, 32.819992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700649, 33.574924, 33.036400>,  <43.634926, 33.765766, 33.166245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700649, 33.574924, 33.036400>,  <43.810188, 33.256855, 32.819992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700649, 33.574924, 33.036400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772338, -0.153411, 0.616408,
		0.573151, 0.586653, -0.572133,
		-0.273846, 0.795175, 0.541022,
		43.618496, 33.813477, 33.198708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347843, 33.744904, 32.951477>,  <43.810188, 33.256855, 32.819992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347843, 33.744904, 32.951477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091259, 33.795776, 33.254093>,  <43.937309, 33.826298, 33.435665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091259, 33.795776, 33.254093>,  <44.347843, 33.744904, 32.951477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091259, 33.795776, 33.254093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745534, -0.129152, 0.653834,
		0.180864, 0.983435, -0.011970,
		-0.641458, 0.127179, 0.756543,
		43.898823, 33.833931, 33.481056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752712, 34.232639, 33.411098>,  <44.347843, 33.744904, 32.951477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752712, 34.232639, 33.411098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459194, 34.114571, 33.655857>,  <44.283085, 34.043728, 33.802711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459194, 34.114571, 33.655857>,  <44.752712, 34.232639, 33.411098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459194, 34.114571, 33.655857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663847, -0.120070, 0.738167,
		-0.144417, 0.947869, 0.284057,
		-0.733792, -0.295175, 0.611900,
		44.239056, 34.026020, 33.839428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878536, 34.550640, 34.068066>,  <44.752712, 34.232639, 33.411098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878536, 34.550640, 34.068066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649563, 34.232479, 34.147720>,  <44.512177, 34.041584, 34.195511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649563, 34.232479, 34.147720>,  <44.878536, 34.550640, 34.068066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649563, 34.232479, 34.147720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574167, -0.215467, 0.789877,
		-0.585362, 0.566491, 0.580034,
		-0.572437, -0.795401, 0.199134,
		44.477833, 33.993858, 34.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.564106, 34.755070, 34.704411>,  <44.878536, 34.550640, 34.068066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.564106, 34.755070, 34.704411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552479, 34.357510, 34.661854>,  <44.545502, 34.118973, 34.636318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552479, 34.357510, 34.661854>,  <44.564106, 34.755070, 34.704411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552479, 34.357510, 34.661854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401728, -0.109080, 0.909240,
		-0.915298, -0.016314, 0.402447,
		-0.029066, -0.993899, -0.106395,
		44.543758, 34.059341, 34.629936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132710, 34.467487, 35.177345>,  <44.564106, 34.755070, 34.704411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132710, 34.467487, 35.177345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402306, 34.186394, 35.086220>,  <44.564064, 34.017738, 35.031544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402306, 34.186394, 35.086220>,  <44.132710, 34.467487, 35.177345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402306, 34.186394, 35.086220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310402, -0.010440, 0.950548,
		-0.670361, -0.711375, 0.211094,
		0.673993, -0.702735, -0.227811,
		44.604504, 33.975574, 35.017876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172802, 34.069118, 35.865837>,  <44.132710, 34.467487, 35.177345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172802, 34.069118, 35.865837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496429, 33.971542, 35.651958>,  <44.690605, 33.912998, 35.523632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496429, 33.971542, 35.651958>,  <44.172802, 34.069118, 35.865837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496429, 33.971542, 35.651958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515749, -0.141536, 0.844968,
		-0.281800, -0.959406, 0.011299,
		0.809069, -0.243939, -0.534697,
		44.739151, 33.898361, 35.491550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490788, 33.517818, 36.233475>,  <44.172802, 34.069118, 35.865837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490788, 33.517818, 36.233475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799992, 33.617603, 36.000160>,  <44.985516, 33.677475, 35.860172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799992, 33.617603, 36.000160>,  <44.490788, 33.517818, 36.233475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799992, 33.617603, 36.000160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634391, -0.301676, 0.711715,
		0.001586, -0.920195, -0.391458,
		0.773010, 0.249466, -0.583285,
		45.031895, 33.692444, 35.825176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998276, 33.002522, 36.480183>,  <44.490788, 33.517818, 36.233475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998276, 33.002522, 36.480183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178673, 33.288136, 36.265984>,  <45.286911, 33.459503, 36.137463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178673, 33.288136, 36.265984>,  <44.998276, 33.002522, 36.480183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178673, 33.288136, 36.265984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819374, -0.093342, 0.565609,
		0.353880, -0.693861, -0.627157,
		0.450994, 0.714034, -0.535500,
		45.313972, 33.502346, 36.105335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635490, 32.766098, 36.326302>,  <44.998276, 33.002522, 36.480183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635490, 32.766098, 36.326302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691895, 33.159409, 36.280205>,  <45.725735, 33.395397, 36.252548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691895, 33.159409, 36.280205>,  <45.635490, 32.766098, 36.326302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691895, 33.159409, 36.280205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869784, -0.067443, 0.488801,
		0.472855, -0.169159, -0.864750,
		0.141007, 0.983278, -0.115241,
		45.734196, 33.454391, 36.245632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364655, 32.882732, 36.262512>,  <45.635490, 32.766098, 36.326302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364655, 32.882732, 36.262512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223373, 33.241318, 36.369549>,  <46.138603, 33.456470, 36.433769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223373, 33.241318, 36.369549>,  <46.364655, 32.882732, 36.262512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223373, 33.241318, 36.369549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782973, 0.126699, 0.609016,
		0.512057, 0.424621, -0.746656,
		-0.353202, 0.896462, 0.267590,
		46.117413, 33.510258, 36.449825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.838959, 33.382847, 36.234783>,  <46.364655, 32.882732, 36.262512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.838959, 33.382847, 36.234783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585342, 33.562416, 36.486641>,  <46.433170, 33.670158, 36.637756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585342, 33.562416, 36.486641>,  <46.838959, 33.382847, 36.234783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585342, 33.562416, 36.486641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760249, 0.212929, 0.613745,
		0.141453, 0.867831, -0.476299,
		-0.634044, 0.448922, 0.629648,
		46.395130, 33.697094, 36.675537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025669, 34.107666, 36.340073>,  <46.838959, 33.382847, 36.234783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025669, 34.107666, 36.340073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818645, 33.975742, 36.655888>,  <46.694431, 33.896587, 36.845375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818645, 33.975742, 36.655888>,  <47.025669, 34.107666, 36.340073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818645, 33.975742, 36.655888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744046, 0.282186, 0.605613,
		-0.422530, 0.900888, 0.099343,
		-0.517557, -0.329806, 0.789534,
		46.663380, 33.876801, 36.892746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158119, 34.379452, 35.690445>,  <47.025669, 34.107666, 36.340073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158119, 34.379452, 35.690445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068859, 34.573586, 35.352295>,  <47.015301, 34.690063, 35.149406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068859, 34.573586, 35.352295>,  <47.158119, 34.379452, 35.690445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068859, 34.573586, 35.352295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864779, 0.498784, 0.058079,
		0.449846, -0.718100, -0.531010,
		-0.223152, 0.485333, -0.845373,
		47.001915, 34.719185, 35.098682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666870, 34.339382, 35.101894>,  <47.158119, 34.379452, 35.690445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666870, 34.339382, 35.101894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.468052, 34.686440, 35.097244>,  <47.348759, 34.894676, 35.094456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.468052, 34.686440, 35.097244>,  <47.666870, 34.339382, 35.101894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.468052, 34.686440, 35.097244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846158, 0.487619, 0.215047,
		0.192252, 0.097054, -0.976535,
		-0.497048, 0.867645, -0.011623,
		47.318939, 34.946732, 35.093758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.082462, 34.684723, 34.716610>,  <47.666870, 34.339382, 35.101894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.082462, 34.684723, 34.716610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853489, 34.915195, 34.949963>,  <47.716103, 35.053478, 35.089973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853489, 34.915195, 34.949963>,  <48.082462, 34.684723, 34.716610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.853489, 34.915195, 34.949963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816758, 0.463406, 0.343747,
		-0.072283, 0.673255, -0.735869,
		-0.572435, 0.576180, 0.583382,
		47.681759, 35.088051, 35.124977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.599512, 35.381760, 47.537132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.241396, 35.302883, 47.377346>,  <31.026525, 35.255558, 47.281475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.241396, 35.302883, 47.377346>,  <31.599512, 35.381760, 47.537132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241396, 35.302883, 47.377346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421107, -0.082058, -0.903292,
		0.145344, -0.976924, 0.156505,
		-0.895290, -0.197193, -0.399463,
		30.972809, 35.243725, 47.257507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709211, 34.744995, 47.274357>,  <31.599512, 35.381760, 47.537132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709211, 34.744995, 47.274357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376814, 34.860077, 47.083916>,  <31.177376, 34.929127, 46.969650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376814, 34.860077, 47.083916>,  <31.709211, 34.744995, 47.274357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376814, 34.860077, 47.083916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433585, -0.201203, -0.878363,
		-0.348502, -0.936346, 0.042455,
		-0.830994, 0.287703, -0.476105,
		31.127516, 34.946388, 46.941086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499443, 34.242970, 46.794231>,  <31.709211, 34.744995, 47.274357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499443, 34.242970, 46.794231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.364279, 34.591576, 46.652088>,  <31.283180, 34.800739, 46.566803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.364279, 34.591576, 46.652088>,  <31.499443, 34.242970, 46.794231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364279, 34.591576, 46.652088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284991, -0.265097, -0.921142,
		-0.896994, -0.412537, -0.158794,
		-0.337909, 0.871514, -0.355360,
		31.262905, 34.853031, 46.545479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981943, 34.207943, 46.176373>,  <31.499443, 34.242970, 46.794231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981943, 34.207943, 46.176373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.113440, 34.579342, 46.107300>,  <31.192337, 34.802181, 46.065857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.113440, 34.579342, 46.107300>,  <30.981943, 34.207943, 46.176373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113440, 34.579342, 46.107300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316795, -0.280665, -0.906018,
		-0.889703, 0.243139, -0.386409,
		0.328739, 0.928499, -0.172683,
		31.212061, 34.857891, 46.055496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064014, 34.276142, 45.508537>,  <30.981943, 34.207943, 46.176373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064014, 34.276142, 45.508537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236740, 34.629208, 45.582775>,  <31.340376, 34.841045, 45.627319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236740, 34.629208, 45.582775>,  <31.064014, 34.276142, 45.508537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236740, 34.629208, 45.582775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319619, 0.042673, -0.946585,
		-0.843433, 0.468069, -0.263689,
		0.431815, 0.882661, 0.185595,
		31.366285, 34.894005, 45.638454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828112, 34.787373, 44.942135>,  <31.064014, 34.276142, 45.508537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828112, 34.787373, 44.942135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.177019, 34.891483, 45.107735>,  <31.386364, 34.953949, 45.207096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.177019, 34.891483, 45.107735>,  <30.828112, 34.787373, 44.942135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177019, 34.891483, 45.107735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367666, 0.209152, -0.906133,
		-0.322438, 0.942608, 0.086741,
		0.872270, 0.260279, 0.414004,
		31.438700, 34.969566, 45.231937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039558, 35.492168, 44.776600>,  <30.828112, 34.787373, 44.942135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039558, 35.492168, 44.776600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.378304, 35.296398, 44.859814>,  <31.581551, 35.178936, 44.909744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.378304, 35.296398, 44.859814>,  <31.039558, 35.492168, 44.776600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378304, 35.296398, 44.859814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367743, 0.256346, -0.893897,
		0.384169, 0.833514, 0.397075,
		0.846864, -0.489429, 0.208039,
		31.632362, 35.149570, 44.922226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547989, 35.732803, 44.369186>,  <31.039558, 35.492168, 44.776600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547989, 35.732803, 44.369186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.784803, 35.438164, 44.499977>,  <31.926891, 35.261379, 44.578453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.784803, 35.438164, 44.499977>,  <31.547989, 35.732803, 44.369186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784803, 35.438164, 44.499977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641635, 0.185317, -0.744287,
		0.487645, 0.650447, 0.582341,
		0.592037, -0.736598, 0.326981,
		31.962414, 35.217186, 44.598072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229553, 35.996838, 44.330566>,  <31.547989, 35.732803, 44.369186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229553, 35.996838, 44.330566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.284763, 35.601028, 44.347530>,  <32.317890, 35.363544, 44.357708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.284763, 35.601028, 44.347530>,  <32.229553, 35.996838, 44.330566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284763, 35.601028, 44.347530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681449, 0.063804, -0.729080,
		0.718732, 0.129536, 0.683114,
		0.138028, -0.989520, 0.042414,
		32.326172, 35.304173, 44.360256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967209, 35.756554, 44.311577>,  <32.229553, 35.996838, 44.330566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967209, 35.756554, 44.311577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801296, 35.421516, 44.169365>,  <32.701748, 35.220493, 44.084038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801296, 35.421516, 44.169365>,  <32.967209, 35.756554, 44.311577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801296, 35.421516, 44.169365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718222, -0.061471, -0.693093,
		0.558672, -0.542830, 0.627073,
		-0.414779, -0.837590, -0.355531,
		32.676861, 35.170238, 44.062706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492580, 35.136585, 44.318539>,  <32.967209, 35.756554, 44.311577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492580, 35.136585, 44.318539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194164, 35.049877, 44.066685>,  <33.015114, 34.997852, 43.915573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194164, 35.049877, 44.066685>,  <33.492580, 35.136585, 44.318539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194164, 35.049877, 44.066685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659457, -0.371776, -0.653375,
		-0.092451, -0.902659, 0.420308,
		-0.746036, -0.216770, -0.629636,
		32.970352, 34.984848, 43.877792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660427, 34.418797, 43.928772>,  <33.492580, 35.136585, 44.318539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660427, 34.418797, 43.928772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.407661, 34.647320, 43.719280>,  <33.256004, 34.784435, 43.593586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.407661, 34.647320, 43.719280>,  <33.660427, 34.418797, 43.928772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407661, 34.647320, 43.719280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558573, -0.132750, -0.818763,
		-0.537295, -0.809925, -0.235233,
		-0.631910, 0.571313, -0.523729,
		33.218090, 34.818714, 43.562160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716614, 34.231781, 43.301319>,  <33.660427, 34.418797, 43.928772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716614, 34.231781, 43.301319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517525, 34.569614, 43.222370>,  <33.398071, 34.772312, 43.174999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.517525, 34.569614, 43.222370>,  <33.716614, 34.231781, 43.301319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517525, 34.569614, 43.222370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552335, 0.133183, -0.822915,
		-0.668731, -0.518599, -0.532779,
		-0.497720, 0.844581, -0.197376,
		33.368210, 34.822990, 43.163158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476452, 34.141289, 42.502571>,  <33.716614, 34.231781, 43.301319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476452, 34.141289, 42.502571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440384, 34.530407, 42.587929>,  <33.418743, 34.763878, 42.639145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440384, 34.530407, 42.587929>,  <33.476452, 34.141289, 42.502571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440384, 34.530407, 42.587929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322035, 0.231236, -0.918054,
		-0.942424, -0.014057, -0.334124,
		-0.090167, 0.972796, 0.213396,
		33.413334, 34.822247, 42.651947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042721, 34.542316, 42.034618>,  <33.476452, 34.141289, 42.502571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042721, 34.542316, 42.034618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.254738, 34.835632, 42.204952>,  <33.381950, 35.011623, 42.307152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.254738, 34.835632, 42.204952>,  <33.042721, 34.542316, 42.034618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254738, 34.835632, 42.204952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276192, 0.325499, -0.904306,
		-0.801729, 0.596934, -0.030000,
		0.530046, 0.733294, 0.425830,
		33.413750, 35.055622, 42.332703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990421, 35.027863, 41.574093>,  <33.042721, 34.542316, 42.034618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990421, 35.027863, 41.574093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297417, 35.149925, 41.799606>,  <33.481613, 35.223164, 41.934914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.297417, 35.149925, 41.799606>,  <32.990421, 35.027863, 41.574093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297417, 35.149925, 41.799606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506157, 0.251249, -0.825033,
		-0.393410, 0.918562, 0.038374,
		0.767485, 0.305153, 0.563780,
		33.527660, 35.241470, 41.968739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234859, 35.680363, 41.260483>,  <32.990421, 35.027863, 41.574093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234859, 35.680363, 41.260483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528442, 35.508114, 41.470577>,  <33.704594, 35.404766, 41.596634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528442, 35.508114, 41.470577>,  <33.234859, 35.680363, 41.260483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528442, 35.508114, 41.470577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651182, 0.226348, -0.724382,
		0.193049, 0.873689, 0.446543,
		0.733958, -0.430622, 0.525234,
		33.748631, 35.378929, 41.628147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823116, 36.152023, 41.240044>,  <33.234859, 35.680363, 41.260483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823116, 36.152023, 41.240044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.985104, 35.795204, 41.320286>,  <34.082298, 35.581112, 41.368431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.985104, 35.795204, 41.320286>,  <33.823116, 36.152023, 41.240044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985104, 35.795204, 41.320286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668625, 0.139283, -0.730439,
		0.623649, 0.429935, 0.652853,
		0.404973, -0.892052, 0.200602,
		34.106594, 35.527588, 41.380466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505680, 36.255226, 41.109325>,  <33.823116, 36.152023, 41.240044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505680, 36.255226, 41.109325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490246, 35.855694, 41.120941>,  <34.480984, 35.615974, 41.127911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490246, 35.855694, 41.120941>,  <34.505680, 36.255226, 41.109325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490246, 35.855694, 41.120941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671023, -0.047438, -0.739917,
		0.740431, -0.009062, 0.672071,
		-0.038587, -0.998833, 0.029044,
		34.478668, 35.556046, 41.129654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176762, 36.048317, 41.213272>,  <34.505680, 36.255226, 41.109325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176762, 36.048317, 41.213272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979580, 35.749073, 41.035587>,  <34.861271, 35.569527, 40.928974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979580, 35.749073, 41.035587>,  <35.176762, 36.048317, 41.213272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979580, 35.749073, 41.035587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664898, 0.005386, -0.746915,
		0.561168, -0.663551, 0.494763,
		-0.492952, -0.748111, -0.444216,
		34.831696, 35.524639, 40.902321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718842, 35.682350, 40.830105>,  <35.176762, 36.048317, 41.213272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718842, 35.682350, 40.830105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378853, 35.534706, 40.679741>,  <35.174858, 35.446121, 40.589523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378853, 35.534706, 40.679741>,  <35.718842, 35.682350, 40.830105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378853, 35.534706, 40.679741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379639, 0.065580, -0.922807,
		0.365268, -0.927070, 0.084387,
		-0.849973, -0.369108, -0.375906,
		35.123859, 35.423973, 40.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881763, 35.111355, 40.421444>,  <35.718842, 35.682350, 40.830105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881763, 35.111355, 40.421444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.543877, 35.290169, 40.303726>,  <35.341145, 35.397457, 40.233093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.543877, 35.290169, 40.303726>,  <35.881763, 35.111355, 40.421444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543877, 35.290169, 40.303726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363940, 0.076592, -0.928268,
		-0.392431, -0.891229, -0.227394,
		-0.844716, 0.447039, -0.294297,
		35.290462, 35.424282, 40.215439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564808, 35.360889, 40.098782>,  <35.881763, 35.111355, 40.421444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564808, 35.360889, 40.098782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896080, 35.506424, 40.269306>,  <37.094845, 35.593746, 40.371620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896080, 35.506424, 40.269306>,  <36.564808, 35.360889, 40.098782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896080, 35.506424, 40.269306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531672, 0.269348, 0.802980,
		0.177325, -0.891670, 0.416509,
		0.828179, 0.363834, 0.426314,
		37.144535, 35.615574, 40.397202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610569, 35.043369, 40.736973>,  <36.564808, 35.360889, 40.098782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610569, 35.043369, 40.736973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809971, 35.387520, 40.779385>,  <36.929611, 35.594009, 40.804832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809971, 35.387520, 40.779385>,  <36.610569, 35.043369, 40.736973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809971, 35.387520, 40.779385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442982, 0.147692, 0.884282,
		0.745157, -0.487787, 0.454757,
		0.498505, 0.860378, 0.106027,
		36.959522, 35.645634, 40.811192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820690, 34.890743, 41.394913>,  <36.610569, 35.043369, 40.736973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820690, 34.890743, 41.394913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841671, 35.288715, 41.360573>,  <36.854259, 35.527496, 41.339970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841671, 35.288715, 41.360573>,  <36.820690, 34.890743, 41.394913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841671, 35.288715, 41.360573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351204, 0.098859, 0.931066,
		0.934829, -0.018687, 0.354607,
		0.052455, 0.994926, -0.085853,
		36.857407, 35.587193, 41.334816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255367, 35.146076, 41.920574>,  <36.820690, 34.890743, 41.394913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255367, 35.146076, 41.920574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008327, 35.435909, 41.798237>,  <36.860104, 35.609810, 41.724834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008327, 35.435909, 41.798237>,  <37.255367, 35.146076, 41.920574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008327, 35.435909, 41.798237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178804, 0.249330, 0.951769,
		0.765894, 0.642502, -0.024428,
		-0.617604, 0.724586, -0.305843,
		36.823048, 35.653286, 41.706486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442001, 35.785946, 42.226303>,  <37.255367, 35.146076, 41.920574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442001, 35.785946, 42.226303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058689, 35.871185, 42.150112>,  <36.828701, 35.922329, 42.104397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058689, 35.871185, 42.150112>,  <37.442001, 35.785946, 42.226303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058689, 35.871185, 42.150112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093429, 0.396268, 0.913369,
		0.270122, 0.893062, -0.359826,
		-0.958282, 0.213103, -0.190479,
		36.771206, 35.935116, 42.092968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224800, 36.260090, 42.822525>,  <37.442001, 35.785946, 42.226303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224800, 36.260090, 42.822525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880703, 36.216751, 42.623230>,  <36.674244, 36.190746, 42.503651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.880703, 36.216751, 42.623230>,  <37.224800, 36.260090, 42.822525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880703, 36.216751, 42.623230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506918, 0.286995, 0.812815,
		0.054926, 0.951785, -0.301809,
		-0.860243, -0.108348, -0.498240,
		36.622631, 36.184246, 42.473759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947609, 36.940178, 42.827507>,  <37.224800, 36.260090, 42.822525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947609, 36.940178, 42.827507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.671532, 36.653362, 42.788555>,  <36.505886, 36.481274, 42.765186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.671532, 36.653362, 42.788555>,  <36.947609, 36.940178, 42.827507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671532, 36.653362, 42.788555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298351, 0.159384, 0.941054,
		-0.659253, 0.678566, -0.323936,
		-0.690197, -0.717039, -0.097376,
		36.464474, 36.438251, 42.759342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263317, 37.153374, 43.047916>,  <36.947609, 36.940178, 42.827507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263317, 37.153374, 43.047916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220341, 36.757874, 43.089527>,  <36.194553, 36.520573, 43.114494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220341, 36.757874, 43.089527>,  <36.263317, 37.153374, 43.047916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220341, 36.757874, 43.089527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289225, 0.131188, 0.948229,
		-0.951212, 0.071796, -0.300068,
		-0.107444, -0.988755, 0.104022,
		36.188107, 36.461246, 43.120735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682037, 37.104538, 43.428036>,  <36.263317, 37.153374, 43.047916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682037, 37.104538, 43.428036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853970, 36.749580, 43.494709>,  <35.957130, 36.536606, 43.534714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853970, 36.749580, 43.494709>,  <35.682037, 37.104538, 43.428036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853970, 36.749580, 43.494709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403194, -0.023464, 0.914813,
		-0.807886, -0.460421, -0.367876,
		0.429831, -0.887390, 0.166683,
		35.982918, 36.483364, 43.544712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043667, 36.676182, 43.616440>,  <35.682037, 37.104538, 43.428036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043667, 36.676182, 43.616440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348553, 36.460819, 43.760189>,  <35.531483, 36.331600, 43.846439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348553, 36.460819, 43.760189>,  <35.043667, 36.676182, 43.616440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348553, 36.460819, 43.760189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478535, -0.094787, 0.872937,
		-0.435932, -0.837337, -0.329895,
		0.762212, -0.538407, 0.359374,
		35.577217, 36.299297, 43.868000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794827, 36.048512, 43.983078>,  <35.043667, 36.676182, 43.616440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794827, 36.048512, 43.983078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170319, 36.071510, 44.119011>,  <35.395615, 36.085308, 44.200573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170319, 36.071510, 44.119011>,  <34.794827, 36.048512, 43.983078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170319, 36.071510, 44.119011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331568, -0.118592, 0.935948,
		0.094114, -0.991277, -0.092261,
		0.938726, 0.057495, 0.339837,
		35.451935, 36.088757, 44.220963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771858, 35.494324, 44.395901>,  <34.794827, 36.048512, 43.983078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771858, 35.494324, 44.395901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051029, 35.751045, 44.523014>,  <35.218533, 35.905079, 44.599281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051029, 35.751045, 44.523014>,  <34.771858, 35.494324, 44.395901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051029, 35.751045, 44.523014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324090, -0.112652, 0.939295,
		0.638640, -0.758551, 0.129378,
		0.697929, 0.641802, 0.317783,
		35.260406, 35.943584, 44.618347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196934, 35.121410, 44.905727>,  <34.771858, 35.494324, 44.395901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196934, 35.121410, 44.905727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225254, 35.516037, 44.964622>,  <35.242245, 35.752811, 44.999958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225254, 35.516037, 44.964622>,  <35.196934, 35.121410, 44.905727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225254, 35.516037, 44.964622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350053, -0.113647, 0.929810,
		0.934051, -0.117369, 0.337304,
		0.070797, 0.986564, 0.147237,
		35.246494, 35.812008, 45.008793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558777, 35.321537, 45.667927>,  <35.196934, 35.121410, 44.905727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558777, 35.321537, 45.667927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369553, 35.651661, 45.544590>,  <35.256020, 35.849735, 45.470589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.369553, 35.651661, 45.544590>,  <35.558777, 35.321537, 45.667927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369553, 35.651661, 45.544590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327810, 0.159970, 0.931101,
		0.817773, 0.541547, 0.194869,
		-0.473062, 0.825310, -0.308344,
		35.227634, 35.899254, 45.452087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691525, 35.771233, 46.175327>,  <35.558777, 35.321537, 45.667927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691525, 35.771233, 46.175327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374893, 35.934303, 45.993244>,  <35.184914, 36.032146, 45.883995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374893, 35.934303, 45.993244>,  <35.691525, 35.771233, 46.175327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374893, 35.934303, 45.993244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461999, 0.088301, 0.882474,
		0.399959, 0.908847, 0.118450,
		-0.791574, 0.407677, -0.455203,
		35.137421, 36.056606, 45.856682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423489, 36.298645, 46.681923>,  <35.691525, 35.771233, 46.175327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423489, 36.298645, 46.681923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129967, 36.227642, 46.419621>,  <34.953854, 36.185040, 46.262238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129967, 36.227642, 46.419621>,  <35.423489, 36.298645, 46.681923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129967, 36.227642, 46.419621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656860, -0.060952, 0.751545,
		-0.173376, 0.982229, -0.071872,
		-0.733809, -0.177510, -0.655755,
		34.909824, 36.174389, 46.222893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829582, 36.647148, 46.909199>,  <35.423489, 36.298645, 46.681923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829582, 36.647148, 46.909199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656254, 36.387974, 46.658627>,  <34.552258, 36.232468, 46.508286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656254, 36.387974, 46.658627>,  <34.829582, 36.647148, 46.909199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656254, 36.387974, 46.658627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732432, -0.151834, 0.663694,
		-0.525145, 0.746407, -0.408778,
		-0.433319, -0.647938, -0.626428,
		34.526257, 36.193592, 46.470699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024899, 36.859142, 46.915649>,  <34.829582, 36.647148, 46.909199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024899, 36.859142, 46.915649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.074680, 36.491287, 46.766636>,  <34.104549, 36.270573, 46.677227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.074680, 36.491287, 46.766636>,  <34.024899, 36.859142, 46.915649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074680, 36.491287, 46.766636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807930, -0.311871, 0.499987,
		-0.575988, 0.238756, -0.781814,
		0.124451, -0.919637, -0.372532,
		34.112015, 36.215397, 46.654877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.280212, 36.672012, 46.484859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.469242, 36.349785, 46.627815>,  <33.582661, 36.156448, 46.713589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.469242, 36.349785, 46.627815>,  <33.280212, 36.672012, 46.484859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469242, 36.349785, 46.627815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702856, -0.099865, 0.704288,
		-0.531663, -0.584022, -0.613394,
		0.472576, -0.805571, 0.357389,
		33.611015, 36.108112, 46.735031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728218, 36.136715, 46.706966>,  <33.280212, 36.672012, 46.484859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728218, 36.136715, 46.706966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060226, 36.036884, 46.906475>,  <33.259434, 35.976986, 47.026180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.060226, 36.036884, 46.906475>,  <32.728218, 36.136715, 46.706966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060226, 36.036884, 46.906475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548918, -0.207218, 0.809783,
		-0.098747, -0.945924, -0.308992,
		0.830023, -0.249575, 0.498773,
		33.309235, 35.962013, 47.056107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433056, 35.559490, 47.028820>,  <32.728218, 36.136715, 46.706966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433056, 35.559490, 47.028820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.781612, 35.632351, 47.211025>,  <32.990746, 35.676067, 47.320347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.781612, 35.632351, 47.211025>,  <32.433056, 35.559490, 47.028820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781612, 35.632351, 47.211025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441648, -0.112977, 0.890047,
		0.213590, -0.976757, -0.017998,
		0.871393, 0.182157, 0.455514,
		33.043030, 35.686996, 47.347679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572945, 34.987652, 47.431908>,  <32.433056, 35.559490, 47.028820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572945, 34.987652, 47.431908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755489, 35.309895, 47.583031>,  <32.865017, 35.503239, 47.673702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.755489, 35.309895, 47.583031>,  <32.572945, 34.987652, 47.431908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755489, 35.309895, 47.583031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464288, -0.146616, 0.873465,
		0.759059, -0.574026, 0.307122,
		0.456363, 0.805604, 0.377803,
		32.892399, 35.551575, 47.696373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776505, 34.748085, 48.131081>,  <32.572945, 34.987652, 47.431908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776505, 34.748085, 48.131081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817230, 35.145687, 48.146988>,  <32.841663, 35.384251, 48.156532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817230, 35.145687, 48.146988>,  <32.776505, 34.748085, 48.131081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817230, 35.145687, 48.146988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303734, -0.007010, 0.952731,
		0.947302, -0.109077, 0.301201,
		0.101810, 0.994008, 0.039771,
		32.847775, 35.443890, 48.158920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035587, 34.877411, 48.705307>,  <32.776505, 34.748085, 48.131081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035587, 34.877411, 48.705307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875103, 35.232800, 48.616173>,  <32.778812, 35.446033, 48.562695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875103, 35.232800, 48.616173>,  <33.035587, 34.877411, 48.705307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875103, 35.232800, 48.616173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246033, 0.129804, 0.960531,
		0.882325, 0.440199, 0.166514,
		-0.401211, 0.888468, -0.222833,
		32.754742, 35.499340, 48.549324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174728, 35.305992, 49.247398>,  <33.035587, 34.877411, 48.705307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174728, 35.305992, 49.247398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861206, 35.488472, 49.078865>,  <32.673092, 35.597961, 48.977745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861206, 35.488472, 49.078865>,  <33.174728, 35.305992, 49.247398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861206, 35.488472, 49.078865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345886, 0.242780, 0.906323,
		0.515757, 0.856119, -0.032500,
		-0.783810, 0.456200, -0.421335,
		32.626064, 35.625332, 48.952465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156143, 35.998817, 49.536240>,  <33.174728, 35.305992, 49.247398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156143, 35.998817, 49.536240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.786015, 35.928665, 49.401764>,  <32.563938, 35.886574, 49.321079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.786015, 35.928665, 49.401764>,  <33.156143, 35.998817, 49.536240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786015, 35.928665, 49.401764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368217, 0.203903, 0.907105,
		-0.090540, 0.963154, -0.253254,
		-0.925321, -0.175381, -0.336189,
		32.508419, 35.876049, 49.300907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759033, 36.390663, 49.990585>,  <33.156143, 35.998817, 49.536240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759033, 36.390663, 49.990585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.500355, 36.138149, 49.819351>,  <32.345146, 35.986641, 49.716610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.500355, 36.138149, 49.819351>,  <32.759033, 36.390663, 49.990585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500355, 36.138149, 49.819351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528438, -0.033904, 0.848295,
		-0.550029, 0.774810, -0.311669,
		-0.646701, -0.631284, -0.428087,
		32.306343, 35.948765, 49.690926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112118, 36.731052, 49.935497>,  <32.759033, 36.390663, 49.990585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112118, 36.731052, 49.935497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086575, 36.333660, 49.973286>,  <32.071247, 36.095226, 49.995960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086575, 36.333660, 49.973286>,  <32.112118, 36.731052, 49.935497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086575, 36.333660, 49.973286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464610, 0.113376, 0.878228,
		-0.883210, 0.012192, -0.468819,
		-0.063861, -0.993477, 0.094470,
		32.067417, 36.035618, 50.001625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485470, 36.556080, 50.186359>,  <32.112118, 36.731052, 49.935497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485470, 36.556080, 50.186359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660259, 36.205231, 50.266064>,  <31.765133, 35.994720, 50.313885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660259, 36.205231, 50.266064>,  <31.485470, 36.556080, 50.186359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660259, 36.205231, 50.266064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381246, 0.020037, 0.924256,
		-0.814682, -0.479842, -0.325646,
		0.436972, -0.877126, 0.199261,
		31.791351, 35.942093, 50.325844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958181, 36.132523, 50.413147>,  <31.485470, 36.556080, 50.186359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958181, 36.132523, 50.413147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306503, 36.005005, 50.562851>,  <31.515497, 35.928493, 50.652672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306503, 36.005005, 50.562851>,  <30.958181, 36.132523, 50.413147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306503, 36.005005, 50.562851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431177, -0.129517, 0.892923,
		-0.236188, -0.938932, -0.250242,
		0.870805, -0.318796, 0.374256,
		31.567745, 35.909367, 50.675129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750525, 35.604317, 50.906113>,  <30.958181, 36.132523, 50.413147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750525, 35.604317, 50.906113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130320, 35.668556, 51.013950>,  <31.358196, 35.707100, 51.078655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130320, 35.668556, 51.013950>,  <30.750525, 35.604317, 50.906113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130320, 35.668556, 51.013950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143914, -0.540598, 0.828880,
		0.278865, -0.825809, -0.490177,
		0.949486, 0.160603, 0.269599,
		31.415165, 35.716736, 51.094830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940643, 34.959969, 51.018436>,  <30.750525, 35.604317, 50.906113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940643, 34.959969, 51.018436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223843, 35.192394, 51.178986>,  <31.393763, 35.331852, 51.275314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223843, 35.192394, 51.178986>,  <30.940643, 34.959969, 51.018436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223843, 35.192394, 51.178986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115535, -0.465391, 0.877532,
		0.696702, -0.667663, -0.262361,
		0.707996, 0.581066, 0.401377,
		31.436241, 35.366714, 51.299400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245045, 34.488071, 51.428143>,  <30.940643, 34.959969, 51.018436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245045, 34.488071, 51.428143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338978, 34.847683, 51.575977>,  <31.395338, 35.063450, 51.664677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338978, 34.847683, 51.575977>,  <31.245045, 34.488071, 51.428143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338978, 34.847683, 51.575977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016906, -0.376384, 0.926309,
		0.971889, -0.223774, -0.073187,
		0.234831, 0.899033, 0.369587,
		31.409428, 35.117393, 51.686855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683304, 34.320961, 51.976379>,  <31.245045, 34.488071, 51.428143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683304, 34.320961, 51.976379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.561430, 34.695351, 52.046947>,  <31.488306, 34.919983, 52.089287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.561430, 34.695351, 52.046947>,  <31.683304, 34.320961, 51.976379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561430, 34.695351, 52.046947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059599, -0.203601, 0.977239,
		0.950587, 0.287235, 0.117817,
		-0.304685, 0.935972, 0.176421,
		31.470024, 34.976143, 52.099873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050713, 34.511227, 52.542072>,  <31.683304, 34.320961, 51.976379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050713, 34.511227, 52.542072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753248, 34.778450, 52.531773>,  <31.574770, 34.938786, 52.525593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753248, 34.778450, 52.531773>,  <32.050713, 34.511227, 52.542072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753248, 34.778450, 52.531773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141812, -0.119984, 0.982595,
		0.653343, 0.734370, 0.183966,
		-0.743661, 0.668060, -0.025752,
		31.530149, 34.978867, 52.524048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190285, 34.905994, 53.106892>,  <32.050713, 34.511227, 52.542072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190285, 34.905994, 53.106892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806837, 34.978634, 53.019196>,  <31.576767, 35.022217, 52.966579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806837, 34.978634, 53.019196>,  <32.190285, 34.905994, 53.106892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806837, 34.978634, 53.019196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230286, -0.041898, 0.972221,
		0.167367, 0.982480, 0.081984,
		-0.958622, 0.181597, -0.219239,
		31.519251, 35.033112, 52.953423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053829, 35.459358, 53.543968>,  <32.190285, 34.905994, 53.106892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053829, 35.459358, 53.543968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733124, 35.251629, 53.425663>,  <31.540699, 35.126991, 53.354679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733124, 35.251629, 53.425663>,  <32.053829, 35.459358, 53.543968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733124, 35.251629, 53.425663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370906, 0.044335, 0.927612,
		-0.468613, 0.853430, -0.228165,
		-0.801767, -0.519319, -0.295766,
		31.492594, 35.095833, 53.336933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438856, 35.795929, 53.768341>,  <32.053829, 35.459358, 53.543968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438856, 35.795929, 53.768341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285480, 35.433033, 53.699173>,  <31.193455, 35.215298, 53.657673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.285480, 35.433033, 53.699173>,  <31.438856, 35.795929, 53.768341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285480, 35.433033, 53.699173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196055, -0.103002, 0.975168,
		-0.902518, 0.407817, -0.138373,
		-0.383438, -0.907235, -0.172916,
		31.170448, 35.160862, 53.647297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725660, 35.757664, 54.124672>,  <31.438856, 35.795929, 53.768341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725660, 35.757664, 54.124672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862120, 35.387878, 54.056564>,  <30.943995, 35.166008, 54.015701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862120, 35.387878, 54.056564>,  <30.725660, 35.757664, 54.124672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862120, 35.387878, 54.056564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250339, -0.263941, 0.931485,
		-0.906063, -0.275148, -0.321471,
		0.341146, -0.924461, -0.170267,
		30.964464, 35.110538, 54.005486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112520, 35.377979, 54.237171>,  <30.725660, 35.757664, 54.124672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112520, 35.377979, 54.237171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.439911, 35.151833, 54.278065>,  <30.636345, 35.016144, 54.302601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.439911, 35.151833, 54.278065>,  <30.112520, 35.377979, 54.237171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439911, 35.151833, 54.278065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174040, -0.074397, 0.981924,
		-0.547544, -0.821476, -0.159289,
		0.818478, -0.565370, 0.102235,
		30.685453, 34.982224, 54.308735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211771, 35.189804, 54.910622>,  <30.112520, 35.377979, 54.237171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211771, 35.189804, 54.910622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571796, 35.051353, 54.804733>,  <30.787811, 34.968281, 54.741199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571796, 35.051353, 54.804733>,  <30.211771, 35.189804, 54.910622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571796, 35.051353, 54.804733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188089, -0.239400, 0.952528,
		-0.393075, -0.907127, -0.150371,
		0.900064, -0.346132, -0.264723,
		30.841816, 34.947514, 54.725315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038370, 34.413223, 54.695412>,  <30.211771, 35.189804, 54.910622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038370, 34.413223, 54.695412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697252, 34.252884, 54.829315>,  <29.492580, 34.156681, 54.909657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697252, 34.252884, 54.829315>,  <30.038370, 34.413223, 54.695412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697252, 34.252884, 54.829315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306858, -0.134072, -0.942265,
		0.422585, -0.906282, -0.008667,
		-0.852795, -0.400847, 0.334757,
		29.441414, 34.132629, 54.929741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933434, 33.851265, 54.264729>,  <30.038370, 34.413223, 54.695412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933434, 33.851265, 54.264729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.600771, 34.014992, 54.414825>,  <29.401173, 34.113228, 54.504883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.600771, 34.014992, 54.414825>,  <29.933434, 33.851265, 54.264729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600771, 34.014992, 54.414825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390003, 0.050483, -0.919429,
		-0.395281, -0.910994, 0.117651,
		-0.831655, 0.409317, 0.375245,
		29.351274, 34.137787, 54.527397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300308, 33.572945, 53.876713>,  <29.933434, 33.851265, 54.264729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300308, 33.572945, 53.876713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.171061, 33.911495, 54.046062>,  <29.093512, 34.114624, 54.147671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.171061, 33.911495, 54.046062>,  <29.300308, 33.572945, 53.876713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171061, 33.911495, 54.046062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521740, 0.213924, -0.825848,
		-0.789545, -0.487740, 0.372463,
		-0.323120, 0.846373, 0.423376,
		29.074125, 34.165405, 54.173077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584160, 33.606350, 53.834679>,  <29.300308, 33.572945, 53.876713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584160, 33.606350, 53.834679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734116, 33.977177, 53.835789>,  <28.824089, 34.199673, 53.836456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734116, 33.977177, 53.835789>,  <28.584160, 33.606350, 53.834679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734116, 33.977177, 53.835789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461975, 0.189409, -0.866432,
		-0.803763, 0.323536, 0.499289,
		0.374892, 0.927065, 0.002774,
		28.846582, 34.255295, 53.836620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134958, 33.915245, 53.366550>,  <28.584160, 33.606350, 53.834679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134958, 33.915245, 53.366550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.388081, 34.220669, 53.417984>,  <28.539955, 34.403923, 53.448845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.388081, 34.220669, 53.417984>,  <28.134958, 33.915245, 53.366550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388081, 34.220669, 53.417984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230005, 0.343931, -0.910390,
		-0.739360, 0.546525, 0.393264,
		0.632807, 0.763559, 0.128585,
		28.577923, 34.449738, 53.456558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773336, 34.480373, 52.969654>,  <28.134958, 33.915245, 53.366550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773336, 34.480373, 52.969654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.157648, 34.574371, 53.028549>,  <28.388235, 34.630768, 53.063889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.157648, 34.574371, 53.028549>,  <27.773336, 34.480373, 52.969654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157648, 34.574371, 53.028549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126363, 0.101645, -0.986763,
		-0.246847, 0.966668, 0.067965,
		0.960781, 0.234991, 0.147242,
		28.445883, 34.644867, 53.072723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756819, 35.061348, 52.690636>,  <27.773336, 34.480373, 52.969654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756819, 35.061348, 52.690636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.132315, 34.923889, 52.680233>,  <28.357613, 34.841412, 52.673992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.132315, 34.923889, 52.680233>,  <27.756819, 35.061348, 52.690636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132315, 34.923889, 52.680233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071363, 0.267659, -0.960867,
		0.337163, 0.900146, 0.275786,
		0.938738, -0.343650, -0.026007,
		28.413937, 34.820793, 52.672432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127434, 35.620434, 52.463959>,  <27.756819, 35.061348, 52.690636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127434, 35.620434, 52.463959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378551, 35.316574, 52.396069>,  <28.529222, 35.134258, 52.355335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.378551, 35.316574, 52.396069>,  <28.127434, 35.620434, 52.463959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378551, 35.316574, 52.396069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114508, 0.305806, -0.945183,
		0.769911, 0.573945, 0.278970,
		0.627793, -0.759651, -0.169722,
		28.566889, 35.088680, 52.345154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610844, 35.917652, 52.027042>,  <28.127434, 35.620434, 52.463959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610844, 35.917652, 52.027042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687035, 35.527172, 51.985580>,  <28.732750, 35.292885, 51.960701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.687035, 35.527172, 51.985580>,  <28.610844, 35.917652, 52.027042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687035, 35.527172, 51.985580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305690, 0.159324, -0.938706,
		0.932884, 0.147115, 0.328763,
		0.190478, -0.976203, -0.103659,
		28.744179, 35.234310, 51.954483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222332, 36.020824, 51.632038>,  <28.610844, 35.917652, 52.027042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222332, 36.020824, 51.632038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.106373, 35.640549, 51.587963>,  <29.036797, 35.412384, 51.561520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.106373, 35.640549, 51.587963>,  <29.222332, 36.020824, 51.632038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106373, 35.640549, 51.587963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464878, -0.039241, -0.884505,
		0.836569, -0.307640, 0.453332,
		-0.289898, -0.950693, -0.110187,
		29.019403, 35.355339, 51.554909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812201, 35.651958, 51.723087>,  <29.222332, 36.020824, 51.632038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812201, 35.651958, 51.723087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531576, 35.475792, 51.499001>,  <29.363201, 35.370090, 51.364548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531576, 35.475792, 51.499001>,  <29.812201, 35.651958, 51.723087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531576, 35.475792, 51.499001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664940, -0.121892, -0.736884,
		0.256250, -0.889480, 0.378366,
		-0.701563, -0.440417, -0.560216,
		29.321108, 35.343666, 51.330936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105597, 35.155445, 51.381947>,  <29.812201, 35.651958, 51.723087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105597, 35.155445, 51.381947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772579, 35.192619, 51.163502>,  <29.572769, 35.214924, 51.032436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.772579, 35.192619, 51.163502>,  <30.105597, 35.155445, 51.381947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772579, 35.192619, 51.163502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550565, 0.029784, -0.834261,
		-0.061265, -0.995227, -0.075962,
		-0.832541, 0.092933, -0.546112,
		29.522818, 35.220501, 50.999668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251629, 34.738293, 50.664749>,  <30.105597, 35.155445, 51.381947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251629, 34.738293, 50.664749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.908134, 34.936504, 50.612564>,  <29.702038, 35.055431, 50.581253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.908134, 34.936504, 50.612564>,  <30.251629, 34.738293, 50.664749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908134, 34.936504, 50.612564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148822, -0.002450, -0.988861,
		-0.490329, -0.868588, -0.071642,
		-0.858737, 0.495530, -0.130466,
		29.650513, 35.085163, 50.573425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765949, 34.327129, 50.284916>,  <30.251629, 34.738293, 50.664749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765949, 34.327129, 50.284916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669510, 34.710133, 50.221596>,  <29.611647, 34.939934, 50.183601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669510, 34.710133, 50.221596>,  <29.765949, 34.327129, 50.284916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669510, 34.710133, 50.221596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323858, -0.074387, -0.943177,
		-0.914871, -0.278664, -0.292160,
		-0.241096, 0.957504, -0.158302,
		29.597181, 34.997383, 50.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505091, 34.347160, 49.654610>,  <29.765949, 34.327129, 50.284916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505091, 34.347160, 49.654610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592264, 34.733349, 49.711697>,  <29.644567, 34.965061, 49.745949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.592264, 34.733349, 49.711697>,  <29.505091, 34.347160, 49.654610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592264, 34.733349, 49.711697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341059, 0.061674, -0.938017,
		-0.914431, 0.253101, -0.315842,
		0.217934, 0.965472, 0.142719,
		29.657644, 35.022991, 49.754513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398264, 34.663448, 49.028423>,  <29.505091, 34.347160, 49.654610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398264, 34.663448, 49.028423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599970, 34.962540, 49.201225>,  <29.720993, 35.141994, 49.304905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.599970, 34.962540, 49.201225>,  <29.398264, 34.663448, 49.028423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599970, 34.962540, 49.201225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310595, 0.309740, -0.898661,
		-0.805759, 0.587341, -0.076048,
		0.504265, 0.747724, 0.432001,
		29.751249, 35.186855, 49.330826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115170, 35.305122, 48.704231>,  <29.398264, 34.663448, 49.028423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115170, 35.305122, 48.704231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488895, 35.335045, 48.843636>,  <29.713131, 35.352997, 48.927277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488895, 35.335045, 48.843636>,  <29.115170, 35.305122, 48.704231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488895, 35.335045, 48.843636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312732, 0.297135, -0.902169,
		-0.171043, 0.951901, 0.254224,
		0.934314, 0.074806, 0.348512,
		29.769190, 35.357487, 48.948189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326683, 35.900089, 48.371380>,  <29.115170, 35.305122, 48.704231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326683, 35.900089, 48.371380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.645521, 35.690048, 48.490650>,  <29.836824, 35.564022, 48.562214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.645521, 35.690048, 48.490650>,  <29.326683, 35.900089, 48.371380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645521, 35.690048, 48.490650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504748, 0.308327, -0.806328,
		0.331469, 0.793223, 0.510810,
		0.797094, -0.525102, 0.298176,
		29.884649, 35.532516, 48.580105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828596, 36.243031, 48.050129>,  <29.326683, 35.900089, 48.371380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828596, 36.243031, 48.050129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.989664, 35.889656, 48.145958>,  <30.086304, 35.677631, 48.203457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.989664, 35.889656, 48.145958>,  <29.828596, 36.243031, 48.050129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989664, 35.889656, 48.145958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524668, 0.008291, -0.851267,
		0.750055, 0.468475, 0.466850,
		0.402668, -0.883438, 0.239575,
		30.110464, 35.624626, 48.217831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672153, 36.280468, 48.033920>,  <29.828596, 36.243031, 48.050129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672153, 36.280468, 48.033920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571968, 35.896378, 47.984558>,  <30.511856, 35.665924, 47.954941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571968, 35.896378, 47.984558>,  <30.672153, 36.280468, 48.033920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571968, 35.896378, 47.984558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481388, -0.012931, -0.876412,
		0.839960, -0.278917, 0.465481,
		-0.250465, -0.960228, -0.123406,
		30.496828, 35.608311, 47.947536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170334, 35.999050, 47.698078>,  <30.672153, 36.280468, 48.033920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170334, 35.999050, 47.698078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907549, 35.704979, 47.631245>,  <30.749878, 35.528538, 47.591145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907549, 35.704979, 47.631245>,  <31.170334, 35.999050, 47.698078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907549, 35.704979, 47.631245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429792, -0.183120, -0.884164,
		0.619420, -0.652674, 0.436276,
		-0.656961, -0.735176, -0.167086,
		30.710461, 35.484425, 47.581120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.423496, 35.276268, 32.618759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.040791, 35.226616, 32.723976>,  <39.811165, 35.196827, 32.787106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.040791, 35.226616, 32.723976>,  <40.423496, 35.276268, 32.618759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040791, 35.226616, 32.723976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272035, -0.061849, 0.960298,
		-0.102930, 0.990337, 0.092942,
		-0.956767, -0.124127, 0.263040,
		39.753761, 35.189377, 32.802887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231800, 35.884266, 33.042156>,  <40.423496, 35.276268, 32.618759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231800, 35.884266, 33.042156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.995136, 35.573891, 33.129662>,  <39.853138, 35.387665, 33.182163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.995136, 35.573891, 33.129662>,  <40.231800, 35.884266, 33.042156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995136, 35.573891, 33.129662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335800, 0.009499, 0.941885,
		-0.732921, 0.630740, 0.254939,
		-0.591663, -0.775936, 0.218764,
		39.817638, 35.341110, 33.195290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910103, 36.080013, 33.635414>,  <40.231800, 35.884266, 33.042156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910103, 36.080013, 33.635414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915848, 35.681618, 33.600086>,  <39.919296, 35.442581, 33.578888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915848, 35.681618, 33.600086>,  <39.910103, 36.080013, 33.635414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915848, 35.681618, 33.600086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391568, -0.075673, 0.917032,
		-0.920037, -0.047757, 0.388910,
		0.014364, -0.995988, -0.088322,
		39.920158, 35.382820, 33.573589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476204, 35.845978, 34.211071>,  <39.910103, 36.080013, 33.635414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476204, 35.845978, 34.211071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738312, 35.567375, 34.094116>,  <39.895576, 35.400211, 34.023941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738312, 35.567375, 34.094116>,  <39.476204, 35.845978, 34.211071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738312, 35.567375, 34.094116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345962, -0.067375, 0.935826,
		-0.671512, -0.714377, 0.196817,
		0.655272, -0.696509, -0.292391,
		39.934895, 35.358421, 34.006397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616219, 35.576752, 34.763821>,  <39.476204, 35.845978, 34.211071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616219, 35.576752, 34.763821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891136, 35.396915, 34.535610>,  <40.056087, 35.289013, 34.398685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891136, 35.396915, 34.535610>,  <39.616219, 35.576752, 34.763821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891136, 35.396915, 34.535610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493830, -0.286791, 0.820904,
		-0.532689, -0.845944, 0.024910,
		0.687295, -0.449588, -0.570523,
		40.097324, 35.262039, 34.364452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680756, 34.977028, 35.041580>,  <39.616219, 35.576752, 34.763821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680756, 34.977028, 35.041580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012188, 35.001656, 34.818989>,  <40.211048, 35.016434, 34.685432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012188, 35.001656, 34.818989>,  <39.680756, 34.977028, 35.041580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012188, 35.001656, 34.818989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530464, -0.404237, 0.745117,
		-0.179073, -0.912580, -0.367602,
		0.828577, 0.061569, -0.556479,
		40.260761, 35.020126, 34.652046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973164, 34.470585, 35.347725>,  <39.680756, 34.977028, 35.041580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973164, 34.470585, 35.347725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.271091, 34.646938, 35.147377>,  <40.449848, 34.752750, 35.027168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.271091, 34.646938, 35.147377>,  <39.973164, 34.470585, 35.347725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271091, 34.646938, 35.147377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666971, -0.469422, 0.578612,
		0.019977, -0.765028, -0.643687,
		0.744816, 0.440880, -0.500874,
		40.494537, 34.779202, 34.997116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462814, 33.931156, 35.065403>,  <39.973164, 34.470585, 35.347725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462814, 33.931156, 35.065403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681755, 34.264633, 35.094666>,  <40.813122, 34.464722, 35.112221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.681755, 34.264633, 35.094666>,  <40.462814, 33.931156, 35.065403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681755, 34.264633, 35.094666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671649, -0.489743, 0.555912,
		0.499289, -0.255148, -0.828016,
		0.547355, 0.833697, 0.073153,
		40.845963, 34.514744, 35.116611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264008, 33.773037, 34.976723>,  <40.462814, 33.931156, 35.065403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264008, 33.773037, 34.976723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.233582, 34.132954, 35.148582>,  <41.215328, 34.348904, 35.251698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.233582, 34.132954, 35.148582>,  <41.264008, 33.773037, 34.976723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233582, 34.132954, 35.148582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761256, -0.225888, 0.607835,
		0.643975, 0.373305, -0.667787,
		-0.076063, 0.899788, 0.429647,
		41.210762, 34.402889, 35.277477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983727, 33.887611, 35.024868>,  <41.264008, 33.773037, 34.976723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983727, 33.887611, 35.024868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784409, 34.113846, 35.287716>,  <41.664818, 34.249588, 35.445423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.784409, 34.113846, 35.287716>,  <41.983727, 33.887611, 35.024868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784409, 34.113846, 35.287716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712494, -0.164724, 0.682069,
		0.494015, 0.808068, -0.320897,
		-0.498299, 0.565590, 0.657120,
		41.634918, 34.283524, 35.484852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419319, 34.322201, 35.297520>,  <41.983727, 33.887611, 35.024868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419319, 34.322201, 35.297520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118969, 34.278324, 35.558029>,  <41.938759, 34.251999, 35.714336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118969, 34.278324, 35.558029>,  <42.419319, 34.322201, 35.297520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118969, 34.278324, 35.558029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659649, -0.173069, 0.731376,
		0.032488, 0.978782, 0.202311,
		-0.750872, -0.109693, 0.651275,
		41.893707, 34.245415, 35.753410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693645, 34.755466, 35.965775>,  <42.419319, 34.322201, 35.297520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693645, 34.755466, 35.965775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390293, 34.522507, 36.082848>,  <42.208282, 34.382732, 36.153091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.390293, 34.522507, 36.082848>,  <42.693645, 34.755466, 35.965775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390293, 34.522507, 36.082848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509429, -0.249481, 0.823554,
		-0.406619, 0.773672, 0.485894,
		-0.758382, -0.582401, 0.292687,
		42.162777, 34.347786, 36.170654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442604, 35.066193, 36.578892>,  <42.693645, 34.755466, 35.965775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442604, 35.066193, 36.578892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279221, 34.701546, 36.597286>,  <42.181190, 34.482758, 36.608322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.279221, 34.701546, 36.597286>,  <42.442604, 35.066193, 36.578892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279221, 34.701546, 36.597286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506971, -0.184685, 0.841945,
		-0.759039, 0.367216, 0.537600,
		-0.408462, -0.911616, 0.045985,
		42.156681, 34.428062, 36.611080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359764, 34.969017, 37.277802>,  <42.442604, 35.066193, 36.578892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359764, 34.969017, 37.277802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347420, 34.597599, 37.129829>,  <42.340012, 34.374748, 37.041046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347420, 34.597599, 37.129829>,  <42.359764, 34.969017, 37.277802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347420, 34.597599, 37.129829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440457, -0.344869, 0.828893,
		-0.897243, -0.137358, 0.419628,
		-0.030862, -0.928546, -0.369931,
		42.338161, 34.319035, 37.018848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212833, 34.593746, 37.768009>,  <42.359764, 34.969017, 37.277802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212833, 34.593746, 37.768009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397335, 34.326393, 37.534595>,  <42.508038, 34.165981, 37.394547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397335, 34.326393, 37.534595>,  <42.212833, 34.593746, 37.768009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397335, 34.326393, 37.534595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542576, -0.307895, 0.781545,
		-0.702036, -0.677104, 0.220628,
		0.461256, -0.668380, -0.583533,
		42.535713, 34.125877, 37.359535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194370, 33.877357, 38.127884>,  <42.212833, 34.593746, 37.768009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194370, 33.877357, 38.127884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487244, 33.904961, 37.856842>,  <42.662968, 33.921524, 37.694218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487244, 33.904961, 37.856842>,  <42.194370, 33.877357, 38.127884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487244, 33.904961, 37.856842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663774, -0.295312, 0.687165,
		-0.152685, -0.952905, -0.262028,
		0.732183, 0.069008, -0.677603,
		42.706898, 33.925663, 37.653561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624958, 33.277683, 38.303867>,  <42.194370, 33.877357, 38.127884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624958, 33.277683, 38.303867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838219, 33.524109, 38.071930>,  <42.966175, 33.671963, 37.932770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838219, 33.524109, 38.071930>,  <42.624958, 33.277683, 38.303867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838219, 33.524109, 38.071930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834550, -0.270496, 0.479956,
		0.138839, -0.739796, -0.658351,
		0.533151, 0.616063, -0.579841,
		42.998165, 33.708927, 37.897976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180923, 32.864571, 38.191082>,  <42.624958, 33.277683, 38.303867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180923, 32.864571, 38.191082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293171, 33.238987, 38.106148>,  <43.360519, 33.463634, 38.055187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293171, 33.238987, 38.106148>,  <43.180923, 32.864571, 38.191082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293171, 33.238987, 38.106148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927108, -0.207073, 0.312396,
		0.248444, -0.284525, -0.925916,
		0.280617, 0.936037, -0.212339,
		43.377357, 33.519798, 38.042446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942780, 32.730522, 37.890526>,  <43.180923, 32.864571, 38.191082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942780, 32.730522, 37.890526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849850, 33.097954, 38.018425>,  <43.794090, 33.318413, 38.095165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.849850, 33.097954, 38.018425>,  <43.942780, 32.730522, 37.890526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849850, 33.097954, 38.018425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912587, 0.092140, 0.398365,
		0.336468, 0.384351, -0.859688,
		-0.232324, 0.918577, 0.319752,
		43.780151, 33.373528, 38.114349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495319, 33.074509, 37.709396>,  <43.942780, 32.730522, 37.890526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495319, 33.074509, 37.709396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.324970, 33.271198, 38.013195>,  <44.222759, 33.389214, 38.195477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.324970, 33.271198, 38.013195>,  <44.495319, 33.074509, 37.709396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324970, 33.271198, 38.013195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860822, -0.038269, 0.507465,
		0.278599, 0.869909, -0.406991,
		-0.425873, 0.491726, 0.759498,
		44.197208, 33.418716, 38.241043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883156, 33.756042, 37.787758>,  <44.495319, 33.074509, 37.709396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883156, 33.756042, 37.787758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718830, 33.586559, 38.110672>,  <44.620235, 33.484871, 38.304420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718830, 33.586559, 38.110672>,  <44.883156, 33.756042, 37.787758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718830, 33.586559, 38.110672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911432, -0.168668, 0.375289,
		-0.022850, 0.889957, 0.455471,
		-0.410815, -0.423706, 0.807282,
		44.595585, 33.459446, 38.352856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493507, 33.987041, 37.548595>,  <44.883156, 33.756042, 37.787758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493507, 33.987041, 37.548595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781193, 33.947048, 37.273571>,  <45.953804, 33.923050, 37.108559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781193, 33.947048, 37.273571>,  <45.493507, 33.987041, 37.548595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781193, 33.947048, 37.273571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667467, 0.175354, -0.723698,
		0.192926, 0.979415, 0.059379,
		0.719213, -0.099986, -0.687557,
		45.996956, 33.917053, 37.067303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368122, 34.424664, 36.977837>,  <45.493507, 33.987041, 37.548595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368122, 34.424664, 36.977837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607349, 34.160534, 36.796158>,  <45.750885, 34.002056, 36.687153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607349, 34.160534, 36.796158>,  <45.368122, 34.424664, 36.977837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607349, 34.160534, 36.796158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418495, 0.226016, -0.879647,
		0.683503, 0.716167, -0.141168,
		0.598068, -0.660320, -0.454195,
		45.786770, 33.962437, 36.659901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.609623, 34.713146, 36.262600>,  <45.368122, 34.424664, 36.977837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.609623, 34.713146, 36.262600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.677105, 34.319054, 36.250923>,  <45.717594, 34.082596, 36.243919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.677105, 34.319054, 36.250923>,  <45.609623, 34.713146, 36.262600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677105, 34.319054, 36.250923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530179, -0.065740, -0.845333,
		0.830933, 0.158087, -0.533441,
		0.168705, -0.985234, -0.029189,
		45.727715, 34.023483, 36.242165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815086, 34.624752, 35.632191>,  <45.609623, 34.713146, 36.262600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815086, 34.624752, 35.632191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671963, 34.272709, 35.757019>,  <45.586090, 34.061485, 35.831917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671963, 34.272709, 35.757019>,  <45.815086, 34.624752, 35.632191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671963, 34.272709, 35.757019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512982, -0.093988, -0.853238,
		0.780270, -0.465383, -0.417848,
		-0.357810, -0.880105, 0.312069,
		45.564621, 34.008678, 35.850639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972115, 34.147209, 35.000351>,  <45.815086, 34.624752, 35.632191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972115, 34.147209, 35.000351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700951, 34.003490, 35.256893>,  <45.538254, 33.917259, 35.410820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700951, 34.003490, 35.256893>,  <45.972115, 34.147209, 35.000351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700951, 34.003490, 35.256893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625261, -0.177032, -0.760071,
		0.386635, -0.916277, -0.104646,
		-0.677910, -0.359301, 0.641359,
		45.497578, 33.895699, 35.449303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754787, 33.545559, 34.736588>,  <45.972115, 34.147209, 35.000351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754787, 33.545559, 34.736588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441822, 33.623142, 34.973301>,  <45.254044, 33.669693, 35.115330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441822, 33.623142, 34.973301>,  <45.754787, 33.545559, 34.736588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441822, 33.623142, 34.973301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622708, -0.232064, -0.747249,
		-0.007602, -0.953167, 0.302348,
		-0.782417, 0.193955, 0.591781,
		45.207096, 33.681328, 35.150833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239647, 32.926163, 34.703709>,  <45.754787, 33.545559, 34.736588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239647, 32.926163, 34.703709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.078236, 33.278484, 34.802784>,  <44.981388, 33.489876, 34.862228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.078236, 33.278484, 34.802784>,  <45.239647, 32.926163, 34.703709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078236, 33.278484, 34.802784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585337, -0.040451, -0.809780,
		-0.703239, -0.471749, 0.531891,
		-0.403528, 0.880805, 0.247685,
		44.957176, 33.542725, 34.877090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604378, 32.765495, 34.438583>,  <45.239647, 32.926163, 34.703709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604378, 32.765495, 34.438583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579430, 33.158443, 34.509079>,  <44.564461, 33.394211, 34.551376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.579430, 33.158443, 34.509079>,  <44.604378, 32.765495, 34.438583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579430, 33.158443, 34.509079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610135, 0.102217, -0.785676,
		-0.789839, -0.156528, 0.593003,
		-0.062365, 0.982370, 0.176238,
		44.560719, 33.453156, 34.561951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780106, 32.898041, 34.466324>,  <44.604378, 32.765495, 34.438583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780106, 32.898041, 34.466324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975319, 33.241993, 34.406433>,  <44.092449, 33.448364, 34.370499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975319, 33.241993, 34.406433>,  <43.780106, 32.898041, 34.466324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975319, 33.241993, 34.406433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698726, 0.282099, -0.657421,
		-0.523069, 0.425463, 0.738499,
		0.488038, 0.859885, -0.149725,
		44.121731, 33.499958, 34.361515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293079, 33.434612, 34.507835>,  <43.780106, 32.898041, 34.466324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293079, 33.434612, 34.507835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590500, 33.606941, 34.303276>,  <43.768951, 33.710339, 34.180542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590500, 33.606941, 34.303276>,  <43.293079, 33.434612, 34.507835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590500, 33.606941, 34.303276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666325, 0.413229, -0.620688,
		-0.056083, 0.802268, 0.594324,
		0.743549, 0.430823, -0.511396,
		43.813564, 33.736187, 34.149857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109509, 34.099930, 34.430981>,  <43.293079, 33.434612, 34.507835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109509, 34.099930, 34.430981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358284, 34.006680, 34.131958>,  <43.507549, 33.950729, 33.952545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358284, 34.006680, 34.131958>,  <43.109509, 34.099930, 34.430981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358284, 34.006680, 34.131958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658986, 0.359877, -0.660474,
		0.423005, 0.903405, 0.070193,
		0.621936, -0.233127, -0.747561,
		43.544865, 33.936741, 33.907688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265842, 34.725838, 34.036785>,  <43.109509, 34.099930, 34.430981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265842, 34.725838, 34.036785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.346664, 34.432316, 33.777336>,  <43.395157, 34.256203, 33.621666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.346664, 34.432316, 33.777336>,  <43.265842, 34.725838, 34.036785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346664, 34.432316, 33.777336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497347, 0.493650, -0.713411,
		0.843694, 0.466737, -0.265211,
		0.202054, -0.733802, -0.648620,
		43.407280, 34.212173, 33.582748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554249, 35.045963, 33.524437>,  <43.265842, 34.725838, 34.036785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554249, 35.045963, 33.524437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412178, 34.709499, 33.361320>,  <43.326935, 34.507622, 33.263451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412178, 34.709499, 33.361320>,  <43.554249, 35.045963, 33.524437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412178, 34.709499, 33.361320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492378, 0.539158, -0.683280,
		0.794613, -0.041900, -0.605668,
		-0.355181, -0.841162, -0.407792,
		43.305622, 34.457150, 33.238983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479042, 35.263218, 32.957336>,  <43.554249, 35.045963, 33.524437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479042, 35.263218, 32.957336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280315, 34.918056, 32.920307>,  <43.161079, 34.710960, 32.898090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280315, 34.918056, 32.920307>,  <43.479042, 35.263218, 32.957336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280315, 34.918056, 32.920307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515437, 0.379203, -0.768459,
		0.698210, -0.334068, -0.633168,
		-0.496817, -0.862904, -0.092572,
		43.131271, 34.659184, 32.892536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547401, 35.072910, 32.202271>,  <43.479042, 35.263218, 32.957336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547401, 35.072910, 32.202271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226799, 34.875538, 32.337399>,  <43.034439, 34.757114, 32.418476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226799, 34.875538, 32.337399>,  <43.547401, 35.072910, 32.202271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226799, 34.875538, 32.337399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512680, 0.276206, -0.812938,
		0.307826, -0.824761, -0.474354,
		-0.801500, -0.493436, 0.337816,
		42.986347, 34.727509, 32.438744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191086, 34.739571, 31.630159>,  <43.547401, 35.072910, 32.202271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191086, 34.739571, 31.630159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897133, 34.737671, 31.901432>,  <42.720760, 34.736530, 32.064194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897133, 34.737671, 31.901432>,  <43.191086, 34.739571, 31.630159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897133, 34.737671, 31.901432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639404, 0.338205, -0.690492,
		-0.226085, -0.941060, -0.251577,
		-0.734879, -0.004749, 0.678181,
		42.676670, 34.736248, 32.104885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534351, 34.556175, 31.204569>,  <43.191086, 34.739571, 31.630159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534351, 34.556175, 31.204569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369495, 34.668613, 31.551237>,  <42.270580, 34.736076, 31.759239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369495, 34.668613, 31.551237>,  <42.534351, 34.556175, 31.204569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369495, 34.668613, 31.551237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819378, 0.301629, -0.487483,
		-0.398444, -0.911045, 0.106010,
		-0.412144, 0.281097, 0.866673,
		42.245853, 34.752941, 31.811239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819118, 34.266258, 31.153677>,  <42.534351, 34.556175, 31.204569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819118, 34.266258, 31.153677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.819324, 34.583382, 31.397465>,  <41.819447, 34.773655, 31.543737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.819324, 34.583382, 31.397465>,  <41.819118, 34.266258, 31.153677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819324, 34.583382, 31.397465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739030, 0.410883, -0.533863,
		-0.673672, -0.450142, 0.586121,
		0.000513, 0.792810, 0.609469,
		41.819477, 34.821224, 31.580305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108055, 34.381519, 31.258986>,  <41.819118, 34.266258, 31.153677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108055, 34.381519, 31.258986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282463, 34.730412, 31.347624>,  <41.387108, 34.939747, 31.400806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.282463, 34.730412, 31.347624>,  <41.108055, 34.381519, 31.258986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282463, 34.730412, 31.347624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721814, 0.486008, -0.492729,
		-0.537469, 0.054888, 0.841495,
		0.436018, 0.872229, 0.221595,
		41.413269, 34.992081, 31.414103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564953, 34.888363, 31.271999>,  <41.108055, 34.381519, 31.258986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564953, 34.888363, 31.271999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.872723, 35.140675, 31.231802>,  <41.057384, 35.292061, 31.207684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.872723, 35.140675, 31.231802>,  <40.564953, 34.888363, 31.271999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872723, 35.140675, 31.231802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585738, 0.634056, -0.504861,
		-0.254737, 0.447317, 0.857331,
		0.769428, 0.630778, -0.100493,
		41.103550, 35.329906, 31.201654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374798, 35.555092, 31.533434>,  <40.564953, 34.888363, 31.271999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374798, 35.555092, 31.533434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691101, 35.629704, 31.300226>,  <40.880882, 35.674469, 31.160301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691101, 35.629704, 31.300226>,  <40.374798, 35.555092, 31.533434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691101, 35.629704, 31.300226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467045, 0.799522, -0.377669,
		0.395690, 0.570940, 0.719345,
		0.790758, 0.186527, -0.583018,
		40.928329, 35.685661, 31.125320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.197746, 36.816959, 44.952065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934719, 36.530807, 44.857548>,  <35.776901, 36.359116, 44.800838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934719, 36.530807, 44.857548>,  <36.197746, 36.816959, 44.952065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934719, 36.530807, 44.857548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515125, -0.198055, -0.833919,
		0.549773, -0.670076, 0.498746,
		-0.657568, -0.715382, -0.236288,
		35.737450, 36.316193, 44.786663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532230, 36.095325, 44.897270>,  <36.197746, 36.816959, 44.952065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532230, 36.095325, 44.897270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195312, 36.116112, 44.682667>,  <35.993164, 36.128582, 44.553905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195312, 36.116112, 44.682667>,  <36.532230, 36.095325, 44.897270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195312, 36.116112, 44.682667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502895, -0.282507, -0.816876,
		-0.194017, -0.957857, 0.211820,
		-0.842291, 0.051964, -0.536512,
		35.942627, 36.131702, 44.521713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644871, 35.633247, 44.252205>,  <36.532230, 36.095325, 44.897270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644871, 35.633247, 44.252205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312469, 35.824165, 44.137928>,  <36.113029, 35.938717, 44.069363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312469, 35.824165, 44.137928>,  <36.644871, 35.633247, 44.252205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312469, 35.824165, 44.137928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315322, -0.018912, -0.948796,
		-0.458263, -0.878537, -0.134787,
		-0.831003, 0.477300, -0.285688,
		36.063168, 35.967354, 44.052223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275524, 35.248203, 43.703278>,  <36.644871, 35.633247, 44.252205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275524, 35.248203, 43.703278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204498, 35.639961, 43.664783>,  <36.161884, 35.875015, 43.641685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204498, 35.639961, 43.664783>,  <36.275524, 35.248203, 43.703278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204498, 35.639961, 43.664783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165472, -0.066683, -0.983957,
		-0.970098, -0.190637, -0.150222,
		-0.177562, 0.979393, -0.096234,
		36.151230, 35.933781, 43.635914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041973, 35.186939, 43.084709>,  <36.275524, 35.248203, 43.703278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041973, 35.186939, 43.084709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063240, 35.586044, 43.100903>,  <36.076000, 35.825508, 43.110619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063240, 35.586044, 43.100903>,  <36.041973, 35.186939, 43.084709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063240, 35.586044, 43.100903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193608, 0.029475, -0.980636,
		-0.979637, 0.059980, -0.191608,
		0.053171, 0.997764, 0.040487,
		36.079193, 35.885372, 43.113049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572208, 35.424019, 42.614105>,  <36.041973, 35.186939, 43.084709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572208, 35.424019, 42.614105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851002, 35.703541, 42.678467>,  <36.018276, 35.871254, 42.717083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851002, 35.703541, 42.678467>,  <35.572208, 35.424019, 42.614105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851002, 35.703541, 42.678467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263640, -0.041046, -0.963747,
		-0.666866, 0.714135, -0.212841,
		0.696982, 0.698804, 0.160902,
		36.060097, 35.913181, 42.726738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400669, 35.926437, 42.121807>,  <35.572208, 35.424019, 42.614105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400669, 35.926437, 42.121807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782967, 35.999073, 42.214401>,  <36.012344, 36.042656, 42.269958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782967, 35.999073, 42.214401>,  <35.400669, 35.926437, 42.121807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782967, 35.999073, 42.214401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237840, -0.013715, -0.971207,
		-0.173188, 0.983278, -0.056297,
		0.955739, 0.181591, 0.231488,
		36.069687, 36.053551, 42.283848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670349, 36.453487, 41.663700>,  <35.400669, 35.926437, 42.121807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670349, 36.453487, 41.663700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003731, 36.267441, 41.783047>,  <36.203762, 36.155815, 41.854652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003731, 36.267441, 41.783047>,  <35.670349, 36.453487, 41.663700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003731, 36.267441, 41.783047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423212, 0.190102, -0.885863,
		0.355307, 0.864599, 0.355283,
		0.833456, -0.465113, 0.298365,
		36.253769, 36.127907, 41.872555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231842, 36.755077, 41.276344>,  <35.670349, 36.453487, 41.663700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231842, 36.755077, 41.276344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415955, 36.432678, 41.425213>,  <36.526421, 36.239239, 41.514534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415955, 36.432678, 41.425213>,  <36.231842, 36.755077, 41.276344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415955, 36.432678, 41.425213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573284, -0.050242, -0.817815,
		0.677855, 0.589783, 0.438940,
		0.460280, -0.805998, 0.372169,
		36.554039, 36.190880, 41.536865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925697, 36.855507, 41.128151>,  <36.231842, 36.755077, 41.276344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925697, 36.855507, 41.128151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899822, 36.459450, 41.177834>,  <36.884296, 36.221813, 41.207642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899822, 36.459450, 41.177834>,  <36.925697, 36.855507, 41.128151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899822, 36.459450, 41.177834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573783, -0.138741, -0.807171,
		0.816449, 0.019051, 0.577103,
		-0.064690, -0.990145, 0.124206,
		36.880417, 36.162407, 41.215096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661453, 36.625786, 41.172237>,  <36.925697, 36.855507, 41.128151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661453, 36.625786, 41.172237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461163, 36.307289, 41.036430>,  <37.340988, 36.116192, 40.954945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461163, 36.307289, 41.036430>,  <37.661453, 36.625786, 41.172237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461163, 36.307289, 41.036430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693635, -0.134446, -0.707669,
		0.517830, -0.589848, 0.619623,
		-0.500722, -0.796244, -0.339519,
		37.310947, 36.068417, 40.934574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207016, 36.217426, 40.981350>,  <37.661453, 36.625786, 41.172237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207016, 36.217426, 40.981350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890266, 36.040077, 40.813370>,  <37.700218, 35.933666, 40.712582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890266, 36.040077, 40.813370>,  <38.207016, 36.217426, 40.981350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890266, 36.040077, 40.813370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571112, -0.294133, -0.766366,
		0.216268, -0.846701, 0.486134,
		-0.791870, -0.443377, -0.419950,
		37.652706, 35.907063, 40.687386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485851, 35.721050, 40.582729>,  <38.207016, 36.217426, 40.981350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485851, 35.721050, 40.582729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102951, 35.706936, 40.467888>,  <37.873211, 35.698467, 40.398983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102951, 35.706936, 40.467888>,  <38.485851, 35.721050, 40.582729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102951, 35.706936, 40.467888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247845, -0.611836, -0.751153,
		-0.149153, -0.790197, 0.594425,
		-0.957249, -0.035288, -0.287103,
		37.815777, 35.696350, 40.381756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025078, 35.123890, 40.565735>,  <38.485851, 35.721050, 40.582729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025078, 35.123890, 40.565735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332848, 34.870121, 40.536053>,  <39.517509, 34.717861, 40.518242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332848, 34.870121, 40.536053>,  <39.025078, 35.123890, 40.565735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332848, 34.870121, 40.536053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564558, -0.729795, 0.385581,
		-0.298775, -0.254779, -0.919685,
		0.769420, -0.634418, -0.074207,
		39.563675, 34.679794, 40.513790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861446, 34.596123, 40.142635>,  <39.025078, 35.123890, 40.565735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861446, 34.596123, 40.142635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133999, 34.463577, 40.403683>,  <39.297531, 34.384048, 40.560310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133999, 34.463577, 40.403683>,  <38.861446, 34.596123, 40.142635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133999, 34.463577, 40.403683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687380, -0.596025, 0.415046,
		0.251446, -0.731404, -0.633895,
		0.681384, -0.331365, 0.652620,
		39.338413, 34.364166, 40.599468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525669, 33.956398, 40.192734>,  <38.861446, 34.596123, 40.142635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525669, 33.956398, 40.192734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789028, 33.983429, 40.492584>,  <38.947044, 33.999649, 40.672493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789028, 33.983429, 40.492584>,  <38.525669, 33.956398, 40.192734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789028, 33.983429, 40.492584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542559, -0.647680, 0.534921,
		0.521668, -0.758910, -0.389768,
		0.658402, 0.067580, 0.749627,
		38.986549, 34.003704, 40.717472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737175, 33.262886, 40.336189>,  <38.525669, 33.956398, 40.192734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737175, 33.262886, 40.336189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781719, 33.518978, 40.640217>,  <38.808445, 33.672634, 40.822632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781719, 33.518978, 40.640217>,  <38.737175, 33.262886, 40.336189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781719, 33.518978, 40.640217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600975, -0.565737, 0.564598,
		0.791471, -0.519656, 0.321762,
		0.111364, 0.640234, 0.760065,
		38.815128, 33.711048, 40.868237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826324, 32.859844, 40.951015>,  <38.737175, 33.262886, 40.336189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826324, 32.859844, 40.951015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706871, 33.209225, 41.104847>,  <38.635197, 33.418854, 41.197147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706871, 33.209225, 41.104847>,  <38.826324, 32.859844, 40.951015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706871, 33.209225, 41.104847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527999, -0.486891, 0.695812,
		0.795006, 0.004737, 0.606584,
		-0.298637, 0.873450, 0.384580,
		38.617279, 33.471260, 41.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857986, 32.775642, 41.677269>,  <38.826324, 32.859844, 40.951015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857986, 32.775642, 41.677269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604916, 33.079834, 41.618771>,  <38.453072, 33.262348, 41.583672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604916, 33.079834, 41.618771>,  <38.857986, 32.775642, 41.677269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604916, 33.079834, 41.618771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561128, -0.320026, 0.763360,
		0.533715, 0.565028, 0.629200,
		-0.632680, 0.760479, -0.146250,
		38.415112, 33.307976, 41.574894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764729, 33.119850, 42.286549>,  <38.857986, 32.775642, 41.677269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764729, 33.119850, 42.286549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436840, 33.245487, 42.094963>,  <38.240108, 33.320869, 41.980011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436840, 33.245487, 42.094963>,  <38.764729, 33.119850, 42.286549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436840, 33.245487, 42.094963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481896, 0.073776, 0.873117,
		0.309575, 0.946522, 0.090885,
		-0.819719, 0.314092, -0.478964,
		38.190926, 33.339714, 41.951275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489834, 33.598408, 42.763950>,  <38.764729, 33.119850, 42.286549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489834, 33.598408, 42.763950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201988, 33.571800, 42.487476>,  <38.029282, 33.555836, 42.321590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201988, 33.571800, 42.487476>,  <38.489834, 33.598408, 42.763950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201988, 33.571800, 42.487476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694350, 0.059820, 0.717147,
		-0.006360, 0.995990, -0.089236,
		-0.719610, -0.066522, -0.691185,
		37.986107, 33.551846, 42.280121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073193, 34.176987, 42.921761>,  <38.489834, 33.598408, 42.763950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073193, 34.176987, 42.921761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853085, 33.930504, 42.696377>,  <37.721020, 33.782612, 42.561146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853085, 33.930504, 42.696377>,  <38.073193, 34.176987, 42.921761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853085, 33.930504, 42.696377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773162, 0.121189, 0.622523,
		-0.315320, 0.778202, -0.543116,
		-0.550268, -0.616210, -0.563463,
		37.688004, 33.745640, 42.527340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437092, 34.488216, 42.828342>,  <38.073193, 34.176987, 42.921761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437092, 34.488216, 42.828342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356670, 34.097984, 42.792961>,  <37.308418, 33.863846, 42.771732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356670, 34.097984, 42.792961>,  <37.437092, 34.488216, 42.828342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356670, 34.097984, 42.792961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809927, 0.114766, 0.575194,
		-0.550996, 0.187282, -0.813221,
		-0.201053, -0.975579, -0.088449,
		37.296356, 33.805309, 42.766426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787189, 34.394733, 42.738762>,  <37.437092, 34.488216, 42.828342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787189, 34.394733, 42.738762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873531, 34.014740, 42.829044>,  <36.925335, 33.786743, 42.883213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873531, 34.014740, 42.829044>,  <36.787189, 34.394733, 42.738762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873531, 34.014740, 42.829044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868456, -0.081130, 0.489082,
		-0.446307, -0.301585, -0.842530,
		0.215855, -0.949981, 0.225704,
		36.938290, 33.729744, 42.896755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159374, 33.956165, 42.590714>,  <36.787189, 34.394733, 42.738762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159374, 33.956165, 42.590714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379658, 33.772972, 42.869846>,  <36.511826, 33.663055, 43.037327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379658, 33.772972, 42.869846>,  <36.159374, 33.956165, 42.590714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379658, 33.772972, 42.869846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834701, -0.302140, 0.460420,
		-0.000022, -0.836039, -0.548670,
		0.550704, -0.457985, 0.697836,
		36.544868, 33.635578, 43.079197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733131, 33.351513, 42.747921>,  <36.159374, 33.956165, 42.590714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733131, 33.351513, 42.747921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012402, 33.322659, 43.032833>,  <36.179962, 33.305347, 43.203781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012402, 33.322659, 43.032833>,  <35.733131, 33.351513, 42.747921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012402, 33.322659, 43.032833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698823, -0.284837, 0.656136,
		0.155555, -0.955858, -0.249275,
		0.698176, -0.072134, 0.712283,
		36.221855, 33.301018, 43.246517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718307, 32.645580, 43.126575>,  <35.733131, 33.351513, 42.747921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718307, 32.645580, 43.126575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879814, 32.895760, 43.393642>,  <35.976719, 33.045868, 43.553883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879814, 32.895760, 43.393642>,  <35.718307, 32.645580, 43.126575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879814, 32.895760, 43.393642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694071, -0.266040, 0.668946,
		0.596021, -0.733507, 0.326690,
		0.403764, 0.625452, 0.667671,
		36.000942, 33.083397, 43.593945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713562, 32.226582, 43.654949>,  <35.718307, 32.645580, 43.126575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713562, 32.226582, 43.654949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736355, 32.604385, 43.784351>,  <35.750031, 32.831066, 43.861992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736355, 32.604385, 43.784351>,  <35.713562, 32.226582, 43.654949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736355, 32.604385, 43.784351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716395, -0.187005, 0.672166,
		0.695364, -0.270058, 0.665986,
		0.056981, 0.944509, 0.323505,
		35.753448, 32.887737, 43.881401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041431, 31.591183, 43.871338>,  <35.713562, 32.226582, 43.654949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041431, 31.591183, 43.871338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811840, 31.271847, 43.798443>,  <35.674088, 31.080246, 43.754707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811840, 31.271847, 43.798443>,  <36.041431, 31.591183, 43.871338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811840, 31.271847, 43.798443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193903, 0.083710, -0.977443,
		0.795584, -0.596364, 0.106753,
		-0.573975, -0.798338, -0.182235,
		35.639648, 31.032345, 43.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458153, 31.157551, 43.374290>,  <36.041431, 31.591183, 43.871338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458153, 31.157551, 43.374290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073818, 31.053387, 43.336395>,  <35.843216, 30.990889, 43.313660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073818, 31.053387, 43.336395>,  <36.458153, 31.157551, 43.374290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073818, 31.053387, 43.336395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073716, 0.089353, -0.993268,
		0.267123, -0.961354, -0.066657,
		-0.960839, -0.260411, -0.094736,
		35.785568, 30.975264, 43.307976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439106, 30.630014, 42.783356>,  <36.458153, 31.157551, 43.374290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439106, 30.630014, 42.783356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067772, 30.776209, 42.810509>,  <35.844971, 30.863926, 42.826801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067772, 30.776209, 42.810509>,  <36.439106, 30.630014, 42.783356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067772, 30.776209, 42.810509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111067, -0.098436, -0.988926,
		-0.354755, -0.925598, 0.131975,
		-0.928339, 0.365485, 0.067883,
		35.789268, 30.885855, 42.830875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968391, 30.248970, 42.396595>,  <36.439106, 30.630014, 42.783356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968391, 30.248970, 42.396595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734055, 30.571299, 42.431095>,  <35.593452, 30.764696, 42.451797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734055, 30.571299, 42.431095>,  <35.968391, 30.248970, 42.396595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734055, 30.571299, 42.431095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100937, 0.033049, -0.994344,
		-0.804113, -0.591237, 0.061975,
		-0.585844, 0.805821, 0.086253,
		35.558300, 30.813046, 42.456970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471928, 30.078835, 41.816875>,  <35.968391, 30.248970, 42.396595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471928, 30.078835, 41.816875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471210, 30.468153, 41.908699>,  <35.470779, 30.701744, 41.963791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471210, 30.468153, 41.908699>,  <35.471928, 30.078835, 41.816875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471210, 30.468153, 41.908699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358884, 0.213638, -0.908604,
		-0.933380, -0.084013, 0.348917,
		-0.001792, 0.973294, 0.229556,
		35.470673, 30.760141, 41.977566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856060, 30.375288, 41.674168>,  <35.471928, 30.078835, 41.816875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856060, 30.375288, 41.674168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074047, 30.710625, 41.679817>,  <35.204838, 30.911827, 41.683208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074047, 30.710625, 41.679817>,  <34.856060, 30.375288, 41.674168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074047, 30.710625, 41.679817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486601, 0.329945, -0.808923,
		-0.682813, 0.433961, 0.587745,
		0.544965, 0.838340, 0.014125,
		35.237537, 30.962126, 41.684055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387352, 30.982328, 41.599682>,  <34.856060, 30.375288, 41.674168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387352, 30.982328, 41.599682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751545, 31.087318, 41.471851>,  <34.970062, 31.150312, 41.395153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751545, 31.087318, 41.471851>,  <34.387352, 30.982328, 41.599682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751545, 31.087318, 41.471851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389805, 0.286619, -0.875158,
		-0.138111, 0.921388, 0.363275,
		0.910482, 0.262475, -0.319576,
		35.024689, 31.166061, 41.375977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397190, 31.696447, 41.532761>,  <34.387352, 30.982328, 41.599682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397190, 31.696447, 41.532761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698166, 31.551662, 41.312645>,  <34.878750, 31.464790, 41.180576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698166, 31.551662, 41.312645>,  <34.397190, 31.696447, 41.532761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698166, 31.551662, 41.312645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284539, 0.574856, -0.767188,
		0.594032, 0.733841, 0.329551,
		0.752438, -0.361964, -0.550289,
		34.923897, 31.443073, 41.147556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527851, 32.226524, 41.017784>,  <34.397190, 31.696447, 41.532761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527851, 32.226524, 41.017784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718765, 31.901360, 40.884289>,  <34.833313, 31.706261, 40.804192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718765, 31.901360, 40.884289>,  <34.527851, 32.226524, 41.017784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718765, 31.901360, 40.884289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256429, 0.234419, -0.937706,
		0.840504, 0.533130, -0.096569,
		0.477281, -0.812909, -0.333740,
		34.861950, 31.657488, 40.784168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871582, 32.381367, 40.427330>,  <34.527851, 32.226524, 41.017784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871582, 32.381367, 40.427330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836548, 31.984224, 40.394897>,  <34.815529, 31.745939, 40.375439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836548, 31.984224, 40.394897>,  <34.871582, 32.381367, 40.427330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836548, 31.984224, 40.394897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455572, 0.112304, -0.883087,
		0.885880, -0.040410, -0.462151,
		-0.087587, -0.992852, -0.081078,
		34.810272, 31.686369, 40.370575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124794, 32.302052, 39.824192>,  <34.871582, 32.381367, 40.427330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124794, 32.302052, 39.824192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893105, 31.979197, 39.869846>,  <34.754089, 31.785484, 39.897240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893105, 31.979197, 39.869846>,  <35.124794, 32.302052, 39.824192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893105, 31.979197, 39.869846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485906, 0.229445, -0.843356,
		0.654516, -0.543953, -0.525094,
		-0.579227, -0.807137, 0.114135,
		34.719337, 31.737055, 39.904087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158546, 31.805780, 39.124718>,  <35.124794, 32.302052, 39.824192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158546, 31.805780, 39.124718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833839, 31.775461, 39.356335>,  <34.639015, 31.757269, 39.495304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833839, 31.775461, 39.356335>,  <35.158546, 31.805780, 39.124718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833839, 31.775461, 39.356335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583912, 0.090029, -0.806810,
		0.009022, -0.993051, -0.117340,
		-0.811767, -0.075795, 0.579042,
		34.590309, 31.752722, 39.530048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.176964, 30.361044, 47.345463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807301, 30.321377, 47.197903>,  <34.585503, 30.297577, 47.109367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.807301, 30.321377, 47.197903>,  <35.176964, 30.361044, 47.345463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807301, 30.321377, 47.197903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381952, -0.224405, -0.896524,
		0.006122, -0.969437, 0.245264,
		-0.924162, -0.099167, -0.368904,
		34.530052, 30.291626, 47.087231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130772, 29.777283, 46.971348>,  <35.176964, 30.361044, 47.345463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130772, 29.777283, 46.971348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824509, 29.983095, 46.816929>,  <34.640751, 30.106583, 46.724277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824509, 29.983095, 46.816929>,  <35.130772, 29.777283, 46.971348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824509, 29.983095, 46.816929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299796, -0.245549, -0.921861,
		-0.569118, -0.821563, 0.033752,
		-0.765655, 0.514529, -0.386047,
		34.594810, 30.137453, 46.701115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899738, 29.377302, 46.434475>,  <35.130772, 29.777283, 46.971348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899738, 29.377302, 46.434475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786606, 29.753952, 46.361431>,  <34.718727, 29.979942, 46.317604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786606, 29.753952, 46.361431>,  <34.899738, 29.377302, 46.434475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786606, 29.753952, 46.361431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392133, -0.060231, -0.917935,
		-0.875350, -0.331228, -0.352207,
		-0.282832, 0.941627, -0.182608,
		34.701756, 30.036440, 46.306648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653160, 29.345345, 45.769497>,  <34.899738, 29.377302, 46.434475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653160, 29.345345, 45.769497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.713284, 29.736118, 45.830170>,  <34.749359, 29.970583, 45.866573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.713284, 29.736118, 45.830170>,  <34.653160, 29.345345, 45.769497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713284, 29.736118, 45.830170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273381, 0.106372, -0.956006,
		-0.950089, 0.185165, -0.251087,
		0.150311, 0.976933, 0.151684,
		34.758377, 30.029198, 45.875675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506172, 29.627516, 45.133945>,  <34.653160, 29.345345, 45.769497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506172, 29.627516, 45.133945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669258, 29.948206, 45.308762>,  <34.767109, 30.140621, 45.413651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669258, 29.948206, 45.308762>,  <34.506172, 29.627516, 45.133945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669258, 29.948206, 45.308762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243075, 0.366061, -0.898284,
		-0.880161, 0.472477, -0.045632,
		0.407714, 0.801726, 0.437040,
		34.791573, 30.188725, 45.439873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206139, 30.233772, 44.860180>,  <34.506172, 29.627516, 45.133945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206139, 30.233772, 44.860180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569065, 30.332310, 44.996468>,  <34.786819, 30.391432, 45.078239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569065, 30.332310, 44.996468>,  <34.206139, 30.233772, 44.860180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569065, 30.332310, 44.996468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309884, 0.155886, -0.937908,
		-0.284160, 0.956564, 0.065100,
		0.907318, 0.246342, 0.340721,
		34.841259, 30.406212, 45.098682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382935, 30.951286, 44.726871>,  <34.206139, 30.233772, 44.860180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382935, 30.951286, 44.726871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.732735, 30.762527, 44.771694>,  <34.942616, 30.649273, 44.798588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.732735, 30.762527, 44.771694>,  <34.382935, 30.951286, 44.726871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732735, 30.762527, 44.771694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339625, 0.430853, -0.836074,
		0.346261, 0.769208, 0.537050,
		0.874505, -0.471896, 0.112055,
		34.995087, 30.620958, 44.805309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677551, 31.337299, 44.270374>,  <34.382935, 30.951286, 44.726871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677551, 31.337299, 44.270374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.947861, 31.060791, 44.372730>,  <35.110046, 30.894886, 44.434143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.947861, 31.060791, 44.372730>,  <34.677551, 31.337299, 44.270374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947861, 31.060791, 44.372730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518651, 0.199245, -0.831446,
		0.523768, 0.694585, 0.493172,
		0.675772, -0.691269, 0.255889,
		35.150593, 30.853411, 44.449497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374302, 31.671946, 44.313850>,  <34.677551, 31.337299, 44.270374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374302, 31.671946, 44.313850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406212, 31.287096, 44.209583>,  <35.425358, 31.056187, 44.147022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406212, 31.287096, 44.209583>,  <35.374302, 31.671946, 44.313850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406212, 31.287096, 44.209583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391269, 0.270740, -0.879550,
		0.916812, -0.031828, 0.398048,
		0.079773, -0.962126, -0.260671,
		35.430145, 30.998459, 44.131382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903313, 32.192410, 44.503513>,  <35.374302, 31.671946, 44.313850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903313, 32.192410, 44.503513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731594, 32.550938, 44.459118>,  <35.628563, 32.766052, 44.432480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731594, 32.550938, 44.459118>,  <35.903313, 32.192410, 44.503513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731594, 32.550938, 44.459118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705079, -0.255809, 0.661381,
		0.564416, 0.362185, 0.741793,
		-0.429300, 0.896317, -0.110986,
		35.602806, 32.819832, 44.425823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633869, 32.275200, 45.132263>,  <35.903313, 32.192410, 44.503513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633869, 32.275200, 45.132263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446083, 32.562298, 44.926567>,  <35.333412, 32.734558, 44.803150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.446083, 32.562298, 44.926567>,  <35.633869, 32.275200, 45.132263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446083, 32.562298, 44.926567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663057, 0.098019, 0.742124,
		0.583062, 0.689372, 0.429890,
		-0.469462, 0.717746, -0.514244,
		35.305244, 32.777622, 44.772293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580688, 32.997292, 45.532990>,  <35.633869, 32.275200, 45.132263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580688, 32.997292, 45.532990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288906, 32.989834, 45.259480>,  <35.113838, 32.985359, 45.095375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288906, 32.989834, 45.259480>,  <35.580688, 32.997292, 45.532990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288906, 32.989834, 45.259480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682889, 0.077577, 0.726392,
		0.039502, 0.996812, -0.069321,
		-0.729454, -0.018644, -0.683776,
		35.070068, 32.984241, 45.054348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094448, 33.517155, 45.691410>,  <35.580688, 32.997292, 45.532990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094448, 33.517155, 45.691410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.891956, 33.261200, 45.460140>,  <34.770462, 33.107628, 45.321381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.891956, 33.261200, 45.460140>,  <35.094448, 33.517155, 45.691410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891956, 33.261200, 45.460140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749563, -0.005080, 0.661914,
		-0.426484, 0.768456, -0.477060,
		-0.506228, -0.639882, -0.578173,
		34.740089, 33.069237, 45.286690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443859, 33.768219, 45.712395>,  <35.094448, 33.517155, 45.691410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443859, 33.768219, 45.712395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373039, 33.389286, 45.605656>,  <34.330547, 33.161926, 45.541611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373039, 33.389286, 45.605656>,  <34.443859, 33.768219, 45.712395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373039, 33.389286, 45.605656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779467, -0.030571, 0.625697,
		-0.600903, 0.318778, -0.733005,
		-0.177050, -0.947336, -0.266847,
		34.319923, 33.105083, 45.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663799, 33.752888, 45.538361>,  <34.443859, 33.768219, 45.712395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663799, 33.752888, 45.538361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787514, 33.387203, 45.643101>,  <33.861740, 33.167793, 45.705944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787514, 33.387203, 45.643101>,  <33.663799, 33.752888, 45.538361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787514, 33.387203, 45.643101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691966, -0.027469, 0.721407,
		-0.652324, -0.404311, -0.641097,
		0.309283, -0.914209, 0.261851,
		33.880299, 33.112942, 45.721657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103466, 33.298328, 45.781013>,  <33.663799, 33.752888, 45.538361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103466, 33.298328, 45.781013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.410564, 33.080311, 45.915771>,  <33.594822, 32.949501, 45.996624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.410564, 33.080311, 45.915771>,  <33.103466, 33.298328, 45.781013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410564, 33.080311, 45.915771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500427, -0.181675, 0.846503,
		-0.400178, -0.818486, -0.412235,
		0.767744, -0.545045, 0.336891,
		33.640888, 32.916798, 46.016838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889160, 32.538303, 45.946709>,  <33.103466, 33.298328, 45.781013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889160, 32.538303, 45.946709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222076, 32.615128, 46.154709>,  <33.421825, 32.661221, 46.279510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222076, 32.615128, 46.154709>,  <32.889160, 32.538303, 45.946709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222076, 32.615128, 46.154709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416452, -0.402492, 0.815210,
		0.365863, -0.895050, -0.255009,
		0.832293, 0.192056, 0.520002,
		33.471764, 32.672745, 46.310711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890820, 32.058918, 46.432232>,  <32.889160, 32.538303, 45.946709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890820, 32.058918, 46.432232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161598, 32.303207, 46.596554>,  <33.324066, 32.449783, 46.695145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161598, 32.303207, 46.596554>,  <32.890820, 32.058918, 46.432232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161598, 32.303207, 46.596554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404108, -0.158093, 0.900946,
		0.615176, -0.775900, 0.139779,
		0.676945, 0.610726, 0.410802,
		33.364681, 32.486423, 46.719795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118916, 31.708055, 47.014168>,  <32.890820, 32.058918, 46.432232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118916, 31.708055, 47.014168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.237194, 32.081779, 47.093792>,  <33.308163, 32.306015, 47.141567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.237194, 32.081779, 47.093792>,  <33.118916, 31.708055, 47.014168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237194, 32.081779, 47.093792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332056, -0.094853, 0.938478,
		0.895713, -0.343604, 0.282196,
		0.295698, 0.934312, 0.199057,
		33.325905, 32.362072, 47.153507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322716, 31.760313, 47.686867>,  <33.118916, 31.708055, 47.014168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322716, 31.760313, 47.686867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.248901, 32.151886, 47.651920>,  <33.204613, 32.386829, 47.630951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.248901, 32.151886, 47.651920>,  <33.322716, 31.760313, 47.686867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248901, 32.151886, 47.651920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074272, 0.074749, 0.994433,
		0.980015, 0.190000, 0.058913,
		-0.184538, 0.978934, -0.087367,
		33.193539, 32.445568, 47.625710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640385, 32.102814, 48.231403>,  <33.322716, 31.760313, 47.686867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640385, 32.102814, 48.231403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.400711, 32.400230, 48.112656>,  <33.256908, 32.578678, 48.041409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.400711, 32.400230, 48.112656>,  <33.640385, 32.102814, 48.231403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400711, 32.400230, 48.112656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045939, 0.338257, 0.939932,
		0.799293, 0.576829, -0.168520,
		-0.599183, 0.743539, -0.296866,
		33.220955, 32.623291, 48.023598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829884, 32.701481, 48.594433>,  <33.640385, 32.102814, 48.231403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829884, 32.701481, 48.594433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.463131, 32.802715, 48.470966>,  <33.243080, 32.863457, 48.396889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.463131, 32.802715, 48.470966>,  <33.829884, 32.701481, 48.594433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463131, 32.802715, 48.470966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157007, 0.482280, 0.861832,
		0.366979, 0.838662, -0.402459,
		-0.916883, 0.253086, -0.308663,
		33.188065, 32.878639, 48.378368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801701, 33.428768, 48.824821>,  <33.829884, 32.701481, 48.594433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801701, 33.428768, 48.824821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.438969, 33.263580, 48.791084>,  <33.221329, 33.164467, 48.770844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.438969, 33.263580, 48.791084>,  <33.801701, 33.428768, 48.824821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438969, 33.263580, 48.791084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215702, 0.282772, 0.934619,
		-0.362117, 0.865735, -0.345505,
		-0.906832, -0.412968, -0.084344,
		33.166920, 33.139690, 48.765781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.008141, 32.911274, 47.161541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.317413, 32.947239, 47.412651>,  <29.502977, 32.968819, 47.563316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.317413, 32.947239, 47.412651>,  <29.008141, 32.911274, 47.161541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317413, 32.947239, 47.412651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622063, 0.085070, -0.778332,
		-0.123390, 0.992309, 0.009841,
		0.773184, 0.089917, 0.627776,
		29.549368, 32.974213, 47.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338276, 33.486786, 46.909985>,  <29.008141, 32.911274, 47.161541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338276, 33.486786, 46.909985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.595394, 33.304371, 47.156185>,  <29.749666, 33.194923, 47.303905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.595394, 33.304371, 47.156185>,  <29.338276, 33.486786, 46.909985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595394, 33.304371, 47.156185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719951, 0.085163, -0.688780,
		0.261692, 0.885876, 0.383067,
		0.642797, -0.456038, 0.615502,
		29.788233, 33.167561, 47.340836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921276, 33.834568, 46.904808>,  <29.338276, 33.486786, 46.909985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921276, 33.834568, 46.904808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.026649, 33.464466, 47.013992>,  <30.089874, 33.242405, 47.079502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.026649, 33.464466, 47.013992>,  <29.921276, 33.834568, 46.904808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026649, 33.464466, 47.013992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752486, 0.020036, -0.658303,
		0.603629, 0.378818, 0.701519,
		0.263433, -0.925254, 0.272961,
		30.105679, 33.186890, 47.095882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556618, 33.845711, 46.694557>,  <29.921276, 33.834568, 46.904808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556618, 33.845711, 46.694557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491945, 33.452473, 46.728943>,  <30.453142, 33.216530, 46.749573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491945, 33.452473, 46.728943>,  <30.556618, 33.845711, 46.694557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491945, 33.452473, 46.728943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633984, -0.170232, -0.754377,
		0.756256, -0.067468, 0.650788,
		-0.161682, -0.983092, 0.085965,
		30.443441, 33.157547, 46.754734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223085, 33.573856, 46.831669>,  <30.556618, 33.845711, 46.694557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223085, 33.573856, 46.831669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.002939, 33.280376, 46.672279>,  <30.870852, 33.104286, 46.576645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.002939, 33.280376, 46.672279>,  <31.223085, 33.573856, 46.831669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002939, 33.280376, 46.672279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720718, -0.176547, -0.670371,
		0.421503, -0.656135, 0.625958,
		-0.550365, -0.733702, -0.398473,
		30.837830, 33.060265, 46.552738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684025, 33.065334, 46.547890>,  <31.223085, 33.573856, 46.831669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684025, 33.065334, 46.547890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.335850, 32.958687, 46.382359>,  <31.126945, 32.894699, 46.283039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.335850, 32.958687, 46.382359>,  <31.684025, 33.065334, 46.547890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335850, 32.958687, 46.382359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468642, -0.191432, -0.862396,
		0.150715, -0.944598, 0.291581,
		-0.870436, -0.266623, -0.413827,
		31.074718, 32.878700, 46.258209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899088, 32.684105, 46.018108>,  <31.684025, 33.065334, 46.547890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899088, 32.684105, 46.018108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514503, 32.698071, 45.909019>,  <31.283752, 32.706448, 45.843567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514503, 32.698071, 45.909019>,  <31.899088, 32.684105, 46.018108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514503, 32.698071, 45.909019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270269, -0.062165, -0.960776,
		-0.050484, -0.997456, 0.050337,
		-0.961461, 0.034900, -0.272720,
		31.226065, 32.708542, 45.827202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718767, 31.934752, 45.618923>,  <31.899088, 32.684105, 46.018108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718767, 31.934752, 45.618923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492229, 32.258598, 45.557247>,  <31.356308, 32.452908, 45.520241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.492229, 32.258598, 45.557247>,  <31.718767, 31.934752, 45.618923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492229, 32.258598, 45.557247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197323, -0.048447, -0.979141,
		-0.800200, -0.584954, -0.132319,
		-0.566342, 0.809618, -0.154192,
		31.322327, 32.501484, 45.510990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503084, 31.775305, 44.929081>,  <31.718767, 31.934752, 45.618923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503084, 31.775305, 44.929081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416271, 32.161274, 44.988171>,  <31.364183, 32.392857, 45.023624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416271, 32.161274, 44.988171>,  <31.503084, 31.775305, 44.929081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416271, 32.161274, 44.988171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103193, 0.173160, -0.979473,
		-0.970695, -0.197331, -0.137154,
		-0.217030, 0.964923, 0.147722,
		31.351162, 32.450752, 45.032486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978828, 31.920307, 44.531937>,  <31.503084, 31.775305, 44.929081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978828, 31.920307, 44.531937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.176760, 32.261185, 44.599949>,  <31.295519, 32.465710, 44.640759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.176760, 32.261185, 44.599949>,  <30.978828, 31.920307, 44.531937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176760, 32.261185, 44.599949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005953, 0.198988, -0.979984,
		-0.868969, 0.483914, 0.103539,
		0.494830, 0.852192, 0.170034,
		31.325209, 32.516842, 44.650959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674398, 32.355797, 43.949333>,  <30.978828, 31.920307, 44.531937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674398, 32.355797, 43.949333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999201, 32.535046, 44.098911>,  <31.194082, 32.642593, 44.188660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999201, 32.535046, 44.098911>,  <30.674398, 32.355797, 43.949333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999201, 32.535046, 44.098911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244032, 0.321342, -0.914980,
		-0.530184, 0.834224, 0.151576,
		0.812006, 0.448118, 0.373947,
		31.242804, 32.669479, 44.211094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545849, 33.113152, 43.810596>,  <30.674398, 32.355797, 43.949333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545849, 33.113152, 43.810596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934296, 33.019989, 43.831329>,  <31.167364, 32.964092, 43.843769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.934296, 33.019989, 43.831329>,  <30.545849, 33.113152, 43.810596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934296, 33.019989, 43.831329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101949, 0.208611, -0.972671,
		0.215727, 0.949861, 0.226330,
		0.971117, -0.232906, 0.051834,
		31.225632, 32.950119, 43.846878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952057, 33.607803, 43.689690>,  <30.545849, 33.113152, 43.810596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952057, 33.607803, 43.689690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213896, 33.319271, 43.599190>,  <31.371000, 33.146152, 43.544891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213896, 33.319271, 43.599190>,  <30.952057, 33.607803, 43.689690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213896, 33.319271, 43.599190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019233, 0.315070, -0.948874,
		0.755732, 0.616780, 0.220117,
		0.654599, -0.721328, -0.226246,
		31.410275, 33.102871, 43.531315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467915, 33.897659, 43.359707>,  <30.952057, 33.607803, 43.689690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467915, 33.897659, 43.359707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.515259, 33.518333, 43.241936>,  <31.543665, 33.290737, 43.171272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.515259, 33.518333, 43.241936>,  <31.467915, 33.897659, 43.359707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515259, 33.518333, 43.241936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013518, 0.294949, -0.955417,
		0.992878, 0.117066, 0.022092,
		0.118363, -0.948314, -0.294431,
		31.550768, 33.233841, 43.153606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081120, 34.126568, 43.631859>,  <31.467915, 33.897659, 43.359707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081120, 34.126568, 43.631859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269611, 34.448784, 43.775555>,  <32.382706, 34.642113, 43.861771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269611, 34.448784, 43.775555>,  <32.081120, 34.126568, 43.631859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269611, 34.448784, 43.775555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529612, -0.067276, 0.845568,
		0.705307, -0.588710, 0.394921,
		0.471226, 0.805540, 0.359238,
		32.410980, 34.690445, 43.883327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436588, 34.046154, 44.229332>,  <32.081120, 34.126568, 43.631859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436588, 34.046154, 44.229332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365585, 34.437450, 44.272285>,  <32.322983, 34.672230, 44.298058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365585, 34.437450, 44.272285>,  <32.436588, 34.046154, 44.229332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365585, 34.437450, 44.272285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506821, -0.184401, 0.842098,
		0.843578, 0.095056, 0.528527,
		-0.177507, 0.978244, 0.107380,
		32.312332, 34.730923, 44.304501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695370, 34.224972, 44.983471>,  <32.436588, 34.046154, 44.229332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695370, 34.224972, 44.983471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463154, 34.520142, 44.845806>,  <32.323826, 34.697243, 44.763206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463154, 34.520142, 44.845806>,  <32.695370, 34.224972, 44.983471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463154, 34.520142, 44.845806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468237, 0.043240, 0.882545,
		0.666132, 0.673498, 0.320421,
		-0.580537, 0.737924, -0.344160,
		32.288994, 34.741520, 44.742558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737953, 34.722507, 45.473022>,  <32.695370, 34.224972, 44.983471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737953, 34.722507, 45.473022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396648, 34.807686, 45.282612>,  <32.191864, 34.858791, 45.168365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.396648, 34.807686, 45.282612>,  <32.737953, 34.722507, 45.473022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396648, 34.807686, 45.282612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456740, 0.135347, 0.879244,
		0.251656, 0.967645, -0.018228,
		-0.853263, 0.212942, -0.476023,
		32.140671, 34.871567, 45.139805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563156, 35.415462, 45.618168>,  <32.737953, 34.722507, 45.473022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563156, 35.415462, 45.618168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229965, 35.224045, 45.507072>,  <32.030052, 35.109192, 45.440414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229965, 35.224045, 45.507072>,  <32.563156, 35.415462, 45.618168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229965, 35.224045, 45.507072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510122, 0.469797, 0.720462,
		-0.214294, 0.741811, -0.635449,
		-0.832979, -0.478547, -0.277739,
		31.980072, 35.080482, 45.423752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060352, 35.849983, 46.030354>,  <32.563156, 35.415462, 45.618168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060352, 35.849983, 46.030354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829571, 35.562973, 45.874264>,  <31.691101, 35.390766, 45.780609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.829571, 35.562973, 45.874264>,  <32.060352, 35.849983, 46.030354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829571, 35.562973, 45.874264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690778, 0.173728, 0.701887,
		-0.435831, 0.674515, -0.595887,
		-0.576955, -0.717529, -0.390224,
		31.656485, 35.347713, 45.757198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390259, 36.131771, 46.000515>,  <32.060352, 35.849983, 46.030354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390259, 36.131771, 46.000515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.364050, 35.732800, 46.012119>,  <31.348326, 35.493416, 46.019081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.364050, 35.732800, 46.012119>,  <31.390259, 36.131771, 46.000515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364050, 35.732800, 46.012119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694271, 0.066453, 0.716639,
		-0.716725, 0.026811, -0.696840,
		-0.065521, -0.997429, 0.029014,
		31.344393, 35.433571, 46.020824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634865, 35.825958, 46.014175>,  <31.390259, 36.131771, 46.000515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634865, 35.825958, 46.014175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.826807, 35.512863, 46.172699>,  <30.941973, 35.325005, 46.267815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.826807, 35.512863, 46.172699>,  <30.634865, 35.825958, 46.014175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826807, 35.512863, 46.172699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639968, -0.003281, 0.768395,
		-0.600152, -0.622343, -0.502501,
		0.479854, -0.782738, 0.396310,
		30.970762, 35.278042, 46.291592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061623, 35.487534, 46.351273>,  <30.634865, 35.825958, 46.014175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061623, 35.487534, 46.351273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396650, 35.332493, 46.505283>,  <30.597666, 35.239468, 46.597691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396650, 35.332493, 46.505283>,  <30.061623, 35.487534, 46.351273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396650, 35.332493, 46.505283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456767, -0.110152, 0.882740,
		-0.299742, -0.915222, -0.269304,
		0.837567, -0.387603, 0.385026,
		30.647921, 35.216213, 46.620792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791449, 35.028030, 46.782349>,  <30.061623, 35.487534, 46.351273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791449, 35.028030, 46.782349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153896, 35.085602, 46.941463>,  <30.371365, 35.120144, 47.036934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153896, 35.085602, 46.941463>,  <29.791449, 35.028030, 46.782349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153896, 35.085602, 46.941463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373367, -0.169965, 0.911981,
		0.198868, -0.974883, -0.100271,
		0.906117, 0.143926, 0.397790,
		30.425732, 35.128780, 47.060799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937695, 34.448357, 47.353313>,  <29.791449, 35.028030, 46.782349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937695, 34.448357, 47.353313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.176874, 34.763298, 47.413361>,  <30.320381, 34.952263, 47.449387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.176874, 34.763298, 47.413361>,  <29.937695, 34.448357, 47.353313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176874, 34.763298, 47.413361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242121, -0.001109, 0.970245,
		0.764090, -0.616503, 0.189972,
		0.597949, 0.787351, 0.150115,
		30.356258, 34.999504, 47.458397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262251, 34.320755, 47.972858>,  <29.937695, 34.448357, 47.353313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262251, 34.320755, 47.972858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.347446, 34.711269, 47.957401>,  <30.398563, 34.945580, 47.948128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.347446, 34.711269, 47.957401>,  <30.262251, 34.320755, 47.972858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347446, 34.711269, 47.957401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093203, 0.059669, 0.993858,
		0.972599, -0.208080, 0.103702,
		0.212990, 0.976290, -0.038640,
		30.411343, 35.004158, 47.945808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656044, 34.480194, 48.525208>,  <30.262251, 34.320755, 47.972858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656044, 34.480194, 48.525208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496216, 34.835400, 48.434185>,  <30.400320, 35.048523, 48.379574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496216, 34.835400, 48.434185>,  <30.656044, 34.480194, 48.525208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496216, 34.835400, 48.434185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136421, 0.187865, 0.972674,
		0.906496, 0.419693, 0.046078,
		-0.399568, 0.888011, -0.227554,
		30.376345, 35.101803, 48.365917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000896, 34.976391, 48.942711>,  <30.656044, 34.480194, 48.525208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000896, 34.976391, 48.942711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.652699, 35.149235, 48.848461>,  <30.443779, 35.252941, 48.791912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.652699, 35.149235, 48.848461>,  <31.000896, 34.976391, 48.942711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652699, 35.149235, 48.848461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173018, 0.179517, 0.968421,
		0.460760, 0.883774, -0.081506,
		-0.870497, 0.432108, -0.235623,
		30.391550, 35.278866, 48.777775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325314, 35.586838, 48.802967>,  <31.000896, 34.976391, 48.942711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325314, 35.586838, 48.802967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682980, 35.666416, 48.963409>,  <31.897579, 35.714161, 49.059673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682980, 35.666416, 48.963409>,  <31.325314, 35.586838, 48.802967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682980, 35.666416, 48.963409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393241, 0.079381, -0.916002,
		-0.214073, 0.976791, -0.007253,
		0.894167, 0.198943, 0.401107,
		31.951229, 35.726101, 49.083740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554283, 36.136253, 48.449127>,  <31.325314, 35.586838, 48.802967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554283, 36.136253, 48.449127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886988, 35.974678, 48.601448>,  <32.086609, 35.877735, 48.692841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886988, 35.974678, 48.601448>,  <31.554283, 36.136253, 48.449127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886988, 35.974678, 48.601448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481627, 0.183960, -0.856851,
		0.276060, 0.896100, 0.347558,
		0.831761, -0.403936, 0.380802,
		32.136517, 35.853497, 48.715687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215515, 36.604408, 48.147770>,  <31.554283, 36.136253, 48.449127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215515, 36.604408, 48.147770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391350, 36.273872, 48.288578>,  <32.496849, 36.075550, 48.373062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391350, 36.273872, 48.288578>,  <32.215515, 36.604408, 48.147770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391350, 36.273872, 48.288578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537448, -0.072026, -0.840215,
		0.719661, 0.558541, 0.412455,
		0.439587, -0.826344, 0.352022,
		32.523228, 36.025970, 48.394184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929768, 36.759624, 48.019749>,  <32.215515, 36.604408, 48.147770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929768, 36.759624, 48.019749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886147, 36.366661, 48.080379>,  <32.859974, 36.130882, 48.116756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886147, 36.366661, 48.080379>,  <32.929768, 36.759624, 48.019749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886147, 36.366661, 48.080379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647029, -0.185910, -0.739453,
		0.754627, 0.017436, 0.655923,
		-0.109050, -0.982412, 0.151575,
		32.853432, 36.071938, 48.125851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609951, 36.591286, 48.156040>,  <32.929768, 36.759624, 48.019749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609951, 36.591286, 48.156040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402653, 36.273766, 48.028732>,  <33.278275, 36.083252, 47.952347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402653, 36.273766, 48.028732>,  <33.609951, 36.591286, 48.156040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402653, 36.273766, 48.028732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697965, -0.177503, -0.693785,
		0.494235, -0.581694, 0.646037,
		-0.518244, -0.793804, -0.318273,
		33.247181, 36.035625, 47.933250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149315, 36.102097, 48.033005>,  <33.609951, 36.591286, 48.156040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149315, 36.102097, 48.033005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829796, 35.958714, 47.839745>,  <33.638084, 35.872684, 47.723789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829796, 35.958714, 47.839745>,  <34.149315, 36.102097, 48.033005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829796, 35.958714, 47.839745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587409, -0.291280, -0.755054,
		0.129924, -0.886940, 0.443235,
		-0.798793, -0.358460, -0.483152,
		33.590157, 35.851177, 47.694798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387028, 35.600342, 47.699905>,  <34.149315, 36.102097, 48.033005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387028, 35.600342, 47.699905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046467, 35.690804, 47.510605>,  <33.842129, 35.745079, 47.397026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046467, 35.690804, 47.510605>,  <34.387028, 35.600342, 47.699905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046467, 35.690804, 47.510605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480140, -0.027140, -0.876772,
		-0.211126, -0.973714, -0.085476,
		-0.851405, 0.226150, -0.473249,
		33.791046, 35.758648, 47.368629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370308, 35.126904, 47.112076>,  <34.387028, 35.600342, 47.699905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370308, 35.126904, 47.112076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113293, 35.414223, 47.005348>,  <33.959084, 35.586617, 46.941311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113293, 35.414223, 47.005348>,  <34.370308, 35.126904, 47.112076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113293, 35.414223, 47.005348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534185, 0.170256, -0.828046,
		-0.549360, -0.674577, -0.493102,
		-0.642534, 0.718303, -0.266817,
		33.920532, 35.629715, 46.925304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252876, 34.916706, 46.361076>,  <34.370308, 35.126904, 47.112076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252876, 34.916706, 46.361076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188698, 35.302895, 46.443169>,  <34.150192, 35.534607, 46.492424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188698, 35.302895, 46.443169>,  <34.252876, 34.916706, 46.361076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188698, 35.302895, 46.443169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447838, 0.256500, -0.856533,
		-0.879601, -0.045517, -0.473529,
		-0.160447, 0.965472, 0.205234,
		34.140564, 35.592537, 46.504738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924866, 35.319984, 45.755924>,  <34.252876, 34.916706, 46.361076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924866, 35.319984, 45.755924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123329, 35.593964, 45.969341>,  <34.242409, 35.758350, 46.097389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123329, 35.593964, 45.969341>,  <33.924866, 35.319984, 45.755924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123329, 35.593964, 45.969341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371972, 0.387563, -0.843464,
		-0.784512, 0.616958, -0.062488,
		0.496163, 0.684951, 0.533539,
		34.272179, 35.799450, 46.129402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902832, 36.025803, 45.415051>,  <33.924866, 35.319984, 45.755924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902832, 36.025803, 45.415051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206062, 36.051605, 45.674637>,  <34.388000, 36.067085, 45.830387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.206062, 36.051605, 45.674637>,  <33.902832, 36.025803, 45.415051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206062, 36.051605, 45.674637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566016, 0.429220, -0.703844,
		-0.323950, 0.900894, 0.288872,
		0.758078, 0.064504, 0.648966,
		34.433487, 36.070957, 45.869328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148773, 36.695759, 45.287621>,  <33.902832, 36.025803, 45.415051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148773, 36.695759, 45.287621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.447422, 36.488125, 45.454041>,  <34.626614, 36.363544, 45.553894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.447422, 36.488125, 45.454041>,  <34.148773, 36.695759, 45.287621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447422, 36.488125, 45.454041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581695, 0.205975, -0.786896,
		0.322769, 0.829533, 0.455735,
		0.746626, -0.519085, 0.416053,
		34.671410, 36.332401, 45.578857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831524, 37.069252, 45.261383>,  <34.148773, 36.695759, 45.287621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831524, 37.069252, 45.261383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921341, 36.680115, 45.283894>,  <34.975231, 36.446632, 45.297398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921341, 36.680115, 45.283894>,  <34.831524, 37.069252, 45.261383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921341, 36.680115, 45.283894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569234, 0.084074, -0.817866,
		0.790921, 0.215676, 0.572650,
		0.224539, -0.972839, 0.056274,
		34.988701, 36.388264, 45.300777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511044, 37.105133, 45.129810>,  <34.831524, 37.069252, 45.261383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511044, 37.105133, 45.129810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426579, 36.715004, 45.104031>,  <35.375900, 36.480927, 45.088562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.426579, 36.715004, 45.104031>,  <35.511044, 37.105133, 45.129810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426579, 36.715004, 45.104031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657692, -0.093000, -0.747524,
		0.723084, -0.200238, 0.661101,
		-0.211165, -0.975323, -0.064448,
		35.363228, 36.422405, 45.084698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.363783, 26.868299, 34.191254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.585297, 26.677183, 34.464027>,  <25.718204, 26.562513, 34.627693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.585297, 26.677183, 34.464027>,  <25.363783, 26.868299, 34.191254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585297, 26.677183, 34.464027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550515, 0.824540, 0.130641,
		-0.624704, 0.303070, 0.719648,
		0.553786, -0.477789, 0.681938,
		25.751432, 26.533846, 34.668610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299906, 27.273579, 34.801414>,  <25.363783, 26.868299, 34.191254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299906, 27.273579, 34.801414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.630190, 27.057875, 34.867630>,  <25.828360, 26.928453, 34.907360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.630190, 27.057875, 34.867630>,  <25.299906, 27.273579, 34.801414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630190, 27.057875, 34.867630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521876, 0.841670, 0.138696,
		-0.214123, -0.028132, 0.976402,
		0.825710, -0.539259, 0.165540,
		25.877903, 26.896097, 34.917294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460724, 27.546881, 35.451992>,  <25.299906, 27.273579, 34.801414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460724, 27.546881, 35.451992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801828, 27.386772, 35.317783>,  <26.006491, 27.290707, 35.237259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801828, 27.386772, 35.317783>,  <25.460724, 27.546881, 35.451992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801828, 27.386772, 35.317783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476471, 0.859327, 0.185828,
		0.213944, -0.318335, 0.923521,
		0.852762, -0.400274, -0.335526,
		26.057657, 27.266689, 35.217125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949629, 27.719662, 35.941910>,  <25.460724, 27.546881, 35.451992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949629, 27.719662, 35.941910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.163666, 27.628477, 35.616528>,  <26.292088, 27.573767, 35.421299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.163666, 27.628477, 35.616528>,  <25.949629, 27.719662, 35.941910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163666, 27.628477, 35.616528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511489, 0.853775, 0.097196,
		0.672351, -0.468082, 0.573448,
		0.535092, -0.227963, -0.813456,
		26.324194, 27.560089, 35.372490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572296, 27.973488, 36.153931>,  <25.949629, 27.719662, 35.941910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572296, 27.973488, 36.153931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567354, 27.945534, 35.754940>,  <26.564390, 27.928761, 35.515545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567354, 27.945534, 35.754940>,  <26.572296, 27.973488, 36.153931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567354, 27.945534, 35.754940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390030, 0.918201, -0.069163,
		0.920719, -0.389901, 0.015915,
		-0.012354, -0.069887, -0.997478,
		26.563648, 27.924568, 35.455696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202986, 28.228161, 35.932434>,  <26.572296, 27.973488, 36.153931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202986, 28.228161, 35.932434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972775, 28.268417, 35.607807>,  <26.834648, 28.292570, 35.413033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972775, 28.268417, 35.607807>,  <27.202986, 28.228161, 35.932434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972775, 28.268417, 35.607807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320185, 0.940902, -0.110382,
		0.752496, -0.323379, -0.573738,
		-0.575527, 0.100640, -0.811567,
		26.800117, 28.298609, 35.364338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684021, 28.512180, 35.502483>,  <27.202986, 28.228161, 35.932434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684021, 28.512180, 35.502483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322996, 28.589012, 35.348347>,  <27.106382, 28.635111, 35.255863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322996, 28.589012, 35.348347>,  <27.684021, 28.512180, 35.502483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322996, 28.589012, 35.348347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303708, 0.918405, -0.253561,
		0.305198, -0.345886, -0.887253,
		-0.902561, 0.192079, -0.385344,
		27.052227, 28.646635, 35.232742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821981, 29.019596, 34.976692>,  <27.684021, 28.512180, 35.502483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821981, 29.019596, 34.976692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427404, 29.056446, 35.031017>,  <27.190659, 29.078556, 35.063614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427404, 29.056446, 35.031017>,  <27.821981, 29.019596, 34.976692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427404, 29.056446, 35.031017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070440, 0.985141, -0.156636,
		-0.148226, -0.144946, -0.978274,
		-0.986442, 0.092127, 0.135813,
		27.131472, 29.084084, 35.071762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561832, 29.300655, 34.415104>,  <27.821981, 29.019596, 34.976692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561832, 29.300655, 34.415104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.292385, 29.395842, 34.694992>,  <27.130716, 29.452953, 34.862926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.292385, 29.395842, 34.694992>,  <27.561832, 29.300655, 34.415104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292385, 29.395842, 34.694992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245268, 0.965072, -0.092087,
		-0.697198, 0.109589, -0.708452,
		-0.673616, 0.237963, 0.699725,
		27.090300, 29.467230, 34.904911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333643, 29.942936, 34.145897>,  <27.561832, 29.300655, 34.415104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333643, 29.942936, 34.145897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225346, 29.939238, 34.530941>,  <27.160368, 29.937019, 34.761967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225346, 29.939238, 34.530941>,  <27.333643, 29.942936, 34.145897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225346, 29.939238, 34.530941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163185, 0.985041, 0.055357,
		-0.948720, 0.172071, -0.265183,
		-0.270741, -0.009244, 0.962608,
		27.144123, 29.936464, 34.819725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725269, 30.505970, 34.287888>,  <27.333643, 29.942936, 34.145897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725269, 30.505970, 34.287888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.923716, 30.398251, 34.618061>,  <27.042784, 30.333618, 34.816166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.923716, 30.398251, 34.618061>,  <26.725269, 30.505970, 34.287888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923716, 30.398251, 34.618061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409159, 0.911020, 0.051303,
		-0.765805, 0.312283, 0.562158,
		0.496116, -0.269300, 0.825437,
		27.072550, 30.317461, 34.865692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678564, 31.109053, 34.719799>,  <26.725269, 30.505970, 34.287888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678564, 31.109053, 34.719799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955317, 30.906601, 34.925762>,  <27.121368, 30.785130, 35.049339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955317, 30.906601, 34.925762>,  <26.678564, 31.109053, 34.719799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955317, 30.906601, 34.925762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365375, 0.860544, 0.354917,
		-0.622738, -0.057424, 0.780320,
		0.691880, -0.506130, 0.514912,
		27.162880, 30.754763, 35.080235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710487, 31.376551, 35.434238>,  <26.678564, 31.109053, 34.719799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710487, 31.376551, 35.434238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061798, 31.216497, 35.329533>,  <27.272585, 31.120464, 35.266708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061798, 31.216497, 35.329533>,  <26.710487, 31.376551, 35.434238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061798, 31.216497, 35.329533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477021, 0.770885, 0.422122,
		0.032886, -0.495608, 0.867923,
		0.878277, -0.400136, -0.261767,
		27.325281, 31.096457, 35.251003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134069, 31.537230, 36.067822>,  <26.710487, 31.376551, 35.434238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134069, 31.537230, 36.067822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372272, 31.444208, 35.760239>,  <27.515194, 31.388395, 35.575691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372272, 31.444208, 35.760239>,  <27.134069, 31.537230, 36.067822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372272, 31.444208, 35.760239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627501, 0.732318, 0.264485,
		0.501613, -0.640022, 0.582028,
		0.595506, -0.232554, -0.768955,
		27.550924, 31.374441, 35.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805767, 31.771465, 36.270660>,  <27.134069, 31.537230, 36.067822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805767, 31.771465, 36.270660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854616, 31.698736, 35.880371>,  <27.883926, 31.655100, 35.646198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854616, 31.698736, 35.880371>,  <27.805767, 31.771465, 36.270660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854616, 31.698736, 35.880371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525004, 0.846117, -0.091960,
		0.842292, -0.501027, 0.198787,
		0.122122, -0.181821, -0.975719,
		27.891253, 31.644190, 35.587654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472818, 31.780956, 36.182381>,  <27.805767, 31.771465, 36.270660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472818, 31.780956, 36.182381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295235, 31.879408, 35.837749>,  <28.188684, 31.938478, 35.630970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295235, 31.879408, 35.837749>,  <28.472818, 31.780956, 36.182381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295235, 31.879408, 35.837749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482699, 0.875785, 0.001458,
		0.754917, -0.415237, -0.507621,
		-0.443961, 0.246129, -0.861579,
		28.162046, 31.953247, 35.579277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923338, 32.158302, 35.855740>,  <28.472818, 31.780956, 36.182381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923338, 32.158302, 35.855740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617146, 32.281563, 35.629791>,  <28.433430, 32.355518, 35.494221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617146, 32.281563, 35.629791>,  <28.923338, 32.158302, 35.855740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617146, 32.281563, 35.629791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409842, 0.910258, -0.058829,
		0.496052, -0.276541, -0.823078,
		-0.765482, 0.308149, -0.564873,
		28.387501, 32.374008, 35.460331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148674, 32.403984, 35.162552>,  <28.923338, 32.158302, 35.855740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148674, 32.403984, 35.162552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803108, 32.590073, 35.239723>,  <28.595770, 32.701725, 35.286026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803108, 32.590073, 35.239723>,  <29.148674, 32.403984, 35.162552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803108, 32.590073, 35.239723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438071, 0.883119, -0.167912,
		-0.248492, -0.060547, -0.966740,
		-0.863913, 0.465226, 0.192924,
		28.543934, 32.729641, 35.297600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708891, 31.973053, 35.416180>,  <29.148674, 32.403984, 35.162552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708891, 31.973053, 35.416180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097013, 31.970371, 35.512894>,  <30.329887, 31.968763, 35.570923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097013, 31.970371, 35.512894>,  <29.708891, 31.973053, 35.416180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097013, 31.970371, 35.512894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145044, -0.783829, -0.603800,
		0.193568, 0.620941, -0.759582,
		0.970306, -0.006703, 0.241788,
		30.388105, 31.968361, 35.585430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143871, 32.142975, 34.819836>,  <29.708891, 31.973053, 35.416180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143871, 32.142975, 34.819836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290468, 31.874666, 35.077751>,  <30.378428, 31.713682, 35.232502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290468, 31.874666, 35.077751>,  <30.143871, 32.142975, 34.819836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290468, 31.874666, 35.077751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055989, -0.707652, -0.704339,
		0.928734, 0.222035, -0.296906,
		0.366494, -0.670767, 0.644789,
		30.400415, 31.673435, 35.271187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713289, 31.769587, 34.439369>,  <30.143871, 32.142975, 34.819836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713289, 31.769587, 34.439369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601185, 31.542210, 34.748775>,  <30.533922, 31.405785, 34.934418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601185, 31.542210, 34.748775>,  <30.713289, 31.769587, 34.439369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601185, 31.542210, 34.748775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134365, -0.774647, -0.617955,
		0.950473, -0.277122, 0.140726,
		-0.280262, -0.568441, 0.773517,
		30.517107, 31.371677, 34.980831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241901, 31.197302, 34.456848>,  <30.713289, 31.769587, 34.439369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241901, 31.197302, 34.456848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910149, 31.075968, 34.644516>,  <30.711098, 31.003168, 34.757114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910149, 31.075968, 34.644516>,  <31.241901, 31.197302, 34.456848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910149, 31.075968, 34.644516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043591, -0.802076, -0.595629,
		0.556982, -0.514454, 0.652003,
		-0.829380, -0.303333, 0.469168,
		30.661335, 30.984968, 34.785267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277674, 30.448893, 34.601334>,  <31.241901, 31.197302, 34.456848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277674, 30.448893, 34.601334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887737, 30.536453, 34.584534>,  <30.653774, 30.588989, 34.574455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887737, 30.536453, 34.584534>,  <31.277674, 30.448893, 34.601334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887737, 30.536453, 34.584534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160673, -0.820723, -0.548268,
		-0.154483, -0.527728, 0.835248,
		-0.974843, 0.218900, -0.041996,
		30.595284, 30.602123, 34.571934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976372, 29.675690, 34.393272>,  <31.277674, 30.448893, 34.601334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976372, 29.675690, 34.393272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674500, 29.931395, 34.334213>,  <30.493376, 30.084818, 34.298779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674500, 29.931395, 34.334213>,  <30.976372, 29.675690, 34.393272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674500, 29.931395, 34.334213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466514, -0.681088, -0.564344,
		-0.461327, -0.357019, 0.812229,
		-0.754680, 0.639263, -0.147650,
		30.448095, 30.123173, 34.289917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331667, 29.313976, 34.516060>,  <30.976372, 29.675690, 34.393272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331667, 29.313976, 34.516060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239700, 29.622591, 34.278786>,  <30.184521, 29.807760, 34.136421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239700, 29.622591, 34.278786>,  <30.331667, 29.313976, 34.516060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239700, 29.622591, 34.278786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499378, -0.616684, -0.608540,
		-0.835320, 0.156312, 0.527074,
		-0.229916, 0.771535, -0.593187,
		30.170725, 29.854052, 34.100830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700804, 29.112385, 34.238003>,  <30.331667, 29.313976, 34.516060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700804, 29.112385, 34.238003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803572, 29.411158, 33.992699>,  <29.865232, 29.590422, 33.845516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803572, 29.411158, 33.992699>,  <29.700804, 29.112385, 34.238003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803572, 29.411158, 33.992699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651423, -0.334896, -0.680803,
		-0.713891, 0.574401, 0.400528,
		0.256919, 0.746932, -0.613258,
		29.880648, 29.635237, 33.808720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024004, 29.455450, 33.902199>,  <29.700804, 29.112385, 34.238003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024004, 29.455450, 33.902199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.335459, 29.538950, 33.665504>,  <29.522331, 29.589050, 33.523487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.335459, 29.538950, 33.665504>,  <29.024004, 29.455450, 33.902199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335459, 29.538950, 33.665504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511162, -0.335917, -0.791121,
		-0.363921, 0.918467, -0.154851,
		0.778636, 0.208752, -0.591733,
		29.569050, 29.601576, 33.487984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754274, 29.750250, 33.370205>,  <29.024004, 29.455450, 33.902199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754274, 29.750250, 33.370205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110899, 29.625483, 33.238861>,  <29.324875, 29.550623, 33.160053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110899, 29.625483, 33.238861>,  <28.754274, 29.750250, 33.370205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110899, 29.625483, 33.238861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417518, -0.285150, -0.862768,
		0.175479, 0.906310, -0.384460,
		0.891564, -0.311917, -0.328363,
		29.378368, 29.531908, 33.140350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792269, 29.925314, 32.665859>,  <28.754274, 29.750250, 33.370205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792269, 29.925314, 32.665859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066072, 29.635555, 32.698589>,  <29.230354, 29.461700, 32.718227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066072, 29.635555, 32.698589>,  <28.792269, 29.925314, 32.665859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066072, 29.635555, 32.698589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421034, -0.484472, -0.766823,
		0.595129, 0.490444, -0.636622,
		0.684509, -0.724397, 0.081830,
		29.271425, 29.418236, 32.723137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028416, 29.806145, 31.943970>,  <28.792269, 29.925314, 32.665859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028416, 29.806145, 31.943970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139086, 29.498264, 32.174103>,  <29.205488, 29.313536, 32.312183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139086, 29.498264, 32.174103>,  <29.028416, 29.806145, 31.943970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139086, 29.498264, 32.174103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367993, -0.637931, -0.676481,
		0.887712, -0.024554, -0.459744,
		0.276674, -0.769702, 0.575335,
		29.222088, 29.267353, 32.346703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340832, 29.316587, 31.474613>,  <29.028416, 29.806145, 31.943970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340832, 29.316587, 31.474613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217398, 29.121588, 31.801323>,  <29.143337, 29.004587, 31.997349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217398, 29.121588, 31.801323>,  <29.340832, 29.316587, 31.474613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217398, 29.121588, 31.801323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412231, -0.705309, -0.576719,
		0.857228, -0.514666, 0.016686,
		-0.308587, -0.487501, 0.816772,
		29.124823, 28.975338, 32.046356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529762, 28.626968, 31.312151>,  <29.340832, 29.316587, 31.474613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529762, 28.626968, 31.312151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238342, 28.627756, 31.586147>,  <29.063490, 28.628229, 31.750546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238342, 28.627756, 31.586147>,  <29.529762, 28.626968, 31.312151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238342, 28.627756, 31.586147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498459, -0.687436, -0.528177,
		0.469848, -0.726243, 0.501812,
		-0.728548, 0.001970, 0.684992,
		29.019777, 28.628347, 31.791645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293463, 27.931278, 31.260323>,  <29.529762, 28.626968, 31.312151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293463, 27.931278, 31.260323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001057, 28.124088, 31.453514>,  <28.825613, 28.239775, 31.569429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.001057, 28.124088, 31.453514>,  <29.293463, 27.931278, 31.260323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001057, 28.124088, 31.453514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672043, -0.631197, -0.387230,
		0.118200, -0.607654, 0.785357,
		-0.731017, 0.482024, 0.482977,
		28.781752, 28.268696, 31.598408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833075, 27.486000, 31.366987>,  <29.293463, 27.931278, 31.260323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833075, 27.486000, 31.366987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.591692, 27.794817, 31.446777>,  <28.446863, 27.980106, 31.494652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.591692, 27.794817, 31.446777>,  <28.833075, 27.486000, 31.366987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591692, 27.794817, 31.446777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765228, -0.490362, -0.417098,
		-0.224202, -0.404344, 0.886701,
		-0.603456, 0.772043, 0.199475,
		28.410656, 28.026430, 31.506620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306751, 27.194693, 31.703505>,  <28.833075, 27.486000, 31.366987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306751, 27.194693, 31.703505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157759, 27.535780, 31.557009>,  <28.068363, 27.740433, 31.469110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157759, 27.535780, 31.557009>,  <28.306751, 27.194693, 31.703505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157759, 27.535780, 31.557009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837253, -0.479005, -0.263746,
		-0.400332, 0.208396, 0.892360,
		-0.372481, 0.852717, -0.366241,
		28.046015, 27.791595, 31.447136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651270, 27.170832, 31.896778>,  <28.306751, 27.194693, 31.703505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651270, 27.170832, 31.896778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639069, 27.440109, 31.601244>,  <27.631748, 27.601675, 31.423923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639069, 27.440109, 31.601244>,  <27.651270, 27.170832, 31.896778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639069, 27.440109, 31.601244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823150, -0.436233, -0.363491,
		-0.567005, 0.597085, 0.567446,
		-0.030504, 0.673194, -0.738836,
		27.629917, 27.642067, 31.379593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980492, 27.329643, 31.883623>,  <27.651270, 27.170832, 31.896778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980492, 27.329643, 31.883623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115807, 27.440224, 31.523815>,  <27.196997, 27.506573, 31.307930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.115807, 27.440224, 31.523815>,  <26.980492, 27.329643, 31.883623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115807, 27.440224, 31.523815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770140, -0.467974, -0.433457,
		-0.540782, 0.839389, 0.054597,
		0.338289, 0.276453, -0.899519,
		27.217293, 27.523159, 31.253960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392704, 27.664343, 31.497839>,  <26.980492, 27.329643, 31.883623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392704, 27.664343, 31.497839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667099, 27.552677, 31.229067>,  <26.831736, 27.485678, 31.067804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.667099, 27.552677, 31.229067>,  <26.392704, 27.664343, 31.497839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667099, 27.552677, 31.229067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718751, -0.403694, -0.566064,
		-0.113229, 0.871263, -0.477578,
		0.685986, -0.279164, -0.671931,
		26.872894, 27.468927, 31.027487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047180, 27.752834, 30.794901>,  <26.392704, 27.664343, 31.497839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047180, 27.752834, 30.794901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.352318, 27.499866, 30.741060>,  <26.535400, 27.348085, 30.708755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.352318, 27.499866, 30.741060>,  <26.047180, 27.752834, 30.794901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352318, 27.499866, 30.741060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548749, -0.523130, -0.652081,
		0.341975, 0.571297, -0.746105,
		0.762842, -0.632420, -0.134601,
		26.581171, 27.310141, 30.700680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199944, 27.757006, 30.084480>,  <26.047180, 27.752834, 30.794901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199944, 27.757006, 30.084480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386337, 27.422415, 30.199835>,  <26.498175, 27.221661, 30.269049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.386337, 27.422415, 30.199835>,  <26.199944, 27.757006, 30.084480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386337, 27.422415, 30.199835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389705, -0.486654, -0.781855,
		0.794347, 0.251947, -0.552752,
		0.465985, -0.836475, 0.288387,
		26.526133, 27.171473, 30.286350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512983, 27.475578, 29.440872>,  <26.199944, 27.757006, 30.084480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512983, 27.475578, 29.440872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443275, 27.189253, 29.711349>,  <26.401451, 27.017458, 29.873636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443275, 27.189253, 29.711349>,  <26.512983, 27.475578, 29.440872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443275, 27.189253, 29.711349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621662, -0.452574, -0.639307,
		0.763653, -0.531776, -0.366126,
		-0.174269, -0.715816, 0.676194,
		26.390995, 26.974508, 29.914207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670599, 26.722673, 29.211140>,  <26.512983, 27.475578, 29.440872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670599, 26.722673, 29.211140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.388330, 26.761467, 29.491888>,  <26.218969, 26.784744, 29.660337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.388330, 26.761467, 29.491888>,  <26.670599, 26.722673, 29.211140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388330, 26.761467, 29.491888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647611, -0.490159, -0.583390,
		0.287447, -0.866220, 0.408701,
		-0.705673, 0.096985, 0.701869,
		26.176628, 26.790562, 29.702448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.377899, 34.015182, 49.129837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166283, 33.676712, 49.104202>,  <33.039310, 33.473629, 49.088821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166283, 33.676712, 49.104202>,  <33.377899, 34.015182, 49.129837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166283, 33.676712, 49.104202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430094, 0.202266, 0.879834,
		-0.731528, 0.493034, -0.470940,
		-0.529043, -0.846171, -0.064087,
		33.007568, 33.422859, 49.084976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964703, 34.112499, 49.696781>,  <33.377899, 34.015182, 49.129837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964703, 34.112499, 49.696781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870617, 33.734352, 49.606487>,  <32.814167, 33.507465, 49.552311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.870617, 33.734352, 49.606487>,  <32.964703, 34.112499, 49.696781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870617, 33.734352, 49.606487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358987, -0.131327, 0.924057,
		-0.903218, 0.298387, -0.308484,
		-0.235214, -0.945367, -0.225734,
		32.800053, 33.450741, 49.538769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233360, 33.974926, 49.965706>,  <32.964703, 34.112499, 49.696781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233360, 33.974926, 49.965706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.448696, 33.637836, 49.964184>,  <32.577896, 33.435585, 49.963272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.448696, 33.637836, 49.964184>,  <32.233360, 33.974926, 49.965706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448696, 33.637836, 49.964184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203394, -0.134305, 0.969842,
		-0.817818, -0.521327, -0.243705,
		0.538336, -0.842722, -0.003802,
		32.610195, 33.385021, 49.963043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864895, 33.488567, 50.315094>,  <32.233360, 33.974926, 49.965706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864895, 33.488567, 50.315094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245152, 33.365688, 50.332584>,  <32.473305, 33.291962, 50.343079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245152, 33.365688, 50.332584>,  <31.864895, 33.488567, 50.315094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245152, 33.365688, 50.332584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096859, -0.159916, 0.982367,
		-0.294795, -0.938111, -0.181778,
		0.950639, -0.307203, 0.043722,
		32.530342, 33.273529, 50.345699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910398, 33.098854, 50.997322>,  <31.864895, 33.488567, 50.315094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910398, 33.098854, 50.997322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290699, 33.145706, 50.882534>,  <32.518879, 33.173817, 50.813660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290699, 33.145706, 50.882534>,  <31.910398, 33.098854, 50.997322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290699, 33.145706, 50.882534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306943, -0.226944, 0.924274,
		0.043138, -0.966838, -0.251721,
		0.950750, 0.117136, -0.286974,
		32.575924, 33.180847, 50.796440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260445, 32.544147, 51.194107>,  <31.910398, 33.098854, 50.997322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260445, 32.544147, 51.194107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536552, 32.832348, 51.167580>,  <32.702217, 33.005268, 51.151665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536552, 32.832348, 51.167580>,  <32.260445, 32.544147, 51.194107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536552, 32.832348, 51.167580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411449, -0.315484, 0.855090,
		0.595176, -0.617530, -0.514221,
		0.690272, 0.720505, -0.066314,
		32.743633, 33.048500, 51.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856487, 32.274731, 51.558197>,  <32.260445, 32.544147, 51.194107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856487, 32.274731, 51.558197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881424, 32.673935, 51.561901>,  <32.896385, 32.913456, 51.564125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881424, 32.673935, 51.561901>,  <32.856487, 32.274731, 51.558197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881424, 32.673935, 51.561901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474185, -0.037787, 0.879614,
		0.878215, -0.050448, -0.475598,
		0.062346, 0.998012, 0.009264,
		32.900127, 32.973339, 51.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531467, 32.471207, 51.811047>,  <32.856487, 32.274731, 51.558197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531467, 32.471207, 51.811047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307175, 32.797741, 51.866451>,  <33.172600, 32.993660, 51.899693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307175, 32.797741, 51.866451>,  <33.531467, 32.471207, 51.811047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307175, 32.797741, 51.866451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240476, 0.000487, 0.970655,
		0.792309, 0.577583, -0.196581,
		-0.560730, 0.816332, 0.138509,
		33.138954, 33.042641, 51.908005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996746, 32.834202, 52.213306>,  <33.531467, 32.471207, 51.811047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996746, 32.834202, 52.213306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638981, 33.005661, 52.264347>,  <33.424320, 33.108536, 52.294971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638981, 33.005661, 52.264347>,  <33.996746, 32.834202, 52.213306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638981, 33.005661, 52.264347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198659, 0.125150, 0.972045,
		0.400695, 0.894762, -0.197090,
		-0.894415, 0.428647, 0.127605,
		33.370655, 33.134254, 52.302628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159191, 33.325348, 52.652557>,  <33.996746, 32.834202, 52.213306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159191, 33.325348, 52.652557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761612, 33.302822, 52.690304>,  <33.523064, 33.289307, 52.712952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761612, 33.302822, 52.690304>,  <34.159191, 33.325348, 52.652557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761612, 33.302822, 52.690304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095968, -0.026539, 0.995031,
		-0.053526, 0.998061, 0.031782,
		-0.993944, -0.056310, 0.094361,
		33.463428, 33.285931, 52.718613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964455, 33.829720, 53.203403>,  <34.159191, 33.325348, 52.652557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964455, 33.829720, 53.203403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714024, 33.518078, 53.190666>,  <33.563763, 33.331093, 53.183025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714024, 33.518078, 53.190666>,  <33.964455, 33.829720, 53.203403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714024, 33.518078, 53.190666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081600, -0.106074, 0.991004,
		-0.775478, 0.617849, 0.129986,
		-0.626080, -0.779109, -0.031842,
		33.526199, 33.284344, 53.181114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716618, 33.860237, 53.834164>,  <33.964455, 33.829720, 53.203403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716618, 33.860237, 53.834164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593281, 33.491657, 53.739624>,  <33.519279, 33.270508, 53.682899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593281, 33.491657, 53.739624>,  <33.716618, 33.860237, 53.834164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593281, 33.491657, 53.739624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013769, -0.244102, 0.969652,
		-0.951176, 0.302238, 0.062579,
		-0.308342, -0.921448, -0.236345,
		33.500778, 33.215221, 53.668720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133160, 33.701328, 54.107834>,  <33.716618, 33.860237, 53.834164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133160, 33.701328, 54.107834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324924, 33.355804, 54.045872>,  <33.439983, 33.148491, 54.008694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.324924, 33.355804, 54.045872>,  <33.133160, 33.701328, 54.107834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324924, 33.355804, 54.045872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162335, -0.260755, 0.951659,
		-0.862446, -0.431089, -0.265235,
		0.479411, -0.863810, -0.154906,
		33.468746, 33.096661, 53.999401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349041, 33.912045, 53.917278>,  <33.133160, 33.701328, 54.107834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349041, 33.912045, 53.917278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072361, 33.623714, 53.935017>,  <31.906353, 33.450718, 53.945660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072361, 33.623714, 53.935017>,  <32.349041, 33.912045, 53.917278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072361, 33.623714, 53.935017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289104, -0.332649, -0.897643,
		0.661797, -0.608075, 0.438486,
		-0.691696, -0.720825, 0.044350,
		31.864853, 33.407467, 53.948322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727825, 34.183411, 54.418724>,  <32.349041, 33.912045, 53.917278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727825, 34.183411, 54.418724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.407578, 34.420654, 54.384705>,  <31.215429, 34.563000, 54.364292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.407578, 34.420654, 54.384705>,  <31.727825, 34.183411, 54.418724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407578, 34.420654, 54.384705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001822, -0.139531, -0.990216,
		-0.599173, -0.792939, 0.110630,
		-0.800618, 0.593109, -0.085048,
		31.167393, 34.598587, 54.359192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297512, 33.855923, 53.868439>,  <31.727825, 34.183411, 54.418724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297512, 33.855923, 53.868439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.199694, 34.242680, 53.897602>,  <31.141003, 34.474735, 53.915100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.199694, 34.242680, 53.897602>,  <31.297512, 33.855923, 53.868439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199694, 34.242680, 53.897602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015368, 0.071320, -0.997335,
		-0.969516, -0.245012, -0.002582,
		-0.244543, 0.966893, 0.072911,
		31.126331, 34.532749, 53.919476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823952, 33.936398, 53.300472>,  <31.297512, 33.855923, 53.868439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823952, 33.936398, 53.300472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944452, 34.300457, 53.414234>,  <31.016752, 34.518890, 53.482491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.944452, 34.300457, 53.414234>,  <30.823952, 33.936398, 53.300472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944452, 34.300457, 53.414234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046790, 0.283789, -0.957744,
		-0.952397, 0.301828, 0.042906,
		0.301250, 0.910145, 0.284403,
		31.034828, 34.573502, 53.499554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422258, 34.413372, 52.914215>,  <30.823952, 33.936398, 53.300472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422258, 34.413372, 52.914215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.739695, 34.626358, 53.031986>,  <30.930157, 34.754150, 53.102650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.739695, 34.626358, 53.031986>,  <30.422258, 34.413372, 52.914215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739695, 34.626358, 53.031986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115473, 0.343305, -0.932099,
		-0.597392, 0.773705, 0.210959,
		0.793592, 0.532468, 0.294429,
		30.977772, 34.786098, 53.120316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293699, 35.125305, 52.704563>,  <30.422258, 34.413372, 52.914215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293699, 35.125305, 52.704563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.685461, 35.129047, 52.785240>,  <30.920519, 35.131294, 52.833645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.685461, 35.129047, 52.785240>,  <30.293699, 35.125305, 52.704563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685461, 35.129047, 52.785240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166452, 0.527961, -0.832797,
		-0.114277, 0.849217, 0.515530,
		0.979405, 0.009359, 0.201688,
		30.979282, 35.131855, 52.845745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483097, 35.749519, 52.464455>,  <30.293699, 35.125305, 52.704563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483097, 35.749519, 52.464455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.828136, 35.550114, 52.498886>,  <31.035160, 35.430470, 52.519547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.828136, 35.550114, 52.498886>,  <30.483097, 35.749519, 52.464455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828136, 35.550114, 52.498886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310242, 0.386880, -0.868374,
		0.399590, 0.775765, 0.488381,
		0.862599, -0.498511, 0.086082,
		31.086916, 35.400562, 52.524712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011681, 36.202866, 52.318432>,  <30.483097, 35.749519, 52.464455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011681, 36.202866, 52.318432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154829, 35.833294, 52.264351>,  <31.240719, 35.611549, 52.231903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154829, 35.833294, 52.264351>,  <31.011681, 36.202866, 52.318432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154829, 35.833294, 52.264351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490210, 0.309127, -0.814944,
		0.794747, 0.225368, 0.563548,
		0.357871, -0.923932, -0.135200,
		31.262190, 35.556114, 52.223789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744097, 36.192059, 52.313873>,  <31.011681, 36.202866, 52.318432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744097, 36.192059, 52.313873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.628119, 35.883266, 52.087608>,  <31.558531, 35.697990, 51.951851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.628119, 35.883266, 52.087608>,  <31.744097, 36.192059, 52.313873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628119, 35.883266, 52.087608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672604, 0.256099, -0.694275,
		0.680834, -0.581769, 0.444984,
		-0.289948, -0.771984, -0.565660,
		31.541134, 35.651672, 51.917912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285187, 35.961014, 52.062660>,  <31.744097, 36.192059, 52.313873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285187, 35.961014, 52.062660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020851, 35.797546, 51.810856>,  <31.862251, 35.699467, 51.659775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.020851, 35.797546, 51.810856>,  <32.285187, 35.961014, 52.062660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020851, 35.797546, 51.810856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593965, 0.227969, -0.771515,
		0.458806, -0.883751, 0.092087,
		-0.660835, -0.408673, -0.629511,
		31.822601, 35.674946, 51.622002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607841, 35.972057, 51.441723>,  <32.285187, 35.961014, 52.062660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607841, 35.972057, 51.441723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256020, 35.819546, 51.327877>,  <32.044926, 35.728039, 51.259571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256020, 35.819546, 51.327877>,  <32.607841, 35.972057, 51.441723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256020, 35.819546, 51.327877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362620, -0.149902, -0.919802,
		0.308040, -0.912224, 0.270108,
		-0.879556, -0.381283, -0.284615,
		31.992153, 35.705162, 51.242493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705391, 35.337997, 51.022728>,  <32.607841, 35.972057, 51.441723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705391, 35.337997, 51.022728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356022, 35.503651, 50.920254>,  <32.146400, 35.603043, 50.858768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356022, 35.503651, 50.920254>,  <32.705391, 35.337997, 51.022728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356022, 35.503651, 50.920254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254333, -0.060681, -0.965211,
		-0.415268, -0.908193, -0.052327,
		-0.873423, 0.414130, -0.256182,
		32.093994, 35.627888, 50.843399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373631, 34.840294, 50.543774>,  <32.705391, 35.337997, 51.022728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373631, 34.840294, 50.543774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187931, 35.188084, 50.476250>,  <32.076511, 35.396755, 50.435734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187931, 35.188084, 50.476250>,  <32.373631, 34.840294, 50.543774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187931, 35.188084, 50.476250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045736, -0.166810, -0.984928,
		-0.884525, -0.464970, 0.037675,
		-0.464246, 0.869470, -0.168813,
		32.048656, 35.448925, 50.425606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956015, 34.746101, 49.913273>,  <32.373631, 34.840294, 50.543774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956015, 34.746101, 49.913273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019547, 35.139610, 49.946659>,  <32.057667, 35.375717, 49.966690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019547, 35.139610, 49.946659>,  <31.956015, 34.746101, 49.913273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019547, 35.139610, 49.946659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004913, 0.085326, -0.996341,
		-0.987294, 0.157838, 0.018385,
		0.158830, 0.983772, 0.083467,
		32.067196, 35.434742, 49.971699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540730, 35.005219, 49.431656>,  <31.956015, 34.746101, 49.913273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540730, 35.005219, 49.431656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800100, 35.301861, 49.500435>,  <31.955723, 35.479847, 49.541702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800100, 35.301861, 49.500435>,  <31.540730, 35.005219, 49.431656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800100, 35.301861, 49.500435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168322, 0.080606, -0.982431,
		-0.742435, 0.665977, -0.072562,
		0.648427, 0.741605, 0.171943,
		31.994629, 35.524342, 49.552017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978659, 35.412189, 49.522530>,  <31.540730, 35.005219, 49.431656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978659, 35.412189, 49.522530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619438, 35.425785, 49.347099>,  <30.403906, 35.433941, 49.241840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619438, 35.425785, 49.347099>,  <30.978659, 35.412189, 49.522530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619438, 35.425785, 49.347099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426540, 0.176512, 0.887078,
		0.107562, 0.983711, -0.144020,
		-0.898050, 0.033986, -0.438578,
		30.350023, 35.435982, 49.215527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593849, 36.086079, 49.681858>,  <30.978659, 35.412189, 49.522530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593849, 36.086079, 49.681858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.355865, 35.776989, 49.593384>,  <30.213076, 35.591534, 49.540298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.355865, 35.776989, 49.593384>,  <30.593849, 36.086079, 49.681858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355865, 35.776989, 49.593384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474524, 0.115583, 0.872621,
		-0.648731, 0.624129, -0.435443,
		-0.594957, -0.772725, -0.221182,
		30.177378, 35.545170, 49.527031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963753, 36.231892, 49.982250>,  <30.593849, 36.086079, 49.681858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963753, 36.231892, 49.982250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.888506, 35.849167, 49.893593>,  <29.843359, 35.619534, 49.840397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.888506, 35.849167, 49.893593>,  <29.963753, 36.231892, 49.982250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888506, 35.849167, 49.893593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767127, 0.002221, 0.641491,
		-0.613293, 0.290705, -0.734413,
		-0.188116, -0.956810, -0.221645,
		29.832071, 35.562122, 49.827099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260384, 36.213055, 49.973377>,  <29.963753, 36.231892, 49.982250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260384, 36.213055, 49.973377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390568, 35.839779, 50.034355>,  <29.468678, 35.615814, 50.070942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390568, 35.839779, 50.034355>,  <29.260384, 36.213055, 49.973377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390568, 35.839779, 50.034355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521012, -0.042443, 0.852493,
		-0.789064, -0.356881, -0.500014,
		0.325461, -0.933185, 0.152449,
		29.488207, 35.559822, 50.080090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665705, 35.935066, 50.282082>,  <29.260384, 36.213055, 49.973377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665705, 35.935066, 50.282082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.967331, 35.687210, 50.369194>,  <29.148308, 35.538498, 50.421459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.967331, 35.687210, 50.369194>,  <28.665705, 35.935066, 50.282082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967331, 35.687210, 50.369194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416330, -0.194493, 0.888168,
		-0.507989, -0.760406, -0.404636,
		0.754067, -0.619641, 0.217779,
		29.193550, 35.501316, 50.434528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464975, 35.147739, 50.263023>,  <28.665705, 35.935066, 50.282082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464975, 35.147739, 50.263023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.791630, 35.176987, 50.492023>,  <28.987623, 35.194534, 50.629425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.791630, 35.176987, 50.492023>,  <28.464975, 35.147739, 50.263023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791630, 35.176987, 50.492023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489480, -0.437842, 0.754124,
		0.305804, -0.896074, -0.321770,
		0.816635, 0.073114, 0.572504,
		29.036621, 35.198921, 50.663776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489252, 34.577324, 50.691956>,  <28.464975, 35.147739, 50.263023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489252, 34.577324, 50.691956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.744431, 34.797535, 50.907341>,  <28.897537, 34.929661, 51.036572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.744431, 34.797535, 50.907341>,  <28.489252, 34.577324, 50.691956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744431, 34.797535, 50.907341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435006, -0.319358, 0.841891,
		0.635446, -0.771317, 0.035749,
		0.637948, 0.550527, 0.538463,
		28.935816, 34.962692, 51.068878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770599, 33.988853, 50.328583>,  <28.489252, 34.577324, 50.691956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770599, 33.988853, 50.328583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.621092, 33.619175, 50.297211>,  <28.531387, 33.397366, 50.278389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.621092, 33.619175, 50.297211>,  <28.770599, 33.988853, 50.328583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621092, 33.619175, 50.297211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445156, -0.104565, -0.889327,
		0.813715, -0.367315, 0.450496,
		-0.373769, -0.924200, -0.078426,
		28.508961, 33.341915, 50.273682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335373, 33.625774, 50.166355>,  <28.770599, 33.988853, 50.328583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335373, 33.625774, 50.166355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.062277, 33.361946, 50.040607>,  <28.898420, 33.203648, 49.965157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.062277, 33.361946, 50.040607>,  <29.335373, 33.625774, 50.166355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062277, 33.361946, 50.040607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551066, -0.182298, -0.814306,
		0.479786, -0.729197, 0.487931,
		-0.682738, -0.659575, -0.314372,
		28.857456, 33.164074, 49.946297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707895, 33.011181, 49.999699>,  <29.335373, 33.625774, 50.166355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707895, 33.011181, 49.999699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356743, 33.033138, 49.809410>,  <29.146051, 33.046314, 49.695236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356743, 33.033138, 49.809410>,  <29.707895, 33.011181, 49.999699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356743, 33.033138, 49.809410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443667, -0.280664, -0.851109,
		-0.180240, -0.958235, 0.222035,
		-0.877880, 0.054894, -0.475724,
		29.093378, 33.049606, 49.666695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813643, 32.633343, 49.434612>,  <29.707895, 33.011181, 49.999699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813643, 32.633343, 49.434612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.476048, 32.800713, 49.300385>,  <29.273491, 32.901134, 49.219849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.476048, 32.800713, 49.300385>,  <29.813643, 32.633343, 49.434612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476048, 32.800713, 49.300385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263753, -0.221009, -0.938930,
		-0.467032, -0.880953, 0.076169,
		-0.843988, 0.418421, -0.335572,
		29.222851, 32.926239, 49.199715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584366, 32.148434, 49.001972>,  <29.813643, 32.633343, 49.434612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584366, 32.148434, 49.001972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.430910, 32.505928, 48.908974>,  <29.338837, 32.720425, 48.853172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.430910, 32.505928, 48.908974>,  <29.584366, 32.148434, 49.001972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430910, 32.505928, 48.908974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241247, -0.146030, -0.959414,
		-0.891416, -0.424157, -0.159588,
		-0.383637, 0.893737, -0.232500,
		29.315819, 32.774048, 48.839222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250332, 32.112629, 48.361977>,  <29.584366, 32.148434, 49.001972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250332, 32.112629, 48.361977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.293034, 32.509296, 48.390797>,  <29.318655, 32.747299, 48.408089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.293034, 32.509296, 48.390797>,  <29.250332, 32.112629, 48.361977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293034, 32.509296, 48.390797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103315, 0.061013, -0.992775,
		-0.988903, 0.113427, -0.095941,
		0.106754, 0.991671, 0.072055,
		29.325060, 32.806797, 48.412415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840567, 32.422150, 47.770432>,  <29.250332, 32.112629, 48.361977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840567, 32.422150, 47.770432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132481, 32.650658, 47.920666>,  <29.307629, 32.787762, 48.010807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132481, 32.650658, 47.920666>,  <28.840567, 32.422150, 47.770432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132481, 32.650658, 47.920666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485534, -0.046308, -0.872990,
		-0.481320, 0.819455, -0.311166,
		0.729786, 0.571270, 0.375584,
		29.351416, 32.822037, 48.033340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.020786, 29.739491, 53.454048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224731, 30.062513, 53.335464>,  <32.347099, 30.256327, 53.264317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.224731, 30.062513, 53.335464>,  <32.020786, 29.739491, 53.454048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224731, 30.062513, 53.335464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126444, -0.270521, -0.954374,
		-0.850911, 0.524088, -0.035819,
		0.509865, 0.807559, -0.296457,
		32.377689, 30.304781, 53.246529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779167, 29.969818, 52.799629>,  <32.020786, 29.739491, 53.454048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779167, 29.969818, 52.799629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.099445, 30.209440, 52.801315>,  <32.291611, 30.353214, 52.802326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.099445, 30.209440, 52.801315>,  <31.779167, 29.969818, 52.799629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099445, 30.209440, 52.801315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105059, -0.133485, -0.985467,
		-0.589788, 0.789501, -0.169817,
		0.800695, 0.599057, 0.004216,
		32.339653, 30.389158, 52.802582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632357, 30.364256, 52.306984>,  <31.779167, 29.969818, 52.799629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632357, 30.364256, 52.306984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027382, 30.342873, 52.366123>,  <32.264397, 30.330042, 52.401608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027382, 30.342873, 52.366123>,  <31.632357, 30.364256, 52.306984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027382, 30.342873, 52.366123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142813, -0.088202, -0.985812,
		0.065743, 0.994667, -0.079470,
		0.987564, -0.053461, 0.147850,
		32.323650, 30.326834, 52.410477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911095, 30.922937, 51.891319>,  <31.632357, 30.364256, 52.306984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911095, 30.922937, 51.891319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205173, 30.662069, 51.965248>,  <32.381622, 30.505548, 52.009605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205173, 30.662069, 51.965248>,  <31.911095, 30.922937, 51.891319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205173, 30.662069, 51.965248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327398, 0.102894, -0.939268,
		0.593545, 0.751058, 0.289166,
		0.735197, -0.652170, 0.184823,
		32.425732, 30.466419, 52.020695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457180, 31.281572, 51.687901>,  <31.911095, 30.922937, 51.891319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457180, 31.281572, 51.687901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541737, 30.890617, 51.685749>,  <32.592472, 30.656044, 51.684460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541737, 30.890617, 51.685749>,  <32.457180, 31.281572, 51.687901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541737, 30.890617, 51.685749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218612, 0.052642, -0.974391,
		0.952639, 0.204805, 0.224796,
		0.211394, -0.977386, -0.005376,
		32.605156, 30.597401, 51.684135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160618, 31.291973, 51.439575>,  <32.457180, 31.281572, 51.687901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160618, 31.291973, 51.439575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.010826, 30.924152, 51.391930>,  <32.920952, 30.703461, 51.363342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.010826, 30.924152, 51.391930>,  <33.160618, 31.291973, 51.439575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010826, 30.924152, 51.391930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535141, -0.109423, -0.837646,
		0.757225, -0.377425, 0.533067,
		-0.374478, -0.919553, -0.119118,
		32.898483, 30.648287, 51.356194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649097, 30.886353, 51.196442>,  <33.160618, 31.291973, 51.439575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649097, 30.886353, 51.196442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.318481, 30.690096, 51.086098>,  <33.120113, 30.572342, 51.019890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.318481, 30.690096, 51.086098>,  <33.649097, 30.886353, 51.196442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318481, 30.690096, 51.086098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413826, -0.197480, -0.888678,
		0.381547, -0.848688, 0.366266,
		-0.826541, -0.490643, -0.275862,
		33.070518, 30.542904, 51.003338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835953, 30.555256, 50.625404>,  <33.649097, 30.886353, 51.196442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835953, 30.555256, 50.625404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.443905, 30.479897, 50.600510>,  <33.208675, 30.434681, 50.585571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.443905, 30.479897, 50.600510>,  <33.835953, 30.555256, 50.625404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443905, 30.479897, 50.600510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094172, -0.165626, -0.981682,
		0.174642, -0.968025, 0.180075,
		-0.980118, -0.188401, -0.062236,
		33.149868, 30.423376, 50.581841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777107, 29.863651, 50.394722>,  <33.835953, 30.555256, 50.625404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777107, 29.863651, 50.394722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442307, 30.058140, 50.294312>,  <33.241425, 30.174833, 50.234066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442307, 30.058140, 50.294312>,  <33.777107, 29.863651, 50.394722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442307, 30.058140, 50.294312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166311, -0.210997, -0.963235,
		-0.521312, -0.847979, 0.095740,
		-0.837003, 0.486223, -0.251024,
		33.191204, 30.204006, 50.219006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436314, 29.351179, 50.057693>,  <33.777107, 29.863651, 50.394722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436314, 29.351179, 50.057693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.317627, 29.717249, 49.948574>,  <33.246414, 29.936890, 49.883102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.317627, 29.717249, 49.948574>,  <33.436314, 29.351179, 50.057693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317627, 29.717249, 49.948574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387636, -0.145643, -0.910234,
		-0.872752, -0.375829, -0.311539,
		-0.296719, 0.915172, -0.272795,
		33.228611, 29.991800, 49.866737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222275, 29.160381, 49.451073>,  <33.436314, 29.351179, 50.057693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222275, 29.160381, 49.451073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.268433, 29.557701, 49.453583>,  <33.296127, 29.796093, 49.455090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.268433, 29.557701, 49.453583>,  <33.222275, 29.160381, 49.451073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268433, 29.557701, 49.453583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186513, -0.015461, -0.982331,
		-0.975652, 0.114530, -0.187047,
		0.115398, 0.993300, 0.006277,
		33.303051, 29.855690, 49.455467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842579, 29.376791, 48.862396>,  <33.222275, 29.160381, 49.451073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842579, 29.376791, 48.862396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.086475, 29.681419, 48.950237>,  <33.232815, 29.864197, 49.002941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.086475, 29.681419, 48.950237>,  <32.842579, 29.376791, 48.862396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086475, 29.681419, 48.950237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225428, 0.098994, -0.969217,
		-0.759868, 0.640476, -0.111319,
		0.609740, 0.761572, 0.219603,
		33.269398, 29.909891, 49.016117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121819, 29.653749, 48.838036>,  <32.842579, 29.376791, 48.862396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121819, 29.653749, 48.838036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.798723, 29.444214, 48.729847>,  <31.604866, 29.318493, 48.664936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.798723, 29.444214, 48.729847>,  <32.121819, 29.653749, 48.838036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798723, 29.444214, 48.729847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526603, 0.434842, 0.730480,
		-0.265041, 0.732467, -0.627093,
		-0.807739, -0.523837, -0.270468,
		31.556402, 29.287064, 48.648705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565126, 30.144287, 48.924179>,  <32.121819, 29.653749, 48.838036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565126, 30.144287, 48.924179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413288, 29.774260, 48.929131>,  <31.322186, 29.552242, 48.932102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413288, 29.774260, 48.929131>,  <31.565126, 30.144287, 48.924179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413288, 29.774260, 48.929131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753515, 0.316908, 0.576007,
		-0.536771, 0.209319, -0.817351,
		-0.379594, -0.925070, 0.012382,
		31.299410, 29.496738, 48.932846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885557, 30.318022, 48.846043>,  <31.565126, 30.144287, 48.924179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885557, 30.318022, 48.846043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.952520, 29.957819, 49.006569>,  <30.992699, 29.741697, 49.102886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.952520, 29.957819, 49.006569>,  <30.885557, 30.318022, 48.846043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952520, 29.957819, 49.006569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755238, 0.144516, 0.639321,
		-0.633712, -0.410119, -0.655905,
		0.167409, -0.900510, 0.401319,
		31.002743, 29.687666, 49.126965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273937, 29.979689, 48.867393>,  <30.885557, 30.318022, 48.846043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273937, 29.979689, 48.867393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458153, 29.784500, 49.163982>,  <30.568682, 29.667387, 49.341938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.458153, 29.784500, 49.163982>,  <30.273937, 29.979689, 48.867393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458153, 29.784500, 49.163982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813056, 0.103265, 0.572955,
		-0.356155, -0.866728, -0.349193,
		0.460537, -0.487974, 0.741477,
		30.596313, 29.638107, 49.386425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811850, 29.524256, 49.122047>,  <30.273937, 29.979689, 48.867393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811850, 29.524256, 49.122047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081060, 29.541412, 49.417397>,  <30.242588, 29.551706, 49.594604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081060, 29.541412, 49.417397>,  <29.811850, 29.524256, 49.122047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081060, 29.541412, 49.417397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728258, -0.135856, 0.671702,
		0.129121, -0.989800, -0.060201,
		0.673029, 0.042889, 0.738371,
		30.282969, 29.554279, 49.638908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726324, 28.916794, 49.677711>,  <29.811850, 29.524256, 49.122047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726324, 28.916794, 49.677711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929951, 29.194414, 49.881336>,  <30.052126, 29.360987, 50.003510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929951, 29.194414, 49.881336>,  <29.726324, 28.916794, 49.677711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929951, 29.194414, 49.881336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650350, -0.077260, 0.755695,
		0.563822, -0.715766, 0.412047,
		0.509067, 0.694053, 0.509060,
		30.082670, 29.402630, 50.034054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669365, 28.704733, 50.376347>,  <29.726324, 28.916794, 49.677711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669365, 28.704733, 50.376347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.820059, 29.072941, 50.417747>,  <29.910475, 29.293865, 50.442589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.820059, 29.072941, 50.417747>,  <29.669365, 28.704733, 50.376347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820059, 29.072941, 50.417747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367469, 0.045945, 0.928900,
		0.850316, -0.387984, 0.355572,
		0.376735, 0.920520, 0.103504,
		29.933079, 29.349096, 50.448799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103382, 28.680065, 51.073013>,  <29.669365, 28.704733, 50.376347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103382, 28.680065, 51.073013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.013699, 29.058006, 50.977528>,  <29.959888, 29.284771, 50.920235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.013699, 29.058006, 50.977528>,  <30.103382, 28.680065, 51.073013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013699, 29.058006, 50.977528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185414, 0.199118, 0.962275,
		0.956741, 0.260009, 0.130545,
		-0.224207, 0.944853, -0.238713,
		29.946436, 29.341463, 50.905914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422508, 28.974623, 51.628498>,  <30.103382, 28.680065, 51.073013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422508, 28.974623, 51.628498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.140764, 29.214283, 51.476238>,  <29.971718, 29.358078, 51.384880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.140764, 29.214283, 51.476238>,  <30.422508, 28.974623, 51.628498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140764, 29.214283, 51.476238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449518, 0.038533, 0.892440,
		0.549373, 0.799709, 0.242187,
		-0.704360, 0.599150, -0.380652,
		29.929457, 29.394028, 51.362041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215660, 29.503374, 52.131073>,  <30.422508, 28.974623, 51.628498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215660, 29.503374, 52.131073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.894888, 29.591715, 51.909035>,  <29.702425, 29.644718, 51.775810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.894888, 29.591715, 51.909035>,  <30.215660, 29.503374, 52.131073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894888, 29.591715, 51.909035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520819, 0.196743, 0.830686,
		0.292669, 0.955258, -0.042751,
		-0.801930, 0.220850, -0.555097,
		29.654308, 29.657970, 51.742504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059240, 30.179674, 52.231026>,  <30.215660, 29.503374, 52.131073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059240, 30.179674, 52.231026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715694, 30.023685, 52.098194>,  <29.509567, 29.930092, 52.018494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715694, 30.023685, 52.098194>,  <30.059240, 30.179674, 52.231026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715694, 30.023685, 52.098194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479374, 0.383611, 0.789331,
		-0.180427, 0.837117, -0.516411,
		-0.858864, -0.389971, -0.332078,
		29.458035, 29.906694, 51.998569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552412, 30.794708, 52.117405>,  <30.059240, 30.179674, 52.231026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552412, 30.794708, 52.117405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.307138, 30.478819, 52.124798>,  <29.159975, 30.289286, 52.129234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.307138, 30.478819, 52.124798>,  <29.552412, 30.794708, 52.117405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307138, 30.478819, 52.124798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400010, 0.330600, 0.854807,
		-0.681173, 0.516760, -0.518616,
		-0.613185, -0.789723, 0.018487,
		29.123182, 30.241901, 52.130344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881662, 31.074125, 52.252613>,  <29.552412, 30.794708, 52.117405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881662, 31.074125, 52.252613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.848433, 30.693684, 52.371609>,  <28.828495, 30.465418, 52.443005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.848433, 30.693684, 52.371609>,  <28.881662, 31.074125, 52.252613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848433, 30.693684, 52.371609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518691, 0.296164, 0.802026,
		-0.850916, -0.087678, -0.517933,
		-0.083073, -0.951104, 0.297488,
		28.823511, 30.408352, 52.460854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248446, 31.076315, 52.480251>,  <28.881662, 31.074125, 52.252613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248446, 31.076315, 52.480251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.394884, 30.738087, 52.635674>,  <28.482748, 30.535149, 52.728928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.394884, 30.738087, 52.635674>,  <28.248446, 31.076315, 52.480251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394884, 30.738087, 52.635674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289644, 0.293266, 0.911099,
		-0.884352, -0.446096, -0.137551,
		0.366098, -0.845573, 0.388560,
		28.504713, 30.484415, 52.752243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989168, 31.671368, 52.586613>,  <28.248446, 31.076315, 52.480251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989168, 31.671368, 52.586613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.664265, 31.904673, 52.589115>,  <27.469322, 32.044655, 52.590614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.664265, 31.904673, 52.589115>,  <27.989168, 31.671368, 52.586613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664265, 31.904673, 52.589115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392813, 0.554897, -0.733340,
		-0.431199, -0.593206, -0.679833,
		-0.812259, 0.583263, 0.006252,
		27.420588, 32.079651, 52.590992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673008, 31.633415, 51.952045>,  <27.989168, 31.671368, 52.586613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673008, 31.633415, 51.952045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.593065, 31.990227, 52.114204>,  <27.545099, 32.204315, 52.211498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.593065, 31.990227, 52.114204>,  <27.673008, 31.633415, 51.952045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593065, 31.990227, 52.114204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388382, 0.451971, -0.803046,
		-0.899565, -0.003045, -0.436776,
		-0.199855, 0.892028, 0.405395,
		27.533108, 32.257835, 52.235825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276409, 31.936569, 51.494774>,  <27.673008, 31.633415, 51.952045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276409, 31.936569, 51.494774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.362595, 32.264194, 51.707455>,  <27.414307, 32.460770, 51.835064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.362595, 32.264194, 51.707455>,  <27.276409, 31.936569, 51.494774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362595, 32.264194, 51.707455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164551, 0.506251, -0.846542,
		-0.962547, 0.269893, -0.025699,
		0.215465, 0.819065, 0.531702,
		27.427235, 32.509914, 51.866966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841551, 32.443497, 51.271595>,  <27.276409, 31.936569, 51.494774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841551, 32.443497, 51.271595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.182550, 32.592957, 51.417820>,  <27.387150, 32.682632, 51.505554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.182550, 32.592957, 51.417820>,  <26.841551, 32.443497, 51.271595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182550, 32.592957, 51.417820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252263, 0.318432, -0.913764,
		-0.457833, 0.871199, 0.177205,
		0.852498, 0.373649, 0.365560,
		27.438299, 32.705051, 51.527489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954409, 33.074284, 50.856728>,  <26.841551, 32.443497, 51.271595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954409, 33.074284, 50.856728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.320309, 33.020210, 51.009022>,  <27.539848, 32.987766, 51.100399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.320309, 33.020210, 51.009022>,  <26.954409, 33.074284, 50.856728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320309, 33.020210, 51.009022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403636, 0.346833, -0.846631,
		-0.017602, 0.928134, 0.371829,
		0.914750, -0.135181, 0.380734,
		27.594734, 32.979656, 51.123241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324434, 33.671974, 50.707096>,  <26.954409, 33.074284, 50.856728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324434, 33.671974, 50.707096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.612711, 33.403313, 50.775784>,  <27.785677, 33.242115, 50.816998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.612711, 33.403313, 50.775784>,  <27.324434, 33.671974, 50.707096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612711, 33.403313, 50.775784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477458, 0.301291, -0.825383,
		0.502633, 0.676835, 0.537823,
		0.720690, -0.671653, 0.171721,
		27.828918, 33.201817, 50.827301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897799, 34.048882, 50.644600>,  <27.324434, 33.671974, 50.707096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897799, 34.048882, 50.644600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.019361, 33.669052, 50.613743>,  <28.092299, 33.441154, 50.595230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.019361, 33.669052, 50.613743>,  <27.897799, 34.048882, 50.644600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019361, 33.669052, 50.613743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362063, 0.190014, -0.912582,
		0.881221, 0.249411, 0.401552,
		0.303908, -0.949573, -0.077141,
		28.110535, 33.384182, 50.590599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389248, 34.171021, 51.278477>,  <27.897799, 34.048882, 50.644600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389248, 34.171021, 51.278477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.578379, 34.509441, 51.376961>,  <28.691858, 34.712494, 51.436050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.578379, 34.509441, 51.376961>,  <28.389248, 34.171021, 51.278477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578379, 34.509441, 51.376961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027502, -0.265116, 0.963824,
		0.880725, -0.462495, -0.102086,
		0.472828, 0.846057, 0.246214,
		28.720226, 34.763260, 51.450825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949266, 33.982731, 51.650078>,  <28.389248, 34.171021, 51.278477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949266, 33.982731, 51.650078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.868519, 34.362614, 51.745827>,  <28.820070, 34.590546, 51.803276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.868519, 34.362614, 51.745827>,  <28.949266, 33.982731, 51.650078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868519, 34.362614, 51.745827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095372, -0.224181, 0.969870,
		0.974758, 0.218614, -0.045321,
		-0.201868, 0.949711, 0.239372,
		28.807959, 34.647526, 51.817638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439077, 34.098312, 52.134830>,  <28.949266, 33.982731, 51.650078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439077, 34.098312, 52.134830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.151091, 34.372398, 52.178890>,  <28.978298, 34.536850, 52.205326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.151091, 34.372398, 52.178890>,  <29.439077, 34.098312, 52.134830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151091, 34.372398, 52.178890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092902, -0.062133, 0.993735,
		0.687764, 0.725688, -0.018924,
		-0.719965, 0.685213, 0.110151,
		28.935101, 34.577961, 52.211937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692932, 34.494019, 52.708916>,  <29.439077, 34.098312, 52.134830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692932, 34.494019, 52.708916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.302563, 34.577862, 52.684784>,  <29.068340, 34.628166, 52.670307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.302563, 34.577862, 52.684784>,  <29.692932, 34.494019, 52.708916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302563, 34.577862, 52.684784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026109, 0.162331, 0.986391,
		0.216548, 0.964216, -0.152950,
		-0.975923, 0.209607, -0.060327,
		29.009787, 34.640743, 52.666687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691107, 34.948406, 53.165806>,  <29.692932, 34.494019, 52.708916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691107, 34.948406, 53.165806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.301748, 34.860966, 53.138355>,  <29.068132, 34.808502, 53.121883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.301748, 34.860966, 53.138355>,  <29.691107, 34.948406, 53.165806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301748, 34.860966, 53.138355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079923, 0.043250, 0.995862,
		-0.214731, 0.974855, -0.059571,
		-0.973397, -0.218604, -0.068627,
		29.009729, 34.795383, 53.117767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471558, 35.368126, 53.589722>,  <29.691107, 34.948406, 53.165806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471558, 35.368126, 53.589722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.183779, 35.091167, 53.567886>,  <29.011112, 34.924992, 53.554787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.183779, 35.091167, 53.567886>,  <29.471558, 35.368126, 53.589722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183779, 35.091167, 53.567886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104778, -0.185897, 0.976967,
		-0.686599, 0.697155, 0.206291,
		-0.719446, -0.692399, -0.054590,
		28.967945, 34.883446, 53.551510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078939, 35.459717, 54.150414>,  <29.471558, 35.368126, 53.589722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078939, 35.459717, 54.150414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.997723, 35.087914, 54.027264>,  <28.948992, 34.864830, 53.953373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.997723, 35.087914, 54.027264>,  <29.078939, 35.459717, 54.150414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997723, 35.087914, 54.027264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073209, -0.327953, 0.941853,
		-0.976429, 0.168697, 0.134637,
		-0.203042, -0.929510, -0.307873,
		28.936810, 34.809059, 53.934902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581434, 35.275768, 54.689503>,  <29.078939, 35.459717, 54.150414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581434, 35.275768, 54.689503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.753599, 34.956680, 54.520557>,  <28.856897, 34.765228, 54.419189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.753599, 34.956680, 54.520557>,  <28.581434, 35.275768, 54.689503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753599, 34.956680, 54.520557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328599, -0.297337, 0.896445,
		-0.840695, -0.524629, 0.134153,
		0.430412, -0.797719, -0.422362,
		28.882723, 34.717365, 54.393848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295252, 34.702385, 55.009560>,  <28.581434, 35.275768, 54.689503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295252, 34.702385, 55.009560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.641632, 34.550144, 54.879780>,  <28.849461, 34.458801, 54.801910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.641632, 34.550144, 54.879780>,  <28.295252, 34.702385, 55.009560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641632, 34.550144, 54.879780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127206, -0.459783, 0.878873,
		-0.483682, -0.802333, -0.349734,
		0.865951, -0.380607, -0.324451,
		28.901419, 34.435963, 54.782444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.128559, 35.783447, 39.822430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491024, 35.646828, 39.922207>,  <34.708504, 35.564854, 39.982071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491024, 35.646828, 39.922207>,  <34.128559, 35.783447, 39.822430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491024, 35.646828, 39.922207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379143, -0.394640, 0.836964,
		-0.187427, -0.852996, -0.487103,
		0.906157, -0.341552, 0.249441,
		34.762871, 35.544361, 39.997040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119675, 34.947758, 39.939339>,  <34.128559, 35.783447, 39.822430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119675, 34.947758, 39.939339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417717, 35.106846, 40.153496>,  <34.596542, 35.202297, 40.281990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417717, 35.106846, 40.153496>,  <34.119675, 34.947758, 39.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417717, 35.106846, 40.153496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424456, -0.336419, 0.840631,
		0.514449, -0.853606, -0.081853,
		0.745104, 0.397718, 0.535388,
		34.641247, 35.226162, 40.314114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218124, 34.440044, 40.440464>,  <34.119675, 34.947758, 39.939339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218124, 34.440044, 40.440464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417839, 34.752293, 40.590851>,  <34.537666, 34.939640, 40.681084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417839, 34.752293, 40.590851>,  <34.218124, 34.440044, 40.440464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417839, 34.752293, 40.590851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317726, -0.238741, 0.917634,
		0.806081, -0.577615, 0.128823,
		0.499284, 0.780618, 0.375968,
		34.567623, 34.986477, 40.703640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398533, 34.227032, 41.079922>,  <34.218124, 34.440044, 40.440464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398533, 34.227032, 41.079922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419579, 34.625786, 41.103428>,  <34.432205, 34.865040, 41.117531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419579, 34.625786, 41.103428>,  <34.398533, 34.227032, 41.079922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419579, 34.625786, 41.103428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238436, -0.044602, 0.970134,
		0.969732, -0.065053, 0.235346,
		0.052613, 0.996884, 0.058763,
		34.435364, 34.924850, 41.121056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556557, 34.366615, 41.781483>,  <34.398533, 34.227032, 41.079922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556557, 34.366615, 41.781483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429649, 34.722378, 41.649853>,  <34.353504, 34.935837, 41.570873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429649, 34.722378, 41.649853>,  <34.556557, 34.366615, 41.781483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429649, 34.722378, 41.649853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555175, 0.107129, 0.824805,
		0.768844, 0.444379, 0.459790,
		-0.317270, 0.889410, -0.329073,
		34.334469, 34.989201, 41.551132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721954, 34.854595, 42.296299>,  <34.556557, 34.366615, 41.781483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721954, 34.854595, 42.296299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419449, 35.023766, 42.096619>,  <34.237946, 35.125267, 41.976810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419449, 35.023766, 42.096619>,  <34.721954, 34.854595, 42.296299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419449, 35.023766, 42.096619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531466, 0.047905, 0.845724,
		0.381595, 0.904896, 0.188544,
		-0.756260, 0.422929, -0.499202,
		34.192570, 35.150642, 41.946857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599377, 35.449345, 42.672836>,  <34.721954, 34.854595, 42.296299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599377, 35.449345, 42.672836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264851, 35.392895, 42.460922>,  <34.064137, 35.359024, 42.333775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264851, 35.392895, 42.460922>,  <34.599377, 35.449345, 42.672836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264851, 35.392895, 42.460922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511744, -0.145801, 0.846676,
		-0.196731, 0.979196, 0.049714,
		-0.836311, -0.141126, -0.529781,
		34.013958, 35.350555, 42.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104252, 36.008556, 42.789265>,  <34.599377, 35.449345, 42.672836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104252, 36.008556, 42.789265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902538, 35.691017, 42.653316>,  <33.781509, 35.500496, 42.571747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902538, 35.691017, 42.653316>,  <34.104252, 36.008556, 42.789265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902538, 35.691017, 42.653316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458772, -0.087153, 0.884270,
		-0.731592, 0.601845, -0.320243,
		-0.504283, -0.793843, -0.339870,
		33.751255, 35.452866, 42.551357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434322, 36.112141, 42.923687>,  <34.104252, 36.008556, 42.789265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434322, 36.112141, 42.923687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445976, 35.716053, 42.869114>,  <33.452969, 35.478401, 42.836369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445976, 35.716053, 42.869114>,  <33.434322, 36.112141, 42.923687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445976, 35.716053, 42.869114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518858, -0.131641, 0.844664,
		-0.854364, 0.046183, -0.517619,
		0.029131, -0.990221, -0.136431,
		33.454716, 35.418987, 42.828186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728657, 35.950119, 42.968979>,  <33.434322, 36.112141, 42.923687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728657, 35.950119, 42.968979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926945, 35.606510, 43.020126>,  <33.045918, 35.400345, 43.050816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926945, 35.606510, 43.020126>,  <32.728657, 35.950119, 42.968979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926945, 35.606510, 43.020126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722824, -0.326461, 0.609056,
		-0.481445, -0.394348, -0.782752,
		0.495718, -0.859018, 0.127871,
		33.075661, 35.348804, 43.058487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229660, 35.396103, 42.873001>,  <32.728657, 35.950119, 42.968979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229660, 35.396103, 42.873001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521545, 35.255047, 43.107319>,  <32.696678, 35.170414, 43.247910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521545, 35.255047, 43.107319>,  <32.229660, 35.396103, 42.873001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521545, 35.255047, 43.107319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677037, -0.252875, 0.691140,
		-0.095589, -0.900944, -0.423277,
		0.729715, -0.352640, 0.585800,
		32.740459, 35.149254, 43.283058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049648, 34.686253, 43.084923>,  <32.229660, 35.396103, 42.873001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049648, 34.686253, 43.084923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307011, 34.831837, 43.354309>,  <32.461430, 34.919189, 43.515942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307011, 34.831837, 43.354309>,  <32.049648, 34.686253, 43.084923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307011, 34.831837, 43.354309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513982, -0.446584, 0.732383,
		0.567321, -0.817370, -0.100264,
		0.643404, 0.363963, 0.673470,
		32.500031, 34.941025, 43.556351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037663, 33.948002, 42.814957>,  <32.049648, 34.686253, 43.084923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037663, 33.948002, 42.814957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844410, 33.601597, 42.763424>,  <31.728458, 33.393753, 42.732506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844410, 33.601597, 42.763424>,  <32.037663, 33.948002, 42.814957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844410, 33.601597, 42.763424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046214, 0.121712, -0.991489,
		0.874325, -0.484977, -0.018781,
		-0.483135, -0.866016, -0.128829,
		31.699469, 33.341793, 42.724773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383713, 33.638424, 42.288788>,  <32.037663, 33.948002, 42.814957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383713, 33.638424, 42.288788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042168, 33.432896, 42.322006>,  <31.837240, 33.309578, 42.341938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042168, 33.432896, 42.322006>,  <32.383713, 33.638424, 42.288788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042168, 33.432896, 42.322006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106647, 0.016551, -0.994159,
		0.509449, -0.857735, -0.068930,
		-0.853866, -0.513825, 0.083043,
		31.786007, 33.278748, 42.346920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441212, 33.140186, 41.812874>,  <32.383713, 33.638424, 42.288788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441212, 33.140186, 41.812874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045769, 33.152374, 41.871834>,  <31.808502, 33.159687, 41.907211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045769, 33.152374, 41.871834>,  <32.441212, 33.140186, 41.812874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045769, 33.152374, 41.871834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145838, 0.048290, -0.988129,
		-0.037230, -0.998368, -0.043296,
		-0.988607, 0.030474, 0.147398,
		31.749186, 33.161514, 41.916054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125256, 32.748871, 41.386227>,  <32.441212, 33.140186, 41.812874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125256, 32.748871, 41.386227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824207, 32.997200, 41.473991>,  <31.643578, 33.146198, 41.526649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824207, 32.997200, 41.473991>,  <32.125256, 32.748871, 41.386227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824207, 32.997200, 41.473991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212218, 0.086735, -0.973366,
		-0.623319, -0.779138, 0.066471,
		-0.752620, 0.620823, 0.219411,
		31.598421, 33.183449, 41.539814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472281, 32.357342, 41.221153>,  <32.125256, 32.748871, 41.386227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472281, 32.357342, 41.221153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399786, 32.750301, 41.203098>,  <31.356289, 32.986076, 41.192265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399786, 32.750301, 41.203098>,  <31.472281, 32.357342, 41.221153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399786, 32.750301, 41.203098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213779, -0.084152, -0.973251,
		-0.959923, -0.166738, 0.225268,
		-0.181234, 0.982404, -0.045134,
		31.345415, 33.045021, 41.189556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084852, 32.380653, 40.698902>,  <31.472281, 32.357342, 41.221153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084852, 32.380653, 40.698902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155603, 32.771797, 40.743633>,  <31.198055, 33.006485, 40.770470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155603, 32.771797, 40.743633>,  <31.084852, 32.380653, 40.698902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155603, 32.771797, 40.743633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336000, 0.166784, -0.926978,
		-0.925104, 0.126390, 0.358061,
		0.176880, 0.977859, 0.111825,
		31.208668, 33.065155, 40.777180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546865, 32.699886, 40.369923>,  <31.084852, 32.380653, 40.698902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546865, 32.699886, 40.369923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840319, 32.968159, 40.413696>,  <31.016390, 33.129120, 40.439960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840319, 32.968159, 40.413696>,  <30.546865, 32.699886, 40.369923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840319, 32.968159, 40.413696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124901, 0.291377, -0.948419,
		-0.667969, 0.682123, 0.297532,
		0.733633, 0.670677, 0.109433,
		31.060408, 33.169361, 40.446526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302294, 33.337276, 40.101345>,  <30.546865, 32.699886, 40.369923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302294, 33.337276, 40.101345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698225, 33.289459, 40.070496>,  <30.935783, 33.260769, 40.051987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698225, 33.289459, 40.070496>,  <30.302294, 33.337276, 40.101345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698225, 33.289459, 40.070496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064832, 0.103520, -0.992512,
		0.126634, 0.987417, 0.094716,
		0.989829, -0.119545, -0.077125,
		30.995174, 33.253597, 40.047359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326479, 33.277618, 39.455898>,  <30.302294, 33.337276, 40.101345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326479, 33.277618, 39.455898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719166, 33.242039, 39.523212>,  <30.954779, 33.220692, 39.563602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719166, 33.242039, 39.523212>,  <30.326479, 33.277618, 39.455898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719166, 33.242039, 39.523212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155533, -0.134836, -0.978585,
		0.109732, 0.986868, -0.118537,
		0.981717, -0.088945, 0.168287,
		31.013681, 33.215355, 39.573700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709166, 33.589222, 38.916065>,  <30.326479, 33.277618, 39.455898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709166, 33.589222, 38.916065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953907, 33.314964, 39.073811>,  <31.100752, 33.150410, 39.168457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953907, 33.314964, 39.073811>,  <30.709166, 33.589222, 38.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953907, 33.314964, 39.073811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234984, -0.318504, -0.918334,
		0.755261, 0.654555, -0.033762,
		0.611853, -0.685648, 0.394363,
		31.137463, 33.109268, 39.192120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257929, 33.649807, 38.443882>,  <30.709166, 33.589222, 38.916065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257929, 33.649807, 38.443882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296167, 33.299255, 38.632694>,  <31.319111, 33.088924, 38.745983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296167, 33.299255, 38.632694>,  <31.257929, 33.649807, 38.443882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296167, 33.299255, 38.632694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066758, -0.467495, -0.881471,
		0.993179, 0.115776, 0.013816,
		0.095594, -0.876381, 0.472035,
		31.324846, 33.036343, 38.774303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780844, 33.289333, 38.111488>,  <31.257929, 33.649807, 38.443882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780844, 33.289333, 38.111488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572599, 33.013519, 38.312889>,  <31.447653, 32.848030, 38.433727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572599, 33.013519, 38.312889>,  <31.780844, 33.289333, 38.111488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572599, 33.013519, 38.312889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008246, -0.593753, -0.804605,
		0.853755, -0.414733, 0.314799,
		-0.520609, -0.689532, 0.503500,
		31.416416, 32.806660, 38.463940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175552, 32.673359, 38.009388>,  <31.780844, 33.289333, 38.111488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175552, 32.673359, 38.009388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811113, 32.556572, 38.125767>,  <31.592449, 32.486500, 38.195595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811113, 32.556572, 38.125767>,  <32.175552, 32.673359, 38.009388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811113, 32.556572, 38.125767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095153, -0.537816, -0.837675,
		0.401053, -0.790890, 0.462222,
		-0.911100, -0.291970, 0.290949,
		31.537783, 32.468983, 38.213051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112614, 31.894030, 37.977844>,  <32.175552, 32.673359, 38.009388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112614, 31.894030, 37.977844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751780, 32.058807, 37.926395>,  <31.535278, 32.157673, 37.895527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751780, 32.058807, 37.926395>,  <32.112614, 31.894030, 37.977844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751780, 32.058807, 37.926395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116711, -0.519801, -0.846278,
		-0.415474, -0.748404, 0.516984,
		-0.902086, 0.411945, -0.128616,
		31.481153, 32.182392, 37.887810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673702, 31.406870, 37.904945>,  <32.112614, 31.894030, 37.977844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673702, 31.406870, 37.904945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511948, 31.729130, 37.731785>,  <31.414896, 31.922485, 37.627888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511948, 31.729130, 37.731785>,  <31.673702, 31.406870, 37.904945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511948, 31.729130, 37.731785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173508, -0.532307, -0.828579,
		-0.897980, -0.259954, 0.355044,
		-0.404385, 0.805650, -0.432897,
		31.390633, 31.970825, 37.601917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841652, 30.723719, 38.123459>,  <31.673702, 31.406870, 37.904945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841652, 30.723719, 38.123459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231667, 30.636612, 38.106098>,  <32.465675, 30.584347, 38.095684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231667, 30.636612, 38.106098>,  <31.841652, 30.723719, 38.123459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231667, 30.636612, 38.106098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056212, -0.431150, 0.900527,
		-0.214817, -0.875606, -0.432628,
		0.975035, -0.217768, -0.043399,
		32.524178, 30.571281, 38.093079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888220, 29.924389, 38.119926>,  <31.841652, 30.723719, 38.123459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888220, 29.924389, 38.119926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187439, 30.118835, 38.300644>,  <32.366970, 30.235502, 38.409077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187439, 30.118835, 38.300644>,  <31.888220, 29.924389, 38.119926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187439, 30.118835, 38.300644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247781, -0.426969, 0.869657,
		0.615656, -0.762489, -0.198942,
		0.748046, 0.486115, 0.451796,
		32.411854, 30.264669, 38.436184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218658, 29.449858, 38.511131>,  <31.888220, 29.924389, 38.119926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218658, 29.449858, 38.511131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296612, 29.782429, 38.719265>,  <32.343384, 29.981972, 38.844147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296612, 29.782429, 38.719265>,  <32.218658, 29.449858, 38.511131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296612, 29.782429, 38.719265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047171, -0.521946, 0.851673,
		0.979692, -0.190519, -0.062498,
		0.194881, 0.831430, 0.520333,
		32.355076, 30.031858, 38.875366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645443, 29.291023, 39.020844>,  <32.218658, 29.449858, 38.511131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645443, 29.291023, 39.020844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580700, 29.665075, 39.146915>,  <32.541855, 29.889505, 39.222557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580700, 29.665075, 39.146915>,  <32.645443, 29.291023, 39.020844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580700, 29.665075, 39.146915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063929, -0.308783, 0.948982,
		0.984742, 0.173747, -0.009803,
		-0.161856, 0.935128, 0.315179,
		32.532143, 29.945614, 39.241470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185299, 29.547344, 39.392513>,  <32.645443, 29.291023, 39.020844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185299, 29.547344, 39.392513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844734, 29.698908, 39.537579>,  <32.640396, 29.789846, 39.624619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844734, 29.698908, 39.537579>,  <33.185299, 29.547344, 39.392513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844734, 29.698908, 39.537579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190877, -0.420185, 0.887136,
		0.488530, 0.824543, 0.285425,
		-0.851413, 0.378911, 0.362659,
		32.589310, 29.812582, 39.646378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364967, 29.894461, 39.991974>,  <33.185299, 29.547344, 39.392513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364967, 29.894461, 39.991974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981503, 29.781775, 40.008015>,  <32.751423, 29.714163, 40.017639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981503, 29.781775, 40.008015>,  <33.364967, 29.894461, 39.991974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981503, 29.781775, 40.008015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132976, -0.318939, 0.938400,
		-0.251574, 0.904939, 0.343216,
		-0.958660, -0.281716, 0.040098,
		32.693905, 29.697260, 40.020042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259693, 30.090200, 40.585182>,  <33.364967, 29.894461, 39.991974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259693, 30.090200, 40.585182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956127, 29.840109, 40.512371>,  <32.773987, 29.690054, 40.468685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956127, 29.840109, 40.512371>,  <33.259693, 30.090200, 40.585182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956127, 29.840109, 40.512371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001467, -0.281168, 0.959657,
		-0.651184, 0.728035, 0.214301,
		-0.758919, -0.625228, -0.182024,
		32.728451, 29.652540, 40.457764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801483, 30.100000, 41.134823>,  <33.259693, 30.090200, 40.585182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801483, 30.100000, 41.134823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671837, 29.751495, 40.987392>,  <32.594048, 29.542393, 40.898933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671837, 29.751495, 40.987392>,  <32.801483, 30.100000, 41.134823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671837, 29.751495, 40.987392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174163, -0.327999, 0.928485,
		-0.929847, 0.365131, -0.045432,
		-0.324117, -0.871261, -0.368581,
		32.574600, 29.490116, 40.876820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211407, 30.097256, 41.475800>,  <32.801483, 30.100000, 41.134823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211407, 30.097256, 41.475800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310863, 29.729296, 41.354500>,  <32.370537, 29.508520, 41.281719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310863, 29.729296, 41.354500>,  <32.211407, 30.097256, 41.475800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310863, 29.729296, 41.354500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237867, -0.361488, 0.901524,
		-0.938935, -0.152019, -0.308694,
		0.248638, -0.919900, -0.303253,
		32.385456, 29.453325, 41.263523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702446, 29.697737, 41.706528>,  <32.211407, 30.097256, 41.475800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702446, 29.697737, 41.706528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012714, 29.451948, 41.648899>,  <32.198875, 29.304474, 41.614323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012714, 29.451948, 41.648899>,  <31.702446, 29.697737, 41.706528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012714, 29.451948, 41.648899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140309, -0.390448, 0.909870,
		-0.615344, -0.685545, -0.389075,
		0.775671, -0.614474, -0.144072,
		32.245415, 29.267607, 41.605679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421059, 29.083456, 41.904118>,  <31.702446, 29.697737, 41.706528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421059, 29.083456, 41.904118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817247, 29.031229, 41.921658>,  <32.054958, 28.999893, 41.932182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817247, 29.031229, 41.921658>,  <31.421059, 29.083456, 41.904118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817247, 29.031229, 41.921658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084498, -0.324641, 0.942055,
		-0.108764, -0.936782, -0.332579,
		0.990470, -0.130564, 0.043847,
		32.114388, 28.992060, 41.934811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396471, 28.560425, 42.307087>,  <31.421059, 29.083456, 41.904118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396471, 28.560425, 42.307087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771423, 28.699736, 42.305374>,  <31.996395, 28.783321, 42.304344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771423, 28.699736, 42.305374>,  <31.396471, 28.560425, 42.307087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771423, 28.699736, 42.305374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055255, -0.136547, 0.989092,
		0.343893, -0.927393, -0.147241,
		0.937382, 0.348277, -0.004286,
		32.052639, 28.804218, 42.304089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781969, 28.050259, 42.617947>,  <31.396471, 28.560425, 42.307087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781969, 28.050259, 42.617947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994999, 28.386309, 42.659035>,  <32.122818, 28.587938, 42.683685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994999, 28.386309, 42.659035>,  <31.781969, 28.050259, 42.617947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994999, 28.386309, 42.659035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035862, -0.143648, 0.988979,
		0.845623, -0.523022, -0.106632,
		0.532575, 0.840127, 0.102716,
		32.154770, 28.638348, 42.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312214, 27.866316, 43.182236>,  <31.781969, 28.050259, 42.617947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312214, 27.866316, 43.182236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311188, 28.265842, 43.162788>,  <32.310570, 28.505558, 43.151119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311188, 28.265842, 43.162788>,  <32.312214, 27.866316, 43.182236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311188, 28.265842, 43.162788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113148, 0.048593, 0.992389,
		0.993575, -0.002951, -0.113138,
		-0.002569, 0.998814, -0.048615,
		32.310417, 28.565487, 43.148205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846615, 27.999031, 43.611359>,  <32.312214, 27.866316, 43.182236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846615, 27.999031, 43.611359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595657, 28.307432, 43.567665>,  <32.445084, 28.492474, 43.541451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595657, 28.307432, 43.567665>,  <32.846615, 27.999031, 43.611359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595657, 28.307432, 43.567665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157943, 0.263350, 0.951683,
		0.762517, 0.579827, -0.286999,
		-0.627393, 0.771004, -0.109230,
		32.407440, 28.538733, 43.534897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150200, 28.535669, 43.974960>,  <32.846615, 27.999031, 43.611359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150200, 28.535669, 43.974960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766418, 28.641880, 43.937111>,  <32.536152, 28.705606, 43.914402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766418, 28.641880, 43.937111>,  <33.150200, 28.535669, 43.974960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766418, 28.641880, 43.937111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036958, 0.214278, 0.976073,
		0.279448, 0.939990, -0.195776,
		-0.959449, 0.265526, -0.094620,
		32.478584, 28.721539, 43.908726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128586, 29.261955, 44.285896>,  <33.150200, 28.535669, 43.974960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128586, 29.261955, 44.285896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761795, 29.102694, 44.295948>,  <32.541721, 29.007135, 44.301979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761795, 29.102694, 44.295948>,  <33.128586, 29.261955, 44.285896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761795, 29.102694, 44.295948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060770, 0.201655, 0.977570,
		-0.394292, 0.894879, -0.209108,
		-0.916974, -0.398155, 0.025129,
		32.486702, 28.983248, 44.303486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641499, 29.681114, 44.673771>,  <33.128586, 29.261955, 44.285896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641499, 29.681114, 44.673771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460541, 29.324409, 44.677753>,  <32.351967, 29.110386, 44.680141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460541, 29.324409, 44.677753>,  <32.641499, 29.681114, 44.673771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460541, 29.324409, 44.677753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058289, 0.040702, 0.997470,
		-0.889913, 0.450667, -0.070394,
		-0.452391, -0.891764, 0.009952,
		32.324821, 29.056881, 44.680740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975050, 29.822193, 44.977306>,  <32.641499, 29.681114, 44.673771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975050, 29.822193, 44.977306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989630, 29.424412, 45.016762>,  <31.998377, 29.185743, 45.040436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989630, 29.424412, 45.016762>,  <31.975050, 29.822193, 44.977306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989630, 29.424412, 45.016762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052152, 0.096676, 0.993949,
		-0.997974, -0.041373, -0.048339,
		0.036450, -0.994456, 0.098637,
		32.000565, 29.126076, 45.046352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389496, 29.640739, 45.327148>,  <31.975050, 29.822193, 44.977306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389496, 29.640739, 45.327148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641357, 29.335443, 45.385109>,  <31.792475, 29.152266, 45.419888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641357, 29.335443, 45.385109>,  <31.389496, 29.640739, 45.327148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641357, 29.335443, 45.385109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134681, 0.076457, 0.987935,
		-0.765112, -0.641574, -0.054653,
		0.629655, -0.763241, 0.144905,
		31.830254, 29.106472, 45.428581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993967, 29.147593, 45.768154>,  <31.389496, 29.640739, 45.327148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993967, 29.147593, 45.768154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369888, 29.011732, 45.783188>,  <31.595440, 28.930216, 45.792210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369888, 29.011732, 45.783188>,  <30.993967, 29.147593, 45.768154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369888, 29.011732, 45.783188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101136, -0.171398, 0.979997,
		-0.326414, -0.924803, -0.195431,
		0.939801, -0.339649, 0.037584,
		31.651829, 28.909838, 45.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988956, 28.437031, 45.979660>,  <30.993967, 29.147593, 45.768154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988956, 28.437031, 45.979660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328558, 28.613022, 46.096699>,  <31.532318, 28.718616, 46.166924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328558, 28.613022, 46.096699>,  <30.988956, 28.437031, 45.979660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328558, 28.613022, 46.096699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239168, -0.173798, 0.955297,
		0.471162, -0.881030, -0.042326,
		0.849002, 0.439977, 0.292601,
		31.583260, 28.745014, 46.184479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095387, 28.139200, 46.592705>,  <30.988956, 28.437031, 45.979660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095387, 28.139200, 46.592705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357042, 28.441730, 46.589176>,  <31.514036, 28.623249, 46.587059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357042, 28.441730, 46.589176>,  <31.095387, 28.139200, 46.592705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357042, 28.441730, 46.589176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054654, -0.035628, 0.997870,
		0.754399, -0.653226, -0.064642,
		0.654137, 0.756324, -0.008824,
		31.553284, 28.668629, 46.586529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553679, 27.947285, 47.174637>,  <31.095387, 28.139200, 46.592705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553679, 27.947285, 47.174637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604387, 28.330328, 47.071163>,  <31.634811, 28.560154, 47.009079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604387, 28.330328, 47.071163>,  <31.553679, 27.947285, 47.174637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604387, 28.330328, 47.071163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156622, 0.238196, 0.958505,
		0.979489, -0.162027, -0.119785,
		0.126771, 0.957606, -0.258688,
		31.642418, 28.617609, 46.993557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003181, 28.208921, 47.584881>,  <31.553679, 27.947285, 47.174637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003181, 28.208921, 47.584881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810995, 28.545898, 47.487350>,  <31.695684, 28.748085, 47.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810995, 28.545898, 47.487350>,  <32.003181, 28.208921, 47.584881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810995, 28.545898, 47.487350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135084, 0.203609, 0.969688,
		0.866549, 0.498836, 0.015974,
		-0.480463, 0.842440, -0.243822,
		31.666857, 28.798630, 47.414204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353374, 28.636517, 48.011127>,  <32.003181, 28.208921, 47.584881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353374, 28.636517, 48.011127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002708, 28.812748, 47.933826>,  <31.792309, 28.918488, 47.887447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002708, 28.812748, 47.933826>,  <32.353374, 28.636517, 48.011127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002708, 28.812748, 47.933826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146245, 0.138638, 0.979486,
		0.458332, 0.886945, -0.057107,
		-0.876667, 0.440578, -0.193253,
		31.739708, 28.944921, 47.875851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386826, 29.265816, 48.298229>,  <32.353374, 28.636517, 48.011127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386826, 29.265816, 48.298229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995533, 29.187847, 48.269749>,  <31.760757, 29.141066, 48.252659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995533, 29.187847, 48.269749>,  <32.386826, 29.265816, 48.298229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995533, 29.187847, 48.269749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123181, 0.269272, 0.955154,
		-0.167008, 0.943132, -0.287420,
		-0.978230, -0.194923, -0.071205,
		31.702065, 29.129370, 48.248386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723038, 30.002039, 48.424732>,  <32.386826, 29.265816, 48.298229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723038, 30.002039, 48.424732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097248, 30.044249, 48.559586>,  <33.321774, 30.069574, 48.640499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097248, 30.044249, 48.559586>,  <32.723038, 30.002039, 48.424732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097248, 30.044249, 48.559586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312316, 0.198926, -0.928917,
		-0.165086, 0.974317, 0.153144,
		0.935524, 0.105522, 0.337135,
		33.377907, 30.075905, 48.660725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961235, 30.446228, 47.959621>,  <32.723038, 30.002039, 48.424732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961235, 30.446228, 47.959621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293678, 30.353550, 48.161839>,  <33.493145, 30.297943, 48.283169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293678, 30.353550, 48.161839>,  <32.961235, 30.446228, 47.959621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293678, 30.353550, 48.161839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551098, 0.221412, -0.804530,
		0.074472, 0.947256, 0.311704,
		0.831111, -0.231694, 0.505542,
		33.543011, 30.284042, 48.313499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405106, 31.091068, 48.044769>,  <32.961235, 30.446228, 47.959621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405106, 31.091068, 48.044769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616158, 30.751493, 48.056858>,  <33.742786, 30.547749, 48.064110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616158, 30.751493, 48.056858>,  <33.405106, 31.091068, 48.044769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616158, 30.751493, 48.056858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484488, 0.271515, -0.831595,
		0.697768, 0.453413, 0.554559,
		0.527628, -0.848938, 0.030219,
		33.774445, 30.496813, 48.065922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064751, 31.216757, 47.845940>,  <33.405106, 31.091068, 48.044769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064751, 31.216757, 47.845940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046757, 30.819830, 47.799831>,  <34.035961, 30.581675, 47.772167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046757, 30.819830, 47.799831>,  <34.064751, 31.216757, 47.845940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046757, 30.819830, 47.799831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439191, 0.083993, -0.894459,
		0.897267, -0.090858, 0.432038,
		-0.044981, -0.992316, -0.115268,
		34.033264, 30.522135, 47.765251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736759, 30.967384, 47.527210>,  <34.064751, 31.216757, 47.845940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736759, 30.967384, 47.527210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465378, 30.693079, 47.421810>,  <34.302547, 30.528496, 47.358570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465378, 30.693079, 47.421810>,  <34.736759, 30.967384, 47.527210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465378, 30.693079, 47.421810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351862, 0.011538, -0.935981,
		0.644900, -0.727735, 0.233465,
		-0.678452, -0.685762, -0.263502,
		34.261841, 30.487350, 47.342758>
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
