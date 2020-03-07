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
	<3.321558, 5.364641, 3.006047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.133999, 5.674004, 2.835413>,  <3.021463, 5.859622, 2.733032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.133999, 5.674004, 2.835413>,  <3.321558, 5.364641, 3.006047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.133999, 5.674004, 2.835413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608866, -0.632916, -0.478225,
		-0.639863, 0.035507, 0.767668,
		-0.468889, 0.773405, -0.426599,
		2.993329, 5.906026, 2.707437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.520888, 5.341651, 3.196074>,  <3.321558, 5.364641, 3.006047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.520888, 5.341651, 3.196074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641800, 5.490349, 2.844976>,  <2.714347, 5.579567, 2.634318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.641800, 5.490349, 2.844976>,  <2.520888, 5.341651, 3.196074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.641800, 5.490349, 2.844976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303204, -0.835497, -0.458270,
		-0.903711, 0.404661, -0.139840,
		0.302280, 0.371743, -0.877743,
		2.732484, 5.601872, 2.581653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.955018, 5.423546, 2.652909>,  <2.520888, 5.341651, 3.196074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.955018, 5.423546, 2.652909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.303959, 5.380440, 2.462168>,  <2.513323, 5.354576, 2.347723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.303959, 5.380440, 2.462168>,  <1.955018, 5.423546, 2.652909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.303959, 5.380440, 2.462168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343314, -0.829460, -0.440603,
		-0.348048, 0.548071, -0.760579,
		0.872352, -0.107767, -0.476853,
		2.565665, 5.348110, 2.319112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.960882, 5.505834, 1.819015>,  <1.955018, 5.423546, 2.652909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.960882, 5.505834, 1.819015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.210972, 5.256035, 2.006247>,  <2.361026, 5.106155, 2.118586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.210972, 5.256035, 2.006247>,  <1.960882, 5.505834, 1.819015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.210972, 5.256035, 2.006247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441435, -0.777576, -0.447784,
		0.643607, 0.073339, -0.761834,
		0.625224, -0.624498, 0.468079,
		2.398539, 5.068686, 2.146670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.202791, 4.998140, 1.296928>,  <1.960882, 5.505834, 1.819015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.202791, 4.998140, 1.296928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213474, 4.855507, 1.670481>,  <2.219884, 4.769927, 1.894612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.213474, 4.855507, 1.670481>,  <2.202791, 4.998140, 1.296928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.213474, 4.855507, 1.670481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459525, -0.834037, -0.305317,
		0.887763, -0.420988, -0.186134,
		0.026707, -0.356583, 0.933882,
		2.221486, 4.748532, 1.950645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.436357, 4.242777, 1.201344>,  <2.202791, 4.998140, 1.296928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.436357, 4.242777, 1.201344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.254719, 4.251137, 1.557627>,  <2.145736, 4.256153, 1.771396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.254719, 4.251137, 1.557627>,  <2.436357, 4.242777, 1.201344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.254719, 4.251137, 1.557627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507328, -0.827885, -0.239218,
		0.732403, -0.560509, 0.386543,
		-0.454097, 0.020900, 0.890707,
		2.118490, 4.257407, 1.824839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.675675, 3.554581, 1.516185>,  <2.436357, 4.242777, 1.201344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.675675, 3.554581, 1.516185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.348778, 3.674171, 1.713255>,  <2.152639, 3.745925, 1.831497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.348778, 3.674171, 1.713255>,  <2.675675, 3.554581, 1.516185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.348778, 3.674171, 1.713255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448544, -0.866751, -0.218061,
		0.361831, -0.399195, 0.842450,
		-0.817243, 0.298975, 0.492674,
		2.103605, 3.763864, 1.861057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.526423, 3.010134, 1.977542>,  <2.675675, 3.554581, 1.516185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.526423, 3.010134, 1.977542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177967, 3.200836, 1.930517>,  <1.968894, 3.315258, 1.902303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.177967, 3.200836, 1.930517>,  <2.526423, 3.010134, 1.977542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.177967, 3.200836, 1.930517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434994, -0.860345, -0.265683,
		-0.227809, -0.180309, 0.956866,
		-0.871140, 0.476755, -0.117561,
		1.916625, 3.343863, 1.895249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.030538, 2.119228, 1.462884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782715, 2.348503, 1.677399>,  <0.634021, 2.486068, 1.806107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782715, 2.348503, 1.677399>,  <1.030538, 2.119228, 1.462884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.782715, 2.348503, 1.677399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682275, 0.731063, 0.006850,
		-0.388133, 0.370139, -0.844009,
		-0.619559, 0.573187, 0.536286,
		0.596847, 2.520459, 1.838284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.997920, 2.755655, 1.180429>,  <1.030538, 2.119228, 1.462884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.997920, 2.755655, 1.180429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.909523, 2.831734, 1.563049>,  <0.856485, 2.877381, 1.792621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.909523, 2.831734, 1.563049>,  <0.997920, 2.755655, 1.180429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.909523, 2.831734, 1.563049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667957, 0.744172, 0.006351,
		-0.710630, 0.640338, -0.291500,
		-0.220993, 0.190196, 0.956550,
		0.843225, 2.888793, 1.850014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.959753, 3.433784, 1.269097>,  <0.997920, 2.755655, 1.180429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.959753, 3.433784, 1.269097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.119087, 3.260521, 1.592505>,  <1.214688, 3.156563, 1.786549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.119087, 3.260521, 1.592505>,  <0.959753, 3.433784, 1.269097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.119087, 3.260521, 1.592505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552280, 0.817040, 0.165627,
		-0.732335, 0.380554, 0.564681,
		0.398336, -0.433156, 0.808519,
		1.238588, 3.130574, 1.835060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.799677, 3.931685, 1.743097>,  <0.959753, 3.433784, 1.269097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.799677, 3.931685, 1.743097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.138138, 3.740555, 1.837507>,  <1.341214, 3.625877, 1.894154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.138138, 3.740555, 1.837507>,  <0.799677, 3.931685, 1.743097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.138138, 3.740555, 1.837507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425659, 0.872421, 0.240198,
		-0.320687, -0.102777, 0.941592,
		0.846152, -0.477826, 0.236027,
		1.391984, 3.597207, 1.908315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.985654, 4.211757, 2.400521>,  <0.799677, 3.931685, 1.743097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.985654, 4.211757, 2.400521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.330620, 4.068573, 2.257353>,  <1.537599, 3.982663, 2.171452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.330620, 4.068573, 2.257353>,  <0.985654, 4.211757, 2.400521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.330620, 4.068573, 2.257353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470629, 0.827380, 0.306515,
		0.186416, -0.432791, 0.882010,
		0.862414, -0.357960, -0.357920,
		1.589344, 3.961185, 2.149977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.510458, 4.265818, 2.917504>,  <0.985654, 4.211757, 2.400521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.510458, 4.265818, 2.917504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.716751, 4.268417, 2.574814>,  <1.840527, 4.269977, 2.369200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.716751, 4.268417, 2.574814>,  <1.510458, 4.265818, 2.917504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.716751, 4.268417, 2.574814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552570, 0.761671, 0.338414,
		0.654742, -0.647932, 0.389227,
		0.515732, 0.006499, -0.856725,
		1.871471, 4.270367, 2.317796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.133579, 4.278286, 3.156553>,  <1.510458, 4.265818, 2.917504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.133579, 4.278286, 3.156553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.167320, 4.420387, 2.784170>,  <2.187565, 4.505648, 2.560741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.167320, 4.420387, 2.784170>,  <2.133579, 4.278286, 3.156553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.167320, 4.420387, 2.784170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662879, 0.677550, 0.318617,
		0.743959, -0.643988, -0.178337,
		0.084352, 0.355254, -0.930956,
		2.192626, 4.526963, 2.504883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.761027, 4.176889, 2.900315>,  <2.133579, 4.278286, 3.156553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.761027, 4.176889, 2.900315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.640907, 4.486481, 2.677326>,  <2.568835, 4.672236, 2.543533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.640907, 4.486481, 2.677326>,  <2.761027, 4.176889, 2.900315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.640907, 4.486481, 2.677326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737010, 0.559289, 0.379489,
		0.605505, -0.296902, -0.738385,
		-0.300299, 0.773980, -0.557472,
		2.550817, 4.718675, 2.510085>
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
