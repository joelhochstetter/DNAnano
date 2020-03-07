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
	<2.812973, 0.953501, 1.202755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.119240, 0.861359, 0.962524>,  <3.302999, 0.806073, 0.818386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.119240, 0.861359, 0.962524>,  <2.812973, 0.953501, 1.202755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.119240, 0.861359, 0.962524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042215, 0.913668, -0.404264,
		0.641852, 0.334885, 0.689840,
		0.765666, -0.230356, -0.600577,
		3.348939, 0.792252, 0.782351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.059002, 1.660048, 0.998760>,  <2.812973, 0.953501, 1.202755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.059002, 1.660048, 0.998760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387558, 1.848572, 1.127251>,  <3.584692, 1.961686, 1.204345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387558, 1.848572, 1.127251>,  <3.059002, 1.660048, 0.998760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.387558, 1.848572, 1.127251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486851, 0.872758, -0.035630,
		-0.297145, -0.127123, 0.946332,
		0.821390, 0.471310, 0.321226,
		3.633975, 1.989965, 1.223618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.857969, 2.041317, 1.573737>,  <3.059002, 1.660048, 0.998760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.857969, 2.041317, 1.573737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.191254, 2.201416, 1.421127>,  <3.391224, 2.297476, 1.329562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.191254, 2.201416, 1.421127>,  <2.857969, 2.041317, 1.573737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.191254, 2.201416, 1.421127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454859, 0.888450, -0.061314,
		0.314423, 0.224627, 0.922324,
		0.833212, 0.400248, -0.381523,
		3.441217, 2.321491, 1.306670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.880583, 2.724615, 1.842795>,  <2.857969, 2.041317, 1.573737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.880583, 2.724615, 1.842795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.142807, 2.705368, 1.541351>,  <3.300142, 2.693820, 1.360485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.142807, 2.705368, 1.541351>,  <2.880583, 2.724615, 1.842795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.142807, 2.705368, 1.541351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332123, 0.877891, -0.344965,
		0.678185, 0.476436, 0.559530,
		0.655560, -0.048118, -0.753608,
		3.339475, 2.690933, 1.315269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.496133, 3.257644, 1.848963>,  <2.880583, 2.724615, 1.842795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.496133, 3.257644, 1.848963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.439400, 3.148186, 1.468437>,  <3.405360, 3.082511, 1.240121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.439400, 3.148186, 1.468437>,  <3.496133, 3.257644, 1.848963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.439400, 3.148186, 1.468437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305341, 0.926263, -0.220915,
		0.941621, 0.259143, -0.214928,
		-0.141832, -0.273645, -0.951316,
		3.396850, 3.066092, 1.183043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.913791, 3.680603, 1.364959>,  <3.496133, 3.257644, 1.848963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.913791, 3.680603, 1.364959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595764, 3.533760, 1.171837>,  <3.404948, 3.445654, 1.055964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.595764, 3.533760, 1.171837>,  <3.913791, 3.680603, 1.364959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.595764, 3.533760, 1.171837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275515, 0.927754, -0.251720,
		0.540332, -0.067115, -0.838771,
		-0.795068, -0.367107, -0.482805,
		3.357244, 3.423628, 1.026995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.857958, 4.067090, 0.740411>,  <3.913791, 3.680603, 1.364959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.857958, 4.067090, 0.740411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492111, 3.913628, 0.791451>,  <3.272603, 3.821550, 0.822074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.492111, 3.913628, 0.791451>,  <3.857958, 4.067090, 0.740411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.492111, 3.913628, 0.791451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383783, 0.724494, -0.572555,
		0.127219, -0.572640, -0.809876,
		-0.914618, -0.383656, 0.127599,
		3.217726, 3.798531, 0.829730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.504903, 4.272587, 0.111694>,  <3.857958, 4.067090, 0.740411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.504903, 4.272587, 0.111694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.205193, 4.193405, 0.364487>,  <3.025367, 4.145896, 0.516162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.205193, 4.193405, 0.364487>,  <3.504903, 4.272587, 0.111694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.205193, 4.193405, 0.364487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487294, 0.811027, -0.323698,
		-0.448477, -0.550500, -0.704144,
		-0.749275, -0.197954, 0.631982,
		2.980410, 4.134019, 0.554081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.385772, 5.498507, 0.162954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.126305, 5.467560, 0.465805>,  <1.970624, 5.448991, 0.647516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.126305, 5.467560, 0.465805>,  <2.385772, 5.498507, 0.162954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.126305, 5.467560, 0.465805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454243, -0.837555, 0.303586,
		0.610648, 0.540848, 0.578440,
		-0.648669, -0.077368, 0.757128,
		1.931704, 5.444349, 0.692943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.752865, 5.380357, 0.797722>,  <2.385772, 5.498507, 0.162954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.752865, 5.380357, 0.797722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.399239, 5.194427, 0.817184>,  <2.187063, 5.082870, 0.828862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.399239, 5.194427, 0.817184>,  <2.752865, 5.380357, 0.797722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.399239, 5.194427, 0.817184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460537, -0.848692, 0.260052,
		-0.079584, 0.252311, 0.964368,
		-0.884066, -0.464823, 0.048656,
		2.134019, 5.054981, 0.831781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.783861, 4.925679, 1.422229>,  <2.752865, 5.380357, 0.797722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.783861, 4.925679, 1.422229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.495003, 4.810760, 1.170525>,  <2.321688, 4.741810, 1.019502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.495003, 4.810760, 1.170525>,  <2.783861, 4.925679, 1.422229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.495003, 4.810760, 1.170525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211665, -0.957815, 0.194392,
		-0.658562, 0.007187, 0.752492,
		-0.722145, -0.287295, -0.629260,
		2.278359, 4.724572, 0.981747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.203830, 4.447463, 1.566528>,  <2.783861, 4.925679, 1.422229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.203830, 4.447463, 1.566528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.300243, 4.404739, 1.180679>,  <2.358091, 4.379105, 0.949170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.300243, 4.404739, 1.180679>,  <2.203830, 4.447463, 1.566528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.300243, 4.404739, 1.180679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273816, -0.946063, 0.173173,
		-0.931089, -0.305869, -0.198786,
		0.241033, -0.106809, -0.964622,
		2.372553, 4.372697, 0.891293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.951013, 3.816528, 1.204118>,  <2.203830, 4.447463, 1.566528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.951013, 3.816528, 1.204118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.258850, 3.892944, 0.960403>,  <2.443552, 3.938794, 0.814175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.258850, 3.892944, 0.960403>,  <1.951013, 3.816528, 1.204118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.258850, 3.892944, 0.960403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386808, -0.898673, 0.206801,
		-0.508041, -0.394829, -0.765509,
		0.769593, 0.191041, -0.609286,
		2.489728, 3.950257, 0.777618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.038888, 3.269314, 0.746930>,  <1.951013, 3.816528, 1.204118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.038888, 3.269314, 0.746930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.404102, 3.432388, 0.751923>,  <2.623231, 3.530233, 0.754918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.404102, 3.432388, 0.751923>,  <2.038888, 3.269314, 0.746930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.404102, 3.432388, 0.751923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405472, -0.910548, 0.080596,
		0.044223, -0.068526, -0.996669,
		0.913037, 0.407685, 0.012482,
		2.678014, 3.554694, 0.755667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.498254, 2.866511, 0.261114>,  <2.038888, 3.269314, 0.746930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.498254, 2.866511, 0.261114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.747795, 3.033142, 0.525620>,  <2.897520, 3.133121, 0.684323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.747795, 3.033142, 0.525620>,  <2.498254, 2.866511, 0.261114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.747795, 3.033142, 0.525620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520777, -0.852468, 0.045718,
		0.582752, 0.315849, -0.748759,
		0.623853, 0.416579, 0.661264,
		2.934951, 3.158116, 0.723999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.144355, 2.701598, 0.034097>,  <2.498254, 2.866511, 0.261114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.144355, 2.701598, 0.034097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.185440, 2.767563, 0.426476>,  <3.210091, 2.807142, 0.661902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.185440, 2.767563, 0.426476>,  <3.144355, 2.701598, 0.034097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.185440, 2.767563, 0.426476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555726, -0.827419, 0.080914,
		0.824997, 0.536826, -0.176632,
		0.102712, 0.164912, 0.980946,
		3.216254, 2.817037, 0.720759>
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
