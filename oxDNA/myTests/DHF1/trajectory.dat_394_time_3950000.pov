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
	<4.765239, -0.227028, 1.104067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880611, 0.050560, 1.367950>,  <4.949835, 0.217113, 1.526280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880611, 0.050560, 1.367950>,  <4.765239, -0.227028, 1.104067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.880611, 0.050560, 1.367950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847389, -0.135780, 0.513318,
		0.445802, -0.707086, 0.548899,
		0.288430, 0.693970, 0.659708,
		4.967141, 0.258751, 1.565863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.710465, -0.482534, 1.879864>,  <4.765239, -0.227028, 1.104067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.710465, -0.482534, 1.879864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681129, -0.085663, 1.839455>,  <4.663528, 0.152460, 1.815209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681129, -0.085663, 1.839455>,  <4.710465, -0.482534, 1.879864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.681129, -0.085663, 1.839455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818837, -0.002080, 0.574022,
		0.569322, 0.124821, 0.812584,
		-0.073340, 0.992177, -0.101024,
		4.659128, 0.211990, 1.809148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.828546, -0.069840, 2.522766>,  <4.710465, -0.482534, 1.879864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.828546, -0.069840, 2.522766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555756, 0.083733, 2.273766>,  <4.392082, 0.175876, 2.124365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555756, 0.083733, 2.273766>,  <4.828546, -0.069840, 2.522766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.555756, 0.083733, 2.273766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725849, -0.250861, 0.640478,
		0.089738, 0.888632, 0.449757,
		-0.681975, 0.383931, -0.622501,
		4.351163, 0.198912, 2.087015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.294910, 0.348294, 3.011878>,  <4.828546, -0.069840, 2.522766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.294910, 0.348294, 3.011878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.143909, 0.222496, 2.663490>,  <4.053309, 0.147017, 2.454458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.143909, 0.222496, 2.663490>,  <4.294910, 0.348294, 3.011878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.143909, 0.222496, 2.663490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812168, -0.339376, 0.474560,
		-0.444832, 0.886520, -0.127307,
		-0.377502, -0.314495, -0.870968,
		4.030659, 0.128148, 2.402200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.752164, 0.804739, 2.881082>,  <4.294910, 0.348294, 3.011878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.752164, 0.804739, 2.881082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.714993, 0.450378, 2.699295>,  <3.692690, 0.237762, 2.590223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.714993, 0.450378, 2.699295>,  <3.752164, 0.804739, 2.881082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.714993, 0.450378, 2.699295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883344, -0.137257, 0.448179,
		-0.459422, 0.443100, -0.769801,
		-0.092928, -0.885902, -0.454468,
		3.687114, 0.184608, 2.562954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.028554, 0.792966, 2.696488>,  <3.752164, 0.804739, 2.881082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.028554, 0.792966, 2.696488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.163689, 0.416527, 2.702148>,  <3.244769, 0.190663, 2.705545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.163689, 0.416527, 2.702148>,  <3.028554, 0.792966, 2.696488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.163689, 0.416527, 2.702148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772914, -0.268818, 0.574753,
		-0.537095, -0.205110, -0.818205,
		0.337836, -0.941099, 0.014151,
		3.265039, 0.134197, 2.706394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.361769, 0.386085, 2.711774>,  <3.028554, 0.792966, 2.696488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.361769, 0.386085, 2.711774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.660030, 0.139404, 2.812714>,  <2.838987, -0.008604, 2.873278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.660030, 0.139404, 2.812714>,  <2.361769, 0.386085, 2.711774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.660030, 0.139404, 2.812714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609621, -0.478488, 0.631990,
		-0.269001, -0.625085, -0.732740,
		0.745654, -0.616700, 0.252351,
		2.883727, -0.045606, 2.888419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.088795, -0.347803, 2.569668>,  <2.361769, 0.386085, 2.711774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.088795, -0.347803, 2.569668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.369392, -0.345390, 2.854729>,  <2.537751, -0.343943, 3.025765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.369392, -0.345390, 2.854729>,  <2.088795, -0.347803, 2.569668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.369392, -0.345390, 2.854729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579314, -0.577598, 0.575132,
		0.415095, -0.816299, -0.401686,
		0.701493, 0.006032, 0.712651,
		2.579840, -0.343581, 3.068524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.169330, 4.770537, 4.992027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.138226, 4.446678, 4.759331>,  <2.119563, 4.252362, 4.619713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.138226, 4.446678, 4.759331>,  <2.169330, 4.770537, 4.992027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.138226, 4.446678, 4.759331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455558, 0.490172, -0.743100,
		0.886803, -0.322801, 0.330726,
		-0.077761, -0.809649, -0.581741,
		2.114897, 4.203784, 4.584808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.766076, 4.724926, 4.759097>,  <2.169330, 4.770537, 4.992027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.766076, 4.724926, 4.759097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.556234, 4.507881, 4.496689>,  <2.430329, 4.377654, 4.339244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.556234, 4.507881, 4.496689>,  <2.766076, 4.724926, 4.759097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.556234, 4.507881, 4.496689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478482, 0.449429, -0.754366,
		0.704163, -0.709638, 0.023858,
		-0.524604, -0.542612, -0.656020,
		2.398853, 4.345098, 4.299883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.176337, 4.340619, 4.375298>,  <2.766076, 4.724926, 4.759097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.176337, 4.340619, 4.375298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.887669, 4.412781, 4.107971>,  <2.714468, 4.456078, 3.947575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.887669, 4.412781, 4.107971>,  <3.176337, 4.340619, 4.375298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.887669, 4.412781, 4.107971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673129, 0.408155, -0.616690,
		0.161523, -0.894910, -0.415988,
		-0.721670, 0.180404, -0.668317,
		2.671168, 4.466902, 3.907476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.572383, 4.348571, 3.869846>,  <3.176337, 4.340619, 4.375298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.572383, 4.348571, 3.869846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.262270, 4.455765, 3.641068>,  <3.076202, 4.520081, 3.503800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.262270, 4.455765, 3.641068>,  <3.572383, 4.348571, 3.869846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.262270, 4.455765, 3.641068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629600, 0.255612, -0.733666,
		-0.050416, -0.928895, -0.366895,
		-0.775282, 0.267986, -0.571946,
		3.029685, 4.536160, 3.469484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.788175, 4.113895, 3.237282>,  <3.572383, 4.348571, 3.869846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.788175, 4.113895, 3.237282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.487719, 4.362137, 3.147270>,  <3.307445, 4.511082, 3.093263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.487719, 4.362137, 3.147270>,  <3.788175, 4.113895, 3.237282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.487719, 4.362137, 3.147270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536144, 0.374634, -0.756438,
		-0.385144, -0.688840, -0.614136,
		-0.751141, 0.620603, -0.225029,
		3.262376, 4.548318, 3.079761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.606575, 3.911564, 2.455241>,  <3.788175, 4.113895, 3.237282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.606575, 3.911564, 2.455241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.499760, 4.292168, 2.516327>,  <3.435671, 4.520530, 2.552979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.499760, 4.292168, 2.516327>,  <3.606575, 3.911564, 2.455241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.499760, 4.292168, 2.516327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573846, 0.284314, -0.768027,
		-0.774204, -0.117457, -0.621942,
		-0.267037, 0.951509, 0.152715,
		3.419649, 4.577621, 2.562141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.570215, 4.128711, 1.794673>,  <3.606575, 3.911564, 2.455241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.570215, 4.128711, 1.794673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.572107, 4.455246, 2.025696>,  <3.573242, 4.651167, 2.164310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.572107, 4.455246, 2.025696>,  <3.570215, 4.128711, 1.794673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.572107, 4.455246, 2.025696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684307, 0.418510, -0.597138,
		-0.729179, 0.398051, -0.556645,
		0.004730, 0.816337, 0.577557,
		3.573526, 4.700147, 2.198963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.509674, 4.717003, 1.332903>,  <3.570215, 4.128711, 1.794673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.509674, 4.717003, 1.332903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.690544, 4.850746, 1.663658>,  <3.799066, 4.930992, 1.862111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.690544, 4.850746, 1.663658>,  <3.509674, 4.717003, 1.332903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.690544, 4.850746, 1.663658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570335, 0.604386, -0.556270,
		-0.685752, 0.723134, 0.082592,
		0.452175, 0.334359, 0.826887,
		3.826197, 4.951054, 1.911724>
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
