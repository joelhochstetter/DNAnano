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
	<2.248674, 1.954963, 5.543755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.325111, 2.182224, 5.223583>,  <2.370974, 2.318581, 5.031480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.325111, 2.182224, 5.223583>,  <2.248674, 1.954963, 5.543755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.325111, 2.182224, 5.223583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770221, 0.592294, 0.236534,
		0.608477, 0.571307, 0.550785,
		0.191093, 0.568152, -0.800430,
		2.382440, 2.352670, 4.983455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.216677, 2.750501, 5.650555>,  <2.248674, 1.954963, 5.543755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.216677, 2.750501, 5.650555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.121315, 2.633556, 5.280109>,  <2.064098, 2.563390, 5.057842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.121315, 2.633556, 5.280109>,  <2.216677, 2.750501, 5.650555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.121315, 2.633556, 5.280109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939954, 0.309280, 0.144333,
		0.244232, 0.904914, -0.348541,
		-0.238406, -0.292362, -0.926114,
		2.049793, 2.545848, 5.002275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.054050, 3.233002, 5.023471>,  <2.216677, 2.750501, 5.650555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.054050, 3.233002, 5.023471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835579, 2.902702, 4.967146>,  <1.704496, 2.704522, 4.933351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.835579, 2.902702, 4.967146>,  <2.054050, 3.233002, 5.023471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.835579, 2.902702, 4.967146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837135, 0.532058, 0.126958,
		-0.029916, 0.187221, -0.981862,
		-0.546177, -0.825750, -0.140813,
		1.671726, 2.654977, 4.924902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.627732, 3.420020, 4.381248>,  <2.054050, 3.233002, 5.023471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.627732, 3.420020, 4.381248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.467964, 3.177876, 4.656639>,  <1.372104, 3.032589, 4.821874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.467964, 3.177876, 4.656639>,  <1.627732, 3.420020, 4.381248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.467964, 3.177876, 4.656639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785414, 0.613299, 0.083603,
		-0.472853, -0.507347, -0.720423,
		-0.399419, -0.605362, 0.688478,
		1.348138, 2.996267, 4.863183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.942517, 3.145717, 4.166235>,  <1.627732, 3.420020, 4.381248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.942517, 3.145717, 4.166235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.998421, 3.224926, 4.554308>,  <1.031963, 3.272451, 4.787152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.998421, 3.224926, 4.554308>,  <0.942517, 3.145717, 4.166235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.998421, 3.224926, 4.554308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744588, 0.666900, -0.028858,
		-0.652730, -0.718354, 0.240650,
		0.139759, 0.198021, 0.970183,
		1.040348, 3.284333, 4.845363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.273420, 3.231156, 4.418824>,  <0.942517, 3.145717, 4.166235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.273420, 3.231156, 4.418824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.504601, 3.418739, 4.685972>,  <0.643309, 3.531289, 4.846261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.504601, 3.418739, 4.685972>,  <0.273420, 3.231156, 4.418824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.504601, 3.418739, 4.685972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676462, 0.733082, 0.070640,
		-0.456476, -0.492615, 0.740918,
		0.577952, 0.468957, 0.667870,
		0.677986, 3.559427, 4.886333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.197910, 3.529694, 4.934539>,  <0.273420, 3.231156, 4.418824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.197910, 3.529694, 4.934539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.138138, 3.737240, 4.997757>,  <0.339767, 3.861768, 5.035688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.138138, 3.737240, 4.997757>,  <-0.197910, 3.529694, 4.934539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.138138, 3.737240, 4.997757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537976, 0.834252, 0.120852,
		-0.069143, -0.186555, 0.980008,
		0.840119, 0.518865, 0.158045,
		0.390174, 3.892899, 5.045170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.171556, 3.997936, 5.618163>,  <-0.197910, 3.529694, 4.934539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.171556, 3.997936, 5.618163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.048004, 4.134552, 5.312992>,  <0.179740, 4.216522, 5.129889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.048004, 4.134552, 5.312992>,  <-0.171556, 3.997936, 5.618163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.048004, 4.134552, 5.312992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637017, 0.761882, -0.117240,
		0.541218, 0.550351, 0.635764,
		0.548900, 0.341540, -0.762928,
		0.212674, 4.237014, 5.084114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.598886, 6.098100, 2.123089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757355, 5.739601, 2.043301>,  <1.852436, 5.524502, 1.995428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757355, 5.739601, 2.043301>,  <1.598886, 6.098100, 2.123089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.757355, 5.739601, 2.043301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299129, 0.079409, -0.950903,
		0.868083, 0.436389, -0.236634,
		0.396173, -0.896247, -0.199470,
		1.876207, 5.470727, 1.983460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.034786, 6.069411, 1.462452>,  <1.598886, 6.098100, 2.123089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.034786, 6.069411, 1.462452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.887573, 5.700825, 1.512177>,  <1.799245, 5.479673, 1.542011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.887573, 5.700825, 1.512177>,  <2.034786, 6.069411, 1.462452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.887573, 5.700825, 1.512177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408462, 0.040120, -0.911893,
		0.835291, -0.386383, -0.391150,
		-0.368033, -0.921466, 0.124311,
		1.777164, 5.424385, 1.549470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.338303, 5.522897, 1.039090>,  <2.034786, 6.069411, 1.462452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.338303, 5.522897, 1.039090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.951065, 5.495594, 1.135534>,  <1.718722, 5.479212, 1.193401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.951065, 5.495594, 1.135534>,  <2.338303, 5.522897, 1.039090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.951065, 5.495594, 1.135534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249919, 0.192790, -0.948880,
		0.018283, -0.978863, -0.203698,
		-0.968094, -0.068256, 0.241112,
		1.660637, 5.475117, 1.207868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.871663, 5.061587, 0.638292>,  <2.338303, 5.522897, 1.039090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.871663, 5.061587, 0.638292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.654350, 5.369160, 0.773104>,  <1.523963, 5.553703, 0.853991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.654350, 5.369160, 0.773104>,  <1.871663, 5.061587, 0.638292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.654350, 5.369160, 0.773104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378792, 0.133757, -0.915765,
		-0.749241, -0.625182, 0.218598,
		-0.543281, 0.768932, 0.337030,
		1.491366, 5.599839, 0.874213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.465868, 4.538985, 0.196556>,  <1.871663, 5.061587, 0.638292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.465868, 4.538985, 0.196556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.131584, 4.319565, 0.186110>,  <0.931014, 4.187913, 0.179842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.131584, 4.319565, 0.186110>,  <1.465868, 4.538985, 0.196556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.131584, 4.319565, 0.186110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511719, -0.795096, 0.325524,
		-0.199331, 0.258679, 0.945173,
		-0.835710, -0.548550, -0.026116,
		0.880871, 4.155000, 0.178275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.498885, 4.077811, 0.751958>,  <1.465868, 4.538985, 0.196556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.498885, 4.077811, 0.751958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222031, 3.915329, 0.513313>,  <1.055918, 3.817840, 0.370126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222031, 3.915329, 0.513313>,  <1.498885, 4.077811, 0.751958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222031, 3.915329, 0.513313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353765, -0.911423, 0.210138,
		-0.629125, -0.065616, 0.774530,
		-0.692136, -0.406205, -0.596612,
		1.014390, 3.793467, 0.334330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.216671, 3.502395, 1.123944>,  <1.498885, 4.077811, 0.751958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.216671, 3.502395, 1.123944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.157860, 3.426395, 0.735659>,  <1.122573, 3.380796, 0.502688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.157860, 3.426395, 0.735659>,  <1.216671, 3.502395, 1.123944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.157860, 3.426395, 0.735659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433993, -0.894261, 0.109301,
		-0.888838, -0.405213, 0.213938,
		-0.147027, -0.189999, -0.970713,
		1.113752, 3.369396, 0.444445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.883072, 2.773426, 1.026945>,  <1.216671, 3.502395, 1.123944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.883072, 2.773426, 1.026945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108566, 2.889774, 0.717728>,  <1.243863, 2.959583, 0.532197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.108566, 2.889774, 0.717728>,  <0.883072, 2.773426, 1.026945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.108566, 2.889774, 0.717728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444866, -0.895509, -0.012535,
		-0.695913, -0.336834, -0.634230,
		0.563737, 0.290871, -0.773043,
		1.277687, 2.977036, 0.485815>
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
