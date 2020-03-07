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
	<4.524467, 3.294711, 4.749468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481669, 3.598091, 4.492313>,  <4.455990, 3.780119, 4.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481669, 3.598091, 4.492313>,  <4.524467, 3.294711, 4.749468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481669, 3.598091, 4.492313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914301, -0.329107, -0.236099,
		-0.390648, 0.562532, 0.728665,
		-0.106995, 0.758450, -0.642888,
		4.449571, 3.825626, 4.299447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985373, 3.704871, 4.956016>,  <4.524467, 3.294711, 4.749468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985373, 3.704871, 4.956016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.072895, 3.646973, 4.570026>,  <4.125408, 3.612234, 4.338433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.072895, 3.646973, 4.570026>,  <3.985373, 3.704871, 4.956016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.072895, 3.646973, 4.570026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886616, -0.442466, -0.134669,
		-0.407475, 0.885027, -0.225147,
		0.218805, -0.144745, -0.964973,
		4.138536, 3.603549, 4.280534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.601329, 4.079543, 4.405980>,  <3.985373, 3.704871, 4.956016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.601329, 4.079543, 4.405980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.727891, 3.731594, 4.254608>,  <3.803828, 3.522825, 4.163785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.727891, 3.731594, 4.254608>,  <3.601329, 4.079543, 4.405980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.727891, 3.731594, 4.254608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947102, -0.267081, -0.177947,
		0.053719, 0.414715, -0.908364,
		0.316404, -0.869873, -0.378430,
		3.822812, 3.470632, 4.141079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.011065, 3.811272, 4.270721>,  <3.601329, 4.079543, 4.405980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.011065, 3.811272, 4.270721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.266806, 3.557411, 4.097080>,  <3.420251, 3.405095, 3.992896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.266806, 3.557411, 4.097080>,  <3.011065, 3.811272, 4.270721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.266806, 3.557411, 4.097080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768099, -0.501173, -0.398560,
		0.035386, 0.588254, -0.807902,
		0.639353, -0.634652, -0.434103,
		3.458612, 3.367016, 3.966850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.829201, 3.782931, 3.510627>,  <3.011065, 3.811272, 4.270721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.829201, 3.782931, 3.510627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.017003, 3.462471, 3.659073>,  <3.129684, 3.270195, 3.748140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.017003, 3.462471, 3.659073>,  <2.829201, 3.782931, 3.510627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.017003, 3.462471, 3.659073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789197, -0.569257, -0.230464,
		0.395895, -0.184679, -0.899534,
		0.469504, -0.801149, 0.371114,
		3.157854, 3.222126, 3.770407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.916919, 3.231877, 2.950028>,  <2.829201, 3.782931, 3.510627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.916919, 3.231877, 2.950028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.940077, 3.056351, 3.308712>,  <2.953971, 2.951035, 3.523922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.940077, 3.056351, 3.308712>,  <2.916919, 3.231877, 2.950028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.940077, 3.056351, 3.308712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699375, -0.658797, -0.277237,
		0.712406, -0.611086, -0.345037,
		0.057894, -0.438816, 0.896710,
		2.957445, 2.924706, 3.577725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.103504, 2.473246, 2.893697>,  <2.916919, 3.231877, 2.950028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.103504, 2.473246, 2.893697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.897741, 2.529343, 3.232098>,  <2.774284, 2.563001, 3.435138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.897741, 2.529343, 3.232098>,  <3.103504, 2.473246, 2.893697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.897741, 2.529343, 3.232098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597596, -0.766169, -0.236357,
		0.615033, -0.627150, 0.477930,
		-0.514407, 0.140242, 0.846001,
		2.743419, 2.571415, 3.485898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023302, 1.885079, 3.204491>,  <3.103504, 2.473246, 2.893697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023302, 1.885079, 3.204491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722239, 2.082699, 3.378582>,  <2.541602, 2.201271, 3.483037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722239, 2.082699, 3.378582>,  <3.023302, 1.885079, 3.204491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.722239, 2.082699, 3.378582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624923, -0.744176, -0.235950,
		0.207315, -0.449574, 0.868852,
		-0.752656, 0.494050, 0.435228,
		2.496442, 2.230914, 3.509151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.584818, 1.658260, 3.004708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.371986, 1.837059, 3.292343>,  <1.244287, 1.944338, 3.464924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.371986, 1.837059, 3.292343>,  <1.584818, 1.658260, 3.004708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.371986, 1.837059, 3.292343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824040, 0.468534, 0.318488,
		-0.194554, 0.762017, -0.617640,
		-0.532079, 0.446996, 0.719087,
		1.212363, 1.971158, 3.508069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.617512, 2.384817, 2.958910>,  <1.584818, 1.658260, 3.004708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.617512, 2.384817, 2.958910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566467, 2.254192, 3.333519>,  <1.535841, 2.175817, 3.558284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566467, 2.254192, 3.333519>,  <1.617512, 2.384817, 2.958910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.566467, 2.254192, 3.333519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868368, 0.419443, 0.264583,
		-0.479220, 0.847009, 0.230051,
		-0.127611, -0.326562, 0.936521,
		1.528184, 2.156224, 3.614475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.652794, 2.971437, 3.547514>,  <1.617512, 2.384817, 2.958910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.652794, 2.971437, 3.547514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.774387, 2.612686, 3.676018>,  <1.847344, 2.397436, 3.753120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.774387, 2.612686, 3.676018>,  <1.652794, 2.971437, 3.547514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.774387, 2.612686, 3.676018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850267, 0.407514, 0.333134,
		-0.429698, 0.171888, 0.886462,
		0.303984, -0.896876, 0.321259,
		1.865583, 2.343623, 3.772395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.760149, 2.892443, 4.325697>,  <1.652794, 2.971437, 3.547514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.760149, 2.892443, 4.325697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.990562, 2.684376, 4.073471>,  <2.128810, 2.559535, 3.922136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.990562, 2.684376, 4.073471>,  <1.760149, 2.892443, 4.325697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.990562, 2.684376, 4.073471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813107, 0.443823, 0.376667,
		0.083928, -0.729688, 0.678610,
		0.576033, -0.520169, -0.630564,
		2.163372, 2.528325, 3.884302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.337141, 2.427667, 4.670847>,  <1.760149, 2.892443, 4.325697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.337141, 2.427667, 4.670847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.451866, 2.511536, 4.296944>,  <2.520702, 2.561857, 4.072601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.451866, 2.511536, 4.296944>,  <2.337141, 2.427667, 4.670847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.451866, 2.511536, 4.296944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825538, 0.440949, 0.352208,
		0.486029, -0.872698, -0.046621,
		0.286814, 0.209671, -0.934759,
		2.537910, 2.574437, 4.016516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.007056, 2.247931, 4.674943>,  <2.337141, 2.427667, 4.670847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.007056, 2.247931, 4.674943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.992279, 2.462952, 4.337975>,  <2.983413, 2.591964, 4.135794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.992279, 2.462952, 4.337975>,  <3.007056, 2.247931, 4.674943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.992279, 2.462952, 4.337975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931535, 0.323704, 0.165707,
		0.361772, -0.778623, -0.512707,
		-0.036942, 0.537552, -0.842421,
		2.981196, 2.624217, 4.085248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.643589, 2.164174, 4.352877>,  <3.007056, 2.247931, 4.674943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.643589, 2.164174, 4.352877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.508106, 2.491634, 4.167366>,  <3.426817, 2.688110, 4.056059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.508106, 2.491634, 4.167366>,  <3.643589, 2.164174, 4.352877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.508106, 2.491634, 4.167366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918167, 0.395261, 0.027150,
		0.205539, -0.416630, -0.885536,
		-0.338707, 0.818650, -0.463777,
		3.406494, 2.737229, 4.028233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.949335, 2.307173, 3.637834>,  <3.643589, 2.164174, 4.352877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.949335, 2.307173, 3.637834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.850594, 2.653896, 3.811134>,  <3.791348, 2.861930, 3.915115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.850594, 2.653896, 3.811134>,  <3.949335, 2.307173, 3.637834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.850594, 2.653896, 3.811134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952087, 0.300235, -0.058209,
		-0.180533, 0.398124, -0.899391,
		-0.246854, 0.866808, 0.433251,
		3.776537, 2.913939, 3.941110>
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
