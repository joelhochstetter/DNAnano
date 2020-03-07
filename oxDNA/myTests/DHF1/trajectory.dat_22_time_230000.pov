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
	<4.382505, 1.797374, 1.207277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.071037, 1.688877, 0.980967>,  <3.884157, 1.623779, 0.845181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.071037, 1.688877, 0.980967>,  <4.382505, 1.797374, 1.207277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.071037, 1.688877, 0.980967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606351, 0.557103, 0.567428,
		0.161286, 0.784898, -0.598267,
		-0.778669, -0.271242, -0.565776,
		3.837437, 1.607505, 0.811234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.191538, 2.316218, 0.822758>,  <4.382505, 1.797374, 1.207277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.191538, 2.316218, 0.822758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893223, 2.064030, 0.908833>,  <3.714234, 1.912717, 0.960478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893223, 2.064030, 0.908833>,  <4.191538, 2.316218, 0.822758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893223, 2.064030, 0.908833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472574, 0.728354, 0.496159,
		-0.469546, 0.268339, -0.841143,
		-0.745789, -0.630471, 0.215186,
		3.669486, 1.874888, 0.973389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.640936, 2.539575, 0.649807>,  <4.191538, 2.316218, 0.822758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.640936, 2.539575, 0.649807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.577772, 2.306744, 0.968868>,  <3.539874, 2.167045, 1.160304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.577772, 2.306744, 0.968868>,  <3.640936, 2.539575, 0.649807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.577772, 2.306744, 0.968868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224097, 0.807835, 0.545146,
		-0.961689, -0.092668, -0.258007,
		-0.157910, -0.582079, 0.797652,
		3.530399, 2.132120, 1.208163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.082000, 2.855886, 1.002248>,  <3.640936, 2.539575, 0.649807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.082000, 2.855886, 1.002248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.217655, 2.580303, 1.258474>,  <3.299049, 2.414953, 1.412209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.217655, 2.580303, 1.258474>,  <3.082000, 2.855886, 1.002248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.217655, 2.580303, 1.258474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290821, 0.570780, 0.767875,
		-0.894655, -0.446706, -0.006790,
		0.339139, -0.688958, 0.640563,
		3.319397, 2.373616, 1.450643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.592549, 2.643770, 1.494072>,  <3.082000, 2.855886, 1.002248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.592549, 2.643770, 1.494072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945992, 2.573307, 1.667604>,  <3.158057, 2.531029, 1.771723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945992, 2.573307, 1.667604>,  <2.592549, 2.643770, 1.494072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.945992, 2.573307, 1.667604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322217, 0.443488, 0.836358,
		-0.339729, -0.878798, 0.335108,
		0.883607, -0.176158, 0.433829,
		3.211073, 2.520460, 1.797753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.509235, 2.392614, 2.163488>,  <2.592549, 2.643770, 1.494072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.509235, 2.392614, 2.163488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.856798, 2.590492, 2.156852>,  <3.065336, 2.709219, 2.152871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.856798, 2.590492, 2.156852>,  <2.509235, 2.392614, 2.163488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.856798, 2.590492, 2.156852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285516, 0.528307, 0.799608,
		0.404325, -0.690049, 0.600294,
		0.868908, 0.494695, -0.016588,
		3.117471, 2.738901, 2.151876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.593063, 2.549452, 2.911621>,  <2.509235, 2.392614, 2.163488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.593063, 2.549452, 2.911621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.856972, 2.768093, 2.705350>,  <3.015317, 2.899278, 2.581587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.856972, 2.768093, 2.705350>,  <2.593063, 2.549452, 2.911621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.856972, 2.768093, 2.705350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091484, 0.622702, 0.777093,
		0.745875, -0.559881, 0.360837,
		0.659773, 0.546603, -0.515678,
		3.054904, 2.932074, 2.550646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.845390, 1.823405, 3.213024>,  <2.593063, 2.549452, 2.911621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.845390, 1.823405, 3.213024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.602123, 1.679569, 3.496102>,  <2.456163, 1.593268, 3.665948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.602123, 1.679569, 3.496102>,  <2.845390, 1.823405, 3.213024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.602123, 1.679569, 3.496102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754101, -0.016729, -0.656546,
		0.247926, -0.932961, -0.260992,
		-0.608166, -0.359589, 0.707694,
		2.419673, 1.571693, 3.708410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.754451, 3.359722, 5.202202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.665194, 3.477779, 4.830590>,  <4.611639, 3.548614, 4.607623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.665194, 3.477779, 4.830590>,  <4.754451, 3.359722, 5.202202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.665194, 3.477779, 4.830590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898437, -0.432019, 0.078547,
		-0.378177, 0.852203, 0.361569,
		-0.223143, 0.295143, -0.929031,
		4.598251, 3.566322, 4.551881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.110440, 3.726102, 5.275805>,  <4.754451, 3.359722, 5.202202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.110440, 3.726102, 5.275805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.173010, 3.545774, 4.924284>,  <4.210552, 3.437578, 4.713371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.173010, 3.545774, 4.924284>,  <4.110440, 3.726102, 5.275805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.173010, 3.545774, 4.924284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795441, -0.584942, 0.158482,
		-0.585499, 0.674254, -0.450081,
		0.156414, -0.450804, -0.878812,
		4.219937, 3.410529, 4.660643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.384111, 3.547353, 5.058849>,  <4.110440, 3.726102, 5.275805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.384111, 3.547353, 5.058849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625078, 3.303213, 4.853105>,  <3.769658, 3.156729, 4.729658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625078, 3.303213, 4.853105>,  <3.384111, 3.547353, 5.058849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625078, 3.303213, 4.853105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734744, -0.675808, -0.058604,
		-0.311840, 0.413228, -0.855569,
		0.602417, -0.610350, -0.514361,
		3.805803, 3.120108, 4.698796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.107964, 3.422786, 4.368283>,  <3.384111, 3.547353, 5.058849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.107964, 3.422786, 4.368283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.309351, 3.107574, 4.510005>,  <3.430183, 2.918448, 4.595038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.309351, 3.107574, 4.510005>,  <3.107964, 3.422786, 4.368283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.309351, 3.107574, 4.510005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843390, -0.537290, 0.003446,
		0.187649, -0.300553, -0.935123,
		0.503468, -0.788027, 0.354306,
		3.460392, 2.871166, 4.616297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.046533, 2.915989, 3.952110>,  <3.107964, 3.422786, 4.368283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.046533, 2.915989, 3.952110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.053000, 2.789667, 4.331585>,  <3.056881, 2.713874, 4.559270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.053000, 2.789667, 4.331585>,  <3.046533, 2.915989, 3.952110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.053000, 2.789667, 4.331585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871689, -0.469233, -0.141345,
		0.489792, -0.824674, -0.282870,
		0.016169, -0.315804, 0.948686,
		3.057851, 2.694926, 4.616191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.072994, 2.151002, 3.917455>,  <3.046533, 2.915989, 3.952110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.072994, 2.151002, 3.917455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.920346, 2.314430, 4.249103>,  <2.828758, 2.412487, 4.448091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.920346, 2.314430, 4.249103>,  <3.072994, 2.151002, 3.917455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.920346, 2.314430, 4.249103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797476, -0.599058, -0.071854,
		0.467332, -0.688623, 0.554436,
		-0.381619, 0.408570, 0.829118,
		2.805861, 2.437001, 4.497838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.746200, 1.564128, 4.398015>,  <3.072994, 2.151002, 3.917455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.746200, 1.564128, 4.398015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596254, 1.919270, 4.504744>,  <2.506287, 2.132354, 4.568781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596254, 1.919270, 4.504744>,  <2.746200, 1.564128, 4.398015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.596254, 1.919270, 4.504744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887121, -0.427115, 0.174899,
		0.269248, -0.171140, 0.947743,
		-0.374863, 0.887854, 0.266821,
		2.483795, 2.185626, 4.584790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.426809, 1.476223, 4.962739>,  <2.746200, 1.564128, 4.398015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.426809, 1.476223, 4.962739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.242597, 1.762135, 4.752214>,  <2.132069, 1.933681, 4.625899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.242597, 1.762135, 4.752214>,  <2.426809, 1.476223, 4.962739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.242597, 1.762135, 4.752214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833576, -0.552031, -0.020316,
		-0.305062, 0.429365, 0.850049,
		-0.460530, 0.714777, -0.526312,
		2.104437, 1.976568, 4.594321>
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
