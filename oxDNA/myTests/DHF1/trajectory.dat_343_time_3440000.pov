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
	<4.229330, 2.450956, 1.350982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.130322, 2.325516, 0.984291>,  <4.070917, 2.250252, 0.764277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.130322, 2.325516, 0.984291>,  <4.229330, 2.450956, 1.350982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.130322, 2.325516, 0.984291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631070, 0.665759, -0.398140,
		0.735176, -0.677067, 0.033115,
		-0.247521, -0.313601, -0.916727,
		4.056065, 2.231435, 0.709273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.785371, 2.201048, 0.945174>,  <4.229330, 2.450956, 1.350982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.785371, 2.201048, 0.945174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479095, 2.387367, 0.767746>,  <4.295330, 2.499159, 0.661289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479095, 2.387367, 0.767746>,  <4.785371, 2.201048, 0.945174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.479095, 2.387367, 0.767746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553338, 0.828604, -0.085044,
		0.327930, -0.310561, -0.892196,
		-0.765688, 0.465798, -0.443569,
		4.249389, 2.527107, 0.634675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.960586, 2.517363, 0.209431>,  <4.785371, 2.201048, 0.945174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.960586, 2.517363, 0.209431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.677647, 2.707909, 0.418327>,  <4.507883, 2.822236, 0.543665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.677647, 2.707909, 0.418327>,  <4.960586, 2.517363, 0.209431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.677647, 2.707909, 0.418327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416460, 0.877819, -0.236631,
		-0.571156, 0.050112, -0.819311,
		-0.707349, 0.476363, 0.522241,
		4.465442, 2.850818, 0.575000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.532775, 2.906592, -0.243989>,  <4.960586, 2.517363, 0.209431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.532775, 2.906592, -0.243989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.535557, 3.066071, 0.122833>,  <4.537226, 3.161758, 0.342927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.535557, 3.066071, 0.122833>,  <4.532775, 2.906592, -0.243989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.535557, 3.066071, 0.122833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510024, 0.787414, -0.346201,
		-0.860132, 0.470127, -0.197870,
		0.006953, 0.398697, 0.917056,
		4.537642, 3.185680, 0.397950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.451712, 3.613029, -0.372733>,  <4.532775, 2.906592, -0.243989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.451712, 3.613029, -0.372733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.617664, 3.601532, -0.008965>,  <4.717236, 3.594634, 0.209297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.617664, 3.601532, -0.008965>,  <4.451712, 3.613029, -0.372733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.617664, 3.601532, -0.008965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713045, 0.631134, -0.305347,
		-0.565190, 0.775141, 0.282340,
		0.414881, -0.028742, 0.909421,
		4.742129, 3.592909, 0.263862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.491086, 4.291561, -0.083983>,  <4.451712, 3.613029, -0.372733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.491086, 4.291561, -0.083983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784576, 4.085297, 0.092987>,  <4.960670, 3.961538, 0.199169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.784576, 4.085297, 0.092987>,  <4.491086, 4.291561, -0.083983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.784576, 4.085297, 0.092987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644704, 0.733936, -0.213762,
		-0.214483, 0.442077, 0.870956,
		0.733725, -0.515661, 0.442426,
		5.004694, 3.930598, 0.225715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.913137, 4.781147, 0.244883>,  <4.491086, 4.291561, -0.083983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.913137, 4.781147, 0.244883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171078, 4.476768, 0.216240>,  <5.325842, 4.294141, 0.199054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171078, 4.476768, 0.216240>,  <4.913137, 4.781147, 0.244883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171078, 4.476768, 0.216240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689162, 0.619404, -0.376024,
		0.330487, 0.193131, 0.923839,
		0.644852, -0.760946, -0.071607,
		5.364533, 4.248485, 0.194758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.534361, 5.065603, 0.473501>,  <4.913137, 4.781147, 0.244883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.534361, 5.065603, 0.473501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.642284, 4.736626, 0.273186>,  <5.707038, 4.539239, 0.152997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.642284, 4.736626, 0.273186>,  <5.534361, 5.065603, 0.473501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.642284, 4.736626, 0.273186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818762, 0.469669, -0.330213,
		0.506786, -0.320932, 0.800107,
		0.269809, -0.822444, -0.500788,
		5.723227, 4.489892, 0.122949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.595458, 5.088200, -1.094670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.684899, 4.798889, -0.833328>,  <1.738564, 4.625303, -0.676523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.684899, 4.798889, -0.833328>,  <1.595458, 5.088200, -1.094670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.684899, 4.798889, -0.833328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942048, -0.332373, -0.045536,
		0.250092, -0.605310, -0.755681,
		0.223604, -0.723276, 0.653355,
		1.751981, 4.581906, -0.637322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.250607, 4.438324, -1.220275>,  <1.595458, 5.088200, -1.094670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.250607, 4.438324, -1.220275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349120, 4.410828, -0.833572>,  <1.408228, 4.394330, -0.601551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.349120, 4.410828, -0.833572>,  <1.250607, 4.438324, -1.220275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.349120, 4.410828, -0.833572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864711, -0.466104, 0.187143,
		0.437745, -0.882055, -0.174236,
		0.246282, -0.068743, 0.966757,
		1.423005, 4.390205, -0.543545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.835488, 3.922184, -0.907961>,  <1.250607, 4.438324, -1.220275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.835488, 3.922184, -0.907961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.973966, 4.096191, -0.575478>,  <1.057052, 4.200596, -0.375987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.973966, 4.096191, -0.575478>,  <0.835488, 3.922184, -0.907961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.973966, 4.096191, -0.575478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628420, -0.550329, 0.549751,
		0.696591, -0.712669, 0.082855,
		0.346193, 0.435019, 0.831209,
		1.077824, 4.226697, -0.326115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.174207, 3.398160, -0.502878>,  <0.835488, 3.922184, -0.907961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.174207, 3.398160, -0.502878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.047049, 3.699615, -0.272758>,  <0.970753, 3.880489, -0.134687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.047049, 3.699615, -0.272758>,  <1.174207, 3.398160, -0.502878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.047049, 3.699615, -0.272758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609109, -0.627332, 0.485223,
		0.726586, -0.196169, 0.658475,
		-0.317897, 0.753640, 0.575299,
		0.951680, 3.925707, -0.100169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.248918, 3.310432, 0.252180>,  <1.174207, 3.398160, -0.502878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.248918, 3.310432, 0.252180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.955792, 3.578415, 0.204613>,  <0.779917, 3.739204, 0.176072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.955792, 3.578415, 0.204613>,  <1.248918, 3.310432, 0.252180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.955792, 3.578415, 0.204613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579816, -0.523382, 0.624407,
		0.356086, 0.526525, 0.771993,
		-0.732814, 0.669957, -0.118919,
		0.735948, 3.779402, 0.168937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.875104, 3.325398, 0.890284>,  <1.248918, 3.310432, 0.252180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.875104, 3.325398, 0.890284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.603504, 3.532257, 0.681854>,  <0.440544, 3.656373, 0.556796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.603504, 3.532257, 0.681854>,  <0.875104, 3.325398, 0.890284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.603504, 3.532257, 0.681854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727623, -0.379700, 0.571307,
		0.097599, 0.767063, 0.634105,
		-0.678999, 0.517149, -0.521074,
		0.399805, 3.687402, 0.525532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.420951, 3.537017, 1.405387>,  <0.875104, 3.325398, 0.890284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.420951, 3.537017, 1.405387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.200535, 3.558517, 1.072289>,  <0.068285, 3.571418, 0.872430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.200535, 3.558517, 1.072289>,  <0.420951, 3.537017, 1.405387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.200535, 3.558517, 1.072289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750068, -0.469257, 0.466043,
		-0.365721, 0.881424, 0.298897,
		-0.551041, 0.053751, -0.832745,
		0.035223, 3.574643, 0.822465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.204178, 3.393580, 1.619180>,  <0.420951, 3.537017, 1.405387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.204178, 3.393580, 1.619180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.289771, 3.356567, 1.230202>,  <-0.341127, 3.334360, 0.996815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.289771, 3.356567, 1.230202>,  <-0.204178, 3.393580, 1.619180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.289771, 3.356567, 1.230202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755317, -0.615605, 0.224782,
		-0.619442, 0.782603, 0.061839,
		-0.213983, -0.092531, -0.972445,
		-0.353966, 3.328808, 0.938468>
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
