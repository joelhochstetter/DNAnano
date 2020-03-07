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
	<4.628594, 3.037351, 2.306566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.982750, 3.116020, 2.138088>,  <5.195244, 3.163222, 2.037002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.982750, 3.116020, 2.138088>,  <4.628594, 3.037351, 2.306566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.982750, 3.116020, 2.138088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098971, 0.965069, 0.242583,
		0.454190, -0.173095, 0.873928,
		0.885390, 0.196672, -0.421193,
		5.248367, 3.175022, 2.011730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.126012, 3.440813, 2.731574>,  <4.628594, 3.037351, 2.306566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.126012, 3.440813, 2.731574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.207649, 3.515862, 2.347252>,  <5.256631, 3.560890, 2.116659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.207649, 3.515862, 2.347252>,  <5.126012, 3.440813, 2.731574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.207649, 3.515862, 2.347252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126973, 0.978245, 0.164055,
		0.970682, 0.088514, 0.223476,
		0.204094, 0.187621, -0.960804,
		5.268877, 3.572148, 2.059011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.559179, 4.045782, 2.779585>,  <5.126012, 3.440813, 2.731574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.559179, 4.045782, 2.779585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.362595, 4.021471, 2.432075>,  <5.244644, 4.006885, 2.223569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.362595, 4.021471, 2.432075>,  <5.559179, 4.045782, 2.779585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.362595, 4.021471, 2.432075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247487, 0.966182, 0.072411,
		0.834994, 0.250598, -0.489883,
		-0.491462, -0.060777, -0.868776,
		5.215156, 4.003238, 2.171442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.781459, 4.609158, 2.384528>,  <5.559179, 4.045782, 2.779585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.781459, 4.609158, 2.384528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.416634, 4.480234, 2.283133>,  <5.197738, 4.402880, 2.222296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.416634, 4.480234, 2.283133>,  <5.781459, 4.609158, 2.384528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.416634, 4.480234, 2.283133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325175, 0.945122, -0.031717,
		0.249800, 0.053500, -0.966819,
		-0.912064, -0.322308, -0.253488,
		5.143014, 4.383542, 2.207087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.607946, 4.946759, 1.840466>,  <5.781459, 4.609158, 2.384528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.607946, 4.946759, 1.840466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265694, 4.833887, 2.014027>,  <5.060342, 4.766164, 2.118163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.265694, 4.833887, 2.014027>,  <5.607946, 4.946759, 1.840466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.265694, 4.833887, 2.014027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355055, 0.929969, -0.095364,
		-0.376605, -0.235655, -0.895899,
		-0.855631, -0.282179, 0.433902,
		5.009005, 4.749233, 2.144197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.036525, 5.225079, 1.456400>,  <5.607946, 4.946759, 1.840466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.036525, 5.225079, 1.456400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.893356, 5.148531, 1.821972>,  <4.807455, 5.102602, 2.041316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.893356, 5.148531, 1.821972>,  <5.036525, 5.225079, 1.456400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.893356, 5.148531, 1.821972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486249, 0.873789, -0.007466,
		-0.797154, -0.447070, -0.405801,
		-0.357922, -0.191369, 0.913931,
		4.785980, 5.091120, 2.096152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.447999, 5.553007, 1.377390>,  <5.036525, 5.225079, 1.456400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.447999, 5.553007, 1.377390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481361, 5.478285, 1.768930>,  <4.501379, 5.433452, 2.003855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481361, 5.478285, 1.768930>,  <4.447999, 5.553007, 1.377390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481361, 5.478285, 1.768930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328035, 0.922381, 0.203979,
		-0.940976, -0.338110, 0.015654,
		0.083406, -0.186804, 0.978850,
		4.506383, 5.422244, 2.062585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.814424, 5.853406, 1.574527>,  <4.447999, 5.553007, 1.377390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.814424, 5.853406, 1.574527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.067230, 5.844610, 1.884384>,  <4.218914, 5.839333, 2.070298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.067230, 5.844610, 1.884384>,  <3.814424, 5.853406, 1.574527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.067230, 5.844610, 1.884384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161220, 0.973996, 0.159185,
		-0.757999, -0.225495, 0.612037,
		0.632017, -0.021990, 0.774643,
		4.256835, 5.838013, 2.116777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.356731, 1.903294, 1.647964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352570, 1.940071, 2.046247>,  <4.350073, 1.962137, 2.285218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352570, 1.940071, 2.046247>,  <4.356731, 1.903294, 1.647964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.352570, 1.940071, 2.046247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158292, -0.983360, 0.089148,
		0.987337, -0.156685, 0.024785,
		-0.010404, 0.091942, 0.995710,
		4.349448, 1.967653, 2.344960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.001853, 1.715971, 2.094603>,  <4.356731, 1.903294, 1.647964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.001853, 1.715971, 2.094603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.663704, 1.653301, 2.298876>,  <4.460814, 1.615698, 2.421439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.663704, 1.653301, 2.298876>,  <5.001853, 1.715971, 2.094603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.663704, 1.653301, 2.298876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306401, -0.925335, 0.223323,
		0.437562, 0.345265, 0.830260,
		-0.845374, -0.156675, 0.510681,
		4.410092, 1.606298, 2.452080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.260423, 1.433524, 2.667298>,  <5.001853, 1.715971, 2.094603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.260423, 1.433524, 2.667298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.882889, 1.322195, 2.596067>,  <4.656368, 1.255398, 2.553329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.882889, 1.322195, 2.596067>,  <5.260423, 1.433524, 2.667298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.882889, 1.322195, 2.596067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287296, -0.957482, -0.026231,
		-0.163204, -0.075919, 0.983667,
		-0.943835, -0.278323, -0.178077,
		4.599738, 1.238698, 2.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.060119, 0.856204, 3.125554>,  <5.260423, 1.433524, 2.667298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.060119, 0.856204, 3.125554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.796410, 0.830880, 2.825861>,  <4.638184, 0.815686, 2.646045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.796410, 0.830880, 2.825861>,  <5.060119, 0.856204, 3.125554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.796410, 0.830880, 2.825861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152238, -0.987050, -0.050555,
		-0.736329, -0.147392, 0.660375,
		-0.659274, -0.063309, -0.749232,
		4.598627, 0.811888, 2.601091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.821058, 0.206716, 3.291204>,  <5.060119, 0.856204, 3.125554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.821058, 0.206716, 3.291204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.701324, 0.304152, 2.922192>,  <4.629485, 0.362613, 2.700784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.701324, 0.304152, 2.922192>,  <4.821058, 0.206716, 3.291204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.701324, 0.304152, 2.922192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008800, -0.966118, -0.257951,
		-0.954108, -0.085332, 0.287049,
		-0.299334, 0.243587, -0.922531,
		4.611525, 0.377228, 2.645432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.201072, -0.270324, 3.183227>,  <4.821058, 0.206716, 3.291204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.201072, -0.270324, 3.183227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.382668, -0.147845, 2.848530>,  <4.491625, -0.074357, 2.647712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.382668, -0.147845, 2.848530>,  <4.201072, -0.270324, 3.183227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.382668, -0.147845, 2.848530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029431, -0.943737, -0.329384,
		-0.890522, 0.124910, -0.437457,
		0.453988, 0.306198, -0.836742,
		4.518864, -0.055985, 2.597507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.847050, -0.604006, 2.630327>,  <4.201072, -0.270324, 3.183227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.847050, -0.604006, 2.630327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.197571, -0.496140, 2.470640>,  <4.407884, -0.431421, 2.374828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.197571, -0.496140, 2.470640>,  <3.847050, -0.604006, 2.630327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.197571, -0.496140, 2.470640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135394, -0.933116, -0.333110,
		-0.462344, 0.237854, -0.854203,
		0.876302, 0.269665, -0.399217,
		4.460462, -0.415241, 2.350875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.925585, -1.076461, 2.068133>,  <3.847050, -0.604006, 2.630327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.925585, -1.076461, 2.068133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.292427, -0.931457, 2.134468>,  <4.512532, -0.844454, 2.174269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.292427, -0.931457, 2.134468>,  <3.925585, -1.076461, 2.068133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.292427, -0.931457, 2.134468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390972, -0.899153, -0.196633,
		0.077833, 0.245171, -0.966350,
		0.917106, 0.362511, 0.165838,
		4.567559, -0.822703, 2.184220>
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
