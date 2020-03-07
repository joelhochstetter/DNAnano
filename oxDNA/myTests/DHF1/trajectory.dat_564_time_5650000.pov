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
	<1.219573, 6.004327, 0.208100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.198967, 5.834366, 0.569609>,  <1.186603, 5.732389, 0.786514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.198967, 5.834366, 0.569609>,  <1.219573, 6.004327, 0.208100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.198967, 5.834366, 0.569609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531181, -0.778003, -0.335497,
		0.845691, 0.462784, 0.265779,
		-0.051515, -0.424903, 0.903772,
		1.183513, 5.706895, 0.840740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.911446, 5.676506, 0.402343>,  <1.219573, 6.004327, 0.208100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.911446, 5.676506, 0.402343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.595673, 5.498734, 0.571707>,  <1.406208, 5.392070, 0.673325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.595673, 5.498734, 0.571707>,  <1.911446, 5.676506, 0.402343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.595673, 5.498734, 0.571707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367991, -0.894734, -0.253049,
		0.491301, -0.043955, 0.869880,
		-0.789434, -0.444431, 0.423408,
		1.358842, 5.365404, 0.698729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.096364, 5.179692, 0.899796>,  <1.911446, 5.676506, 0.402343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.096364, 5.179692, 0.899796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.759026, 5.110752, 0.696203>,  <1.556623, 5.069388, 0.574047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.759026, 5.110752, 0.696203>,  <2.096364, 5.179692, 0.899796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.759026, 5.110752, 0.696203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307263, -0.931720, -0.193615,
		-0.440860, -0.319676, 0.838719,
		-0.843346, -0.172350, -0.508983,
		1.506022, 5.059047, 0.543508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.776161, 4.527778, 1.115877>,  <2.096364, 5.179692, 0.899796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.776161, 4.527778, 1.115877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.716606, 4.595844, 0.726236>,  <1.680873, 4.636684, 0.492452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.716606, 4.595844, 0.726236>,  <1.776161, 4.527778, 1.115877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.716606, 4.595844, 0.726236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276037, -0.938771, -0.206184,
		-0.949545, -0.299587, 0.092799,
		-0.148888, 0.170165, -0.974103,
		1.671940, 4.646894, 0.434005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.396612, 3.960786, 0.865961>,  <1.776161, 4.527778, 1.115877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.396612, 3.960786, 0.865961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.611004, 4.132771, 0.575346>,  <1.739639, 4.235961, 0.400977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.611004, 4.132771, 0.575346>,  <1.396612, 3.960786, 0.865961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.611004, 4.132771, 0.575346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457845, -0.871083, -0.177743,
		-0.709297, -0.237375, -0.663739,
		0.535980, 0.429962, -0.726538,
		1.771798, 4.261759, 0.357385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.297500, 3.458828, 0.271422>,  <1.396612, 3.960786, 0.865961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.297500, 3.458828, 0.271422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600323, 3.696800, 0.163406>,  <1.782017, 3.839584, 0.098597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600323, 3.696800, 0.163406>,  <1.297500, 3.458828, 0.271422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.600323, 3.696800, 0.163406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506722, -0.795564, -0.332131,
		-0.412427, 0.114608, -0.903752,
		0.757058, 0.594931, -0.270038,
		1.827440, 3.875280, 0.082395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.522370, 3.270117, -0.446329>,  <1.297500, 3.458828, 0.271422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.522370, 3.270117, -0.446329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.820877, 3.470520, -0.271023>,  <1.999981, 3.590762, -0.165839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.820877, 3.470520, -0.271023>,  <1.522370, 3.270117, -0.446329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.820877, 3.470520, -0.271023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659788, -0.643907, -0.387381,
		0.088120, 0.578251, -0.811086,
		0.746267, 0.501009, 0.438265,
		2.044757, 3.620823, -0.139543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.072257, 3.273645, -0.930606>,  <1.522370, 3.270117, -0.446329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.072257, 3.273645, -0.930606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.237396, 3.300430, -0.567272>,  <2.336480, 3.316501, -0.349272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.237396, 3.300430, -0.567272>,  <2.072257, 3.273645, -0.930606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.237396, 3.300430, -0.567272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747541, -0.594651, -0.295929,
		0.520325, 0.801191, -0.295559,
		0.412849, 0.066963, 0.908334,
		2.361251, 3.320519, -0.294772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.366356, 1.854119, 0.197024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.615578, 2.044437, 0.445354>,  <2.765110, 2.158628, 0.594352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.615578, 2.044437, 0.445354>,  <2.366356, 1.854119, 0.197024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.615578, 2.044437, 0.445354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272251, 0.875998, -0.398129,
		-0.733269, 0.079035, 0.675329,
		0.623053, 0.475795, 0.620825,
		2.802494, 2.187176, 0.631602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.918973, 2.422900, 0.498141>,  <2.366356, 1.854119, 0.197024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.918973, 2.422900, 0.498141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.310875, 2.502880, 0.494156>,  <2.546016, 2.550868, 0.491765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.310875, 2.502880, 0.494156>,  <1.918973, 2.422900, 0.498141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.310875, 2.502880, 0.494156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194649, 0.939785, -0.280920,
		-0.046808, 0.277172, 0.959679,
		0.979755, 0.199950, -0.009962,
		2.604802, 2.562865, 0.491167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.160732, 3.010780, 0.913104>,  <1.918973, 2.422900, 0.498141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.160732, 3.010780, 0.913104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431641, 2.969936, 0.621658>,  <2.594186, 2.945431, 0.446791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.431641, 2.969936, 0.621658>,  <2.160732, 3.010780, 0.913104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.431641, 2.969936, 0.621658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105684, 0.966551, -0.233689,
		0.728103, 0.235274, 0.643826,
		0.677271, -0.102108, -0.728613,
		2.634822, 2.939304, 0.403074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.798570, 3.556422, 0.934674>,  <2.160732, 3.010780, 0.913104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.798570, 3.556422, 0.934674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.733917, 3.455841, 0.552963>,  <2.695126, 3.395492, 0.323937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.733917, 3.455841, 0.552963>,  <2.798570, 3.556422, 0.934674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.733917, 3.455841, 0.552963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139831, 0.963072, -0.230087,
		0.976894, 0.096249, -0.190823,
		-0.161631, -0.251453, -0.954278,
		2.685428, 3.380405, 0.266680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.046387, 4.206277, 0.470371>,  <2.798570, 3.556422, 0.934674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.046387, 4.206277, 0.470371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.751122, 4.028500, 0.267361>,  <2.573962, 3.921833, 0.145554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.751122, 4.028500, 0.267361>,  <3.046387, 4.206277, 0.470371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.751122, 4.028500, 0.267361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361571, 0.895776, -0.258556,
		0.569544, -0.007350, -0.821928,
		-0.738164, -0.444444, -0.507526,
		2.529672, 3.895166, 0.115103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.963039, 4.634736, -0.090386>,  <3.046387, 4.206277, 0.470371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.963039, 4.634736, -0.090386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626709, 4.427792, -0.026695>,  <2.424911, 4.303625, 0.011519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626709, 4.427792, -0.026695>,  <2.963039, 4.634736, -0.090386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.626709, 4.427792, -0.026695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534564, 0.839902, -0.093839,
		-0.085186, -0.164019, -0.982772,
		-0.840824, -0.517360, 0.159227,
		2.374462, 4.272583, 0.021073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.451114, 4.789128, -0.665788>,  <2.963039, 4.634736, -0.090386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.451114, 4.789128, -0.665788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.253700, 4.634834, -0.353985>,  <2.135252, 4.542258, -0.166903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.253700, 4.634834, -0.353985>,  <2.451114, 4.789128, -0.665788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.253700, 4.634834, -0.353985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626259, 0.779541, -0.010757,
		-0.603508, -0.493482, -0.626301,
		-0.493535, -0.385735, 0.779507,
		2.105640, 4.519114, -0.120133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.762727, 4.874169, -0.852348>,  <2.451114, 4.789128, -0.665788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.762727, 4.874169, -0.852348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764030, 4.823486, -0.455574>,  <1.764812, 4.793077, -0.217510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764030, 4.823486, -0.455574>,  <1.762727, 4.874169, -0.852348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.764030, 4.823486, -0.455574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729980, 0.677655, 0.088960,
		-0.683461, -0.724382, -0.090287,
		0.003258, -0.126708, 0.991935,
		1.765008, 4.785474, -0.157994>
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
