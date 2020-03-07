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
	<3.653857, 3.527565, 3.846609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.897383, 3.680500, 3.568569>,  <4.043498, 3.772261, 3.401745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.897383, 3.680500, 3.568569>,  <3.653857, 3.527565, 3.846609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.897383, 3.680500, 3.568569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381097, 0.909430, 0.166440,
		0.695782, 0.163570, 0.699380,
		0.608813, 0.382338, -0.695101,
		4.080027, 3.795201, 3.360039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.943312, 4.160414, 4.171742>,  <3.653857, 3.527565, 3.846609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.943312, 4.160414, 4.171742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.923100, 4.190853, 3.773415>,  <3.910972, 4.209117, 3.534418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.923100, 4.190853, 3.773415>,  <3.943312, 4.160414, 4.171742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.923100, 4.190853, 3.773415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548594, 0.831084, 0.091348,
		0.834561, 0.550916, -0.000249,
		-0.050532, 0.076099, -0.995819,
		3.907940, 4.213683, 3.474669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.165801, 4.786464, 3.913014>,  <3.943312, 4.160414, 4.171742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.165801, 4.786464, 3.913014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880884, 4.616016, 3.689922>,  <3.709934, 4.513748, 3.556067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880884, 4.616016, 3.689922>,  <4.165801, 4.786464, 3.913014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880884, 4.616016, 3.689922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535089, 0.843913, 0.038610,
		0.454223, 0.325937, -0.829124,
		-0.712292, -0.426118, -0.557730,
		3.667197, 4.488181, 3.522603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.680813, 5.265638, 3.988815>,  <4.165801, 4.786464, 3.913014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.680813, 5.265638, 3.988815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.453409, 5.003906, 3.789356>,  <3.316967, 4.846867, 3.669681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.453409, 5.003906, 3.789356>,  <3.680813, 5.265638, 3.988815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.453409, 5.003906, 3.789356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785183, 0.612466, 0.091505,
		0.245530, 0.443551, -0.861961,
		-0.568510, -0.654330, -0.498648,
		3.282856, 4.807607, 3.639762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.314752, 5.613904, 3.329892>,  <3.680813, 5.265638, 3.988815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.314752, 5.613904, 3.329892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.097126, 5.318977, 3.490070>,  <2.966550, 5.142021, 3.586177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.097126, 5.318977, 3.490070>,  <3.314752, 5.613904, 3.329892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.097126, 5.318977, 3.490070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778818, 0.621341, 0.085897,
		-0.312146, -0.265140, -0.912286,
		-0.544066, -0.737317, 0.400445,
		2.933906, 5.097782, 3.610204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.724187, 5.586584, 2.921431>,  <3.314752, 5.613904, 3.329892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.724187, 5.586584, 2.921431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.614944, 5.400822, 3.258415>,  <2.549399, 5.289364, 3.460606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.614944, 5.400822, 3.258415>,  <2.724187, 5.586584, 2.921431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.614944, 5.400822, 3.258415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874386, 0.484963, -0.016120,
		-0.401077, -0.741039, -0.538516,
		-0.273106, -0.464405, 0.842461,
		2.533013, 5.261500, 3.511154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.009093, 5.468268, 2.810941>,  <2.724187, 5.586584, 2.921431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.009093, 5.468268, 2.810941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.071587, 5.413223, 3.202175>,  <2.109083, 5.380197, 3.436916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.071587, 5.413223, 3.202175>,  <2.009093, 5.468268, 2.810941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.071587, 5.413223, 3.202175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906500, 0.373263, 0.197316,
		-0.392237, -0.917462, -0.066431,
		0.156234, -0.137614, 0.978087,
		2.118457, 5.371940, 3.495601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.362618, 5.402256, 3.049444>,  <2.009093, 5.468268, 2.810941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.362618, 5.402256, 3.049444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.572830, 5.485737, 3.379356>,  <1.698957, 5.535825, 3.577303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.572830, 5.485737, 3.379356>,  <1.362618, 5.402256, 3.049444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.572830, 5.485737, 3.379356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803419, 0.440668, 0.400413,
		-0.279887, -0.873072, 0.399259,
		0.525530, 0.208702, 0.824780,
		1.730489, 5.548347, 3.626790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.972358, 1.421332, 3.869590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.114624, 1.393135, 4.242371>,  <1.199984, 1.376217, 4.466039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.114624, 1.393135, 4.242371>,  <0.972358, 1.421332, 3.869590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.114624, 1.393135, 4.242371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595350, -0.751579, -0.284055,
		0.720459, 0.655865, -0.225344,
		0.355666, -0.070491, 0.931951,
		1.221324, 1.371988, 4.521956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.671938, 1.558982, 3.900381>,  <0.972358, 1.421332, 3.869590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.671938, 1.558982, 3.900381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.556908, 1.302094, 4.184593>,  <1.487889, 1.147961, 4.355121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.556908, 1.302094, 4.184593>,  <1.671938, 1.558982, 3.900381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.556908, 1.302094, 4.184593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580378, -0.706996, -0.404127,
		0.761880, 0.296159, 0.576045,
		-0.287576, -0.642221, 0.710530,
		1.470635, 1.109427, 4.397752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.252250, 1.358084, 4.300857>,  <1.671938, 1.558982, 3.900381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.252250, 1.358084, 4.300857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.949715, 1.096558, 4.292122>,  <1.768194, 0.939642, 4.286881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.949715, 1.096558, 4.292122>,  <2.252250, 1.358084, 4.300857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.949715, 1.096558, 4.292122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609425, -0.692065, -0.386841,
		0.237811, -0.305891, 0.921887,
		-0.756337, -0.653817, -0.021837,
		1.722813, 0.900413, 4.285571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.426133, 0.767003, 4.707118>,  <2.252250, 1.358084, 4.300857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.426133, 0.767003, 4.707118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.203217, 0.672661, 4.388672>,  <2.069467, 0.616056, 4.197604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.203217, 0.672661, 4.388672>,  <2.426133, 0.767003, 4.707118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.203217, 0.672661, 4.388672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661328, -0.705844, -0.253828,
		-0.502066, -0.667949, 0.549338,
		-0.557292, -0.235855, -0.796115,
		2.036029, 0.601904, 4.149837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.263654, 0.119997, 4.733318>,  <2.426133, 0.767003, 4.707118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.263654, 0.119997, 4.733318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.242317, 0.202454, 4.342491>,  <2.229516, 0.251928, 4.107995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.242317, 0.202454, 4.342491>,  <2.263654, 0.119997, 4.733318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.242317, 0.202454, 4.342491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557435, -0.805668, -0.200412,
		-0.828505, -0.555341, -0.071936,
		-0.053340, 0.206142, -0.977067,
		2.226315, 0.264296, 4.049371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.213998, -0.575270, 4.474495>,  <2.263654, 0.119997, 4.733318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.213998, -0.575270, 4.474495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308128, -0.313141, 4.187393>,  <2.364607, -0.155863, 4.015132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308128, -0.313141, 4.187393>,  <2.213998, -0.575270, 4.474495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.308128, -0.313141, 4.187393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712271, -0.618745, -0.331396,
		-0.661280, -0.433250, -0.612375,
		0.235327, 0.655323, -0.717756,
		2.378726, -0.116544, 3.972066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.271853, -1.005137, 3.866246>,  <2.213998, -0.575270, 4.474495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.271853, -1.005137, 3.866246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463211, -0.666069, 3.774513>,  <2.578026, -0.462628, 3.719474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463211, -0.666069, 3.774513>,  <2.271853, -1.005137, 3.866246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.463211, -0.666069, 3.774513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806212, -0.527483, -0.267925,
		-0.348080, -0.056717, -0.935747,
		0.478395, 0.847670, -0.229332,
		2.606730, -0.411768, 3.705714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.467462, -1.092619, 3.158599>,  <2.271853, -1.005137, 3.866246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.467462, -1.092619, 3.158599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.713280, -0.826317, 3.327881>,  <2.860771, -0.666535, 3.429450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.713280, -0.826317, 3.327881>,  <2.467462, -1.092619, 3.158599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.713280, -0.826317, 3.327881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786111, -0.561726, -0.257862,
		0.066052, 0.491154, -0.868565,
		0.614546, 0.665756, 0.423205,
		2.897643, -0.626590, 3.454842>
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
