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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.728340, 35.103481, 34.830921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340790, 35.009628, 34.799370>,  <24.108259, 34.953316, 34.780437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340790, 35.009628, 34.799370>,  <24.728340, 35.103481, 34.830921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340790, 35.009628, 34.799370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227031, -0.715293, -0.660919,
		0.098654, -0.658257, 0.746301,
		-0.968878, -0.234636, -0.078878,
		24.050127, 34.939236, 34.775707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474667, 35.174313, 34.765175>,  <24.728340, 35.103481, 34.830921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474667, 35.174313, 34.765175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420914, 35.059551, 35.144569>,  <25.388662, 34.990696, 35.372208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420914, 35.059551, 35.144569>,  <25.474667, 35.174313, 34.765175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420914, 35.059551, 35.144569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890361, -0.455110, -0.011514,
		0.434970, 0.842950, 0.316602,
		-0.134383, -0.286899, 0.948488,
		25.380598, 34.973480, 35.429115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657326, 34.516682, 34.384640>,  <25.474667, 35.174313, 34.765175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657326, 34.516682, 34.384640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968576, 34.717075, 34.536186>,  <26.155327, 34.837311, 34.627113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968576, 34.717075, 34.536186>,  <25.657326, 34.516682, 34.384640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968576, 34.717075, 34.536186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615030, -0.730157, -0.297673,
		0.127501, 0.464640, -0.876272,
		0.778127, 0.500980, 0.378863,
		26.202015, 34.867371, 34.649845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161551, 34.762035, 33.886982>,  <25.657326, 34.516682, 34.384640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161551, 34.762035, 33.886982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347370, 34.676586, 34.230740>,  <26.458862, 34.625317, 34.436993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347370, 34.676586, 34.230740>,  <26.161551, 34.762035, 33.886982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347370, 34.676586, 34.230740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445286, -0.782504, -0.435210,
		0.765451, 0.584853, -0.268389,
		0.464549, -0.213622, 0.859395,
		26.486734, 34.612499, 34.488560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968054, 34.678905, 33.921097>,  <26.161551, 34.762035, 33.886982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968054, 34.678905, 33.921097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784712, 34.446514, 34.190132>,  <26.674707, 34.307079, 34.351555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784712, 34.446514, 34.190132>,  <26.968054, 34.678905, 33.921097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784712, 34.446514, 34.190132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681934, -0.715216, -0.153077,
		0.569982, 0.388498, 0.724010,
		-0.458353, -0.580978, 0.672590,
		26.647205, 34.272221, 34.391911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322304, 34.572380, 34.592194>,  <26.968054, 34.678905, 33.921097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322304, 34.572380, 34.592194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138931, 34.239235, 34.468140>,  <27.028908, 34.039349, 34.393707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138931, 34.239235, 34.468140>,  <27.322304, 34.572380, 34.592194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138931, 34.239235, 34.468140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885145, -0.459189, -0.075255,
		-0.079735, -0.309017, 0.947708,
		-0.458432, -0.832859, -0.310139,
		27.001402, 33.989376, 34.375099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716656, 34.029114, 34.909389>,  <27.322304, 34.572380, 34.592194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716656, 34.029114, 34.909389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534281, 33.887218, 34.582886>,  <27.424856, 33.802082, 34.386982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534281, 33.887218, 34.582886>,  <27.716656, 34.029114, 34.909389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534281, 33.887218, 34.582886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837014, -0.482662, -0.257769,
		-0.302538, -0.800748, 0.516984,
		-0.455936, -0.354738, -0.816262,
		27.397499, 33.780796, 34.338009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449379, 34.357826, 35.446861>,  <27.716656, 34.029114, 34.909389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449379, 34.357826, 35.446861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800169, 34.316078, 35.634487>,  <28.010643, 34.291027, 35.747063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800169, 34.316078, 35.634487>,  <27.449379, 34.357826, 35.446861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800169, 34.316078, 35.634487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427037, -0.278333, -0.860331,
		0.220351, 0.954797, -0.199520,
		0.876975, -0.104372, 0.469065,
		28.063261, 34.284767, 35.775208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984894, 34.862667, 35.138203>,  <27.449379, 34.357826, 35.446861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984894, 34.862667, 35.138203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188820, 34.574059, 35.325603>,  <28.311174, 34.400894, 35.438046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188820, 34.574059, 35.325603>,  <27.984894, 34.862667, 35.138203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188820, 34.574059, 35.325603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406360, -0.278033, -0.870385,
		0.758262, 0.634115, 0.151453,
		0.509814, -0.721524, 0.468501,
		28.341764, 34.357601, 35.466152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681192, 34.903942, 34.816792>,  <27.984894, 34.862667, 35.138203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681192, 34.903942, 34.816792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700113, 34.543770, 34.989758>,  <28.711466, 34.327667, 35.093536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700113, 34.543770, 34.989758>,  <28.681192, 34.903942, 34.816792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700113, 34.543770, 34.989758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488446, -0.356762, -0.796330,
		0.871311, 0.248881, 0.422936,
		0.047304, -0.900432, 0.432416,
		28.714304, 34.273640, 35.119484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394247, 34.619251, 34.639606>,  <28.681192, 34.903942, 34.816792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394247, 34.619251, 34.639606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166779, 34.312958, 34.759785>,  <29.030296, 34.129181, 34.831894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166779, 34.312958, 34.759785>,  <29.394247, 34.619251, 34.639606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166779, 34.312958, 34.759785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180030, -0.472264, -0.862877,
		0.802622, -0.436604, 0.406418,
		-0.568672, -0.765731, 0.300448,
		28.996178, 34.083237, 34.849918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777184, 33.945244, 34.551907>,  <29.394247, 34.619251, 34.639606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777184, 33.945244, 34.551907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382717, 33.903809, 34.500137>,  <29.146038, 33.878948, 34.469074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382717, 33.903809, 34.500137>,  <29.777184, 33.945244, 34.551907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382717, 33.903809, 34.500137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162410, -0.447243, -0.879543,
		0.033229, -0.888393, 0.457879,
		-0.986164, -0.103591, -0.129423,
		29.086868, 33.872730, 34.461311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969585, 33.996540, 33.867294>,  <29.777184, 33.945244, 34.551907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969585, 33.996540, 33.867294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790592, 33.662819, 33.738483>,  <29.683197, 33.462585, 33.661198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790592, 33.662819, 33.738483>,  <29.969585, 33.996540, 33.867294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790592, 33.662819, 33.738483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499442, -0.065558, 0.863863,
		-0.741835, 0.547396, -0.387350,
		-0.447481, -0.834302, -0.322025,
		29.656347, 33.412529, 33.641876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170662, 34.082069, 33.788437>,  <29.969585, 33.996540, 33.867294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170662, 34.082069, 33.788437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304371, 33.720829, 33.896271>,  <29.384596, 33.504086, 33.960972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304371, 33.720829, 33.896271>,  <29.170662, 34.082069, 33.788437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304371, 33.720829, 33.896271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497870, 0.073668, 0.864117,
		-0.800242, -0.423069, -0.425000,
		0.334272, -0.903098, 0.269586,
		29.404652, 33.449902, 33.977146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569214, 33.548168, 33.733776>,  <29.170662, 34.082069, 33.788437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569214, 33.548168, 33.733776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846754, 33.437698, 33.999798>,  <29.013277, 33.371418, 34.159412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846754, 33.437698, 33.999798>,  <28.569214, 33.548168, 33.733776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846754, 33.437698, 33.999798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573327, 0.346969, 0.742232,
		-0.435740, -0.896292, 0.082405,
		0.693849, -0.276175, 0.665057,
		29.054909, 33.354847, 34.199314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221663, 33.158497, 34.312744>,  <28.569214, 33.548168, 33.733776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221663, 33.158497, 34.312744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558224, 33.346020, 34.420269>,  <28.760160, 33.458534, 34.484783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558224, 33.346020, 34.420269>,  <28.221663, 33.158497, 34.312744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558224, 33.346020, 34.420269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447932, 0.326731, 0.832228,
		0.302317, -0.820654, 0.484903,
		0.841405, 0.468800, 0.268821,
		28.810644, 33.486660, 34.500916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245310, 33.040264, 34.989986>,  <28.221663, 33.158497, 34.312744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245310, 33.040264, 34.989986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482794, 33.358978, 34.945015>,  <28.625284, 33.550205, 34.918034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482794, 33.358978, 34.945015>,  <28.245310, 33.040264, 34.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482794, 33.358978, 34.945015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354856, 0.384653, 0.852126,
		0.722208, -0.466020, 0.511117,
		0.593711, 0.796786, -0.112429,
		28.660908, 33.598015, 34.911285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535131, 33.085514, 35.627609>,  <28.245310, 33.040264, 34.989986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535131, 33.085514, 35.627609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597963, 33.451668, 35.479340>,  <28.635662, 33.671360, 35.390377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597963, 33.451668, 35.479340>,  <28.535131, 33.085514, 35.627609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597963, 33.451668, 35.479340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304559, 0.401938, 0.863533,
		0.939452, -0.022750, 0.341925,
		0.157078, 0.915384, -0.370673,
		28.645086, 33.726284, 35.368137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005735, 33.441071, 36.051857>,  <28.535131, 33.085514, 35.627609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005735, 33.441071, 36.051857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821445, 33.745613, 35.869400>,  <28.710871, 33.928337, 35.759926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821445, 33.745613, 35.869400>,  <29.005735, 33.441071, 36.051857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821445, 33.745613, 35.869400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207824, 0.407109, 0.889422,
		0.862867, 0.504578, -0.029338,
		-0.460726, 0.761356, -0.456145,
		28.683228, 33.974018, 35.732555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196491, 34.148464, 36.447567>,  <29.005735, 33.441071, 36.051857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196491, 34.148464, 36.447567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857704, 34.185085, 36.238083>,  <28.654432, 34.207058, 36.112392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857704, 34.185085, 36.238083>,  <29.196491, 34.148464, 36.447567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857704, 34.185085, 36.238083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376034, 0.593197, 0.711840,
		0.375829, 0.799835, -0.467992,
		-0.846966, 0.091549, -0.523706,
		28.603615, 34.212551, 36.080971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899107, 34.893795, 36.280361>,  <29.196491, 34.148464, 36.447567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899107, 34.893795, 36.280361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611216, 34.620235, 36.328144>,  <28.438480, 34.456100, 36.356815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611216, 34.620235, 36.328144>,  <28.899107, 34.893795, 36.280361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611216, 34.620235, 36.328144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379060, 0.531258, 0.757680,
		-0.581642, 0.500042, -0.641601,
		-0.719727, -0.683903, 0.119456,
		28.395298, 34.415066, 36.363979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142813, 35.122894, 36.022339>,  <28.899107, 34.893795, 36.280361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142813, 35.122894, 36.022339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156610, 34.864605, 36.327454>,  <28.164890, 34.709629, 36.510525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156610, 34.864605, 36.327454>,  <28.142813, 35.122894, 36.022339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156610, 34.864605, 36.327454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409836, 0.686976, 0.600082,
		-0.911507, -0.333319, -0.240944,
		0.034496, -0.645726, 0.762789,
		28.166960, 34.670887, 36.556290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434328, 34.992485, 36.473755>,  <28.142813, 35.122894, 36.022339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434328, 34.992485, 36.473755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769278, 34.953697, 36.688938>,  <27.970247, 34.930424, 36.818050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769278, 34.953697, 36.688938>,  <27.434328, 34.992485, 36.473755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769278, 34.953697, 36.688938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282414, 0.765875, 0.577648,
		-0.468025, -0.635635, 0.613938,
		0.837374, -0.096969, 0.537961,
		28.020491, 34.924606, 36.850327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289270, 34.945839, 37.255409>,  <27.434328, 34.992485, 36.473755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289270, 34.945839, 37.255409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643393, 35.099785, 37.151016>,  <27.855865, 35.192150, 37.088379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643393, 35.099785, 37.151016>,  <27.289270, 34.945839, 37.255409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643393, 35.099785, 37.151016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159304, 0.778305, 0.607342,
		0.436868, -0.496108, 0.750349,
		0.885307, 0.384862, -0.260984,
		27.908985, 35.215244, 37.072720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915215, 34.979202, 37.728493>,  <27.289270, 34.945839, 37.255409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915215, 34.979202, 37.728493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870451, 35.286411, 37.476265>,  <27.843592, 35.470737, 37.324928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870451, 35.286411, 37.476265>,  <27.915215, 34.979202, 37.728493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870451, 35.286411, 37.476265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364653, 0.558547, 0.745019,
		0.924394, 0.313314, 0.217555,
		-0.111910, 0.768023, -0.630569,
		27.836878, 35.516819, 37.287094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283619, 35.470058, 38.070637>,  <27.915215, 34.979202, 37.728493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283619, 35.470058, 38.070637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002813, 35.639580, 37.841705>,  <27.834330, 35.741295, 37.704346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002813, 35.639580, 37.841705>,  <28.283619, 35.470058, 38.070637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002813, 35.639580, 37.841705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309473, 0.542265, 0.781137,
		0.641407, 0.725490, -0.249521,
		-0.702014, 0.423806, -0.572333,
		27.792210, 35.766720, 37.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850840, 35.471020, 37.586761>,  <28.283619, 35.470058, 38.070637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850840, 35.471020, 37.586761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033386, 35.511013, 37.233101>,  <29.142914, 35.535011, 37.020905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033386, 35.511013, 37.233101>,  <28.850840, 35.471020, 37.586761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033386, 35.511013, 37.233101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870765, -0.154199, -0.466894,
		-0.183020, 0.982967, 0.016694,
		0.456368, 0.099988, -0.884156,
		29.170296, 35.541008, 36.967854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558731, 35.973835, 37.174480>,  <28.850840, 35.471020, 37.586761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558731, 35.973835, 37.174480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716043, 35.695778, 36.933781>,  <28.810431, 35.528942, 36.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716043, 35.695778, 36.933781>,  <28.558731, 35.973835, 37.174480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716043, 35.695778, 36.933781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872538, -0.075858, -0.482621,
		0.289843, 0.714858, -0.636372,
		0.393279, -0.695143, -0.601754,
		28.834028, 35.487236, 36.753254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331844, 36.643673, 37.351990>,  <28.558731, 35.973835, 37.174480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331844, 36.643673, 37.351990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683578, 36.634033, 37.161755>,  <28.894619, 36.628250, 37.047611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683578, 36.634033, 37.161755>,  <28.331844, 36.643673, 37.351990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683578, 36.634033, 37.161755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105939, 0.983590, 0.146043,
		0.464267, -0.178804, 0.867459,
		0.879337, -0.024095, -0.475590,
		28.947380, 36.626804, 37.019077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252958, 36.370953, 38.132095>,  <28.331844, 36.643673, 37.351990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252958, 36.370953, 38.132095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891991, 36.268772, 37.993305>,  <27.675411, 36.207466, 37.910030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891991, 36.268772, 37.993305>,  <28.252958, 36.370953, 38.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891991, 36.268772, 37.993305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425152, 0.397246, 0.813291,
		-0.069921, 0.881443, -0.467086,
		-0.902418, -0.255448, -0.346971,
		27.621265, 36.192139, 37.889214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758568, 36.989536, 38.337460>,  <28.252958, 36.370953, 38.132095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758568, 36.989536, 38.337460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514580, 36.680428, 38.267307>,  <27.368187, 36.494961, 38.225216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514580, 36.680428, 38.267307>,  <27.758568, 36.989536, 38.337460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514580, 36.680428, 38.267307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486571, 0.190563, 0.852605,
		-0.625450, 0.605397, -0.492247,
		-0.609968, -0.772774, -0.175380,
		27.331589, 36.448597, 38.214695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155445, 37.233936, 38.227406>,  <27.758568, 36.989536, 38.337460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155445, 37.233936, 38.227406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097086, 36.865707, 38.372322>,  <27.062071, 36.644772, 38.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097086, 36.865707, 38.372322>,  <27.155445, 37.233936, 38.227406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097086, 36.865707, 38.372322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547197, 0.380188, 0.745676,
		-0.824190, -0.089454, -0.559204,
		-0.145899, -0.920573, 0.362296,
		27.053316, 36.589535, 38.481010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533627, 37.266197, 38.582390>,  <27.155445, 37.233936, 38.227406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533627, 37.266197, 38.582390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703459, 36.935822, 38.730740>,  <26.805359, 36.737595, 38.819748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703459, 36.935822, 38.730740>,  <26.533627, 37.266197, 38.582390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703459, 36.935822, 38.730740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464969, 0.152572, 0.872081,
		-0.776874, -0.542715, -0.319259,
		0.424581, -0.825943, 0.370875,
		26.830833, 36.688038, 38.842003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954237, 36.913422, 38.797993>,  <26.533627, 37.266197, 38.582390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954237, 36.913422, 38.797993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294224, 36.823006, 38.988346>,  <26.498217, 36.768757, 39.102558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294224, 36.823006, 38.988346>,  <25.954237, 36.913422, 38.797993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294224, 36.823006, 38.988346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477361, 0.051734, 0.877183,
		-0.222895, -0.972744, -0.063929,
		0.849967, -0.226037, 0.475882,
		26.549213, 36.755196, 39.131111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928490, 36.282032, 39.237965>,  <25.954237, 36.913422, 38.797993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928490, 36.282032, 39.237965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197651, 36.536213, 39.389439>,  <26.359148, 36.688721, 39.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197651, 36.536213, 39.389439>,  <25.928490, 36.282032, 39.237965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197651, 36.536213, 39.389439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425423, -0.086359, 0.900865,
		0.605157, -0.767298, 0.212224,
		0.672904, 0.635449, 0.378687,
		26.399523, 36.726849, 39.503044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324409, 35.865036, 38.645882>,  <25.928490, 36.282032, 39.237965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324409, 35.865036, 38.645882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015345, 35.616337, 38.697151>,  <25.829906, 35.467117, 38.727913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015345, 35.616337, 38.697151>,  <26.324409, 35.865036, 38.645882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015345, 35.616337, 38.697151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288539, 0.164109, -0.943299,
		0.565457, -0.765833, -0.306199,
		-0.772660, -0.621745, 0.128176,
		25.783546, 35.429813, 38.735603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845798, 35.358860, 38.714577>,  <26.324409, 35.865036, 38.645882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845798, 35.358860, 38.714577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889385, 35.746696, 38.626923>,  <26.915537, 35.979397, 38.574329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889385, 35.746696, 38.626923>,  <26.845798, 35.358860, 38.714577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889385, 35.746696, 38.626923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262636, -0.240695, -0.934392,
		-0.958722, 0.044265, -0.280877,
		0.108966, 0.969591, -0.219134,
		26.922075, 36.037575, 38.561184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630848, 35.385944, 38.029945>,  <26.845798, 35.358860, 38.714577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630848, 35.385944, 38.029945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835777, 35.725517, 38.081860>,  <26.958735, 35.929260, 38.113007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835777, 35.725517, 38.081860>,  <26.630848, 35.385944, 38.029945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835777, 35.725517, 38.081860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298322, -0.034213, -0.953852,
		-0.805311, 0.527400, -0.270782,
		0.512326, 0.848928, 0.129783,
		26.989475, 35.980194, 38.120796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478203, 35.814068, 37.471268>,  <26.630848, 35.385944, 38.029945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478203, 35.814068, 37.471268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837664, 35.915607, 37.614368>,  <27.053339, 35.976532, 37.700230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837664, 35.915607, 37.614368>,  <26.478203, 35.814068, 37.471268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837664, 35.915607, 37.614368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405211, -0.168018, -0.898651,
		-0.168018, 0.952538, -0.253853,
		0.898651, 0.253853, 0.357749,
		27.107260, 35.991764, 37.721695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795649, 36.298546, 36.904392>,  <26.478203, 35.814068, 37.471268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795649, 36.298546, 36.904392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085081, 36.145535, 37.134209>,  <27.258741, 36.053730, 37.272099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085081, 36.145535, 37.134209>,  <26.795649, 36.298546, 36.904392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085081, 36.145535, 37.134209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536537, -0.211948, -0.816827,
		0.434231, 0.899306, 0.051878,
		0.723583, -0.382526, 0.574545,
		27.302156, 36.030777, 37.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452333, 36.523617, 36.612503>,  <26.795649, 36.298546, 36.904392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452333, 36.523617, 36.612503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566647, 36.192509, 36.805634>,  <27.635235, 35.993843, 36.921513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566647, 36.192509, 36.805634>,  <27.452333, 36.523617, 36.612503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566647, 36.192509, 36.805634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524682, -0.286452, -0.801657,
		0.801896, 0.482432, 0.352453,
		0.285784, -0.827771, 0.482827,
		27.652382, 35.944176, 36.950481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244150, 36.370651, 36.652481>,  <27.452333, 36.523617, 36.612503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244150, 36.370651, 36.652481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009771, 36.046539, 36.656693>,  <27.869144, 35.852074, 36.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009771, 36.046539, 36.656693>,  <28.244150, 36.370651, 36.652481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009771, 36.046539, 36.656693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590870, -0.436100, -0.678741,
		0.554561, -0.391488, 0.734302,
		-0.585948, -0.810281, 0.010526,
		27.833986, 35.803455, 36.659851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915567, 36.451355, 36.344246>,  <28.244150, 36.370651, 36.652481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915567, 36.451355, 36.344246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095293, 36.402973, 36.698307>,  <29.203129, 36.373943, 36.910744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095293, 36.402973, 36.698307>,  <28.915567, 36.451355, 36.344246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095293, 36.402973, 36.698307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540523, 0.825674, -0.161546,
		-0.711304, 0.551028, 0.436365,
		0.449312, -0.120957, 0.885149,
		29.230087, 36.366688, 36.963852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477018, 36.460964, 35.892517>,  <28.915567, 36.451355, 36.344246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477018, 36.460964, 35.892517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552336, 36.084599, 36.005112>,  <29.597527, 35.858780, 36.072666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552336, 36.084599, 36.005112>,  <29.477018, 36.460964, 35.892517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552336, 36.084599, 36.005112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959068, -0.237885, -0.153619,
		0.211503, -0.241035, -0.947190,
		0.188295, -0.940911, 0.281483,
		29.608824, 35.802326, 36.089558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640961, 36.228615, 36.576584>,  <29.477018, 36.460964, 35.892517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640961, 36.228615, 36.576584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965004, 36.291508, 36.350662>,  <30.159430, 36.329243, 36.215111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965004, 36.291508, 36.350662>,  <29.640961, 36.228615, 36.576584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965004, 36.291508, 36.350662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579992, -0.074183, 0.811238,
		0.085656, -0.984771, -0.151291,
		0.810107, 0.157235, -0.564805,
		30.208036, 36.338676, 36.181221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139988, 35.881577, 36.885323>,  <29.640961, 36.228615, 36.576584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139988, 35.881577, 36.885323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329149, 36.140842, 36.646576>,  <30.442646, 36.296402, 36.503330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329149, 36.140842, 36.646576>,  <30.139988, 35.881577, 36.885323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329149, 36.140842, 36.646576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638097, 0.215201, 0.739271,
		0.607613, -0.730462, -0.311820,
		0.472905, 0.648162, -0.596864,
		30.471022, 36.335293, 36.467518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756266, 35.638237, 36.861820>,  <30.139988, 35.881577, 36.885323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756266, 35.638237, 36.861820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775702, 36.034138, 36.808105>,  <30.787363, 36.271679, 36.775879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775702, 36.034138, 36.808105>,  <30.756266, 35.638237, 36.861820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775702, 36.034138, 36.808105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543016, 0.086663, 0.835238,
		0.838315, -0.113502, -0.533240,
		0.048589, 0.989751, -0.134285,
		30.790277, 36.331062, 36.767818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501801, 35.835781, 37.106934>,  <30.756266, 35.638237, 36.861820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501801, 35.835781, 37.106934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253117, 36.147892, 37.134193>,  <31.103907, 36.335159, 37.150551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253117, 36.147892, 37.134193>,  <31.501801, 35.835781, 37.106934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253117, 36.147892, 37.134193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442931, 0.278484, 0.852208,
		0.645979, 0.560012, -0.518745,
		-0.621710, 0.780277, 0.068152,
		31.066605, 36.381973, 37.154640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861927, 36.382687, 37.403423>,  <31.501801, 35.835781, 37.106934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861927, 36.382687, 37.403423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485308, 36.511303, 37.443619>,  <31.259336, 36.588474, 37.467735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485308, 36.511303, 37.443619>,  <31.861927, 36.382687, 37.403423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485308, 36.511303, 37.443619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286128, 0.605866, 0.742333,
		0.177809, 0.727694, -0.662454,
		-0.941549, 0.321540, 0.100486,
		31.202843, 36.607765, 37.473766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902624, 37.073849, 37.538784>,  <31.861927, 36.382687, 37.403423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902624, 37.073849, 37.538784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579605, 36.915627, 37.713779>,  <31.385794, 36.820694, 37.818779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579605, 36.915627, 37.713779>,  <31.902624, 37.073849, 37.538784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579605, 36.915627, 37.713779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241633, 0.454769, 0.857204,
		-0.538031, 0.797947, -0.271669,
		-0.807549, -0.395558, 0.437490,
		31.337339, 36.796959, 37.845028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247501, 37.475132, 37.735149>,  <31.902624, 37.073849, 37.538784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247501, 37.475132, 37.735149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364061, 37.159920, 37.952068>,  <31.433996, 36.970791, 38.082222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364061, 37.159920, 37.952068>,  <31.247501, 37.475132, 37.735149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364061, 37.159920, 37.952068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454851, 0.612858, 0.646155,
		-0.841545, 0.058378, 0.537024,
		0.291398, -0.788034, 0.542301,
		31.451481, 36.923512, 38.114758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111595, 37.504150, 38.448559>,  <31.247501, 37.475132, 37.735149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111595, 37.504150, 38.448559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450571, 37.293282, 38.423450>,  <31.653955, 37.166759, 38.408386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450571, 37.293282, 38.423450>,  <31.111595, 37.504150, 38.448559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450571, 37.293282, 38.423450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383214, 0.525583, 0.759546,
		-0.367419, -0.667723, 0.647418,
		0.847437, -0.527171, -0.062771,
		31.704802, 37.135132, 38.404617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238266, 37.117992, 39.118969>,  <31.111595, 37.504150, 38.448559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238266, 37.117992, 39.118969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519829, 37.266628, 38.876831>,  <31.688766, 37.355808, 38.731548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519829, 37.266628, 38.876831>,  <31.238266, 37.117992, 39.118969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519829, 37.266628, 38.876831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320571, 0.594315, 0.737580,
		0.633842, -0.713240, 0.299219,
		0.703902, 0.371588, -0.605346,
		31.731001, 37.378105, 38.695229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683834, 37.705067, 39.142784>,  <31.238266, 37.117992, 39.118969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683834, 37.705067, 39.142784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398003, 37.965660, 39.040848>,  <31.226503, 38.122017, 38.979687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398003, 37.965660, 39.040848>,  <31.683834, 37.705067, 39.142784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398003, 37.965660, 39.040848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671036, -0.535383, 0.512909,
		0.197713, 0.537523, 0.819743,
		-0.714577, 0.651486, -0.254845,
		31.183630, 38.161106, 38.964394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318689, 37.935734, 39.727104>,  <31.683834, 37.705067, 39.142784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318689, 37.935734, 39.727104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037127, 37.971703, 39.445274>,  <30.868189, 37.993282, 39.276176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037127, 37.971703, 39.445274>,  <31.318689, 37.935734, 39.727104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037127, 37.971703, 39.445274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697438, -0.275359, 0.661633,
		-0.134516, 0.957127, 0.256542,
		-0.703908, 0.089922, -0.704576,
		30.825954, 37.998680, 39.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711679, 38.373291, 39.923683>,  <31.318689, 37.935734, 39.727104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711679, 38.373291, 39.923683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561192, 38.093174, 39.681015>,  <30.470898, 37.925102, 39.535416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561192, 38.093174, 39.681015>,  <30.711679, 38.373291, 39.923683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561192, 38.093174, 39.681015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702555, -0.211259, 0.679549,
		-0.604048, 0.681878, -0.412515,
		-0.376221, -0.700295, -0.606667,
		30.448326, 37.883087, 39.499016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248892, 37.930775, 40.362438>,  <30.711679, 38.373291, 39.923683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248892, 37.930775, 40.362438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593779, 38.087509, 40.490841>,  <30.800711, 38.181549, 40.567883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593779, 38.087509, 40.490841>,  <30.248892, 37.930775, 40.362438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593779, 38.087509, 40.490841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258789, -0.885538, 0.385812,
		0.435441, -0.249580, -0.864928,
		0.862218, 0.391833, 0.321011,
		30.852444, 38.205059, 40.587143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725552, 37.454441, 40.300735>,  <30.248892, 37.930775, 40.362438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725552, 37.454441, 40.300735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887230, 37.701374, 40.570705>,  <30.984238, 37.849533, 40.732689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887230, 37.701374, 40.570705>,  <30.725552, 37.454441, 40.300735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887230, 37.701374, 40.570705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237826, -0.783442, 0.574159,
		0.883212, -0.071558, -0.463483,
		0.404198, 0.617332, 0.674927,
		31.008490, 37.886574, 40.773182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219212, 37.101131, 40.481163>,  <30.725552, 37.454441, 40.300735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219212, 37.101131, 40.481163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147993, 37.356499, 40.780689>,  <31.105261, 37.509720, 40.960403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147993, 37.356499, 40.780689>,  <31.219212, 37.101131, 40.481163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147993, 37.356499, 40.780689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120270, -0.741150, 0.660478,
		0.976644, 0.207656, 0.055178,
		-0.178047, 0.638416, 0.748815,
		31.094580, 37.548023, 41.005333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739407, 37.064468, 40.939732>,  <31.219212, 37.101131, 40.481163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739407, 37.064468, 40.939732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395870, 37.168259, 41.116398>,  <31.189749, 37.230534, 41.222397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395870, 37.168259, 41.116398>,  <31.739407, 37.064468, 40.939732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395870, 37.168259, 41.116398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058729, -0.806645, 0.588111,
		0.508868, 0.531030, 0.677539,
		-0.858839, 0.259480, 0.441663,
		31.138218, 37.246101, 41.248898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898468, 37.061676, 41.602066>,  <31.739407, 37.064468, 40.939732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898468, 37.061676, 41.602066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524782, 36.962620, 41.499371>,  <31.300571, 36.903187, 41.437752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524782, 36.962620, 41.499371>,  <31.898468, 37.061676, 41.602066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524782, 36.962620, 41.499371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139358, -0.915922, 0.376385,
		-0.328363, 0.315846, 0.890179,
		-0.934215, -0.247645, -0.256739,
		31.244518, 36.888325, 41.422348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425339, 36.483643, 41.735840>,  <31.898468, 37.061676, 41.602066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425339, 36.483643, 41.735840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750629, 36.350269, 41.926617>,  <32.945805, 36.270245, 42.041084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750629, 36.350269, 41.926617>,  <32.425339, 36.483643, 41.735840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750629, 36.350269, 41.926617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571452, -0.612460, 0.546200,
		0.109989, -0.716738, -0.688613,
		0.813231, -0.333434, 0.476945,
		32.994598, 36.250240, 42.069702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606331, 35.793854, 41.399258>,  <32.425339, 36.483643, 41.735840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606331, 35.793854, 41.399258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682922, 35.862556, 41.785797>,  <32.728878, 35.903778, 42.017723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682922, 35.862556, 41.785797>,  <32.606331, 35.793854, 41.399258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682922, 35.862556, 41.785797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580827, -0.773834, 0.252630,
		0.791187, -0.609655, -0.048407,
		0.191476, 0.171761, 0.966351,
		32.740364, 35.914085, 42.075703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934261, 35.739647, 40.772823>,  <32.606331, 35.793854, 41.399258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934261, 35.739647, 40.772823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036449, 35.609467, 41.136982>,  <33.097763, 35.531361, 41.355476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036449, 35.609467, 41.136982>,  <32.934261, 35.739647, 40.772823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036449, 35.609467, 41.136982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020440, -0.939613, -0.341628,
		0.966601, 0.105884, -0.233389,
		0.255469, -0.325447, 0.910395,
		33.113091, 35.511833, 41.410099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597790, 35.300179, 40.765755>,  <32.934261, 35.739647, 40.772823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597790, 35.300179, 40.765755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358154, 35.204296, 41.071339>,  <33.214375, 35.146767, 41.254688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358154, 35.204296, 41.071339>,  <33.597790, 35.300179, 40.765755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358154, 35.204296, 41.071339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007697, -0.955814, -0.293870,
		0.800649, -0.170173, 0.574459,
		-0.599085, -0.239708, 0.763962,
		33.178429, 35.132385, 41.300526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856552, 34.817169, 41.390366>,  <33.597790, 35.300179, 40.765755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856552, 34.817169, 41.390366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473461, 34.759514, 41.290775>,  <33.243607, 34.724922, 41.231022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473461, 34.759514, 41.290775>,  <33.856552, 34.817169, 41.390366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473461, 34.759514, 41.290775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230585, -0.902104, -0.364744,
		-0.172031, -0.406735, 0.897203,
		-0.957724, -0.144134, -0.248977,
		33.186142, 34.716274, 41.216084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705524, 34.118996, 41.590237>,  <33.856552, 34.817169, 41.390366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705524, 34.118996, 41.590237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413200, 34.180389, 41.324196>,  <33.237804, 34.217224, 41.164574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413200, 34.180389, 41.324196>,  <33.705524, 34.118996, 41.590237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413200, 34.180389, 41.324196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225300, -0.865543, -0.447299,
		-0.644324, -0.476738, 0.597969,
		-0.730812, 0.153483, -0.665099,
		33.193958, 34.226433, 41.124668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317936, 33.464100, 41.463181>,  <33.705524, 34.118996, 41.590237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317936, 33.464100, 41.463181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272091, 33.695759, 41.140331>,  <33.244583, 33.834755, 40.946621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272091, 33.695759, 41.140331>,  <33.317936, 33.464100, 41.463181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272091, 33.695759, 41.140331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052212, -0.807842, -0.587082,
		-0.992037, -0.109428, 0.062349,
		-0.114611, 0.579152, -0.807123,
		33.237709, 33.869503, 40.898193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758739, 33.176449, 41.072132>,  <33.317936, 33.464100, 41.463181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758739, 33.176449, 41.072132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983078, 33.393372, 40.821896>,  <33.117680, 33.523525, 40.671753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983078, 33.393372, 40.821896>,  <32.758739, 33.176449, 41.072132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983078, 33.393372, 40.821896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143532, -0.807860, -0.571630,
		-0.815385, 0.230802, -0.530921,
		0.560843, 0.542302, -0.625590,
		33.151333, 33.556061, 40.634220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449203, 33.057781, 40.320606>,  <32.758739, 33.176449, 41.072132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449203, 33.057781, 40.320606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832455, 33.172318, 40.321373>,  <33.062405, 33.241039, 40.321835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832455, 33.172318, 40.321373>,  <32.449203, 33.057781, 40.320606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832455, 33.172318, 40.321373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183187, -0.607787, -0.772682,
		-0.220082, 0.740678, -0.634791,
		0.958127, 0.286339, 0.001920,
		33.119892, 33.258221, 40.321949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657970, 33.242840, 39.645004>,  <32.449203, 33.057781, 40.320606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657970, 33.242840, 39.645004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003071, 33.156551, 39.827923>,  <33.210133, 33.104778, 39.937675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003071, 33.156551, 39.827923>,  <32.657970, 33.242840, 39.645004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003071, 33.156551, 39.827923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250701, -0.602911, -0.757395,
		0.439097, 0.768089, -0.466082,
		0.862753, -0.215723, 0.457297,
		33.261898, 33.091835, 39.965111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032482, 33.216175, 39.076160>,  <32.657970, 33.242840, 39.645004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032482, 33.216175, 39.076160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261040, 33.043633, 39.355431>,  <33.398174, 32.940109, 39.522991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261040, 33.043633, 39.355431>,  <33.032482, 33.216175, 39.076160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261040, 33.043633, 39.355431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427345, -0.569898, -0.701849,
		0.700631, 0.699393, -0.141300,
		0.571395, -0.431353, 0.698171,
		33.432457, 32.914227, 39.564880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696098, 33.130894, 38.710007>,  <33.032482, 33.216175, 39.076160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696098, 33.130894, 38.710007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684135, 32.872242, 39.014896>,  <33.676956, 32.717052, 39.197830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684135, 32.872242, 39.014896>,  <33.696098, 33.130894, 38.710007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684135, 32.872242, 39.014896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328600, -0.726536, -0.603463,
		0.943996, 0.232418, 0.234209,
		-0.029906, -0.646628, 0.762220,
		33.675163, 32.678253, 39.243561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282249, 32.757217, 38.721947>,  <33.696098, 33.130894, 38.710007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282249, 32.757217, 38.721947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061707, 32.513763, 38.950184>,  <33.929382, 32.367691, 39.087124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061707, 32.513763, 38.950184>,  <34.282249, 32.757217, 38.721947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061707, 32.513763, 38.950184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285646, -0.780319, -0.556335,
		0.783847, -0.143751, 0.604085,
		-0.551353, -0.608636, 0.570589,
		33.896301, 32.331173, 39.121361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656288, 32.189312, 38.767071>,  <34.282249, 32.757217, 38.721947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656288, 32.189312, 38.767071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298920, 32.036400, 38.861443>,  <34.084499, 31.944653, 38.918064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298920, 32.036400, 38.861443>,  <34.656288, 32.189312, 38.767071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298920, 32.036400, 38.861443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134627, -0.728903, -0.671249,
		0.428574, -0.567945, 0.702682,
		-0.893420, -0.382280, 0.235928,
		34.030895, 31.921717, 38.932220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821674, 31.393902, 38.959789>,  <34.656288, 32.189312, 38.767071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821674, 31.393902, 38.959789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432205, 31.435757, 38.878780>,  <34.198524, 31.460871, 38.830173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432205, 31.435757, 38.878780>,  <34.821674, 31.393902, 38.959789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432205, 31.435757, 38.878780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007562, -0.873110, -0.487464,
		-0.227835, -0.476161, 0.849330,
		-0.973670, 0.104639, -0.202526,
		34.140102, 31.467148, 38.818024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598366, 30.791916, 39.175140>,  <34.821674, 31.393902, 38.959789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598366, 30.791916, 39.175140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323078, 30.945734, 38.929058>,  <34.157906, 31.038025, 38.781406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323078, 30.945734, 38.929058>,  <34.598366, 30.791916, 39.175140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323078, 30.945734, 38.929058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001448, -0.848701, -0.528872,
		-0.725505, -0.363087, 0.584646,
		-0.688215, 0.384546, -0.615210,
		34.116615, 31.061098, 38.744495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254642, 30.186562, 38.888901>,  <34.598366, 30.791916, 39.175140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254642, 30.186562, 38.888901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183189, 30.486837, 38.634483>,  <34.140316, 30.667004, 38.481831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183189, 30.486837, 38.634483>,  <34.254642, 30.186562, 38.888901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183189, 30.486837, 38.634483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005173, -0.647152, -0.762344,
		-0.983901, -0.132893, 0.119488,
		-0.178637, 0.750689, -0.636046,
		34.129597, 30.712044, 38.443668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688145, 29.956356, 38.476135>,  <34.254642, 30.186562, 38.888901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688145, 29.956356, 38.476135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885357, 30.246368, 38.283783>,  <34.003685, 30.420376, 38.168373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885357, 30.246368, 38.283783>,  <33.688145, 29.956356, 38.476135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885357, 30.246368, 38.283783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096056, -0.594712, -0.798180,
		-0.864690, 0.347340, -0.362858,
		0.493035, 0.725033, -0.480878,
		34.033268, 30.463879, 38.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332645, 29.986422, 37.902328>,  <33.688145, 29.956356, 38.476135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332645, 29.986422, 37.902328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682804, 30.163456, 37.824562>,  <33.892899, 30.269676, 37.777901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682804, 30.163456, 37.824562>,  <33.332645, 29.986422, 37.902328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682804, 30.163456, 37.824562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041493, -0.469493, -0.881961,
		-0.481623, 0.763998, -0.429357,
		0.875396, 0.442588, -0.194418,
		33.945423, 30.296232, 37.766235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252289, 30.397228, 37.291183>,  <33.332645, 29.986422, 37.902328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252289, 30.397228, 37.291183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629082, 30.268776, 37.330273>,  <33.855156, 30.191704, 37.353725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629082, 30.268776, 37.330273>,  <33.252289, 30.397228, 37.291183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629082, 30.268776, 37.330273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041491, -0.400293, -0.915448,
		0.333099, 0.858277, -0.390391,
		0.941979, -0.321132, 0.097727,
		33.911674, 30.172436, 37.359592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567440, 30.526194, 36.616520>,  <33.252289, 30.397228, 37.291183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567440, 30.526194, 36.616520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808681, 30.267714, 36.803577>,  <33.953426, 30.112625, 36.915813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808681, 30.267714, 36.803577>,  <33.567440, 30.526194, 36.616520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808681, 30.267714, 36.803577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020140, -0.598421, -0.800929,
		0.797410, 0.473623, -0.373923,
		0.603101, -0.646200, 0.467648,
		33.989613, 30.073854, 36.943871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112423, 30.478733, 36.192093>,  <33.567440, 30.526194, 36.616520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112423, 30.478733, 36.192093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131813, 30.142828, 36.408409>,  <34.143448, 29.941286, 36.538197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131813, 30.142828, 36.408409>,  <34.112423, 30.478733, 36.192093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131813, 30.142828, 36.408409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114941, -0.533138, -0.838184,
		0.992189, 0.102788, 0.070680,
		0.048473, -0.839761, 0.540788,
		34.146355, 29.890900, 36.570644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720371, 30.254259, 35.986034>,  <34.112423, 30.478733, 36.192093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720371, 30.254259, 35.986034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522766, 29.933817, 36.121201>,  <34.404205, 29.741552, 36.202301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522766, 29.933817, 36.121201>,  <34.720371, 30.254259, 35.986034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522766, 29.933817, 36.121201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117236, -0.446474, -0.887083,
		0.861516, -0.398612, 0.314481,
		-0.494010, -0.801105, 0.337913,
		34.374561, 29.693485, 36.222576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037560, 29.581713, 35.726776>,  <34.720371, 30.254259, 35.986034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037560, 29.581713, 35.726776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677757, 29.449751, 35.841362>,  <34.461876, 29.370575, 35.910114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677757, 29.449751, 35.841362>,  <35.037560, 29.581713, 35.726776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677757, 29.449751, 35.841362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003277, -0.650530, -0.759474,
		0.436905, -0.684086, 0.584071,
		-0.899501, -0.329904, 0.286462,
		34.407906, 29.350780, 35.927299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041210, 28.887268, 35.499722>,  <35.037560, 29.581713, 35.726776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041210, 28.887268, 35.499722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652832, 28.938509, 35.580574>,  <34.419804, 28.969254, 35.629086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652832, 28.938509, 35.580574>,  <35.041210, 28.887268, 35.499722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652832, 28.938509, 35.580574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234177, -0.682511, -0.692344,
		0.049263, -0.719561, 0.692679,
		-0.970945, 0.128103, 0.202128,
		34.361549, 28.976940, 35.641212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727856, 28.277000, 35.679256>,  <35.041210, 28.887268, 35.499722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727856, 28.277000, 35.679256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417027, 28.486248, 35.539257>,  <34.230530, 28.611797, 35.455257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417027, 28.486248, 35.539257>,  <34.727856, 28.277000, 35.679256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417027, 28.486248, 35.539257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214127, -0.742632, -0.634545,
		-0.591865, -0.418144, 0.689095,
		-0.777075, 0.523119, -0.350002,
		34.183903, 28.643183, 35.434258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142532, 27.748640, 35.577545>,  <34.727856, 28.277000, 35.679256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142532, 27.748640, 35.577545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024773, 28.065615, 35.363865>,  <33.954117, 28.255800, 35.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024773, 28.065615, 35.363865>,  <34.142532, 27.748640, 35.577545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024773, 28.065615, 35.363865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324951, -0.608673, -0.723826,
		-0.898740, -0.039507, 0.436698,
		-0.294402, 0.792437, -0.534202,
		33.936451, 28.303347, 35.203606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624710, 27.507494, 35.181728>,  <34.142532, 27.748640, 35.577545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624710, 27.507494, 35.181728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693733, 27.837721, 34.966820>,  <33.735146, 28.035856, 34.837875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693733, 27.837721, 34.966820>,  <33.624710, 27.507494, 35.181728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693733, 27.837721, 34.966820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161092, -0.514459, -0.842248,
		-0.971737, 0.231889, 0.044218,
		0.172559, 0.825566, -0.537275,
		33.745502, 28.085390, 34.805637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046593, 27.554886, 34.785362>,  <33.624710, 27.507494, 35.181728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046593, 27.554886, 34.785362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303055, 27.811413, 34.616776>,  <33.456932, 27.965328, 34.515621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303055, 27.811413, 34.616776>,  <33.046593, 27.554886, 34.785362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303055, 27.811413, 34.616776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142992, -0.439755, -0.886661,
		-0.753973, 0.628753, -0.190247,
		0.641153, 0.641315, -0.421471,
		33.495399, 28.003807, 34.490334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733295, 27.822495, 34.274525>,  <33.046593, 27.554886, 34.785362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733295, 27.822495, 34.274525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111076, 27.885538, 34.159164>,  <33.337746, 27.923365, 34.089951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111076, 27.885538, 34.159164>,  <32.733295, 27.822495, 34.274525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111076, 27.885538, 34.159164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258520, -0.185555, -0.948017,
		-0.202931, 0.969911, -0.134503,
		0.944450, 0.157610, -0.288396,
		33.394413, 27.932821, 34.072647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729610, 28.218134, 33.677097>,  <32.733295, 27.822495, 34.274525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729610, 28.218134, 33.677097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084988, 28.035273, 33.660667>,  <33.298214, 27.925556, 33.650810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084988, 28.035273, 33.660667>,  <32.729610, 28.218134, 33.677097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084988, 28.035273, 33.660667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206699, -0.318593, -0.925080,
		0.409818, 0.830367, -0.377544,
		0.888439, -0.457153, -0.041070,
		33.351521, 27.898127, 33.648346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940575, 28.338882, 33.050243>,  <32.729610, 28.218134, 33.677097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940575, 28.338882, 33.050243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192245, 28.038755, 33.131397>,  <33.343246, 27.858679, 33.180088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192245, 28.038755, 33.131397>,  <32.940575, 28.338882, 33.050243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192245, 28.038755, 33.131397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022819, -0.243080, -0.969738,
		0.776927, 0.614766, -0.135819,
		0.629176, -0.750317, 0.202883,
		33.380997, 27.813660, 33.192261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341053, 28.266100, 32.499290>,  <32.940575, 28.338882, 33.050243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341053, 28.266100, 32.499290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389545, 27.912510, 32.679909>,  <33.418640, 27.700356, 32.788280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389545, 27.912510, 32.679909>,  <33.341053, 28.266100, 32.499290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389545, 27.912510, 32.679909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132483, -0.436420, -0.889936,
		0.983743, 0.167711, 0.064204,
		0.121232, -0.883974, 0.451545,
		33.425915, 27.647318, 32.815372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072796, 28.025358, 32.317696>,  <33.341053, 28.266100, 32.499290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072796, 28.025358, 32.317696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865978, 27.697750, 32.417198>,  <33.741890, 27.501186, 32.476898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865978, 27.697750, 32.417198>,  <34.072796, 28.025358, 32.317696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865978, 27.697750, 32.417198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165994, -0.381036, -0.909537,
		0.839711, -0.428976, 0.332964,
		-0.517041, -0.819018, 0.248753,
		33.710865, 27.452045, 32.491825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505367, 27.432985, 32.005302>,  <34.072796, 28.025358, 32.317696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505367, 27.432985, 32.005302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137653, 27.297661, 32.085762>,  <33.917027, 27.216467, 32.134037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137653, 27.297661, 32.085762>,  <34.505367, 27.432985, 32.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137653, 27.297661, 32.085762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030803, -0.571325, -0.820145,
		0.392385, -0.747752, 0.535632,
		-0.919285, -0.338312, 0.201147,
		33.861866, 27.196167, 32.146107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593464, 26.706039, 31.905262>,  <34.505367, 27.432985, 32.005302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593464, 26.706039, 31.905262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217571, 26.839314, 31.874565>,  <33.992035, 26.919277, 31.856148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217571, 26.839314, 31.874565>,  <34.593464, 26.706039, 31.905262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217571, 26.839314, 31.874565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021745, -0.282233, -0.959099,
		-0.341219, -0.899628, 0.272469,
		-0.939732, 0.333188, -0.076741,
		33.935650, 26.939268, 31.851543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289021, 26.223516, 31.454472>,  <34.593464, 26.706039, 31.905262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289021, 26.223516, 31.454472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024193, 26.522100, 31.427761>,  <33.865295, 26.701252, 31.411736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024193, 26.522100, 31.427761>,  <34.289021, 26.223516, 31.454472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024193, 26.522100, 31.427761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079176, -0.158268, -0.984217,
		-0.745249, -0.646332, 0.163886,
		-0.662069, 0.746462, -0.066775,
		33.825573, 26.746038, 31.407728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614559, 26.001450, 31.087341>,  <34.289021, 26.223516, 31.454472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614559, 26.001450, 31.087341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650135, 26.397392, 31.043032>,  <33.671482, 26.634958, 31.016445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650135, 26.397392, 31.043032>,  <33.614559, 26.001450, 31.087341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650135, 26.397392, 31.043032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265501, -0.083632, -0.960476,
		-0.959999, 0.114837, 0.255370,
		0.088941, 0.989857, -0.110776,
		33.676819, 26.694349, 31.009798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310017, 26.074020, 30.492607>,  <33.614559, 26.001450, 31.087341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310017, 26.074020, 30.492607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441490, 26.450874, 30.518972>,  <33.520374, 26.676987, 30.534792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441490, 26.450874, 30.518972>,  <33.310017, 26.074020, 30.492607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441490, 26.450874, 30.518972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120646, 0.111104, -0.986458,
		-0.936701, 0.316284, 0.150184,
		0.328688, 0.942136, 0.065913,
		33.540096, 26.733515, 30.538746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792679, 26.442295, 30.154173>,  <33.310017, 26.074020, 30.492607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792679, 26.442295, 30.154173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137249, 26.645267, 30.145630>,  <33.343990, 26.767052, 30.140505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137249, 26.645267, 30.145630>,  <32.792679, 26.442295, 30.154173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137249, 26.645267, 30.145630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127077, 0.174632, -0.976399,
		-0.491727, 0.843810, 0.214916,
		0.861427, 0.507432, -0.021357,
		33.395676, 26.797497, 30.139223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531906, 27.039730, 29.891071>,  <32.792679, 26.442295, 30.154173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531906, 27.039730, 29.891071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922688, 27.049641, 29.806263>,  <33.157154, 27.055588, 29.755379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922688, 27.049641, 29.806263>,  <32.531906, 27.039730, 29.891071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922688, 27.049641, 29.806263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212725, 0.195496, -0.957355,
		0.017729, 0.980391, 0.196261,
		0.976951, 0.024776, -0.212020,
		33.215775, 27.057074, 29.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554699, 27.447018, 29.275789>,  <32.531906, 27.039730, 29.891071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554699, 27.447018, 29.275789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911507, 27.267006, 29.292616>,  <33.125591, 27.158998, 29.302711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911507, 27.267006, 29.292616>,  <32.554699, 27.447018, 29.275789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911507, 27.267006, 29.292616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057667, 0.021000, -0.998115,
		0.448297, 0.892767, 0.044684,
		0.892022, -0.450029, 0.042069,
		33.179115, 27.131998, 29.305237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041016, 27.859192, 29.024805>,  <32.554699, 27.447018, 29.275789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041016, 27.859192, 29.024805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198109, 27.495846, 28.967350>,  <33.292366, 27.277838, 28.932877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198109, 27.495846, 28.967350>,  <33.041016, 27.859192, 29.024805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198109, 27.495846, 28.967350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136678, 0.212106, -0.967641,
		0.909438, 0.360395, 0.207455,
		0.392736, -0.908365, -0.143639,
		33.315929, 27.223337, 28.924257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675331, 27.944889, 28.605671>,  <33.041016, 27.859192, 29.024805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675331, 27.944889, 28.605671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576565, 27.563152, 28.538425>,  <33.517303, 27.334110, 28.498077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576565, 27.563152, 28.538425>,  <33.675331, 27.944889, 28.605671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576565, 27.563152, 28.538425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165421, 0.129429, -0.977693,
		0.954812, -0.269222, 0.125909,
		-0.246920, -0.954342, -0.168115,
		33.502487, 27.276850, 28.487991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019630, 27.747501, 27.941795>,  <33.675331, 27.944889, 28.605671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019630, 27.747501, 27.941795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743366, 27.462982, 27.994009>,  <33.577606, 27.292271, 28.025337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743366, 27.462982, 27.994009>,  <34.019630, 27.747501, 27.941795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743366, 27.462982, 27.994009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229326, 0.044233, -0.972344,
		0.685852, -0.701497, -0.193670,
		-0.690664, -0.711298, 0.130534,
		33.536167, 27.249594, 28.033169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209057, 27.250299, 27.611248>,  <34.019630, 27.747501, 27.941795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209057, 27.250299, 27.611248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812313, 27.202765, 27.629547>,  <33.574268, 27.174244, 27.640528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812313, 27.202765, 27.629547>,  <34.209057, 27.250299, 27.611248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812313, 27.202765, 27.629547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037278, -0.072555, -0.996667,
		0.121763, -0.990259, 0.067534,
		-0.991859, -0.118840, 0.045750,
		33.514755, 27.167112, 27.643272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082825, 26.845610, 27.112965>,  <34.209057, 27.250299, 27.611248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082825, 26.845610, 27.112965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715633, 26.993635, 27.170055>,  <33.495319, 27.082451, 27.204309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715633, 26.993635, 27.170055>,  <34.082825, 26.845610, 27.112965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715633, 26.993635, 27.170055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108957, 0.110724, -0.987861,
		-0.381377, -0.922384, -0.061320,
		-0.917976, 0.370066, 0.142727,
		33.440239, 27.104654, 27.212873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668755, 26.481049, 26.728207>,  <34.082825, 26.845610, 27.112965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668755, 26.481049, 26.728207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466331, 26.824795, 26.757584>,  <33.344875, 27.031042, 26.775209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466331, 26.824795, 26.757584>,  <33.668755, 26.481049, 26.728207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466331, 26.824795, 26.757584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082061, 0.036791, -0.995948,
		-0.858585, -0.510038, 0.051902,
		-0.506062, 0.859365, 0.073443,
		33.314514, 27.082603, 26.779617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056438, 26.407785, 26.260811>,  <33.668755, 26.481049, 26.728207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056438, 26.407785, 26.260811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111588, 26.795910, 26.340298>,  <33.144676, 27.028784, 26.387989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111588, 26.795910, 26.340298>,  <33.056438, 26.407785, 26.260811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111588, 26.795910, 26.340298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087051, 0.211726, -0.973445,
		-0.986618, 0.116910, 0.113657,
		0.137869, 0.970311, 0.198715,
		33.152946, 27.087004, 26.399912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495781, 26.926651, 25.914289>,  <33.056438, 26.407785, 26.260811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495781, 26.926651, 25.914289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852154, 27.101311, 25.964216>,  <33.065979, 27.206106, 25.994173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852154, 27.101311, 25.964216>,  <32.495781, 26.926651, 25.914289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852154, 27.101311, 25.964216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053602, 0.171815, -0.983670,
		-0.450964, 0.883072, 0.129670,
		0.890931, 0.436649, 0.124817,
		33.119434, 27.232306, 26.001661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517593, 27.555876, 25.489796>,  <32.495781, 26.926651, 25.914289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517593, 27.555876, 25.489796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903889, 27.476995, 25.557274>,  <33.135666, 27.429667, 25.597761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903889, 27.476995, 25.557274>,  <32.517593, 27.555876, 25.489796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903889, 27.476995, 25.557274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225882, 0.318730, -0.920537,
		0.127762, 0.927105, 0.352354,
		0.965740, -0.197200, 0.168695,
		33.193611, 27.417835, 25.607882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219997, 28.203592, 25.813097>,  <32.517593, 27.555876, 25.489796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219997, 28.203592, 25.813097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231075, 28.544010, 25.603352>,  <32.237720, 28.748260, 25.477505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231075, 28.544010, 25.603352>,  <32.219997, 28.203592, 25.813097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231075, 28.544010, 25.603352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171367, -0.512755, -0.841258,
		-0.984818, 0.113157, 0.131640,
		0.027695, 0.851045, -0.524362,
		32.239384, 28.799324, 25.446043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604137, 28.292309, 25.439646>,  <32.219997, 28.203592, 25.813097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604137, 28.292309, 25.439646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885855, 28.492655, 25.238409>,  <32.054886, 28.612864, 25.117666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885855, 28.492655, 25.238409>,  <31.604137, 28.292309, 25.439646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885855, 28.492655, 25.238409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171808, -0.567347, -0.805357,
		-0.688804, 0.653643, -0.313526,
		0.704294, 0.500867, -0.503092,
		32.097141, 28.642916, 25.087481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243240, 28.615164, 24.937208>,  <31.604137, 28.292309, 25.439646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243240, 28.615164, 24.937208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632799, 28.556751, 24.867693>,  <31.866533, 28.521704, 24.825983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632799, 28.556751, 24.867693>,  <31.243240, 28.615164, 24.937208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632799, 28.556751, 24.867693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226968, -0.638518, -0.735377,
		-0.003579, 0.755625, -0.654994,
		0.973896, -0.146031, -0.173788,
		31.924969, 28.512941, 24.815556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468475, 28.855055, 24.255270>,  <31.243240, 28.615164, 24.937208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468475, 28.855055, 24.255270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691164, 28.555159, 24.398348>,  <31.824778, 28.375221, 24.484196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691164, 28.555159, 24.398348>,  <31.468475, 28.855055, 24.255270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691164, 28.555159, 24.398348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223558, -0.549934, -0.804733,
		0.800051, 0.368047, -0.473772,
		0.556723, -0.749743, 0.357695,
		31.858181, 28.330236, 24.505657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154263, 28.695076, 23.875483>,  <31.468475, 28.855055, 24.255270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154263, 28.695076, 23.875483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937035, 28.395180, 24.026722>,  <31.806698, 28.215242, 24.117466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937035, 28.395180, 24.026722>,  <32.154263, 28.695076, 23.875483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937035, 28.395180, 24.026722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223614, -0.304894, -0.925763,
		0.809363, -0.587305, -0.002073,
		-0.543073, -0.749741, 0.378100,
		31.774113, 28.170258, 24.140152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905159, 28.868475, 24.128345>,  <32.154263, 28.695076, 23.875483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905159, 28.868475, 24.128345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560146, 28.814270, 24.323351>,  <32.353138, 28.781746, 24.440355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560146, 28.814270, 24.323351>,  <32.905159, 28.868475, 24.128345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560146, 28.814270, 24.323351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334554, 0.570096, 0.750376,
		-0.379617, 0.810325, -0.446391,
		-0.862534, -0.135513, 0.487515,
		32.301388, 28.773617, 24.469606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780914, 29.488966, 24.394093>,  <32.905159, 28.868475, 24.128345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780914, 29.488966, 24.394093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559143, 29.232159, 24.605913>,  <32.426083, 29.078075, 24.733006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559143, 29.232159, 24.605913>,  <32.780914, 29.488966, 24.394093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559143, 29.232159, 24.605913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219167, 0.501208, 0.837112,
		-0.802856, 0.580177, -0.137175,
		-0.554426, -0.642016, 0.529553,
		32.392815, 29.039555, 24.764780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205536, 29.838053, 24.643793>,  <32.780914, 29.488966, 24.394093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205536, 29.838053, 24.643793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202488, 29.528252, 24.896803>,  <32.200657, 29.342371, 25.048609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202488, 29.528252, 24.896803>,  <32.205536, 29.838053, 24.643793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202488, 29.528252, 24.896803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014015, 0.632563, 0.774382,
		-0.999873, -0.002961, -0.015677,
		-0.007624, -0.774503, 0.632524,
		32.200199, 29.295900, 25.086559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773260, 30.079269, 25.084843>,  <32.205536, 29.838053, 24.643793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773260, 30.079269, 25.084843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962660, 29.782955, 25.275434>,  <32.076302, 29.605165, 25.389790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962660, 29.782955, 25.275434>,  <31.773260, 30.079269, 25.084843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962660, 29.782955, 25.275434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029986, 0.554210, 0.831837,
		-0.880283, -0.379586, 0.284631,
		0.473499, -0.740787, 0.476480,
		32.104710, 29.560719, 25.418379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436867, 29.944368, 25.729908>,  <31.773260, 30.079269, 25.084843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436867, 29.944368, 25.729908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801172, 29.784731, 25.772305>,  <32.019756, 29.688950, 25.797743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801172, 29.784731, 25.772305>,  <31.436867, 29.944368, 25.729908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801172, 29.784731, 25.772305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105680, 0.473415, 0.874477,
		-0.399175, -0.785241, 0.473345,
		0.910764, -0.399093, 0.105991,
		32.074402, 29.665003, 25.804102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403015, 29.693672, 26.388624>,  <31.436867, 29.944368, 25.729908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403015, 29.693672, 26.388624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796415, 29.712231, 26.318687>,  <32.032455, 29.723366, 26.276726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796415, 29.712231, 26.318687>,  <31.403015, 29.693672, 26.388624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796415, 29.712231, 26.318687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149493, 0.335763, 0.930008,
		0.101853, -0.940803, 0.323288,
		0.983503, 0.046395, -0.174842,
		32.091465, 29.726149, 26.266235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695517, 29.308622, 26.883303>,  <31.403015, 29.693672, 26.388624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695517, 29.308622, 26.883303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004776, 29.539455, 26.778067>,  <32.190331, 29.677956, 26.714924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004776, 29.539455, 26.778067>,  <31.695517, 29.308622, 26.883303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004776, 29.539455, 26.778067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060961, 0.345285, 0.936516,
		0.631288, -0.740105, 0.231777,
		0.773149, 0.577082, -0.263091,
		32.236721, 29.712580, 26.699139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130939, 29.151638, 27.455801>,  <31.695517, 29.308622, 26.883303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130939, 29.151638, 27.455801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241524, 29.494265, 27.281506>,  <32.307873, 29.699841, 27.176929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241524, 29.494265, 27.281506>,  <32.130939, 29.151638, 27.455801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241524, 29.494265, 27.281506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244480, 0.375806, 0.893867,
		0.929409, -0.353645, -0.105519,
		0.276457, 0.856566, -0.435737,
		32.324459, 29.751234, 27.150785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834709, 29.228050, 27.622274>,  <32.130939, 29.151638, 27.455801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834709, 29.228050, 27.622274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657124, 29.573112, 27.525345>,  <32.550571, 29.780149, 27.467186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657124, 29.573112, 27.525345>,  <32.834709, 29.228050, 27.622274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657124, 29.573112, 27.525345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332056, 0.409580, 0.849696,
		0.832245, 0.296772, -0.468289,
		-0.443968, 0.862653, -0.242326,
		32.523933, 29.831909, 27.452646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279655, 29.626604, 27.787464>,  <32.834709, 29.228050, 27.622274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279655, 29.626604, 27.787464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960796, 29.867971, 27.795856>,  <32.769482, 30.012791, 27.800892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960796, 29.867971, 27.795856>,  <33.279655, 29.626604, 27.787464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960796, 29.867971, 27.795856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350479, 0.434147, 0.829868,
		0.491647, 0.668883, -0.557565,
		-0.797150, 0.603417, 0.020982,
		32.721653, 30.048996, 27.802151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510284, 30.345558, 27.933218>,  <33.279655, 29.626604, 27.787464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510284, 30.345558, 27.933218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118900, 30.334301, 28.015026>,  <32.884071, 30.327547, 28.064112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118900, 30.334301, 28.015026>,  <33.510284, 30.345558, 27.933218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118900, 30.334301, 28.015026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160183, 0.521470, 0.838100,
		-0.130240, 0.852806, -0.505728,
		-0.978458, -0.028145, 0.204521,
		32.825363, 30.325857, 28.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421070, 30.971323, 28.324562>,  <33.510284, 30.345558, 27.933218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421070, 30.971323, 28.324562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098969, 30.740875, 28.380642>,  <32.905708, 30.602606, 28.414289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098969, 30.740875, 28.380642>,  <33.421070, 30.971323, 28.324562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098969, 30.740875, 28.380642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051922, 0.304055, 0.951238,
		-0.590655, 0.758707, -0.274755,
		-0.805252, -0.576119, 0.140198,
		32.857391, 30.568039, 28.422701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843197, 31.411480, 28.675291>,  <33.421070, 30.971323, 28.324562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843197, 31.411480, 28.675291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785603, 31.025249, 28.761944>,  <32.751045, 30.793510, 28.813936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785603, 31.025249, 28.761944>,  <32.843197, 31.411480, 28.675291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785603, 31.025249, 28.761944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027875, 0.222783, 0.974469,
		-0.989188, 0.134267, -0.058992,
		-0.143982, -0.965578, 0.216631,
		32.742409, 30.735577, 28.826933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375916, 31.464096, 29.308926>,  <32.843197, 31.411480, 28.675291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375916, 31.464096, 29.308926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505856, 31.086161, 29.325676>,  <32.583820, 30.859400, 29.335726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505856, 31.086161, 29.325676>,  <32.375916, 31.464096, 29.308926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505856, 31.086161, 29.325676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106617, 0.080582, 0.991029,
		-0.939738, -0.317469, 0.126913,
		0.324848, -0.944839, 0.041878,
		32.603310, 30.802710, 29.338240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889612, 31.084442, 29.765306>,  <32.375916, 31.464096, 29.308926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889612, 31.084442, 29.765306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234386, 30.881786, 29.773123>,  <32.441250, 30.760193, 29.777813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234386, 30.881786, 29.773123>,  <31.889612, 31.084442, 29.765306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234386, 30.881786, 29.773123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004229, 0.031352, 0.999499,
		-0.506998, -0.861588, 0.024881,
		0.861937, -0.506639, 0.019539,
		32.492966, 30.729795, 29.778984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843197, 30.662264, 30.301743>,  <31.889612, 31.084442, 29.765306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843197, 30.662264, 30.301743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238354, 30.657892, 30.239841>,  <32.475449, 30.655270, 30.202700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238354, 30.657892, 30.239841>,  <31.843197, 30.662264, 30.301743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238354, 30.657892, 30.239841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155106, 0.090309, 0.983761,
		0.003221, -0.995854, 0.090911,
		0.987892, -0.010932, -0.154754,
		32.534721, 30.654613, 30.193415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172779, 30.226452, 30.793125>,  <31.843197, 30.662264, 30.301743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172779, 30.226452, 30.793125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459751, 30.484186, 30.687201>,  <32.631935, 30.638826, 30.623646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459751, 30.484186, 30.687201>,  <32.172779, 30.226452, 30.793125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459751, 30.484186, 30.687201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364587, -0.023374, 0.930876,
		0.593606, -0.764387, -0.251685,
		0.717432, 0.644335, -0.264810,
		32.674980, 30.677486, 30.607758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763756, 29.844872, 31.079729>,  <32.172779, 30.226452, 30.793125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763756, 29.844872, 31.079729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857540, 30.227526, 31.010593>,  <32.913811, 30.457119, 30.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857540, 30.227526, 31.010593>,  <32.763756, 29.844872, 31.079729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857540, 30.227526, 31.010593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299979, 0.097923, 0.948906,
		0.924684, -0.274329, -0.264012,
		0.234460, 0.956637, -0.172841,
		32.927879, 30.514517, 30.958740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370251, 29.989988, 31.514896>,  <32.763756, 29.844872, 31.079729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370251, 29.989988, 31.514896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217403, 30.348484, 31.424793>,  <33.125694, 30.563581, 31.370731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217403, 30.348484, 31.424793>,  <33.370251, 29.989988, 31.514896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217403, 30.348484, 31.424793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195530, 0.316651, 0.928170,
		0.903189, 0.310629, -0.296240,
		-0.382122, 0.896238, -0.225258,
		33.102768, 30.617355, 31.357216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895325, 30.395638, 31.671013>,  <33.370251, 29.989988, 31.514896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895325, 30.395638, 31.671013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559765, 30.612179, 31.693567>,  <33.358429, 30.742104, 31.707100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559765, 30.612179, 31.693567>,  <33.895325, 30.395638, 31.671013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559765, 30.612179, 31.693567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225937, 0.252119, 0.940951,
		0.495170, 0.802106, -0.333815,
		-0.838903, 0.541352, 0.056384,
		33.308094, 30.774584, 31.710482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007645, 31.015200, 32.057262>,  <33.895325, 30.395638, 31.671013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007645, 31.015200, 32.057262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608265, 31.003830, 32.076374>,  <33.368637, 30.997009, 32.087841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608265, 31.003830, 32.076374>,  <34.007645, 31.015200, 32.057262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608265, 31.003830, 32.076374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032341, 0.402099, 0.915025,
		-0.045220, 0.915155, -0.400558,
		-0.998453, -0.028423, 0.047780,
		33.308727, 30.995304, 32.090710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837276, 31.557249, 32.560696>,  <34.007645, 31.015200, 32.057262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837276, 31.557249, 32.560696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472164, 31.402573, 32.508076>,  <33.253098, 31.309767, 32.476505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472164, 31.402573, 32.508076>,  <33.837276, 31.557249, 32.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472164, 31.402573, 32.508076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293222, 0.396147, 0.870108,
		-0.284353, 0.832788, -0.474981,
		-0.912778, -0.386693, -0.131546,
		33.198330, 31.286566, 32.468613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334412, 32.088612, 32.602879>,  <33.837276, 31.557249, 32.560696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334412, 32.088612, 32.602879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145103, 31.749065, 32.697063>,  <33.031521, 31.545338, 32.753574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145103, 31.749065, 32.697063>,  <33.334412, 32.088612, 32.602879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145103, 31.749065, 32.697063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321436, 0.415267, 0.851018,
		-0.820180, 0.327075, -0.469389,
		-0.473269, -0.848867, 0.235460,
		33.003124, 31.494406, 32.767700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769566, 32.322197, 32.961849>,  <33.334412, 32.088612, 32.602879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769566, 32.322197, 32.961849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787979, 31.941339, 33.082710>,  <32.799026, 31.712824, 33.155228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787979, 31.941339, 33.082710>,  <32.769566, 32.322197, 32.961849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787979, 31.941339, 33.082710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163676, 0.291195, 0.942558,
		-0.985440, -0.092843, -0.142439,
		0.046033, -0.952148, 0.302152,
		32.801788, 31.655695, 33.173355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153515, 32.136230, 33.362057>,  <32.769566, 32.322197, 32.961849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153515, 32.136230, 33.362057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450630, 31.891100, 33.469913>,  <32.628899, 31.744022, 33.534626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450630, 31.891100, 33.469913>,  <32.153515, 32.136230, 33.362057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450630, 31.891100, 33.469913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049522, 0.351345, 0.934935,
		-0.667689, -0.707816, 0.230628,
		0.742792, -0.612824, 0.269642,
		32.673470, 31.707253, 33.550804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900219, 31.959398, 34.078594>,  <32.153515, 32.136230, 33.362057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900219, 31.959398, 34.078594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286884, 31.866219, 34.036079>,  <32.518883, 31.810310, 34.010571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286884, 31.866219, 34.036079>,  <31.900219, 31.959398, 34.078594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286884, 31.866219, 34.036079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205741, 0.459532, 0.864003,
		-0.152427, -0.857067, 0.492140,
		0.966663, -0.232951, -0.106289,
		32.576881, 31.796333, 34.004192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034092, 31.538820, 34.675377>,  <31.900219, 31.959398, 34.078594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034092, 31.538820, 34.675377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372612, 31.701363, 34.537590>,  <32.575722, 31.798887, 34.454918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372612, 31.701363, 34.537590>,  <32.034092, 31.538820, 34.675377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372612, 31.701363, 34.537590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187859, 0.377432, 0.906782,
		0.498489, -0.832117, 0.243082,
		0.846296, 0.406356, -0.344467,
		32.626499, 31.823269, 34.434250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668835, 31.282429, 35.119591>,  <32.034092, 31.538820, 34.675377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668835, 31.282429, 35.119591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764557, 31.625004, 34.936619>,  <32.821991, 31.830549, 34.826836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764557, 31.625004, 34.936619>,  <32.668835, 31.282429, 35.119591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764557, 31.625004, 34.936619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180634, 0.423627, 0.887643,
		0.953993, -0.295050, -0.053323,
		0.239310, 0.856438, -0.457434,
		32.836349, 31.881935, 34.799389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305004, 31.550522, 35.423218>,  <32.668835, 31.282429, 35.119591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305004, 31.550522, 35.423218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126488, 31.862753, 35.248165>,  <33.019379, 32.050091, 35.143131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126488, 31.862753, 35.248165>,  <33.305004, 31.550522, 35.423218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126488, 31.862753, 35.248165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176937, 0.556353, 0.811889,
		0.877221, 0.284906, -0.386409,
		-0.446292, 0.780576, -0.437635,
		32.992599, 32.096928, 35.116875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630970, 32.199055, 35.695080>,  <33.305004, 31.550522, 35.423218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630970, 32.199055, 35.695080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298763, 32.365986, 35.547520>,  <33.099442, 32.466145, 35.458984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298763, 32.365986, 35.547520>,  <33.630970, 32.199055, 35.695080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298763, 32.365986, 35.547520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059990, 0.725466, 0.685638,
		0.553757, 0.547302, -0.627545,
		-0.830514, 0.417324, -0.368900,
		33.049610, 32.491184, 35.436852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796009, 32.893105, 35.627293>,  <33.630970, 32.199055, 35.695080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796009, 32.893105, 35.627293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397175, 32.871040, 35.648365>,  <33.157875, 32.857800, 35.661007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397175, 32.871040, 35.648365>,  <33.796009, 32.893105, 35.627293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397175, 32.871040, 35.648365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012748, 0.801442, 0.597937,
		-0.075204, 0.595524, -0.799810,
		-0.997087, -0.055164, 0.052680,
		33.098049, 32.854492, 35.664169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557667, 33.585823, 35.510704>,  <33.796009, 32.893105, 35.627293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557667, 33.585823, 35.510704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226421, 33.428856, 35.670822>,  <33.027676, 33.334675, 35.766895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226421, 33.428856, 35.670822>,  <33.557667, 33.585823, 35.510704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226421, 33.428856, 35.670822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026481, 0.740693, 0.671321,
		-0.559936, 0.545330, -0.623769,
		-0.828113, -0.392414, 0.400300,
		32.977989, 33.311131, 35.790913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050102, 34.197350, 35.572990>,  <33.557667, 33.585823, 35.510704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050102, 34.197350, 35.572990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913799, 33.917152, 35.823811>,  <32.832016, 33.749035, 35.974304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913799, 33.917152, 35.823811>,  <33.050102, 34.197350, 35.572990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913799, 33.917152, 35.823811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190204, 0.704543, 0.683697,
		-0.920710, 0.113707, -0.373314,
		-0.340757, -0.700492, 0.627053,
		32.811573, 33.707005, 36.011925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466438, 34.419056, 35.800781>,  <33.050102, 34.197350, 35.572990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466438, 34.419056, 35.800781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560055, 34.135769, 36.067211>,  <32.616226, 33.965797, 36.227070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560055, 34.135769, 36.067211>,  <32.466438, 34.419056, 35.800781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560055, 34.135769, 36.067211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074979, 0.669911, 0.738646,
		-0.969332, -0.222814, 0.103685,
		0.234040, -0.708219, 0.666072,
		32.630268, 33.923302, 36.267033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053093, 34.557259, 36.265671>,  <32.466438, 34.419056, 35.800781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053093, 34.557259, 36.265671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320576, 34.340317, 36.469116>,  <32.481064, 34.210152, 36.591183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320576, 34.340317, 36.469116>,  <32.053093, 34.557259, 36.265671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320576, 34.340317, 36.469116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103585, 0.609431, 0.786043,
		-0.736276, -0.578317, 0.351351,
		0.668706, -0.542350, 0.508614,
		32.521187, 34.177612, 36.621700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711329, 34.451565, 36.926037>,  <32.053093, 34.557259, 36.265671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711329, 34.451565, 36.926037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099316, 34.388306, 36.999958>,  <32.332108, 34.350349, 37.044312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099316, 34.388306, 36.999958>,  <31.711329, 34.451565, 36.926037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099316, 34.388306, 36.999958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010490, 0.731868, 0.681365,
		-0.243004, -0.662841, 0.708230,
		0.969968, -0.158145, 0.184801,
		32.390305, 34.340862, 37.055397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800163, 34.418789, 37.670773>,  <31.711329, 34.451565, 36.926037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800163, 34.418789, 37.670773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158737, 34.506554, 37.516754>,  <32.373882, 34.559212, 37.424343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158737, 34.506554, 37.516754>,  <31.800163, 34.418789, 37.670773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158737, 34.506554, 37.516754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216818, 0.540621, 0.812846,
		0.386516, -0.812149, 0.437058,
		0.896435, 0.219415, -0.385048,
		32.427666, 34.572380, 37.401241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212448, 34.387669, 38.222897>,  <31.800163, 34.418789, 37.670773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212448, 34.387669, 38.222897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440636, 34.570435, 37.949902>,  <32.577549, 34.680096, 37.786102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440636, 34.570435, 37.949902>,  <32.212448, 34.387669, 38.222897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440636, 34.570435, 37.949902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363063, 0.605080, 0.708565,
		0.736715, -0.652001, 0.179290,
		0.570470, 0.456917, -0.682489,
		32.611778, 34.707508, 37.745155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936752, 34.217880, 38.413097>,  <32.212448, 34.387669, 38.222897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936752, 34.217880, 38.413097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919846, 34.569229, 38.222656>,  <32.909702, 34.780037, 38.108391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919846, 34.569229, 38.222656>,  <32.936752, 34.217880, 38.413097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919846, 34.569229, 38.222656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302466, 0.465418, 0.831806,
		0.952223, -0.108848, -0.285349,
		-0.042266, 0.878373, -0.476104,
		32.907166, 34.832741, 38.079826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383976, 34.579769, 38.744751>,  <32.936752, 34.217880, 38.413097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383976, 34.579769, 38.744751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243061, 34.887562, 38.531662>,  <33.158512, 35.072235, 38.403809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243061, 34.887562, 38.531662>,  <33.383976, 34.579769, 38.744751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243061, 34.887562, 38.531662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264778, 0.627909, 0.731863,
		0.897655, 0.116774, -0.424946,
		-0.352290, 0.769477, -0.532726,
		33.137375, 35.118404, 38.371845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918190, 35.104713, 38.741600>,  <33.383976, 34.579769, 38.744751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918190, 35.104713, 38.741600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569645, 35.296341, 38.699226>,  <33.360519, 35.411316, 38.673801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569645, 35.296341, 38.699226>,  <33.918190, 35.104713, 38.741600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569645, 35.296341, 38.699226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178218, 0.510208, 0.841384,
		0.457132, 0.714269, -0.529953,
		-0.871361, 0.479070, -0.105937,
		33.308235, 35.440063, 38.667446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025097, 35.890003, 38.901802>,  <33.918190, 35.104713, 38.741600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025097, 35.890003, 38.901802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642166, 35.794323, 38.966671>,  <33.412407, 35.736916, 39.005592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642166, 35.794323, 38.966671>,  <34.025097, 35.890003, 38.901802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642166, 35.794323, 38.966671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016022, 0.516374, 0.856213,
		-0.288550, 0.822278, -0.490508,
		-0.957331, -0.239201, 0.162174,
		33.354965, 35.722561, 39.015324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935291, 36.118675, 38.159355>,  <34.025097, 35.890003, 38.901802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935291, 36.118675, 38.159355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290508, 36.293373, 38.101902>,  <34.503639, 36.398193, 38.067429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290508, 36.293373, 38.101902>,  <33.935291, 36.118675, 38.159355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290508, 36.293373, 38.101902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283124, -0.765642, -0.577609,
		-0.362243, 0.472275, -0.803577,
		0.888043, 0.436747, -0.143636,
		34.556923, 36.424397, 38.058811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128483, 35.956043, 37.410446>,  <33.935291, 36.118675, 38.159355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128483, 35.956043, 37.410446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463886, 36.068501, 37.597149>,  <34.665127, 36.135975, 37.709171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463886, 36.068501, 37.597149>,  <34.128483, 35.956043, 37.410446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463886, 36.068501, 37.597149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478973, -0.788703, -0.385398,
		0.259784, 0.546725, -0.795992,
		0.838509, 0.281139, 0.466759,
		34.715439, 36.152843, 37.737175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701317, 36.190403, 36.912983>,  <34.128483, 35.956043, 37.410446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701317, 36.190403, 36.912983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898876, 36.093086, 37.246899>,  <35.017410, 36.034695, 37.447247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898876, 36.093086, 37.246899>,  <34.701317, 36.190403, 36.912983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898876, 36.093086, 37.246899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631621, -0.559435, -0.536737,
		0.597594, 0.792364, -0.122636,
		0.493899, -0.243291, 0.834790,
		35.047047, 36.020100, 37.497337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444424, 36.273357, 36.854263>,  <34.701317, 36.190403, 36.912983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444424, 36.273357, 36.854263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401966, 35.994629, 37.138000>,  <35.376492, 35.827393, 37.308243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401966, 35.994629, 37.138000>,  <35.444424, 36.273357, 36.854263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401966, 35.994629, 37.138000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661200, -0.582268, -0.473052,
		0.742664, 0.418811, 0.522540,
		-0.106139, -0.696822, 0.709347,
		35.370125, 35.785583, 37.350803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106018, 35.922100, 36.768219>,  <35.444424, 36.273357, 36.854263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106018, 35.922100, 36.768219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878235, 35.683815, 36.994793>,  <35.741566, 35.540844, 37.130737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878235, 35.683815, 36.994793>,  <36.106018, 35.922100, 36.768219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878235, 35.683815, 36.994793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487550, -0.799555, -0.350723,
		0.661825, 0.076444, 0.745750,
		-0.569458, -0.595708, 0.566436,
		35.707397, 35.505104, 37.164722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502796, 35.420063, 36.740540>,  <36.106018, 35.922100, 36.768219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502796, 35.420063, 36.740540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175026, 35.251396, 36.895840>,  <35.978363, 35.150196, 36.989017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175026, 35.251396, 36.895840>,  <36.502796, 35.420063, 36.740540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175026, 35.251396, 36.895840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288577, -0.888742, -0.356175,
		0.495239, -0.179820, 0.849943,
		-0.819428, -0.421665, 0.388247,
		35.929199, 35.124897, 37.012314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692127, 34.804199, 36.955143>,  <36.502796, 35.420063, 36.740540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692127, 34.804199, 36.955143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294334, 34.764332, 36.942024>,  <36.055660, 34.740410, 36.934151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294334, 34.764332, 36.942024>,  <36.692127, 34.804199, 36.955143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294334, 34.764332, 36.942024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103721, -0.886551, -0.450854,
		0.015858, -0.451767, 0.891995,
		-0.994480, -0.099668, -0.032799,
		35.995991, 34.734432, 36.932186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576763, 34.083397, 37.169567>,  <36.692127, 34.804199, 36.955143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576763, 34.083397, 37.169567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275719, 34.235725, 36.954700>,  <36.095093, 34.327122, 36.825779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275719, 34.235725, 36.954700>,  <36.576763, 34.083397, 37.169567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275719, 34.235725, 36.954700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077329, -0.759029, -0.646449,
		-0.653909, -0.528063, 0.541804,
		-0.752610, 0.380822, -0.537171,
		36.049934, 34.349972, 36.793549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191570, 33.539219, 36.968666>,  <36.576763, 34.083397, 37.169567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191570, 33.539219, 36.968666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058983, 33.803032, 36.698807>,  <35.979431, 33.961319, 36.536892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058983, 33.803032, 36.698807>,  <36.191570, 33.539219, 36.968666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058983, 33.803032, 36.698807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001762, -0.715506, -0.698604,
		-0.943465, -0.230376, 0.238329,
		-0.331468, 0.659529, -0.674649,
		35.959541, 34.000889, 36.496410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723000, 33.167377, 36.603016>,  <36.191570, 33.539219, 36.968666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723000, 33.167377, 36.603016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773636, 33.505409, 36.395237>,  <35.804016, 33.708229, 36.270569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773636, 33.505409, 36.395237>,  <35.723000, 33.167377, 36.603016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773636, 33.505409, 36.395237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029332, -0.520239, -0.853517,
		-0.991522, 0.123280, -0.041067,
		0.126586, 0.845076, -0.519444,
		35.811611, 33.758934, 36.239403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216255, 33.285603, 36.197998>,  <35.723000, 33.167377, 36.603016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216255, 33.285603, 36.197998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523880, 33.477787, 36.029377>,  <35.708454, 33.593098, 35.928204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523880, 33.477787, 36.029377>,  <35.216255, 33.285603, 36.197998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523880, 33.477787, 36.029377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148770, -0.506858, -0.849095,
		-0.621626, 0.715717, -0.318324,
		0.769057, 0.480462, -0.421553,
		35.754597, 33.621925, 35.902912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013523, 33.338768, 35.504452>,  <35.216255, 33.285603, 36.197998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013523, 33.338768, 35.504452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404537, 33.415970, 35.470585>,  <35.639145, 33.462292, 35.450264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404537, 33.415970, 35.470585>,  <35.013523, 33.338768, 35.504452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404537, 33.415970, 35.470585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029478, -0.272557, -0.961688,
		-0.208689, 0.942582, -0.260745,
		0.977538, 0.193007, -0.084665,
		35.697800, 33.473873, 35.445187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093983, 33.901085, 35.086643>,  <35.013523, 33.338768, 35.504452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093983, 33.901085, 35.086643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446735, 33.714035, 35.062595>,  <35.658386, 33.601807, 35.048168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446735, 33.714035, 35.062595>,  <35.093983, 33.901085, 35.086643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446735, 33.714035, 35.062595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243326, -0.342203, -0.907573,
		0.403828, 0.815001, -0.415567,
		0.881882, -0.467622, -0.060120,
		35.711300, 33.573750, 35.044559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455906, 34.122189, 34.415543>,  <35.093983, 33.901085, 35.086643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455906, 34.122189, 34.415543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618118, 33.772354, 34.521854>,  <35.715446, 33.562454, 34.585640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618118, 33.772354, 34.521854>,  <35.455906, 34.122189, 34.415543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618118, 33.772354, 34.521854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038003, -0.306643, -0.951066,
		0.913290, 0.375588, -0.157591,
		0.405533, -0.874588, 0.265781,
		35.739777, 33.509979, 34.601589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009090, 34.042328, 33.992607>,  <35.455906, 34.122189, 34.415543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009090, 34.042328, 33.992607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928741, 33.681602, 34.145653>,  <35.880531, 33.465168, 34.237480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928741, 33.681602, 34.145653>,  <36.009090, 34.042328, 33.992607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928741, 33.681602, 34.145653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044377, -0.398549, -0.916073,
		0.978612, -0.167032, 0.120076,
		-0.200869, -0.901809, 0.382613,
		35.868481, 33.411060, 34.260437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424973, 33.570148, 33.561180>,  <36.009090, 34.042328, 33.992607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424973, 33.570148, 33.561180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164375, 33.323502, 33.737968>,  <36.008018, 33.175514, 33.844044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164375, 33.323502, 33.737968>,  <36.424973, 33.570148, 33.561180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164375, 33.323502, 33.737968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013101, -0.573348, -0.819207,
		0.758541, -0.539499, 0.365455,
		-0.651494, -0.616615, 0.441975,
		35.968925, 33.138515, 33.870560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602798, 32.877125, 33.418015>,  <36.424973, 33.570148, 33.561180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602798, 32.877125, 33.418015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209484, 32.868031, 33.490273>,  <35.973495, 32.862576, 33.533627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209484, 32.868031, 33.490273>,  <36.602798, 32.877125, 33.418015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209484, 32.868031, 33.490273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146421, -0.490958, -0.858791,
		0.108212, -0.870887, 0.479423,
		-0.983286, -0.022734, 0.180643,
		35.914497, 32.861210, 33.544464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410065, 32.167088, 33.294899>,  <36.602798, 32.877125, 33.418015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410065, 32.167088, 33.294899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090870, 32.406792, 33.269276>,  <35.899353, 32.550613, 33.253902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090870, 32.406792, 33.269276>,  <36.410065, 32.167088, 33.294899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090870, 32.406792, 33.269276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259799, -0.437951, -0.860641,
		-0.543804, -0.670137, 0.505166,
		-0.797986, 0.599262, -0.064058,
		35.851475, 32.586571, 33.250057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856789, 31.675056, 33.168114>,  <36.410065, 32.167088, 33.294899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856789, 31.675056, 33.168114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729862, 32.032982, 33.042500>,  <35.653706, 32.247738, 32.967133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729862, 32.032982, 33.042500>,  <35.856789, 31.675056, 33.168114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729862, 32.032982, 33.042500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393498, -0.425531, -0.814913,
		-0.862828, -0.135012, 0.487135,
		-0.317314, 0.894816, -0.314033,
		35.634666, 32.301426, 32.948288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172806, 31.578997, 32.879536>,  <35.856789, 31.675056, 33.168114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172806, 31.578997, 32.879536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289394, 31.931671, 32.731117>,  <35.359348, 32.143276, 32.642067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289394, 31.931671, 32.731117>,  <35.172806, 31.578997, 32.879536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289394, 31.931671, 32.731117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300464, -0.283873, -0.910570,
		-0.908167, 0.376889, 0.182175,
		0.291470, 0.881686, -0.371045,
		35.376835, 32.196178, 32.619804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640705, 31.732897, 32.254833>,  <35.172806, 31.578997, 32.879536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640705, 31.732897, 32.254833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939335, 31.995098, 32.209328>,  <35.118511, 32.152420, 32.182026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939335, 31.995098, 32.209328>,  <34.640705, 31.732897, 32.254833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939335, 31.995098, 32.209328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159671, 0.010539, -0.987114,
		-0.645860, 0.755117, 0.112533,
		0.746573, 0.655505, -0.113763,
		35.163307, 32.191750, 32.175198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393028, 32.362644, 31.919317>,  <34.640705, 31.732897, 32.254833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393028, 32.362644, 31.919317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778435, 32.310604, 31.825754>,  <35.009678, 32.279381, 31.769617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778435, 32.310604, 31.825754>,  <34.393028, 32.362644, 31.919317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778435, 32.310604, 31.825754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231952, 0.030194, -0.972258,
		0.133550, 0.991042, -0.001084,
		0.963516, -0.130096, -0.233907,
		35.067490, 32.271576, 31.755583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439857, 32.654587, 31.217291>,  <34.393028, 32.362644, 31.919317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439857, 32.654587, 31.217291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792744, 32.467594, 31.239779>,  <35.004475, 32.355400, 31.253271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792744, 32.467594, 31.239779>,  <34.439857, 32.654587, 31.217291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792744, 32.467594, 31.239779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001201, -0.117168, -0.993111,
		0.470846, 0.876205, -0.102806,
		0.882215, -0.467479, 0.056220,
		35.057407, 32.327351, 31.256645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812229, 32.965256, 30.608620>,  <34.439857, 32.654587, 31.217291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812229, 32.965256, 30.608620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967331, 32.604309, 30.683857>,  <35.060394, 32.387741, 30.728998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967331, 32.604309, 30.683857>,  <34.812229, 32.965256, 30.608620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967331, 32.604309, 30.683857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039468, -0.220123, -0.974673,
		0.920915, 0.370514, -0.120969,
		0.387759, -0.902366, 0.188091,
		35.083660, 32.333599, 30.740284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469337, 32.832218, 30.087139>,  <34.812229, 32.965256, 30.608620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469337, 32.832218, 30.087139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324512, 32.490650, 30.236660>,  <35.237617, 32.285709, 30.326372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324512, 32.490650, 30.236660>,  <35.469337, 32.832218, 30.087139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324512, 32.490650, 30.236660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005328, -0.399107, -0.916889,
		0.932139, -0.333962, 0.139952,
		-0.362062, -0.853922, 0.373803,
		35.215893, 32.234474, 30.348801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770237, 32.381092, 29.665710>,  <35.469337, 32.832218, 30.087139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770237, 32.381092, 29.665710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525211, 32.120380, 29.844572>,  <35.378197, 31.963953, 29.951889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525211, 32.120380, 29.844572>,  <35.770237, 32.381092, 29.665710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525211, 32.120380, 29.844572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079197, -0.613480, -0.785729,
		0.786445, -0.445894, 0.427414,
		-0.612562, -0.651782, 0.447155,
		35.341442, 31.924847, 29.978718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142639, 31.725327, 29.616861>,  <35.770237, 32.381092, 29.665710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142639, 31.725327, 29.616861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753963, 31.638750, 29.654736>,  <35.520756, 31.586805, 29.677460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753963, 31.638750, 29.654736>,  <36.142639, 31.725327, 29.616861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753963, 31.638750, 29.654736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059789, -0.613044, -0.787783,
		0.228553, -0.759823, 0.608632,
		-0.971693, -0.216440, 0.094684,
		35.462456, 31.573818, 29.683140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112839, 30.985773, 29.647821>,  <36.142639, 31.725327, 29.616861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112839, 30.985773, 29.647821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748329, 31.109081, 29.538612>,  <35.529621, 31.183067, 29.473087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748329, 31.109081, 29.538612>,  <36.112839, 30.985773, 29.647821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748329, 31.109081, 29.538612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067731, -0.766185, -0.639040,
		-0.406183, -0.563851, 0.719087,
		-0.911278, 0.308272, -0.273022,
		35.474945, 31.201563, 29.456705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603546, 30.381418, 29.751537>,  <36.112839, 30.985773, 29.647821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603546, 30.381418, 29.751537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456886, 30.636267, 29.480349>,  <35.368889, 30.789177, 29.317636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456886, 30.636267, 29.480349>,  <35.603546, 30.381418, 29.751537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456886, 30.636267, 29.480349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288021, -0.770651, -0.568455,
		-0.884653, -0.013155, 0.466064,
		-0.366651, 0.637122, -0.677969,
		35.346889, 30.827404, 29.276958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946594, 29.976261, 29.505611>,  <35.603546, 30.381418, 29.751537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946594, 29.976261, 29.505611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027317, 30.283680, 29.262758>,  <35.075752, 30.468132, 29.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027317, 30.283680, 29.262758>,  <34.946594, 29.976261, 29.505611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027317, 30.283680, 29.262758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012628, -0.621877, -0.783013,
		-0.979344, 0.150350, -0.135204,
		0.201807, 0.768546, -0.607133,
		35.087860, 30.514244, 29.080618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498451, 29.915041, 28.955885>,  <34.946594, 29.976261, 29.505611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498451, 29.915041, 28.955885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803719, 30.135424, 28.820816>,  <34.986877, 30.267654, 28.739775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803719, 30.135424, 28.820816>,  <34.498451, 29.915041, 28.955885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803719, 30.135424, 28.820816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029059, -0.492760, -0.869680,
		-0.645549, 0.673522, -0.360047,
		0.763165, 0.550959, -0.337673,
		35.032669, 30.300711, 28.719515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310070, 30.056305, 28.256199>,  <34.498451, 29.915041, 28.955885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310070, 30.056305, 28.256199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707214, 30.101942, 28.270077>,  <34.945503, 30.129324, 28.278404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707214, 30.101942, 28.270077>,  <34.310070, 30.056305, 28.256199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707214, 30.101942, 28.270077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096361, -0.596191, -0.797039,
		-0.070251, 0.794695, -0.602931,
		0.992864, 0.114092, 0.034695,
		35.005074, 30.136169, 28.280485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478661, 29.889025, 27.618132>,  <34.310070, 30.056305, 28.256199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478661, 29.889025, 27.618132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837955, 29.897875, 27.793709>,  <35.053532, 29.903185, 27.899055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837955, 29.897875, 27.793709>,  <34.478661, 29.889025, 27.618132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837955, 29.897875, 27.793709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350396, -0.638928, -0.684831,
		0.265301, 0.768948, -0.581665,
		0.898242, 0.022127, 0.438945,
		35.107430, 29.904512, 27.925392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010300, 30.098129, 27.061047>,  <34.478661, 29.889025, 27.618132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010300, 30.098129, 27.061047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197037, 29.909157, 27.360075>,  <35.309078, 29.795774, 27.539492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197037, 29.909157, 27.360075>,  <35.010300, 30.098129, 27.061047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197037, 29.909157, 27.360075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427736, -0.619257, -0.658454,
		0.774013, 0.627161, -0.087023,
		0.466846, -0.472429, 0.747573,
		35.337090, 29.767427, 27.584347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656952, 30.020712, 26.869497>,  <35.010300, 30.098129, 27.061047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656952, 30.020712, 26.869497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615158, 29.746752, 27.157940>,  <35.590084, 29.582376, 27.331005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615158, 29.746752, 27.157940>,  <35.656952, 30.020712, 26.869497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615158, 29.746752, 27.157940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315689, -0.710416, -0.629006,
		0.943093, 0.161926, 0.290441,
		-0.104482, -0.684900, 0.721107,
		35.583813, 29.541281, 27.374271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172070, 29.610294, 26.893881>,  <35.656952, 30.020712, 26.869497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172070, 29.610294, 26.893881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922882, 29.365910, 27.089283>,  <35.773369, 29.219278, 27.206524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922882, 29.365910, 27.089283>,  <36.172070, 29.610294, 26.893881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922882, 29.365910, 27.089283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313872, -0.767243, -0.559305,
		0.716518, -0.195099, 0.669730,
		-0.622966, -0.610962, 0.488507,
		35.735992, 29.182621, 27.235834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585445, 29.212000, 27.350836>,  <36.172070, 29.610294, 26.893881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585445, 29.212000, 27.350836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246822, 29.004448, 27.303326>,  <36.043648, 28.879917, 27.274820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246822, 29.004448, 27.303326>,  <36.585445, 29.212000, 27.350836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246822, 29.004448, 27.303326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519825, -0.757848, -0.394269,
		0.114566, -0.395512, 0.911287,
		-0.846556, -0.518880, -0.118773,
		35.992855, 28.848783, 27.267694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751656, 28.588562, 27.353853>,  <36.585445, 29.212000, 27.350836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751656, 28.588562, 27.353853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387035, 28.513437, 27.207533>,  <36.168262, 28.468363, 27.119741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387035, 28.513437, 27.207533>,  <36.751656, 28.588562, 27.353853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387035, 28.513437, 27.207533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388506, -0.684798, -0.616535,
		-0.134708, -0.704116, 0.697190,
		-0.911546, -0.187811, -0.365801,
		36.113571, 28.457094, 27.097792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179829, 28.656940, 26.812481>,  <36.751656, 28.588562, 27.353853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179829, 28.656940, 26.812481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571583, 28.577375, 26.798456>,  <37.806637, 28.529636, 26.790041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571583, 28.577375, 26.798456>,  <37.179829, 28.656940, 26.812481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571583, 28.577375, 26.798456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172686, 0.734602, 0.656154,
		-0.104762, -0.648686, 0.753812,
		0.979390, -0.198913, -0.035061,
		37.865398, 28.517702, 26.787937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550274, 28.508310, 27.492432>,  <37.179829, 28.656940, 26.812481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550274, 28.508310, 27.492432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820347, 28.664587, 27.242155>,  <37.982391, 28.758354, 27.091990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820347, 28.664587, 27.242155>,  <37.550274, 28.508310, 27.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820347, 28.664587, 27.242155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242198, 0.683778, 0.688322,
		0.696760, -0.616281, 0.367046,
		0.675178, 0.390697, -0.625692,
		38.022903, 28.781796, 27.054449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973698, 28.720263, 27.934835>,  <37.550274, 28.508310, 27.492432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973698, 28.720263, 27.934835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107445, 28.907206, 27.607475>,  <38.187691, 29.019371, 27.411058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107445, 28.907206, 27.607475>,  <37.973698, 28.720263, 27.934835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107445, 28.907206, 27.607475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341849, 0.749096, 0.567445,
		0.878259, -0.469503, 0.090707,
		0.334365, 0.467356, -0.818400,
		38.207756, 29.047413, 27.361956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631664, 28.907288, 28.115097>,  <37.973698, 28.720263, 27.934835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631664, 28.907288, 28.115097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504951, 29.141197, 27.816383>,  <38.428925, 29.281544, 27.637156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504951, 29.141197, 27.816383>,  <38.631664, 28.907288, 28.115097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504951, 29.141197, 27.816383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382943, 0.799163, 0.463350,
		0.867758, -0.139195, -0.477096,
		-0.316781, 0.584776, -0.746784,
		38.409916, 29.316629, 27.592348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209755, 29.274229, 27.960333>,  <38.631664, 28.907288, 28.115097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209755, 29.274229, 27.960333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916557, 29.504313, 27.815088>,  <38.740639, 29.642363, 27.727942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916557, 29.504313, 27.815088>,  <39.209755, 29.274229, 27.960333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916557, 29.504313, 27.815088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402783, 0.797182, 0.449741,
		0.548161, 0.183403, -0.816017,
		-0.732997, 0.575208, -0.363112,
		38.696659, 29.676874, 27.706154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580891, 29.871763, 27.698195>,  <39.209755, 29.274229, 27.960333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580891, 29.871763, 27.698195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194588, 29.964554, 27.744686>,  <38.962807, 30.020227, 27.772581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194588, 29.964554, 27.744686>,  <39.580891, 29.871763, 27.698195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194588, 29.964554, 27.744686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259449, 0.868135, 0.423117,
		-0.002751, 0.438782, -0.898589,
		-0.965753, 0.231974, 0.116230,
		38.904861, 30.034145, 27.779554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491791, 30.648914, 27.492922>,  <39.580891, 29.871763, 27.698195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491791, 30.648914, 27.492922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197433, 30.549305, 27.744776>,  <39.020817, 30.489540, 27.895889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197433, 30.549305, 27.744776>,  <39.491791, 30.648914, 27.492922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197433, 30.549305, 27.744776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261093, 0.753629, 0.603220,
		-0.624728, 0.608302, -0.489575,
		-0.735898, -0.249024, 0.629636,
		38.976665, 30.474598, 27.933666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203144, 31.281658, 27.724657>,  <39.491791, 30.648914, 27.492922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203144, 31.281658, 27.724657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012058, 31.036541, 27.976458>,  <38.897408, 30.889471, 28.127539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012058, 31.036541, 27.976458>,  <39.203144, 31.281658, 27.724657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012058, 31.036541, 27.976458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025486, 0.725920, 0.687307,
		-0.878145, 0.312294, -0.362401,
		-0.477716, -0.612791, 0.629503,
		38.868744, 30.852703, 28.165308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603249, 31.692749, 28.108309>,  <39.203144, 31.281658, 27.724657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603249, 31.692749, 28.108309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610901, 31.388905, 28.368347>,  <38.615490, 31.206598, 28.524370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610901, 31.388905, 28.368347>,  <38.603249, 31.692749, 28.108309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610901, 31.388905, 28.368347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083158, 0.646754, 0.758151,
		-0.996353, -0.068563, -0.050796,
		0.019129, -0.759610, 0.650097,
		38.616638, 31.161022, 28.563375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960556, 31.612690, 28.593565>,  <38.603249, 31.692749, 28.108309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960556, 31.612690, 28.593565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273361, 31.442375, 28.775621>,  <38.461044, 31.340185, 28.884855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273361, 31.442375, 28.775621>,  <37.960556, 31.612690, 28.593565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273361, 31.442375, 28.775621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145869, 0.584944, 0.797849,
		-0.605948, -0.690322, 0.395326,
		0.782016, -0.425789, 0.455142,
		38.507965, 31.314638, 28.912165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743317, 31.671339, 29.185133>,  <37.960556, 31.612690, 28.593565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743317, 31.671339, 29.185133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132313, 31.613327, 29.258043>,  <38.365711, 31.578520, 29.301790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132313, 31.613327, 29.258043>,  <37.743317, 31.671339, 29.185133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132313, 31.613327, 29.258043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103594, 0.431597, 0.896098,
		-0.208630, -0.890332, 0.404701,
		0.972492, -0.145028, 0.182277,
		38.424061, 31.569818, 29.312727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836727, 31.469408, 29.893436>,  <37.743317, 31.671339, 29.185133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836727, 31.469408, 29.893436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202648, 31.608521, 29.811287>,  <38.422203, 31.691988, 29.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202648, 31.608521, 29.811287>,  <37.836727, 31.469408, 29.893436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202648, 31.608521, 29.811287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041994, 0.423824, 0.904771,
		0.401695, -0.836318, 0.373114,
		0.914810, 0.347773, -0.205369,
		38.477089, 31.712854, 29.749676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301933, 31.234625, 30.369108>,  <37.836727, 31.469408, 29.893436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301933, 31.234625, 30.369108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443775, 31.578241, 30.221432>,  <38.528881, 31.784410, 30.132826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443775, 31.578241, 30.221432>,  <38.301933, 31.234625, 30.369108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443775, 31.578241, 30.221432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097927, 0.426802, 0.899028,
		0.929874, -0.282645, 0.235469,
		0.354604, 0.859042, -0.369193,
		38.550156, 31.835955, 30.110674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866337, 31.410688, 30.745989>,  <38.301933, 31.234625, 30.369108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866337, 31.410688, 30.745989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725204, 31.744368, 30.576460>,  <38.640526, 31.944574, 30.474743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725204, 31.744368, 30.576460>,  <38.866337, 31.410688, 30.745989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725204, 31.744368, 30.576460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072118, 0.475850, 0.876565,
		0.932904, 0.278714, -0.228055,
		-0.352830, 0.834198, -0.423822,
		38.619354, 31.994627, 30.449314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225197, 31.943048, 31.095366>,  <38.866337, 31.410688, 30.745989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225197, 31.943048, 31.095366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916359, 32.104332, 30.898880>,  <38.731056, 32.201103, 30.780989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916359, 32.104332, 30.898880>,  <39.225197, 31.943048, 31.095366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916359, 32.104332, 30.898880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136808, 0.649370, 0.748066,
		0.620606, 0.644780, -0.446213,
		-0.772095, 0.403209, -0.491214,
		38.684731, 32.225296, 30.751516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344826, 32.670795, 31.280897>,  <39.225197, 31.943048, 31.095366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344826, 32.670795, 31.280897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965111, 32.630169, 31.161880>,  <38.737282, 32.605793, 31.090471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965111, 32.630169, 31.161880>,  <39.344826, 32.670795, 31.280897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965111, 32.630169, 31.161880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312169, 0.416992, 0.853620,
		0.037372, 0.903217, -0.427553,
		-0.949291, -0.101568, -0.297541,
		38.680325, 32.599697, 31.072618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056213, 33.273216, 31.406340>,  <39.344826, 32.670795, 31.280897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056213, 33.273216, 31.406340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737633, 33.032352, 31.384165>,  <38.546486, 32.887836, 31.370859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737633, 33.032352, 31.384165>,  <39.056213, 33.273216, 31.406340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737633, 33.032352, 31.384165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445957, 0.522975, 0.726374,
		-0.408398, 0.603244, -0.685060,
		-0.796450, -0.602157, -0.055439,
		38.498699, 32.851704, 31.367533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403866, 33.702152, 31.446415>,  <39.056213, 33.273216, 31.406340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403866, 33.702152, 31.446415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308422, 33.335518, 31.574749>,  <38.251156, 33.115536, 31.651751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308422, 33.335518, 31.574749>,  <38.403866, 33.702152, 31.446415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308422, 33.335518, 31.574749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310433, 0.385037, 0.869125,
		-0.920161, 0.107784, -0.376412,
		-0.238611, -0.916586, 0.320836,
		38.236839, 33.060543, 31.671000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812038, 33.819351, 31.864731>,  <38.403866, 33.702152, 31.446415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812038, 33.819351, 31.864731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960110, 33.462376, 31.967894>,  <38.048954, 33.248188, 32.029793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960110, 33.462376, 31.967894>,  <37.812038, 33.819351, 31.864731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960110, 33.462376, 31.967894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321170, 0.137560, 0.936978,
		-0.871675, -0.429682, -0.235703,
		0.370179, -0.892441, 0.257909,
		38.071163, 33.194645, 32.045265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404888, 33.532784, 32.468670>,  <37.812038, 33.819351, 31.864731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404888, 33.532784, 32.468670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748764, 33.330296, 32.496029>,  <37.955090, 33.208805, 32.512444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748764, 33.330296, 32.496029>,  <37.404888, 33.532784, 32.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748764, 33.330296, 32.496029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064073, 0.025974, 0.997607,
		-0.506781, -0.862015, -0.010105,
		0.859690, -0.506216, 0.068395,
		38.006672, 33.178432, 32.516548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304585, 32.923141, 32.909119>,  <37.404888, 33.532784, 32.468670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304585, 32.923141, 32.909119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695580, 33.007458, 32.905441>,  <37.930176, 33.058048, 32.903236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695580, 33.007458, 32.905441>,  <37.304585, 32.923141, 32.909119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695580, 33.007458, 32.905441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000585, 0.040859, 0.999165,
		0.210993, -0.976676, 0.039816,
		0.977488, 0.210793, -0.009192,
		37.988827, 33.070694, 32.902683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584843, 32.510406, 33.525486>,  <37.304585, 32.923141, 32.909119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584843, 32.510406, 33.525486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845882, 32.799915, 33.435799>,  <38.002506, 32.973621, 33.381985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845882, 32.799915, 33.435799>,  <37.584843, 32.510406, 33.525486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845882, 32.799915, 33.435799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224538, 0.097896, 0.969536,
		0.723673, -0.683059, -0.098628,
		0.652594, 0.723773, -0.224218,
		38.041660, 33.017048, 33.368534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202946, 32.394127, 33.941376>,  <37.584843, 32.510406, 33.525486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202946, 32.394127, 33.941376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230541, 32.783321, 33.853249>,  <38.247097, 33.016838, 33.800373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230541, 32.783321, 33.853249>,  <38.202946, 32.394127, 33.941376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230541, 32.783321, 33.853249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145386, 0.208676, 0.967118,
		0.986967, -0.098750, -0.127062,
		0.068988, 0.972986, -0.220313,
		38.251236, 33.075218, 33.787155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833321, 32.633591, 34.269772>,  <38.202946, 32.394127, 33.941376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833321, 32.633591, 34.269772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604195, 32.953453, 34.197735>,  <38.466721, 33.145370, 34.154510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604195, 32.953453, 34.197735>,  <38.833321, 32.633591, 34.269772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604195, 32.953453, 34.197735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168199, 0.329708, 0.928979,
		0.802243, 0.501840, -0.323363,
		-0.572814, 0.799656, -0.180096,
		38.432350, 33.193348, 34.143707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154907, 33.087120, 34.650452>,  <38.833321, 32.633591, 34.269772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154907, 33.087120, 34.650452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822842, 33.297096, 34.575333>,  <38.623604, 33.423080, 34.530262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822842, 33.297096, 34.575333>,  <39.154907, 33.087120, 34.650452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822842, 33.297096, 34.575333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092404, 0.461737, 0.882191,
		0.549813, 0.715007, -0.431823,
		-0.830161, 0.524942, -0.187799,
		38.573792, 33.454578, 34.518993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216099, 33.847923, 34.854198>,  <39.154907, 33.087120, 34.650452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216099, 33.847923, 34.854198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823353, 33.772823, 34.864738>,  <38.587704, 33.727764, 34.871063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823353, 33.772823, 34.864738>,  <39.216099, 33.847923, 34.854198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823353, 33.772823, 34.864738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078771, 0.530416, 0.844070,
		-0.172449, 0.826686, -0.535585,
		-0.981864, -0.187748, 0.026351,
		38.528793, 33.716499, 34.872643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136150, 34.551071, 35.055622>,  <39.216099, 33.847923, 34.854198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136150, 34.551071, 35.055622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816898, 34.317764, 35.115990>,  <38.625347, 34.177780, 35.152210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816898, 34.317764, 35.115990>,  <39.136150, 34.551071, 35.055622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816898, 34.317764, 35.115990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091423, 0.364841, 0.926571,
		-0.595502, 0.725731, -0.344517,
		-0.798135, -0.583272, 0.150915,
		38.577457, 34.142784, 35.161263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594017, 34.969254, 35.306793>,  <39.136150, 34.551071, 35.055622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594017, 34.969254, 35.306793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507259, 34.596653, 35.423592>,  <38.455204, 34.373093, 35.493671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507259, 34.596653, 35.423592>,  <38.594017, 34.969254, 35.306793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507259, 34.596653, 35.423592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177845, 0.331819, 0.926427,
		-0.959858, 0.149006, -0.237633,
		-0.216895, -0.931501, 0.291999,
		38.442192, 34.317204, 35.511192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870632, 34.964199, 35.625004>,  <38.594017, 34.969254, 35.306793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870632, 34.964199, 35.625004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088562, 34.659187, 35.764561>,  <38.219318, 34.476181, 35.848293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088562, 34.659187, 35.764561>,  <37.870632, 34.964199, 35.625004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088562, 34.659187, 35.764561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291391, 0.217978, 0.931438,
		-0.786295, -0.609131, -0.103434,
		0.544822, -0.762525, 0.348891,
		38.252010, 34.430431, 35.869228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485367, 34.642731, 36.197014>,  <37.870632, 34.964199, 35.625004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485367, 34.642731, 36.197014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857410, 34.511566, 36.263199>,  <38.080635, 34.432869, 36.302910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857410, 34.511566, 36.263199>,  <37.485367, 34.642731, 36.197014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857410, 34.511566, 36.263199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054252, 0.322893, 0.944879,
		-0.363263, -0.887814, 0.282535,
		0.930106, -0.327911, 0.165461,
		38.136444, 34.413193, 36.312836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467041, 34.474419, 36.905949>,  <37.485367, 34.642731, 36.197014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467041, 34.474419, 36.905949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857170, 34.504215, 36.822815>,  <38.091248, 34.522095, 36.772934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857170, 34.504215, 36.822815>,  <37.467041, 34.474419, 36.905949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857170, 34.504215, 36.822815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167474, 0.363804, 0.916297,
		0.143868, -0.928492, 0.342351,
		0.975323, 0.074491, -0.207838,
		38.149765, 34.526562, 36.760464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762936, 34.096146, 37.371128>,  <37.467041, 34.474419, 36.905949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762936, 34.096146, 37.371128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075668, 34.319439, 37.260048>,  <38.263306, 34.453415, 37.193401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075668, 34.319439, 37.260048>,  <37.762936, 34.096146, 37.371128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075668, 34.319439, 37.260048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276061, 0.089420, 0.956972,
		0.559048, -0.824849, -0.084196,
		0.781828, 0.558236, -0.277698,
		38.310219, 34.486908, 37.176739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384216, 33.930553, 37.758766>,  <37.762936, 34.096146, 37.371128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384216, 33.930553, 37.758766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477768, 34.300240, 37.638020>,  <38.533897, 34.522053, 37.565571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477768, 34.300240, 37.638020>,  <38.384216, 33.930553, 37.758766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477768, 34.300240, 37.638020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520581, 0.143185, 0.841721,
		0.821156, -0.354002, -0.447644,
		0.233875, 0.924219, -0.301864,
		38.547932, 34.577507, 37.547459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014515, 33.990585, 38.039242>,  <38.384216, 33.930553, 37.758766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014515, 33.990585, 38.039242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875767, 34.359512, 37.971115>,  <38.792519, 34.580868, 37.930241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875767, 34.359512, 37.971115>,  <39.014515, 33.990585, 38.039242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875767, 34.359512, 37.971115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420910, 0.315354, 0.850522,
		0.838163, 0.223333, -0.497600,
		-0.346869, 0.922320, -0.170315,
		38.771706, 34.636208, 37.920021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564827, 34.363186, 38.096924>,  <39.014515, 33.990585, 38.039242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564827, 34.363186, 38.096924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271301, 34.633541, 38.124298>,  <39.095184, 34.795753, 38.140720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271301, 34.633541, 38.124298>,  <39.564827, 34.363186, 38.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271301, 34.633541, 38.124298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443658, 0.400506, 0.801725,
		0.514471, 0.618680, -0.593763,
		-0.733817, 0.675892, 0.068434,
		39.051155, 34.836308, 38.144829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881550, 34.907948, 38.237129>,  <39.564827, 34.363186, 38.096924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881550, 34.907948, 38.237129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524551, 35.021530, 38.377316>,  <39.310352, 35.089680, 38.461426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524551, 35.021530, 38.377316>,  <39.881550, 34.907948, 38.237129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524551, 35.021530, 38.377316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421031, 0.245672, 0.873143,
		0.161833, 0.926831, -0.338814,
		-0.892493, 0.283954, 0.350466,
		39.256805, 35.106716, 38.482456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933506, 35.641579, 38.503437>,  <39.881550, 34.907948, 38.237129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933506, 35.641579, 38.503437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600475, 35.480053, 38.655098>,  <39.400658, 35.383137, 38.746094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600475, 35.480053, 38.655098>,  <39.933506, 35.641579, 38.503437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600475, 35.480053, 38.655098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293363, 0.259151, 0.920206,
		-0.469845, 0.877370, -0.097300,
		-0.832577, -0.403810, 0.379149,
		39.350704, 35.358910, 38.768841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637505, 36.093689, 38.979340>,  <39.933506, 35.641579, 38.503437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637505, 36.093689, 38.979340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507774, 35.727158, 39.073277>,  <39.429935, 35.507240, 39.129639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507774, 35.727158, 39.073277>,  <39.637505, 36.093689, 38.979340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507774, 35.727158, 39.073277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208917, 0.172750, 0.962555,
		-0.922587, 0.361246, 0.135409,
		-0.324327, -0.916329, 0.234847,
		39.410477, 35.452259, 39.143730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224899, 36.156078, 39.556362>,  <39.637505, 36.093689, 38.979340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224899, 36.156078, 39.556362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322838, 35.770172, 39.594902>,  <39.381599, 35.538628, 39.618027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322838, 35.770172, 39.594902>,  <39.224899, 36.156078, 39.556362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322838, 35.770172, 39.594902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180613, 0.143018, 0.973101,
		-0.952591, -0.220858, 0.209266,
		0.244846, -0.964763, 0.096348,
		39.396290, 35.480743, 39.623806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958389, 35.996868, 40.133156>,  <39.224899, 36.156078, 39.556362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958389, 35.996868, 40.133156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219791, 35.696110, 40.098316>,  <39.376633, 35.515656, 40.077412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219791, 35.696110, 40.098316>,  <38.958389, 35.996868, 40.133156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219791, 35.696110, 40.098316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137953, 0.005176, 0.990425,
		-0.744244, -0.659264, 0.107108,
		0.653506, -0.751894, -0.087095,
		39.415844, 35.470543, 40.072189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720848, 35.462742, 40.579636>,  <38.958389, 35.996868, 40.133156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720848, 35.462742, 40.579636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112476, 35.406986, 40.520325>,  <39.347454, 35.373535, 40.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112476, 35.406986, 40.520325>,  <38.720848, 35.462742, 40.579636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112476, 35.406986, 40.520325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132752, -0.114795, 0.984479,
		-0.154242, -0.983562, -0.093889,
		0.979074, -0.139384, -0.148276,
		39.406197, 35.365170, 40.475842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920792, 35.000141, 41.158569>,  <38.720848, 35.462742, 40.579636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920792, 35.000141, 41.158569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255764, 35.157967, 41.007294>,  <39.456749, 35.252663, 40.916527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255764, 35.157967, 41.007294>,  <38.920792, 35.000141, 41.158569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255764, 35.157967, 41.007294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435170, -0.062719, 0.898161,
		0.330664, -0.916725, -0.224226,
		0.837430, 0.394566, -0.378193,
		39.506992, 35.276337, 40.893837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453922, 34.518940, 41.536480>,  <38.920792, 35.000141, 41.158569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453922, 34.518940, 41.536480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610126, 34.865273, 41.411369>,  <39.703850, 35.073074, 41.336304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610126, 34.865273, 41.411369>,  <39.453922, 34.518940, 41.536480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610126, 34.865273, 41.411369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546035, 0.055689, 0.835909,
		0.741178, -0.497219, -0.451030,
		0.390513, 0.865836, -0.312775,
		39.727280, 35.125023, 41.317535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203693, 34.482178, 41.632607>,  <39.453922, 34.518940, 41.536480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203693, 34.482178, 41.632607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134972, 34.874939, 41.600746>,  <40.093739, 35.110596, 41.581631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134972, 34.874939, 41.600746>,  <40.203693, 34.482178, 41.632607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134972, 34.874939, 41.600746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641636, 0.172881, 0.747272,
		0.747521, 0.077277, -0.659727,
		-0.171802, 0.981907, -0.079649,
		40.083431, 35.169510, 41.576851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857918, 34.876984, 41.626606>,  <40.203693, 34.482178, 41.632607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857918, 34.876984, 41.626606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569317, 35.123608, 41.752644>,  <40.396156, 35.271584, 41.828266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569317, 35.123608, 41.752644>,  <40.857918, 34.876984, 41.626606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569317, 35.123608, 41.752644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578506, 0.286725, 0.763622,
		0.380474, 0.733241, -0.563558,
		-0.721505, 0.616560, 0.315093,
		40.352867, 35.308575, 41.847172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248859, 35.361778, 42.032639>,  <40.857918, 34.876984, 41.626606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248859, 35.361778, 42.032639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881889, 35.466434, 42.152554>,  <40.661709, 35.529228, 42.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881889, 35.466434, 42.152554>,  <41.248859, 35.361778, 42.032639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881889, 35.466434, 42.152554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377045, 0.330877, 0.865077,
		0.127144, 0.906679, -0.402205,
		-0.917426, 0.261638, 0.299790,
		40.606663, 35.544926, 42.242489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223274, 36.039246, 42.346699>,  <41.248859, 35.361778, 42.032639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223274, 36.039246, 42.346699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887348, 35.887871, 42.502384>,  <40.685791, 35.797047, 42.595795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887348, 35.887871, 42.502384>,  <41.223274, 36.039246, 42.346699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887348, 35.887871, 42.502384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328497, 0.216537, 0.919348,
		-0.432199, 0.899941, -0.057535,
		-0.839817, -0.378441, 0.389216,
		40.635403, 35.774338, 42.619148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841572, 36.555702, 42.822136>,  <41.223274, 36.039246, 42.346699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841572, 36.555702, 42.822136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761139, 36.175945, 42.918644>,  <40.712879, 35.948090, 42.976551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761139, 36.175945, 42.918644>,  <40.841572, 36.555702, 42.822136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761139, 36.175945, 42.918644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458990, 0.126274, 0.879422,
		-0.865386, 0.287582, 0.410371,
		-0.201087, -0.949395, 0.241272,
		40.700813, 35.891129, 42.991024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495846, 36.507191, 43.476559>,  <40.841572, 36.555702, 42.822136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495846, 36.507191, 43.476559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698948, 36.165810, 43.429577>,  <40.820808, 35.960979, 43.401386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698948, 36.165810, 43.429577>,  <40.495846, 36.507191, 43.476559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698948, 36.165810, 43.429577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335695, 0.070446, 0.939333,
		-0.793404, -0.516384, 0.322270,
		0.507759, -0.853455, -0.117455,
		40.851276, 35.909775, 43.394341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442120, 36.088207, 44.121346>,  <40.495846, 36.507191, 43.476559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442120, 36.088207, 44.121346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743248, 35.906414, 43.930893>,  <40.923927, 35.797337, 43.816624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743248, 35.906414, 43.930893>,  <40.442120, 36.088207, 44.121346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743248, 35.906414, 43.930893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444630, -0.182239, 0.876980,
		-0.485345, -0.871912, 0.064885,
		0.752825, -0.454487, -0.476127,
		40.969097, 35.770069, 43.788055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580292, 35.509064, 44.570702>,  <40.442120, 36.088207, 44.121346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580292, 35.509064, 44.570702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913647, 35.514332, 44.349686>,  <41.113659, 35.517490, 44.217075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913647, 35.514332, 44.349686>,  <40.580292, 35.509064, 44.570702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913647, 35.514332, 44.349686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521295, -0.350889, 0.777900,
		-0.183636, -0.936325, -0.299289,
		0.833385, 0.013167, -0.552537,
		41.163662, 35.518280, 44.183926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915474, 34.931225, 44.573418>,  <40.580292, 35.509064, 44.570702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915474, 34.931225, 44.573418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226246, 35.155552, 44.458973>,  <41.412708, 35.290150, 44.390308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226246, 35.155552, 44.458973>,  <40.915474, 34.931225, 44.573418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226246, 35.155552, 44.458973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517003, -0.308981, 0.798272,
		0.359284, -0.768123, -0.530002,
		0.776932, 0.560819, -0.286110,
		41.459324, 35.323799, 44.373138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479492, 34.471638, 44.660812>,  <40.915474, 34.931225, 44.573418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479492, 34.471638, 44.660812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597702, 34.853405, 44.677567>,  <41.668629, 35.082466, 44.687618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597702, 34.853405, 44.677567>,  <41.479492, 34.471638, 44.660812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597702, 34.853405, 44.677567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780808, -0.266566, 0.565050,
		0.550459, -0.134280, -0.823993,
		0.295523, 0.954417, 0.041886,
		41.686359, 35.139729, 44.690132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193951, 34.334888, 44.621624>,  <41.479492, 34.471638, 44.660812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193951, 34.334888, 44.621624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174591, 34.704548, 44.773205>,  <42.162975, 34.926342, 44.864155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174591, 34.704548, 44.773205>,  <42.193951, 34.334888, 44.621624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174591, 34.704548, 44.773205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708141, -0.235817, 0.665527,
		0.704410, 0.300565, -0.643014,
		-0.048400, 0.924149, 0.378954,
		42.160072, 34.981792, 44.886890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892002, 34.638836, 44.693085>,  <42.193951, 34.334888, 44.621624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892002, 34.638836, 44.693085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657829, 34.837688, 44.949249>,  <42.517326, 34.957001, 45.102947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657829, 34.837688, 44.949249>,  <42.892002, 34.638836, 44.693085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657829, 34.837688, 44.949249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693141, -0.102788, 0.713435,
		0.420501, 0.861563, -0.284409,
		-0.585436, 0.497136, 0.640407,
		42.482197, 34.986828, 45.141373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262791, 35.162445, 45.002438>,  <42.892002, 34.638836, 44.693085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262791, 35.162445, 45.002438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971119, 35.083401, 45.264503>,  <42.796116, 35.035973, 45.421745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971119, 35.083401, 45.264503>,  <43.262791, 35.162445, 45.002438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971119, 35.083401, 45.264503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626936, 0.190865, 0.755329,
		-0.274311, 0.961520, -0.015284,
		-0.729181, -0.197613, 0.655168,
		42.752365, 35.024117, 45.461052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329887, 35.680782, 45.589413>,  <43.262791, 35.162445, 45.002438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329887, 35.680782, 45.589413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135738, 35.362576, 45.734505>,  <43.019249, 35.171654, 45.821560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135738, 35.362576, 45.734505>,  <43.329887, 35.680782, 45.589413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135738, 35.362576, 45.734505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608209, -0.009180, 0.793724,
		-0.628088, 0.605867, 0.488294,
		-0.485374, -0.795513, 0.362728,
		42.990128, 35.123920, 45.843323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331684, 35.844677, 46.255562>,  <43.329887, 35.680782, 45.589413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331684, 35.844677, 46.255562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273094, 35.448994, 46.253971>,  <43.237942, 35.211582, 46.253017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273094, 35.448994, 46.253971>,  <43.331684, 35.844677, 46.255562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273094, 35.448994, 46.253971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610506, -0.093556, 0.786467,
		-0.778350, 0.112768, 0.617620,
		-0.146470, -0.989207, -0.003974,
		43.229153, 35.152233, 46.252777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210663, 35.743843, 46.940456>,  <43.331684, 35.844677, 46.255562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210663, 35.743843, 46.940456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302719, 35.386013, 46.787216>,  <43.357952, 35.171314, 46.695271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.302719, 35.386013, 46.787216>,  <43.210663, 35.743843, 46.940456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302719, 35.386013, 46.787216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387182, -0.276997, 0.879411,
		-0.892818, -0.350722, 0.282614,
		0.230145, -0.894576, -0.383101,
		43.371761, 35.117641, 46.672287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776249, 35.153782, 47.157410>,  <43.210663, 35.743843, 46.940456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776249, 35.153782, 47.157410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167164, 35.098579, 47.093079>,  <43.401711, 35.065456, 47.054478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167164, 35.098579, 47.093079>,  <42.776249, 35.153782, 47.157410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167164, 35.098579, 47.093079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146083, -0.111110, 0.983013,
		-0.153539, -0.984178, -0.088424,
		0.977285, -0.138014, -0.160832,
		43.460350, 35.057178, 47.044830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967499, 34.550659, 47.602413>,  <42.776249, 35.153782, 47.157410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967499, 34.550659, 47.602413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297554, 34.759651, 47.516468>,  <43.495586, 34.885044, 47.464901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297554, 34.759651, 47.516468>,  <42.967499, 34.550659, 47.602413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297554, 34.759651, 47.516468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296624, -0.077001, 0.951885,
		0.480793, -0.849170, -0.218515,
		0.825138, 0.522476, -0.214863,
		43.545097, 34.916393, 47.452011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732925, 34.276627, 47.815865>,  <42.967499, 34.550659, 47.602413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732925, 34.276627, 47.815865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664097, 34.670586, 47.823448>,  <43.622799, 34.906963, 47.827999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664097, 34.670586, 47.823448>,  <43.732925, 34.276627, 47.815865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664097, 34.670586, 47.823448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282180, 0.030842, 0.958866,
		0.943804, 0.170344, -0.283226,
		-0.172072, 0.984902, 0.018959,
		43.612476, 34.966057, 47.829136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219208, 34.781506, 48.193649>,  <43.732925, 34.276627, 47.815865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219208, 34.781506, 48.193649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493233, 34.762730, 47.902863>,  <44.657646, 34.751465, 47.728390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493233, 34.762730, 47.902863>,  <44.219208, 34.781506, 48.193649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493233, 34.762730, 47.902863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713903, -0.241906, -0.657133,
		-0.145015, 0.969164, -0.199229,
		0.685064, -0.046936, -0.726969,
		44.698753, 34.748650, 47.684772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150894, 35.182343, 47.567413>,  <44.219208, 34.781506, 48.193649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150894, 35.182343, 47.567413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347298, 34.853340, 47.452599>,  <44.465141, 34.655937, 47.383709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347298, 34.853340, 47.452599>,  <44.150894, 35.182343, 47.567413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347298, 34.853340, 47.452599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670158, -0.146107, -0.727696,
		0.556597, 0.549667, -0.622950,
		0.491008, -0.822508, -0.287041,
		44.494598, 34.606586, 47.366486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372330, 35.210129, 46.745750>,  <44.150894, 35.182343, 47.567413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372330, 35.210129, 46.745750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284584, 34.850693, 46.897762>,  <44.231937, 34.635033, 46.988968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284584, 34.850693, 46.897762>,  <44.372330, 35.210129, 46.745750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284584, 34.850693, 46.897762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737855, -0.102044, -0.667201,
		0.638317, -0.426767, -0.640641,
		-0.219366, -0.898587, 0.380028,
		44.218773, 34.581116, 47.011772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315212, 34.677155, 46.203335>,  <44.372330, 35.210129, 46.745750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315212, 34.677155, 46.203335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080608, 34.625099, 46.523102>,  <43.939846, 34.593868, 46.714962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080608, 34.625099, 46.523102>,  <44.315212, 34.677155, 46.203335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080608, 34.625099, 46.523102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802763, -0.037724, -0.595103,
		0.107604, -0.990778, -0.082347,
		-0.586509, -0.130140, 0.799419,
		43.904655, 34.586060, 46.762928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940369, 34.055946, 46.148045>,  <44.315212, 34.677155, 46.203335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940369, 34.055946, 46.148045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737209, 34.353565, 46.321682>,  <43.615314, 34.532135, 46.425865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737209, 34.353565, 46.321682>,  <43.940369, 34.055946, 46.148045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737209, 34.353565, 46.321682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608122, 0.047214, -0.792438,
		-0.610104, -0.666461, 0.428489,
		-0.507899, 0.744043, 0.434095,
		43.584839, 34.576778, 46.451912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267788, 33.850193, 46.126976>,  <43.940369, 34.055946, 46.148045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267788, 33.850193, 46.126976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255379, 34.249676, 46.143116>,  <43.247932, 34.489365, 46.152802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255379, 34.249676, 46.143116>,  <43.267788, 33.850193, 46.126976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255379, 34.249676, 46.143116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730920, 0.004872, -0.682446,
		-0.681758, -0.050666, 0.729822,
		-0.031021, 0.998704, 0.040354,
		43.246071, 34.549286, 46.155224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624756, 33.969631, 46.231400>,  <43.267788, 33.850193, 46.126976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624756, 33.969631, 46.231400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743233, 34.326431, 46.094807>,  <42.814320, 34.540512, 46.012852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743233, 34.326431, 46.094807>,  <42.624756, 33.969631, 46.231400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743233, 34.326431, 46.094807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756248, 0.000639, -0.654285,
		-0.583403, 0.452038, 0.674761,
		0.296192, 0.891999, -0.341480,
		42.832092, 34.594032, 45.992363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057007, 34.497871, 46.253345>,  <42.624756, 33.969631, 46.231400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057007, 34.497871, 46.253345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316620, 34.558064, 45.955051>,  <42.472385, 34.594177, 45.776077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316620, 34.558064, 45.955051>,  <42.057007, 34.497871, 46.253345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316620, 34.558064, 45.955051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747655, -0.055008, -0.661805,
		-0.140610, 0.987081, 0.076806,
		0.649031, 0.150481, -0.745731,
		42.511330, 34.603207, 45.731331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869183, 34.986198, 45.965450>,  <42.057007, 34.497871, 46.253345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869183, 34.986198, 45.965450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201584, 35.148602, 45.813347>,  <42.401024, 35.246044, 45.722084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201584, 35.148602, 45.813347>,  <41.869183, 34.986198, 45.965450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201584, 35.148602, 45.813347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484564, 0.192609, -0.853288,
		-0.273197, 0.893343, 0.356793,
		0.831000, 0.406005, -0.380262,
		42.450882, 35.270405, 45.699268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722893, 35.665699, 45.736038>,  <41.869183, 34.986198, 45.965450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722893, 35.665699, 45.736038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036659, 35.515579, 45.538521>,  <42.224918, 35.425507, 45.420010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036659, 35.515579, 45.538521>,  <41.722893, 35.665699, 45.736038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036659, 35.515579, 45.538521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454364, 0.194207, -0.869389,
		0.422182, 0.906329, -0.018183,
		0.784421, -0.375302, -0.493794,
		42.271984, 35.402988, 45.390381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910805, 36.196003, 45.247585>,  <41.722893, 35.665699, 45.736038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910805, 36.196003, 45.247585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020100, 35.829445, 45.130581>,  <42.085678, 35.609509, 45.060379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020100, 35.829445, 45.130581>,  <41.910805, 36.196003, 45.247585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020100, 35.829445, 45.130581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423604, 0.158383, -0.891894,
		0.863655, 0.367608, -0.344912,
		0.273239, -0.916395, -0.292508,
		42.102070, 35.554527, 45.042828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444538, 36.248398, 44.666363>,  <41.910805, 36.196003, 45.247585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444538, 36.248398, 44.666363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207668, 35.926712, 44.686634>,  <42.065548, 35.733700, 44.698795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207668, 35.926712, 44.686634>,  <42.444538, 36.248398, 44.666363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207668, 35.926712, 44.686634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446392, 0.275036, -0.851521,
		0.670869, -0.526869, -0.521865,
		-0.592172, -0.804216, 0.050677,
		42.030018, 35.685448, 44.701836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457363, 35.891003, 43.954151>,  <42.444538, 36.248398, 44.666363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457363, 35.891003, 43.954151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120243, 35.837784, 44.162758>,  <41.917969, 35.805851, 44.287922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120243, 35.837784, 44.162758>,  <42.457363, 35.891003, 43.954151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120243, 35.837784, 44.162758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537189, 0.267875, -0.799794,
		-0.033292, -0.954223, -0.297237,
		-0.842804, -0.133046, 0.521516,
		41.867401, 35.797871, 44.319214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153027, 35.459553, 43.387123>,  <42.457363, 35.891003, 43.954151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153027, 35.459553, 43.387123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846748, 35.522575, 43.636566>,  <41.662983, 35.560390, 43.786232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846748, 35.522575, 43.636566>,  <42.153027, 35.459553, 43.387123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846748, 35.522575, 43.636566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614358, 0.107938, -0.781610,
		-0.190460, -0.981593, 0.014150,
		-0.765696, 0.157558, 0.623607,
		41.617039, 35.569843, 43.823647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557381, 35.138126, 42.905140>,  <42.153027, 35.459553, 43.387123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557381, 35.138126, 42.905140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395611, 35.296520, 43.234901>,  <41.298550, 35.391556, 43.432758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395611, 35.296520, 43.234901>,  <41.557381, 35.138126, 42.905140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395611, 35.296520, 43.234901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910350, -0.087780, -0.404423,
		-0.087780, -0.914052, 0.395985,
		0.404423, -0.395985, -0.824402,
		41.274284, 35.415318, 43.482224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942936, 34.702839, 43.039101>,  <41.557381, 35.138126, 42.905140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942936, 34.702839, 43.039101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881096, 35.066628, 43.193485>,  <40.843990, 35.284901, 43.286118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881096, 35.066628, 43.193485>,  <40.942936, 34.702839, 43.039101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881096, 35.066628, 43.193485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787695, 0.122338, -0.603797,
		-0.596351, -0.397370, 0.697469,
		-0.154604, 0.909467, 0.385963,
		40.834713, 35.339466, 43.309273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210930, 34.746986, 43.115028>,  <40.942936, 34.702839, 43.039101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210930, 34.746986, 43.115028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366741, 35.115334, 43.108368>,  <40.460228, 35.336342, 43.104374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366741, 35.115334, 43.108368>,  <40.210930, 34.746986, 43.115028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366741, 35.115334, 43.108368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638033, 0.256765, -0.725938,
		-0.664217, 0.293393, 0.687559,
		0.389526, 0.920865, -0.016647,
		40.483601, 35.391594, 43.103374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605305, 35.132904, 43.121902>,  <40.210930, 34.746986, 43.115028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605305, 35.132904, 43.121902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913742, 35.333054, 42.964401>,  <40.098804, 35.453144, 42.869900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913742, 35.333054, 42.964401>,  <39.605305, 35.132904, 43.121902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913742, 35.333054, 42.964401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552876, 0.219449, -0.803847,
		-0.315815, 0.837538, 0.445860,
		0.771096, 0.500372, -0.393750,
		40.145069, 35.483166, 42.846275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358536, 35.676796, 42.569271>,  <39.605305, 35.132904, 43.121902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358536, 35.676796, 42.569271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740692, 35.619015, 42.466228>,  <39.969986, 35.584347, 42.404404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740692, 35.619015, 42.466228>,  <39.358536, 35.676796, 42.569271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740692, 35.619015, 42.466228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245887, 0.094154, -0.964715,
		0.163613, 0.985022, 0.054434,
		0.955390, -0.144456, -0.257609,
		40.027309, 35.575680, 42.388947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497772, 36.210320, 42.089725>,  <39.358536, 35.676796, 42.569271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497772, 36.210320, 42.089725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753170, 35.906456, 42.040352>,  <39.906410, 35.724136, 42.010727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753170, 35.906456, 42.040352>,  <39.497772, 36.210320, 42.089725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753170, 35.906456, 42.040352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290964, -0.089780, -0.952512,
		0.712505, 0.644091, -0.278359,
		0.638495, -0.759662, -0.123438,
		39.944717, 35.678558, 42.003319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771172, 36.426582, 41.428955>,  <39.497772, 36.210320, 42.089725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771172, 36.426582, 41.428955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856716, 36.042255, 41.499489>,  <39.908043, 35.811661, 41.541809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856716, 36.042255, 41.499489>,  <39.771172, 36.426582, 41.428955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856716, 36.042255, 41.499489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149517, -0.210583, -0.966074,
		0.965353, 0.180243, -0.188695,
		0.213864, -0.960816, 0.176337,
		39.920876, 35.754009, 41.552391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152603, 36.227283, 40.896248>,  <39.771172, 36.426582, 41.428955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152603, 36.227283, 40.896248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005619, 35.871750, 41.005745>,  <39.917427, 35.658428, 41.071445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.005619, 35.871750, 41.005745>,  <40.152603, 36.227283, 40.896248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005619, 35.871750, 41.005745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009476, -0.297902, -0.954550,
		0.929990, -0.348168, 0.117890,
		-0.367463, -0.888838, 0.273746,
		39.895382, 35.605099, 41.087868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676781, 35.702705, 40.646908>,  <40.152603, 36.227283, 40.896248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676781, 35.702705, 40.646908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316227, 35.538651, 40.702469>,  <40.099895, 35.440216, 40.735806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316227, 35.538651, 40.702469>,  <40.676781, 35.702705, 40.646908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316227, 35.538651, 40.702469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060450, -0.198449, -0.978245,
		0.428780, -0.890171, 0.154086,
		-0.901384, -0.410138, 0.138902,
		40.045811, 35.415611, 40.744141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658119, 35.063957, 40.302254>,  <40.676781, 35.702705, 40.646908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658119, 35.063957, 40.302254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276482, 35.172909, 40.352070>,  <40.047497, 35.238281, 40.381958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276482, 35.172909, 40.352070>,  <40.658119, 35.063957, 40.302254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276482, 35.172909, 40.352070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219453, -0.352807, -0.909597,
		-0.203816, -0.895174, 0.396386,
		-0.954096, 0.272379, 0.124541,
		39.990253, 35.254623, 40.389431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469017, 35.178478, 39.646736>,  <40.658119, 35.063957, 40.302254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469017, 35.178478, 39.646736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838547, 35.331570, 39.650105>,  <41.060265, 35.423424, 39.652126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838547, 35.331570, 39.650105>,  <40.469017, 35.178478, 39.646736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838547, 35.331570, 39.650105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346752, -0.845900, 0.405235,
		0.162215, -0.371446, -0.914174,
		0.923823, 0.382727, 0.008418,
		41.115692, 35.446388, 39.652630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798359, 34.592342, 39.414337>,  <40.469017, 35.178478, 39.646736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798359, 34.592342, 39.414337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011314, 34.829987, 39.655529>,  <41.139088, 34.972572, 39.800243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011314, 34.829987, 39.655529>,  <40.798359, 34.592342, 39.414337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011314, 34.829987, 39.655529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260205, -0.792695, 0.551296,
		0.805514, -0.136606, -0.576616,
		0.532391, 0.594115, 0.602982,
		41.171032, 35.008221, 39.836422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452591, 34.365719, 39.514919>,  <40.798359, 34.592342, 39.414337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452591, 34.365719, 39.514919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338409, 34.541107, 39.855801>,  <41.269901, 34.646339, 40.060329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338409, 34.541107, 39.855801>,  <41.452591, 34.365719, 39.514919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338409, 34.541107, 39.855801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301649, -0.802908, 0.514146,
		0.909683, 0.403832, 0.096928,
		-0.285453, 0.438472, 0.852208,
		41.252773, 34.672649, 40.111462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053207, 34.598354, 40.105381>,  <41.452591, 34.365719, 39.514919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053207, 34.598354, 40.105381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705513, 34.476357, 40.261021>,  <41.496895, 34.403156, 40.354404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705513, 34.476357, 40.261021>,  <42.053207, 34.598354, 40.105381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705513, 34.476357, 40.261021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457963, -0.793245, 0.401289,
		0.186262, 0.527010, 0.829197,
		-0.869239, -0.304997, 0.389102,
		41.444740, 34.384857, 40.377750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421234, 35.149101, 39.793243>,  <42.053207, 34.598354, 40.105381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421234, 35.149101, 39.793243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547546, 34.792229, 39.664062>,  <42.623333, 34.578106, 39.586552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547546, 34.792229, 39.664062>,  <42.421234, 35.149101, 39.793243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547546, 34.792229, 39.664062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372939, 0.196273, -0.906859,
		0.872468, 0.406809, -0.270750,
		0.315778, -0.892179, -0.322957,
		42.642281, 34.524574, 39.567177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716274, 35.299267, 39.128429>,  <42.421234, 35.149101, 39.793243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716274, 35.299267, 39.128429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621922, 34.910954, 39.110783>,  <42.565311, 34.677967, 39.100193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621922, 34.910954, 39.110783>,  <42.716274, 35.299267, 39.128429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621922, 34.910954, 39.110783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447830, 0.148879, -0.881636,
		0.862444, -0.188203, -0.469862,
		-0.235879, -0.970780, -0.044117,
		42.551159, 34.619720, 39.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894016, 34.992329, 38.367420>,  <42.716274, 35.299267, 39.128429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894016, 34.992329, 38.367420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566475, 34.825928, 38.525620>,  <42.369949, 34.726086, 38.620537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566475, 34.825928, 38.525620>,  <42.894016, 34.992329, 38.367420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566475, 34.825928, 38.525620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489819, 0.147214, -0.859305,
		0.299257, -0.897366, -0.324316,
		-0.818855, -0.416009, 0.395492,
		42.320820, 34.701126, 38.644268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834908, 34.534130, 37.925167>,  <42.894016, 34.992329, 38.367420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834908, 34.534130, 37.925167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482731, 34.634693, 38.085972>,  <42.271423, 34.695030, 38.182453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482731, 34.634693, 38.085972>,  <42.834908, 34.534130, 37.925167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482731, 34.634693, 38.085972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407471, 0.032372, -0.912644,
		-0.242458, -0.967340, 0.073939,
		-0.880444, 0.251406, 0.402012,
		42.218597, 34.710114, 38.206577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159855, 34.204525, 38.505863>,  <42.834908, 34.534130, 37.925167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159855, 34.204525, 38.505863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360584, 33.862812, 38.451653>,  <43.481022, 33.657784, 38.419125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360584, 33.862812, 38.451653>,  <43.159855, 34.204525, 38.505863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360584, 33.862812, 38.451653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419296, 0.377300, -0.825734,
		0.756548, 0.357545, 0.547536,
		0.501823, -0.854287, -0.135528,
		43.511131, 33.606525, 38.410995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884926, 34.218140, 38.539268>,  <43.159855, 34.204525, 38.505863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884926, 34.218140, 38.539268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757706, 33.955517, 38.265694>,  <43.681374, 33.797943, 38.101547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757706, 33.955517, 38.265694>,  <43.884926, 34.218140, 38.539268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757706, 33.955517, 38.265694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613090, 0.407830, -0.676606,
		0.723164, -0.634510, 0.272821,
		-0.318049, -0.656561, -0.683939,
		43.662292, 33.758549, 38.060513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502224, 33.855030, 38.326786>,  <43.884926, 34.218140, 38.539268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502224, 33.855030, 38.326786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202682, 33.885025, 38.063396>,  <44.022957, 33.903023, 37.905361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.202682, 33.885025, 38.063396>,  <44.502224, 33.855030, 38.326786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202682, 33.885025, 38.063396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644346, 0.314785, -0.696943,
		0.155016, -0.946196, -0.284048,
		-0.748858, 0.074987, -0.658474,
		43.978024, 33.907520, 37.865852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594791, 33.377762, 37.721035>,  <44.502224, 33.855030, 38.326786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594791, 33.377762, 37.721035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380177, 33.696800, 37.610786>,  <44.251408, 33.888226, 37.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380177, 33.696800, 37.610786>,  <44.594791, 33.377762, 37.721035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380177, 33.696800, 37.610786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574270, 0.105771, -0.811804,
		-0.618341, -0.593843, -0.514786,
		-0.536534, 0.797598, -0.275623,
		44.219215, 33.936081, 37.528099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537628, 33.337944, 37.009411>,  <44.594791, 33.377762, 37.721035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537628, 33.337944, 37.009411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518394, 33.720005, 37.126282>,  <44.506855, 33.949242, 37.196404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518394, 33.720005, 37.126282>,  <44.537628, 33.337944, 37.009411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518394, 33.720005, 37.126282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698396, 0.241273, -0.673818,
		-0.714095, 0.171654, -0.678678,
		-0.048083, 0.955155, 0.292175,
		44.503971, 34.006550, 37.213936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485104, 33.630356, 36.415848>,  <44.537628, 33.337944, 37.009411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485104, 33.630356, 36.415848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672310, 33.859615, 36.684910>,  <44.784634, 33.997169, 36.846348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672310, 33.859615, 36.684910>,  <44.485104, 33.630356, 36.415848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672310, 33.859615, 36.684910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713532, 0.203993, -0.670268,
		-0.521379, 0.793656, -0.313486,
		0.468013, 0.573146, 0.672657,
		44.812714, 34.031559, 36.886707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488380, 34.374920, 36.194660>,  <44.485104, 33.630356, 36.415848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488380, 34.374920, 36.194660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808887, 34.281784, 36.415112>,  <45.001194, 34.225903, 36.547382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808887, 34.281784, 36.415112>,  <44.488380, 34.374920, 36.194660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808887, 34.281784, 36.415112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589061, 0.468273, -0.658580,
		-0.104736, 0.852353, 0.512372,
		0.801272, -0.232841, 0.551133,
		45.049271, 34.211933, 36.580452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057991, 34.777805, 35.892021>,  <44.488380, 34.374920, 36.194660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057991, 34.777805, 35.892021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262035, 34.555603, 36.154686>,  <45.384460, 34.422283, 36.312286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262035, 34.555603, 36.154686>,  <45.057991, 34.777805, 35.892021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262035, 34.555603, 36.154686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854358, 0.239098, -0.461415,
		0.099313, 0.796395, 0.596567,
		0.510107, -0.555506, 0.656661,
		45.415066, 34.388950, 36.351685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661263, 35.093861, 36.193806>,  <45.057991, 34.777805, 35.892021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661263, 35.093861, 36.193806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754505, 34.704903, 36.189423>,  <45.810452, 34.471527, 36.186790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754505, 34.704903, 36.189423>,  <45.661263, 35.093861, 36.193806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754505, 34.704903, 36.189423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851992, 0.209648, -0.479747,
		0.468799, 0.102492, 0.877339,
		0.233103, -0.972390, -0.010960,
		45.824436, 34.413185, 36.186134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257717, 34.768120, 36.521877>,  <45.661263, 35.093861, 36.193806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257717, 34.768120, 36.521877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595676, 34.980228, 36.550053>,  <46.798450, 35.107494, 36.566959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.595676, 34.980228, 36.550053>,  <46.257717, 34.768120, 36.521877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.595676, 34.980228, 36.550053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526226, -0.800250, -0.287553,
		-0.096114, 0.280019, -0.955171,
		0.844895, 0.530274, 0.070438,
		46.849144, 35.139309, 36.571182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579811, 34.967381, 35.869370>,  <46.257717, 34.768120, 36.521877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579811, 34.967381, 35.869370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870220, 34.913498, 36.139107>,  <47.044468, 34.881168, 36.300949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870220, 34.913498, 36.139107>,  <46.579811, 34.967381, 35.869370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870220, 34.913498, 36.139107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465009, -0.626266, -0.625745,
		0.506608, 0.767884, -0.392048,
		0.726026, -0.134702, 0.674345,
		47.088028, 34.873089, 36.341412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.185829, 35.135067, 35.543274>,  <46.579811, 34.967381, 35.869370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.185829, 35.135067, 35.543274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280403, 34.898766, 35.851849>,  <47.337147, 34.756985, 36.036991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280403, 34.898766, 35.851849>,  <47.185829, 35.135067, 35.543274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280403, 34.898766, 35.851849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602396, -0.533823, -0.593424,
		0.762376, 0.605015, 0.229653,
		0.236437, -0.590754, 0.771432,
		47.351334, 34.721539, 36.083279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614231, 34.711098, 35.098709>,  <47.185829, 35.135067, 35.543274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614231, 34.711098, 35.098709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749859, 34.957420, 34.814224>,  <47.831234, 35.105213, 34.643536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.749859, 34.957420, 34.814224>,  <47.614231, 34.711098, 35.098709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.749859, 34.957420, 34.814224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925884, 0.352359, -0.136319,
		0.166655, 0.704718, 0.689637,
		0.339066, 0.615805, -0.711209,
		47.851578, 35.142162, 34.600861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.470249, 28.534748, 33.602886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115105, 28.376368, 33.696636>,  <36.902020, 28.281340, 33.752888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115105, 28.376368, 33.696636>,  <37.470249, 28.534748, 33.602886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115105, 28.376368, 33.696636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074000, 0.379878, 0.922072,
		-0.454129, 0.836012, -0.307977,
		-0.887858, -0.395949, 0.234378,
		36.848747, 28.257584, 33.766949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113922, 29.086733, 33.930714>,  <37.470249, 28.534748, 33.602886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113922, 29.086733, 33.930714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898403, 28.766790, 34.036491>,  <36.769093, 28.574825, 34.099957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898403, 28.766790, 34.036491>,  <37.113922, 29.086733, 33.930714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898403, 28.766790, 34.036491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146875, 0.398284, 0.905427,
		-0.829534, 0.449000, -0.332073,
		-0.538796, -0.799855, 0.264443,
		36.736763, 28.526834, 34.115826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672325, 29.392492, 34.320747>,  <37.113922, 29.086733, 33.930714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672325, 29.392492, 34.320747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663322, 29.005150, 34.420166>,  <36.657921, 28.772743, 34.479816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663322, 29.005150, 34.420166>,  <36.672325, 29.392492, 34.320747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663322, 29.005150, 34.420166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332309, 0.241724, 0.911669,
		-0.942902, -0.062078, -0.327234,
		-0.022506, -0.968357, 0.248551,
		36.656570, 28.714643, 34.494732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065414, 29.371605, 34.637135>,  <36.672325, 29.392492, 34.320747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065414, 29.371605, 34.637135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287796, 29.063932, 34.763165>,  <36.421227, 28.879330, 34.838783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287796, 29.063932, 34.763165>,  <36.065414, 29.371605, 34.637135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287796, 29.063932, 34.763165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280532, 0.183188, 0.942202,
		-0.782442, -0.612211, -0.113936,
		0.555955, -0.769181, 0.315079,
		36.454582, 28.833178, 34.857689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668720, 28.923454, 35.171349>,  <36.065414, 29.371605, 34.637135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668720, 28.923454, 35.171349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060814, 28.878723, 35.236637>,  <36.296070, 28.851885, 35.275810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060814, 28.878723, 35.236637>,  <35.668720, 28.923454, 35.171349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060814, 28.878723, 35.236637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153111, 0.093753, 0.983752,
		-0.125315, -0.989295, 0.074777,
		0.980231, -0.111830, 0.163221,
		36.354885, 28.845175, 35.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708321, 28.319178, 35.740280>,  <35.668720, 28.923454, 35.171349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708321, 28.319178, 35.740280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.021793, 28.566902, 35.721123>,  <36.209877, 28.715538, 35.709629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.021793, 28.566902, 35.721123>,  <35.708321, 28.319178, 35.740280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021793, 28.566902, 35.721123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102205, 0.204608, 0.973494,
		0.612695, -0.758016, 0.223644,
		0.783683, 0.619313, -0.047889,
		36.256897, 28.752695, 35.706757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197929, 28.070702, 36.269573>,  <35.708321, 28.319178, 35.740280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197929, 28.070702, 36.269573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299133, 28.451515, 36.200737>,  <36.359856, 28.680004, 36.159435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299133, 28.451515, 36.200737>,  <36.197929, 28.070702, 36.269573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299133, 28.451515, 36.200737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067432, 0.160093, 0.984796,
		0.965112, -0.260763, -0.023693,
		0.253005, 0.952036, -0.172091,
		36.375034, 28.737125, 36.149109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529808, 28.237553, 36.835575>,  <36.197929, 28.070702, 36.269573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529808, 28.237553, 36.835575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501232, 28.602289, 36.673862>,  <36.484085, 28.821131, 36.576836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501232, 28.602289, 36.673862>,  <36.529808, 28.237553, 36.835575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501232, 28.602289, 36.673862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200730, 0.410167, 0.889647,
		0.977038, -0.017593, -0.212337,
		-0.071442, 0.911841, -0.404280,
		36.479801, 28.875841, 36.552578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087971, 28.609032, 37.130817>,  <36.529808, 28.237553, 36.835575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087971, 28.609032, 37.130817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833424, 28.887306, 36.997520>,  <36.680695, 29.054272, 36.917542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833424, 28.887306, 36.997520>,  <37.087971, 28.609032, 37.130817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833424, 28.887306, 36.997520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216103, 0.575489, 0.788741,
		0.740493, 0.429918, -0.516565,
		-0.636372, 0.695689, -0.333239,
		36.642513, 29.096012, 36.897549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478268, 29.256094, 37.193947>,  <37.087971, 28.609032, 37.130817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478268, 29.256094, 37.193947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098377, 29.377714, 37.164070>,  <36.870445, 29.450686, 37.146145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098377, 29.377714, 37.164070>,  <37.478268, 29.256094, 37.193947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098377, 29.377714, 37.164070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162217, 0.681899, 0.713232,
		0.267789, 0.665257, -0.696938,
		-0.949724, 0.304050, -0.074689,
		36.813461, 29.468929, 37.141663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435261, 30.053267, 37.109783>,  <37.478268, 29.256094, 37.193947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435261, 30.053267, 37.109783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086872, 29.917633, 37.252010>,  <36.877838, 29.836252, 37.337345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086872, 29.917633, 37.252010>,  <37.435261, 30.053267, 37.109783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086872, 29.917633, 37.252010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085852, 0.607518, 0.789652,
		-0.483773, 0.718292, -0.500021,
		-0.870972, -0.339085, 0.355568,
		36.825581, 29.815908, 37.358681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152790, 30.597170, 37.229847>,  <37.435261, 30.053267, 37.109783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152790, 30.597170, 37.229847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947723, 30.341631, 37.459301>,  <36.824684, 30.188307, 37.596973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947723, 30.341631, 37.459301>,  <37.152790, 30.597170, 37.229847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947723, 30.341631, 37.459301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098223, 0.620083, 0.778363,
		-0.852954, 0.455381, -0.255144,
		-0.512662, -0.638847, 0.573631,
		36.793926, 30.149977, 37.631390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628872, 30.971813, 37.591518>,  <37.152790, 30.597170, 37.229847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628872, 30.971813, 37.591518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675571, 30.645456, 37.818035>,  <36.703590, 30.449642, 37.953945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675571, 30.645456, 37.818035>,  <36.628872, 30.971813, 37.591518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675571, 30.645456, 37.818035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022703, 0.572235, 0.819776,
		-0.992902, -0.082854, 0.085333,
		0.116753, -0.815894, 0.566292,
		36.710598, 30.400688, 37.987923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438637, 31.206829, 38.264797>,  <36.628872, 30.971813, 37.591518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438637, 31.206829, 38.264797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606865, 30.853445, 38.347374>,  <36.707802, 30.641415, 38.396919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.606865, 30.853445, 38.347374>,  <36.438637, 31.206829, 38.264797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606865, 30.853445, 38.347374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215851, 0.318443, 0.923040,
		-0.881209, -0.343644, 0.324624,
		0.420571, -0.883461, 0.206438,
		36.733036, 30.588408, 38.409306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218231, 31.027189, 38.926331>,  <36.438637, 31.206829, 38.264797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218231, 31.027189, 38.926331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549137, 30.810572, 38.866512>,  <36.747681, 30.680601, 38.830620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549137, 30.810572, 38.866512>,  <36.218231, 31.027189, 38.926331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549137, 30.810572, 38.866512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324112, 0.242605, 0.914382,
		-0.458897, -0.804906, 0.376219,
		0.827263, -0.541544, -0.149549,
		36.797318, 30.648109, 38.821648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280380, 30.538235, 39.499077>,  <36.218231, 31.027189, 38.926331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280380, 30.538235, 39.499077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635494, 30.602524, 39.326561>,  <36.848560, 30.641096, 39.223049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635494, 30.602524, 39.326561>,  <36.280380, 30.538235, 39.499077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635494, 30.602524, 39.326561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389437, 0.237151, 0.889999,
		0.245345, -0.958082, 0.147936,
		0.887775, 0.160745, -0.431296,
		36.901829, 30.650740, 39.197174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693886, 30.024090, 39.780750>,  <36.280380, 30.538235, 39.499077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693886, 30.024090, 39.780750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952007, 30.285475, 39.622475>,  <37.106880, 30.442305, 39.527508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952007, 30.285475, 39.622475>,  <36.693886, 30.024090, 39.780750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952007, 30.285475, 39.622475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594898, -0.104910, 0.796926,
		0.479248, -0.749655, -0.456441,
		0.645305, 0.653461, -0.395690,
		37.145599, 30.481512, 39.503769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437080, 29.732492, 39.839451>,  <36.693886, 30.024090, 39.780750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437080, 29.732492, 39.839451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487953, 30.128693, 39.818550>,  <37.518478, 30.366413, 39.806011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487953, 30.128693, 39.818550>,  <37.437080, 29.732492, 39.839451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487953, 30.128693, 39.818550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445571, -0.009994, 0.895191,
		0.886166, -0.137135, -0.442610,
		0.127185, 0.990502, -0.052247,
		37.526108, 30.425842, 39.802876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154148, 29.845448, 40.031956>,  <37.437080, 29.732492, 39.839451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154148, 29.845448, 40.031956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992062, 30.207850, 40.080875>,  <37.894810, 30.425291, 40.110226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992062, 30.207850, 40.080875>,  <38.154148, 29.845448, 40.031956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992062, 30.207850, 40.080875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523706, 0.120388, 0.843350,
		0.749356, 0.405785, -0.523263,
		-0.405213, 0.906005, 0.122298,
		37.870499, 30.479650, 40.117565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685066, 30.410580, 40.112183>,  <38.154148, 29.845448, 40.031956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685066, 30.410580, 40.112183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367073, 30.581820, 40.284103>,  <38.176277, 30.684563, 40.387257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367073, 30.581820, 40.284103>,  <38.685066, 30.410580, 40.112183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367073, 30.581820, 40.284103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521428, 0.120136, 0.844796,
		0.310021, 0.895712, -0.318728,
		-0.794985, 0.428098, 0.429804,
		38.128578, 30.710249, 40.413044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920200, 31.071634, 40.417347>,  <38.685066, 30.410580, 40.112183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920200, 31.071634, 40.417347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592651, 30.985039, 40.629978>,  <38.396122, 30.933083, 40.757557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592651, 30.985039, 40.629978>,  <38.920200, 31.071634, 40.417347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592651, 30.985039, 40.629978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531329, 0.064404, 0.844714,
		-0.217106, 0.974159, 0.062287,
		-0.818874, -0.216488, 0.531581,
		38.346989, 30.920092, 40.789452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927643, 31.600859, 40.922634>,  <38.920200, 31.071634, 40.417347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927643, 31.600859, 40.922634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650883, 31.379715, 41.108372>,  <38.484825, 31.247028, 41.219814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650883, 31.379715, 41.108372>,  <38.927643, 31.600859, 40.922634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650883, 31.379715, 41.108372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334912, 0.324000, 0.884793,
		-0.639614, 0.767706, -0.039017,
		-0.691902, -0.552858, 0.464349,
		38.443314, 31.213858, 41.247677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000851, 32.263435, 40.517254>,  <38.927643, 31.600859, 40.922634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000851, 32.263435, 40.517254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337555, 32.445244, 40.400734>,  <39.539577, 32.554329, 40.330822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337555, 32.445244, 40.400734>,  <39.000851, 32.263435, 40.517254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337555, 32.445244, 40.400734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106905, -0.388560, -0.915201,
		-0.529163, 0.801520, -0.278483,
		0.841759, 0.454519, -0.291298,
		39.590084, 32.581600, 40.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787140, 32.493301, 39.918343>,  <39.000851, 32.263435, 40.517254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787140, 32.493301, 39.918343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186005, 32.476830, 39.893143>,  <39.425323, 32.466946, 39.878021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186005, 32.476830, 39.893143>,  <38.787140, 32.493301, 39.918343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186005, 32.476830, 39.893143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066709, -0.095968, -0.993146,
		0.034852, 0.994532, -0.098443,
		0.997164, -0.041180, -0.062999,
		39.485153, 32.464474, 39.874245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889854, 33.051525, 39.451931>,  <38.787140, 32.493301, 39.918343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889854, 33.051525, 39.451931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205032, 32.805527, 39.464043>,  <39.394138, 32.657928, 39.471310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205032, 32.805527, 39.464043>,  <38.889854, 33.051525, 39.451931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205032, 32.805527, 39.464043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101657, 0.081425, -0.991482,
		0.607295, 0.784312, 0.126677,
		0.787946, -0.615000, 0.030282,
		39.441418, 32.621025, 39.473125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431858, 33.370464, 38.905434>,  <38.889854, 33.051525, 39.451931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431858, 33.370464, 38.905434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513397, 32.987850, 38.988850>,  <39.562321, 32.758282, 39.038898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513397, 32.987850, 38.988850>,  <39.431858, 33.370464, 38.905434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513397, 32.987850, 38.988850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037558, -0.205212, -0.977997,
		0.978281, 0.207198, -0.005907,
		0.203851, -0.956534, 0.208537,
		39.574554, 32.700890, 39.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951134, 33.177540, 38.432758>,  <39.431858, 33.370464, 38.905434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951134, 33.177540, 38.432758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802109, 32.825455, 38.550354>,  <39.712692, 32.614204, 38.620911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802109, 32.825455, 38.550354>,  <39.951134, 33.177540, 38.432758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802109, 32.825455, 38.550354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097794, -0.352269, -0.930775,
		0.922839, -0.318024, 0.217322,
		-0.372565, -0.880209, 0.293987,
		39.690338, 32.561394, 38.638550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391933, 32.649651, 38.199181>,  <39.951134, 33.177540, 38.432758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391933, 32.649651, 38.199181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054260, 32.442402, 38.254185>,  <39.851658, 32.318054, 38.287186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054260, 32.442402, 38.254185>,  <40.391933, 32.649651, 38.199181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054260, 32.442402, 38.254185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097231, -0.400264, -0.911227,
		0.527164, -0.755872, 0.388273,
		-0.844183, -0.518118, 0.137511,
		39.801006, 32.286968, 38.295437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555775, 31.883734, 38.122044>,  <40.391933, 32.649651, 38.199181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555775, 31.883734, 38.122044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167664, 31.945908, 38.047848>,  <39.934799, 31.983212, 38.003330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167664, 31.945908, 38.047848>,  <40.555775, 31.883734, 38.122044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167664, 31.945908, 38.047848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062372, -0.579975, -0.812243,
		-0.233832, -0.799668, 0.553040,
		-0.970275, 0.155434, -0.185493,
		39.876583, 31.992538, 37.992199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283897, 31.275230, 37.843426>,  <40.555775, 31.883734, 38.122044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283897, 31.275230, 37.843426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061512, 31.574736, 37.699059>,  <39.928082, 31.754438, 37.612438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061512, 31.574736, 37.699059>,  <40.283897, 31.275230, 37.843426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061512, 31.574736, 37.699059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069319, -0.474460, -0.877544,
		-0.828310, -0.462866, 0.315687,
		-0.555966, 0.748761, -0.360914,
		39.894722, 31.799364, 37.590786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000874, 30.978071, 37.399727>,  <40.283897, 31.275230, 37.843426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000874, 30.978071, 37.399727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910461, 31.348034, 37.277447>,  <39.856213, 31.570011, 37.204079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910461, 31.348034, 37.277447>,  <40.000874, 30.978071, 37.399727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910461, 31.348034, 37.277447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106005, -0.335314, -0.936123,
		-0.968335, -0.179189, 0.173837,
		-0.226033, 0.924908, -0.305701,
		39.842651, 31.625507, 37.185738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502804, 30.759863, 36.955769>,  <40.000874, 30.978071, 37.399727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502804, 30.759863, 36.955769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614231, 31.129337, 36.850544>,  <39.681087, 31.351023, 36.787411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614231, 31.129337, 36.850544>,  <39.502804, 30.759863, 36.955769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614231, 31.129337, 36.850544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081111, -0.295553, -0.951877,
		-0.956984, 0.243828, -0.157253,
		0.278571, 0.923686, -0.263063,
		39.697803, 31.406443, 36.771626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015499, 30.812515, 36.394547>,  <39.502804, 30.759863, 36.955769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015499, 30.812515, 36.394547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297493, 31.094076, 36.359867>,  <39.466690, 31.263012, 36.339058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297493, 31.094076, 36.359867>,  <39.015499, 30.812515, 36.394547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297493, 31.094076, 36.359867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110545, -0.011691, -0.993802,
		-0.700551, 0.710203, 0.069571,
		0.704988, 0.703900, -0.086700,
		39.508991, 31.305246, 36.333858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802383, 31.278267, 35.893276>,  <39.015499, 30.812515, 36.394547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802383, 31.278267, 35.893276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199562, 31.325386, 35.898712>,  <39.437870, 31.353657, 35.901974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199562, 31.325386, 35.898712>,  <38.802383, 31.278267, 35.893276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199562, 31.325386, 35.898712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007781, 0.049649, -0.998736,
		-0.118323, 0.991796, 0.048383,
		0.992945, 0.117797, 0.013592,
		39.497444, 31.360725, 35.902790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037678, 31.906105, 35.409138>,  <38.802383, 31.278267, 35.893276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037678, 31.906105, 35.409138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293228, 31.609524, 35.491192>,  <39.446560, 31.431576, 35.540424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.293228, 31.609524, 35.491192>,  <39.037678, 31.906105, 35.409138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293228, 31.609524, 35.491192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150574, -0.382015, -0.911807,
		0.754429, 0.551645, -0.355705,
		0.638878, -0.741453, 0.205139,
		39.484890, 31.387087, 35.552734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505592, 31.898994, 34.854156>,  <39.037678, 31.906105, 35.409138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505592, 31.898994, 34.854156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515686, 31.534864, 35.019405>,  <39.521744, 31.316387, 35.118557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515686, 31.534864, 35.019405>,  <39.505592, 31.898994, 34.854156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515686, 31.534864, 35.019405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112408, -0.413219, -0.903667,
		0.993342, -0.023636, -0.112755,
		0.025233, -0.910325, 0.413124,
		39.523254, 31.261766, 35.143341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796616, 31.434998, 34.309109>,  <39.505592, 31.898994, 34.854156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796616, 31.434998, 34.309109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634121, 31.185635, 34.576344>,  <39.536625, 31.036016, 34.736683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.634121, 31.185635, 34.576344>,  <39.796616, 31.434998, 34.309109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634121, 31.185635, 34.576344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271420, -0.615809, -0.739669,
		0.872527, -0.481811, 0.080958,
		-0.406235, -0.623408, 0.668083,
		39.512249, 30.998611, 34.776768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102154, 30.862429, 34.090984>,  <39.796616, 31.434998, 34.309109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102154, 30.862429, 34.090984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783585, 30.759867, 34.310062>,  <39.592445, 30.698330, 34.441509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783585, 30.759867, 34.310062>,  <40.102154, 30.862429, 34.090984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783585, 30.759867, 34.310062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306568, -0.609491, -0.731120,
		0.521281, -0.750185, 0.406804,
		-0.796418, -0.256406, 0.547698,
		39.544659, 30.682945, 34.474373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033924, 30.088953, 34.033897>,  <40.102154, 30.862429, 34.090984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033924, 30.088953, 34.033897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675896, 30.226465, 34.147499>,  <39.461079, 30.308973, 34.215660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.675896, 30.226465, 34.147499>,  <40.033924, 30.088953, 34.033897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675896, 30.226465, 34.147499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442968, -0.612327, -0.654855,
		-0.051224, -0.711948, 0.700362,
		-0.895073, 0.343782, 0.284005,
		39.407375, 30.329599, 34.232700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613094, 29.493845, 34.114185>,  <40.033924, 30.088953, 34.033897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613094, 29.493845, 34.114185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361107, 29.803400, 34.088165>,  <39.209915, 29.989134, 34.072552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361107, 29.803400, 34.088165>,  <39.613094, 29.493845, 34.114185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361107, 29.803400, 34.088165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570698, -0.518118, -0.637070,
		-0.526745, -0.364188, 0.768054,
		-0.629955, 0.773900, -0.065074,
		39.172115, 30.035566, 34.068649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.870602, 29.199869, 34.225693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832462, 29.541920, 34.021862>,  <38.809578, 29.747150, 33.899563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832462, 29.541920, 34.021862>,  <38.870602, 29.199869, 34.225693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832462, 29.541920, 34.021862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459005, -0.492007, -0.739759,
		-0.883302, 0.163361, 0.439421,
		-0.095351, 0.855127, -0.509574,
		38.803856, 29.798458, 33.868988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179733, 29.211576, 33.986141>,  <38.870602, 29.199869, 34.225693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179733, 29.211576, 33.986141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366535, 29.478069, 33.753578>,  <38.478619, 29.637966, 33.614040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366535, 29.478069, 33.753578>,  <38.179733, 29.211576, 33.986141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366535, 29.478069, 33.753578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393270, -0.432414, -0.811392,
		-0.791986, 0.607577, 0.060069,
		0.467009, 0.666234, -0.581408,
		38.506638, 29.677940, 33.579155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757092, 29.291117, 33.533169>,  <38.179733, 29.211576, 33.986141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757092, 29.291117, 33.533169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092651, 29.434929, 33.369713>,  <38.293987, 29.521215, 33.271641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092651, 29.434929, 33.369713>,  <37.757092, 29.291117, 33.533169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092651, 29.434929, 33.369713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227619, -0.450237, -0.863410,
		-0.494407, 0.817327, -0.295868,
		0.838899, 0.359531, -0.408639,
		38.344322, 29.542788, 33.247120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483589, 29.580458, 32.954582>,  <37.757092, 29.291117, 33.533169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483589, 29.580458, 32.954582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877853, 29.542475, 32.898792>,  <38.114410, 29.519684, 32.865318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.877853, 29.542475, 32.898792>,  <37.483589, 29.580458, 32.954582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877853, 29.542475, 32.898792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167604, -0.455591, -0.874269,
		0.019476, 0.885110, -0.464974,
		0.985662, -0.094959, -0.139475,
		38.173553, 29.513987, 32.856949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641232, 29.768976, 32.254414>,  <37.483589, 29.580458, 32.954582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641232, 29.768976, 32.254414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968102, 29.561487, 32.354935>,  <38.164223, 29.436993, 32.415245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968102, 29.561487, 32.354935>,  <37.641232, 29.768976, 32.254414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968102, 29.561487, 32.354935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022068, -0.463824, -0.885652,
		0.575967, 0.718187, -0.390473,
		0.817175, -0.518724, 0.251299,
		38.213253, 29.405870, 32.430325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188786, 29.912838, 31.661757>,  <37.641232, 29.768976, 32.254414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188786, 29.912838, 31.661757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267845, 29.572605, 31.856670>,  <38.315281, 29.368465, 31.973619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.267845, 29.572605, 31.856670>,  <38.188786, 29.912838, 31.661757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267845, 29.572605, 31.856670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069347, -0.483713, -0.872475,
		0.977817, 0.206235, -0.036619,
		0.197648, -0.850582, 0.487284,
		38.327141, 29.317430, 32.002857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720818, 29.789839, 31.308195>,  <38.188786, 29.912838, 31.661757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720818, 29.789839, 31.308195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.585526, 29.471498, 31.509083>,  <38.504353, 29.280495, 31.629616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.585526, 29.471498, 31.509083>,  <38.720818, 29.789839, 31.308195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585526, 29.471498, 31.509083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000974, -0.533964, -0.845506,
		0.941065, -0.285483, 0.181375,
		-0.338226, -0.795853, 0.502217,
		38.484058, 29.232742, 31.659748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986591, 29.314684, 30.941149>,  <38.720818, 29.789839, 31.308195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986591, 29.314684, 30.941149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746693, 29.086086, 31.165182>,  <38.602753, 28.948927, 31.299603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746693, 29.086086, 31.165182>,  <38.986591, 29.314684, 30.941149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746693, 29.086086, 31.165182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054265, -0.669282, -0.741024,
		0.798347, -0.474821, 0.370389,
		-0.599748, -0.571495, 0.560085,
		38.566769, 28.914639, 31.333208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230598, 28.555618, 31.067345>,  <38.986591, 29.314684, 30.941149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230598, 28.555618, 31.067345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832062, 28.570480, 31.098129>,  <38.592941, 28.579397, 31.116600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832062, 28.570480, 31.098129>,  <39.230598, 28.555618, 31.067345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832062, 28.570480, 31.098129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080542, -0.709328, -0.700262,
		0.028574, -0.703899, 0.709725,
		-0.996342, 0.037153, 0.076962,
		38.533161, 28.581627, 31.121218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009945, 27.916136, 31.097141>,  <39.230598, 28.555618, 31.067345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009945, 27.916136, 31.097141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.684059, 28.113359, 30.975077>,  <38.488525, 28.231693, 30.901838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.684059, 28.113359, 30.975077>,  <39.009945, 27.916136, 31.097141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684059, 28.113359, 30.975077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169583, -0.705870, -0.687743,
		-0.554504, -0.508567, 0.658700,
		-0.814719, 0.493060, -0.305163,
		38.439644, 28.261278, 30.883528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542526, 27.349947, 30.872519>,  <39.009945, 27.916136, 31.097141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542526, 27.349947, 30.872519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381008, 27.674599, 30.703659>,  <38.284100, 27.869390, 30.602343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381008, 27.674599, 30.703659>,  <38.542526, 27.349947, 30.872519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381008, 27.674599, 30.703659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008344, -0.464689, -0.885435,
		-0.914813, -0.354009, 0.194410,
		-0.403792, 0.811629, -0.422149,
		38.259869, 27.918087, 30.577015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022186, 27.075224, 30.538456>,  <38.542526, 27.349947, 30.872519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022186, 27.075224, 30.538456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.075333, 27.418015, 30.339283>,  <38.107220, 27.623690, 30.219780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.075333, 27.418015, 30.339283>,  <38.022186, 27.075224, 30.538456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075333, 27.418015, 30.339283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113454, -0.485934, -0.866600,
		-0.984619, 0.171636, 0.032663,
		0.132868, 0.856977, -0.497933,
		38.115192, 27.675108, 30.189903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524143, 27.080061, 29.974857>,  <38.022186, 27.075224, 30.538456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524143, 27.080061, 29.974857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800453, 27.354544, 29.883690>,  <37.966240, 27.519234, 29.828989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800453, 27.354544, 29.883690>,  <37.524143, 27.080061, 29.974857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800453, 27.354544, 29.883690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060917, -0.369319, -0.927304,
		-0.720497, 0.626676, -0.296919,
		0.690777, 0.686207, -0.227918,
		38.007687, 27.560406, 29.815315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256523, 27.380770, 29.436646>,  <37.524143, 27.080061, 29.974857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256523, 27.380770, 29.436646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654438, 27.421141, 29.430733>,  <37.893185, 27.445364, 29.427185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654438, 27.421141, 29.430733>,  <37.256523, 27.380770, 29.436646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654438, 27.421141, 29.430733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032240, -0.448586, -0.893158,
		-0.096778, 0.888022, -0.449500,
		0.994784, 0.100929, -0.014784,
		37.952873, 27.451420, 29.426298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349419, 27.117546, 28.836723>,  <37.256523, 27.380770, 29.436646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349419, 27.117546, 28.836723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718903, 27.210320, 28.958683>,  <37.940594, 27.265984, 29.031858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718903, 27.210320, 28.958683>,  <37.349419, 27.117546, 28.836723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718903, 27.210320, 28.958683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371980, -0.352761, -0.858598,
		-0.091582, 0.906513, -0.412125,
		0.923712, 0.231934, 0.304898,
		37.996017, 27.279900, 29.050152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611465, 27.638178, 28.384565>,  <37.349419, 27.117546, 28.836723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611465, 27.638178, 28.384565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893639, 27.396412, 28.532644>,  <38.062943, 27.251352, 28.621492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893639, 27.396412, 28.532644>,  <37.611465, 27.638178, 28.384565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893639, 27.396412, 28.532644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118108, -0.414761, -0.902233,
		0.698867, 0.680188, -0.221199,
		0.705433, -0.604415, 0.370198,
		38.105270, 27.215088, 28.643703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049877, 27.571537, 27.856249>,  <37.611465, 27.638178, 28.384565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049877, 27.571537, 27.856249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157402, 27.276800, 28.104378>,  <38.221916, 27.099958, 28.253256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157402, 27.276800, 28.104378>,  <38.049877, 27.571537, 27.856249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157402, 27.276800, 28.104378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236436, -0.573845, -0.784092,
		0.933722, 0.357441, 0.019959,
		0.268814, -0.736843, 0.620324,
		38.238045, 27.055748, 28.290474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723011, 27.493820, 27.706799>,  <38.049877, 27.571537, 27.856249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723011, 27.493820, 27.706799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531937, 27.168867, 27.840576>,  <38.417294, 26.973896, 27.920843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.531937, 27.168867, 27.840576>,  <38.723011, 27.493820, 27.706799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531937, 27.168867, 27.840576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264507, -0.496012, -0.827048,
		0.837766, -0.306608, 0.451819,
		-0.477687, -0.812382, 0.334442,
		38.388630, 26.925152, 27.940908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206268, 26.878414, 27.664948>,  <38.723011, 27.493820, 27.706799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206268, 26.878414, 27.664948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837147, 26.724730, 27.653574>,  <38.615673, 26.632519, 27.646749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.837147, 26.724730, 27.653574>,  <39.206268, 26.878414, 27.664948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837147, 26.724730, 27.653574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283796, -0.628002, -0.724620,
		0.260553, -0.676753, 0.688562,
		-0.922807, -0.384213, -0.028432,
		38.560307, 26.609467, 27.645044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329342, 26.291451, 27.297880>,  <39.206268, 26.878414, 27.664948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329342, 26.291451, 27.297880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930729, 26.316887, 27.319326>,  <38.691559, 26.332150, 27.332195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930729, 26.316887, 27.319326>,  <39.329342, 26.291451, 27.297880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930729, 26.316887, 27.319326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079129, -0.526128, -0.846716,
		-0.025633, -0.848024, 0.529337,
		-0.996535, 0.063590, 0.053617,
		38.631767, 26.335964, 27.335411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067036, 25.634092, 27.316607>,  <39.329342, 26.291451, 27.297880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067036, 25.634092, 27.316607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784878, 25.876764, 27.169987>,  <38.615582, 26.022367, 27.082016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784878, 25.876764, 27.169987>,  <39.067036, 25.634092, 27.316607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784878, 25.876764, 27.169987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171285, -0.647702, -0.742391,
		-0.687810, -0.460893, 0.560799,
		-0.705393, 0.606680, -0.366551,
		38.573257, 26.058767, 27.060022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573708, 25.221123, 27.169743>,  <39.067036, 25.634092, 27.316607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573708, 25.221123, 27.169743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506897, 25.535471, 26.931580>,  <38.466812, 25.724079, 26.788683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506897, 25.535471, 26.931580>,  <38.573708, 25.221123, 27.169743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506897, 25.535471, 26.931580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299174, -0.615814, -0.728881,
		-0.939466, 0.056387, 0.337970,
		-0.167027, 0.785871, -0.595406,
		38.456787, 25.771233, 26.752958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855495, 25.320061, 26.774357>,  <38.573708, 25.221123, 27.169743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855495, 25.320061, 26.774357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137531, 25.492928, 26.549475>,  <38.306755, 25.596647, 26.414545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137531, 25.492928, 26.549475>,  <37.855495, 25.320061, 26.774357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137531, 25.492928, 26.549475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368330, -0.454284, -0.811147,
		-0.605952, 0.779011, -0.161132,
		0.705092, 0.432166, -0.562207,
		38.349060, 25.622578, 26.380812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342888, 25.044121, 26.190611>,  <37.855495, 25.320061, 26.774357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342888, 25.044121, 26.190611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951836, 24.960331, 26.183115>,  <36.717205, 24.910057, 26.178617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951836, 24.960331, 26.183115>,  <37.342888, 25.044121, 26.190611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951836, 24.960331, 26.183115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084148, 0.307943, 0.947676,
		-0.192745, 0.928057, -0.318683,
		-0.977634, -0.209476, -0.018740,
		36.658546, 24.897488, 26.177492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119507, 25.638744, 26.500925>,  <37.342888, 25.044121, 26.190611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119507, 25.638744, 26.500925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852314, 25.341234, 26.510702>,  <36.691998, 25.162727, 26.516567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852314, 25.341234, 26.510702>,  <37.119507, 25.638744, 26.500925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852314, 25.341234, 26.510702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242180, 0.248322, 0.937915,
		-0.703667, 0.620593, -0.346002,
		-0.667983, -0.743775, 0.024441,
		36.651920, 25.118101, 26.518034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426105, 25.921406, 26.461132>,  <37.119507, 25.638744, 26.500925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426105, 25.921406, 26.461132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410126, 25.561707, 26.635376>,  <36.400536, 25.345886, 26.739923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410126, 25.561707, 26.635376>,  <36.426105, 25.921406, 26.461132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410126, 25.561707, 26.635376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411040, 0.412155, 0.813127,
		-0.910741, -0.146566, -0.386093,
		-0.039953, -0.899248, 0.435611,
		36.398140, 25.291933, 26.766060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803642, 25.846176, 26.671024>,  <36.426105, 25.921406, 26.461132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803642, 25.846176, 26.671024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947987, 25.541492, 26.886276>,  <36.034592, 25.358683, 27.015427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947987, 25.541492, 26.886276>,  <35.803642, 25.846176, 26.671024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947987, 25.541492, 26.886276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446633, 0.365391, 0.816706,
		-0.818718, -0.535061, -0.208350,
		0.360858, -0.761708, 0.538128,
		36.056244, 25.312981, 27.047714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348354, 25.642700, 27.097227>,  <35.803642, 25.846176, 26.671024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348354, 25.642700, 27.097227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642487, 25.469105, 27.305437>,  <35.818966, 25.364946, 27.430363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.642487, 25.469105, 27.305437>,  <35.348354, 25.642700, 27.097227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642487, 25.469105, 27.305437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403950, 0.336046, 0.850822,
		-0.544169, -0.835898, 0.071794,
		0.735327, -0.433989, 0.520527,
		35.863083, 25.338907, 27.461596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072933, 25.263588, 27.693766>,  <35.348354, 25.642700, 27.097227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072933, 25.263588, 27.693766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453598, 25.333590, 27.794733>,  <35.681995, 25.375589, 27.855312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453598, 25.333590, 27.794733>,  <35.072933, 25.263588, 27.693766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453598, 25.333590, 27.794733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284510, 0.192606, 0.939126,
		0.115729, -0.965546, 0.233085,
		0.951662, 0.174999, 0.252418,
		35.739098, 25.386089, 27.870459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194046, 24.915594, 28.300846>,  <35.072933, 25.263588, 27.693766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194046, 24.915594, 28.300846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471561, 25.203665, 28.301964>,  <35.638069, 25.376507, 28.302633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471561, 25.203665, 28.301964>,  <35.194046, 24.915594, 28.300846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471561, 25.203665, 28.301964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311109, 0.296208, 0.903035,
		0.649517, -0.627382, 0.429558,
		0.693786, 0.720176, 0.002792,
		35.679699, 25.419718, 28.302801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138233, 25.083450, 28.958384>,  <35.194046, 24.915594, 28.300846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138233, 25.083450, 28.958384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393299, 25.366951, 28.837683>,  <35.546341, 25.537050, 28.765263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393299, 25.366951, 28.837683>,  <35.138233, 25.083450, 28.958384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393299, 25.366951, 28.837683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029770, 0.368759, 0.929048,
		0.769737, -0.601406, 0.214046,
		0.637666, 0.708751, -0.301751,
		35.584599, 25.579576, 28.747158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820072, 25.161276, 29.368156>,  <35.138233, 25.083450, 28.958384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820072, 25.161276, 29.368156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730648, 25.520645, 29.216970>,  <35.676994, 25.736267, 29.126259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730648, 25.520645, 29.216970>,  <35.820072, 25.161276, 29.368156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730648, 25.520645, 29.216970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085613, 0.404382, 0.910574,
		0.970922, 0.171213, -0.167322,
		-0.223564, 0.898421, -0.377966,
		35.663578, 25.790171, 29.103580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400726, 25.594625, 29.549732>,  <35.820072, 25.161276, 29.368156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400726, 25.594625, 29.549732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096710, 25.843956, 29.476185>,  <35.914303, 25.993553, 29.432056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096710, 25.843956, 29.476185>,  <36.400726, 25.594625, 29.549732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096710, 25.843956, 29.476185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266343, 0.556840, 0.786760,
		0.592793, 0.548995, -0.589238,
		-0.760038, 0.623325, -0.183870,
		35.868698, 26.030952, 29.421024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748451, 26.164982, 29.630909>,  <36.400726, 25.594625, 29.549732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748451, 26.164982, 29.630909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356182, 26.223169, 29.683231>,  <36.120819, 26.258081, 29.714624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356182, 26.223169, 29.683231>,  <36.748451, 26.164982, 29.630909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356182, 26.223169, 29.683231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190319, 0.554657, 0.810021,
		0.045282, 0.819264, -0.571626,
		-0.980677, 0.145471, 0.130805,
		36.061977, 26.266811, 29.722473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650047, 26.871506, 29.732071>,  <36.748451, 26.164982, 29.630909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650047, 26.871506, 29.732071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303352, 26.728254, 29.870928>,  <36.095333, 26.642303, 29.954241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303352, 26.728254, 29.870928>,  <36.650047, 26.871506, 29.732071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303352, 26.728254, 29.870928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172864, 0.437167, 0.882611,
		-0.467845, 0.825003, -0.317003,
		-0.866741, -0.358127, 0.347140,
		36.043331, 26.620817, 29.975069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276985, 27.441084, 29.898151>,  <36.650047, 26.871506, 29.732071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276985, 27.441084, 29.898151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138515, 27.135332, 30.115732>,  <36.055431, 26.951881, 30.246281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138515, 27.135332, 30.115732>,  <36.276985, 27.441084, 29.898151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138515, 27.135332, 30.115732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089976, 0.550077, 0.830252,
		-0.933844, 0.336358, -0.121649,
		-0.346179, -0.764381, 0.543951,
		36.034660, 26.906017, 30.278917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906361, 27.725016, 30.410564>,  <36.276985, 27.441084, 29.898151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906361, 27.725016, 30.410564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943211, 27.362185, 30.574867>,  <35.965321, 27.144485, 30.673449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943211, 27.362185, 30.574867>,  <35.906361, 27.725016, 30.410564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943211, 27.362185, 30.574867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122652, 0.419708, 0.899334,
		-0.988165, -0.032471, 0.149921,
		0.092125, -0.907078, 0.410758,
		35.970848, 27.090061, 30.698095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450413, 27.682838, 30.989393>,  <35.906361, 27.725016, 30.410564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450413, 27.682838, 30.989393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751293, 27.429190, 31.061041>,  <35.931820, 27.277000, 31.104029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751293, 27.429190, 31.061041>,  <35.450413, 27.682838, 30.989393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751293, 27.429190, 31.061041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149714, 0.429191, 0.890719,
		-0.641701, -0.643183, 0.417774,
		0.752201, -0.634122, 0.179119,
		35.976952, 27.238953, 31.114777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226437, 27.371952, 31.608286>,  <35.450413, 27.682838, 30.989393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226437, 27.371952, 31.608286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622185, 27.344713, 31.556898>,  <35.859634, 27.328369, 31.526066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622185, 27.344713, 31.556898>,  <35.226437, 27.371952, 31.608286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622185, 27.344713, 31.556898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143854, 0.329754, 0.933043,
		-0.021175, -0.941608, 0.336046,
		0.989372, -0.068098, -0.128471,
		35.918995, 27.324284, 31.518356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387493, 27.155571, 32.277412>,  <35.226437, 27.371952, 31.608286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387493, 27.155571, 32.277412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745033, 27.249592, 32.124683>,  <35.959557, 27.306005, 32.033047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745033, 27.249592, 32.124683>,  <35.387493, 27.155571, 32.277412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745033, 27.249592, 32.124683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309141, 0.293732, 0.904518,
		0.324770, -0.926536, 0.189884,
		0.893844, 0.235060, -0.381826,
		36.013187, 27.320108, 32.010136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925030, 26.750301, 32.549225>,  <35.387493, 27.155571, 32.277412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925030, 26.750301, 32.549225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099224, 27.087551, 32.423054>,  <36.203739, 27.289902, 32.347351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099224, 27.087551, 32.423054>,  <35.925030, 26.750301, 32.549225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099224, 27.087551, 32.423054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289247, 0.200758, 0.935966,
		0.852462, -0.498832, -0.156445,
		0.435482, 0.843127, -0.315424,
		36.229870, 27.340488, 32.328426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512314, 26.730759, 32.883194>,  <35.925030, 26.750301, 32.549225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512314, 26.730759, 32.883194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450214, 27.118811, 32.808628>,  <36.412956, 27.351641, 32.763889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450214, 27.118811, 32.808628>,  <36.512314, 26.730759, 32.883194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450214, 27.118811, 32.808628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281499, 0.224322, 0.932973,
		0.946919, 0.092369, -0.307916,
		-0.155250, 0.970128, -0.186413,
		36.403641, 27.409849, 32.752705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034473, 27.086201, 33.216572>,  <36.512314, 26.730759, 32.883194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034473, 27.086201, 33.216572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788975, 27.394802, 33.149521>,  <36.641678, 27.579964, 33.109291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.788975, 27.394802, 33.149521>,  <37.034473, 27.086201, 33.216572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788975, 27.394802, 33.149521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266537, 0.402327, 0.875837,
		0.743152, 0.492862, -0.452561,
		-0.613745, 0.771505, -0.167624,
		36.604851, 27.626253, 33.099236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474365, 27.642838, 33.376076>,  <37.034473, 27.086201, 33.216572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474365, 27.642838, 33.376076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088211, 27.745123, 33.396656>,  <36.856518, 27.806494, 33.409004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088211, 27.745123, 33.396656>,  <37.474365, 27.642838, 33.376076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088211, 27.745123, 33.396656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147194, 0.371249, 0.916792,
		0.215335, 0.892629, -0.396036,
		-0.965383, 0.255712, 0.051447,
		36.798595, 27.821836, 33.412090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.709442, 31.477350, 36.037415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318295, 31.504242, 35.958164>,  <40.083607, 31.520376, 35.910614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318295, 31.504242, 35.958164>,  <40.709442, 31.477350, 36.037415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318295, 31.504242, 35.958164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159479, 0.373422, 0.913850,
		0.135419, 0.925222, -0.354436,
		-0.977869, 0.067228, -0.198122,
		40.024933, 31.524410, 35.898727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517715, 32.104584, 36.230057>,  <40.709442, 31.477350, 36.037415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517715, 32.104584, 36.230057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169590, 31.908972, 36.253372>,  <39.960712, 31.791603, 36.267361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169590, 31.908972, 36.253372>,  <40.517715, 32.104584, 36.230057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169590, 31.908972, 36.253372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208263, 0.472705, 0.856257,
		-0.446293, 0.733074, -0.513250,
		-0.870315, -0.489033, 0.058293,
		39.908497, 31.762262, 36.270859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944557, 32.573692, 36.246731>,  <40.517715, 32.104584, 36.230057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944557, 32.573692, 36.246731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.859787, 32.225300, 36.424038>,  <39.808926, 32.016266, 36.530422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.859787, 32.225300, 36.424038>,  <39.944557, 32.573692, 36.246731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859787, 32.225300, 36.424038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214071, 0.483928, 0.848521,
		-0.953552, 0.084933, -0.289008,
		-0.211926, -0.870977, 0.443268,
		39.796207, 31.964006, 36.557018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434906, 32.762157, 36.692680>,  <39.944557, 32.573692, 36.246731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434906, 32.762157, 36.692680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.554935, 32.415524, 36.852173>,  <39.626953, 32.207542, 36.947868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.554935, 32.415524, 36.852173>,  <39.434906, 32.762157, 36.692680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554935, 32.415524, 36.852173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214796, 0.345873, 0.913364,
		-0.929418, -0.359721, -0.082352,
		0.300073, -0.866586, 0.398728,
		39.644958, 32.155548, 36.971790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913574, 32.554138, 37.272030>,  <39.434906, 32.762157, 36.692680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913574, 32.554138, 37.272030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.241108, 32.340790, 37.356915>,  <39.437626, 32.212780, 37.407845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.241108, 32.340790, 37.356915>,  <38.913574, 32.554138, 37.272030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241108, 32.340790, 37.356915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094817, 0.238928, 0.966397,
		-0.566152, -0.811435, 0.145069,
		0.818830, -0.533373, 0.212208,
		39.486755, 32.180779, 37.420578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626900, 32.084602, 37.798801>,  <38.913574, 32.554138, 37.272030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626900, 32.084602, 37.798801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025364, 32.100327, 37.830112>,  <39.264442, 32.109760, 37.848900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025364, 32.100327, 37.830112>,  <38.626900, 32.084602, 37.798801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025364, 32.100327, 37.830112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083894, 0.171141, 0.981668,
		0.025191, -0.984462, 0.173781,
		0.996157, 0.039309, 0.078280,
		39.324211, 32.112122, 37.853596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631138, 31.747526, 38.528412>,  <38.626900, 32.084602, 37.798801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631138, 31.747526, 38.528412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994827, 31.899549, 38.460457>,  <39.213043, 31.990763, 38.419682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994827, 31.899549, 38.460457>,  <38.631138, 31.747526, 38.528412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994827, 31.899549, 38.460457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104335, 0.187034, 0.976797,
		0.403015, -0.905856, 0.130403,
		0.909227, 0.380058, -0.169890,
		39.267597, 32.013565, 38.409489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104713, 31.483992, 39.048458>,  <38.631138, 31.747526, 38.528412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104713, 31.483992, 39.048458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272243, 31.820967, 38.912880>,  <39.372761, 32.023151, 38.831532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272243, 31.820967, 38.912880>,  <39.104713, 31.483992, 39.048458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272243, 31.820967, 38.912880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114045, 0.321510, 0.940013,
		0.900878, -0.432354, 0.038579,
		0.418822, 0.842438, -0.338949,
		39.397892, 32.073700, 38.811195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837448, 31.487505, 39.286572>,  <39.104713, 31.483992, 39.048458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837448, 31.487505, 39.286572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.737488, 31.868349, 39.216103>,  <39.677513, 32.096855, 39.173820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.737488, 31.868349, 39.216103>,  <39.837448, 31.487505, 39.286572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737488, 31.868349, 39.216103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280093, 0.245250, 0.928116,
		0.926875, 0.182592, -0.327968,
		-0.249901, 0.952109, -0.176173,
		39.662518, 32.153980, 39.163250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458462, 31.828136, 39.477921>,  <39.837448, 31.487505, 39.286572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458462, 31.828136, 39.477921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147766, 32.079914, 39.469223>,  <39.961349, 32.230980, 39.464005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147766, 32.079914, 39.469223>,  <40.458462, 31.828136, 39.477921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147766, 32.079914, 39.469223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294823, 0.393886, 0.870594,
		0.556552, 0.669818, -0.491522,
		-0.776743, 0.629443, -0.021740,
		39.914742, 32.268745, 39.462700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740120, 32.480186, 39.783028>,  <40.458462, 31.828136, 39.477921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740120, 32.480186, 39.783028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343533, 32.530491, 39.796749>,  <40.105579, 32.560673, 39.804981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343533, 32.530491, 39.796749>,  <40.740120, 32.480186, 39.783028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343533, 32.530491, 39.796749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099565, 0.560688, 0.822020,
		0.084146, 0.818421, -0.568425,
		-0.991467, 0.125765, 0.034307,
		40.046093, 32.568222, 39.807041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662457, 33.202557, 39.856419>,  <40.740120, 32.480186, 39.783028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662457, 33.202557, 39.856419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339062, 33.020977, 40.006237>,  <40.145027, 32.912029, 40.096130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339062, 33.020977, 40.006237>,  <40.662457, 33.202557, 39.856419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339062, 33.020977, 40.006237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029730, 0.667117, 0.744360,
		-0.587767, 0.590667, -0.552849,
		-0.808484, -0.453946, 0.374548,
		40.096516, 32.884792, 40.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318703, 33.687187, 39.979717>,  <40.662457, 33.202557, 39.856419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318703, 33.687187, 39.979717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166183, 33.401886, 40.214966>,  <40.074673, 33.230705, 40.356113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166183, 33.401886, 40.214966>,  <40.318703, 33.687187, 39.979717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166183, 33.401886, 40.214966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004180, 0.634846, 0.772627,
		-0.924441, 0.297064, -0.239087,
		-0.381303, -0.713249, 0.588119,
		40.051792, 33.187912, 40.391403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877907, 33.994690, 40.313698>,  <40.318703, 33.687187, 39.979717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877907, 33.994690, 40.313698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826775, 34.225952, 40.636036>,  <40.796093, 34.364712, 40.829441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826775, 34.225952, 40.636036>,  <40.877907, 33.994690, 40.313698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826775, 34.225952, 40.636036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842460, -0.365465, 0.395848,
		0.523373, 0.729497, -0.440358,
		-0.127835, 0.578160, 0.805847,
		40.788425, 34.399399, 40.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251545, 34.491535, 40.019783>,  <40.877907, 33.994690, 40.313698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251545, 34.491535, 40.019783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997314, 34.800266, 40.012508>,  <39.844776, 34.985504, 40.008144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.997314, 34.800266, 40.012508>,  <40.251545, 34.491535, 40.019783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997314, 34.800266, 40.012508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279734, -0.252182, -0.926365,
		-0.719578, -0.583687, 0.376186,
		-0.635576, 0.771825, -0.018188,
		39.806641, 35.031815, 40.007053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601997, 34.210255, 39.723568>,  <40.251545, 34.491535, 40.019783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601997, 34.210255, 39.723568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591042, 34.609020, 39.694141>,  <39.584469, 34.848278, 39.676487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591042, 34.609020, 39.694141>,  <39.601997, 34.210255, 39.723568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591042, 34.609020, 39.694141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411589, -0.078315, -0.907998,
		-0.910958, 0.005406, 0.412464,
		-0.027394, 0.996914, -0.073566,
		39.582825, 34.908096, 39.672070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883373, 34.261391, 39.469261>,  <39.601997, 34.210255, 39.723568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883373, 34.261391, 39.469261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007633, 34.633636, 39.391846>,  <39.082191, 34.856983, 39.345398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007633, 34.633636, 39.391846>,  <38.883373, 34.261391, 39.469261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007633, 34.633636, 39.391846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426903, -0.045324, -0.903161,
		-0.849264, 0.363192, 0.383201,
		0.310652, 0.930611, -0.193540,
		39.100830, 34.912819, 39.333782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292767, 34.725437, 39.309772>,  <38.883373, 34.261391, 39.469261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292767, 34.725437, 39.309772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616074, 34.895367, 39.146690>,  <38.810059, 34.997322, 39.048840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616074, 34.895367, 39.146690>,  <38.292767, 34.725437, 39.309772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616074, 34.895367, 39.146690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462222, 0.028839, -0.886295,
		-0.364759, 0.904818, 0.219671,
		0.808271, 0.424821, -0.407707,
		38.858555, 35.022812, 39.024380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028419, 35.288811, 38.928761>,  <38.292767, 34.725437, 39.309772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028419, 35.288811, 38.928761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395687, 35.214996, 38.788528>,  <38.616047, 35.170708, 38.704388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395687, 35.214996, 38.788528>,  <38.028419, 35.288811, 38.928761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395687, 35.214996, 38.788528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363097, -0.037941, -0.930978,
		0.158496, 0.982093, -0.101840,
		0.918172, -0.184535, -0.350582,
		38.671139, 35.159637, 38.683353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046516, 35.681931, 38.304321>,  <38.028419, 35.288811, 38.928761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046516, 35.681931, 38.304321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.366924, 35.444775, 38.271214>,  <38.559170, 35.302479, 38.251347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.366924, 35.444775, 38.271214>,  <38.046516, 35.681931, 38.304321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366924, 35.444775, 38.271214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144445, -0.057237, -0.987856,
		0.580954, 0.803245, -0.131489,
		0.801017, -0.592892, -0.082773,
		38.607231, 35.266907, 38.246380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390976, 35.891895, 37.698311>,  <38.046516, 35.681931, 38.304321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390976, 35.891895, 37.698311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.546421, 35.528194, 37.757965>,  <38.639687, 35.309975, 37.793758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.546421, 35.528194, 37.757965>,  <38.390976, 35.891895, 37.698311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546421, 35.528194, 37.757965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047170, -0.181276, -0.982300,
		0.920194, 0.374697, -0.113335,
		0.388610, -0.909253, 0.149135,
		38.663006, 35.255417, 37.802704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925152, 35.720303, 37.110184>,  <38.390976, 35.891895, 37.698311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925152, 35.720303, 37.110184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791241, 35.369614, 37.248333>,  <38.710892, 35.159203, 37.331223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791241, 35.369614, 37.248333>,  <38.925152, 35.720303, 37.110184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791241, 35.369614, 37.248333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232422, -0.278370, -0.931928,
		0.913182, -0.392265, -0.110576,
		-0.334782, -0.876720, 0.345374,
		38.690807, 35.106598, 37.351944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286888, 35.156273, 36.712109>,  <38.925152, 35.720303, 37.110184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286888, 35.156273, 36.712109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979023, 34.958694, 36.873917>,  <38.794304, 34.840149, 36.971001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979023, 34.958694, 36.873917>,  <39.286888, 35.156273, 36.712109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979023, 34.958694, 36.873917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199907, -0.415295, -0.887450,
		0.606348, -0.763904, 0.220893,
		-0.769662, -0.493945, 0.404523,
		38.748123, 34.810513, 36.995274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445930, 34.504162, 36.584309>,  <39.286888, 35.156273, 36.712109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445930, 34.504162, 36.584309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050472, 34.516159, 36.643208>,  <38.813198, 34.523357, 36.678547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050472, 34.516159, 36.643208>,  <39.445930, 34.504162, 36.584309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050472, 34.516159, 36.643208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136980, -0.582811, -0.800980,
		0.061792, -0.812054, 0.580301,
		-0.988644, 0.029995, 0.147249,
		38.753880, 34.525158, 36.687382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244423, 33.820362, 36.616444>,  <39.445930, 34.504162, 36.584309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244423, 33.820362, 36.616444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919399, 34.023201, 36.501484>,  <38.724384, 34.144905, 36.432507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919399, 34.023201, 36.501484>,  <39.244423, 33.820362, 36.616444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919399, 34.023201, 36.501484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016458, -0.512838, -0.858328,
		-0.582644, -0.692714, 0.425058,
		-0.812561, 0.507095, -0.287401,
		38.675629, 34.175327, 36.415264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867569, 33.353283, 36.357334>,  <39.244423, 33.820362, 36.616444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867569, 33.353283, 36.357334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666466, 33.668526, 36.215282>,  <38.545803, 33.857670, 36.130051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.666466, 33.668526, 36.215282>,  <38.867569, 33.353283, 36.357334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666466, 33.668526, 36.215282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073637, -0.448382, -0.890804,
		-0.861283, -0.421711, 0.283463,
		-0.502762, 0.788108, -0.355130,
		38.515636, 33.904957, 36.108742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321686, 33.106083, 35.883160>,  <38.867569, 33.353283, 36.357334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321686, 33.106083, 35.883160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348381, 33.486504, 35.762463>,  <38.364399, 33.714756, 35.690044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348381, 33.486504, 35.762463>,  <38.321686, 33.106083, 35.883160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348381, 33.486504, 35.762463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006628, -0.301983, -0.953290,
		-0.997748, 0.065623, -0.013851,
		0.066741, 0.951052, -0.301738,
		38.368404, 33.771820, 35.671940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686249, 33.270596, 35.559780>,  <38.321686, 33.106083, 35.883160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686249, 33.270596, 35.559780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950462, 33.535213, 35.417763>,  <38.108990, 33.693985, 35.332554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950462, 33.535213, 35.417763>,  <37.686249, 33.270596, 35.559780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950462, 33.535213, 35.417763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242114, -0.259938, -0.934780,
		-0.710688, 0.703413, -0.011528,
		0.660533, 0.661546, -0.355041,
		38.148621, 33.733677, 35.311249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962006, 33.526772, 35.461597>,  <37.686249, 33.270596, 35.559780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962006, 33.526772, 35.461597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.562054, 33.524445, 35.455791>,  <36.322083, 33.523048, 35.452309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.562054, 33.524445, 35.455791>,  <36.962006, 33.526772, 35.461597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562054, 33.524445, 35.455791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015146, 0.591704, 0.806013,
		0.003896, 0.806134, -0.591720,
		-0.999878, -0.005822, -0.014515,
		36.262089, 33.522697, 35.451435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725849, 34.191723, 35.301945>,  <36.962006, 33.526772, 35.461597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725849, 34.191723, 35.301945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403919, 34.029999, 35.475746>,  <36.210762, 33.932964, 35.580029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403919, 34.029999, 35.475746>,  <36.725849, 34.191723, 35.301945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403919, 34.029999, 35.475746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101513, 0.815070, 0.570400,
		-0.584770, 0.414963, -0.697029,
		-0.804823, -0.404310, 0.434504,
		36.162472, 33.908707, 35.606098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208027, 34.653881, 35.375416>,  <36.725849, 34.191723, 35.301945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208027, 34.653881, 35.375416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.081722, 34.384663, 35.642937>,  <36.005939, 34.223129, 35.803452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.081722, 34.384663, 35.642937>,  <36.208027, 34.653881, 35.375416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081722, 34.384663, 35.642937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351297, 0.737705, 0.576526,
		-0.881410, -0.052902, -0.469380,
		-0.315764, -0.673048, 0.668804,
		35.986992, 34.182747, 35.843578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632488, 34.979263, 35.703362>,  <36.208027, 34.653881, 35.375416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632488, 34.979263, 35.703362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.687901, 34.667233, 35.947422>,  <35.721146, 34.480015, 36.093857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.687901, 34.667233, 35.947422>,  <35.632488, 34.979263, 35.703362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687901, 34.667233, 35.947422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296095, 0.555290, 0.777162,
		-0.945060, -0.288321, -0.154055,
		0.138527, -0.780080, 0.610152,
		35.729458, 34.433208, 36.130466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060768, 34.843449, 36.139912>,  <35.632488, 34.979263, 35.703362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060768, 34.843449, 36.139912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.365276, 34.690254, 36.349209>,  <35.547981, 34.598339, 36.474789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.365276, 34.690254, 36.349209>,  <35.060768, 34.843449, 36.139912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365276, 34.690254, 36.349209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133066, 0.697498, 0.704123,
		-0.634630, -0.605657, 0.480025,
		0.761274, -0.382983, 0.523246,
		35.593658, 34.575359, 36.506184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700386, 34.816181, 36.753803>,  <35.060768, 34.843449, 36.139912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700386, 34.816181, 36.753803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.089256, 34.756008, 36.825638>,  <35.322578, 34.719902, 36.868740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.089256, 34.756008, 36.825638>,  <34.700386, 34.816181, 36.753803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089256, 34.756008, 36.825638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048232, 0.621627, 0.781827,
		-0.229251, -0.768732, 0.597072,
		0.972172, -0.150436, 0.179586,
		35.380909, 34.710876, 36.879513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773392, 34.714691, 37.438992>,  <34.700386, 34.816181, 36.753803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773392, 34.714691, 37.438992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.136887, 34.825493, 37.314114>,  <35.354984, 34.891975, 37.239185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.136887, 34.825493, 37.314114>,  <34.773392, 34.714691, 37.438992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136887, 34.825493, 37.314114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096794, 0.867482, 0.487961,
		0.405995, -0.413208, 0.815124,
		0.908735, 0.277009, -0.312197,
		35.409508, 34.908596, 37.220455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275928, 34.654846, 38.092289>,  <34.773392, 34.714691, 37.438992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275928, 34.654846, 38.092289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.369572, 34.912140, 37.800690>,  <35.425758, 35.066517, 37.625729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.369572, 34.912140, 37.800690>,  <35.275928, 34.654846, 38.092289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369572, 34.912140, 37.800690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191940, 0.765658, 0.613944,
		0.953076, -0.003802, 0.302706,
		0.234103, 0.643237, -0.729001,
		35.439804, 35.105110, 37.581989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532001, 35.084278, 38.430462>,  <35.275928, 34.654846, 38.092289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532001, 35.084278, 38.430462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450626, 35.283268, 38.093147>,  <35.401802, 35.402660, 37.890759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.450626, 35.283268, 38.093147>,  <35.532001, 35.084278, 38.430462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450626, 35.283268, 38.093147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257282, 0.803868, 0.536285,
		0.944678, 0.326066, -0.035549,
		-0.203441, 0.497471, -0.843288,
		35.389595, 35.432510, 37.840160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631802, 35.825909, 38.598156>,  <35.532001, 35.084278, 38.430462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631802, 35.825909, 38.598156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445446, 35.882263, 38.248734>,  <35.333633, 35.916077, 38.039082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445446, 35.882263, 38.248734>,  <35.631802, 35.825909, 38.598156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445446, 35.882263, 38.248734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369588, 0.866016, 0.336780,
		0.803962, 0.479757, -0.351395,
		-0.465886, 0.140887, -0.873557,
		35.305679, 35.924530, 37.986668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729115, 36.467148, 38.570621>,  <35.631802, 35.825909, 38.598156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729115, 36.467148, 38.570621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.438786, 36.382637, 38.308765>,  <35.264587, 36.331932, 38.151653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.438786, 36.382637, 38.308765>,  <35.729115, 36.467148, 38.570621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438786, 36.382637, 38.308765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338891, 0.937988, 0.073020,
		0.598615, 0.274850, -0.752408,
		-0.725819, -0.211273, -0.654637,
		35.221039, 36.319256, 38.112373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727314, 36.981197, 38.015057>,  <35.729115, 36.467148, 38.570621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727314, 36.981197, 38.015057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.374744, 36.798260, 38.062260>,  <35.163200, 36.688499, 38.090580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.374744, 36.798260, 38.062260>,  <35.727314, 36.981197, 38.015057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374744, 36.798260, 38.062260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406230, 0.861514, 0.304584,
		-0.240961, 0.220532, -0.945147,
		-0.881428, -0.457340, 0.118004,
		35.110317, 36.661057, 38.097660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.158123, 32.991329, 31.893806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833614, 32.769623, 31.968241>,  <35.638908, 32.636597, 32.012901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833614, 32.769623, 31.968241>,  <36.158123, 32.991329, 31.893806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833614, 32.769623, 31.968241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044629, 0.258638, 0.964943,
		-0.582967, 0.791133, -0.185089,
		-0.811269, -0.554270, 0.186085,
		35.590233, 32.603340, 32.024067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694901, 33.451786, 32.296406>,  <36.158123, 32.991329, 31.893806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694901, 33.451786, 32.296406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621727, 33.070709, 32.393494>,  <35.577824, 32.842064, 32.451748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621727, 33.070709, 32.393494>,  <35.694901, 33.451786, 32.296406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621727, 33.070709, 32.393494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003540, 0.246249, 0.969200,
		-0.983119, 0.178158, -0.041675,
		-0.182933, -0.952692, 0.242723,
		35.566849, 32.784901, 32.466309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095295, 33.483807, 32.775105>,  <35.694901, 33.451786, 32.296406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095295, 33.483807, 32.775105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285038, 33.134121, 32.816551>,  <35.398884, 32.924309, 32.841419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285038, 33.134121, 32.816551>,  <35.095295, 33.483807, 32.775105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285038, 33.134121, 32.816551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048780, 0.091418, 0.994617,
		-0.878979, -0.476860, 0.000721,
		0.474359, -0.874212, 0.103616,
		35.427345, 32.871857, 32.847637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638527, 33.042854, 33.191338>,  <35.095295, 33.483807, 32.775105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638527, 33.042854, 33.191338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004814, 32.886227, 33.227428>,  <35.224586, 32.792252, 33.249081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004814, 32.886227, 33.227428>,  <34.638527, 33.042854, 33.191338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004814, 32.886227, 33.227428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027189, 0.163640, 0.986145,
		-0.400906, -0.905482, 0.139201,
		0.915716, -0.391567, 0.090224,
		35.279530, 32.768757, 33.254494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650963, 32.850597, 33.803509>,  <34.638527, 33.042854, 33.191338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650963, 32.850597, 33.803509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041584, 32.870102, 33.719643>,  <35.275959, 32.881805, 33.669323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041584, 32.870102, 33.719643>,  <34.650963, 32.850597, 33.803509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041584, 32.870102, 33.719643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186916, 0.291039, 0.938274,
		0.106768, -0.955468, 0.275103,
		0.976557, 0.048756, -0.209666,
		35.334553, 32.884727, 33.656742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981350, 32.436363, 34.341888>,  <34.650963, 32.850597, 33.803509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981350, 32.436363, 34.341888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274620, 32.664581, 34.193871>,  <35.450581, 32.801514, 34.105061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274620, 32.664581, 34.193871>,  <34.981350, 32.436363, 34.341888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274620, 32.664581, 34.193871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371407, 0.119866, 0.920700,
		0.569657, -0.812471, -0.124022,
		0.733176, 0.570546, -0.370040,
		35.494572, 32.835747, 34.082859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570526, 32.214413, 34.675663>,  <34.981350, 32.436363, 34.341888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570526, 32.214413, 34.675663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646305, 32.586739, 34.550636>,  <35.691772, 32.810135, 34.475620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646305, 32.586739, 34.550636>,  <35.570526, 32.214413, 34.675663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646305, 32.586739, 34.550636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416702, 0.212027, 0.883971,
		0.889084, -0.297709, -0.347705,
		0.189444, 0.930814, -0.312566,
		35.703136, 32.865982, 34.456867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279728, 32.408726, 34.947044>,  <35.570526, 32.214413, 34.675663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279728, 32.408726, 34.947044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134300, 32.762077, 34.828751>,  <36.047043, 32.974087, 34.757774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134300, 32.762077, 34.828751>,  <36.279728, 32.408726, 34.947044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134300, 32.762077, 34.828751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414158, 0.437640, 0.798088,
		0.834440, 0.167678, -0.524971,
		-0.363570, 0.883377, -0.295739,
		36.025230, 33.027092, 34.740028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825428, 32.922939, 34.980606>,  <36.279728, 32.408726, 34.947044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825428, 32.922939, 34.980606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465622, 33.091949, 35.025040>,  <36.249737, 33.193356, 35.051701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465622, 33.091949, 35.025040>,  <36.825428, 32.922939, 34.980606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465622, 33.091949, 35.025040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331794, 0.495294, 0.802868,
		0.284213, 0.759051, -0.585717,
		-0.899520, 0.422523, 0.111080,
		36.195766, 33.218708, 35.058365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266350, 33.568089, 34.767567>,  <36.825428, 32.922939, 34.980606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266350, 33.568089, 34.767567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657307, 33.630299, 34.824871>,  <37.891880, 33.667625, 34.859253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657307, 33.630299, 34.824871>,  <37.266350, 33.568089, 34.767567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657307, 33.630299, 34.824871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139502, 0.034857, -0.989608,
		-0.158905, 0.987216, 0.012372,
		0.977388, 0.155528, 0.143258,
		37.950523, 33.676956, 34.867847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446388, 34.010620, 34.297771>,  <37.266350, 33.568089, 34.767567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446388, 34.010620, 34.297771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803005, 33.848301, 34.378250>,  <38.016975, 33.750908, 34.426537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803005, 33.848301, 34.378250>,  <37.446388, 34.010620, 34.297771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803005, 33.848301, 34.378250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197311, -0.051889, -0.978967,
		0.407702, 0.912489, 0.033807,
		0.891542, -0.405797, 0.201199,
		38.070469, 33.726562, 34.438610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933567, 34.368534, 33.870483>,  <37.446388, 34.010620, 34.297771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933567, 34.368534, 33.870483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096676, 34.012390, 33.951458>,  <38.194542, 33.798702, 34.000042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096676, 34.012390, 33.951458>,  <37.933567, 34.368534, 33.870483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096676, 34.012390, 33.951458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086808, -0.182897, -0.979292,
		0.908949, 0.416898, 0.002711,
		0.407769, -0.890362, 0.202434,
		38.219006, 33.745281, 34.012188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496647, 34.301311, 33.474541>,  <37.933567, 34.368534, 33.870483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496647, 34.301311, 33.474541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394855, 33.923847, 33.559155>,  <38.333782, 33.697369, 33.609921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394855, 33.923847, 33.559155>,  <38.496647, 34.301311, 33.474541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394855, 33.923847, 33.559155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119855, -0.247822, -0.961363,
		0.959622, -0.219294, 0.176168,
		-0.254479, -0.943660, 0.211532,
		38.318512, 33.640751, 33.622616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943790, 33.873756, 32.998596>,  <38.496647, 34.301311, 33.474541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943790, 33.873756, 32.998596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669765, 33.604370, 33.109688>,  <38.505352, 33.442738, 33.176342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669765, 33.604370, 33.109688>,  <38.943790, 33.873756, 32.998596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669765, 33.604370, 33.109688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085060, -0.304690, -0.948646,
		0.723503, -0.673504, 0.151446,
		-0.685061, -0.673465, 0.277732,
		38.464249, 33.402332, 33.193008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265266, 33.176010, 32.749619>,  <38.943790, 33.873756, 32.998596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265266, 33.176010, 32.749619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869286, 33.158821, 32.803493>,  <38.631695, 33.148506, 32.835819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869286, 33.158821, 32.803493>,  <39.265266, 33.176010, 32.749619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869286, 33.158821, 32.803493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101708, -0.445261, -0.889606,
		0.098205, -0.894369, 0.436417,
		-0.989956, -0.042977, 0.134691,
		38.572300, 33.145927, 32.843903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016373, 32.470535, 32.702976>,  <39.265266, 33.176010, 32.749619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016373, 32.470535, 32.702976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705219, 32.707745, 32.619823>,  <38.518528, 32.850071, 32.569931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705219, 32.707745, 32.619823>,  <39.016373, 32.470535, 32.702976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705219, 32.707745, 32.619823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053044, -0.391586, -0.918611,
		-0.626164, -0.703547, 0.336065,
		-0.777884, 0.593028, -0.207878,
		38.471855, 32.885654, 32.557461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539848, 31.974522, 32.354164>,  <39.016373, 32.470535, 32.702976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539848, 31.974522, 32.354164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398422, 32.338234, 32.266350>,  <38.313564, 32.556461, 32.213661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398422, 32.338234, 32.266350>,  <38.539848, 31.974522, 32.354164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398422, 32.338234, 32.266350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152790, -0.287685, -0.945459,
		-0.922846, -0.300742, 0.240645,
		-0.353569, 0.909281, -0.219539,
		38.292351, 32.611019, 32.200489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999451, 31.810186, 31.914730>,  <38.539848, 31.974522, 32.354164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999451, 31.810186, 31.914730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088093, 32.196499, 31.860836>,  <38.141277, 32.428288, 31.828499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088093, 32.196499, 31.860836>,  <37.999451, 31.810186, 31.914730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088093, 32.196499, 31.860836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210659, -0.182322, -0.960407,
		-0.952110, 0.184447, -0.243854,
		0.221605, 0.965783, -0.134736,
		38.154575, 32.486233, 31.820415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552353, 31.950891, 31.379370>,  <37.999451, 31.810186, 31.914730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552353, 31.950891, 31.379370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840900, 32.227909, 31.377985>,  <38.014027, 32.394119, 31.377153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840900, 32.227909, 31.377985>,  <37.552353, 31.950891, 31.379370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840900, 32.227909, 31.377985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138534, -0.149195, -0.979055,
		-0.678558, 0.705777, -0.203565,
		0.721365, 0.692546, -0.003464,
		38.057308, 32.435673, 31.376945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449955, 32.299458, 30.813875>,  <37.552353, 31.950891, 31.379370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449955, 32.299458, 30.813875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825611, 32.406044, 30.900604>,  <38.051006, 32.469997, 30.952641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825611, 32.406044, 30.900604>,  <37.449955, 32.299458, 30.813875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825611, 32.406044, 30.900604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246997, -0.085086, -0.965273,
		-0.238768, 0.960080, -0.145725,
		0.939139, 0.266470, 0.216821,
		38.107353, 32.485985, 30.965651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617023, 32.779343, 30.284792>,  <37.449955, 32.299458, 30.813875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617023, 32.779343, 30.284792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963768, 32.636501, 30.423948>,  <38.171814, 32.550797, 30.507442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963768, 32.636501, 30.423948>,  <37.617023, 32.779343, 30.284792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963768, 32.636501, 30.423948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306204, -0.169310, -0.936789,
		0.393433, 0.918592, -0.037422,
		0.866862, -0.357105, 0.347889,
		38.223827, 32.529369, 30.528315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171135, 33.149330, 29.882486>,  <37.617023, 32.779343, 30.284792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171135, 33.149330, 29.882486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297085, 32.807388, 30.047453>,  <38.372654, 32.602222, 30.146433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297085, 32.807388, 30.047453>,  <38.171135, 33.149330, 29.882486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297085, 32.807388, 30.047453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328069, -0.309709, -0.892441,
		0.890632, 0.416307, 0.182931,
		0.314874, -0.854850, 0.412414,
		38.391548, 32.550934, 30.171177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839325, 32.963535, 29.585127>,  <38.171135, 33.149330, 29.882486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839325, 32.963535, 29.585127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698578, 32.620823, 29.735916>,  <38.614128, 32.415195, 29.826389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698578, 32.620823, 29.735916>,  <38.839325, 32.963535, 29.585127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698578, 32.620823, 29.735916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151175, -0.449458, -0.880417,
		0.923760, -0.252805, 0.287676,
		-0.351872, -0.856783, 0.376973,
		38.593018, 32.363789, 29.849009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.069294, 26.455975, 32.973305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.266136, 26.764582, 32.812016>,  <33.384243, 26.949747, 32.715240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.266136, 26.764582, 32.812016>,  <33.069294, 26.455975, 32.973305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266136, 26.764582, 32.812016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044749, 0.484996, 0.873371,
		0.869384, -0.411747, 0.273195,
		0.492106, 0.771520, -0.403223,
		33.413769, 26.996038, 32.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619598, 26.462093, 33.369656>,  <33.069294, 26.455975, 32.973305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619598, 26.462093, 33.369656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565121, 26.821526, 33.202801>,  <33.532433, 27.037184, 33.102688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565121, 26.821526, 33.202801>,  <33.619598, 26.462093, 33.369656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565121, 26.821526, 33.202801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161617, 0.435575, 0.885525,
		0.977410, 0.053190, -0.204551,
		-0.136198, 0.898580, -0.417139,
		33.524261, 27.091099, 33.077660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119869, 26.934511, 33.720844>,  <33.619598, 26.462093, 33.369656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119869, 26.934511, 33.720844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893402, 27.204071, 33.530975>,  <33.757523, 27.365807, 33.417053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893402, 27.204071, 33.530975>,  <34.119869, 26.934511, 33.720844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893402, 27.204071, 33.530975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110915, 0.632900, 0.766247,
		0.816796, 0.381174, -0.433072,
		-0.566165, 0.673902, -0.474673,
		33.723553, 27.406242, 33.388573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528355, 27.402224, 33.656921>,  <34.119869, 26.934511, 33.720844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528355, 27.402224, 33.656921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.153915, 27.542805, 33.651237>,  <33.929253, 27.627153, 33.647827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.153915, 27.542805, 33.651237>,  <34.528355, 27.402224, 33.656921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153915, 27.542805, 33.651237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225002, 0.629379, 0.743812,
		0.270359, 0.693083, -0.668238,
		-0.936098, 0.351451, -0.014214,
		33.873085, 27.648239, 33.646973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711105, 28.081673, 33.825764>,  <34.528355, 27.402224, 33.656921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711105, 28.081673, 33.825764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321148, 28.024569, 33.894119>,  <34.087173, 27.990305, 33.935131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321148, 28.024569, 33.894119>,  <34.711105, 28.081673, 33.825764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321148, 28.024569, 33.894119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015418, 0.722316, 0.691391,
		-0.222138, 0.676667, -0.701980,
		-0.974893, -0.142761, 0.170887,
		34.028679, 27.981741, 33.945385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437969, 28.798437, 33.874386>,  <34.711105, 28.081673, 33.825764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437969, 28.798437, 33.874386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198273, 28.539690, 34.063053>,  <34.054455, 28.384441, 34.176254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198273, 28.539690, 34.063053>,  <34.437969, 28.798437, 33.874386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198273, 28.539690, 34.063053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121589, 0.655873, 0.745014,
		-0.791282, 0.389093, -0.471678,
		-0.599240, -0.646867, 0.471672,
		34.018501, 28.345631, 34.204556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316059, 29.185381, 34.374279>,  <34.437969, 28.798437, 33.874386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316059, 29.185381, 34.374279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136173, 28.845659, 34.484871>,  <34.028244, 28.641827, 34.551228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136173, 28.845659, 34.484871>,  <34.316059, 29.185381, 34.374279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136173, 28.845659, 34.484871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233662, 0.410641, 0.881349,
		-0.862068, 0.331750, -0.383120,
		-0.449712, -0.849304, 0.276483,
		34.001259, 28.590868, 34.567814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515194, 29.305552, 34.499866>,  <34.316059, 29.185381, 34.374279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515194, 29.305552, 34.499866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693977, 29.014364, 34.707825>,  <33.801247, 28.839651, 34.832600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693977, 29.014364, 34.707825>,  <33.515194, 29.305552, 34.499866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693977, 29.014364, 34.707825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120259, 0.527006, 0.841310,
		-0.886435, -0.438551, 0.148004,
		0.446957, -0.727968, 0.519897,
		33.828064, 28.795975, 34.863792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083622, 29.259668, 35.104588>,  <33.515194, 29.305552, 34.499866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083622, 29.259668, 35.104588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.443180, 29.101641, 35.180389>,  <33.658913, 29.006824, 35.225872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.443180, 29.101641, 35.180389>,  <33.083622, 29.259668, 35.104588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443180, 29.101641, 35.180389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011493, 0.411093, 0.911521,
		-0.438018, -0.821537, 0.364988,
		0.898893, -0.395068, 0.189509,
		33.712849, 28.983120, 35.237244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112801, 29.285406, 35.815411>,  <33.083622, 29.259668, 35.104588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112801, 29.285406, 35.815411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.496685, 29.185465, 35.763981>,  <33.727016, 29.125500, 35.733124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.496685, 29.185465, 35.763981>,  <33.112801, 29.285406, 35.815411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496685, 29.185465, 35.763981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177356, 0.183686, 0.966853,
		-0.217953, -0.950701, 0.220598,
		0.959709, -0.249853, -0.128578,
		33.784599, 29.110510, 35.725407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279221, 28.857365, 36.424824>,  <33.112801, 29.285406, 35.815411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279221, 28.857365, 36.424824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.617546, 29.004074, 36.269871>,  <33.820541, 29.092100, 36.176899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.617546, 29.004074, 36.269871>,  <33.279221, 28.857365, 36.424824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617546, 29.004074, 36.269871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226024, 0.411384, 0.882993,
		0.483225, -0.834409, 0.265055,
		0.845817, 0.366776, -0.387388,
		33.871292, 29.114107, 36.153656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807556, 28.687738, 36.891048>,  <33.279221, 28.857365, 36.424824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807556, 28.687738, 36.891048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.949623, 28.984417, 36.663456>,  <34.034863, 29.162424, 36.526901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.949623, 28.984417, 36.663456>,  <33.807556, 28.687738, 36.891048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949623, 28.984417, 36.663456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414863, 0.420384, 0.806949,
		0.837702, -0.522653, -0.158395,
		0.355168, 0.741695, -0.568986,
		34.056175, 29.206926, 36.492760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383987, 28.796751, 37.227955>,  <33.807556, 28.687738, 36.891048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383987, 28.796751, 37.227955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325207, 29.138685, 37.028893>,  <34.289940, 29.343845, 36.909454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325207, 29.138685, 37.028893>,  <34.383987, 28.796751, 37.227955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325207, 29.138685, 37.028893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350600, 0.515469, 0.781902,
		0.924925, -0.059579, -0.375452,
		-0.146949, 0.854835, -0.497658,
		34.281120, 29.395136, 36.879597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945290, 29.330477, 37.427555>,  <34.383987, 28.796751, 37.227955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945290, 29.330477, 37.427555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667187, 29.571104, 37.270214>,  <34.500324, 29.715481, 37.175808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.667187, 29.571104, 37.270214>,  <34.945290, 29.330477, 37.427555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667187, 29.571104, 37.270214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251667, 0.716375, 0.650746,
		0.673259, 0.353442, -0.649462,
		-0.695260, 0.601569, -0.393356,
		34.458611, 29.751575, 37.152206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513657, 29.706238, 37.129318>,  <34.945290, 29.330477, 37.427555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513657, 29.706238, 37.129318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908661, 29.643225, 37.127888>,  <36.145664, 29.605417, 37.127029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908661, 29.643225, 37.127888>,  <35.513657, 29.706238, 37.129318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908661, 29.643225, 37.127888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066616, -0.396778, -0.915494,
		0.142800, 0.904296, -0.402316,
		0.987507, -0.157533, -0.003581,
		36.204914, 29.595964, 37.126812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700218, 29.975426, 36.531315>,  <35.513657, 29.706238, 37.129318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700218, 29.975426, 36.531315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980282, 29.715414, 36.649460>,  <36.148319, 29.559406, 36.720348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980282, 29.715414, 36.649460>,  <35.700218, 29.975426, 36.531315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980282, 29.715414, 36.649460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043427, -0.451688, -0.891119,
		0.712665, 0.611098, -0.344482,
		0.700159, -0.650029, 0.295364,
		36.190331, 29.520405, 36.738068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300228, 30.115747, 36.191883>,  <35.700218, 29.975426, 36.531315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300228, 30.115747, 36.191883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.358051, 29.730127, 36.281067>,  <36.392746, 29.498755, 36.334579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.358051, 29.730127, 36.281067>,  <36.300228, 30.115747, 36.191883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358051, 29.730127, 36.281067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116847, -0.207121, -0.971312,
		0.982574, 0.166460, 0.082706,
		0.144554, -0.964050, 0.222962,
		36.401417, 29.440912, 36.347954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840195, 29.906803, 35.805286>,  <36.300228, 30.115747, 36.191883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840195, 29.906803, 35.805286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713444, 29.544920, 35.919193>,  <36.637394, 29.327791, 35.987537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.713444, 29.544920, 35.919193>,  <36.840195, 29.906803, 35.805286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713444, 29.544920, 35.919193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268519, -0.373532, -0.887903,
		0.909663, -0.204889, 0.361294,
		-0.316876, -0.904707, 0.284772,
		36.618382, 29.273508, 36.004623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376602, 29.401081, 35.755753>,  <36.840195, 29.906803, 35.805286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376602, 29.401081, 35.755753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034042, 29.194733, 35.747147>,  <36.828506, 29.070923, 35.741985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034042, 29.194733, 35.747147>,  <37.376602, 29.401081, 35.755753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034042, 29.194733, 35.747147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287747, -0.442262, -0.849474,
		0.428706, -0.733676, 0.527192,
		-0.856395, -0.515872, -0.021513,
		36.777122, 29.039970, 35.740692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579128, 28.631407, 35.533688>,  <37.376602, 29.401081, 35.755753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579128, 28.631407, 35.533688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189606, 28.677885, 35.455502>,  <36.955894, 28.705772, 35.408592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189606, 28.677885, 35.455502>,  <37.579128, 28.631407, 35.533688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189606, 28.677885, 35.455502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102596, -0.542598, -0.833703,
		-0.202930, -0.831917, 0.516462,
		-0.973804, 0.116196, -0.195461,
		36.897465, 28.712744, 35.396862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335178, 27.923027, 35.267590>,  <37.579128, 28.631407, 35.533688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335178, 27.923027, 35.267590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058601, 28.183527, 35.142506>,  <36.892654, 28.339827, 35.067455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.058601, 28.183527, 35.142506>,  <37.335178, 27.923027, 35.267590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058601, 28.183527, 35.142506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156475, -0.557581, -0.815242,
		-0.705287, -0.514757, 0.487437,
		-0.691437, 0.651252, -0.312708,
		36.851170, 28.378902, 35.048695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743256, 27.580492, 35.068710>,  <37.335178, 27.923027, 35.267590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743256, 27.580492, 35.068710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706936, 27.927469, 34.873039>,  <36.685143, 28.135656, 34.755638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706936, 27.927469, 34.873039>,  <36.743256, 27.580492, 35.068710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706936, 27.927469, 34.873039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252405, -0.495215, -0.831296,
		-0.963352, 0.047988, 0.263914,
		-0.090802, 0.867444, -0.489179,
		36.679695, 28.187702, 34.726284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172127, 27.416098, 34.492352>,  <36.743256, 27.580492, 35.068710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172127, 27.416098, 34.492352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335213, 27.758427, 34.365021>,  <36.433064, 27.963825, 34.288620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335213, 27.758427, 34.365021>,  <36.172127, 27.416098, 34.492352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335213, 27.758427, 34.365021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088173, -0.310091, -0.946609,
		-0.908842, 0.414015, -0.050969,
		0.407716, 0.855824, -0.318328,
		36.457527, 28.015175, 34.269524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723362, 27.713140, 34.068821>,  <36.172127, 27.416098, 34.492352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723362, 27.713140, 34.068821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068134, 27.889318, 33.968353>,  <36.274998, 27.995026, 33.908073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068134, 27.889318, 33.968353>,  <35.723362, 27.713140, 34.068821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068134, 27.889318, 33.968353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162449, -0.229367, -0.959688,
		-0.480301, 0.867984, -0.126148,
		0.861929, 0.440447, -0.251168,
		36.326714, 28.021452, 33.893002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571728, 28.315449, 33.588440>,  <35.723362, 27.713140, 34.068821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571728, 28.315449, 33.588440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938644, 28.166132, 33.532970>,  <36.158794, 28.076542, 33.499691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938644, 28.166132, 33.532970>,  <35.571728, 28.315449, 33.588440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938644, 28.166132, 33.532970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206710, -0.148718, -0.967034,
		0.340363, 0.915716, -0.213581,
		0.917292, -0.373292, -0.138670,
		36.213833, 28.054144, 33.491371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752987, 28.518448, 32.936153>,  <35.571728, 28.315449, 33.588440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752987, 28.518448, 32.936153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037552, 28.245558, 33.003639>,  <36.208290, 28.081823, 33.044132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037552, 28.245558, 33.003639>,  <35.752987, 28.518448, 32.936153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037552, 28.245558, 33.003639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065897, -0.303769, -0.950464,
		0.699683, 0.665050, -0.261060,
		0.711408, -0.682227, 0.168717,
		36.250973, 28.040890, 33.054253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277466, 28.697575, 32.463104>,  <35.752987, 28.518448, 32.936153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277466, 28.697575, 32.463104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299431, 28.309320, 32.556782>,  <36.312611, 28.076368, 32.612988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299431, 28.309320, 32.556782>,  <36.277466, 28.697575, 32.463104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299431, 28.309320, 32.556782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200204, -0.219086, -0.954945,
		0.978214, 0.099325, 0.182295,
		0.054912, -0.970637, 0.234198,
		36.315903, 28.018129, 32.627041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923122, 28.357492, 31.998066>,  <36.277466, 28.697575, 32.463104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923122, 28.357492, 31.998066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691463, 28.047306, 32.098660>,  <36.552467, 27.861195, 32.159016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.691463, 28.047306, 32.098660>,  <36.923122, 28.357492, 31.998066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691463, 28.047306, 32.098660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168954, -0.415961, -0.893550,
		0.797523, -0.475007, 0.371921,
		-0.579147, -0.775464, 0.251485,
		36.517719, 27.814667, 32.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552906, 28.390646, 31.894016>,  <36.923122, 28.357492, 31.998066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552906, 28.390646, 31.894016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884098, 28.545088, 31.731352>,  <38.082813, 28.637753, 31.633753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.884098, 28.545088, 31.731352>,  <37.552906, 28.390646, 31.894016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884098, 28.545088, 31.731352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243005, 0.406516, 0.880735,
		0.505370, -0.828051, 0.242761,
		0.827979, 0.386105, -0.406661,
		38.132492, 28.660919, 31.609354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016727, 28.266727, 32.355186>,  <37.552906, 28.390646, 31.894016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016727, 28.266727, 32.355186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167629, 28.551489, 32.118248>,  <38.258171, 28.722345, 31.976084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167629, 28.551489, 32.118248>,  <38.016727, 28.266727, 32.355186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167629, 28.551489, 32.118248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302283, 0.509923, 0.805359,
		0.875389, -0.482880, -0.022826,
		0.377252, 0.711902, -0.592348,
		38.280804, 28.765060, 31.940544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671318, 28.224701, 32.540760>,  <38.016727, 28.266727, 32.355186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671318, 28.224701, 32.540760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550980, 28.572956, 32.385078>,  <38.478775, 28.781910, 32.291668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550980, 28.572956, 32.385078>,  <38.671318, 28.224701, 32.540760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550980, 28.572956, 32.385078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371226, 0.482833, 0.793135,
		0.878455, 0.094128, -0.468462,
		-0.300845, 0.870639, -0.389205,
		38.460728, 28.834148, 32.268318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279408, 28.681543, 32.835430>,  <38.671318, 28.224701, 32.540760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279408, 28.681543, 32.835430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965797, 28.901051, 32.719387>,  <38.777634, 29.032755, 32.649761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965797, 28.901051, 32.719387>,  <39.279408, 28.681543, 32.835430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965797, 28.901051, 32.719387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183604, 0.651465, 0.736127,
		0.592958, 0.523875, -0.611519,
		-0.784022, 0.548770, -0.290106,
		38.730591, 29.065681, 32.632355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459160, 29.449093, 32.652493>,  <39.279408, 28.681543, 32.835430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459160, 29.449093, 32.652493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064495, 29.455891, 32.717243>,  <38.827694, 29.459969, 32.756092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064495, 29.455891, 32.717243>,  <39.459160, 29.449093, 32.652493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064495, 29.455891, 32.717243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117942, 0.760038, 0.639086,
		-0.112174, 0.649656, -0.751907,
		-0.986665, 0.016992, 0.161878,
		38.768497, 29.460989, 32.765808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359280, 30.096342, 32.652012>,  <39.459160, 29.449093, 32.652493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359280, 30.096342, 32.652012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024170, 29.963976, 32.825737>,  <38.823105, 29.884556, 32.929974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024170, 29.963976, 32.825737>,  <39.359280, 30.096342, 32.652012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024170, 29.963976, 32.825737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016988, 0.779239, 0.626496,
		-0.545752, 0.532241, -0.647205,
		-0.837774, -0.330917, 0.434313,
		38.772839, 29.864700, 32.956032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012951, 30.619122, 32.838829>,  <39.359280, 30.096342, 32.652012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012951, 30.619122, 32.838829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858467, 30.335012, 33.074238>,  <38.765778, 30.164547, 33.215485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858467, 30.335012, 33.074238>,  <39.012951, 30.619122, 32.838829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858467, 30.335012, 33.074238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029747, 0.628102, 0.777562,
		-0.921931, 0.317809, -0.221450,
		-0.386209, -0.710271, 0.588521,
		38.742603, 30.121931, 33.250793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563503, 30.981462, 33.343811>,  <39.012951, 30.619122, 32.838829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563503, 30.981462, 33.343811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667881, 30.628208, 33.499748>,  <38.730507, 30.416256, 33.593311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.667881, 30.628208, 33.499748>,  <38.563503, 30.981462, 33.343811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667881, 30.628208, 33.499748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287652, 0.456625, 0.841873,
		-0.921501, -0.107544, 0.373190,
		0.260947, -0.883135, 0.389844,
		38.746166, 30.363268, 33.616703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335995, 30.985504, 33.946350>,  <38.563503, 30.981462, 33.343811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335995, 30.985504, 33.946350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616196, 30.705770, 34.003239>,  <38.784317, 30.537930, 34.037373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616196, 30.705770, 34.003239>,  <38.335995, 30.985504, 33.946350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616196, 30.705770, 34.003239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168334, 0.355583, 0.919361,
		-0.693511, -0.620076, 0.366809,
		0.700504, -0.699333, 0.142220,
		38.826347, 30.495970, 34.045906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185921, 30.815233, 34.609455>,  <38.335995, 30.985504, 33.946350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185921, 30.815233, 34.609455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.538464, 30.654394, 34.510239>,  <38.749989, 30.557890, 34.450706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.538464, 30.654394, 34.510239>,  <38.185921, 30.815233, 34.609455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538464, 30.654394, 34.510239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366271, 0.249910, 0.896321,
		-0.298420, -0.880831, 0.367537,
		0.881357, -0.402098, -0.248045,
		38.802872, 30.533766, 34.435825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450344, 30.506065, 35.191025>,  <38.185921, 30.815233, 34.609455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450344, 30.506065, 35.191025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790672, 30.516838, 34.981117>,  <38.994869, 30.523302, 34.855175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790672, 30.516838, 34.981117>,  <38.450344, 30.506065, 35.191025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790672, 30.516838, 34.981117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485076, 0.343665, 0.804111,
		0.201998, -0.938706, 0.279335,
		0.850822, 0.026930, -0.524764,
		39.045918, 30.524918, 34.823689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991730, 30.090578, 35.541771>,  <38.450344, 30.506065, 35.191025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991730, 30.090578, 35.541771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.155342, 30.370667, 35.307716>,  <39.253510, 30.538719, 35.167282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.155342, 30.370667, 35.307716>,  <38.991730, 30.090578, 35.541771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155342, 30.370667, 35.307716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458473, 0.396727, 0.795242,
		0.788986, -0.593546, -0.158760,
		0.409028, 0.700222, -0.585136,
		39.278049, 30.580732, 35.132175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641865, 30.093002, 35.677746>,  <38.991730, 30.090578, 35.541771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641865, 30.093002, 35.677746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.603527, 30.449976, 35.501392>,  <39.580524, 30.664160, 35.395580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.603527, 30.449976, 35.501392>,  <39.641865, 30.093002, 35.677746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603527, 30.449976, 35.501392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523095, 0.421989, 0.740471,
		0.846868, -0.159651, -0.507274,
		-0.095847, 0.892433, -0.440882,
		39.574772, 30.717707, 35.369129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372845, 30.463469, 35.643757>,  <39.641865, 30.093002, 35.677746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372845, 30.463469, 35.643757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068199, 30.722683, 35.643810>,  <39.885414, 30.878212, 35.643841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068199, 30.722683, 35.643810>,  <40.372845, 30.463469, 35.643757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068199, 30.722683, 35.643810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463300, 0.544355, 0.699307,
		0.453102, 0.532663, -0.714821,
		-0.761611, 0.648034, 0.000135,
		39.839714, 30.917093, 35.643852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.673046, 32.034298, 29.438812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306152, 31.915754, 29.545288>,  <39.086018, 31.844627, 29.609173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.306152, 31.915754, 29.545288>,  <39.673046, 32.034298, 29.438812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306152, 31.915754, 29.545288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042876, -0.590890, -0.805612,
		0.396041, -0.750346, 0.529276,
		-0.917231, -0.296362, 0.266189,
		39.030983, 31.826845, 29.625145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718956, 31.326195, 29.430429>,  <39.673046, 32.034298, 29.438812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718956, 31.326195, 29.430429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333061, 31.420527, 29.383677>,  <39.101524, 31.477125, 29.355625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.333061, 31.420527, 29.383677>,  <39.718956, 31.326195, 29.430429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333061, 31.420527, 29.383677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084827, -0.698963, -0.710109,
		-0.249159, -0.675156, 0.694322,
		-0.964740, 0.235827, -0.116882,
		39.043640, 31.491274, 29.348612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556095, 30.696318, 29.401278>,  <39.718956, 31.326195, 29.430429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556095, 30.696318, 29.401278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232964, 30.882421, 29.256531>,  <39.039085, 30.994083, 29.169683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.232964, 30.882421, 29.256531>,  <39.556095, 30.696318, 29.401278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232964, 30.882421, 29.256531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158844, -0.763071, -0.626492,
		-0.567610, -0.448618, 0.690334,
		-0.807829, 0.465258, -0.361866,
		38.990616, 31.021999, 29.147970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026611, 30.186836, 29.244169>,  <39.556095, 30.696318, 29.401278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026611, 30.186836, 29.244169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.916424, 30.500313, 29.021481>,  <38.850311, 30.688398, 28.887867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.916424, 30.500313, 29.021481>,  <39.026611, 30.186836, 29.244169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916424, 30.500313, 29.021481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219947, -0.615150, -0.757108,
		-0.935810, -0.086111, 0.341827,
		-0.275470, 0.783693, -0.556724,
		38.833782, 30.735420, 28.854464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297253, 30.138935, 29.053831>,  <39.026611, 30.186836, 29.244169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297253, 30.138935, 29.053831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486599, 30.351818, 28.773066>,  <38.600204, 30.479548, 28.604607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.486599, 30.351818, 28.773066>,  <38.297253, 30.138935, 29.053831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486599, 30.351818, 28.773066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248698, -0.683677, -0.686102,
		-0.845031, 0.499340, -0.191267,
		0.473363, 0.532209, -0.701913,
		38.628609, 30.511480, 28.562492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862598, 30.355505, 28.499407>,  <38.297253, 30.138935, 29.053831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862598, 30.355505, 28.499407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221527, 30.378574, 28.324369>,  <38.436886, 30.392416, 28.219347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221527, 30.378574, 28.324369>,  <37.862598, 30.355505, 28.499407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221527, 30.378574, 28.324369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320377, -0.596839, -0.735623,
		-0.303596, 0.800285, -0.517080,
		0.897323, 0.057672, -0.437592,
		38.490723, 30.395876, 28.193092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725384, 30.582411, 27.823364>,  <37.862598, 30.355505, 28.499407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725384, 30.582411, 27.823364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083965, 30.408792, 27.787647>,  <38.299114, 30.304623, 27.766216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083965, 30.408792, 27.787647>,  <37.725384, 30.582411, 27.823364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083965, 30.408792, 27.787647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414131, -0.748895, -0.517350,
		0.157682, 0.500760, -0.851102,
		0.896455, -0.434045, -0.089293,
		38.352901, 30.278580, 27.760859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617912, 30.241497, 27.235413>,  <37.725384, 30.582411, 27.823364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617912, 30.241497, 27.235413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962528, 30.099993, 27.381067>,  <38.169300, 30.015089, 27.468460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962528, 30.099993, 27.381067>,  <37.617912, 30.241497, 27.235413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962528, 30.099993, 27.381067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108459, -0.828943, -0.548716,
		0.495964, 0.433249, -0.752539,
		0.861543, -0.353763, 0.364136,
		38.220993, 29.993864, 27.490309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989040, 30.060518, 26.641815>,  <37.617912, 30.241497, 27.235413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989040, 30.060518, 26.641815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149151, 29.845688, 26.938822>,  <38.245216, 29.716789, 27.117025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149151, 29.845688, 26.938822>,  <37.989040, 30.060518, 26.641815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149151, 29.845688, 26.938822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141451, -0.764336, -0.629112,
		0.905412, 0.356848, -0.229975,
		0.400275, -0.537075, 0.742516,
		38.269234, 29.684565, 27.161577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654301, 29.759504, 26.357660>,  <37.989040, 30.060518, 26.641815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654301, 29.759504, 26.357660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522072, 29.538248, 26.663538>,  <38.442734, 29.405495, 26.847065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522072, 29.538248, 26.663538>,  <38.654301, 29.759504, 26.357660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522072, 29.538248, 26.663538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116424, -0.827958, -0.548572,
		0.936571, -0.092315, 0.338100,
		-0.330574, -0.553140, 0.764694,
		38.422901, 29.372307, 26.892946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908329, 29.150763, 26.246836>,  <38.654301, 29.759504, 26.357660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908329, 29.150763, 26.246836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.586903, 29.071457, 26.471327>,  <38.394047, 29.023874, 26.606022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.586903, 29.071457, 26.471327>,  <38.908329, 29.150763, 26.246836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586903, 29.071457, 26.471327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238666, -0.756453, -0.608948,
		0.545276, -0.623275, 0.560538,
		-0.803562, -0.198264, 0.561230,
		38.345833, 29.011978, 26.639696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981335, 28.538776, 26.512379>,  <38.908329, 29.150763, 26.246836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981335, 28.538776, 26.512379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581795, 28.527611, 26.496752>,  <38.342072, 28.520910, 26.487375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.581795, 28.527611, 26.496752>,  <38.981335, 28.538776, 26.512379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581795, 28.527611, 26.496752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042777, -0.886911, -0.459955,
		-0.021808, -0.461096, 0.887082,
		-0.998847, -0.027916, -0.039066,
		38.282143, 28.519236, 26.485031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786160, 27.962234, 26.790760>,  <38.981335, 28.538776, 26.512379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786160, 27.962234, 26.790760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476269, 28.074673, 26.564209>,  <38.290333, 28.142136, 26.428278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476269, 28.074673, 26.564209>,  <38.786160, 27.962234, 26.790760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476269, 28.074673, 26.564209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134999, -0.948627, -0.286150,
		-0.617716, -0.145228, 0.772875,
		-0.774727, 0.281097, -0.566376,
		38.243851, 28.159002, 26.394297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401325, 27.377871, 26.637234>,  <38.786160, 27.962234, 26.790760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401325, 27.377871, 26.637234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236454, 27.625378, 26.369732>,  <38.137531, 27.773882, 26.209230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236454, 27.625378, 26.369732>,  <38.401325, 27.377871, 26.637234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236454, 27.625378, 26.369732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197035, -0.777175, -0.597642,
		-0.889542, -0.114567, 0.442254,
		-0.412179, 0.618768, -0.668757,
		38.112801, 27.811008, 26.169106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108597, 26.919918, 26.108723>,  <38.401325, 27.377871, 26.637234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108597, 26.919918, 26.108723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195683, 26.574183, 26.290058>,  <38.247932, 26.366741, 26.398859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.195683, 26.574183, 26.290058>,  <38.108597, 26.919918, 26.108723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195683, 26.574183, 26.290058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314174, 0.377698, 0.870999,
		-0.924065, -0.332055, -0.189324,
		0.217712, -0.864341, 0.453340,
		38.260998, 26.314880, 26.426060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624912, 26.828655, 26.595905>,  <38.108597, 26.919918, 26.108723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624912, 26.828655, 26.595905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906677, 26.581097, 26.734911>,  <38.075737, 26.432562, 26.818316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906677, 26.581097, 26.734911>,  <37.624912, 26.828655, 26.595905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906677, 26.581097, 26.734911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212934, 0.282792, 0.935248,
		-0.677096, -0.732800, 0.067418,
		0.704415, -0.618897, 0.347515,
		38.118000, 26.395428, 26.839165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289677, 26.516428, 27.185638>,  <37.624912, 26.828655, 26.595905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289677, 26.516428, 27.185638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686035, 26.473831, 27.218594>,  <37.923851, 26.448273, 27.238367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686035, 26.473831, 27.218594>,  <37.289677, 26.516428, 27.185638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686035, 26.473831, 27.218594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038267, 0.363910, 0.930648,
		-0.129090, -0.925326, 0.356521,
		0.990894, -0.106494, 0.082386,
		37.983303, 26.441883, 27.243309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388451, 26.138836, 27.822748>,  <37.289677, 26.516428, 27.185638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388451, 26.138836, 27.822748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757431, 26.281397, 27.763336>,  <37.978821, 26.366934, 27.727690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757431, 26.281397, 27.763336>,  <37.388451, 26.138836, 27.822748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757431, 26.281397, 27.763336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030391, 0.316464, 0.948118,
		0.384916, -0.879106, 0.281091,
		0.922451, 0.356403, -0.148529,
		38.034168, 26.388317, 27.718779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753277, 26.019075, 28.519882>,  <37.388451, 26.138836, 27.822748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753277, 26.019075, 28.519882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998455, 26.268496, 28.325775>,  <38.145561, 26.418148, 28.209311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998455, 26.268496, 28.325775>,  <37.753277, 26.019075, 28.519882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998455, 26.268496, 28.325775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209597, 0.463843, 0.860766,
		0.761820, -0.629311, 0.153615,
		0.612944, 0.623552, -0.485267,
		38.182339, 26.455561, 28.180195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434345, 26.011471, 29.010189>,  <37.753277, 26.019075, 28.519882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434345, 26.011471, 29.010189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.383953, 26.326777, 28.769266>,  <38.353718, 26.515959, 28.624712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.383953, 26.326777, 28.769266>,  <38.434345, 26.011471, 29.010189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383953, 26.326777, 28.769266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179081, 0.615238, 0.767732,
		0.975735, -0.011143, -0.218670,
		-0.125979, 0.788263, -0.602305,
		38.346161, 26.563255, 28.588575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035030, 26.484140, 29.113699>,  <38.434345, 26.011471, 29.010189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035030, 26.484140, 29.113699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716850, 26.690748, 28.986914>,  <38.525944, 26.814713, 28.910843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716850, 26.690748, 28.986914>,  <39.035030, 26.484140, 29.113699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716850, 26.690748, 28.986914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108088, 0.635561, 0.764447,
		0.596302, 0.573819, -0.561386,
		-0.795450, 0.516521, -0.316963,
		38.478214, 26.845705, 28.891825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121410, 27.001425, 29.524782>,  <39.035030, 26.484140, 29.113699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121410, 27.001425, 29.524782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773266, 27.116589, 29.364994>,  <38.564381, 27.185688, 29.269121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773266, 27.116589, 29.364994>,  <39.121410, 27.001425, 29.524782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773266, 27.116589, 29.364994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062978, 0.739504, 0.670199,
		0.488369, 0.608474, -0.625504,
		-0.870361, 0.287912, -0.399472,
		38.512157, 27.202963, 29.245152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235538, 27.724188, 29.325365>,  <39.121410, 27.001425, 29.524782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235538, 27.724188, 29.325365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.848431, 27.627293, 29.352896>,  <38.616165, 27.569155, 29.369413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.848431, 27.627293, 29.352896>,  <39.235538, 27.724188, 29.325365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848431, 27.627293, 29.352896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098992, 0.617248, 0.780516,
		-0.231553, 0.748549, -0.621335,
		-0.967773, -0.242239, 0.068825,
		38.558098, 27.554621, 29.373543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934319, 28.444502, 29.367193>,  <39.235538, 27.724188, 29.325365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934319, 28.444502, 29.367193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660740, 28.186438, 29.503418>,  <38.496593, 28.031599, 29.585152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.660740, 28.186438, 29.503418>,  <38.934319, 28.444502, 29.367193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660740, 28.186438, 29.503418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291408, 0.669566, 0.683200,
		-0.668803, 0.368031, -0.645953,
		-0.683947, -0.645162, 0.340560,
		38.455555, 27.992889, 29.605585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413002, 28.863182, 29.589529>,  <38.934319, 28.444502, 29.367193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413002, 28.863182, 29.589529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338776, 28.517515, 29.776625>,  <38.294239, 28.310116, 29.888882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338776, 28.517515, 29.776625>,  <38.413002, 28.863182, 29.589529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338776, 28.517515, 29.776625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237863, 0.501355, 0.831904,
		-0.953407, 0.043118, -0.298590,
		-0.185569, -0.864166, 0.467740,
		38.283104, 28.258265, 29.916946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853996, 29.023188, 30.028034>,  <38.413002, 28.863182, 29.589529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853996, 29.023188, 30.028034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986542, 28.679771, 30.184551>,  <38.066067, 28.473722, 30.278461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986542, 28.679771, 30.184551>,  <37.853996, 29.023188, 30.028034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986542, 28.679771, 30.184551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267827, 0.312074, 0.911525,
		-0.904692, -0.406844, -0.126530,
		0.331362, -0.858538, 0.391295,
		38.085949, 28.422211, 30.301939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311432, 28.831734, 30.549673>,  <37.853996, 29.023188, 30.028034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311432, 28.831734, 30.549673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659058, 28.657770, 30.643974>,  <37.867634, 28.553392, 30.700554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659058, 28.657770, 30.643974>,  <37.311432, 28.831734, 30.549673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659058, 28.657770, 30.643974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021957, 0.442178, 0.896658,
		-0.494208, -0.784432, 0.374733,
		0.869066, -0.434908, 0.235751,
		37.919777, 28.527298, 30.714701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230968, 28.531734, 31.242081>,  <37.311432, 28.831734, 30.549673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230968, 28.531734, 31.242081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629402, 28.551371, 31.212660>,  <37.868462, 28.563152, 31.195007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629402, 28.551371, 31.212660>,  <37.230968, 28.531734, 31.242081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629402, 28.551371, 31.212660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046771, 0.413447, 0.909326,
		0.075049, -0.909204, 0.409532,
		0.996082, 0.049089, -0.073553,
		37.928226, 28.566097, 31.190594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091572, 27.782618, 31.506025>,  <37.230968, 28.531734, 31.242081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091572, 27.782618, 31.506025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.785530, 27.600914, 31.688570>,  <36.601906, 27.491892, 31.798096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.785530, 27.600914, 31.688570>,  <37.091572, 27.782618, 31.506025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785530, 27.600914, 31.688570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186521, -0.521998, -0.832303,
		0.616299, -0.721919, 0.314655,
		-0.765105, -0.454258, 0.456360,
		36.556000, 27.464636, 31.825478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183506, 27.040649, 31.363518>,  <37.091572, 27.782618, 31.506025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183506, 27.040649, 31.363518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.801521, 27.131266, 31.440166>,  <36.572330, 27.185637, 31.486155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.801521, 27.131266, 31.440166>,  <37.183506, 27.040649, 31.363518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801521, 27.131266, 31.440166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296323, -0.694949, -0.655163,
		-0.015256, -0.682440, 0.730782,
		-0.954966, 0.226543, 0.191621,
		36.515030, 27.199228, 31.497652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875931, 26.376612, 31.438120>,  <37.183506, 27.040649, 31.363518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875931, 26.376612, 31.438120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582325, 26.631325, 31.343697>,  <36.406162, 26.784153, 31.287043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582325, 26.631325, 31.343697>,  <36.875931, 26.376612, 31.438120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582325, 26.631325, 31.343697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256866, -0.582083, -0.771492,
		-0.628680, -0.505653, 0.590827,
		-0.734017, 0.636785, -0.236059,
		36.362118, 26.822361, 31.272879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309517, 25.972752, 31.229273>,  <36.875931, 26.376612, 31.438120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309517, 25.972752, 31.229273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209202, 26.318005, 31.053955>,  <36.149014, 26.525156, 30.948765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209202, 26.318005, 31.053955>,  <36.309517, 25.972752, 31.229273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209202, 26.318005, 31.053955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434625, -0.504962, -0.745731,
		-0.864988, 0.003472, 0.501780,
		-0.250790, 0.863135, -0.438295,
		36.133965, 26.576944, 30.922466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537128, 25.930487, 30.944651>,  <36.309517, 25.972752, 31.229273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537128, 25.930487, 30.944651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691410, 26.241930, 30.746660>,  <35.783978, 26.428797, 30.627867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691410, 26.241930, 30.746660>,  <35.537128, 25.930487, 30.944651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691410, 26.241930, 30.746660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332958, -0.382868, -0.861714,
		-0.860448, 0.497173, 0.111569,
		0.385705, 0.778608, -0.494976,
		35.807121, 26.475512, 30.598167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984112, 26.089794, 30.474064>,  <35.537128, 25.930487, 30.944651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984112, 26.089794, 30.474064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311646, 26.263391, 30.323782>,  <35.508167, 26.367550, 30.233612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311646, 26.263391, 30.323782>,  <34.984112, 26.089794, 30.474064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311646, 26.263391, 30.323782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325043, -0.188909, -0.926639,
		-0.473129, 0.880888, -0.013620,
		0.818838, 0.433993, -0.375705,
		35.557297, 26.393589, 30.211071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727921, 26.443913, 29.869064>,  <34.984112, 26.089794, 30.474064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727921, 26.443913, 29.869064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121723, 26.393978, 29.819820>,  <35.358006, 26.364017, 29.790274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121723, 26.393978, 29.819820>,  <34.727921, 26.443913, 29.869064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121723, 26.393978, 29.819820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162183, -0.381693, -0.909949,
		0.066603, 0.915820, -0.396026,
		0.984510, -0.124834, -0.123108,
		35.417076, 26.356527, 29.782888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511150, 27.114670, 29.588932>,  <34.727921, 26.443913, 29.869064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511150, 27.114670, 29.588932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116039, 27.079695, 29.640535>,  <33.878971, 27.058710, 29.671497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116039, 27.079695, 29.640535>,  <34.511150, 27.114670, 29.588932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116039, 27.079695, 29.640535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115653, 0.143622, 0.982851,
		-0.104466, 0.985762, -0.131755,
		-0.987781, -0.087437, 0.129010,
		33.819706, 27.053463, 29.679239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457745, 27.527538, 30.093327>,  <34.511150, 27.114670, 29.588932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457745, 27.527538, 30.093327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121307, 27.311184, 30.092215>,  <33.919445, 27.181372, 30.091547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121307, 27.311184, 30.092215>,  <34.457745, 27.527538, 30.093327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121307, 27.311184, 30.092215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038585, 0.054870, 0.997748,
		-0.539514, 0.839306, -0.067021,
		-0.841092, -0.540884, -0.002782,
		33.868980, 27.148918, 30.091379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031742, 27.920000, 30.454565>,  <34.457745, 27.527538, 30.093327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031742, 27.920000, 30.454565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870525, 27.556919, 30.501261>,  <33.773796, 27.339069, 30.529278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870525, 27.556919, 30.501261>,  <34.031742, 27.920000, 30.454565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870525, 27.556919, 30.501261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010153, 0.123117, 0.992340,
		-0.915124, 0.401142, -0.040406,
		-0.403044, -0.907705, 0.116740,
		33.749611, 27.284607, 30.536283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717281, 28.004614, 31.010519>,  <34.031742, 27.920000, 30.454565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717281, 28.004614, 31.010519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703186, 27.604881, 31.014357>,  <33.694729, 27.365042, 31.016659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703186, 27.604881, 31.014357>,  <33.717281, 28.004614, 31.010519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703186, 27.604881, 31.014357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058634, 0.011651, 0.998212,
		-0.997657, 0.034612, -0.059005,
		-0.035238, -0.999333, 0.009594,
		33.692616, 27.305082, 31.017235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117805, 27.794992, 31.418552>,  <33.717281, 28.004614, 31.010519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117805, 27.794992, 31.418552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324844, 27.453253, 31.399862>,  <33.449066, 27.248209, 31.388649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324844, 27.453253, 31.399862>,  <33.117805, 27.794992, 31.418552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324844, 27.453253, 31.399862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078314, -0.101682, 0.991730,
		-0.852033, -0.509658, -0.119538,
		0.517597, -0.854348, -0.046723,
		33.480125, 27.196949, 31.385845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719185, 27.315937, 31.814968>,  <33.117805, 27.794992, 31.418552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719185, 27.315937, 31.814968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.099865, 27.193218, 31.810217>,  <33.328274, 27.119587, 31.807365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.099865, 27.193218, 31.810217>,  <32.719185, 27.315937, 31.814968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099865, 27.193218, 31.810217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013959, -0.081888, 0.996544,
		-0.306708, -0.948246, -0.082215,
		0.951701, -0.306796, -0.011879,
		33.385376, 27.101179, 31.806654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740688, 26.732470, 32.172794>,  <32.719185, 27.315937, 31.814968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740688, 26.732470, 32.172794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087902, 26.930580, 32.186783>,  <33.296230, 27.049446, 32.195175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087902, 26.930580, 32.186783>,  <32.740688, 26.732470, 32.172794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087902, 26.930580, 32.186783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099578, 0.104660, 0.989510,
		0.486423, -0.862407, 0.140167,
		0.868031, 0.495279, 0.034968,
		33.348312, 27.079165, 32.197273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.912350, 28.303278, 26.624781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.283607, 28.364397, 26.760550>,  <35.506363, 28.401068, 26.842010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.283607, 28.364397, 26.760550>,  <34.912350, 28.303278, 26.624781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283607, 28.364397, 26.760550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366857, 0.529835, 0.764651,
		-0.063002, -0.834223, 0.547816,
		0.928141, 0.152796, 0.339421,
		35.562050, 28.410236, 26.862375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812492, 28.229834, 27.285908>,  <34.912350, 28.303278, 26.624781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812492, 28.229834, 27.285908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.166523, 28.415972, 27.282152>,  <35.378941, 28.527655, 27.279900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.166523, 28.415972, 27.282152>,  <34.812492, 28.229834, 27.285908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166523, 28.415972, 27.282152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370737, 0.717044, 0.590256,
		0.281403, -0.518944, 0.807162,
		0.885080, 0.465344, -0.009387,
		35.432049, 28.555574, 27.279337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022007, 28.415997, 28.007406>,  <34.812492, 28.229834, 27.285908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022007, 28.415997, 28.007406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.245483, 28.643349, 27.765810>,  <35.379570, 28.779760, 27.620853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.245483, 28.643349, 27.765810>,  <35.022007, 28.415997, 28.007406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245483, 28.643349, 27.765810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104614, 0.770725, 0.628521,
		0.822749, -0.287966, 0.490061,
		0.558695, 0.568382, -0.603989,
		35.413090, 28.813864, 27.584614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549442, 28.703520, 28.363556>,  <35.022007, 28.415997, 28.007406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549442, 28.703520, 28.363556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523972, 28.956007, 28.054361>,  <35.508690, 29.107500, 27.868845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.523972, 28.956007, 28.054361>,  <35.549442, 28.703520, 28.363556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523972, 28.956007, 28.054361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060536, 0.770688, 0.634330,
		0.996133, 0.087184, -0.010862,
		-0.063674, 0.631220, -0.772986,
		35.504868, 29.145372, 27.822466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909992, 29.250418, 28.575626>,  <35.549442, 28.703520, 28.363556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909992, 29.250418, 28.575626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.706539, 29.406179, 28.268469>,  <35.584469, 29.499636, 28.084175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.706539, 29.406179, 28.268469>,  <35.909992, 29.250418, 28.575626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706539, 29.406179, 28.268469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114598, 0.853324, 0.508632,
		0.853324, 0.346705, -0.389403,
		-0.508632, 0.389403, -0.767893,
		35.553951, 29.523001, 28.038101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246796, 29.805584, 28.433937>,  <35.909992, 29.250418, 28.575626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246796, 29.805584, 28.433937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888451, 29.875370, 28.270477>,  <35.673443, 29.917242, 28.172401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888451, 29.875370, 28.270477>,  <36.246796, 29.805584, 28.433937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888451, 29.875370, 28.270477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023235, 0.900037, 0.435195,
		0.443724, 0.399369, -0.802255,
		-0.895862, 0.174466, -0.408647,
		35.619694, 29.927710, 28.147882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230686, 30.513824, 28.315607>,  <36.246796, 29.805584, 28.433937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230686, 30.513824, 28.315607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.845200, 30.410583, 28.288404>,  <35.613907, 30.348639, 28.272083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.845200, 30.410583, 28.288404>,  <36.230686, 30.513824, 28.315607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845200, 30.410583, 28.288404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246225, 0.761335, 0.599785,
		-0.103031, 0.594770, -0.797266,
		-0.963721, -0.258103, -0.068006,
		35.556084, 30.333153, 28.268003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934364, 31.141136, 28.287188>,  <36.230686, 30.513824, 28.315607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934364, 31.141136, 28.287188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658226, 30.879473, 28.410797>,  <35.492542, 30.722475, 28.484962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658226, 30.879473, 28.410797>,  <35.934364, 31.141136, 28.287188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658226, 30.879473, 28.410797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322967, 0.660866, 0.677458,
		-0.647386, 0.367879, -0.667500,
		-0.690350, -0.654157, 0.309023,
		35.451122, 30.683226, 28.503504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309361, 31.494778, 28.226540>,  <35.934364, 31.141136, 28.287188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309361, 31.494778, 28.226540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.248672, 31.192598, 28.481501>,  <35.212261, 31.011292, 28.634478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.248672, 31.192598, 28.481501>,  <35.309361, 31.494778, 28.226540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248672, 31.192598, 28.481501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547119, 0.601251, 0.582373,
		-0.823191, -0.260381, -0.504538,
		-0.151715, -0.755446, 0.637404,
		35.203159, 30.965965, 28.672722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711609, 31.751322, 28.667700>,  <35.309361, 31.494778, 28.226540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711609, 31.751322, 28.667700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.904430, 31.453663, 28.852682>,  <35.020123, 31.275066, 28.963671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.904430, 31.453663, 28.852682>,  <34.711609, 31.751322, 28.667700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904430, 31.453663, 28.852682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136624, 0.457529, 0.878636,
		-0.865423, -0.486733, 0.118886,
		0.482055, -0.744148, 0.462456,
		35.049046, 31.230419, 28.991419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260044, 31.486986, 29.193047>,  <34.711609, 31.751322, 28.667700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260044, 31.486986, 29.193047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.638401, 31.402361, 29.291451>,  <34.865417, 31.351585, 29.350492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.638401, 31.402361, 29.291451>,  <34.260044, 31.486986, 29.193047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638401, 31.402361, 29.291451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088028, 0.562427, 0.822148,
		-0.312300, -0.799322, 0.513374,
		0.945896, -0.211566, 0.246009,
		34.922169, 31.338892, 29.365253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181477, 31.344826, 29.818888>,  <34.260044, 31.486986, 29.193047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181477, 31.344826, 29.818888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.572044, 31.414949, 29.768497>,  <34.806385, 31.457024, 29.738262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.572044, 31.414949, 29.768497>,  <34.181477, 31.344826, 29.818888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572044, 31.414949, 29.768497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008713, 0.615081, 0.788416,
		0.215704, -0.768727, 0.602105,
		0.976420, 0.175311, -0.125977,
		34.864971, 31.467543, 29.730703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852238, 30.587416, 29.918003>,  <34.181477, 31.344826, 29.818888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852238, 30.587416, 29.918003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462929, 30.617487, 30.004803>,  <33.229343, 30.635530, 30.056883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462929, 30.617487, 30.004803>,  <33.852238, 30.587416, 29.918003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462929, 30.617487, 30.004803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228128, -0.425261, -0.875848,
		0.026438, -0.901943, 0.431045,
		-0.973272, 0.075178, 0.217002,
		33.170948, 30.640041, 30.069902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488609, 29.935282, 29.794773>,  <33.852238, 30.587416, 29.918003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488609, 29.935282, 29.794773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.218384, 30.226803, 29.750128>,  <33.056248, 30.401716, 29.723341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.218384, 30.226803, 29.750128>,  <33.488609, 29.935282, 29.794773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218384, 30.226803, 29.750128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315916, -0.422909, -0.849320,
		-0.666190, -0.538510, 0.515943,
		-0.675565, 0.728803, -0.111614,
		33.015713, 30.445444, 29.716644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917713, 29.592806, 29.467312>,  <33.488609, 29.935282, 29.794773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917713, 29.592806, 29.467312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.838608, 29.981592, 29.416439>,  <32.791145, 30.214863, 29.385916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.838608, 29.981592, 29.416439>,  <32.917713, 29.592806, 29.467312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838608, 29.981592, 29.416439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274080, -0.179396, -0.944827,
		-0.941154, -0.151990, 0.301873,
		-0.197759, 0.971965, -0.127182,
		32.779282, 30.273182, 29.378284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386295, 29.525028, 28.998249>,  <32.917713, 29.592806, 29.467312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386295, 29.525028, 28.998249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.473164, 29.913536, 28.959307>,  <32.525284, 30.146641, 28.935942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.473164, 29.913536, 28.959307>,  <32.386295, 29.525028, 28.998249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473164, 29.913536, 28.959307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268596, -0.036428, -0.962564,
		-0.938453, 0.235186, 0.252968,
		0.217166, 0.971267, -0.097356,
		32.538315, 30.204916, 28.930099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821751, 29.842621, 28.704603>,  <32.386295, 29.525028, 28.998249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821751, 29.842621, 28.704603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139427, 30.071836, 28.623726>,  <32.330032, 30.209366, 28.575199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139427, 30.071836, 28.623726>,  <31.821751, 29.842621, 28.704603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139427, 30.071836, 28.623726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259508, 0.018972, -0.965555,
		-0.549466, 0.819307, 0.163776,
		0.794193, 0.573041, -0.202192,
		32.377686, 30.243750, 28.563068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582251, 30.440825, 28.276836>,  <31.821751, 29.842621, 28.704603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582251, 30.440825, 28.276836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975300, 30.412380, 28.208252>,  <32.211128, 30.395313, 28.167101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975300, 30.412380, 28.208252>,  <31.582251, 30.440825, 28.276836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975300, 30.412380, 28.208252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169258, 0.035961, -0.984915,
		0.076205, 0.996820, 0.023300,
		0.982621, -0.071112, -0.171460,
		32.270084, 30.391047, 28.156815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652040, 30.807379, 27.675682>,  <31.582251, 30.440825, 28.276836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652040, 30.807379, 27.675682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978870, 30.579830, 27.713150>,  <32.174969, 30.443302, 27.735632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978870, 30.579830, 27.713150>,  <31.652040, 30.807379, 27.675682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978870, 30.579830, 27.713150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020605, -0.133557, -0.990827,
		0.576162, 0.811511, -0.097405,
		0.817076, -0.568869, 0.093672,
		32.223991, 30.409170, 27.741251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094749, 31.032703, 27.087120>,  <31.652040, 30.807379, 27.675682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094749, 31.032703, 27.087120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226482, 30.673887, 27.205009>,  <32.305523, 30.458597, 27.275743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226482, 30.673887, 27.205009>,  <32.094749, 31.032703, 27.087120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226482, 30.673887, 27.205009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100517, -0.277053, -0.955582,
		0.938849, 0.344326, -0.001074,
		0.329330, -0.897040, 0.294722,
		32.325283, 30.404776, 27.293427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568134, 30.874189, 26.605076>,  <32.094749, 31.032703, 27.087120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568134, 30.874189, 26.605076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522121, 30.505690, 26.753704>,  <32.494514, 30.284590, 26.842882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522121, 30.505690, 26.753704>,  <32.568134, 30.874189, 26.605076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522121, 30.505690, 26.753704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192766, -0.387646, -0.901428,
		0.974479, -0.032063, 0.222176,
		-0.115028, -0.921251, 0.371572,
		32.487614, 30.229315, 26.865175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126957, 30.515009, 26.247869>,  <32.568134, 30.874189, 26.605076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126957, 30.515009, 26.247869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.857044, 30.257318, 26.391895>,  <32.695099, 30.102705, 26.478312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.857044, 30.257318, 26.391895>,  <33.126957, 30.515009, 26.247869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857044, 30.257318, 26.391895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115908, -0.574334, -0.810374,
		0.728860, -0.505090, 0.462219,
		-0.674780, -0.644224, 0.360065,
		32.654610, 30.064051, 26.499914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341980, 29.906794, 26.115080>,  <33.126957, 30.515009, 26.247869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341980, 29.906794, 26.115080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.949883, 29.841625, 26.159943>,  <32.714622, 29.802525, 26.186859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.949883, 29.841625, 26.159943>,  <33.341980, 29.906794, 26.115080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949883, 29.841625, 26.159943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021301, -0.650685, -0.759049,
		0.196645, -0.741664, 0.641300,
		-0.980243, -0.162923, 0.112155,
		32.655811, 29.792747, 26.193588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273167, 29.135485, 26.113861>,  <33.341980, 29.906794, 26.115080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273167, 29.135485, 26.113861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.923054, 29.304646, 26.020021>,  <32.712986, 29.406141, 25.963718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.923054, 29.304646, 26.020021>,  <33.273167, 29.135485, 26.113861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923054, 29.304646, 26.020021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111390, -0.648345, -0.753154,
		-0.470609, -0.633091, 0.614591,
		-0.875282, 0.422901, -0.234597,
		32.660469, 29.431517, 25.949642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826668, 28.643944, 25.984751>,  <33.273167, 29.135485, 26.113861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826668, 28.643944, 25.984751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613037, 28.931616, 25.806969>,  <32.484859, 29.104219, 25.700298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.613037, 28.931616, 25.806969>,  <32.826668, 28.643944, 25.984751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613037, 28.931616, 25.806969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229878, -0.629436, -0.742271,
		-0.813585, -0.294258, 0.501490,
		-0.534075, 0.719182, -0.444456,
		32.452816, 29.147371, 25.673632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216221, 28.345453, 26.662157>,  <32.826668, 28.643944, 25.984751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216221, 28.345453, 26.662157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.185455, 27.955063, 26.580622>,  <33.166996, 27.720829, 26.531700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.185455, 27.955063, 26.580622>,  <33.216221, 28.345453, 26.662157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185455, 27.955063, 26.580622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028033, -0.202248, 0.978933,
		-0.996643, 0.081012, -0.011803,
		-0.076919, -0.975978, -0.203840,
		33.162380, 27.662270, 26.519470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577015, 28.104374, 27.103662>,  <33.216221, 28.345453, 26.662157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577015, 28.104374, 27.103662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.801300, 27.792898, 26.991058>,  <32.935871, 27.606012, 26.923496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.801300, 27.792898, 26.991058>,  <32.577015, 28.104374, 27.103662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801300, 27.792898, 26.991058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140815, -0.245354, 0.959152,
		-0.815951, -0.577446, -0.027921,
		0.560709, -0.778690, -0.281511,
		32.969513, 27.559292, 26.906605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268963, 27.536865, 27.441032>,  <32.577015, 28.104374, 27.103662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268963, 27.536865, 27.441032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.632931, 27.395363, 27.354408>,  <32.851311, 27.310461, 27.302433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.632931, 27.395363, 27.354408>,  <32.268963, 27.536865, 27.441032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632931, 27.395363, 27.354408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068822, -0.386107, 0.919883,
		-0.409040, -0.851922, -0.326978,
		0.909918, -0.353766, -0.216564,
		32.905907, 27.289236, 27.289440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242977, 26.905771, 27.638004>,  <32.268963, 27.536865, 27.441032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242977, 26.905771, 27.638004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.624958, 27.024403, 27.642176>,  <32.854145, 27.095581, 27.644678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.624958, 27.024403, 27.642176>,  <32.242977, 26.905771, 27.638004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624958, 27.024403, 27.642176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143402, -0.491936, 0.858740,
		0.259815, -0.818560, -0.512305,
		0.954952, 0.296579, 0.010429,
		32.911442, 27.113377, 27.645304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498596, 26.505386, 28.127232>,  <32.242977, 26.905771, 27.638004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498596, 26.505386, 28.127232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828949, 26.728458, 28.093985>,  <33.027161, 26.862301, 28.074036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828949, 26.728458, 28.093985>,  <32.498596, 26.505386, 28.127232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828949, 26.728458, 28.093985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311757, -0.328827, 0.891448,
		0.469810, -0.762147, -0.445434,
		0.825885, 0.557678, -0.083118,
		33.076714, 26.895761, 28.069050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055134, 26.067028, 28.346296>,  <32.498596, 26.505386, 28.127232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055134, 26.067028, 28.346296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.186172, 26.442144, 28.392311>,  <33.264793, 26.667213, 28.419920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.186172, 26.442144, 28.392311>,  <33.055134, 26.067028, 28.346296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186172, 26.442144, 28.392311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278306, -0.212131, 0.936775,
		0.902900, -0.274866, -0.330485,
		0.327594, 0.937790, 0.115036,
		33.284451, 26.723482, 28.426823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677948, 26.002459, 28.759916>,  <33.055134, 26.067028, 28.346296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677948, 26.002459, 28.759916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585320, 26.388208, 28.811069>,  <33.529743, 26.619659, 28.841761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.585320, 26.388208, 28.811069>,  <33.677948, 26.002459, 28.759916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585320, 26.388208, 28.811069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187448, -0.084759, 0.978611,
		0.954588, 0.250591, -0.161142,
		-0.231573, 0.964376, 0.127882,
		33.515846, 26.677521, 28.849434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229568, 26.433819, 29.251284>,  <33.677948, 26.002459, 28.759916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229568, 26.433819, 29.251284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901756, 26.660599, 29.284592>,  <33.705070, 26.796667, 29.304577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.901756, 26.660599, 29.284592>,  <34.229568, 26.433819, 29.251284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901756, 26.660599, 29.284592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025451, -0.109158, 0.993698,
		0.572468, 0.816487, 0.075029,
		-0.819532, 0.566951, 0.083270,
		33.655895, 26.830685, 29.309572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803505, 26.707045, 29.002062>,  <34.229568, 26.433819, 29.251284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803505, 26.707045, 29.002062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.135529, 26.518557, 29.121368>,  <35.334743, 26.405464, 29.192951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.135529, 26.518557, 29.121368>,  <34.803505, 26.707045, 29.002062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135529, 26.518557, 29.121368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175086, -0.287591, -0.941613,
		0.529485, 0.833812, -0.156212,
		0.830054, -0.471220, 0.298264,
		35.384544, 26.377192, 29.210848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390911, 26.921661, 28.487347>,  <34.803505, 26.707045, 29.002062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390911, 26.921661, 28.487347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.476425, 26.577953, 28.673229>,  <35.527733, 26.371729, 28.784760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.476425, 26.577953, 28.673229>,  <35.390911, 26.921661, 28.487347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476425, 26.577953, 28.673229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318458, -0.388415, -0.864707,
		0.923514, 0.332854, 0.190603,
		0.213789, -0.859268, 0.464706,
		35.540562, 26.320173, 28.812641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016804, 26.662634, 28.193830>,  <35.390911, 26.921661, 28.487347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016804, 26.662634, 28.193830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.909527, 26.319998, 28.370161>,  <35.845161, 26.114416, 28.475960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.909527, 26.319998, 28.370161>,  <36.016804, 26.662634, 28.193830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909527, 26.319998, 28.370161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296455, -0.508768, -0.808251,
		0.916618, -0.086080, 0.390387,
		-0.268191, -0.856589, 0.440827,
		35.829071, 26.063021, 28.502409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639973, 26.280798, 28.115192>,  <36.016804, 26.662634, 28.193830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639973, 26.280798, 28.115192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.345654, 26.020306, 28.189484>,  <36.169060, 25.864010, 28.234058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.345654, 26.020306, 28.189484>,  <36.639973, 26.280798, 28.115192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345654, 26.020306, 28.189484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317593, -0.574074, -0.754701,
		0.598106, -0.496324, 0.629231,
		-0.735801, -0.651231, 0.185728,
		36.124912, 25.824936, 28.245201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962349, 25.583817, 28.164881>,  <36.639973, 26.280798, 28.115192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962349, 25.583817, 28.164881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580296, 25.512947, 28.069950>,  <36.351063, 25.470427, 28.012991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.580296, 25.512947, 28.069950>,  <36.962349, 25.583817, 28.164881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580296, 25.512947, 28.069950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295048, -0.499653, -0.814428,
		0.025712, -0.847913, 0.529511,
		-0.955136, -0.177171, -0.237329,
		36.293755, 25.459795, 27.998751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842224, 24.848869, 28.135382>,  <36.962349, 25.583817, 28.164881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842224, 24.848869, 28.135382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547115, 24.998976, 27.910929>,  <36.370049, 25.089039, 27.776257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.547115, 24.998976, 27.910929>,  <36.842224, 24.848869, 28.135382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547115, 24.998976, 27.910929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188054, -0.684084, -0.704745,
		-0.648323, -0.625466, 0.434131,
		-0.737776, 0.375262, -0.561128,
		36.325783, 25.111555, 27.742590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410675, 24.353817, 27.780415>,  <36.842224, 24.848869, 28.135382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410675, 24.353817, 27.780415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349598, 24.665430, 27.537172>,  <36.312950, 24.852398, 27.391226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.349598, 24.665430, 27.537172>,  <36.410675, 24.353817, 27.780415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349598, 24.665430, 27.537172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196931, -0.578998, -0.791189,
		-0.968453, -0.240567, -0.065005,
		-0.152696, 0.779031, -0.608108,
		36.303787, 24.899139, 27.354740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212799, 24.047277, 27.202824>,  <36.410675, 24.353817, 27.780415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212799, 24.047277, 27.202824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.264896, 24.422371, 27.074018>,  <36.296154, 24.647427, 26.996735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.264896, 24.422371, 27.074018>,  <36.212799, 24.047277, 27.202824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264896, 24.422371, 27.074018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351854, -0.347355, -0.869220,
		-0.926950, -0.000093, -0.375185,
		0.130242, 0.937734, -0.322014,
		36.303970, 24.703691, 26.977415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882233, 24.018839, 26.537748>,  <36.212799, 24.047277, 27.202824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882233, 24.018839, 26.537748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.119663, 24.340725, 26.533834>,  <36.262123, 24.533857, 26.531487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.119663, 24.340725, 26.533834>,  <35.882233, 24.018839, 26.537748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119663, 24.340725, 26.533834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231012, -0.182020, -0.955773,
		-0.770906, 0.565068, -0.293942,
		0.593580, 0.804716, -0.009783,
		36.297737, 24.582140, 26.530899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.664585, 30.229338, 41.575058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895008, 30.543056, 41.482941>,  <38.033260, 30.731289, 41.427670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895008, 30.543056, 41.482941>,  <37.664585, 30.229338, 41.575058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895008, 30.543056, 41.482941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542798, 0.156383, -0.825176,
		-0.611170, 0.600350, 0.515801,
		0.576056, 0.784299, -0.230292,
		38.067825, 30.778347, 41.413853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221504, 30.801907, 41.394581>,  <37.664585, 30.229338, 41.575058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221504, 30.801907, 41.394581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563160, 30.863251, 41.195812>,  <37.768154, 30.900057, 41.076553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.563160, 30.863251, 41.195812>,  <37.221504, 30.801907, 41.394581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563160, 30.863251, 41.195812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508188, 0.043254, -0.860160,
		-0.110420, 0.987223, 0.114881,
		0.854139, 0.153360, -0.496918,
		37.819401, 30.909258, 41.046738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108112, 31.294004, 40.923695>,  <37.221504, 30.801907, 41.394581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108112, 31.294004, 40.923695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420238, 31.097546, 40.768837>,  <37.607513, 30.979670, 40.675922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420238, 31.097546, 40.768837>,  <37.108112, 31.294004, 40.923695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420238, 31.097546, 40.768837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438313, 0.012052, -0.898741,
		0.446082, 0.870992, -0.205872,
		0.780316, -0.491149, -0.387144,
		37.654335, 30.950201, 40.652695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182133, 31.546825, 40.221401>,  <37.108112, 31.294004, 40.923695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182133, 31.546825, 40.221401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402962, 31.215425, 40.183861>,  <37.535458, 31.016586, 40.161339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402962, 31.215425, 40.183861>,  <37.182133, 31.546825, 40.221401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402962, 31.215425, 40.183861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119036, 0.033086, -0.992338,
		0.825255, 0.559014, -0.080355,
		0.552072, -0.828498, -0.093847,
		37.568584, 30.966877, 40.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622009, 31.682297, 39.658707>,  <37.182133, 31.546825, 40.221401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622009, 31.682297, 39.658707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582771, 31.285919, 39.695385>,  <37.559231, 31.048092, 39.717392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582771, 31.285919, 39.695385>,  <37.622009, 31.682297, 39.658707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582771, 31.285919, 39.695385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014921, -0.093598, -0.995498,
		0.995066, -0.096282, 0.023967,
		-0.098092, -0.990944, 0.091700,
		37.553345, 30.988636, 39.722897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072441, 31.369991, 39.137341>,  <37.622009, 31.682297, 39.658707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072441, 31.369991, 39.137341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778599, 31.118757, 39.239998>,  <37.602295, 30.968016, 39.301594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778599, 31.118757, 39.239998>,  <38.072441, 31.369991, 39.137341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778599, 31.118757, 39.239998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138727, -0.231230, -0.962958,
		0.664165, -0.742994, 0.082729,
		-0.734601, -0.628086, 0.256648,
		37.558220, 30.930332, 39.316994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105076, 30.714518, 38.652023>,  <38.072441, 31.369991, 39.137341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105076, 30.714518, 38.652023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737679, 30.698988, 38.809437>,  <37.517242, 30.689671, 38.903885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737679, 30.698988, 38.809437>,  <38.105076, 30.714518, 38.652023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737679, 30.698988, 38.809437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318029, -0.518906, -0.793469,
		0.235012, -0.853949, 0.464263,
		-0.918491, -0.038826, 0.393530,
		37.462132, 30.687340, 38.927494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914188, 30.015270, 38.574833>,  <38.105076, 30.714518, 38.652023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914188, 30.015270, 38.574833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567715, 30.198208, 38.655396>,  <37.359829, 30.307970, 38.703732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567715, 30.198208, 38.655396>,  <37.914188, 30.015270, 38.574833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567715, 30.198208, 38.655396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455343, -0.556270, -0.695145,
		-0.205884, -0.693832, 0.690079,
		-0.866184, 0.457342, 0.201404,
		37.307861, 30.335411, 38.715816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488922, 29.514589, 38.668186>,  <37.914188, 30.015270, 38.574833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488922, 29.514589, 38.668186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236317, 29.814039, 38.587433>,  <37.084755, 29.993710, 38.538982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236317, 29.814039, 38.587433>,  <37.488922, 29.514589, 38.668186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236317, 29.814039, 38.587433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479246, -0.581542, -0.657367,
		-0.609524, -0.318382, 0.726025,
		-0.631508, 0.748626, -0.201881,
		37.046864, 30.038628, 38.526871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775089, 29.273102, 38.652084>,  <37.488922, 29.514589, 38.668186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775089, 29.273102, 38.652084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763599, 29.614246, 38.443542>,  <36.756706, 29.818933, 38.318417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763599, 29.614246, 38.443542>,  <36.775089, 29.273102, 38.652084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763599, 29.614246, 38.443542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419937, -0.483602, -0.767973,
		-0.907099, 0.196877, 0.372037,
		-0.028721, 0.852859, -0.521350,
		36.754982, 29.870104, 38.287136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239162, 29.262556, 38.395996>,  <36.775089, 29.273102, 38.652084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239162, 29.262556, 38.395996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395012, 29.537271, 38.150555>,  <36.488522, 29.702101, 38.003288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395012, 29.537271, 38.150555>,  <36.239162, 29.262556, 38.395996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395012, 29.537271, 38.150555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362623, -0.498039, -0.787694,
		-0.846581, 0.529411, 0.054999,
		0.389622, 0.686790, -0.613607,
		36.511898, 29.743309, 37.966473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665852, 29.478167, 37.842697>,  <36.239162, 29.262556, 38.395996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665852, 29.478167, 37.842697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025246, 29.572018, 37.694283>,  <36.240883, 29.628328, 37.605232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025246, 29.572018, 37.694283>,  <35.665852, 29.478167, 37.842697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025246, 29.572018, 37.694283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314139, -0.246756, -0.916748,
		-0.306649, 0.940246, -0.148003,
		0.898489, 0.234627, -0.371036,
		36.294792, 29.642406, 37.582973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162361, 30.070379, 37.629360>,  <35.665852, 29.478167, 37.842697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162361, 30.070379, 37.629360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783688, 30.122982, 37.511715>,  <34.556484, 30.154543, 37.441128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783688, 30.122982, 37.511715>,  <35.162361, 30.070379, 37.629360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783688, 30.122982, 37.511715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047641, 0.845722, 0.531493,
		0.318629, 0.517166, -0.794364,
		-0.946681, 0.131505, -0.294110,
		34.499683, 30.162434, 37.423481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107544, 30.797274, 37.481186>,  <35.162361, 30.070379, 37.629360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107544, 30.797274, 37.481186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742249, 30.652617, 37.556244>,  <34.523071, 30.565823, 37.601276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742249, 30.652617, 37.556244>,  <35.107544, 30.797274, 37.481186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742249, 30.652617, 37.556244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201545, 0.801258, 0.563353,
		-0.354081, 0.476657, -0.804627,
		-0.913239, -0.361641, 0.187643,
		34.468277, 30.544125, 37.612537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727783, 31.406639, 37.564079>,  <35.107544, 30.797274, 37.481186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727783, 31.406639, 37.564079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506630, 31.111086, 37.718155>,  <34.373936, 30.933754, 37.810600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506630, 31.111086, 37.718155>,  <34.727783, 31.406639, 37.564079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506630, 31.111086, 37.718155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308330, 0.610870, 0.729226,
		-0.774111, 0.284415, -0.565562,
		-0.552888, -0.738881, 0.385187,
		34.340763, 30.889421, 37.833710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006378, 31.565664, 37.474998>,  <34.727783, 31.406639, 37.564079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006378, 31.565664, 37.474998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024017, 31.310099, 37.782204>,  <34.034599, 31.156759, 37.966526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024017, 31.310099, 37.782204>,  <34.006378, 31.565664, 37.474998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024017, 31.310099, 37.782204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276502, 0.730927, 0.623933,
		-0.960001, -0.239870, -0.144431,
		0.044094, -0.638912, 0.768015,
		34.037247, 31.118425, 38.012608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301388, 31.589533, 37.895840>,  <34.006378, 31.565664, 37.474998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301388, 31.589533, 37.895840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574318, 31.449501, 38.152550>,  <33.738075, 31.365482, 38.306576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574318, 31.449501, 38.152550>,  <33.301388, 31.589533, 37.895840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574318, 31.449501, 38.152550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385109, 0.574074, 0.722586,
		-0.621389, -0.740192, 0.256887,
		0.682324, -0.350077, 0.641778,
		33.779015, 31.344479, 38.345081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895966, 31.482206, 38.594921>,  <33.301388, 31.589533, 37.895840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895966, 31.482206, 38.594921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290413, 31.502785, 38.658062>,  <33.527081, 31.515131, 38.695946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290413, 31.502785, 38.658062>,  <32.895966, 31.482206, 38.594921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290413, 31.502785, 38.658062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160255, 0.543459, 0.823996,
		-0.043397, -0.837858, 0.544161,
		0.986121, 0.051446, 0.157855,
		33.586250, 31.518219, 38.705418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956017, 31.392332, 39.302734>,  <32.895966, 31.482206, 38.594921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956017, 31.392332, 39.302734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300636, 31.559517, 39.187466>,  <33.507408, 31.659828, 39.118305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300636, 31.559517, 39.187466>,  <32.956017, 31.392332, 39.302734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300636, 31.559517, 39.187466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048566, 0.497166, 0.866295,
		0.505368, -0.760340, 0.408027,
		0.861536, 0.417982, -0.288178,
		33.559101, 31.684906, 39.101013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224186, 31.545322, 39.894875>,  <32.956017, 31.392332, 39.302734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224186, 31.545322, 39.894875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.468906, 31.777617, 39.680046>,  <33.615738, 31.916994, 39.551147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.468906, 31.777617, 39.680046>,  <33.224186, 31.545322, 39.894875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468906, 31.777617, 39.680046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001559, 0.679854, 0.733346,
		0.791015, -0.447820, 0.416837,
		0.611795, 0.580737, -0.537076,
		33.652447, 31.951838, 39.518925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701950, 31.835806, 40.303837>,  <33.224186, 31.545322, 39.894875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701950, 31.835806, 40.303837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701946, 32.095398, 39.999516>,  <33.701946, 32.251152, 39.816921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.701946, 32.095398, 39.999516>,  <33.701950, 31.835806, 40.303837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701946, 32.095398, 39.999516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087161, 0.757911, 0.646509,
		0.996194, 0.066317, 0.056561,
		-0.000006, 0.648978, -0.760807,
		33.701946, 32.290092, 39.771275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218559, 32.411835, 40.446632>,  <33.701950, 31.835806, 40.303837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218559, 32.411835, 40.446632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979652, 32.568699, 40.166779>,  <33.836308, 32.662819, 39.998867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979652, 32.568699, 40.166779>,  <34.218559, 32.411835, 40.446632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979652, 32.568699, 40.166779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019131, 0.865095, 0.501242,
		0.801817, 0.312758, -0.509187,
		-0.597263, 0.392163, -0.699632,
		33.800472, 32.686348, 39.956890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464668, 33.059776, 40.431751>,  <34.218559, 32.411835, 40.446632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464668, 33.059776, 40.431751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090591, 33.060085, 40.290100>,  <33.866146, 33.060272, 40.205109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090591, 33.060085, 40.290100>,  <34.464668, 33.059776, 40.431751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090591, 33.060085, 40.290100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184392, 0.852677, 0.488817,
		0.302336, 0.522438, -0.797277,
		-0.935196, 0.000775, -0.354129,
		33.810032, 33.060318, 40.183861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391350, 33.633411, 40.133286>,  <34.464668, 33.059776, 40.431751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391350, 33.633411, 40.133286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013527, 33.526470, 40.209526>,  <33.786831, 33.462307, 40.255272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013527, 33.526470, 40.209526>,  <34.391350, 33.633411, 40.133286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013527, 33.526470, 40.209526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180001, 0.907141, 0.380387,
		-0.274600, 0.324990, -0.904973,
		-0.944560, -0.267351, 0.190602,
		33.730160, 33.446266, 40.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980705, 34.189896, 39.816967>,  <34.391350, 33.633411, 40.133286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980705, 34.189896, 39.816967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754269, 33.982399, 40.073235>,  <33.618408, 33.857903, 40.226994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.754269, 33.982399, 40.073235>,  <33.980705, 34.189896, 39.816967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754269, 33.982399, 40.073235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292768, 0.853032, 0.431998,
		-0.770603, 0.056983, -0.634762,
		-0.566089, -0.518737, 0.640667,
		33.584442, 33.826778, 40.265434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287312, 34.604752, 39.839748>,  <33.980705, 34.189896, 39.816967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287312, 34.604752, 39.839748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272125, 34.386265, 40.174461>,  <33.263012, 34.255173, 40.375290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272125, 34.386265, 40.174461>,  <33.287312, 34.604752, 39.839748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272125, 34.386265, 40.174461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246498, 0.816629, 0.521878,
		-0.968399, -0.186451, -0.165646,
		-0.037967, -0.546218, 0.836782,
		33.260735, 34.222401, 40.425495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556461, 34.669418, 40.171150>,  <33.287312, 34.604752, 39.839748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556461, 34.669418, 40.171150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868259, 34.590244, 40.408875>,  <33.055340, 34.542740, 40.551510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868259, 34.590244, 40.408875>,  <32.556461, 34.669418, 40.171150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868259, 34.590244, 40.408875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197487, 0.822726, 0.533030,
		-0.594463, -0.532863, 0.602221,
		0.779495, -0.197936, 0.594314,
		33.102108, 34.530865, 40.587170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366993, 35.265102, 39.706543>,  <32.556461, 34.669418, 40.171150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366993, 35.265102, 39.706543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669651, 35.505878, 39.604443>,  <32.851246, 35.650345, 39.543182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669651, 35.505878, 39.604443>,  <32.366993, 35.265102, 39.706543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669651, 35.505878, 39.604443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165663, -0.201148, -0.965451,
		-0.632486, 0.772792, -0.052479,
		0.756648, 0.601940, -0.255247,
		32.896645, 35.686462, 39.527870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116142, 35.594944, 39.058926>,  <32.366993, 35.265102, 39.706543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116142, 35.594944, 39.058926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511246, 35.651485, 39.032513>,  <32.748306, 35.685410, 39.016663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511246, 35.651485, 39.032513>,  <32.116142, 35.594944, 39.058926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511246, 35.651485, 39.032513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045575, -0.143380, -0.988618,
		-0.149211, 0.979521, -0.135182,
		0.987755, 0.141352, -0.066035,
		32.807571, 35.693890, 39.012703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185116, 36.053436, 38.558243>,  <32.116142, 35.594944, 39.058926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185116, 36.053436, 38.558243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516140, 35.835365, 38.611797>,  <32.714752, 35.704521, 38.643932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516140, 35.835365, 38.611797>,  <32.185116, 36.053436, 38.558243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516140, 35.835365, 38.611797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033600, -0.286175, -0.957588,
		0.560376, 0.787960, -0.255144,
		0.827557, -0.545182, 0.133891,
		32.764408, 35.671810, 38.651966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415203, 35.994167, 37.802238>,  <32.185116, 36.053436, 38.558243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415203, 35.994167, 37.802238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683887, 35.751354, 37.972095>,  <32.845097, 35.605667, 38.074009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683887, 35.751354, 37.972095>,  <32.415203, 35.994167, 37.802238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683887, 35.751354, 37.972095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104546, -0.489794, -0.865547,
		0.733403, 0.625788, -0.265535,
		0.671707, -0.607034, 0.424640,
		32.885399, 35.569244, 38.099487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981464, 35.953960, 37.428005>,  <32.415203, 35.994167, 37.802238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981464, 35.953960, 37.428005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935223, 35.610077, 37.627018>,  <32.907478, 35.403748, 37.746426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935223, 35.610077, 37.627018>,  <32.981464, 35.953960, 37.428005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935223, 35.610077, 37.627018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104246, -0.487627, -0.866806,
		0.987810, -0.152072, -0.033250,
		-0.115603, -0.859706, 0.497536,
		32.900543, 35.352165, 37.776279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301613, 35.488537, 36.962097>,  <32.981464, 35.953960, 37.428005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301613, 35.488537, 36.962097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100449, 35.255051, 37.217083>,  <32.979752, 35.114960, 37.370075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100449, 35.255051, 37.217083>,  <33.301613, 35.488537, 36.962097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100449, 35.255051, 37.217083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078762, -0.703499, -0.706319,
		0.860745, -0.405420, 0.307820,
		-0.502907, -0.583716, 0.637465,
		32.949577, 35.079937, 37.408321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672997, 34.862457, 37.000523>,  <33.301613, 35.488537, 36.962097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672997, 34.862457, 37.000523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300430, 34.782280, 37.122040>,  <33.076893, 34.734173, 37.194950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300430, 34.782280, 37.122040>,  <33.672997, 34.862457, 37.000523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300430, 34.782280, 37.122040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004258, -0.828626, -0.559787,
		0.363940, -0.522686, 0.770939,
		-0.931413, -0.200446, 0.303795,
		33.021008, 34.722145, 37.213177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708714, 34.143669, 37.013489>,  <33.672997, 34.862457, 37.000523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708714, 34.143669, 37.013489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314419, 34.194496, 37.057621>,  <33.077843, 34.224991, 37.084103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.314419, 34.194496, 37.057621>,  <33.708714, 34.143669, 37.013489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314419, 34.194496, 37.057621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166344, -0.835014, -0.524482,
		0.025485, -0.535355, 0.844242,
		-0.985738, 0.127069, 0.110333,
		33.018696, 34.232616, 37.090721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431606, 33.510433, 37.233551>,  <33.708714, 34.143669, 37.013489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431606, 33.510433, 37.233551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130924, 33.701424, 37.051579>,  <32.950516, 33.816017, 36.942394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130924, 33.701424, 37.051579>,  <33.431606, 33.510433, 37.233551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130924, 33.701424, 37.051579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068653, -0.742717, -0.666076,
		-0.655921, -0.469458, 0.591081,
		-0.751701, 0.477472, -0.454934,
		32.905415, 33.844666, 36.915096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951660, 33.014740, 37.207336>,  <33.431606, 33.510433, 37.233551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951660, 33.014740, 37.207336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855042, 33.289791, 36.933453>,  <32.797070, 33.454823, 36.769123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855042, 33.289791, 36.933453>,  <32.951660, 33.014740, 37.207336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855042, 33.289791, 36.933453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242994, -0.725979, -0.643357,
		-0.939474, 0.010980, 0.342446,
		-0.241544, 0.687629, -0.684707,
		32.782578, 33.496078, 36.728043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342968, 32.792526, 36.811100>,  <32.951660, 33.014740, 37.207336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342968, 32.792526, 36.811100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509659, 33.052803, 36.557190>,  <32.609673, 33.208969, 36.404842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.509659, 33.052803, 36.557190>,  <32.342968, 32.792526, 36.811100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509659, 33.052803, 36.557190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169525, -0.630421, -0.757516,
		-0.893083, 0.423290, -0.152408,
		0.416730, 0.650688, -0.634777,
		32.634678, 33.248009, 36.366756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876003, 32.732044, 36.227390>,  <32.342968, 32.792526, 36.811100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876003, 32.732044, 36.227390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219395, 32.898083, 36.106918>,  <32.425430, 32.997707, 36.034637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219395, 32.898083, 36.106918>,  <31.876003, 32.732044, 36.227390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219395, 32.898083, 36.106918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026199, -0.551001, -0.834093,
		-0.512178, 0.723942, -0.462148,
		0.858479, 0.415096, -0.301178,
		32.476940, 33.022614, 36.016563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775307, 32.876816, 35.545391>,  <31.876003, 32.732044, 36.227390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775307, 32.876816, 35.545391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171921, 32.906258, 35.588177>,  <32.409889, 32.923923, 35.613846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171921, 32.906258, 35.588177>,  <31.775307, 32.876816, 35.545391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171921, 32.906258, 35.588177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129650, -0.605716, -0.785047,
		0.007007, 0.792269, -0.610132,
		0.991535, 0.073602, 0.106962,
		32.469379, 32.928337, 35.620266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993559, 33.053837, 35.004810>,  <31.775307, 32.876816, 35.545391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993559, 33.053837, 35.004810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334671, 32.893429, 35.138641>,  <32.539337, 32.797184, 35.218941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334671, 32.893429, 35.138641>,  <31.993559, 33.053837, 35.004810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334671, 32.893429, 35.138641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121898, -0.470095, -0.874158,
		0.507841, 0.786251, -0.352004,
		0.852783, -0.401025, 0.334576,
		32.590508, 32.773121, 35.239014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605297, 33.171196, 34.469429>,  <31.993559, 33.053837, 35.004810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605297, 33.171196, 34.469429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703247, 32.845921, 34.680622>,  <32.762016, 32.650757, 34.807339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703247, 32.845921, 34.680622>,  <32.605297, 33.171196, 34.469429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703247, 32.845921, 34.680622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207710, -0.487917, -0.847817,
		0.947045, 0.317274, 0.049429,
		0.244873, -0.813188, 0.527981,
		32.776711, 32.601963, 34.839016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217400, 32.921593, 34.205181>,  <32.605297, 33.171196, 34.469429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217400, 32.921593, 34.205181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061138, 32.595585, 34.376362>,  <32.967381, 32.399982, 34.479069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061138, 32.595585, 34.376362>,  <33.217400, 32.921593, 34.205181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061138, 32.595585, 34.376362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281126, -0.548307, -0.787609,
		0.876561, -0.187374, 0.443319,
		-0.390652, -0.815016, 0.427949,
		32.943943, 32.351082, 34.504745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711613, 32.387005, 33.961224>,  <33.217400, 32.921593, 34.205181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711613, 32.387005, 33.961224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397930, 32.194023, 34.117310>,  <33.209721, 32.078236, 34.210960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397930, 32.194023, 34.117310>,  <33.711613, 32.387005, 33.961224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397930, 32.194023, 34.117310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164200, -0.767794, -0.619298,
		0.598385, -0.421582, 0.681325,
		-0.784202, -0.482452, 0.390213,
		33.162670, 32.049286, 34.234375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817444, 31.591311, 34.062969>,  <33.711613, 32.387005, 33.961224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817444, 31.591311, 34.062969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422150, 31.643763, 34.031467>,  <33.184975, 31.675234, 34.012566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422150, 31.643763, 34.031467>,  <33.817444, 31.591311, 34.062969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422150, 31.643763, 34.031467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024586, -0.644327, -0.764355,
		-0.150974, -0.753424, 0.639969,
		-0.988232, 0.131132, -0.078753,
		33.125679, 31.683102, 34.007843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577156, 30.849766, 33.912510>,  <33.817444, 31.591311, 34.062969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577156, 30.849766, 33.912510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303551, 31.114902, 33.790680>,  <33.139385, 31.273985, 33.717583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303551, 31.114902, 33.790680>,  <33.577156, 30.849766, 33.912510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303551, 31.114902, 33.790680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170281, -0.551079, -0.816895,
		-0.709314, -0.506907, 0.489816,
		-0.684016, 0.662841, -0.304572,
		33.098347, 31.313755, 33.699310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082298, 30.441317, 33.596897>,  <33.577156, 30.849766, 33.912510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082298, 30.441317, 33.596897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.966049, 30.799500, 33.462021>,  <32.896301, 31.014410, 33.381096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.966049, 30.799500, 33.462021>,  <33.082298, 30.441317, 33.596897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966049, 30.799500, 33.462021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132135, -0.386579, -0.912742,
		-0.947671, -0.220706, 0.230668,
		-0.290619, 0.895459, -0.337187,
		32.878864, 31.068136, 33.360867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465019, 30.347033, 33.183571>,  <33.082298, 30.441317, 33.596897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465019, 30.347033, 33.183571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636032, 30.684458, 33.053577>,  <32.738640, 30.886913, 32.975582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636032, 30.684458, 33.053577>,  <32.465019, 30.347033, 33.183571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636032, 30.684458, 33.053577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081075, -0.322264, -0.943172,
		-0.900356, 0.429586, -0.069387,
		0.427534, 0.843565, -0.324981,
		32.764294, 30.937527, 32.956081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176727, 30.498373, 32.560005>,  <32.465019, 30.347033, 33.183571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176727, 30.498373, 32.560005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476967, 30.760937, 32.529705>,  <32.657108, 30.918474, 32.511524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476967, 30.760937, 32.529705>,  <32.176727, 30.498373, 32.560005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476967, 30.760937, 32.529705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021978, -0.089769, -0.995720,
		-0.660398, 0.749047, -0.052953,
		0.750594, 0.656408, -0.075746,
		32.702145, 30.957859, 32.506981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013382, 31.029776, 32.166290>,  <32.176727, 30.498373, 32.560005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013382, 31.029776, 32.166290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411686, 30.998461, 32.146946>,  <32.650669, 30.979671, 32.135338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411686, 30.998461, 32.146946>,  <32.013382, 31.029776, 32.166290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411686, 30.998461, 32.146946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037040, 0.140135, -0.989439,
		0.084238, 0.987033, 0.136640,
		0.995757, -0.078287, -0.048365,
		32.710415, 30.974976, 32.132435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229977, 31.521404, 31.657803>,  <32.013382, 31.029776, 32.166290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229977, 31.521404, 31.657803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560413, 31.297670, 31.685282>,  <32.758675, 31.163429, 31.701769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560413, 31.297670, 31.685282>,  <32.229977, 31.521404, 31.657803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560413, 31.297670, 31.685282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163415, 0.121100, -0.979096,
		0.539324, 0.820048, 0.191444,
		0.826090, -0.559335, 0.068696,
		32.808239, 31.129869, 31.705891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726608, 31.856522, 31.280123>,  <32.229977, 31.521404, 31.657803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726608, 31.856522, 31.280123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823116, 31.468548, 31.292866>,  <32.881020, 31.235764, 31.300512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823116, 31.468548, 31.292866>,  <32.726608, 31.856522, 31.280123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823116, 31.468548, 31.292866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160005, 0.007380, -0.987089,
		0.957176, 0.243254, 0.156976,
		0.241272, -0.969935, 0.031858,
		32.895496, 31.177567, 31.302423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144997, 31.744455, 30.655815>,  <32.726608, 31.856522, 31.280123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144997, 31.744455, 30.655815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093651, 31.366964, 30.777731>,  <33.062843, 31.140469, 30.850882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093651, 31.366964, 30.777731>,  <33.144997, 31.744455, 30.655815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093651, 31.366964, 30.777731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130247, -0.320714, -0.938178,
		0.983137, -0.080727, 0.164085,
		-0.128360, -0.943730, 0.304791,
		33.055141, 31.083845, 30.869169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693588, 31.384447, 30.378378>,  <33.144997, 31.744455, 30.655815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693588, 31.384447, 30.378378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369331, 31.160803, 30.447947>,  <33.174778, 31.026615, 30.489689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.369331, 31.160803, 30.447947>,  <33.693588, 31.384447, 30.378378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369331, 31.160803, 30.447947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078098, -0.397619, -0.914221,
		0.580307, -0.727525, 0.365993,
		-0.810645, -0.559112, 0.173923,
		33.126137, 30.993069, 30.500124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407887, 31.185471, 30.557138>,  <33.693588, 31.384447, 30.378378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407887, 31.185471, 30.557138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690044, 31.398573, 30.370123>,  <34.859337, 31.526434, 30.257914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690044, 31.398573, 30.370123>,  <34.407887, 31.185471, 30.557138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690044, 31.398573, 30.370123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044511, 0.625010, 0.779347,
		0.707420, -0.570554, 0.417163,
		0.705390, 0.532758, -0.467541,
		34.901661, 31.558399, 30.229860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960354, 31.189295, 30.974756>,  <34.407887, 31.185471, 30.557138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960354, 31.189295, 30.974756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087280, 31.502625, 30.760948>,  <35.163437, 31.690622, 30.632664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087280, 31.502625, 30.760948>,  <34.960354, 31.189295, 30.974756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087280, 31.502625, 30.760948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418368, 0.390200, 0.820191,
		0.851045, -0.483888, -0.203899,
		0.317319, 0.783324, -0.534521,
		35.182476, 31.737621, 30.600592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743313, 31.255062, 31.029215>,  <34.960354, 31.189295, 30.974756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743313, 31.255062, 31.029215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558689, 31.600626, 30.948591>,  <35.447914, 31.807964, 30.900217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558689, 31.600626, 30.948591>,  <35.743313, 31.255062, 31.029215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558689, 31.600626, 30.948591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137497, 0.294128, 0.945824,
		0.876390, 0.408839, -0.254543,
		-0.461558, 0.863909, -0.201557,
		35.420223, 31.859798, 30.888124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121254, 31.669273, 31.528694>,  <35.743313, 31.255062, 31.029215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121254, 31.669273, 31.528694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808960, 31.887060, 31.406055>,  <35.621582, 32.017731, 31.332472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808960, 31.887060, 31.406055>,  <36.121254, 31.669273, 31.528694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808960, 31.887060, 31.406055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098158, 0.377707, 0.920708,
		0.617099, 0.748928, -0.241447,
		-0.780740, 0.544467, -0.306596,
		35.574738, 32.050400, 31.314077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319901, 32.335678, 31.656916>,  <36.121254, 31.669273, 31.528694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319901, 32.335678, 31.656916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920540, 32.328823, 31.678432>,  <35.680923, 32.324711, 31.691341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920540, 32.328823, 31.678432>,  <36.319901, 32.335678, 31.656916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920540, 32.328823, 31.678432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044228, 0.354756, 0.933912,
		-0.035085, 0.934802, -0.353432,
		-0.998405, -0.017135, 0.053791,
		35.621017, 32.323681, 31.694571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
