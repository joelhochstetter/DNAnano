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
	<1.860136, -0.265086, 2.505969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080158, -0.437977, 2.791800>,  <2.212172, -0.541711, 2.963298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080158, -0.437977, 2.791800>,  <1.860136, -0.265086, 2.505969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.080158, -0.437977, 2.791800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192105, 0.767217, 0.611943,
		-0.812733, -0.473877, 0.338979,
		0.550056, -0.432227, 0.714576,
		2.245175, -0.567645, 3.006172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.370840, -0.210582, 3.087492>,  <1.860136, -0.265086, 2.505969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.370840, -0.210582, 3.087492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.763004, -0.208557, 3.166250>,  <1.998303, -0.207342, 3.213506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.763004, -0.208557, 3.166250>,  <1.370840, -0.210582, 3.087492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.763004, -0.208557, 3.166250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114884, 0.826701, 0.550788,
		-0.159986, -0.562620, 0.811088,
		0.980411, 0.005063, 0.196897,
		2.057128, -0.207038, 3.225319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.426301, 0.026938, 3.678066>,  <1.370840, -0.210582, 3.087492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.426301, 0.026938, 3.678066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.805748, 0.095299, 3.571543>,  <2.033416, 0.136315, 3.507629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.805748, 0.095299, 3.571543>,  <1.426301, 0.026938, 3.678066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.805748, 0.095299, 3.571543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067667, 0.931699, 0.356874,
		0.309108, -0.320517, 0.895389,
		0.948617, 0.170901, -0.266307,
		2.090333, 0.146569, 3.491651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.775701, 0.409162, 4.274395>,  <1.426301, 0.026938, 3.678066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.775701, 0.409162, 4.274395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.979473, 0.457623, 3.933619>,  <2.101736, 0.486699, 3.729153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.979473, 0.457623, 3.933619>,  <1.775701, 0.409162, 4.274395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.979473, 0.457623, 3.933619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282011, 0.911858, 0.298304,
		0.812989, -0.392222, 0.430362,
		0.509430, 0.121151, -0.851941,
		2.132302, 0.493968, 3.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.423979, 0.721945, 4.468493>,  <1.775701, 0.409162, 4.274395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.423979, 0.721945, 4.468493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396061, 0.806339, 4.078495>,  <2.379310, 0.856976, 3.844496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396061, 0.806339, 4.078495>,  <2.423979, 0.721945, 4.468493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.396061, 0.806339, 4.078495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209925, 0.958598, 0.192410,
		0.975223, -0.191246, -0.111196,
		-0.069795, 0.210986, -0.974994,
		2.375123, 0.869635, 3.785997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.820714, 1.367715, 4.290282>,  <2.423979, 0.721945, 4.468493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.820714, 1.367715, 4.290282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.606075, 1.393589, 3.953739>,  <2.477292, 1.409114, 3.751814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.606075, 1.393589, 3.953739>,  <2.820714, 1.367715, 4.290282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.606075, 1.393589, 3.953739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017360, 0.996000, 0.087647,
		0.843661, 0.061637, -0.533327,
		-0.536596, 0.064686, -0.841357,
		2.445096, 1.412995, 3.701332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.061084, 1.961161, 4.032058>,  <2.820714, 1.367715, 4.290282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.061084, 1.961161, 4.032058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.710037, 1.882225, 3.857315>,  <2.499409, 1.834863, 3.752469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.710037, 1.882225, 3.857315>,  <3.061084, 1.961161, 4.032058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.710037, 1.882225, 3.857315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226417, 0.973916, 0.014911,
		0.422521, 0.111998, -0.899407,
		-0.877617, -0.197341, -0.436858,
		2.446752, 1.823023, 3.726258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.984359, 2.473466, 3.560556>,  <3.061084, 1.961161, 4.032058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.984359, 2.473466, 3.560556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.611843, 2.364799, 3.657633>,  <2.388334, 2.299599, 3.715879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.611843, 2.364799, 3.657633>,  <2.984359, 2.473466, 3.560556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.611843, 2.364799, 3.657633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279910, 0.960026, 0.000539,
		-0.233136, -0.067430, -0.970103,
		-0.931288, -0.271667, 0.242691,
		2.332457, 2.283299, 3.730440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.468865, 3.162218, 4.324543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.098228, 3.270329, 4.219946>,  <1.875847, 3.335195, 4.157187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.098228, 3.270329, 4.219946>,  <2.468865, 3.162218, 4.324543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.098228, 3.270329, 4.219946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153286, -0.906384, -0.393665,
		-0.343412, -0.324684, 0.881277,
		-0.926591, 0.270276, -0.261494,
		1.820251, 3.351412, 4.141498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.034140, 2.746452, 4.688217>,  <2.468865, 3.162218, 4.324543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.034140, 2.746452, 4.688217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.876953, 2.869125, 4.341455>,  <1.782641, 2.942729, 4.133399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.876953, 2.869125, 4.341455>,  <2.034140, 2.746452, 4.688217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.876953, 2.869125, 4.341455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065379, -0.949677, -0.306330,
		-0.917225, -0.063701, 0.393242,
		-0.392967, 0.306684, -0.866904,
		1.759063, 2.961131, 4.081384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.405673, 2.345441, 4.499749>,  <2.034140, 2.746452, 4.688217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.405673, 2.345441, 4.499749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.610062, 2.483311, 4.184761>,  <1.732695, 2.566032, 3.995768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.610062, 2.483311, 4.184761>,  <1.405673, 2.345441, 4.499749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.610062, 2.483311, 4.184761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000729, -0.915917, -0.401367,
		-0.859597, 0.205662, -0.467756,
		0.510972, 0.344673, -0.787470,
		1.763353, 2.586713, 3.948520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.136516, 1.972998, 3.975837>,  <1.405673, 2.345441, 4.499749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.136516, 1.972998, 3.975837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.515694, 2.069328, 3.892500>,  <1.743200, 2.127127, 3.842498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.515694, 2.069328, 3.892500>,  <1.136516, 1.972998, 3.975837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.515694, 2.069328, 3.892500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151065, -0.916046, -0.371537,
		-0.280328, 0.320723, -0.904739,
		0.947943, 0.240826, -0.208343,
		1.800077, 2.141576, 3.829997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.191530, 1.661134, 3.288441>,  <1.136516, 1.972998, 3.975837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.191530, 1.661134, 3.288441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.558235, 1.720402, 3.436815>,  <1.778258, 1.755963, 3.525840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.558235, 1.720402, 3.436815>,  <1.191530, 1.661134, 3.288441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.558235, 1.720402, 3.436815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296027, -0.875508, -0.381906,
		0.268170, 0.459924, -0.846495,
		0.916762, 0.148170, 0.370935,
		1.833264, 1.764853, 3.548096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.643330, 1.500310, 2.738432>,  <1.191530, 1.661134, 3.288441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.643330, 1.500310, 2.738432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.887611, 1.450260, 3.051197>,  <2.034180, 1.420230, 3.238856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.887611, 1.450260, 3.051197>,  <1.643330, 1.500310, 2.738432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.887611, 1.450260, 3.051197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274383, -0.892826, -0.357177,
		0.742803, 0.432672, -0.510920,
		0.610703, -0.125124, 0.781912,
		2.070822, 1.412723, 3.285771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.210921, 1.090698, 2.483858>,  <1.643330, 1.500310, 2.738432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.210921, 1.090698, 2.483858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.241997, 1.033100, 2.878468>,  <2.260642, 0.998542, 3.115233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.241997, 1.033100, 2.878468>,  <2.210921, 1.090698, 2.483858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.241997, 1.033100, 2.878468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038995, -0.989197, -0.141313,
		0.996215, -0.027490, -0.082466,
		0.077690, -0.143994, 0.986524,
		2.265304, 0.989902, 3.174425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.785680, 0.639990, 2.516609>,  <2.210921, 1.090698, 2.483858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.785680, 0.639990, 2.516609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.581352, 0.606415, 2.858841>,  <2.458755, 0.586270, 3.064180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.581352, 0.606415, 2.858841>,  <2.785680, 0.639990, 2.516609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.581352, 0.606415, 2.858841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179554, -0.983690, 0.010696,
		0.840728, 0.159086, 0.517559,
		-0.510819, -0.083937, 0.855581,
		2.428106, 0.581234, 3.115515>
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
