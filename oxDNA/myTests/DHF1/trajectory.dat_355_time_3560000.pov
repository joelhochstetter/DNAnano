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
	<1.161301, 4.581619, 3.185806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795464, 4.573608, 3.024254>,  <0.575961, 4.568802, 2.927323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795464, 4.573608, 3.024254>,  <1.161301, 4.581619, 3.185806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795464, 4.573608, 3.024254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364388, -0.473868, -0.801668,
		-0.175331, -0.880368, 0.440693,
		-0.914593, -0.020026, -0.403879,
		0.521086, 4.567601, 2.903090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.832987, 3.912270, 3.007719>,  <1.161301, 4.581619, 3.185806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.832987, 3.912270, 3.007719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.725670, 4.210228, 2.763374>,  <0.661279, 4.389003, 2.616768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.725670, 4.210228, 2.763374>,  <0.832987, 3.912270, 3.007719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.725670, 4.210228, 2.763374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375253, -0.503210, -0.778437,
		-0.887245, -0.438076, -0.144516,
		-0.268293, 0.744895, -0.610860,
		0.645182, 4.433696, 2.580116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.335356, 3.757964, 2.417716>,  <0.832987, 3.912270, 3.007719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.335356, 3.757964, 2.417716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.579834, 4.055122, 2.308502>,  <0.726520, 4.233418, 2.242974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.579834, 4.055122, 2.308502>,  <0.335356, 3.757964, 2.417716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.579834, 4.055122, 2.308502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241732, -0.503695, -0.829372,
		-0.753663, 0.440906, -0.487437,
		0.611194, 0.742896, -0.273035,
		0.763192, 4.277991, 2.226592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.120309, 4.014801, 1.772036>,  <0.335356, 3.757964, 2.417716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.120309, 4.014801, 1.772036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.510277, 4.091377, 1.817436>,  <0.744257, 4.137323, 1.844677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.510277, 4.091377, 1.817436>,  <0.120309, 4.014801, 1.772036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.510277, 4.091377, 1.817436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189023, -0.443030, -0.876353,
		-0.117486, 0.875827, -0.468106,
		0.974919, 0.191442, 0.113502,
		0.802752, 4.148810, 1.851487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.374515, 4.291314, 1.174158>,  <0.120309, 4.014801, 1.772036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.374515, 4.291314, 1.174158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.696930, 4.125206, 1.342850>,  <0.890379, 4.025541, 1.444065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.696930, 4.125206, 1.342850>,  <0.374515, 4.291314, 1.174158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.696930, 4.125206, 1.342850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180596, -0.506000, -0.843415,
		0.563640, 0.755986, -0.332859,
		0.806037, -0.415269, 0.421730,
		0.938741, 4.000625, 1.469369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.943238, 4.318975, 0.684977>,  <0.374515, 4.291314, 1.174158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.943238, 4.318975, 0.684977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.026581, 4.030632, 0.949387>,  <1.076586, 3.857626, 1.108032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.026581, 4.030632, 0.949387>,  <0.943238, 4.318975, 0.684977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.026581, 4.030632, 0.949387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149718, -0.644383, -0.749903,
		0.966526, 0.255215, -0.026336,
		0.208357, -0.720857, 0.661023,
		1.089088, 3.814375, 1.147694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.477788, 3.909585, 0.265026>,  <0.943238, 4.318975, 0.684977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.477788, 3.909585, 0.265026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.369999, 3.667130, 0.564354>,  <1.305326, 3.521657, 0.743950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.369999, 3.667130, 0.564354>,  <1.477788, 3.909585, 0.265026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.369999, 3.667130, 0.564354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141848, -0.793571, -0.591712,
		0.952504, -0.053303, 0.299825,
		-0.269473, -0.606138, 0.748319,
		1.289157, 3.485288, 0.788850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.044242, 3.340934, 0.293267>,  <1.477788, 3.909585, 0.265026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.044242, 3.340934, 0.293267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.704834, 3.206459, 0.456726>,  <1.501189, 3.125774, 0.554802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.704834, 3.206459, 0.456726>,  <2.044242, 3.340934, 0.293267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.704834, 3.206459, 0.456726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018070, -0.753392, -0.657323,
		0.528856, -0.565135, 0.633193,
		-0.848519, -0.336187, 0.408648,
		1.450278, 3.105603, 0.579320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.721368, 2.636828, -0.604693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.713936, 2.353439, -0.322495>,  <0.709477, 2.183406, -0.153176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.713936, 2.353439, -0.322495>,  <0.721368, 2.636828, -0.604693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.713936, 2.353439, -0.322495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296348, 0.670007, 0.680638,
		-0.954899, 0.221719, 0.197505,
		-0.018580, -0.708471, 0.705495,
		0.708362, 2.140898, -0.110846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.435101, 2.995671, -0.011231>,  <0.721368, 2.636828, -0.604693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.435101, 2.995671, -0.011231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.623747, 2.661728, 0.102325>,  <0.736934, 2.461362, 0.170459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.623747, 2.661728, 0.102325>,  <0.435101, 2.995671, -0.011231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.623747, 2.661728, 0.102325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505220, 0.519683, 0.688972,
		-0.722726, -0.181502, 0.666876,
		0.471614, -0.834857, 0.283890,
		0.765231, 2.411271, 0.187493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.197085, 2.796039, 0.615564>,  <0.435101, 2.995671, -0.011231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.197085, 2.796039, 0.615564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.577663, 2.680817, 0.572159>,  <0.806010, 2.611683, 0.546116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.577663, 2.680817, 0.572159>,  <0.197085, 2.796039, 0.615564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.577663, 2.680817, 0.572159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257047, 0.549569, 0.794922,
		-0.169347, -0.784218, 0.596929,
		0.951445, -0.288056, -0.108513,
		0.863097, 2.594400, 0.539605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.441046, 2.529781, 1.218744>,  <0.197085, 2.796039, 0.615564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.441046, 2.529781, 1.218744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.740217, 2.719391, 1.032883>,  <0.919720, 2.833157, 0.921366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.740217, 2.719391, 1.032883>,  <0.441046, 2.529781, 1.218744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.740217, 2.719391, 1.032883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199512, 0.507105, 0.838475,
		0.633086, -0.719823, 0.284705,
		0.747929, 0.474025, -0.464654,
		0.964596, 2.861598, 0.893486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.923125, 2.662403, 1.729959>,  <0.441046, 2.529781, 1.218744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.923125, 2.662403, 1.729959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.020658, 2.919800, 1.439728>,  <1.079179, 3.074238, 1.265589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.020658, 2.919800, 1.439728>,  <0.923125, 2.662403, 1.729959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.020658, 2.919800, 1.439728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255697, 0.679031, 0.688140,
		0.935502, -0.353320, 0.001032,
		0.243834, 0.643492, -0.725578,
		1.093809, 3.112848, 1.222054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.506252, 2.874355, 1.933328>,  <0.923125, 2.662403, 1.729959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.506252, 2.874355, 1.933328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359238, 3.157394, 1.691925>,  <1.271029, 3.327218, 1.547083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359238, 3.157394, 1.691925>,  <1.506252, 2.874355, 1.933328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.359238, 3.157394, 1.691925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110334, 0.677519, 0.727183,
		0.923441, 0.200678, -0.327085,
		-0.367536, 0.707599, -0.603507,
		1.248977, 3.369674, 1.510873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.999345, 3.392215, 1.884548>,  <1.506252, 2.874355, 1.933328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.999345, 3.392215, 1.884548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.667206, 3.582764, 1.768898>,  <1.467922, 3.697093, 1.699508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.667206, 3.582764, 1.768898>,  <1.999345, 3.392215, 1.884548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.667206, 3.582764, 1.768898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169636, 0.710309, 0.683143,
		0.530797, 0.518200, -0.670613,
		-0.830348, 0.476371, -0.289125,
		1.418101, 3.725675, 1.682160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.067731, 4.096152, 2.193662>,  <1.999345, 3.392215, 1.884548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.067731, 4.096152, 2.193662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697132, 4.120758, 2.045166>,  <1.474773, 4.135521, 1.956068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.697132, 4.120758, 2.045166>,  <2.067731, 4.096152, 2.193662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.697132, 4.120758, 2.045166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138713, 0.861246, 0.488890,
		0.349804, 0.504451, -0.789409,
		-0.926497, 0.061514, -0.371241,
		1.419183, 4.139213, 1.933794>
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
