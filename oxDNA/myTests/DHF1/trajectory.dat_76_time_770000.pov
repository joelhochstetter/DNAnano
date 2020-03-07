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
	<1.482102, 1.153949, 2.264336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222085, 1.423824, 2.404190>,  <1.066075, 1.585749, 2.488102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.222085, 1.423824, 2.404190>,  <1.482102, 1.153949, 2.264336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222085, 1.423824, 2.404190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746825, 0.482236, 0.457931,
		0.140354, 0.558790, -0.817346,
		-0.650041, 0.674687, 0.349635,
		1.027073, 1.626230, 2.509080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.645957, 1.897516, 2.157811>,  <1.482102, 1.153949, 2.264336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.645957, 1.897516, 2.157811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.468399, 1.847389, 2.512720>,  <1.361865, 1.817313, 2.725666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.468399, 1.847389, 2.512720>,  <1.645957, 1.897516, 2.157811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.468399, 1.847389, 2.512720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743776, 0.500706, 0.442822,
		-0.499756, 0.856498, -0.129054,
		-0.443894, -0.125316, 0.887273,
		1.335231, 1.809794, 2.778902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.858626, 2.445308, 2.661169>,  <1.645957, 1.897516, 2.157811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.858626, 2.445308, 2.661169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752872, 2.142384, 2.900026>,  <1.689419, 1.960629, 3.043341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.752872, 2.142384, 2.900026>,  <1.858626, 2.445308, 2.661169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.752872, 2.142384, 2.900026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591626, 0.361623, 0.720560,
		-0.761629, 0.543791, 0.352438,
		-0.264385, -0.757311, 0.597144,
		1.673556, 1.915190, 3.079170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657821, 2.704696, 3.388197>,  <1.858626, 2.445308, 2.661169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657821, 2.704696, 3.388197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.775404, 2.323601, 3.418863>,  <1.845953, 2.094943, 3.437263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.775404, 2.323601, 3.418863>,  <1.657821, 2.704696, 3.388197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.775404, 2.323601, 3.418863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457126, 0.210575, 0.864114,
		-0.839419, -0.218966, 0.497422,
		0.293957, -0.952739, 0.076665,
		1.863591, 2.037779, 3.441863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.285500, 2.393456, 3.941087>,  <1.657821, 2.704696, 3.388197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.285500, 2.393456, 3.941087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.659522, 2.260418, 3.892010>,  <1.883935, 2.180595, 3.862563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.659522, 2.260418, 3.892010>,  <1.285500, 2.393456, 3.941087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.659522, 2.260418, 3.892010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230293, 0.306765, 0.923504,
		-0.269515, -0.891782, 0.363436,
		0.935054, -0.332595, -0.122694,
		1.940038, 2.160640, 3.855202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.465550, 1.879584, 4.501909>,  <1.285500, 2.393456, 3.941087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.465550, 1.879584, 4.501909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.824373, 2.019802, 4.394272>,  <2.039666, 2.103933, 4.329690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.824373, 2.019802, 4.394272>,  <1.465550, 1.879584, 4.501909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.824373, 2.019802, 4.394272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226441, 0.158291, 0.961077,
		0.379495, -0.923072, 0.062618,
		0.897055, 0.350545, -0.269092,
		2.093489, 2.124965, 4.313544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.873523, 1.551830, 4.946034>,  <1.465550, 1.879584, 4.501909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.873523, 1.551830, 4.946034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.086305, 1.861557, 4.808945>,  <2.213974, 2.047393, 4.726691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.086305, 1.861557, 4.808945>,  <1.873523, 1.551830, 4.946034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.086305, 1.861557, 4.808945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357784, 0.161304, 0.919767,
		0.767474, -0.611894, -0.191232,
		0.531953, 0.774317, -0.342723,
		2.245891, 2.093852, 4.706128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.695792, 1.628100, 5.000339>,  <1.873523, 1.551830, 4.946034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.695792, 1.628100, 5.000339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.537261, 1.994785, 5.020578>,  <2.442143, 2.214797, 5.032722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.537261, 1.994785, 5.020578>,  <2.695792, 1.628100, 5.000339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.537261, 1.994785, 5.020578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271937, 0.064572, 0.960146,
		0.876912, 0.394292, -0.274880,
		-0.396327, 0.916714, 0.050599,
		2.418363, 2.269799, 5.035758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.714232, 3.725670, 4.515013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396374, 3.961540, 4.457298>,  <4.205658, 4.103063, 4.422670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396374, 3.961540, 4.457298>,  <4.714232, 3.725670, 4.515013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.396374, 3.961540, 4.457298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559573, -0.619318, 0.550748,
		0.235405, 0.518389, 0.822106,
		-0.794647, 0.589676, -0.144286,
		4.157980, 4.138443, 4.414012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.473386, 3.933389, 5.186251>,  <4.714232, 3.725670, 4.515013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.473386, 3.933389, 5.186251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196938, 3.914261, 4.897789>,  <4.031068, 3.902784, 4.724712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196938, 3.914261, 4.897789>,  <4.473386, 3.933389, 5.186251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.196938, 3.914261, 4.897789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524441, -0.653395, 0.545927,
		-0.497306, 0.755505, 0.426496,
		-0.691121, -0.047821, -0.721155,
		3.989601, 3.899915, 4.681442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.754976, 3.994905, 5.403443>,  <4.473386, 3.933389, 5.186251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.754976, 3.994905, 5.403443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.773624, 3.777344, 5.068302>,  <3.784813, 3.646807, 4.867218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.773624, 3.777344, 5.068302>,  <3.754976, 3.994905, 5.403443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.773624, 3.777344, 5.068302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306815, -0.806017, 0.506164,
		-0.950627, 0.233468, -0.204454,
		0.046621, -0.543902, -0.837852,
		3.787611, 3.614173, 4.816947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.128649, 3.771804, 5.315890>,  <3.754976, 3.994905, 5.403443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.128649, 3.771804, 5.315890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424938, 3.526260, 5.206707>,  <3.602712, 3.378934, 5.141197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424938, 3.526260, 5.206707>,  <3.128649, 3.771804, 5.315890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.424938, 3.526260, 5.206707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422359, -0.741478, 0.521367,
		-0.522438, -0.270902, -0.808499,
		0.740724, -0.613859, -0.272958,
		3.647155, 3.342103, 5.124819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.749156, 3.361215, 4.754704>,  <3.128649, 3.771804, 5.315890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.749156, 3.361215, 4.754704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.730164, 2.965645, 4.810951>,  <2.718768, 2.728303, 4.844699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.730164, 2.965645, 4.810951>,  <2.749156, 3.361215, 4.754704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.730164, 2.965645, 4.810951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236881, -0.125612, -0.963384,
		0.970378, -0.079051, -0.228294,
		-0.047481, -0.988925, 0.140617,
		2.715919, 2.668967, 4.853136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.912865, 3.081851, 4.170791>,  <2.749156, 3.361215, 4.754704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.912865, 3.081851, 4.170791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.720360, 2.774673, 4.339859>,  <2.604857, 2.590367, 4.441300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.720360, 2.774673, 4.339859>,  <2.912865, 3.081851, 4.170791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.720360, 2.774673, 4.339859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220264, -0.360769, -0.906272,
		0.848452, -0.529254, 0.004474,
		-0.481263, -0.767943, 0.422670,
		2.575981, 2.544291, 4.466660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.249939, 2.541509, 3.924538>,  <2.912865, 3.081851, 4.170791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.249939, 2.541509, 3.924538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.894783, 2.400795, 4.043129>,  <2.681690, 2.316366, 4.114284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.894783, 2.400795, 4.043129>,  <3.249939, 2.541509, 3.924538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.894783, 2.400795, 4.043129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195423, -0.295007, -0.935297,
		0.416487, -0.888379, 0.193187,
		-0.887890, -0.351786, 0.296477,
		2.628416, 2.295259, 4.132072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.183741, 1.903105, 3.685426>,  <3.249939, 2.541509, 3.924538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.183741, 1.903105, 3.685426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.793034, 1.976898, 3.729038>,  <2.558609, 2.021174, 3.755205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.793034, 1.976898, 3.729038>,  <3.183741, 1.903105, 3.685426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.793034, 1.976898, 3.729038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164461, -0.319168, -0.933319,
		-0.137382, -0.929569, 0.342094,
		-0.976769, 0.184482, 0.109029,
		2.500003, 2.032243, 3.761747>
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
