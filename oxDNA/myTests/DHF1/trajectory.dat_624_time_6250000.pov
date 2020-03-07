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
	<0.157328, 0.368457, 1.367438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.209297, 0.513702, 1.300430>,  <-0.429272, 0.600850, 1.260226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.209297, 0.513702, 1.300430>,  <0.157328, 0.368457, 1.367438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.209297, 0.513702, 1.300430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395907, 0.764979, -0.508001,
		-0.056314, -0.531936, -0.844910,
		-0.916562, 0.363113, -0.167518,
		-0.484266, 0.622636, 1.250175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.114130, 0.425000, 0.583211>,  <0.157328, 0.368457, 1.367438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.114130, 0.425000, 0.583211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.233984, 0.702759, 0.844908>,  <-0.305896, 0.869414, 1.001926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.233984, 0.702759, 0.844908>,  <-0.114130, 0.425000, 0.583211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.233984, 0.702759, 0.844908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546947, 0.686898, -0.478561,
		-0.781708, 0.214442, -0.585617,
		-0.299635, 0.694396, 0.654242,
		-0.323874, 0.911078, 1.041180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.499763, 0.999774, 0.280116>,  <-0.114130, 0.425000, 0.583211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.499763, 0.999774, 0.280116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.308346, 1.113895, 0.612285>,  <-0.193496, 1.182368, 0.811586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.308346, 1.113895, 0.612285>,  <-0.499763, 0.999774, 0.280116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.308346, 1.113895, 0.612285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500562, 0.688372, -0.524958,
		-0.721412, 0.666892, 0.186603,
		0.478542, 0.285304, 0.830421,
		-0.164783, 1.199487, 0.861411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.518610, 1.626724, 0.200034>,  <-0.499763, 0.999774, 0.280116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.518610, 1.626724, 0.200034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.219246, 1.558977, 0.456533>,  <-0.039628, 1.518329, 0.610433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.219246, 1.558977, 0.456533>,  <-0.518610, 1.626724, 0.200034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.219246, 1.558977, 0.456533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526137, 0.740273, -0.418540,
		-0.403811, 0.650624, 0.643137,
		0.748409, -0.169367, 0.641248,
		0.005277, 1.508167, 0.648908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.443643, 2.184731, 0.700348>,  <-0.518610, 1.626724, 0.200034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.443643, 2.184731, 0.700348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.096197, 2.001438, 0.624949>,  <0.112270, 1.891462, 0.579710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.096197, 2.001438, 0.624949>,  <-0.443643, 2.184731, 0.700348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.096197, 2.001438, 0.624949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425902, 0.884899, -0.188576,
		0.253213, 0.083519, 0.963799,
		0.868614, -0.458234, -0.188497,
		0.164387, 1.863968, 0.568400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.024798, 2.669371, 1.043278>,  <-0.443643, 2.184731, 0.700348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.024798, 2.669371, 1.043278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.272932, 2.437578, 0.831851>,  <0.421813, 2.298503, 0.704995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.272932, 2.437578, 0.831851>,  <0.024798, 2.669371, 1.043278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.272932, 2.437578, 0.831851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616185, 0.777016, -0.128696,
		0.485283, -0.245861, 0.839078,
		0.620336, -0.579481, -0.528569,
		0.459033, 2.263734, 0.673280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.716691, 2.568722, 1.337349>,  <0.024798, 2.669371, 1.043278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.716691, 2.568722, 1.337349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.770514, 2.529875, 0.942895>,  <0.802807, 2.506567, 0.706223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.770514, 2.529875, 0.942895>,  <0.716691, 2.568722, 1.337349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.770514, 2.529875, 0.942895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650484, 0.759392, 0.013970,
		0.747506, -0.643345, 0.165356,
		0.134557, -0.097118, -0.986135,
		0.810881, 2.500739, 0.647054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.366380, 2.741807, 1.320634>,  <0.716691, 2.568722, 1.337349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.366380, 2.741807, 1.320634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225355, 2.797525, 0.950489>,  <1.140740, 2.830956, 0.728402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225355, 2.797525, 0.950489>,  <1.366380, 2.741807, 1.320634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.225355, 2.797525, 0.950489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542192, 0.836373, -0.080675,
		0.762711, -0.530167, -0.370398,
		-0.352562, 0.139295, -0.925363,
		1.119587, 2.839314, 0.672880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.849004, 3.567300, 0.582637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.860992, 3.624793, 0.186972>,  <1.868185, 3.659289, -0.050427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.860992, 3.624793, 0.186972>,  <1.849004, 3.567300, 0.582637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.860992, 3.624793, 0.186972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594169, -0.793224, -0.133264,
		-0.803782, 0.591723, 0.061629,
		0.029970, 0.143733, -0.989163,
		1.869983, 3.667913, -0.109777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.221477, 3.760772, 0.289884>,  <1.849004, 3.567300, 0.582637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.221477, 3.760772, 0.289884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.442120, 3.543230, 0.036917>,  <1.574505, 3.412705, -0.114864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.442120, 3.543230, 0.036917>,  <1.221477, 3.760772, 0.289884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.442120, 3.543230, 0.036917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698131, -0.715939, 0.006755,
		-0.456447, 0.437784, -0.774598,
		0.551607, -0.543854, -0.632418,
		1.607602, 3.380074, -0.152809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918633, 3.525098, -0.434365>,  <1.221477, 3.760772, 0.289884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918633, 3.525098, -0.434365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.100792, 3.258209, -0.198593>,  <1.210088, 3.098076, -0.057130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.100792, 3.258209, -0.198593>,  <0.918633, 3.525098, -0.434365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.100792, 3.258209, -0.198593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841086, -0.539483, 0.039148,
		0.291867, -0.513590, -0.806870,
		0.455399, -0.667221, 0.589431,
		1.237411, 3.058043, -0.021764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.807627, 2.783472, -0.597945>,  <0.918633, 3.525098, -0.434365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.807627, 2.783472, -0.597945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.927326, 2.762914, -0.216829>,  <0.999146, 2.750579, 0.011840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.927326, 2.762914, -0.216829>,  <0.807627, 2.783472, -0.597945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.927326, 2.762914, -0.216829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564668, -0.814463, 0.133416,
		0.769155, -0.577935, -0.272748,
		0.299249, -0.051394, 0.952790,
		1.017101, 2.747495, 0.069008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.875963, 2.041915, -0.546641>,  <0.807627, 2.783472, -0.597945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.875963, 2.041915, -0.546641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887241, 2.204510, -0.181353>,  <0.894008, 2.302067, 0.037820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887241, 2.204510, -0.181353>,  <0.875963, 2.041915, -0.546641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.887241, 2.204510, -0.181353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314105, -0.863706, 0.394145,
		0.948970, -0.297960, 0.103327,
		0.028195, 0.406487, 0.913221,
		0.895700, 2.326456, 0.092614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.160402, 1.574444, -0.139448>,  <0.875963, 2.041915, -0.546641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.160402, 1.574444, -0.139448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932701, 1.796709, 0.102938>,  <0.796081, 1.930067, 0.248369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.932701, 1.796709, 0.102938>,  <1.160402, 1.574444, -0.139448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.932701, 1.796709, 0.102938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494280, -0.820265, 0.287840,
		0.656994, -0.135662, 0.741590,
		-0.569251, 0.555662, 0.605964,
		0.761926, 1.963407, 0.284727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.237066, 1.230360, 0.393655>,  <1.160402, 1.574444, -0.139448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.237066, 1.230360, 0.393655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.891273, 1.426952, 0.435833>,  <0.683798, 1.544908, 0.461140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.891273, 1.426952, 0.435833>,  <1.237066, 1.230360, 0.393655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.891273, 1.426952, 0.435833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348146, -0.736732, 0.579673,
		0.362583, 0.464406, 0.807997,
		-0.864481, 0.491481, 0.105446,
		0.631929, 1.574397, 0.467467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.102746, 1.261762, 1.169206>,  <1.237066, 1.230360, 0.393655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.102746, 1.261762, 1.169206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.754135, 1.305813, 0.978077>,  <0.544969, 1.332244, 0.863399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.754135, 1.305813, 0.978077>,  <1.102746, 1.261762, 1.169206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.754135, 1.305813, 0.978077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408401, -0.702343, 0.583029,
		-0.271388, 0.703268, 0.657086,
		-0.871526, 0.110127, -0.477823,
		0.492677, 1.338851, 0.834730>
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
