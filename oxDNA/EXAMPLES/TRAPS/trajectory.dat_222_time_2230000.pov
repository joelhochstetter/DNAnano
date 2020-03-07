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
	<36.178871, 52.486843, 49.889011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314053, 52.841167, 49.761810>,  <36.395161, 53.053761, 49.685490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314053, 52.841167, 49.761810>,  <36.178871, 52.486843, 49.889011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314053, 52.841167, 49.761810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939626, -0.298246, 0.167789,
		0.053786, -0.355509, -0.933124,
		0.337951, 0.885812, -0.318004,
		36.415440, 53.106911, 49.666409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554054, 52.390553, 49.270046>,  <36.178871, 52.486843, 49.889011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554054, 52.390553, 49.270046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703861, 52.699860, 49.474709>,  <36.793747, 52.885445, 49.597507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703861, 52.699860, 49.474709>,  <36.554054, 52.390553, 49.270046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703861, 52.699860, 49.474709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925319, -0.276397, -0.259596,
		-0.059317, 0.570669, -0.819035,
		0.374522, 0.773267, 0.511656,
		36.816219, 52.931839, 49.628204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932178, 52.791218, 48.701881>,  <36.554054, 52.390553, 49.270046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932178, 52.791218, 48.701881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039024, 52.846516, 49.083359>,  <37.103134, 52.879696, 49.312244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039024, 52.846516, 49.083359>,  <36.932178, 52.791218, 48.701881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039024, 52.846516, 49.083359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952598, -0.187427, -0.239642,
		0.145619, 0.972501, -0.181760,
		0.267119, 0.138248, 0.953696,
		37.119160, 52.887989, 49.369469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512062, 53.241035, 48.659843>,  <36.932178, 52.791218, 48.701881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512062, 53.241035, 48.659843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509789, 53.015442, 48.990150>,  <37.508427, 52.880085, 49.188335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509789, 53.015442, 48.990150>,  <37.512062, 53.241035, 48.659843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509789, 53.015442, 48.990150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930153, -0.306152, -0.202696,
		0.367127, 0.766939, 0.526330,
		-0.005682, -0.563983, 0.825767,
		37.508083, 52.846249, 49.237881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130512, 53.324924, 49.042362>,  <37.512062, 53.241035, 48.659843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130512, 53.324924, 49.042362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976360, 52.956757, 49.068619>,  <37.883869, 52.735855, 49.084373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976360, 52.956757, 49.068619>,  <38.130512, 53.324924, 49.042362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976360, 52.956757, 49.068619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882017, -0.388333, -0.266915,
		0.271164, -0.044969, 0.961482,
		-0.385378, -0.920421, 0.065639,
		37.860748, 52.680630, 49.088310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651554, 52.986172, 49.493195>,  <38.130512, 53.324924, 49.042362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651554, 52.986172, 49.493195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456406, 52.762981, 49.224670>,  <38.339317, 52.629066, 49.063557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456406, 52.762981, 49.224670>,  <38.651554, 52.986172, 49.493195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456406, 52.762981, 49.224670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837079, -0.517142, -0.178504,
		-0.247560, -0.649022, 0.719365,
		-0.487866, -0.557974, -0.671306,
		38.310047, 52.595589, 49.023277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549713, 52.209137, 49.653217>,  <38.651554, 52.986172, 49.493195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549713, 52.209137, 49.653217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585136, 52.299126, 49.265083>,  <38.606388, 52.353119, 49.032204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585136, 52.299126, 49.265083>,  <38.549713, 52.209137, 49.653217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585136, 52.299126, 49.265083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890176, -0.454971, -0.024245,
		-0.446928, -0.861621, -0.240551,
		0.088554, 0.224968, -0.970334,
		38.611702, 52.366615, 48.973984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675007, 51.584835, 49.105812>,  <38.549713, 52.209137, 49.653217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675007, 51.584835, 49.105812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844887, 51.929348, 48.994225>,  <38.946815, 52.136055, 48.927273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844887, 51.929348, 48.994225>,  <38.675007, 51.584835, 49.105812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844887, 51.929348, 48.994225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901958, -0.429118, 0.048270,
		-0.078137, -0.272120, -0.959086,
		0.424696, 0.861283, -0.278971,
		38.972294, 52.187733, 48.910534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351982, 51.377235, 48.999760>,  <38.675007, 51.584835, 49.105812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351982, 51.377235, 48.999760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447987, 51.761803, 48.946003>,  <39.505589, 51.992542, 48.913750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447987, 51.761803, 48.946003>,  <39.351982, 51.377235, 48.999760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447987, 51.761803, 48.946003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969450, -0.230168, 0.084791,
		0.050588, -0.150635, -0.987294,
		0.240016, 0.961422, -0.134389,
		39.519993, 52.050228, 48.905685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812088, 51.530376, 48.393032>,  <39.351982, 51.377235, 48.999760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812088, 51.530376, 48.393032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856720, 51.747478, 48.726009>,  <39.883499, 51.877739, 48.925797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856720, 51.747478, 48.726009>,  <39.812088, 51.530376, 48.393032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856720, 51.747478, 48.726009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955914, -0.287581, 0.059374,
		0.271622, 0.789123, -0.550913,
		0.111579, 0.542753, 0.832448,
		39.890194, 51.910305, 48.975742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485886, 51.810246, 48.411476>,  <39.812088, 51.530376, 48.393032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485886, 51.810246, 48.411476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392025, 51.797615, 48.800102>,  <40.335709, 51.790035, 49.033279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392025, 51.797615, 48.800102>,  <40.485886, 51.810246, 48.411476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392025, 51.797615, 48.800102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939123, -0.265414, 0.218184,
		0.250977, 0.963617, 0.091937,
		-0.234647, -0.031581, 0.971568,
		40.321632, 51.788139, 49.091572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888489, 52.203426, 48.831028>,  <40.485886, 51.810246, 48.411476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888489, 52.203426, 48.831028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768513, 51.888107, 49.045921>,  <40.696529, 51.698917, 49.174858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768513, 51.888107, 49.045921>,  <40.888489, 52.203426, 48.831028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768513, 51.888107, 49.045921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948565, -0.306253, 0.080208,
		0.101303, 0.533661, 0.839609,
		-0.299936, -0.788299, 0.537237,
		40.678532, 51.651619, 49.207092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266037, 52.158882, 49.510162>,  <40.888489, 52.203426, 48.831028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266037, 52.158882, 49.510162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174244, 51.817680, 49.322662>,  <41.119167, 51.612961, 49.210163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174244, 51.817680, 49.322662>,  <41.266037, 52.158882, 49.510162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174244, 51.817680, 49.322662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972372, -0.179743, -0.148945,
		0.042797, -0.489976, 0.870685,
		-0.229479, -0.853004, -0.468747,
		41.105400, 51.561779, 49.182037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710373, 51.537704, 49.782387>,  <41.266037, 52.158882, 49.510162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710373, 51.537704, 49.782387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567364, 51.486534, 49.412346>,  <41.481560, 51.455833, 49.190323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567364, 51.486534, 49.412346>,  <41.710373, 51.537704, 49.782387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567364, 51.486534, 49.412346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910579, -0.267755, -0.314886,
		-0.207421, -0.954957, 0.212212,
		-0.357523, -0.127921, -0.925102,
		41.460106, 51.448158, 49.134815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215309, 51.573334, 49.284969>,  <41.710373, 51.537704, 49.782387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215309, 51.573334, 49.284969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480034, 51.302727, 49.155769>,  <42.638870, 51.140362, 49.078251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480034, 51.302727, 49.155769>,  <42.215309, 51.573334, 49.284969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480034, 51.302727, 49.155769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747984, 0.624746, 0.224081,
		0.050197, -0.389897, 0.919489,
		0.661816, -0.676515, -0.322997,
		42.678577, 51.099773, 49.058868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683994, 51.513210, 49.840836>,  <42.215309, 51.573334, 49.284969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683994, 51.513210, 49.840836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890270, 51.428864, 49.508667>,  <43.014034, 51.378254, 49.309364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890270, 51.428864, 49.508667>,  <42.683994, 51.513210, 49.840836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890270, 51.428864, 49.508667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726423, 0.621526, 0.293282,
		0.454284, -0.754479, 0.473695,
		0.515689, -0.210870, -0.830421,
		43.044975, 51.365604, 49.259541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389454, 51.304718, 49.960926>,  <42.683994, 51.513210, 49.840836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389454, 51.304718, 49.960926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352280, 51.505901, 49.617207>,  <43.329975, 51.626610, 49.410976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352280, 51.505901, 49.617207>,  <43.389454, 51.304718, 49.960926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352280, 51.505901, 49.617207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789362, 0.563231, 0.244290,
		0.606852, -0.655594, -0.449363,
		-0.092940, 0.502958, -0.859299,
		43.324398, 51.656788, 49.359417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004227, 51.347878, 49.475197>,  <43.389454, 51.304718, 49.960926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004227, 51.347878, 49.475197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796574, 51.682159, 49.403526>,  <43.671982, 51.882729, 49.360523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796574, 51.682159, 49.403526>,  <44.004227, 51.347878, 49.475197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796574, 51.682159, 49.403526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854513, 0.503134, -0.129093,
		-0.017734, -0.220124, -0.975311,
		-0.519128, 0.835705, -0.179176,
		43.640835, 51.932869, 49.349773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151520, 51.636871, 48.834328>,  <44.004227, 51.347878, 49.475197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151520, 51.636871, 48.834328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022213, 51.939426, 49.061790>,  <43.944630, 52.120960, 49.198269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022213, 51.939426, 49.061790>,  <44.151520, 51.636871, 48.834328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022213, 51.939426, 49.061790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747291, 0.572720, -0.336969,
		-0.580563, 0.316024, -0.750384,
		-0.323270, 0.756387, 0.568662,
		43.925232, 52.166344, 49.232388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401188, 52.242329, 48.624588>,  <44.151520, 51.636871, 48.834328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401188, 52.242329, 48.624588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329182, 52.338013, 49.006241>,  <44.285976, 52.395424, 49.235233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329182, 52.338013, 49.006241>,  <44.401188, 52.242329, 48.624588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329182, 52.338013, 49.006241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792578, 0.609762, -0.003338,
		-0.582592, 0.755624, -0.299365,
		-0.180019, 0.239214, 0.954133,
		44.275177, 52.409779, 49.292480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327393, 52.967010, 48.756397>,  <44.401188, 52.242329, 48.624588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327393, 52.967010, 48.756397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456776, 52.776489, 49.083447>,  <44.534405, 52.662174, 49.279675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456776, 52.776489, 49.083447>,  <44.327393, 52.967010, 48.756397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456776, 52.776489, 49.083447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893146, 0.439059, -0.097558,
		-0.312518, 0.761813, 0.567427,
		0.323455, -0.476307, 0.817624,
		44.553814, 52.633598, 49.328735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561096, 53.457264, 49.392761>,  <44.327393, 52.967010, 48.756397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561096, 53.457264, 49.392761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755188, 53.108398, 49.367851>,  <44.871643, 52.899078, 49.352905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755188, 53.108398, 49.367851>,  <44.561096, 53.457264, 49.392761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755188, 53.108398, 49.367851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853950, 0.487997, -0.180631,
		0.187930, 0.034468, 0.981578,
		0.485233, -0.872164, -0.062275,
		44.900757, 52.846748, 49.349167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138424, 53.568703, 49.904175>,  <44.561096, 53.457264, 49.392761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138424, 53.568703, 49.904175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224277, 53.329281, 49.595459>,  <45.275791, 53.185627, 49.410229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224277, 53.329281, 49.595459>,  <45.138424, 53.568703, 49.904175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224277, 53.329281, 49.595459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908328, 0.412774, -0.067512,
		0.358986, -0.686552, 0.632278,
		0.214637, -0.598552, -0.771794,
		45.288670, 53.149715, 49.363922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813271, 53.150246, 49.915123>,  <45.138424, 53.568703, 49.904175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813271, 53.150246, 49.915123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723869, 53.196983, 49.528053>,  <45.670227, 53.225025, 49.295811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723869, 53.196983, 49.528053>,  <45.813271, 53.150246, 49.915123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723869, 53.196983, 49.528053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954828, 0.225711, -0.193280,
		0.195830, -0.967161, -0.162016,
		-0.223502, 0.116847, -0.967674,
		45.656818, 53.232037, 49.237751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.324032, 52.816601, 49.673409>,  <45.813271, 53.150246, 49.915123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.324032, 52.816601, 49.673409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213234, 53.071495, 49.385738>,  <46.146755, 53.224430, 49.213139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213234, 53.071495, 49.385738>,  <46.324032, 52.816601, 49.673409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213234, 53.071495, 49.385738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875891, -0.140296, -0.461662,
		-0.395084, -0.757793, -0.519287,
		-0.276990, 0.637234, -0.719173,
		46.130138, 53.262665, 49.169987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.354225, 52.474422, 48.953609>,  <46.324032, 52.816601, 49.673409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.354225, 52.474422, 48.953609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406082, 52.869339, 48.990372>,  <46.437195, 53.106289, 49.012428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406082, 52.869339, 48.990372>,  <46.354225, 52.474422, 48.953609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406082, 52.869339, 48.990372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791112, -0.047109, -0.609854,
		-0.597774, 0.151773, -0.787166,
		0.129642, 0.987292, 0.091909,
		46.444973, 53.165527, 49.017944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271450, 52.977573, 48.358685>,  <46.354225, 52.474422, 48.953609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271450, 52.977573, 48.358685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547928, 53.093166, 48.623634>,  <46.713814, 53.162521, 48.782604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547928, 53.093166, 48.623634>,  <46.271450, 52.977573, 48.358685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547928, 53.093166, 48.623634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709216, -0.095247, -0.698528,
		-0.138773, 0.952585, -0.270785,
		0.691198, 0.288982, 0.662370,
		46.755287, 53.179859, 48.822346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763824, 53.540329, 48.153675>,  <46.271450, 52.977573, 48.358685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763824, 53.540329, 48.153675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967869, 53.271530, 48.368416>,  <47.090294, 53.110252, 48.497261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.967869, 53.271530, 48.368416>,  <46.763824, 53.540329, 48.153675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967869, 53.271530, 48.368416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683925, -0.061590, -0.726948,
		0.521568, 0.737992, 0.428175,
		0.510111, -0.671993, 0.536854,
		47.120903, 53.069931, 48.529472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446281, 53.772083, 48.480412>,  <46.763824, 53.540329, 48.153675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446281, 53.772083, 48.480412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465843, 53.385502, 48.379547>,  <47.477581, 53.153553, 48.319027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465843, 53.385502, 48.379547>,  <47.446281, 53.772083, 48.480412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.465843, 53.385502, 48.379547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737447, 0.205204, -0.643477,
		0.673632, -0.154488, 0.722740,
		0.048900, -0.966449, -0.252159,
		47.480515, 53.095566, 48.303898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.133751, 53.397720, 48.683239>,  <47.446281, 53.772083, 48.480412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.133751, 53.397720, 48.683239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957047, 53.310303, 48.335197>,  <47.851025, 53.257851, 48.126373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.957047, 53.310303, 48.335197>,  <48.133751, 53.397720, 48.683239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.957047, 53.310303, 48.335197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854410, 0.193245, -0.482328,
		0.273555, -0.956501, 0.101359,
		-0.441760, -0.218545, -0.870107,
		47.824520, 53.244740, 48.074165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.812893, 53.684269, 49.202366>,  <48.133751, 53.397720, 48.683239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.812893, 53.684269, 49.202366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.000397, 53.330959, 49.198681>,  <48.112900, 53.118973, 49.196472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.000397, 53.330959, 49.198681>,  <47.812893, 53.684269, 49.202366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.000397, 53.330959, 49.198681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051570, -0.016959, -0.998525,
		0.881818, 0.468545, -0.053500,
		0.468761, -0.883277, -0.009208,
		48.141026, 53.065975, 49.195919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.804665, 53.467716, 49.924149>,  <47.812893, 53.684269, 49.202366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.804665, 53.467716, 49.924149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442287, 53.491577, 49.756481>,  <47.224861, 53.505894, 49.655880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442287, 53.491577, 49.756481>,  <47.804665, 53.467716, 49.924149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.442287, 53.491577, 49.756481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421925, -0.209614, 0.882066,
		-0.035249, 0.975963, 0.215067,
		-0.905945, 0.059650, -0.419172,
		47.170506, 53.509472, 49.630730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.839661, 54.240993, 50.095299>,  <47.804665, 53.467716, 49.924149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.839661, 54.240993, 50.095299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.024921, 54.122169, 50.429302>,  <48.136078, 54.050877, 50.629704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.024921, 54.122169, 50.429302>,  <47.839661, 54.240993, 50.095299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.024921, 54.122169, 50.429302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482280, 0.874924, 0.043748,
		-0.743567, 0.382447, 0.548490,
		0.463156, -0.297055, 0.835012,
		48.163868, 54.033054, 50.679806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.118111, 54.776131, 50.451374>,  <47.839661, 54.240993, 50.095299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.118111, 54.776131, 50.451374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.325893, 54.545448, 50.703590>,  <48.450562, 54.407040, 50.854919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.325893, 54.545448, 50.703590>,  <48.118111, 54.776131, 50.451374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.325893, 54.545448, 50.703590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411409, 0.815542, 0.406982,
		-0.748938, 0.048000, 0.660899,
		0.519455, -0.576704, 0.630539,
		48.481731, 54.372437, 50.892754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.094948, 55.001724, 51.110485>,  <48.118111, 54.776131, 50.451374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.094948, 55.001724, 51.110485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.435925, 54.797977, 51.063362>,  <48.640511, 54.675728, 51.035088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.435925, 54.797977, 51.063362>,  <48.094948, 55.001724, 51.110485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.435925, 54.797977, 51.063362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522815, 0.830737, 0.191157,
		0.000494, -0.224540, 0.974465,
		0.852446, -0.509371, -0.117803,
		48.691658, 54.645164, 51.028023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.679985, 55.375565, 51.525787>,  <48.094948, 55.001724, 51.110485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.679985, 55.375565, 51.525787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.871277, 55.191692, 51.226456>,  <48.986053, 55.081367, 51.046856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.871277, 55.191692, 51.226456>,  <48.679985, 55.375565, 51.525787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.871277, 55.191692, 51.226456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761808, 0.641088, 0.093037,
		0.436974, -0.614572, 0.656776,
		0.478229, -0.459682, -0.748324,
		49.014744, 55.053787, 51.001957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.338341, 55.205563, 51.819149>,  <48.679985, 55.375565, 51.525787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.338341, 55.205563, 51.819149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.290554, 55.277496, 51.428581>,  <49.261883, 55.320656, 51.194241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.290554, 55.277496, 51.428581>,  <49.338341, 55.205563, 51.819149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.290554, 55.277496, 51.428581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712776, 0.700149, 0.041743,
		0.691143, -0.690978, -0.211829,
		-0.119468, 0.179837, -0.976415,
		49.254715, 55.331448, 51.135658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.956936, 55.092278, 51.392879>,  <49.338341, 55.205563, 51.819149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.956936, 55.092278, 51.392879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.721012, 55.392941, 51.274803>,  <49.579456, 55.573338, 51.203957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.721012, 55.392941, 51.274803>,  <49.956936, 55.092278, 51.392879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.721012, 55.392941, 51.274803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620115, 0.655727, 0.430674,
		0.517284, 0.070962, -0.852867,
		-0.589810, 0.751656, -0.295192,
		49.544067, 55.618439, 51.186245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.447498, 55.613728, 51.416233>,  <49.956936, 55.092278, 51.392879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.447498, 55.613728, 51.416233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.103271, 55.816891, 51.431442>,  <49.896736, 55.938789, 51.440567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.103271, 55.816891, 51.431442>,  <50.447498, 55.613728, 51.416233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.103271, 55.816891, 51.431442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502613, 0.834760, 0.224845,
		0.082463, 0.212605, -0.973652,
		-0.860569, 0.507912, 0.038021,
		49.845100, 55.969265, 51.442848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.659744, 56.250076, 51.754932>,  <50.447498, 55.613728, 51.416233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.659744, 56.250076, 51.754932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.555500, 56.159954, 52.130447>,  <50.492954, 56.105881, 52.355755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.555500, 56.159954, 52.130447>,  <50.659744, 56.250076, 51.754932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.555500, 56.159954, 52.130447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931539, -0.314113, 0.183215,
		0.253605, 0.922263, 0.291744,
		-0.260613, -0.225307, 0.938785,
		50.477318, 56.092361, 52.412083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.963703, 56.718811, 52.335365>,  <50.659744, 56.250076, 51.754932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.963703, 56.718811, 52.335365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895897, 56.349617, 52.473557>,  <50.855213, 56.128101, 52.556473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895897, 56.349617, 52.473557>,  <50.963703, 56.718811, 52.335365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.895897, 56.349617, 52.473557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958344, -0.072612, 0.276231,
		-0.229872, 0.377916, 0.896849,
		-0.169515, -0.922988, 0.345482,
		50.845043, 56.072720, 52.577202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.841091, 56.605007, 53.026814>,  <50.963703, 56.718811, 52.335365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.841091, 56.605007, 53.026814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.010883, 56.264683, 52.902916>,  <51.112759, 56.060490, 52.828579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.010883, 56.264683, 52.902916>,  <50.841091, 56.605007, 53.026814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.010883, 56.264683, 52.902916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840538, 0.243093, 0.484150,
		-0.336624, -0.465860, 0.818327,
		0.424476, -0.850811, -0.309742,
		51.138226, 56.009438, 52.809994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.360256, 56.374691, 53.591461>,  <50.841091, 56.605007, 53.026814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.360256, 56.374691, 53.591461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.461880, 56.236835, 53.229980>,  <51.522854, 56.154121, 53.013092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.461880, 56.236835, 53.229980>,  <51.360256, 56.374691, 53.591461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.461880, 56.236835, 53.229980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916532, 0.384209, 0.111145,
		0.308904, -0.856508, 0.413489,
		0.254062, -0.344642, -0.903700,
		51.538097, 56.133442, 52.958870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.016422, 56.029781, 53.625702>,  <51.360256, 56.374691, 53.591461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.016422, 56.029781, 53.625702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.971554, 56.125183, 53.239845>,  <51.944633, 56.182423, 53.008331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.971554, 56.125183, 53.239845>,  <52.016422, 56.029781, 53.625702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.971554, 56.125183, 53.239845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973890, 0.219206, -0.059052,
		0.197371, -0.946078, -0.256868,
		-0.112174, 0.238506, -0.964641,
		51.937901, 56.196735, 52.950455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.551884, 56.204155, 54.255592>,  <52.016422, 56.029781, 53.625702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.551884, 56.204155, 54.255592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.778919, 56.245750, 54.582279>,  <52.915142, 56.270710, 54.778290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.778919, 56.245750, 54.582279>,  <52.551884, 56.204155, 54.255592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.778919, 56.245750, 54.582279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607183, -0.722822, -0.329937,
		0.556028, 0.683165, -0.473411,
		0.567593, 0.103993, 0.816715,
		52.949196, 56.276947, 54.827293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.243427, 56.417816, 54.114605>,  <52.551884, 56.204155, 54.255592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.243427, 56.417816, 54.114605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.260658, 56.234840, 54.469883>,  <53.270996, 56.125057, 54.683052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.260658, 56.234840, 54.469883>,  <53.243427, 56.417816, 54.114605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.260658, 56.234840, 54.469883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754704, -0.567639, -0.328948,
		0.654649, 0.684499, 0.320774,
		0.043080, -0.457435, 0.888199,
		53.273582, 56.097610, 54.736343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.869411, 56.865067, 54.244171>,  <53.243427, 56.417816, 54.114605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.869411, 56.865067, 54.244171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.043358, 57.197685, 54.105938>,  <54.147724, 57.397255, 54.022999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.043358, 57.197685, 54.105938>,  <53.869411, 56.865067, 54.244171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.043358, 57.197685, 54.105938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814445, -0.526909, -0.242994,
		-0.384149, -0.175785, -0.906383,
		0.434867, 0.831544, -0.345579,
		54.173817, 57.447147, 54.002266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.151325, 56.668682, 53.566422>,  <53.869411, 56.865067, 54.244171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.151325, 56.668682, 53.566422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.332253, 56.995804, 53.708740>,  <54.440811, 57.192078, 53.794132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.332253, 56.995804, 53.708740>,  <54.151325, 56.668682, 53.566422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.332253, 56.995804, 53.708740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863459, -0.301695, -0.404251,
		-0.223257, 0.490071, -0.842607,
		0.452323, 0.817808, 0.355800,
		54.467949, 57.241146, 53.815479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.684052, 56.883930, 53.066162>,  <54.151325, 56.668682, 53.566422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.684052, 56.883930, 53.066162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.824394, 56.969234, 53.430889>,  <54.908600, 57.020416, 53.649727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.824394, 56.969234, 53.430889>,  <54.684052, 56.883930, 53.066162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.824394, 56.969234, 53.430889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896201, -0.358806, -0.260923,
		0.271522, 0.908723, -0.317016,
		0.350854, 0.213264, 0.911822,
		54.929649, 57.033215, 53.704437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.288868, 57.279922, 52.977924>,  <54.684052, 56.883930, 53.066162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.288868, 57.279922, 52.977924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.345329, 57.168392, 53.357887>,  <55.379204, 57.101475, 53.585865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.345329, 57.168392, 53.357887>,  <55.288868, 57.279922, 52.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.345329, 57.168392, 53.357887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970715, -0.149428, -0.188103,
		0.194393, 0.948644, 0.249573,
		0.141150, -0.278830, 0.949911,
		55.387672, 57.084743, 53.642860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.936424, 57.519691, 53.208134>,  <55.288868, 57.279922, 52.977924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.936424, 57.519691, 53.208134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.876991, 57.207680, 53.451271>,  <55.841331, 57.020470, 53.597153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.876991, 57.207680, 53.451271>,  <55.936424, 57.519691, 53.208134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.876991, 57.207680, 53.451271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937412, -0.306848, -0.164633,
		0.314934, 0.545336, 0.776805,
		-0.148580, -0.780034, 0.607841,
		55.832417, 56.973671, 53.633625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.473244, 57.561520, 53.844055>,  <55.936424, 57.519691, 53.208134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.473244, 57.561520, 53.844055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.348671, 57.219177, 53.678879>,  <56.273930, 57.013771, 53.579773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.348671, 57.219177, 53.678879>,  <56.473244, 57.561520, 53.844055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.348671, 57.219177, 53.678879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948510, -0.306400, -0.080301,
		-0.057798, -0.416686, 0.907211,
		-0.311430, -0.855858, -0.412940,
		56.255241, 56.962421, 53.554996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.595436, 56.974548, 54.338303>,  <56.473244, 57.561520, 53.844055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.595436, 56.974548, 54.338303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.623703, 56.845844, 53.960632>,  <56.640663, 56.768620, 53.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.623703, 56.845844, 53.960632>,  <56.595436, 56.974548, 54.338303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.623703, 56.845844, 53.960632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890020, -0.407064, 0.205337,
		-0.450412, -0.854849, 0.257610,
		0.070668, -0.321765, -0.944179,
		56.644905, 56.749313, 53.677380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.722446, 56.296547, 54.249069>,  <56.595436, 56.974548, 54.338303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.722446, 56.296547, 54.249069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.937325, 56.438221, 53.942871>,  <57.066250, 56.523224, 53.759151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.937325, 56.438221, 53.942871>,  <56.722446, 56.296547, 54.249069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.937325, 56.438221, 53.942871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823377, -0.417074, 0.384838,
		-0.182964, -0.837021, -0.515675,
		0.537192, 0.354183, -0.765493,
		57.098480, 56.544476, 53.713223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.951405, 55.762604, 53.727432>,  <56.722446, 56.296547, 54.249069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.951405, 55.762604, 53.727432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.184616, 56.080036, 53.797073>,  <57.324543, 56.270496, 53.838856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.184616, 56.080036, 53.797073>,  <56.951405, 55.762604, 53.727432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.184616, 56.080036, 53.797073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636599, -0.579367, 0.508995,
		0.504793, -0.185929, -0.842979,
		0.583031, 0.793577, 0.174098,
		57.359524, 56.318108, 53.849304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.698570, 55.508247, 53.661282>,  <56.951405, 55.762604, 53.727432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.698570, 55.508247, 53.661282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.695580, 55.838619, 53.886772>,  <57.693783, 56.036842, 54.022068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.695580, 55.838619, 53.886772>,  <57.698570, 55.508247, 53.661282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.695580, 55.838619, 53.886772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629058, -0.434337, 0.644700,
		0.777323, 0.359441, -0.516306,
		-0.007481, 0.825926, 0.563729,
		57.693336, 56.086395, 54.055889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.411087, 55.504826, 53.974945>,  <57.698570, 55.508247, 53.661282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.411087, 55.504826, 53.974945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.174675, 55.753304, 54.180779>,  <58.032825, 55.902390, 54.304279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.174675, 55.753304, 54.180779>,  <58.411087, 55.504826, 53.974945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.174675, 55.753304, 54.180779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526773, -0.185885, 0.829431,
		0.610891, 0.761292, -0.217364,
		-0.591035, 0.621194, 0.514584,
		57.997364, 55.939663, 54.335152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.818165, 56.105679, 54.302383>,  <58.411087, 55.504826, 53.974945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.818165, 56.105679, 54.302383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.505920, 55.939686, 54.489334>,  <58.318573, 55.840092, 54.601505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.505920, 55.939686, 54.489334>,  <58.818165, 56.105679, 54.302383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.505920, 55.939686, 54.489334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613133, -0.363274, 0.701499,
		-0.121322, 0.834160, 0.538013,
		-0.780608, -0.414980, 0.467378,
		58.271736, 55.815193, 54.629547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.831039, 56.533260, 54.929211>,  <58.818165, 56.105679, 54.302383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.831039, 56.533260, 54.929211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.693390, 56.159313, 54.964096>,  <58.610798, 55.934944, 54.985027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.693390, 56.159313, 54.964096>,  <58.831039, 56.533260, 54.929211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.693390, 56.159313, 54.964096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571033, -0.134652, 0.809808,
		-0.745317, 0.328481, 0.580176,
		-0.344128, -0.934863, 0.087215,
		58.590153, 55.878853, 54.990261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.485649, 56.380779, 55.695927>,  <58.831039, 56.533260, 54.929211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.485649, 56.380779, 55.695927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.663139, 56.083218, 55.496040>,  <58.769634, 55.904678, 55.376110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.663139, 56.083218, 55.496040>,  <58.485649, 56.380779, 55.695927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.663139, 56.083218, 55.496040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616622, -0.151189, 0.772605,
		-0.650298, -0.650955, 0.391624,
		0.443722, -0.743908, -0.499712,
		58.796257, 55.860046, 55.346127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.547104, 55.829433, 56.114391>,  <58.485649, 56.380779, 55.695927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.547104, 55.829433, 56.114391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.842857, 55.805737, 55.846123>,  <59.020309, 55.791519, 55.685162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.842857, 55.805737, 55.846123>,  <58.547104, 55.829433, 56.114391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.842857, 55.805737, 55.846123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666438, 0.206078, 0.716514,
		0.095764, -0.976741, 0.191851,
		0.739385, -0.059240, -0.670672,
		59.064674, 55.787964, 55.644920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.217361, 55.470417, 56.360775>,  <58.547104, 55.829433, 56.114391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.217361, 55.470417, 56.360775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.328056, 55.730278, 56.077545>,  <59.394474, 55.886196, 55.907608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.328056, 55.730278, 56.077545>,  <59.217361, 55.470417, 56.360775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.328056, 55.730278, 56.077545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818651, 0.226481, 0.527746,
		0.503217, -0.725712, -0.469163,
		0.276736, 0.649652, -0.708075,
		59.411076, 55.925175, 55.865124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.954910, 55.280663, 56.039280>,  <59.217361, 55.470417, 56.360775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.954910, 55.280663, 56.039280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.823059, 55.647938, 56.127167>,  <59.743946, 55.868301, 56.179897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.823059, 55.647938, 56.127167>,  <59.954910, 55.280663, 56.039280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.823059, 55.647938, 56.127167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589727, 0.018514, 0.807391,
		0.737269, 0.395712, -0.547583,
		-0.329632, 0.918188, 0.219713,
		59.724171, 55.923393, 56.193081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.625046, 55.840820, 56.190266>,  <59.954910, 55.280663, 56.039280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.625046, 55.840820, 56.190266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.280159, 55.943172, 56.365128>,  <60.073227, 56.004585, 56.470043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.280159, 55.943172, 56.365128>,  <60.625046, 55.840820, 56.190266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.280159, 55.943172, 56.365128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468546, 0.074972, 0.880252,
		0.192467, 0.963796, -0.184535,
		-0.862219, 0.255883, 0.437153,
		60.021492, 56.019936, 56.496273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.651093, 55.162968, 56.450516>,  <60.625046, 55.840820, 56.190266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.651093, 55.162968, 56.450516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.387589, 55.051281, 56.729965>,  <60.229485, 54.984268, 56.897636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.387589, 55.051281, 56.729965>,  <60.651093, 55.162968, 56.450516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.387589, 55.051281, 56.729965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719735, -0.504341, 0.477098,
		0.219130, 0.817116, 0.533201,
		-0.658759, -0.279217, 0.698623,
		60.189960, 54.967514, 56.939552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.251911, 54.561127, 56.622826>,  <60.651093, 55.162968, 56.450516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.251911, 54.561127, 56.622826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.490959, 54.273075, 56.481819>,  <61.634388, 54.100246, 56.397217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.490959, 54.273075, 56.481819>,  <61.251911, 54.561127, 56.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.490959, 54.273075, 56.481819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253302, 0.586728, -0.769148,
		0.760713, 0.370367, 0.533051,
		0.597622, -0.720124, -0.352517,
		61.670246, 54.057037, 56.376064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.010571, 54.737293, 56.641483>,  <61.251911, 54.561127, 56.622826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.010571, 54.737293, 56.641483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.948357, 54.477982, 56.343346>,  <61.911030, 54.322395, 56.164463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.948357, 54.477982, 56.343346>,  <62.010571, 54.737293, 56.641483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.948357, 54.477982, 56.343346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436242, 0.631888, -0.640633,
		0.886286, -0.424789, 0.184530,
		-0.155531, -0.648284, -0.745345,
		61.901695, 54.283497, 56.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.683914, 54.608822, 56.128963>,  <62.010571, 54.737293, 56.641483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.683914, 54.608822, 56.128963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.363983, 54.531422, 55.901688>,  <62.172024, 54.484982, 55.765324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.363983, 54.531422, 55.901688>,  <62.683914, 54.608822, 56.128963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.363983, 54.531422, 55.901688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324679, 0.656695, -0.680687,
		0.504836, -0.728910, -0.462418,
		-0.799828, -0.193499, -0.568185,
		62.124035, 54.473373, 55.731232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.451897, 54.633110, 56.248806>,  <62.683914, 54.608822, 56.128963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.451897, 54.633110, 56.248806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.347382, 54.928070, 55.999657>,  <63.284672, 55.105045, 55.850166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.347382, 54.928070, 55.999657>,  <63.451897, 54.633110, 56.248806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.347382, 54.928070, 55.999657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932283, -0.025555, 0.360827,
		0.250156, 0.674973, 0.694142,
		-0.261287, 0.737399, -0.622873,
		63.268997, 55.149288, 55.812794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.741978, 54.456276, 56.881519>,  <63.451897, 54.633110, 56.248806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.741978, 54.456276, 56.881519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.666946, 54.835087, 56.985794>,  <63.621929, 55.062374, 57.048359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.666946, 54.835087, 56.985794>,  <63.741978, 54.456276, 56.881519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.666946, 54.835087, 56.985794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810956, -0.000440, 0.585107,
		0.554226, 0.321159, -0.767913,
		-0.187575, 0.947025, 0.260690,
		63.610672, 55.119194, 57.063999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.375870, 54.860317, 56.832935>,  <63.741978, 54.456276, 56.881519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.375870, 54.860317, 56.832935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.144997, 55.057339, 57.093475>,  <64.006477, 55.175552, 57.249798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.144997, 55.057339, 57.093475>,  <64.375870, 54.860317, 56.832935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.144997, 55.057339, 57.093475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778482, 0.090971, 0.621040,
		0.246644, 0.865512, -0.435953,
		-0.577177, 0.492557, 0.651348,
		63.971844, 55.205105, 57.288879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.682449, 55.411762, 57.120808>,  <64.375870, 54.860317, 56.832935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.682449, 55.411762, 57.120808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.414360, 55.385620, 57.416519>,  <64.253510, 55.369934, 57.593945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.414360, 55.385620, 57.416519>,  <64.682449, 55.411762, 57.120808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.414360, 55.385620, 57.416519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721093, 0.178292, 0.669505,
		-0.175563, 0.981805, -0.072369,
		-0.670226, -0.065356, 0.739274,
		64.213295, 55.366013, 57.638302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.069603, 55.939999, 57.537514>,  <64.682449, 55.411762, 57.120808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.069603, 55.939999, 57.537514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.805954, 55.708851, 57.730026>,  <64.647766, 55.570164, 57.845531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.805954, 55.708851, 57.730026>,  <65.069603, 55.939999, 57.537514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.805954, 55.708851, 57.730026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427523, 0.238572, 0.871956,
		-0.618693, 0.780483, 0.089803,
		-0.659123, -0.577867, 0.481277,
		64.608215, 55.535492, 57.874409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.411903, 55.305996, 57.338863>,  <65.069603, 55.939999, 57.537514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.411903, 55.305996, 57.338863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.620926, 55.647034, 57.337036>,  <65.746338, 55.851654, 57.335941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.620926, 55.647034, 57.337036>,  <65.411903, 55.305996, 57.338863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.620926, 55.647034, 57.337036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811656, -0.499091, -0.303515,
		-0.261053, 0.154899, -0.952816,
		0.522556, 0.852593, -0.004564,
		65.777695, 55.902813, 57.335667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.830193, 55.507057, 56.669537>,  <65.411903, 55.305996, 57.338863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.830193, 55.507057, 56.669537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.028755, 55.649578, 56.986176>,  <66.147888, 55.735092, 57.176159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.028755, 55.649578, 56.986176>,  <65.830193, 55.507057, 56.669537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.028755, 55.649578, 56.986176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819643, -0.492756, -0.292193,
		0.285956, 0.793874, -0.536650,
		0.496402, 0.356307, 0.791600,
		66.177673, 55.756470, 57.223656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.491653, 55.842102, 56.407909>,  <65.830193, 55.507057, 56.669537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.491653, 55.842102, 56.407909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.517128, 55.708019, 56.783905>,  <66.532410, 55.627571, 57.009502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.517128, 55.708019, 56.783905>,  <66.491653, 55.842102, 56.407909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.517128, 55.708019, 56.783905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806545, -0.537425, -0.246293,
		0.587733, 0.773830, 0.236130,
		0.063687, -0.335204, 0.939991,
		66.536232, 55.607460, 57.065903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.145439, 55.984978, 56.913624>,  <66.491653, 55.842102, 56.407909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.145439, 55.984978, 56.913624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.959213, 55.633442, 56.955368>,  <66.847481, 55.422520, 56.980415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.959213, 55.633442, 56.955368>,  <67.145439, 55.984978, 56.913624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.959213, 55.633442, 56.955368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838034, -0.475681, -0.267258,
		0.284518, -0.036970, 0.957957,
		-0.465562, -0.878841, 0.104358,
		66.819542, 55.369789, 56.986675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.395370, 55.501335, 57.470116>,  <67.145439, 55.984978, 56.913624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.395370, 55.501335, 57.470116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.243675, 55.311539, 57.152367>,  <67.152657, 55.197659, 56.961716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.243675, 55.311539, 57.152367>,  <67.395370, 55.501335, 57.470116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.243675, 55.311539, 57.152367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889562, -0.423253, -0.171860,
		-0.254676, -0.771823, 0.582605,
		-0.379236, -0.474495, -0.794377,
		67.129906, 55.169189, 56.914055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.569359, 54.779972, 57.494595>,  <67.395370, 55.501335, 57.470116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.569359, 54.779972, 57.494595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.541679, 54.894852, 57.112450>,  <67.525070, 54.963779, 56.883163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.541679, 54.894852, 57.112450>,  <67.569359, 54.779972, 57.494595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.541679, 54.894852, 57.112450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878504, -0.436226, -0.194774,
		-0.472695, -0.852773, -0.222120,
		-0.069203, 0.287202, -0.955367,
		67.520920, 54.981014, 56.825840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.664330, 54.237278, 57.026169>,  <67.569359, 54.779972, 57.494595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.664330, 54.237278, 57.026169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.778358, 54.562096, 56.822479>,  <67.846779, 54.756989, 56.700264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.778358, 54.562096, 56.822479>,  <67.664330, 54.237278, 57.026169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.778358, 54.562096, 56.822479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811664, -0.487105, -0.322382,
		-0.509836, -0.321417, -0.797971,
		0.285077, 0.812046, -0.509226,
		67.863884, 54.805710, 56.669712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.853424, 54.231972, 57.854954>,  <67.664330, 54.237278, 57.026169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.853424, 54.231972, 57.854954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.059013, 54.197929, 57.513527>,  <68.182365, 54.177505, 57.308670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.059013, 54.197929, 57.513527>,  <67.853424, 54.231972, 57.854954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.059013, 54.197929, 57.513527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493177, 0.843483, 0.212868,
		0.701856, -0.530371, 0.475505,
		0.513979, -0.085106, -0.853571,
		68.213203, 54.172398, 57.257454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.686226, 54.237946, 57.936707>,  <67.853424, 54.231972, 57.854954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.686226, 54.237946, 57.936707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.503433, 54.387882, 57.614052>,  <68.393753, 54.477844, 57.420460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.503433, 54.387882, 57.614052>,  <68.686226, 54.237946, 57.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.503433, 54.387882, 57.614052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435170, 0.885141, 0.164783,
		0.775752, -0.275720, -0.567616,
		-0.456986, 0.374840, -0.806635,
		68.366341, 54.500336, 57.372063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.238358, 54.719322, 57.588665>,  <68.686226, 54.237946, 57.936707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.238358, 54.719322, 57.588665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.874008, 54.842148, 57.478386>,  <68.655396, 54.915844, 57.412216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.874008, 54.842148, 57.478386>,  <69.238358, 54.719322, 57.588665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.874008, 54.842148, 57.478386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314536, 0.949078, 0.017845,
		0.267140, -0.070462, -0.961078,
		-0.910881, 0.307061, -0.275700,
		68.600746, 54.934265, 57.395676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.224594, 55.170937, 57.027618>,  <69.238358, 54.719322, 57.588665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.224594, 55.170937, 57.027618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.909218, 55.275673, 57.250259>,  <68.719994, 55.338516, 57.383846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.909218, 55.275673, 57.250259>,  <69.224594, 55.170937, 57.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.909218, 55.275673, 57.250259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417251, 0.892526, 0.171172,
		-0.451965, 0.367202, -0.812951,
		-0.788435, 0.261841, 0.556606,
		68.672684, 55.354225, 57.417240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.742577, 55.699951, 56.763920>,  <69.224594, 55.170937, 57.027618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.742577, 55.699951, 56.763920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.836777, 55.671185, 57.151604>,  <68.893295, 55.653923, 57.384212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.836777, 55.671185, 57.151604>,  <68.742577, 55.699951, 56.763920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.836777, 55.671185, 57.151604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377617, 0.925674, -0.023069,
		-0.895512, 0.371422, 0.245160,
		0.235507, -0.071918, 0.969208,
		68.907433, 55.649609, 57.442368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.454285, 56.191269, 57.175152>,  <68.742577, 55.699951, 56.763920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.454285, 56.191269, 57.175152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.815750, 56.125252, 57.333214>,  <69.032631, 56.085644, 57.428051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.815750, 56.125252, 57.333214>,  <68.454285, 56.191269, 57.175152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.815750, 56.125252, 57.333214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161189, 0.985978, 0.043185,
		-0.396744, 0.024670, 0.917598,
		0.903666, -0.165040, 0.395157,
		69.086853, 56.075741, 57.451759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.627190, 56.522541, 57.875923>,  <68.454285, 56.191269, 57.175152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.627190, 56.522541, 57.875923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.972061, 56.491215, 57.675720>,  <69.178986, 56.472420, 57.555599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.972061, 56.491215, 57.675720>,  <68.627190, 56.522541, 57.875923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.972061, 56.491215, 57.675720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219195, 0.948380, 0.229194,
		0.456719, -0.307315, 0.834844,
		0.862184, -0.078316, -0.500505,
		69.230713, 56.467720, 57.525570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.200958, 56.883282, 58.354183>,  <68.627190, 56.522541, 57.875923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.200958, 56.883282, 58.354183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.864227, 56.907471, 58.139641>,  <67.662186, 56.921982, 58.010918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.864227, 56.907471, 58.139641>,  <68.200958, 56.883282, 58.354183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.864227, 56.907471, 58.139641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538706, 0.032340, -0.841873,
		-0.033564, -0.997646, -0.059801,
		-0.841825, 0.060471, -0.536352,
		67.611679, 56.925610, 57.978737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.859039, 56.939629, 58.823517>,  <68.200958, 56.883282, 58.354183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.859039, 56.939629, 58.823517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.961777, 57.024822, 58.446442>,  <69.023422, 57.075939, 58.220196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.961777, 57.024822, 58.446442>,  <68.859039, 56.939629, 58.823517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.961777, 57.024822, 58.446442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923948, 0.231977, 0.304151,
		0.283463, -0.949117, -0.137207,
		0.256846, 0.212988, -0.942691,
		69.038834, 57.088718, 58.163635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.242332, 56.356182, 58.472210>,  <68.859039, 56.939629, 58.823517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.242332, 56.356182, 58.472210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.330757, 56.723125, 58.339790>,  <69.383812, 56.943291, 58.260338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.330757, 56.723125, 58.339790>,  <69.242332, 56.356182, 58.472210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.330757, 56.723125, 58.339790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869819, -0.031935, 0.492337,
		0.441076, -0.396785, -0.804993,
		0.221059, 0.917356, -0.331045,
		69.397072, 56.998333, 58.240479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.941017, 56.470070, 58.039066>,  <69.242332, 56.356182, 58.472210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.941017, 56.470070, 58.039066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.806747, 56.777134, 58.257431>,  <69.726189, 56.961372, 58.388451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.806747, 56.777134, 58.257431>,  <69.941017, 56.470070, 58.039066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.806747, 56.777134, 58.257431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858403, 0.010637, 0.512866,
		0.387899, 0.640770, -0.662531,
		-0.335676, 0.767659, 0.545913,
		69.706047, 57.007431, 58.421204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.412712, 56.968781, 58.073769>,  <69.941017, 56.470070, 58.039066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.412712, 56.968781, 58.073769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.189270, 56.972187, 58.405525>,  <70.055206, 56.974232, 58.604580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.189270, 56.972187, 58.405525>,  <70.412712, 56.968781, 58.073769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.189270, 56.972187, 58.405525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822621, -0.122239, 0.555294,
		0.106115, 0.992464, 0.061275,
		-0.558600, 0.008518, 0.829394,
		70.021690, 56.974743, 58.654343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.668053, 57.456001, 58.543465>,  <70.412712, 56.968781, 58.073769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.668053, 57.456001, 58.543465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.549583, 57.118893, 58.723251>,  <70.478500, 56.916626, 58.831123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.549583, 57.118893, 58.723251>,  <70.668053, 57.456001, 58.543465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.549583, 57.118893, 58.723251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908686, -0.103662, 0.404405,
		-0.294229, 0.528195, 0.796517,
		-0.296173, -0.842772, 0.449463,
		70.460732, 56.866062, 58.858089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.639000, 57.510334, 59.337399>,  <70.668053, 57.456001, 58.543465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.639000, 57.510334, 59.337399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.719719, 57.144360, 59.197586>,  <70.768150, 56.924774, 59.113701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.719719, 57.144360, 59.197586>,  <70.639000, 57.510334, 59.337399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.719719, 57.144360, 59.197586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947026, 0.091251, 0.307921,
		-0.249833, -0.393151, 0.884882,
		0.201806, -0.914935, -0.349527,
		70.780258, 56.869881, 59.092728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.957458, 56.937614, 59.806892>,  <70.639000, 57.510334, 59.337399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.957458, 56.937614, 59.806892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.062210, 56.859051, 59.428932>,  <71.125061, 56.811913, 59.202156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.062210, 56.859051, 59.428932>,  <70.957458, 56.937614, 59.806892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.062210, 56.859051, 59.428932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965045, 0.042853, 0.258558,
		-0.010291, -0.979586, 0.200764,
		0.261883, -0.196407, -0.944902,
		71.140778, 56.800129, 59.145462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.504875, 56.447060, 59.921314>,  <70.957458, 56.937614, 59.806892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.504875, 56.447060, 59.921314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.543983, 56.648964, 59.578232>,  <71.567444, 56.770107, 59.372383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.543983, 56.648964, 59.578232>,  <71.504875, 56.447060, 59.921314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.543983, 56.648964, 59.578232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972155, 0.135992, 0.190840,
		0.212970, -0.852483, -0.477406,
		0.097765, 0.504756, -0.857708,
		71.573311, 56.800392, 59.320919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.012314, 56.027424, 59.511608>,  <71.504875, 56.447060, 59.921314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.012314, 56.027424, 59.511608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.996712, 56.421280, 59.443535>,  <71.987350, 56.657593, 59.402691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.996712, 56.421280, 59.443535>,  <72.012314, 56.027424, 59.511608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.996712, 56.421280, 59.443535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979608, 0.071274, 0.187851,
		0.197096, -0.159389, -0.967341,
		-0.039004, 0.984640, -0.170186,
		71.985008, 56.716671, 59.392479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.539062, 56.184456, 59.023338>,  <72.012314, 56.027424, 59.511608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.539062, 56.184456, 59.023338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.439423, 56.498314, 59.250420>,  <72.379639, 56.686630, 59.386669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.439423, 56.498314, 59.250420>,  <72.539062, 56.184456, 59.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.439423, 56.498314, 59.250420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941047, 0.057566, 0.333342,
		0.228875, 0.617264, -0.752729,
		-0.249092, 0.784647, 0.567699,
		72.364693, 56.733707, 59.420731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.954247, 56.811604, 59.010231>,  <72.539062, 56.184456, 59.023338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.954247, 56.811604, 59.010231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.785011, 56.849854, 59.370644>,  <72.683472, 56.872803, 59.586891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.785011, 56.849854, 59.370644>,  <72.954247, 56.811604, 59.010231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.785011, 56.849854, 59.370644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900944, 0.150247, 0.407094,
		-0.096448, 0.984013, -0.149721,
		-0.423081, 0.095627, 0.901032,
		72.658089, 56.878540, 59.640953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.037849, 57.595253, 59.426125>,  <72.954247, 56.811604, 59.010231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.037849, 57.595253, 59.426125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.001740, 57.281433, 59.671509>,  <72.980072, 57.093143, 59.818741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.001740, 57.281433, 59.671509>,  <73.037849, 57.595253, 59.426125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.001740, 57.281433, 59.671509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707437, 0.383043, 0.593979,
		-0.700987, 0.487613, 0.520434,
		-0.090283, -0.784546, 0.613463,
		72.974655, 57.046070, 59.855549>
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
