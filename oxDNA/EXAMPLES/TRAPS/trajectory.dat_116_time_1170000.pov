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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.631550, 52.829304, 49.629623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347244, 52.734985, 49.894714>,  <36.176659, 52.678394, 50.053768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347244, 52.734985, 49.894714>,  <36.631550, 52.829304, 49.629623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347244, 52.734985, 49.894714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703357, 0.224936, -0.674309,
		0.009928, -0.945412, -0.325725,
		-0.710768, -0.235795, 0.662729,
		36.134014, 52.664246, 50.093533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856354, 52.587490, 50.297180>,  <36.631550, 52.829304, 49.629623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856354, 52.587490, 50.297180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147713, 52.313660, 50.308418>,  <37.322529, 52.149361, 50.315159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147713, 52.313660, 50.308418>,  <36.856354, 52.587490, 50.297180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147713, 52.313660, 50.308418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058126, -0.020888, 0.998091,
		-0.682680, -0.728644, -0.055007,
		0.728402, -0.684574, 0.028093,
		37.366234, 52.108288, 50.316845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688442, 51.803482, 50.649162>,  <36.856354, 52.587490, 50.297180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688442, 51.803482, 50.649162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063839, 51.936890, 50.684959>,  <37.289078, 52.016933, 50.706436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063839, 51.936890, 50.684959>,  <36.688442, 51.803482, 50.649162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063839, 51.936890, 50.684959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113585, 0.053409, 0.992092,
		0.326098, -0.941230, 0.088006,
		0.938487, 0.333516, 0.089493,
		37.345387, 52.036945, 50.711807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063416, 51.429722, 51.177528>,  <36.688442, 51.803482, 50.649162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063416, 51.429722, 51.177528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227505, 51.792088, 51.135513>,  <37.325958, 52.009506, 51.110302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227505, 51.792088, 51.135513>,  <37.063416, 51.429722, 51.177528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227505, 51.792088, 51.135513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041294, 0.096611, 0.994465,
		0.911052, -0.412286, 0.002223,
		0.410219, 0.905918, -0.105042,
		37.350571, 52.063862, 51.104000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684761, 51.548885, 51.512840>,  <37.063416, 51.429722, 51.177528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684761, 51.548885, 51.512840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469719, 51.885979, 51.501671>,  <37.340694, 52.088234, 51.494968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469719, 51.885979, 51.501671>,  <37.684761, 51.548885, 51.512840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469719, 51.885979, 51.501671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003848, 0.035569, 0.999360,
		0.843186, 0.537156, -0.022365,
		-0.537608, 0.842732, -0.027924,
		37.308437, 52.138798, 51.493294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807652, 50.798931, 51.475746>,  <37.684761, 51.548885, 51.512840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807652, 50.798931, 51.475746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188095, 50.922348, 51.470268>,  <38.416363, 50.996399, 51.466980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188095, 50.922348, 51.470268>,  <37.807652, 50.798931, 51.475746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188095, 50.922348, 51.470268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172603, -0.494247, 0.852014,
		0.256113, -0.812725, -0.523339,
		0.951112, 0.308542, -0.013696,
		38.473431, 51.014912, 51.466160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289265, 50.266991, 51.492912>,  <37.807652, 50.798931, 51.475746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289265, 50.266991, 51.492912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496571, 50.568336, 51.654823>,  <38.620956, 50.749142, 51.751968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496571, 50.568336, 51.654823>,  <38.289265, 50.266991, 51.492912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496571, 50.568336, 51.654823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132383, -0.538266, 0.832313,
		0.844910, -0.377776, -0.378698,
		0.518269, 0.753362, 0.404775,
		38.652050, 50.794346, 51.776257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925270, 50.012516, 51.704357>,  <38.289265, 50.266991, 51.492912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925270, 50.012516, 51.704357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755192, 50.300400, 51.923897>,  <38.653145, 50.473129, 52.055618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755192, 50.300400, 51.923897>,  <38.925270, 50.012516, 51.704357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755192, 50.300400, 51.923897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025808, -0.615783, 0.787493,
		0.904735, 0.320671, 0.280400,
		-0.425192, 0.719709, 0.548845,
		38.627636, 50.516312, 52.088551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416698, 50.211231, 52.268707>,  <38.925270, 50.012516, 51.704357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416698, 50.211231, 52.268707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032600, 50.253605, 52.372017>,  <38.802143, 50.279030, 52.434002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032600, 50.253605, 52.372017>,  <39.416698, 50.211231, 52.268707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032600, 50.253605, 52.372017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151276, -0.580109, 0.800368,
		0.234614, 0.807621, 0.541022,
		-0.960246, 0.105934, 0.258275,
		38.744526, 50.285385, 52.449501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288696, 50.154713, 53.043324>,  <39.416698, 50.211231, 52.268707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288696, 50.154713, 53.043324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914085, 50.084126, 52.922142>,  <38.689320, 50.041775, 52.849434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914085, 50.084126, 52.922142>,  <39.288696, 50.154713, 53.043324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914085, 50.084126, 52.922142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020818, -0.834583, 0.550489,
		-0.349984, 0.521853, 0.777933,
		-0.936524, -0.176467, -0.302954,
		38.633129, 50.031185, 52.831257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589043, 50.481388, 53.668026>,  <39.288696, 50.154713, 53.043324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589043, 50.481388, 53.668026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927181, 50.646378, 53.803825>,  <40.130066, 50.745369, 53.885303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927181, 50.646378, 53.803825>,  <39.589043, 50.481388, 53.668026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927181, 50.646378, 53.803825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475801, -0.870277, -0.127400,
		0.242910, 0.269232, -0.931938,
		0.845345, 0.412470, 0.339500,
		40.180786, 50.770119, 53.905674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125465, 50.295731, 53.266163>,  <39.589043, 50.481388, 53.668026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125465, 50.295731, 53.266163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232956, 50.384766, 53.641022>,  <40.297451, 50.438187, 53.865936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232956, 50.384766, 53.641022>,  <40.125465, 50.295731, 53.266163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232956, 50.384766, 53.641022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406987, -0.908056, 0.098973,
		0.873011, 0.354809, -0.334607,
		0.268726, 0.222585, 0.937146,
		40.313572, 50.451542, 53.922165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876369, 50.253952, 53.342266>,  <40.125465, 50.295731, 53.266163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876369, 50.253952, 53.342266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641338, 50.152073, 53.649483>,  <40.500320, 50.090946, 53.833813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641338, 50.152073, 53.649483>,  <40.876369, 50.253952, 53.342266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641338, 50.152073, 53.649483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312795, -0.946878, -0.074704,
		0.746266, 0.196344, 0.636032,
		-0.587577, -0.254696, 0.768039,
		40.465065, 50.075665, 53.879894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234951, 50.010193, 53.900711>,  <40.876369, 50.253952, 53.342266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234951, 50.010193, 53.900711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867641, 49.857388, 53.942360>,  <40.647255, 49.765705, 53.967350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867641, 49.857388, 53.942360>,  <41.234951, 50.010193, 53.900711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867641, 49.857388, 53.942360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392076, -0.913987, 0.104423,
		0.055274, 0.136712, 0.989068,
		-0.918271, -0.382017, 0.104122,
		40.592159, 49.742783, 53.973595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644814, 50.259045, 54.387463>,  <41.234951, 50.010193, 53.900711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644814, 50.259045, 54.387463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750584, 49.875816, 54.343307>,  <41.814045, 49.645882, 54.316814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750584, 49.875816, 54.343307>,  <41.644814, 50.259045, 54.387463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750584, 49.875816, 54.343307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352984, 0.010369, -0.935572,
		0.897486, 0.286354, -0.335441,
		0.264426, -0.958068, -0.110384,
		41.829910, 49.588394, 54.310192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095985, 50.261436, 53.875435>,  <41.644814, 50.259045, 54.387463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095985, 50.261436, 53.875435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892059, 49.922016, 53.932072>,  <41.769703, 49.718365, 53.966053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892059, 49.922016, 53.932072>,  <42.095985, 50.261436, 53.875435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892059, 49.922016, 53.932072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038598, -0.141865, -0.989133,
		0.859417, -0.509742, 0.039573,
		-0.509817, -0.848550, 0.141596,
		41.739113, 49.667450, 53.974552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368202, 49.736580, 53.390160>,  <42.095985, 50.261436, 53.875435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368202, 49.736580, 53.390160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993553, 49.640137, 53.491837>,  <41.768764, 49.582272, 53.552845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993553, 49.640137, 53.491837>,  <42.368202, 49.736580, 53.390160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993553, 49.640137, 53.491837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206905, -0.204851, -0.956675,
		0.282730, -0.948633, 0.141981,
		-0.936619, -0.241104, 0.254194,
		41.712566, 49.567806, 53.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868587, 50.201019, 53.457691>,  <42.368202, 49.736580, 53.390160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868587, 50.201019, 53.457691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738464, 50.412495, 53.771294>,  <42.660389, 50.539379, 53.959454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738464, 50.412495, 53.771294>,  <42.868587, 50.201019, 53.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738464, 50.412495, 53.771294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809769, -0.583899, 0.057751,
		0.488311, -0.616075, 0.618065,
		-0.325309, 0.528690, 0.784003,
		42.640873, 50.571102, 54.006496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124622, 50.658485, 52.944775>,  <42.868587, 50.201019, 53.457691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124622, 50.658485, 52.944775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932747, 50.522713, 52.621124>,  <42.817619, 50.441250, 52.426933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932747, 50.522713, 52.621124>,  <43.124622, 50.658485, 52.944775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932747, 50.522713, 52.621124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848491, 0.055459, -0.526296,
		0.223515, -0.938994, 0.261401,
		-0.479692, -0.339432, -0.809124,
		42.788841, 50.420883, 52.378387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460850, 50.037556, 52.645203>,  <43.124622, 50.658485, 52.944775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460850, 50.037556, 52.645203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254448, 50.220966, 52.355793>,  <43.130608, 50.331013, 52.182148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254448, 50.220966, 52.355793>,  <43.460850, 50.037556, 52.645203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254448, 50.220966, 52.355793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812857, -0.004308, -0.582448,
		-0.270188, -0.888668, -0.370498,
		-0.516006, 0.458532, -0.723524,
		43.099648, 50.358524, 52.138737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760803, 49.994976, 52.026741>,  <43.460850, 50.037556, 52.645203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760803, 49.994976, 52.026741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523781, 50.308762, 51.953533>,  <43.381569, 50.497032, 51.909607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523781, 50.308762, 51.953533>,  <43.760803, 49.994976, 52.026741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523781, 50.308762, 51.953533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589305, 0.267260, -0.762425,
		-0.549183, -0.559630, -0.620655,
		-0.592552, 0.784466, -0.183018,
		43.346016, 50.544102, 51.898628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277664, 49.962456, 51.418056>,  <43.760803, 49.994976, 52.026741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277664, 49.962456, 51.418056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328953, 49.623211, 51.623688>,  <44.359726, 49.419666, 51.747066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328953, 49.623211, 51.623688>,  <44.277664, 49.962456, 51.418056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328953, 49.623211, 51.623688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809257, -0.210166, -0.548573,
		0.573290, 0.486358, 0.659389,
		0.128222, -0.848107, 0.514075,
		44.367420, 49.368778, 51.777908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005436, 50.233303, 51.555283>,  <44.277664, 49.962456, 51.418056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005436, 50.233303, 51.555283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088978, 49.934765, 51.302505>,  <45.139103, 49.755642, 51.150841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088978, 49.934765, 51.302505>,  <45.005436, 50.233303, 51.555283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088978, 49.934765, 51.302505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811090, 0.493214, -0.314440,
		0.546362, -0.446887, 0.708364,
		0.208856, -0.746345, -0.631940,
		45.151634, 49.710861, 51.112923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662712, 50.025120, 51.640102>,  <45.005436, 50.233303, 51.555283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662712, 50.025120, 51.640102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554989, 49.964287, 51.259716>,  <45.490356, 49.927788, 51.031483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554989, 49.964287, 51.259716>,  <45.662712, 50.025120, 51.640102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554989, 49.964287, 51.259716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862777, 0.400628, -0.308404,
		0.427888, -0.903531, 0.023322,
		-0.269309, -0.152084, -0.950969,
		45.474197, 49.918663, 50.974426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159477, 49.674198, 51.354805>,  <45.662712, 50.025120, 51.640102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159477, 49.674198, 51.354805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962585, 49.881836, 51.075306>,  <45.844448, 50.006416, 50.907608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962585, 49.881836, 51.075306>,  <46.159477, 49.674198, 51.354805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962585, 49.881836, 51.075306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811653, 0.563757, -0.152959,
		0.314525, -0.642433, -0.698823,
		-0.492233, 0.519093, -0.698749,
		45.814915, 50.037563, 50.865681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432941, 49.661819, 50.706226>,  <46.159477, 49.674198, 51.354805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432941, 49.661819, 50.706226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254303, 50.009315, 50.791878>,  <46.147121, 50.217812, 50.843269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254303, 50.009315, 50.791878>,  <46.432941, 49.661819, 50.706226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254303, 50.009315, 50.791878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894298, 0.440894, 0.076445,
		-0.027996, 0.225632, -0.973810,
		-0.446596, 0.868736, 0.214126,
		46.120323, 50.269936, 50.856117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552326, 50.179573, 50.196129>,  <46.432941, 49.661819, 50.706226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552326, 50.179573, 50.196129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490990, 50.343788, 50.555672>,  <46.454189, 50.442318, 50.771397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490990, 50.343788, 50.555672>,  <46.552326, 50.179573, 50.196129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490990, 50.343788, 50.555672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922808, 0.384825, -0.018334,
		-0.353430, 0.826663, -0.437852,
		-0.153341, 0.410533, 0.898860,
		46.444988, 50.466949, 50.825329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.061920, 50.687061, 50.183117>,  <46.552326, 50.179573, 50.196129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.061920, 50.687061, 50.183117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954441, 50.644539, 50.566055>,  <46.889954, 50.619026, 50.795818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.954441, 50.644539, 50.566055>,  <47.061920, 50.687061, 50.183117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.954441, 50.644539, 50.566055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893816, 0.342937, 0.288943,
		-0.359023, 0.933324, 0.002870,
		-0.268693, -0.106302, 0.957342,
		46.873833, 50.612648, 50.853256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.292076, 51.240395, 50.411694>,  <47.061920, 50.687061, 50.183117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.292076, 51.240395, 50.411694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.249088, 50.977055, 50.709694>,  <47.223297, 50.819050, 50.888496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.249088, 50.977055, 50.709694>,  <47.292076, 51.240395, 50.411694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.249088, 50.977055, 50.709694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947837, 0.158341, 0.276648,
		-0.300095, 0.735871, 0.606990,
		-0.107466, -0.658348, 0.745003,
		47.216850, 50.779549, 50.933193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558388, 51.573566, 51.000572>,  <47.292076, 51.240395, 50.411694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558388, 51.573566, 51.000572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600433, 51.178448, 50.954597>,  <47.625660, 50.941376, 50.927013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600433, 51.178448, 50.954597>,  <47.558388, 51.573566, 51.000572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600433, 51.178448, 50.954597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982910, 0.085636, 0.162955,
		-0.151123, -0.130106, 0.979915,
		0.105117, -0.987795, -0.114941,
		47.631969, 50.882111, 50.920116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.111694, 51.701328, 51.503220>,  <47.558388, 51.573566, 51.000572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.111694, 51.701328, 51.503220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.238998, 52.062893, 51.617519>,  <48.315380, 52.279831, 51.686100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.238998, 52.062893, 51.617519>,  <48.111694, 51.701328, 51.503220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.238998, 52.062893, 51.617519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791553, -0.419248, 0.444606,
		0.521686, 0.084689, -0.848924,
		0.318257, 0.903913, 0.285752,
		48.334476, 52.334068, 51.703243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.887394, 51.862194, 51.267712>,  <48.111694, 51.701328, 51.503220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.887394, 51.862194, 51.267712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.758728, 51.978722, 51.628082>,  <48.681530, 52.048637, 51.844303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.758728, 51.978722, 51.628082>,  <48.887394, 51.862194, 51.267712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.758728, 51.978722, 51.628082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743233, -0.511825, 0.430859,
		0.586633, 0.808189, -0.051883,
		-0.321660, 0.291317, 0.900927,
		48.662231, 52.066116, 51.898361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.538227, 52.132694, 51.640594>,  <48.887394, 51.862194, 51.267712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.538227, 52.132694, 51.640594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.244942, 51.996117, 51.875816>,  <49.068970, 51.914169, 52.016949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.244942, 51.996117, 51.875816>,  <49.538227, 52.132694, 51.640594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.244942, 51.996117, 51.875816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668527, -0.520109, 0.531562,
		0.124352, 0.782879, 0.609620,
		-0.733218, -0.341446, 0.588052,
		49.024975, 51.893684, 52.052231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.702396, 52.640797, 52.180569>,  <49.538227, 52.132694, 51.640594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.702396, 52.640797, 52.180569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.664745, 52.513367, 52.557854>,  <49.642155, 52.436909, 52.784225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.664745, 52.513367, 52.557854>,  <49.702396, 52.640797, 52.180569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.664745, 52.513367, 52.557854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975298, 0.160662, 0.151596,
		-0.199833, 0.934184, 0.295578,
		-0.094130, -0.318571, 0.943214,
		49.636505, 52.417797, 52.840816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.932644, 53.099075, 52.544109>,  <49.702396, 52.640797, 52.180569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.932644, 53.099075, 52.544109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.952557, 52.784592, 52.790493>,  <49.964504, 52.595901, 52.938324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.952557, 52.784592, 52.790493>,  <49.932644, 53.099075, 52.544109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.952557, 52.784592, 52.790493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944735, 0.237153, 0.226349,
		-0.324033, 0.570646, 0.754563,
		0.049782, -0.786207, 0.615955,
		49.967491, 52.548729, 52.975281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.138107, 53.288429, 53.199181>,  <49.932644, 53.099075, 52.544109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.138107, 53.288429, 53.199181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.253815, 52.916550, 53.107979>,  <50.323238, 52.693424, 53.053257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.253815, 52.916550, 53.107979>,  <50.138107, 53.288429, 53.199181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.253815, 52.916550, 53.107979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942477, 0.234928, 0.237794,
		-0.167512, -0.283678, 0.944175,
		0.289270, -0.929697, -0.228007,
		50.340595, 52.637642, 53.039577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.481365, 52.978165, 53.741844>,  <50.138107, 53.288429, 53.199181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.481365, 52.978165, 53.741844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.630684, 52.811516, 53.410286>,  <50.720276, 52.711525, 53.211349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.630684, 52.811516, 53.410286>,  <50.481365, 52.978165, 53.741844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.630684, 52.811516, 53.410286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910514, 0.335779, 0.241282,
		0.177802, -0.844792, 0.504690,
		0.373298, -0.416627, -0.828897,
		50.742672, 52.686527, 53.161617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.130260, 52.705692, 53.999187>,  <50.481365, 52.978165, 53.741844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.130260, 52.705692, 53.999187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.152649, 52.713722, 53.599895>,  <51.166084, 52.718540, 53.360321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.152649, 52.713722, 53.599895>,  <51.130260, 52.705692, 53.999187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.152649, 52.713722, 53.599895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984768, 0.163732, 0.058512,
		0.164617, -0.986300, -0.010604,
		0.055974, 0.020075, -0.998230,
		51.169441, 52.719746, 53.300426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.583157, 52.188705, 53.727619>,  <51.130260, 52.705692, 53.999187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.583157, 52.188705, 53.727619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.571247, 52.523617, 53.509232>,  <51.564102, 52.724564, 53.378201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.571247, 52.523617, 53.509232>,  <51.583157, 52.188705, 53.727619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.571247, 52.523617, 53.509232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946110, 0.199825, 0.254844,
		0.322473, -0.508955, -0.798108,
		-0.029778, 0.837278, -0.545965,
		51.562313, 52.774799, 53.345444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.314117, 52.274376, 53.442448>,  <51.583157, 52.188705, 53.727619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.314117, 52.274376, 53.442448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.115971, 52.621574, 53.428589>,  <51.997082, 52.829891, 53.420273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.115971, 52.621574, 53.428589>,  <52.314117, 52.274376, 53.442448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.115971, 52.621574, 53.428589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853082, 0.493610, 0.169115,
		0.163893, 0.054216, -0.984987,
		-0.495368, 0.867992, -0.034648,
		51.967361, 52.881973, 53.418194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.688007, 52.657173, 52.987362>,  <52.314117, 52.274376, 53.442448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.688007, 52.657173, 52.987362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.506531, 52.910141, 53.238503>,  <52.397644, 53.061924, 53.389187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.506531, 52.910141, 53.238503>,  <52.688007, 52.657173, 52.987362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.506531, 52.910141, 53.238503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891117, 0.328642, 0.312897,
		-0.008456, 0.701452, -0.712667,
		-0.453695, 0.632424, 0.627855,
		52.370422, 53.099869, 53.426861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.775536, 53.374702, 52.803459>,  <52.688007, 52.657173, 52.987362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.775536, 53.374702, 52.803459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.729446, 53.335999, 53.198906>,  <52.701794, 53.312778, 53.436172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.729446, 53.335999, 53.198906>,  <52.775536, 53.374702, 52.803459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.729446, 53.335999, 53.198906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967763, 0.213456, 0.133684,
		-0.223961, 0.972150, 0.069041,
		-0.115223, -0.096755, 0.988616,
		52.694878, 53.306973, 53.495491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.278553, 53.911869, 52.978455>,  <52.775536, 53.374702, 52.803459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.278553, 53.911869, 52.978455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.617241, 53.798080, 53.158295>,  <52.820454, 53.729809, 53.266197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.617241, 53.798080, 53.158295>,  <52.278553, 53.911869, 52.978455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.617241, 53.798080, 53.158295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258685, 0.958563, 0.119325,
		-0.464912, 0.015269, 0.885225,
		0.846723, -0.284470, 0.449597,
		52.871258, 53.712738, 53.293175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.325817, 54.271080, 53.659912>,  <52.278553, 53.911869, 52.978455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.325817, 54.271080, 53.659912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.655163, 54.169300, 53.457005>,  <52.852772, 54.108231, 53.335258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.655163, 54.169300, 53.457005>,  <52.325817, 54.271080, 53.659912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.655163, 54.169300, 53.457005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250357, 0.965030, -0.077705,
		0.509305, -0.063020, 0.858275,
		0.823365, -0.254451, -0.507272,
		52.902172, 54.092964, 53.304821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.853504, 54.828411, 53.775650>,  <52.325817, 54.271080, 53.659912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.853504, 54.828411, 53.775650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.048489, 54.608421, 53.504383>,  <53.165482, 54.476429, 53.341621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.048489, 54.608421, 53.504383>,  <52.853504, 54.828411, 53.775650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.048489, 54.608421, 53.504383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641510, 0.752480, -0.149124,
		0.592320, -0.362358, 0.719621,
		0.487464, -0.549973, -0.678165,
		53.194729, 54.443428, 53.300934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.531540, 55.003284, 53.789387>,  <52.853504, 54.828411, 53.775650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.531540, 55.003284, 53.789387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.501484, 54.851616, 53.420479>,  <53.483452, 54.760616, 53.199135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.501484, 54.851616, 53.420479>,  <53.531540, 55.003284, 53.789387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.501484, 54.851616, 53.420479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627873, 0.700532, -0.339162,
		0.774681, -0.604553, 0.185432,
		-0.075140, -0.379170, -0.922271,
		53.478943, 54.737865, 53.143799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.113953, 55.104267, 53.481098>,  <53.531540, 55.003284, 53.789387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.113953, 55.104267, 53.481098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.896343, 55.017807, 53.156799>,  <53.765778, 54.965931, 52.962219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.896343, 55.017807, 53.156799>,  <54.113953, 55.104267, 53.481098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.896343, 55.017807, 53.156799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528528, 0.662186, -0.531195,
		0.651684, -0.717488, -0.246006,
		-0.544028, -0.216150, -0.810748,
		53.733135, 54.952961, 52.913574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.561195, 54.935383, 53.032978>,  <54.113953, 55.104267, 53.481098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.561195, 54.935383, 53.032978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.237000, 55.050262, 52.828773>,  <54.042480, 55.119190, 52.706249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.237000, 55.050262, 52.828773>,  <54.561195, 54.935383, 53.032978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.237000, 55.050262, 52.828773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573851, 0.564125, -0.593682,
		0.117487, -0.774130, -0.622028,
		-0.810489, 0.287202, -0.510513,
		53.993855, 55.136421, 52.675621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.727596, 54.671982, 52.448254>,  <54.561195, 54.935383, 53.032978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.727596, 54.671982, 52.448254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.482124, 54.985554, 52.410641>,  <54.334839, 55.173698, 52.388073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.482124, 54.985554, 52.410641>,  <54.727596, 54.671982, 52.448254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.482124, 54.985554, 52.410641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663548, 0.447535, -0.599513,
		-0.427897, -0.430304, -0.794823,
		-0.613684, 0.783933, -0.094029,
		54.298019, 55.220734, 52.382431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.486073, 54.934464, 51.714115>,  <54.727596, 54.671982, 52.448254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.486073, 54.934464, 51.714115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.489647, 55.224743, 51.989296>,  <54.491791, 55.398911, 52.154404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.489647, 55.224743, 51.989296>,  <54.486073, 54.934464, 51.714115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.489647, 55.224743, 51.989296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643962, 0.522155, -0.559166,
		-0.765005, 0.448013, -0.462657,
		0.008935, 0.725698, 0.687955,
		54.492329, 55.442451, 52.195683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.713959, 55.518875, 51.410191>,  <54.486073, 54.934464, 51.714115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.713959, 55.518875, 51.410191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.748993, 55.662636, 51.781815>,  <54.770016, 55.748894, 52.004791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.748993, 55.662636, 51.781815>,  <54.713959, 55.518875, 51.410191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.748993, 55.662636, 51.781815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777446, 0.558451, -0.289327,
		-0.622821, 0.747639, -0.230501,
		0.087588, 0.359401, 0.929064,
		54.775269, 55.770454, 52.060535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.603176, 56.383511, 51.572052>,  <54.713959, 55.518875, 51.410191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.603176, 56.383511, 51.572052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.888901, 56.175804, 51.759720>,  <55.060333, 56.051178, 51.872322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.888901, 56.175804, 51.759720>,  <54.603176, 56.383511, 51.572052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.888901, 56.175804, 51.759720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695878, 0.455865, -0.554925,
		0.074275, 0.722875, 0.686975,
		0.714309, -0.519268, 0.469173,
		55.103195, 56.020023, 51.900471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.245850, 56.785126, 51.878540>,  <54.603176, 56.383511, 51.572052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.245850, 56.785126, 51.878540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.350792, 56.421471, 51.749146>,  <55.413757, 56.203278, 51.671509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.350792, 56.421471, 51.749146>,  <55.245850, 56.785126, 51.878540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.350792, 56.421471, 51.749146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712856, 0.408542, -0.570026,
		0.650388, -0.081048, 0.755266,
		0.262359, -0.909134, -0.323486,
		55.429501, 56.148731, 51.652100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.630352, 56.582607, 52.323669>,  <55.245850, 56.785126, 51.878540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.630352, 56.582607, 52.323669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.246277, 56.476662, 52.288143>,  <54.015831, 56.413094, 52.266827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.246277, 56.476662, 52.288143>,  <54.630352, 56.582607, 52.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.246277, 56.476662, 52.288143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277731, -0.939327, -0.201321,
		-0.030106, -0.217973, 0.975490,
		-0.960187, -0.264863, -0.088817,
		53.958221, 56.397202, 52.261497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.328339, 56.400360, 52.538284>,  <54.630352, 56.582607, 52.323669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.328339, 56.400360, 52.538284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.580193, 56.382065, 52.848499>,  <55.731304, 56.371090, 53.034630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.580193, 56.382065, 52.848499>,  <55.328339, 56.400360, 52.538284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.580193, 56.382065, 52.848499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136625, -0.989226, 0.052584,
		0.764781, -0.139068, -0.629103,
		0.629638, -0.045736, 0.775541,
		55.769085, 56.368343, 53.081161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.258678, 55.712112, 52.490471>,  <55.328339, 56.400360, 52.538284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.258678, 55.712112, 52.490471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.331848, 55.455696, 52.192314>,  <55.375751, 55.301846, 52.013420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.331848, 55.455696, 52.192314>,  <55.258678, 55.712112, 52.490471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.331848, 55.455696, 52.192314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516412, 0.707813, -0.481994,
		0.836575, -0.296760, 0.460517,
		0.182923, -0.641041, -0.745390,
		55.386726, 55.263382, 51.968697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.960632, 55.729855, 52.388962>,  <55.258678, 55.712112, 52.490471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.960632, 55.729855, 52.388962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.741455, 55.665985, 52.060509>,  <55.609947, 55.627663, 51.863438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.741455, 55.665985, 52.060509>,  <55.960632, 55.729855, 52.388962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.741455, 55.665985, 52.060509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448992, 0.772095, -0.449751,
		0.705809, -0.615121, -0.351370,
		-0.547942, -0.159675, -0.821135,
		55.577072, 55.618084, 51.814167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.139133, 56.280144, 51.986992>,  <55.960632, 55.729855, 52.388962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.139133, 56.280144, 51.986992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.122307, 56.021801, 51.682072>,  <56.112213, 55.866795, 51.499119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.122307, 56.021801, 51.682072>,  <56.139133, 56.280144, 51.986992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.122307, 56.021801, 51.682072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729923, 0.501121, -0.464855,
		0.682234, -0.575971, 0.450349,
		-0.042064, -0.645860, -0.762296,
		56.109688, 55.828041, 51.453384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.840172, 56.243938, 51.756821>,  <56.139133, 56.280144, 51.986992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.840172, 56.243938, 51.756821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.611717, 56.112579, 51.455902>,  <56.474644, 56.033764, 51.275349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.611717, 56.112579, 51.455902>,  <56.840172, 56.243938, 51.756821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.611717, 56.112579, 51.455902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668617, 0.345541, -0.658447,
		0.476183, -0.879065, 0.022220,
		-0.571140, -0.328398, -0.752300,
		56.440376, 56.014061, 51.230213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.505325, 55.985462, 51.775715>,  <56.840172, 56.243938, 51.756821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.505325, 55.985462, 51.775715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.756645, 55.813839, 52.035301>,  <57.907436, 55.710865, 52.191051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.756645, 55.813839, 52.035301>,  <57.505325, 55.985462, 51.775715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.756645, 55.813839, 52.035301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760603, 0.163481, -0.628298,
		0.163481, 0.888362, 0.429054,
		0.628298, -0.429054, 0.648964,
		57.945133, 55.685123, 52.229992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.038116, 56.383736, 52.093788>,  <57.505325, 55.985462, 51.775715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.038116, 56.383736, 52.093788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.186287, 56.017319, 52.032280>,  <58.275188, 55.797466, 51.995373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.186287, 56.017319, 52.032280>,  <58.038116, 56.383736, 52.093788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.186287, 56.017319, 52.032280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720632, 0.387874, -0.574667,
		0.586066, 0.102057, 0.803810,
		0.370426, -0.916045, -0.153774,
		58.297413, 55.742504, 51.986149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.683186, 56.254642, 52.298954>,  <58.038116, 56.383736, 52.093788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.683186, 56.254642, 52.298954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.610847, 56.005447, 51.994537>,  <58.567444, 55.855930, 51.811890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.610847, 56.005447, 51.994537>,  <58.683186, 56.254642, 52.298954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.610847, 56.005447, 51.994537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497408, 0.609605, -0.617225,
		0.848457, -0.490170, 0.199635,
		-0.180847, -0.622989, -0.761038,
		58.556595, 55.818550, 51.766228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.323212, 56.185886, 52.049603>,  <58.683186, 56.254642, 52.298954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.323212, 56.185886, 52.049603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.031830, 56.141922, 51.779114>,  <58.857002, 56.115543, 51.616821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.031830, 56.141922, 51.779114>,  <59.323212, 56.185886, 52.049603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.031830, 56.141922, 51.779114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433100, 0.690904, -0.578857,
		0.530826, -0.714543, -0.455690,
		-0.728456, -0.109913, -0.676218,
		58.813293, 56.108948, 51.576248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.596176, 55.940247, 51.321701>,  <59.323212, 56.185886, 52.049603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.596176, 55.940247, 51.321701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.996025, 55.929432, 51.323490>,  <60.235935, 55.922943, 51.324566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.996025, 55.929432, 51.323490>,  <59.596176, 55.940247, 51.321701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.996025, 55.929432, 51.323490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005978, -0.055786, 0.998425,
		-0.026730, -0.998077, -0.055927,
		0.999625, -0.027022, 0.004476,
		60.295914, 55.921322, 51.324833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.775887, 55.307281, 51.639877>,  <59.596176, 55.940247, 51.321701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.775887, 55.307281, 51.639877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.013199, 55.623501, 51.700611>,  <60.155586, 55.813232, 51.737053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.013199, 55.623501, 51.700611>,  <59.775887, 55.307281, 51.639877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.013199, 55.623501, 51.700611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278253, 0.024404, 0.960198,
		0.755374, -0.611917, 0.234450,
		0.593283, 0.790545, 0.151833,
		60.191185, 55.860664, 51.746162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.304333, 55.091633, 52.154297>,  <59.775887, 55.307281, 51.639877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.304333, 55.091633, 52.154297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.183815, 55.472248, 52.129665>,  <60.111504, 55.700619, 52.114887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.183815, 55.472248, 52.129665>,  <60.304333, 55.091633, 52.154297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.183815, 55.472248, 52.129665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428221, -0.077325, 0.900360,
		0.851967, 0.297644, 0.430767,
		-0.301296, 0.951540, -0.061579,
		60.093426, 55.757710, 52.111191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.531143, 55.539436, 52.786980>,  <60.304333, 55.091633, 52.154297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.531143, 55.539436, 52.786980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.188637, 55.662548, 52.621048>,  <59.983135, 55.736416, 52.521488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.188637, 55.662548, 52.621048>,  <60.531143, 55.539436, 52.786980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.188637, 55.662548, 52.621048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416231, 0.064448, 0.906972,
		0.305886, 0.949271, 0.072925,
		-0.856263, 0.307783, -0.414830,
		59.931759, 55.754883, 52.496597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.013721, 55.418468, 52.184437>,  <60.531143, 55.539436, 52.786980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.013721, 55.418468, 52.184437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.113716, 55.791248, 52.289482>,  <61.173714, 56.014915, 52.352509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.113716, 55.791248, 52.289482>,  <61.013721, 55.418468, 52.184437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.113716, 55.791248, 52.289482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734821, -0.359231, 0.575318,
		0.630509, 0.049153, -0.774624,
		0.249990, 0.931953, 0.262617,
		61.188713, 56.070835, 52.368267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.523937, 55.264862, 52.623795>,  <61.013721, 55.418468, 52.184437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.523937, 55.264862, 52.623795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.517723, 55.664783, 52.618790>,  <61.513996, 55.904736, 52.615788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.517723, 55.664783, 52.618790>,  <61.523937, 55.264862, 52.623795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.517723, 55.664783, 52.618790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777941, 0.019947, 0.628020,
		0.628145, 0.000025, -0.778096,
		-0.015536, 0.999801, -0.012510,
		61.513062, 55.964725, 52.615036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.155533, 55.413593, 52.467655>,  <61.523937, 55.264862, 52.623795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.155533, 55.413593, 52.467655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.015266, 55.708946, 52.698074>,  <61.931107, 55.886158, 52.836327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.015266, 55.708946, 52.698074>,  <62.155533, 55.413593, 52.467655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.015266, 55.708946, 52.698074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784028, -0.104944, 0.611790,
		0.512185, 0.666171, -0.542109,
		-0.350665, 0.738379, 0.576047,
		61.910069, 55.930458, 52.870888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.790855, 55.733414, 52.709045>,  <62.155533, 55.413593, 52.467655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.790855, 55.733414, 52.709045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.512581, 55.861694, 52.966160>,  <62.345615, 55.938663, 53.120430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.512581, 55.861694, 52.966160>,  <62.790855, 55.733414, 52.709045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.512581, 55.861694, 52.966160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664208, -0.053620, 0.745622,
		0.273587, 0.945662, -0.175709,
		-0.695685, 0.320700, 0.642786,
		62.303875, 55.957905, 53.158997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.077526, 56.369656, 53.056293>,  <62.790855, 55.733414, 52.709045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.077526, 56.369656, 53.056293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.829277, 56.155315, 53.285271>,  <62.680328, 56.026711, 53.422657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.829277, 56.155315, 53.285271>,  <63.077526, 56.369656, 53.056293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.829277, 56.155315, 53.285271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696401, -0.041173, 0.716470,
		-0.360352, 0.843309, 0.398720,
		-0.620622, -0.535850, 0.572445,
		62.643089, 55.994560, 53.457005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.905586, 56.688400, 53.610176>,  <63.077526, 56.369656, 53.056293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.905586, 56.688400, 53.610176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.897232, 56.301052, 53.709633>,  <62.892220, 56.068642, 53.769306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.897232, 56.301052, 53.709633>,  <62.905586, 56.688400, 53.610176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.897232, 56.301052, 53.709633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675162, 0.169762, 0.717869,
		-0.737373, 0.182863, 0.650263,
		-0.020881, -0.968371, 0.248640,
		62.890968, 56.010540, 53.784225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.774761, 56.552399, 54.321518>,  <62.905586, 56.688400, 53.610176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.774761, 56.552399, 54.321518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.036041, 56.267994, 54.217369>,  <63.192810, 56.097351, 54.154881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.036041, 56.267994, 54.217369>,  <62.774761, 56.552399, 54.321518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.036041, 56.267994, 54.217369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558262, 0.219918, 0.799988,
		-0.511542, -0.667904, 0.540581,
		0.653199, -0.711013, -0.260368,
		63.232002, 56.054691, 54.139259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.753136, 55.949848, 54.778236>,  <62.774761, 56.552399, 54.321518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.753136, 55.949848, 54.778236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.115128, 56.037159, 54.632156>,  <63.332321, 56.089546, 54.544510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.115128, 56.037159, 54.632156>,  <62.753136, 55.949848, 54.778236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.115128, 56.037159, 54.632156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358853, 0.069522, 0.930801,
		0.228564, -0.973407, -0.015414,
		0.904977, 0.218279, -0.365200,
		63.386620, 56.102642, 54.522594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.171329, 56.118645, 55.372192>,  <62.753136, 55.949848, 54.778236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.171329, 56.118645, 55.372192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.279732, 55.845577, 55.643639>,  <63.344772, 55.681736, 55.806507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.279732, 55.845577, 55.643639>,  <63.171329, 56.118645, 55.372192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.279732, 55.845577, 55.643639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716830, 0.613650, 0.331040,
		-0.642424, 0.396740, 0.655659,
		0.271009, -0.682665, 0.678618,
		63.361034, 55.640778, 55.847225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.389526, 56.587662, 55.889427>,  <63.171329, 56.118645, 55.372192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.389526, 56.587662, 55.889427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.562691, 56.238022, 55.977554>,  <63.666592, 56.028240, 56.030430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.562691, 56.238022, 55.977554>,  <63.389526, 56.587662, 55.889427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.562691, 56.238022, 55.977554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847747, 0.477870, 0.230141,
		-0.306448, 0.087142, 0.947890,
		0.432913, -0.874098, 0.220317,
		63.692566, 55.975792, 56.043648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.630981, 56.537041, 56.602943>,  <63.389526, 56.587662, 55.889427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.630981, 56.537041, 56.602943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.876450, 56.314484, 56.378860>,  <64.023727, 56.180950, 56.244411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.876450, 56.314484, 56.378860>,  <63.630981, 56.537041, 56.602943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.876450, 56.314484, 56.378860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789478, 0.442708, 0.425127,
		0.011473, -0.703163, 0.710936,
		0.613671, -0.556391, -0.560212,
		64.060555, 56.147568, 56.210796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.183487, 56.277889, 56.992466>,  <63.630981, 56.537041, 56.602943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.183487, 56.277889, 56.992466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.289986, 56.312496, 56.608459>,  <64.353882, 56.333260, 56.378056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.289986, 56.312496, 56.608459>,  <64.183487, 56.277889, 56.992466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.289986, 56.312496, 56.608459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831968, 0.482330, 0.274203,
		0.486770, -0.871706, 0.056430,
		0.266242, 0.086526, -0.960015,
		64.369858, 56.338451, 56.320454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.924683, 56.095222, 56.985504>,  <64.183487, 56.277889, 56.992466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.924683, 56.095222, 56.985504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.822189, 56.364517, 56.708061>,  <64.760689, 56.526096, 56.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.822189, 56.364517, 56.708061>,  <64.924683, 56.095222, 56.985504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.822189, 56.364517, 56.708061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772450, 0.573988, 0.271770,
		0.581088, -0.466138, -0.667123,
		-0.256238, 0.673241, -0.693606,
		64.745316, 56.566490, 56.499981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.892593, 56.658268, 57.545807>,  <64.924683, 56.095222, 56.985504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.892593, 56.658268, 57.545807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.920898, 56.905533, 57.232666>,  <64.937881, 57.053894, 57.044781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.920898, 56.905533, 57.232666>,  <64.892593, 56.658268, 57.545807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.920898, 56.905533, 57.232666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211216, -0.776313, -0.593907,
		-0.974874, -0.123320, -0.185508,
		0.070772, 0.618167, -0.782855,
		64.942131, 57.090984, 56.997810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.638855, 56.825539, 57.886295>,  <64.892593, 56.658268, 57.545807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.638855, 56.825539, 57.886295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.021385, 56.735207, 57.812050>,  <66.250900, 56.681007, 57.767502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.021385, 56.735207, 57.812050>,  <65.638855, 56.825539, 57.886295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.021385, 56.735207, 57.812050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292217, -0.755378, -0.586527,
		-0.007750, 0.615146, -0.788375,
		0.956321, -0.225831, -0.185610,
		66.308281, 56.667458, 57.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.959862, 56.910156, 58.588207>,  <65.638855, 56.825539, 57.886295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.959862, 56.910156, 58.588207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.753510, 57.236942, 58.485107>,  <65.629700, 57.433014, 58.423248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.753510, 57.236942, 58.485107>,  <65.959862, 56.910156, 58.588207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.753510, 57.236942, 58.485107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087782, 0.349707, 0.932737,
		0.852152, 0.458553, -0.252122,
		-0.515878, 0.816966, -0.257751,
		65.598747, 57.482033, 58.407784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.358009, 57.471359, 58.973316>,  <65.959862, 56.910156, 58.588207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.358009, 57.471359, 58.973316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.976669, 57.559097, 58.890343>,  <65.747864, 57.611740, 58.840561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.976669, 57.559097, 58.890343>,  <66.358009, 57.471359, 58.973316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.976669, 57.559097, 58.890343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164633, 0.198208, 0.966235,
		0.253056, 0.955301, -0.152847,
		-0.953341, 0.219348, -0.207432,
		65.690666, 57.624901, 58.828114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.712067, 57.809059, 59.618027>,  <66.358009, 57.471359, 58.973316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.712067, 57.809059, 59.618027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.019592, 58.001045, 59.449005>,  <67.204109, 58.116238, 59.347591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.019592, 58.001045, 59.449005>,  <66.712067, 57.809059, 59.618027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.019592, 58.001045, 59.449005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106415, 0.555553, 0.824644,
		0.630551, -0.678967, 0.376043,
		0.768818, 0.479963, -0.422557,
		67.250237, 58.145035, 59.322239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.381310, 57.796093, 60.026367>,  <66.712067, 57.809059, 59.618027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.381310, 57.796093, 60.026367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.335266, 58.122238, 59.799408>,  <67.307640, 58.317924, 59.663235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.335266, 58.122238, 59.799408>,  <67.381310, 57.796093, 60.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.335266, 58.122238, 59.799408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139200, 0.578794, 0.803505,
		0.983552, 0.013502, -0.180118,
		-0.115100, 0.815362, -0.567395,
		67.300735, 58.366848, 59.629189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.979073, 58.273289, 59.873913>,  <67.381310, 57.796093, 60.026367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.979073, 58.273289, 59.873913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.840279, 58.037174, 60.165436>,  <67.757004, 57.895504, 60.340351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.840279, 58.037174, 60.165436>,  <67.979073, 58.273289, 59.873913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.840279, 58.037174, 60.165436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914380, -0.040104, 0.402865,
		-0.208577, 0.806198, 0.553662,
		-0.346993, -0.590286, 0.728807,
		67.736183, 57.860088, 60.384079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.992065, 58.530479, 60.711437>,  <67.979073, 58.273289, 59.873913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.992065, 58.530479, 60.711437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.070404, 58.148697, 60.621407>,  <68.117409, 57.919628, 60.567387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.070404, 58.148697, 60.621407>,  <67.992065, 58.530479, 60.711437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.070404, 58.148697, 60.621407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887199, 0.074683, 0.455303,
		-0.417755, -0.288864, 0.861416,
		0.195854, -0.954453, -0.225081,
		68.129158, 57.862362, 60.553883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.215004, 58.100769, 61.365166>,  <67.992065, 58.530479, 60.711437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.215004, 58.100769, 61.365166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.358070, 57.958862, 61.019630>,  <68.443909, 57.873718, 60.812309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.358070, 57.958862, 61.019630>,  <68.215004, 58.100769, 61.365166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.358070, 57.958862, 61.019630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931933, 0.076358, 0.354499,
		-0.059804, -0.931831, 0.357931,
		0.357664, -0.354768, -0.863838,
		68.465370, 57.852432, 60.760479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.796059, 57.728359, 61.481705>,  <68.215004, 58.100769, 61.365166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.796059, 57.728359, 61.481705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.818634, 57.764862, 61.084015>,  <68.832176, 57.786766, 60.845402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.818634, 57.764862, 61.084015>,  <68.796059, 57.728359, 61.481705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.818634, 57.764862, 61.084015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993234, 0.096102, 0.065198,
		0.101497, -0.991179, -0.085219,
		0.056433, 0.091260, -0.994227,
		68.835564, 57.792240, 60.785748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.219536, 57.198578, 61.153778>,  <68.796059, 57.728359, 61.481705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.219536, 57.198578, 61.153778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.225548, 57.569611, 61.004448>,  <69.229156, 57.792229, 60.914848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.225548, 57.569611, 61.004448>,  <69.219536, 57.198578, 61.153778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.225548, 57.569611, 61.004448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999886, -0.014494, 0.004224,
		-0.001493, -0.373345, -0.927692,
		0.015023, 0.927580, -0.373324,
		69.230057, 57.847885, 60.892452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.634766, 57.134647, 60.515118>,  <69.219536, 57.198578, 61.153778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.634766, 57.134647, 60.515118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.656090, 57.483788, 60.709145>,  <69.668884, 57.693272, 60.825562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.656090, 57.483788, 60.709145>,  <69.634766, 57.134647, 60.515118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.656090, 57.483788, 60.709145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994262, -0.001272, -0.106967,
		-0.092749, 0.487985, -0.867910,
		0.053302, 0.872851, 0.485067,
		69.672081, 57.745644, 60.854664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.133026, 57.372437, 60.098133>,  <69.634766, 57.134647, 60.515118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.133026, 57.372437, 60.098133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.118454, 57.594009, 60.430840>,  <70.109711, 57.726955, 60.630463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.118454, 57.594009, 60.430840>,  <70.133026, 57.372437, 60.098133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.118454, 57.594009, 60.430840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993862, 0.107079, -0.027792,
		-0.104459, 0.825646, -0.554434,
		-0.036422, 0.553934, 0.831764,
		70.107529, 57.760189, 60.680370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.533386, 57.916088, 59.934628>,  <70.133026, 57.372437, 60.098133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.533386, 57.916088, 59.934628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.500465, 57.879860, 60.331619>,  <70.480713, 57.858124, 60.569817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.500465, 57.879860, 60.331619>,  <70.533386, 57.916088, 59.934628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.500465, 57.879860, 60.331619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992539, -0.097340, 0.073428,
		0.089958, 0.991122, 0.097904,
		-0.082306, -0.090568, 0.992483,
		70.475777, 57.852688, 60.629364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.991302, 58.402287, 60.314415>,  <70.533386, 57.916088, 59.934628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.991302, 58.402287, 60.314415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.932991, 58.069862, 60.529114>,  <70.898003, 57.870407, 60.657932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.932991, 58.069862, 60.529114>,  <70.991302, 58.402287, 60.314415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.932991, 58.069862, 60.529114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975751, -0.031227, 0.216645,
		-0.163284, 0.555309, 0.815457,
		-0.145769, -0.831058, 0.536744,
		70.889259, 57.820545, 60.690136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.234474, 58.490150, 61.066250>,  <70.991302, 58.402287, 60.314415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.234474, 58.490150, 61.066250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.271103, 58.124737, 60.907722>,  <71.293083, 57.905487, 60.812607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.271103, 58.124737, 60.907722>,  <71.234474, 58.490150, 61.066250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.271103, 58.124737, 60.907722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969982, 0.171870, -0.172035,
		0.225275, -0.368667, 0.901851,
		0.091578, -0.913535, -0.396318,
		71.298576, 57.850677, 60.788826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.795525, 58.148872, 61.383961>,  <71.234474, 58.490150, 61.066250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.795525, 58.148872, 61.383961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.749481, 58.007507, 61.012619>,  <71.721855, 57.922688, 60.789814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.749481, 58.007507, 61.012619>,  <71.795525, 58.148872, 61.383961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.749481, 58.007507, 61.012619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964752, 0.182871, -0.189238,
		0.236649, -0.917419, 0.319906,
		-0.115109, -0.353414, -0.928358,
		71.714951, 57.901482, 60.734112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.397369, 57.760506, 61.087669>,  <71.795525, 58.148872, 61.383961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.397369, 57.760506, 61.087669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.198318, 57.843372, 60.750755>,  <72.078888, 57.893093, 60.548607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.198318, 57.843372, 60.750755>,  <72.397369, 57.760506, 61.087669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.198318, 57.843372, 60.750755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856795, 0.268704, -0.440115,
		0.135147, -0.940680, -0.311216,
		-0.497632, 0.207168, -0.842285,
		72.049026, 57.905521, 60.498070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.706787, 57.498631, 60.413841>,  <72.397369, 57.760506, 61.087669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.706787, 57.498631, 60.413841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.514931, 57.827351, 60.290817>,  <72.399818, 58.024582, 60.217003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.514931, 57.827351, 60.290817>,  <72.706787, 57.498631, 60.413841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.514931, 57.827351, 60.290817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804721, 0.272237, -0.527553,
		-0.349811, -0.500538, -0.791892,
		-0.479643, 0.821796, -0.307562,
		72.371040, 58.073891, 60.198547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.238007, 57.893410, 60.158386>,  <72.706787, 57.498631, 60.413841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.238007, 57.893410, 60.158386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.932945, 58.139328, 60.077988>,  <72.749908, 58.286877, 60.029747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.932945, 58.139328, 60.077988>,  <73.238007, 57.893410, 60.158386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.932945, 58.139328, 60.077988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622031, 0.611913, -0.488508,
		-0.177337, -0.497587, -0.849093,
		-0.762646, 0.614793, -0.201000,
		72.704155, 58.323765, 60.017689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
