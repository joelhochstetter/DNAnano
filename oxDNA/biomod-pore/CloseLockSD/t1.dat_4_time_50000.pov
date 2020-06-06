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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.391390, 15.197698, 15.403735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.357933, 14.983799, 15.067390>,  <4.337859, 14.855460, 14.865583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.357933, 14.983799, 15.067390>,  <4.391390, 15.197698, 15.403735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.357933, 14.983799, 15.067390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995609, 0.009252, 0.093151,
		-0.042032, 0.844962, -0.533173,
		-0.083642, -0.534747, -0.840862,
		4.332840, 14.823375, 14.815132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.113973, 15.428760, 15.060397>,  <4.391390, 15.197698, 15.403735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.113973, 15.428760, 15.060397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082141, 15.053226, 14.926378>,  <5.063043, 14.827905, 14.845967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082141, 15.053226, 14.926378>,  <5.113973, 15.428760, 15.060397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.082141, 15.053226, 14.926378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853485, 0.109479, -0.509488,
		0.515005, -0.326501, 0.792569,
		-0.079579, -0.938835, -0.335046,
		5.058268, 14.771575, 14.825865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.798426, 15.104928, 15.127384>,  <5.113973, 15.428760, 15.060397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.798426, 15.104928, 15.127384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.574332, 14.925593, 14.848779>,  <5.439875, 14.817993, 14.681616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.574332, 14.925593, 14.848779>,  <5.798426, 15.104928, 15.127384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.574332, 14.925593, 14.848779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752226, 0.076709, -0.654425,
		0.346831, -0.890568, 0.294275,
		-0.560236, -0.448336, -0.696513,
		5.406261, 14.791093, 14.639825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.014775, 14.422296, 15.218189>,  <5.798426, 15.104928, 15.127384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.014775, 14.422296, 15.218189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.396911, 14.539341, 15.234704>,  <6.626192, 14.609569, 15.244613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.396911, 14.539341, 15.234704>,  <6.014775, 14.422296, 15.218189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.396911, 14.539341, 15.234704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290760, -0.905805, -0.308181,
		-0.052780, 0.306422, -0.950431,
		0.955339, 0.292613, 0.041287,
		6.683512, 14.627125, 15.247090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.295459, 14.286175, 14.454376>,  <6.014775, 14.422296, 15.218189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.295459, 14.286175, 14.454376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.558651, 14.277016, 14.755451>,  <6.716566, 14.271521, 14.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.558651, 14.277016, 14.755451>,  <6.295459, 14.286175, 14.454376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.558651, 14.277016, 14.755451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065402, -0.994023, -0.087412,
		0.750190, 0.106743, -0.652550,
		0.657980, -0.022898, 0.752687,
		6.756045, 14.270146, 14.981257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.863803, 13.820180, 14.269518>,  <6.295459, 14.286175, 14.454376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.863803, 13.820180, 14.269518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.899913, 13.861197, 14.665768>,  <6.921579, 13.885808, 14.903518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.899913, 13.861197, 14.665768>,  <6.863803, 13.820180, 14.269518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.899913, 13.861197, 14.665768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071968, -0.992756, 0.096205,
		0.993313, 0.062608, -0.097002,
		0.090276, 0.102543, 0.990624,
		6.926996, 13.891960, 14.962955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.314160, 13.302949, 14.391698>,  <6.863803, 13.820180, 14.269518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.314160, 13.302949, 14.391698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.164221, 13.394380, 14.751084>,  <7.074258, 13.449238, 14.966717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.164221, 13.394380, 14.751084>,  <7.314160, 13.302949, 14.391698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.164221, 13.394380, 14.751084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143594, -0.943119, 0.299844,
		0.915899, 0.241410, 0.320702,
		-0.374846, 0.228576, 0.898467,
		7.051767, 13.462953, 15.020624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.888359, 13.273588, 14.938128>,  <7.314160, 13.302949, 14.391698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.888359, 13.273588, 14.938128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.526352, 13.213029, 15.097135>,  <7.309147, 13.176693, 15.192539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.526352, 13.213029, 15.097135>,  <7.888359, 13.273588, 14.938128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.526352, 13.213029, 15.097135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310239, -0.874285, 0.373334,
		0.291022, 0.461199, 0.838213,
		-0.905018, -0.151398, 0.397518,
		7.254847, 13.167609, 15.216390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.977532, 12.905523, 15.602140>,  <7.888359, 13.273588, 14.938128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.977532, 12.905523, 15.602140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.589263, 12.861201, 15.516800>,  <7.356302, 12.834608, 15.465596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.589263, 12.861201, 15.516800>,  <7.977532, 12.905523, 15.602140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.589263, 12.861201, 15.516800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041268, -0.951075, 0.306190,
		-0.236840, 0.288406, 0.927755,
		-0.970672, -0.110805, -0.213350,
		7.298061, 12.827960, 15.452795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.630109, 12.573098, 16.192936>,  <7.977532, 12.905523, 15.602140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.630109, 12.573098, 16.192936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.404433, 12.506179, 15.869529>,  <7.269028, 12.466027, 15.675485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.404433, 12.506179, 15.869529>,  <7.630109, 12.573098, 16.192936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.404433, 12.506179, 15.869529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060519, -0.968242, 0.242578,
		-0.823424, 0.185791, 0.536148,
		-0.564190, -0.167298, -0.808518,
		7.235176, 12.455990, 15.626973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.296285, 11.911435, 16.332016>,  <7.630109, 12.573098, 16.192936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.296285, 11.911435, 16.332016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.153353, 11.949516, 15.960371>,  <7.067594, 11.972365, 15.737384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.153353, 11.949516, 15.960371>,  <7.296285, 11.911435, 16.332016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.153353, 11.949516, 15.960371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046448, -0.995372, -0.084130,
		-0.932823, 0.013093, 0.360098,
		-0.357330, 0.095204, -0.929114,
		7.046154, 11.978077, 15.681637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.705959, 11.330260, 16.189270>,  <7.296285, 11.911435, 16.332016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.705959, 11.330260, 16.189270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.878587, 11.438682, 15.845112>,  <6.982164, 11.503735, 15.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.878587, 11.438682, 15.845112>,  <6.705959, 11.330260, 16.189270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.878587, 11.438682, 15.845112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220264, -0.956583, -0.190874,
		-0.874775, -0.107138, -0.472535,
		0.431569, 0.271054, -0.860394,
		7.008058, 11.519998, 15.586993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.396028, 10.889106, 15.612185>,  <6.705959, 11.330260, 16.189270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.396028, 10.889106, 15.612185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.743574, 11.027231, 15.470293>,  <6.952101, 11.110106, 15.385158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.743574, 11.027231, 15.470293>,  <6.396028, 10.889106, 15.612185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.743574, 11.027231, 15.470293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171886, -0.882404, -0.437970,
		-0.464252, 0.319564, -0.826044,
		0.868865, 0.345314, -0.354729,
		7.004233, 11.130825, 15.363874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.412941, 10.665854, 14.857035>,  <6.396028, 10.889106, 15.612185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.412941, 10.665854, 14.857035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.788954, 10.730022, 14.977436>,  <7.014562, 10.768523, 15.049677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.788954, 10.730022, 14.977436>,  <6.412941, 10.665854, 14.857035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.788954, 10.730022, 14.977436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310814, -0.766331, -0.562256,
		0.140470, 0.622095, -0.770238,
		0.940033, 0.160421, 0.301002,
		7.070964, 10.778149, 15.067737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.850059, 10.747316, 14.247553>,  <6.412941, 10.665854, 14.857035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.850059, 10.747316, 14.247553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.116355, 10.633818, 14.523604>,  <7.276133, 10.565719, 14.689235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.116355, 10.633818, 14.523604>,  <6.850059, 10.747316, 14.247553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.116355, 10.633818, 14.523604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465244, -0.565250, -0.681206,
		0.583384, 0.774584, -0.244299,
		0.665741, -0.283746, 0.690128,
		7.316078, 10.548694, 14.730643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.373616, 10.627735, 13.838389>,  <6.850059, 10.747316, 14.247553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.373616, 10.627735, 13.838389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.487151, 10.465067, 14.185735>,  <7.555272, 10.367466, 14.394142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.487151, 10.465067, 14.185735>,  <7.373616, 10.627735, 13.838389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.487151, 10.465067, 14.185735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635378, -0.598485, -0.487965,
		0.718144, 0.690242, 0.088518,
		0.283837, -0.406671, 0.868363,
		7.572302, 10.343065, 14.446243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.083050, 10.540194, 13.774423>,  <7.373616, 10.627735, 13.838389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.083050, 10.540194, 13.774423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.966711, 10.299391, 14.071877>,  <7.896908, 10.154909, 14.250351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.966711, 10.299391, 14.071877>,  <8.083050, 10.540194, 13.774423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.966711, 10.299391, 14.071877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692773, -0.668585, -0.270294,
		0.659904, 0.436558, 0.611510,
		-0.290847, -0.602006, 0.743638,
		7.879457, 10.118789, 14.294969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.753168, 10.325360, 13.988464>,  <8.083050, 10.540194, 13.774423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.753168, 10.325360, 13.988464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.474819, 10.074388, 14.128232>,  <8.307810, 9.923804, 14.212092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.474819, 10.074388, 14.128232>,  <8.753168, 10.325360, 13.988464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.474819, 10.074388, 14.128232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561001, -0.778672, -0.280976,
		0.448376, 0.000502, 0.893845,
		-0.695871, -0.627431, 0.349419,
		8.266058, 9.886158, 14.233058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.122076, 9.865050, 14.286969>,  <8.753168, 10.325360, 13.988464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.122076, 9.865050, 14.286969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.773391, 9.676687, 14.232768>,  <8.564179, 9.563669, 14.200248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.773391, 9.676687, 14.232768>,  <9.122076, 9.865050, 14.286969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.773391, 9.676687, 14.232768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486019, -0.866136, -0.116598,
		-0.062457, -0.167497, 0.983892,
		-0.871714, -0.470908, -0.135503,
		8.511877, 9.535415, 14.192117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.228062, 9.284626, 14.697074>,  <9.122076, 9.865050, 14.286969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.228062, 9.284626, 14.697074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.945573, 9.224876, 14.420253>,  <8.776079, 9.189027, 14.254160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.945573, 9.224876, 14.420253>,  <9.228062, 9.284626, 14.697074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.945573, 9.224876, 14.420253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413272, -0.880650, -0.231651,
		-0.574854, -0.449603, 0.683667,
		-0.706222, -0.149375, -0.692053,
		8.733706, 9.180064, 14.212637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.039092, 8.522581, 14.711399>,  <9.228062, 9.284626, 14.697074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.039092, 8.522581, 14.711399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.957397, 8.683293, 14.354332>,  <8.908380, 8.779721, 14.140091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.957397, 8.683293, 14.354332>,  <9.039092, 8.522581, 14.711399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.957397, 8.683293, 14.354332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480405, -0.753393, -0.449010,
		-0.852934, -0.520548, -0.039146,
		-0.204239, 0.401782, -0.892669,
		8.896125, 8.803828, 14.086532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.150310, 7.936759, 14.325441>,  <9.039092, 8.522581, 14.711399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.150310, 7.936759, 14.325441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133553, 8.230460, 14.054409>,  <9.123498, 8.406681, 13.891789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133553, 8.230460, 14.054409>,  <9.150310, 7.936759, 14.325441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.133553, 8.230460, 14.054409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630795, -0.506487, -0.587850,
		-0.774818, -0.452041, -0.441946,
		-0.041893, 0.734254, -0.677581,
		9.120985, 8.450736, 13.851134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.008811, 7.564432, 13.680767>,  <9.150310, 7.936759, 14.325441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.008811, 7.564432, 13.680767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.189585, 7.914107, 13.609715>,  <9.298049, 8.123913, 13.567084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.189585, 7.914107, 13.609715>,  <9.008811, 7.564432, 13.680767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.189585, 7.914107, 13.609715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599863, -0.445197, -0.664804,
		-0.660243, 0.193895, -0.725592,
		0.451934, 0.874188, -0.177628,
		9.325165, 8.176364, 13.556427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.072021, 7.619250, 12.888899>,  <9.008811, 7.564432, 13.680767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.072021, 7.619250, 12.888899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.341270, 7.868624, 13.048013>,  <9.502820, 8.018249, 13.143481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.341270, 7.868624, 13.048013>,  <9.072021, 7.619250, 12.888899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.341270, 7.868624, 13.048013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639884, -0.221336, -0.735906,
		-0.370746, 0.749893, -0.547913,
		0.673124, 0.623435, 0.397785,
		9.543207, 8.055655, 13.167348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.205506, 8.044948, 12.308920>,  <9.072021, 7.619250, 12.888899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.205506, 8.044948, 12.308920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.498635, 8.057275, 12.580809>,  <9.674513, 8.064671, 12.743942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.498635, 8.057275, 12.580809>,  <9.205506, 8.044948, 12.308920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.498635, 8.057275, 12.580809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675364, -0.154507, -0.721118,
		0.082799, 0.987511, -0.134039,
		0.732822, 0.030817, 0.679722,
		9.718482, 8.066520, 12.784725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.738426, 8.663682, 12.381962>,  <9.205506, 8.044948, 12.308920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.738426, 8.663682, 12.381962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.878033, 8.297106, 12.460268>,  <9.961797, 8.077160, 12.507252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.878033, 8.297106, 12.460268>,  <9.738426, 8.663682, 12.381962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.878033, 8.297106, 12.460268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577241, 0.045677, -0.815295,
		0.738227, 0.397556, 0.544949,
		0.349017, -0.916440, 0.195765,
		9.982738, 8.022174, 12.518997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.503557, 8.712399, 12.525892>,  <9.738426, 8.663682, 12.381962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.503557, 8.712399, 12.525892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.398550, 8.348907, 12.396093>,  <10.335546, 8.130813, 12.318214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.398550, 8.348907, 12.396093>,  <10.503557, 8.712399, 12.525892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.398550, 8.348907, 12.396093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697240, 0.053830, -0.714813,
		0.667039, -0.413903, 0.619470,
		-0.262517, -0.908728, -0.324497,
		10.319795, 8.076289, 12.298744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.240828, 9.012089, 12.564867>,  <10.503557, 8.712399, 12.525892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.240828, 9.012089, 12.564867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.988520, 9.013904, 12.254484>,  <10.837135, 9.014993, 12.068254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.988520, 9.013904, 12.254484>,  <11.240828, 9.012089, 12.564867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.988520, 9.013904, 12.254484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761734, -0.194292, 0.618071,
		-0.147957, 0.980933, 0.126010,
		-0.630769, 0.004538, -0.775957,
		10.799289, 9.015265, 12.021697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560145, 9.340149, 13.261201>,  <11.240828, 9.012089, 12.564867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560145, 9.340149, 13.261201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709880, 9.582591, 12.980485>,  <11.799721, 9.728056, 12.812056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709880, 9.582591, 12.980485>,  <11.560145, 9.340149, 13.261201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.709880, 9.582591, 12.980485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823488, -0.565221, -0.048907,
		-0.426310, -0.559609, -0.710702,
		0.374335, 0.606105, -0.701791,
		11.822181, 9.764422, 12.769948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164839, 8.973680, 13.216524>,  <11.560145, 9.340149, 13.261201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164839, 8.973680, 13.216524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229924, 9.288234, 12.978155>,  <12.268975, 9.476966, 12.835134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229924, 9.288234, 12.978155>,  <12.164839, 8.973680, 13.216524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229924, 9.288234, 12.978155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948058, -0.291922, -0.126360,
		-0.273330, -0.544408, -0.793039,
		0.162714, 0.786385, -0.595922,
		12.278738, 9.524149, 12.799378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.579235, 8.514678, 13.332589>,  <12.164839, 8.973680, 13.216524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.579235, 8.514678, 13.332589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863705, 8.684681, 13.556590>,  <12.034386, 8.786683, 13.690990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863705, 8.684681, 13.556590>,  <11.579235, 8.514678, 13.332589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.863705, 8.684681, 13.556590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195172, -0.645897, 0.738055,
		0.675382, -0.634181, -0.376395,
		0.711173, 0.425007, 0.560002,
		12.077057, 8.812183, 13.724590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.848230, 8.019756, 13.688461>,  <11.579235, 8.514678, 13.332589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.848230, 8.019756, 13.688461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.936123, 8.304797, 13.954969>,  <11.988858, 8.475821, 14.114874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.936123, 8.304797, 13.954969>,  <11.848230, 8.019756, 13.688461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.936123, 8.304797, 13.954969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112203, -0.659969, 0.742867,
		0.969087, -0.237988, -0.065060,
		0.219731, 0.712603, 0.666270,
		12.002042, 8.518578, 14.154850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.113983, 7.601190, 14.113892>,  <11.848230, 8.019756, 13.688461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.113983, 7.601190, 14.113892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013806, 7.936193, 14.308151>,  <11.953700, 8.137196, 14.424707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013806, 7.936193, 14.308151>,  <12.113983, 7.601190, 14.113892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013806, 7.936193, 14.308151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267760, -0.541989, 0.796588,
		0.930367, 0.069461, 0.359988,
		-0.250442, 0.837510, 0.485650,
		11.938674, 8.187447, 14.453846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.516608, 7.664671, 14.730121>,  <12.113983, 7.601190, 14.113892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.516608, 7.664671, 14.730121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.180626, 7.878242, 14.768892>,  <11.979036, 8.006384, 14.792155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.180626, 7.878242, 14.768892>,  <12.516608, 7.664671, 14.730121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.180626, 7.878242, 14.768892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276375, -0.574631, 0.770335,
		0.467001, 0.620259, 0.630229,
		-0.839957, 0.533927, 0.096930,
		11.928638, 8.038420, 14.797971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930195, 7.114812, 14.615838>,  <12.516608, 7.664671, 14.730121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.930195, 7.114812, 14.615838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688639, 6.895597, 14.384332>,  <11.543705, 6.764068, 14.245428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688639, 6.895597, 14.384332>,  <11.930195, 7.114812, 14.615838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.688639, 6.895597, 14.384332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796876, -0.399191, -0.453470,
		0.017481, -0.735052, 0.677786,
		-0.603890, -0.548038, -0.578767,
		11.507472, 6.731185, 14.210702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.241312, 7.130169, 15.058478>,  <11.930195, 7.114812, 14.615838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.241312, 7.130169, 15.058478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.854326, 7.115092, 15.158553>,  <10.622135, 7.106045, 15.218598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.854326, 7.115092, 15.158553>,  <11.241312, 7.130169, 15.058478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.854326, 7.115092, 15.158553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007565, 0.992708, 0.120308,
		-0.252898, 0.114501, -0.960694,
		-0.967463, -0.037694, 0.250188,
		10.564087, 7.103784, 15.233609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.038858, 7.771320, 14.813815>,  <11.241312, 7.130169, 15.058478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.038858, 7.771320, 14.813815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724916, 7.645983, 15.027661>,  <10.536550, 7.570781, 15.155970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724916, 7.645983, 15.027661>,  <11.038858, 7.771320, 14.813815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724916, 7.645983, 15.027661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047079, 0.890393, 0.452751,
		-0.617885, 0.330176, -0.713584,
		-0.784858, -0.313343, 0.534616,
		10.489458, 7.551980, 15.188046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.513237, 8.220275, 14.694673>,  <11.038858, 7.771320, 14.813815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.513237, 8.220275, 14.694673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.430470, 8.089849, 15.063643>,  <10.380809, 8.011593, 15.285025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.430470, 8.089849, 15.063643>,  <10.513237, 8.220275, 14.694673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.430470, 8.089849, 15.063643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025098, 0.940749, 0.338174,
		-0.978036, 0.093125, -0.186474,
		-0.206918, -0.326066, 0.922424,
		10.368394, 7.992029, 15.340369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.009912, 8.657784, 14.938344>,  <10.513237, 8.220275, 14.694673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.009912, 8.657784, 14.938344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.150643, 8.480042, 15.267892>,  <10.235083, 8.373396, 15.465621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.150643, 8.480042, 15.267892>,  <10.009912, 8.657784, 14.938344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.150643, 8.480042, 15.267892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033802, 0.885600, 0.463217,
		-0.935454, -0.135125, 0.326601,
		0.351830, -0.444358, 0.823870,
		10.256192, 8.346734, 15.515053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.613406, 8.968284, 15.465971>,  <10.009912, 8.657784, 14.938344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.613406, 8.968284, 15.465971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947376, 8.811605, 15.620618>,  <10.147758, 8.717598, 15.713407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947376, 8.811605, 15.620618>,  <9.613406, 8.968284, 15.465971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.947376, 8.811605, 15.620618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098070, 0.797120, 0.595803,
		-0.541555, -0.459536, 0.703950,
		0.834926, -0.391697, 0.386618,
		10.197854, 8.694097, 15.736603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.514874, 9.035488, 16.172640>,  <9.613406, 8.968284, 15.465971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.514874, 9.035488, 16.172640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.909388, 8.992722, 16.122339>,  <10.146095, 8.967062, 16.092159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.909388, 8.992722, 16.122339>,  <9.514874, 9.035488, 16.172640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.909388, 8.992722, 16.122339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160483, 0.799319, 0.579080,
		0.038603, -0.591318, 0.805514,
		0.986283, -0.106917, -0.125752,
		10.205273, 8.960647, 16.084614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.830848, 9.003806, 16.873888>,  <9.514874, 9.035488, 16.172640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.830848, 9.003806, 16.873888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.081047, 9.129917, 16.588411>,  <10.231167, 9.205584, 16.417126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.081047, 9.129917, 16.588411>,  <9.830848, 9.003806, 16.873888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.081047, 9.129917, 16.588411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085140, 0.881678, 0.464106,
		0.775567, -0.351060, 0.524644,
		0.625496, 0.315277, -0.713690,
		10.268696, 9.224501, 16.374304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.233276, 9.528864, 17.274027>,  <9.830848, 9.003806, 16.873888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.233276, 9.528864, 17.274027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396155, 9.586227, 16.913223>,  <10.493883, 9.620646, 16.696741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396155, 9.586227, 16.913223>,  <10.233276, 9.528864, 17.274027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.396155, 9.586227, 16.913223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272812, 0.923413, 0.269967,
		0.871644, -0.356010, 0.336888,
		0.407198, 0.143408, -0.902011,
		10.518314, 9.629251, 16.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.009958, 9.835934, 17.310560>,  <10.233276, 9.528864, 17.274027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.009958, 9.835934, 17.310560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802314, 9.936289, 16.983738>,  <10.677728, 9.996502, 16.787645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802314, 9.936289, 16.983738>,  <11.009958, 9.835934, 17.310560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802314, 9.936289, 16.983738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021215, 0.959436, 0.281129,
		0.854444, 0.128604, -0.503376,
		-0.519111, 0.250888, -0.817055,
		10.646581, 10.011555, 16.738621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.133267, 10.500903, 17.308819>,  <11.009958, 9.835934, 17.310560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.133267, 10.500903, 17.308819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.859262, 10.502649, 17.017412>,  <10.694858, 10.503697, 16.842567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.859262, 10.502649, 17.017412>,  <11.133267, 10.500903, 17.308819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.859262, 10.502649, 17.017412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250897, 0.937397, 0.241533,
		0.683963, 0.348236, -0.641035,
		-0.685015, 0.004366, -0.728516,
		10.653757, 10.503959, 16.798857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.246308, 11.140132, 17.073380>,  <11.133267, 10.500903, 17.308819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.246308, 11.140132, 17.073380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885389, 11.051923, 16.925201>,  <10.668838, 10.998998, 16.836294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885389, 11.051923, 16.925201>,  <11.246308, 11.140132, 17.073380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885389, 11.051923, 16.925201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314972, 0.923918, 0.217182,
		0.294366, 0.312642, -0.903107,
		-0.902298, -0.220522, -0.370444,
		10.614700, 10.985766, 16.814068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101718, 11.650917, 16.447195>,  <11.246308, 11.140132, 17.073380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101718, 11.650917, 16.447195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.765426, 11.531002, 16.627550>,  <10.563650, 11.459053, 16.735764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.765426, 11.531002, 16.627550>,  <11.101718, 11.650917, 16.447195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.765426, 11.531002, 16.627550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274413, 0.953780, 0.122482,
		-0.466767, -0.020755, -0.884137,
		-0.840730, -0.299789, 0.450888,
		10.513206, 11.441066, 16.762817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.748816, 12.154012, 16.191154>,  <11.101718, 11.650917, 16.447195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.748816, 12.154012, 16.191154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.527494, 11.971599, 16.469978>,  <10.394701, 11.862151, 16.637272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.527494, 11.971599, 16.469978>,  <10.748816, 12.154012, 16.191154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.527494, 11.971599, 16.469978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554751, 0.825981, 0.100032,
		-0.621374, -0.331346, -0.710003,
		-0.553304, -0.456032, 0.697057,
		10.361504, 11.834789, 16.679096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.991872, 12.200202, 15.934791>,  <10.748816, 12.154012, 16.191154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.991872, 12.200202, 15.934791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.971272, 12.113801, 16.324804>,  <9.958913, 12.061960, 16.558813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.971272, 12.113801, 16.324804>,  <9.991872, 12.200202, 15.934791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.971272, 12.113801, 16.324804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821591, 0.564207, 0.081596,
		-0.567746, -0.796877, -0.206523,
		-0.051499, -0.216003, 0.975034,
		9.955823, 12.049000, 16.617315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.244142, 12.263813, 16.006046>,  <9.991872, 12.200202, 15.934791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.244142, 12.263813, 16.006046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.424272, 12.319497, 16.358824>,  <9.532350, 12.352907, 16.570490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.424272, 12.319497, 16.358824>,  <9.244142, 12.263813, 16.006046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.424272, 12.319497, 16.358824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445803, 0.890892, 0.087008,
		-0.773606, -0.432356, 0.463252,
		0.450326, 0.139209, 0.881945,
		9.559369, 12.361259, 16.623407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.700186, 12.358444, 16.601639>,  <9.244142, 12.263813, 16.006046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.700186, 12.358444, 16.601639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.035748, 12.539004, 16.723278>,  <9.237084, 12.647341, 16.796261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.035748, 12.539004, 16.723278>,  <8.700186, 12.358444, 16.601639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.035748, 12.539004, 16.723278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506702, 0.851716, 0.133540,
		-0.198725, -0.266115, 0.943234,
		0.838905, 0.451401, 0.304098,
		9.287419, 12.674425, 16.814508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.556396, 12.712616, 17.212109>,  <8.700186, 12.358444, 16.601639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.556396, 12.712616, 17.212109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.897579, 12.891422, 17.104303>,  <9.102289, 12.998706, 17.039621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.897579, 12.891422, 17.104303>,  <8.556396, 12.712616, 17.212109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.897579, 12.891422, 17.104303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378198, 0.885124, 0.271148,
		0.359758, -0.129349, 0.924036,
		0.852960, 0.447016, -0.269511,
		9.153467, 13.025527, 17.023451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.911551, 13.171307, 17.693169>,  <8.556396, 12.712616, 17.212109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.911551, 13.171307, 17.693169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.068066, 13.305842, 17.350527>,  <9.161975, 13.386564, 17.144941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.068066, 13.305842, 17.350527>,  <8.911551, 13.171307, 17.693169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.068066, 13.305842, 17.350527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113851, 0.941361, 0.317612,
		0.913197, -0.026754, 0.406639,
		0.391291, 0.336339, -0.856602,
		9.185452, 13.406744, 17.093546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.209947, 13.732097, 17.923044>,  <8.911551, 13.171307, 17.693169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.209947, 13.732097, 17.923044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.225739, 13.794259, 17.528219>,  <9.235213, 13.831556, 17.291325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.225739, 13.794259, 17.528219>,  <9.209947, 13.732097, 17.923044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.225739, 13.794259, 17.528219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153914, 0.976988, 0.147663,
		0.987295, 0.146093, 0.062490,
		0.039479, 0.155405, -0.987062,
		9.237582, 13.840880, 17.232101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.643508, 14.296009, 17.820709>,  <9.209947, 13.732097, 17.923044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.643508, 14.296009, 17.820709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386470, 14.279311, 17.514683>,  <9.232247, 14.269293, 17.331066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.386470, 14.279311, 17.514683>,  <9.643508, 14.296009, 17.820709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.386470, 14.279311, 17.514683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166944, 0.982153, 0.086630,
		0.747797, 0.183391, -0.638096,
		-0.642595, -0.041745, -0.765068,
		9.193691, 14.266788, 17.285162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.798671, 14.889122, 17.329716>,  <9.643508, 14.296009, 17.820709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.798671, 14.889122, 17.329716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.429310, 14.781886, 17.219837>,  <9.207693, 14.717545, 17.153910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.429310, 14.781886, 17.219837>,  <9.798671, 14.889122, 17.329716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.429310, 14.781886, 17.219837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297677, 0.951980, 0.071572,
		0.242317, 0.147860, -0.958864,
		-0.923402, -0.268089, -0.274695,
		9.152289, 14.701460, 17.137428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.447248, 15.245263, 17.215286>,  <9.798671, 14.889122, 17.329716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.447248, 15.245263, 17.215286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681121, 15.548310, 17.331329>,  <10.821445, 15.730139, 17.400955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681121, 15.548310, 17.331329>,  <10.447248, 15.245263, 17.215286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681121, 15.548310, 17.331329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217477, -0.490885, 0.843644,
		0.781570, -0.430171, -0.451776,
		0.584682, 0.757618, 0.290109,
		10.856525, 15.775596, 17.418362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.121925, 14.994518, 17.416958>,  <10.447248, 15.245263, 17.215286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.121925, 14.994518, 17.416958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016103, 15.331332, 17.604994>,  <10.952609, 15.533421, 17.717815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016103, 15.331332, 17.604994>,  <11.121925, 14.994518, 17.416958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016103, 15.331332, 17.604994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130367, -0.451759, 0.882564,
		0.955518, 0.294773, 0.009743,
		-0.264557, 0.842035, 0.470092,
		10.936735, 15.583942, 17.746021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.728809, 15.310266, 17.816093>,  <11.121925, 14.994518, 17.416958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.728809, 15.310266, 17.816093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.371767, 15.389504, 17.978086>,  <11.157541, 15.437048, 18.075283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.371767, 15.389504, 17.978086>,  <11.728809, 15.310266, 17.816093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.371767, 15.389504, 17.978086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268733, -0.487478, 0.830751,
		0.361991, 0.850366, 0.381891,
		-0.892606, 0.198098, 0.404984,
		11.103985, 15.448934, 18.099581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699476, 15.784636, 18.448563>,  <11.728809, 15.310266, 17.816093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699476, 15.784636, 18.448563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407760, 15.511487, 18.465633>,  <11.232730, 15.347598, 18.475876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407760, 15.511487, 18.465633>,  <11.699476, 15.784636, 18.448563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.407760, 15.511487, 18.465633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368906, -0.339922, 0.865079,
		-0.576231, 0.646638, 0.499817,
		-0.729291, -0.682871, 0.042675,
		11.188972, 15.306625, 18.478436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.295932, 15.814669, 19.084585>,  <11.699476, 15.784636, 18.448563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.295932, 15.814669, 19.084585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293294, 15.432459, 18.966648>,  <11.291711, 15.203134, 18.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293294, 15.432459, 18.966648>,  <11.295932, 15.814669, 19.084585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.293294, 15.432459, 18.966648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475175, -0.262427, 0.839845,
		-0.879866, -0.134563, 0.455772,
		-0.006595, -0.955523, -0.294842,
		11.291315, 15.145802, 18.878195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.728706, 15.602307, 19.660330>,  <11.295932, 15.814669, 19.084585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.728706, 15.602307, 19.660330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.618464, 15.238483, 19.535917>,  <11.552318, 15.020189, 19.461269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.618464, 15.238483, 19.535917>,  <11.728706, 15.602307, 19.660330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.618464, 15.238483, 19.535917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443981, -0.407433, 0.798047,
		-0.852597, 0.081856, 0.516119,
		-0.275608, -0.909559, -0.311033,
		11.535781, 14.965615, 19.442608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.183092, 15.316868, 20.085627>,  <11.728706, 15.602307, 19.660330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.183092, 15.316868, 20.085627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469316, 15.087723, 19.925724>,  <11.641049, 14.950235, 19.829782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469316, 15.087723, 19.925724>,  <11.183092, 15.316868, 20.085627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.469316, 15.087723, 19.925724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187632, -0.393613, 0.899924,
		-0.672882, -0.718955, -0.174166,
		0.715559, -0.572863, -0.399755,
		11.683983, 14.915864, 19.805798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.173130, 14.845645, 20.598230>,  <11.183092, 15.316868, 20.085627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.173130, 14.845645, 20.598230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.519282, 14.787724, 20.406336>,  <11.726974, 14.752972, 20.291199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.519282, 14.787724, 20.406336>,  <11.173130, 14.845645, 20.598230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.519282, 14.787724, 20.406336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401572, -0.372274, 0.836751,
		-0.299754, -0.916758, -0.264012,
		0.865383, -0.144799, -0.479735,
		11.778897, 14.744284, 20.262415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333015, 14.046095, 20.559881>,  <11.173130, 14.845645, 20.598230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333015, 14.046095, 20.559881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654023, 14.284136, 20.542833>,  <11.846627, 14.426960, 20.532604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654023, 14.284136, 20.542833>,  <11.333015, 14.046095, 20.559881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654023, 14.284136, 20.542833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326593, -0.378392, 0.866116,
		0.499300, -0.708994, -0.498023,
		0.802519, 0.595103, -0.042621,
		11.894779, 14.462667, 20.530046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.733148, 13.653518, 20.973206>,  <11.333015, 14.046095, 20.559881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.733148, 13.653518, 20.973206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.939829, 13.992452, 20.924147>,  <12.063837, 14.195812, 20.894712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.939829, 13.992452, 20.924147>,  <11.733148, 13.653518, 20.973206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.939829, 13.992452, 20.924147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427524, -0.131241, 0.894427,
		0.741783, -0.514586, -0.430068,
		0.516702, 0.847335, -0.122646,
		12.094839, 14.246653, 20.887352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548759, 13.557579, 21.061255>,  <11.733148, 13.653518, 20.973206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.548759, 13.557579, 21.061255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.479944, 13.949886, 21.098127>,  <12.438655, 14.185270, 21.120251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.479944, 13.949886, 21.098127>,  <12.548759, 13.557579, 21.061255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.479944, 13.949886, 21.098127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451586, -0.004644, 0.892216,
		0.875485, 0.195122, -0.442102,
		-0.172038, 0.980768, 0.092180,
		12.428333, 14.244117, 21.125782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127889, 13.866341, 21.221230>,  <12.548759, 13.557579, 21.061255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.127889, 13.866341, 21.221230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894432, 14.165885, 21.346815>,  <12.754358, 14.345612, 21.422167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894432, 14.165885, 21.346815>,  <13.127889, 13.866341, 21.221230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894432, 14.165885, 21.346815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478949, 0.005248, 0.877827,
		0.655722, 0.662707, -0.361729,
		-0.583641, 0.748860, 0.313962,
		12.719339, 14.390543, 21.441004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556126, 14.295113, 21.596407>,  <13.127889, 13.866341, 21.221230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556126, 14.295113, 21.596407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188043, 14.396138, 21.716024>,  <12.967193, 14.456754, 21.787796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188043, 14.396138, 21.716024>,  <13.556126, 14.295113, 21.596407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188043, 14.396138, 21.716024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348149, 0.178910, 0.920208,
		0.178910, 0.950895, -0.252565,
		-0.920208, 0.252565, 0.299045,
		12.911980, 14.471908, 21.805738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482899, 15.055093, 21.754248>,  <13.556126, 14.295113, 21.596407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482899, 15.055093, 21.754248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188073, 14.929765, 21.993769>,  <13.011178, 14.854568, 22.137482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188073, 14.929765, 21.993769>,  <13.482899, 15.055093, 21.754248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188073, 14.929765, 21.993769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466200, 0.405747, 0.786147,
		-0.489279, 0.858603, -0.152992,
		-0.737064, -0.313320, 0.598804,
		12.966954, 14.835769, 22.173410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.414326, 15.631963, 22.266277>,  <13.482899, 15.055093, 21.754248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.414326, 15.631963, 22.266277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227610, 15.314819, 22.422985>,  <13.115581, 15.124534, 22.517010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227610, 15.314819, 22.422985>,  <13.414326, 15.631963, 22.266277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.227610, 15.314819, 22.422985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311108, 0.267461, 0.911963,
		-0.827840, 0.547577, 0.121816,
		-0.466789, -0.792858, 0.391770,
		13.087573, 15.076962, 22.540516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969784, 15.890675, 22.832689>,  <13.414326, 15.631963, 22.266277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969784, 15.890675, 22.832689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065142, 15.505737, 22.884943>,  <13.122356, 15.274776, 22.916296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.065142, 15.505737, 22.884943>,  <12.969784, 15.890675, 22.832689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.065142, 15.505737, 22.884943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534712, 0.242351, 0.809536,
		-0.810710, -0.123137, 0.572351,
		0.238394, -0.962343, 0.130634,
		13.136660, 15.217034, 22.924133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991588, 15.844831, 23.545336>,  <12.969784, 15.890675, 22.832689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991588, 15.844831, 23.545336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172926, 15.505903, 23.434681>,  <13.281729, 15.302547, 23.368288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172926, 15.505903, 23.434681>,  <12.991588, 15.844831, 23.545336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172926, 15.505903, 23.434681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580357, 0.045041, 0.813116,
		-0.676509, -0.529171, 0.512166,
		0.453346, -0.847319, -0.276637,
		13.308929, 15.251707, 23.351690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999962, 15.331030, 24.130226>,  <12.991588, 15.844831, 23.545336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999962, 15.331030, 24.130226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300611, 15.245747, 23.880552>,  <13.481001, 15.194576, 23.730749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.300611, 15.245747, 23.880552>,  <12.999962, 15.331030, 24.130226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.300611, 15.245747, 23.880552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641358, 0.015272, 0.767090,
		-0.154019, -0.976887, 0.148223,
		0.751624, -0.213210, -0.624182,
		13.526098, 15.181784, 23.693298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.381676, 14.647373, 24.450266>,  <12.999962, 15.331030, 24.130226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.381676, 14.647373, 24.450266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641948, 14.841730, 24.216848>,  <13.798111, 14.958344, 24.076797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.641948, 14.841730, 24.216848>,  <13.381676, 14.647373, 24.450266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.641948, 14.841730, 24.216848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621201, 0.101361, 0.777068,
		0.436719, -0.868122, -0.235883,
		0.650681, 0.485891, -0.583544,
		13.837152, 14.987497, 24.041784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.111512, 14.349520, 24.580828>,  <13.381676, 14.647373, 24.450266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.111512, 14.349520, 24.580828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186145, 14.681869, 24.371126>,  <14.230925, 14.881278, 24.245306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.186145, 14.681869, 24.371126>,  <14.111512, 14.349520, 24.580828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186145, 14.681869, 24.371126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734501, 0.236415, 0.636094,
		0.652453, -0.503747, -0.566166,
		0.186581, 0.830871, -0.524253,
		14.242119, 14.931129, 24.213850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827328, 14.408127, 24.504723>,  <14.111512, 14.349520, 24.580828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827328, 14.408127, 24.504723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689711, 14.779936, 24.451626>,  <14.607141, 15.003021, 24.419767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689711, 14.779936, 24.451626>,  <14.827328, 14.408127, 24.504723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.689711, 14.779936, 24.451626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468088, 0.292344, 0.833923,
		0.813958, 0.224770, -0.535678,
		-0.344043, 0.929523, -0.132743,
		14.586497, 15.058793, 24.411802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424308, 14.910420, 24.479431>,  <14.827328, 14.408127, 24.504723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.424308, 14.910420, 24.479431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085313, 15.081737, 24.604862>,  <14.881916, 15.184526, 24.680120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085313, 15.081737, 24.604862>,  <15.424308, 14.910420, 24.479431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085313, 15.081737, 24.604862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458500, 0.292974, 0.839014,
		0.267472, 0.854829, -0.444663,
		-0.847488, 0.428291, 0.313577,
		14.831066, 15.210224, 24.698935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.573219, 15.549644, 24.785225>,  <15.424308, 14.910420, 24.479431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.573219, 15.549644, 24.785225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209652, 15.541990, 24.951839>,  <14.991511, 15.537398, 25.051807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.209652, 15.541990, 24.951839>,  <15.573219, 15.549644, 24.785225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209652, 15.541990, 24.951839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358645, 0.473695, 0.804355,
		-0.212702, 0.880481, -0.423688,
		-0.908918, -0.019135, 0.416537,
		14.936976, 15.536250, 25.076801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.510931, 16.139585, 25.130009>,  <15.573219, 15.549644, 24.785225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.510931, 16.139585, 25.130009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241379, 15.902975, 25.307089>,  <15.079647, 15.761009, 25.413336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.241379, 15.902975, 25.307089>,  <15.510931, 16.139585, 25.130009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241379, 15.902975, 25.307089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409508, 0.199693, 0.890183,
		-0.614970, 0.781166, 0.107665,
		-0.673880, -0.591526, 0.442699,
		15.039215, 15.725517, 25.439899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400299, 16.481791, 25.696329>,  <15.510931, 16.139585, 25.130009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400299, 16.481791, 25.696329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279663, 16.111372, 25.787085>,  <15.207282, 15.889120, 25.841537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279663, 16.111372, 25.787085>,  <15.400299, 16.481791, 25.696329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279663, 16.111372, 25.787085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280831, 0.141134, 0.949323,
		-0.911141, 0.350024, 0.217499,
		-0.301589, -0.926048, 0.226891,
		15.189186, 15.833558, 25.855152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970685, 16.575493, 26.245192>,  <15.400299, 16.481791, 25.696329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970685, 16.575493, 26.245192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.076610, 16.189974, 26.257635>,  <15.140164, 15.958662, 26.265102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.076610, 16.189974, 26.257635>,  <14.970685, 16.575493, 26.245192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.076610, 16.189974, 26.257635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328746, 0.120561, 0.936691,
		-0.906532, -0.237819, 0.348770,
		0.264811, -0.963798, 0.031111,
		15.156053, 15.900834, 26.266968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789704, 16.262579, 27.002552>,  <14.970685, 16.575493, 26.245192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789704, 16.262579, 27.002552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066936, 16.036062, 26.824135>,  <15.233276, 15.900152, 26.717085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066936, 16.036062, 26.824135>,  <14.789704, 16.262579, 27.002552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066936, 16.036062, 26.824135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599306, 0.108808, 0.793091,
		-0.400587, -0.816992, 0.414794,
		0.693081, -0.566291, -0.446041,
		15.274861, 15.866175, 26.690323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942302, 15.915533, 27.497778>,  <14.789704, 16.262579, 27.002552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942302, 15.915533, 27.497778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251051, 15.831246, 27.257841>,  <15.436300, 15.780675, 27.113878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251051, 15.831246, 27.257841>,  <14.942302, 15.915533, 27.497778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.251051, 15.831246, 27.257841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621969, 0.054690, 0.781130,
		-0.131791, -0.976016, 0.173272,
		0.771872, -0.210716, -0.599844,
		15.482613, 15.768032, 27.077888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246717, 15.331532, 27.854671>,  <14.942302, 15.915533, 27.497778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246717, 15.331532, 27.854671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521172, 15.497682, 27.615780>,  <15.685844, 15.597371, 27.472445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521172, 15.497682, 27.615780>,  <15.246717, 15.331532, 27.854671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521172, 15.497682, 27.615780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673755, -0.053221, 0.737036,
		0.274359, -0.908093, -0.316376,
		0.686135, 0.415372, -0.597231,
		15.727012, 15.622293, 27.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792540, 14.842296, 27.804581>,  <15.246717, 15.331532, 27.854671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.792540, 14.842296, 27.804581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924401, 15.210876, 27.722355>,  <16.003519, 15.432025, 27.673019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924401, 15.210876, 27.722355>,  <15.792540, 14.842296, 27.804581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924401, 15.210876, 27.722355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691083, -0.087175, 0.717499,
		0.643220, -0.378587, -0.665537,
		0.329654, 0.921451, -0.205562,
		16.023298, 15.487311, 27.660686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490490, 14.790269, 27.885485>,  <15.792540, 14.842296, 27.804581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490490, 14.790269, 27.885485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.441595, 15.187053, 27.898586>,  <16.412258, 15.425123, 27.906446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.441595, 15.187053, 27.898586>,  <16.490490, 14.790269, 27.885485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441595, 15.187053, 27.898586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609121, 0.048924, 0.791567,
		0.783601, 0.116709, -0.610204,
		-0.122237, 0.991960, 0.032753,
		16.404924, 15.484641, 27.908413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.117172, 15.133224, 28.015768>,  <16.490490, 14.790269, 27.885485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.117172, 15.133224, 28.015768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856241, 15.415457, 28.126490>,  <16.699682, 15.584797, 28.192923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856241, 15.415457, 28.126490>,  <17.117172, 15.133224, 28.015768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.856241, 15.415457, 28.126490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557383, 0.199108, 0.806027,
		0.513606, 0.680079, -0.523164,
		-0.652328, 0.705584, 0.276802,
		16.660543, 15.627132, 28.209530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468287, 15.706630, 28.057528>,  <17.117172, 15.133224, 28.015768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.468287, 15.706630, 28.057528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156763, 15.777263, 28.298286>,  <16.969849, 15.819642, 28.442741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156763, 15.777263, 28.298286>,  <17.468287, 15.706630, 28.057528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156763, 15.777263, 28.298286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627201, 0.232729, 0.743274,
		-0.008830, 0.956377, -0.292003,
		-0.778808, 0.176581, 0.601895,
		16.923120, 15.830237, 28.478855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.616915, 16.301418, 28.394621>,  <17.468287, 15.706630, 28.057528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.616915, 16.301418, 28.394621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.341200, 16.128633, 28.627274>,  <17.175772, 16.024961, 28.766865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.341200, 16.128633, 28.627274>,  <17.616915, 16.301418, 28.394621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.341200, 16.128633, 28.627274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553285, 0.204428, 0.807518,
		-0.467720, 0.878417, 0.098089,
		-0.689285, -0.431963, 0.581630,
		17.134415, 15.999044, 28.801764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640331, 16.676790, 29.067518>,  <17.616915, 16.301418, 28.394621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640331, 16.676790, 29.067518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378101, 16.390999, 29.165287>,  <17.220764, 16.219524, 29.223948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.378101, 16.390999, 29.165287>,  <17.640331, 16.676790, 29.067518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378101, 16.390999, 29.165287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267573, 0.082888, 0.959966,
		-0.706134, 0.694731, 0.136836,
		-0.655576, -0.714478, 0.244422,
		17.181429, 16.176655, 29.238613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245260, 16.955513, 29.712069>,  <17.640331, 16.676790, 29.067518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245260, 16.955513, 29.712069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.250338, 16.555756, 29.699099>,  <17.253384, 16.315901, 29.691317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.250338, 16.555756, 29.699099>,  <17.245260, 16.955513, 29.712069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250338, 16.555756, 29.699099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254152, -0.028138, 0.966755,
		-0.967081, -0.020511, 0.253641,
		0.012692, -0.999394, -0.032425,
		17.254145, 16.255938, 29.689371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870575, 16.785576, 30.244928>,  <17.245260, 16.955513, 29.712069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870575, 16.785576, 30.244928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122820, 16.486612, 30.161301>,  <17.274168, 16.307234, 30.111124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122820, 16.486612, 30.161301>,  <16.870575, 16.785576, 30.244928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122820, 16.486612, 30.161301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396200, 0.078392, 0.914812,
		-0.667347, -0.659726, 0.345558,
		0.630614, -0.747407, -0.209069,
		17.312004, 16.262390, 30.098579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652069, 16.455400, 30.839947>,  <16.870575, 16.785576, 30.244928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652069, 16.455400, 30.839947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000103, 16.296158, 30.723696>,  <17.208923, 16.200613, 30.653946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.000103, 16.296158, 30.723696>,  <16.652069, 16.455400, 30.839947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000103, 16.296158, 30.723696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398903, 0.222383, 0.889619,
		-0.289533, -0.889976, 0.352298,
		0.870084, -0.398107, -0.290627,
		17.261127, 16.176725, 30.636507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928894, 16.107000, 31.408598>,  <16.652069, 16.455400, 30.839947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928894, 16.107000, 31.408598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247419, 16.202942, 31.186480>,  <17.438534, 16.260508, 31.053207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247419, 16.202942, 31.186480>,  <16.928894, 16.107000, 31.408598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247419, 16.202942, 31.186480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460986, 0.353730, 0.813859,
		0.391637, -0.904070, 0.171107,
		0.796312, 0.239860, -0.555298,
		17.486313, 16.274899, 31.019890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458511, 15.812570, 31.842665>,  <16.928894, 16.107000, 31.408598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458511, 15.812570, 31.842665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593496, 16.088163, 31.586096>,  <17.674486, 16.253519, 31.432156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593496, 16.088163, 31.586096>,  <17.458511, 15.812570, 31.842665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593496, 16.088163, 31.586096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442601, 0.485244, 0.754084,
		0.830797, -0.538368, -0.141194,
		0.337461, 0.688984, -0.641421,
		17.694735, 16.294859, 31.393669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198233, 15.879297, 31.935472>,  <17.458511, 15.812570, 31.842665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198233, 15.879297, 31.935472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.089108, 16.229143, 31.775162>,  <18.023632, 16.439051, 31.678976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.089108, 16.229143, 31.775162>,  <18.198233, 15.879297, 31.935472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089108, 16.229143, 31.775162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587066, 0.481370, 0.650873,
		0.762185, -0.057714, -0.644782,
		-0.272814, 0.874616, -0.400775,
		18.007263, 16.491528, 31.654930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893496, 16.256060, 31.905920>,  <18.198233, 15.879297, 31.935472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893496, 16.256060, 31.905920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584103, 16.508831, 31.886377>,  <18.398466, 16.660494, 31.874653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584103, 16.508831, 31.886377>,  <18.893496, 16.256060, 31.905920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584103, 16.508831, 31.886377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468444, 0.621893, 0.627542,
		0.426945, 0.462508, -0.777049,
		-0.773484, 0.631930, -0.048855,
		18.352057, 16.698410, 31.871721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.247040, 16.831236, 31.772736>,  <18.893496, 16.256060, 31.905920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.247040, 16.831236, 31.772736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.897022, 16.961935, 31.915581>,  <18.687012, 17.040354, 32.001289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.897022, 16.961935, 31.915581>,  <19.247040, 16.831236, 31.772736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.897022, 16.961935, 31.915581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465035, 0.772206, 0.432943,
		-0.134303, 0.544916, -0.827665,
		-0.875046, 0.326748, 0.357114,
		18.634508, 17.059959, 32.022717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.141668, 17.584558, 31.623253>,  <19.247040, 16.831236, 31.772736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.141668, 17.584558, 31.623253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902683, 17.501303, 31.933018>,  <18.759293, 17.451349, 32.118877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.902683, 17.501303, 31.933018>,  <19.141668, 17.584558, 31.623253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902683, 17.501303, 31.933018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251187, 0.868549, 0.427233,
		-0.761541, 0.449778, -0.466642,
		-0.597461, -0.208141, 0.774415,
		18.723446, 17.438860, 32.165340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.867426, 18.260939, 31.830379>,  <19.141668, 17.584558, 31.623253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.867426, 18.260939, 31.830379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783356, 18.017426, 32.136375>,  <18.732914, 17.871319, 32.319973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783356, 18.017426, 32.136375>,  <18.867426, 18.260939, 31.830379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783356, 18.017426, 32.136375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155421, 0.751713, 0.640916,
		-0.965231, 0.253602, -0.063375,
		-0.210177, -0.608781, 0.764991,
		18.720303, 17.834791, 32.365871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677801, 18.709682, 32.351826>,  <18.867426, 18.260939, 31.830379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677801, 18.709682, 32.351826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.742090, 18.390661, 32.584404>,  <18.780664, 18.199247, 32.723949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.742090, 18.390661, 32.584404>,  <18.677801, 18.709682, 32.351826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.742090, 18.390661, 32.584404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192691, 0.603119, 0.774027,
		-0.968008, -0.012365, 0.250616,
		0.160722, -0.797555, 0.581442,
		18.790306, 18.151394, 32.758835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.193575, 18.711605, 32.920944>,  <18.677801, 18.709682, 32.351826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.193575, 18.711605, 32.920944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511251, 18.502523, 33.044907>,  <18.701859, 18.377075, 33.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511251, 18.502523, 33.044907>,  <18.193575, 18.711605, 32.920944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511251, 18.502523, 33.044907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151591, 0.664288, 0.731943,
		-0.588453, -0.534326, 0.606810,
		0.794193, -0.522702, 0.309904,
		18.749510, 18.345713, 33.137878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188606, 18.670036, 33.665169>,  <18.193575, 18.711605, 32.920944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188606, 18.670036, 33.665169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573027, 18.639313, 33.558975>,  <18.803679, 18.620878, 33.495258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573027, 18.639313, 33.558975>,  <18.188606, 18.670036, 33.665169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573027, 18.639313, 33.558975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232307, 0.744879, 0.625451,
		0.149709, -0.662764, 0.733711,
		0.961052, -0.076810, -0.265479,
		18.861341, 18.616270, 33.479332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.416792, 19.110855, 34.193626>,  <18.188606, 18.670036, 33.665169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.416792, 19.110855, 34.193626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720951, 19.011332, 33.953663>,  <18.903446, 18.951616, 33.809685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720951, 19.011332, 33.953663>,  <18.416792, 19.110855, 34.193626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720951, 19.011332, 33.953663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572704, 0.692492, 0.438708,
		0.306276, -0.677162, 0.669064,
		0.760398, -0.248810, -0.599907,
		18.949070, 18.936689, 33.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.031321, 18.830496, 34.537624>,  <18.416792, 19.110855, 34.193626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.031321, 18.830496, 34.537624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.126839, 19.031597, 34.205307>,  <19.184149, 19.152258, 34.005917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.126839, 19.031597, 34.205307>,  <19.031321, 18.830496, 34.537624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.126839, 19.031597, 34.205307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606164, 0.591216, 0.532004,
		0.758645, -0.630636, -0.163572,
		0.238794, 0.502754, -0.830792,
		19.198477, 19.182423, 33.956070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774343, 19.047934, 34.500282>,  <19.031321, 18.830496, 34.537624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774343, 19.047934, 34.500282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627220, 19.285620, 34.214169>,  <19.538946, 19.428232, 34.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627220, 19.285620, 34.214169>,  <19.774343, 19.047934, 34.500282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627220, 19.285620, 34.214169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687925, 0.691425, 0.220658,
		0.625681, -0.410900, -0.663087,
		-0.367807, 0.594216, -0.715280,
		19.516878, 19.463884, 33.999584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013294, 19.015284, 35.235420>,  <19.774343, 19.047934, 34.500282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013294, 19.015284, 35.235420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278536, 19.294918, 35.128410>,  <20.437681, 19.462698, 35.064205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278536, 19.294918, 35.128410>,  <20.013294, 19.015284, 35.235420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.278536, 19.294918, 35.128410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002441, 0.359423, 0.933171,
		0.748522, -0.618138, 0.240042,
		0.663106, 0.699085, -0.267528,
		20.477468, 19.504644, 35.048153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646822, 19.067303, 35.617970>,  <20.013294, 19.015284, 35.235420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646822, 19.067303, 35.617970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.637848, 19.446480, 35.490910>,  <20.632463, 19.673986, 35.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.637848, 19.446480, 35.490910>,  <20.646822, 19.067303, 35.617970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637848, 19.446480, 35.490910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180308, 0.316353, 0.931348,
		0.983354, -0.036378, -0.178020,
		-0.022437, 0.947944, -0.317647,
		20.631117, 19.730864, 35.395615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259695, 19.581179, 35.791241>,  <20.646822, 19.067303, 35.617970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259695, 19.581179, 35.791241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.898256, 19.752502, 35.788094>,  <20.681393, 19.855297, 35.786205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.898256, 19.752502, 35.788094>,  <21.259695, 19.581179, 35.791241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.898256, 19.752502, 35.788094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107854, 0.245233, 0.963446,
		0.414583, 0.869719, -0.267787,
		-0.903597, 0.428311, -0.007867,
		20.627176, 19.880995, 35.785732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310862, 19.361387, 34.948353>,  <21.259695, 19.581179, 35.791241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310862, 19.361387, 34.948353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505545, 19.674923, 34.794098>,  <21.622355, 19.863045, 34.701546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505545, 19.674923, 34.794098>,  <21.310862, 19.361387, 34.948353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505545, 19.674923, 34.794098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211214, -0.322758, -0.922614,
		-0.847645, 0.530496, 0.008468,
		0.486710, 0.783837, -0.385633,
		21.651558, 19.910074, 34.678410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.922241, 19.514067, 34.366539>,  <21.310862, 19.361387, 34.948353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.922241, 19.514067, 34.366539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304783, 19.624435, 34.328060>,  <21.534307, 19.690657, 34.304974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304783, 19.624435, 34.328060>,  <20.922241, 19.514067, 34.366539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304783, 19.624435, 34.328060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033514, -0.430618, -0.901912,
		-0.290282, 0.859323, -0.421071,
		0.956354, 0.275920, -0.096201,
		21.591690, 19.707212, 34.299198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.052998, 19.945648, 33.801159>,  <20.922241, 19.514067, 34.366539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.052998, 19.945648, 33.801159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370163, 19.720171, 33.893711>,  <21.560463, 19.584885, 33.949242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.370163, 19.720171, 33.893711>,  <21.052998, 19.945648, 33.801159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.370163, 19.720171, 33.893711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018831, -0.356877, -0.933962,
		0.609041, 0.744909, -0.272358,
		0.792915, -0.563692, 0.231380,
		21.608038, 19.551064, 33.963123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.622288, 19.995602, 33.256672>,  <21.052998, 19.945648, 33.801159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.622288, 19.995602, 33.256672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711931, 19.672478, 33.474743>,  <21.765717, 19.478603, 33.605587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.711931, 19.672478, 33.474743>,  <21.622288, 19.995602, 33.256672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711931, 19.672478, 33.474743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167362, -0.519197, -0.838108,
		0.960086, 0.279069, 0.018841,
		0.224107, -0.807809, 0.545179,
		21.779163, 19.430136, 33.638298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.304811, 19.800976, 33.191696>,  <21.622288, 19.995602, 33.256672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.304811, 19.800976, 33.191696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.039835, 19.507381, 33.251606>,  <21.880848, 19.331224, 33.287552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.039835, 19.507381, 33.251606>,  <22.304811, 19.800976, 33.191696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039835, 19.507381, 33.251606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160934, -0.334705, -0.928479,
		0.731622, -0.590960, 0.339846,
		-0.662442, -0.733988, 0.149771,
		21.841103, 19.287186, 33.296535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634851, 19.109499, 33.006310>,  <22.304811, 19.800976, 33.191696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634851, 19.109499, 33.006310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235332, 19.120768, 32.990276>,  <21.995621, 19.127529, 32.980656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.235332, 19.120768, 32.990276>,  <22.634851, 19.109499, 33.006310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.235332, 19.120768, 32.990276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027933, -0.344718, -0.938291,
		-0.040249, -0.938284, 0.343517,
		-0.998799, 0.028170, -0.040084,
		21.935692, 19.129219, 32.978252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.398088, 18.580770, 32.424133>,  <22.634851, 19.109499, 33.006310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.398088, 18.580770, 32.424133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076445, 18.808176, 32.493645>,  <21.883457, 18.944618, 32.535351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.076445, 18.808176, 32.493645>,  <22.398088, 18.580770, 32.424133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.076445, 18.808176, 32.493645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398817, -0.299112, -0.866878,
		-0.440852, -0.766371, 0.467252,
		-0.804111, 0.568513, 0.173777,
		21.835211, 18.978729, 32.545776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939449, 18.205124, 31.990204>,  <22.398088, 18.580770, 32.424133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939449, 18.205124, 31.990204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.759912, 18.547525, 32.092808>,  <21.652191, 18.752966, 32.154369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.759912, 18.547525, 32.092808>,  <21.939449, 18.205124, 31.990204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.759912, 18.547525, 32.092808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607842, -0.082048, -0.789807,
		-0.655033, -0.510416, 0.557142,
		-0.448843, 0.856005, 0.256508,
		21.625259, 18.804327, 32.169762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185425, 18.040169, 31.950451>,  <21.939449, 18.205124, 31.990204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185425, 18.040169, 31.950451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262268, 18.432579, 31.940020>,  <21.308374, 18.668026, 31.933762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262268, 18.432579, 31.940020>,  <21.185425, 18.040169, 31.950451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262268, 18.432579, 31.940020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506130, 0.076278, -0.859078,
		-0.840789, 0.178235, 0.511181,
		0.192110, 0.981027, -0.026077,
		21.319901, 18.726887, 31.932198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.530476, 18.345087, 31.722097>,  <21.185425, 18.040169, 31.950451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.530476, 18.345087, 31.722097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809845, 18.622482, 31.651352>,  <20.977467, 18.788919, 31.608904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809845, 18.622482, 31.651352>,  <20.530476, 18.345087, 31.722097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809845, 18.622482, 31.651352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331538, 0.094494, -0.938698,
		-0.634263, 0.714244, 0.295914,
		0.698422, 0.693488, -0.176865,
		21.019371, 18.830528, 31.598293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176392, 18.953373, 31.409286>,  <20.530476, 18.345087, 31.722097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176392, 18.953373, 31.409286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.559519, 18.974352, 31.296265>,  <20.789394, 18.986938, 31.228451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.559519, 18.974352, 31.296265>,  <20.176392, 18.953373, 31.409286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.559519, 18.974352, 31.296265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285228, 0.053360, -0.956973,
		-0.035114, 0.997197, 0.066068,
		0.957816, 0.052447, -0.282555,
		20.846863, 18.990086, 31.211498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303288, 19.557817, 31.055307>,  <20.176392, 18.953373, 31.409286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303288, 19.557817, 31.055307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.586023, 19.304333, 30.929586>,  <20.755665, 19.152243, 30.854155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.586023, 19.304333, 30.929586>,  <20.303288, 19.557817, 31.055307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.586023, 19.304333, 30.929586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290549, 0.145014, -0.945808,
		0.644948, 0.759855, -0.081623,
		0.706840, -0.633712, -0.314301,
		20.798075, 19.114220, 30.835297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197115, 19.721035, 30.430504>,  <20.303288, 19.557817, 31.055307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197115, 19.721035, 30.430504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496508, 19.457180, 30.403215>,  <20.676144, 19.298866, 30.386843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496508, 19.457180, 30.403215>,  <20.197115, 19.721035, 30.430504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.496508, 19.457180, 30.403215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096402, -0.006446, -0.995322,
		0.656112, 0.751556, -0.068415,
		0.748481, -0.659638, -0.068222,
		20.721052, 19.259289, 30.382750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.591330, 19.955276, 29.895569>,  <20.197115, 19.721035, 30.430504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.591330, 19.955276, 29.895569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.650995, 19.563065, 29.946655>,  <20.686794, 19.327738, 29.977308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.650995, 19.563065, 29.946655>,  <20.591330, 19.955276, 29.895569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.650995, 19.563065, 29.946655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104247, -0.144036, -0.984066,
		0.983302, 0.133473, -0.123702,
		0.149164, -0.980530, 0.127717,
		20.695744, 19.268906, 29.984970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004457, 19.806362, 29.381041>,  <20.591330, 19.955276, 29.895569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004457, 19.806362, 29.381041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849396, 19.444822, 29.453463>,  <20.756359, 19.227898, 29.496916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849396, 19.444822, 29.453463>,  <21.004457, 19.806362, 29.381041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849396, 19.444822, 29.453463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127856, -0.141795, -0.981604,
		0.912895, -0.403671, -0.060595,
		-0.387653, -0.903849, 0.181056,
		20.733099, 19.173668, 29.507780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244961, 19.370773, 28.813589>,  <21.004457, 19.806362, 29.381041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244961, 19.370773, 28.813589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.929663, 19.170273, 28.956371>,  <20.740484, 19.049973, 29.042040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.929663, 19.170273, 28.956371>,  <21.244961, 19.370773, 28.813589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.929663, 19.170273, 28.956371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207077, -0.330177, -0.920925,
		0.579471, -0.799833, 0.156463,
		-0.788247, -0.501249, 0.356955,
		20.693190, 19.019897, 29.063457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.237476, 18.667490, 28.569731>,  <21.244961, 19.370773, 28.813589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.237476, 18.667490, 28.569731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861876, 18.740562, 28.686283>,  <20.636515, 18.784407, 28.756214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861876, 18.740562, 28.686283>,  <21.237476, 18.667490, 28.569731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861876, 18.740562, 28.686283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339286, -0.353603, -0.871694,
		-0.056208, -0.917383, 0.394015,
		-0.939003, 0.182680, 0.291380,
		20.580175, 18.795366, 28.773697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843487, 18.044258, 28.533173>,  <21.237476, 18.667490, 28.569731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843487, 18.044258, 28.533173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557198, 18.323586, 28.529266>,  <20.385424, 18.491182, 28.526922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557198, 18.323586, 28.529266>,  <20.843487, 18.044258, 28.533173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557198, 18.323586, 28.529266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502865, -0.525003, -0.686658,
		-0.484628, -0.486549, 0.726915,
		-0.715725, 0.698314, -0.009763,
		20.342482, 18.533081, 28.526337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.273022, 17.660004, 28.404760>,  <20.843487, 18.044258, 28.533173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.273022, 17.660004, 28.404760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119587, 18.020935, 28.326109>,  <20.027527, 18.237494, 28.278917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119587, 18.020935, 28.326109>,  <20.273022, 17.660004, 28.404760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.119587, 18.020935, 28.326109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521101, -0.387265, -0.760579,
		-0.762440, -0.189284, 0.618754,
		-0.383587, 0.902329, -0.196631,
		20.004511, 18.291634, 28.267120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508396, 17.603378, 28.342777>,  <20.273022, 17.660004, 28.404760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508396, 17.603378, 28.342777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.612804, 17.935495, 28.145807>,  <19.675449, 18.134766, 28.027626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.612804, 17.935495, 28.145807>,  <19.508396, 17.603378, 28.342777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.612804, 17.935495, 28.145807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556491, -0.287394, -0.779566,
		-0.788787, 0.477514, 0.387034,
		0.261022, 0.830292, -0.492425,
		19.691111, 18.184584, 27.998079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890554, 17.899158, 28.024496>,  <19.508396, 17.603378, 28.342777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890554, 17.899158, 28.024496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156454, 18.109901, 27.812635>,  <19.315994, 18.236347, 27.685518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.156454, 18.109901, 27.812635>,  <18.890554, 17.899158, 28.024496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156454, 18.109901, 27.812635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575650, -0.090657, -0.812655,
		-0.476169, 0.845106, 0.243020,
		0.664748, 0.526856, -0.529653,
		19.355879, 18.267958, 27.653740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463030, 18.451487, 27.559097>,  <18.890554, 17.899158, 28.024496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463030, 18.451487, 27.559097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.829786, 18.400949, 27.407654>,  <19.049841, 18.370626, 27.316788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.829786, 18.400949, 27.407654>,  <18.463030, 18.451487, 27.559097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.829786, 18.400949, 27.407654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392449, -0.112488, -0.912869,
		0.072747, 0.985588, -0.152723,
		0.916892, -0.126344, -0.378610,
		19.104855, 18.363047, 27.294071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518742, 18.936123, 26.936625>,  <18.463030, 18.451487, 27.559097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518742, 18.936123, 26.936625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793734, 18.646770, 26.911034>,  <18.958729, 18.473160, 26.895679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793734, 18.646770, 26.911034>,  <18.518742, 18.936123, 26.936625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793734, 18.646770, 26.911034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358613, -0.261563, -0.896093,
		0.631482, 0.638988, -0.439232,
		0.687480, -0.723380, -0.063977,
		18.999977, 18.429756, 26.891840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748026, 18.999561, 26.264278>,  <18.518742, 18.936123, 26.936625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748026, 18.999561, 26.264278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.857014, 18.634270, 26.385452>,  <18.922407, 18.415094, 26.458157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.857014, 18.634270, 26.385452>,  <18.748026, 18.999561, 26.264278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857014, 18.634270, 26.385452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406774, -0.394659, -0.823880,
		0.871949, 0.101258, -0.479012,
		0.272471, -0.913231, 0.302933,
		18.938755, 18.360300, 26.476332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232191, 18.676195, 25.745565>,  <18.748026, 18.999561, 26.264278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232191, 18.676195, 25.745565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.055758, 18.376881, 25.943764>,  <18.949898, 18.197292, 26.062683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.055758, 18.376881, 25.943764>,  <19.232191, 18.676195, 25.745565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055758, 18.376881, 25.943764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508001, -0.246976, -0.825190,
		0.739853, -0.615688, -0.271193,
		-0.441082, -0.748285, 0.495496,
		18.923433, 18.152395, 26.092413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322685, 18.066154, 25.349377>,  <19.232191, 18.676195, 25.745565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322685, 18.066154, 25.349377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.031527, 17.958414, 25.601604>,  <18.856833, 17.893770, 25.752941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.031527, 17.958414, 25.601604>,  <19.322685, 18.066154, 25.349377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.031527, 17.958414, 25.601604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532512, -0.357282, -0.767320,
		0.431970, -0.894315, 0.116630,
		-0.727896, -0.269352, 0.630569,
		18.813158, 17.877609, 25.790775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146067, 17.370621, 25.197412>,  <19.322685, 18.066154, 25.349377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146067, 17.370621, 25.197412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812260, 17.480307, 25.388571>,  <18.611975, 17.546118, 25.503265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.812260, 17.480307, 25.388571>,  <19.146067, 17.370621, 25.197412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812260, 17.480307, 25.388571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550315, -0.372212, -0.747403,
		-0.027071, -0.886715, 0.461523,
		-0.834518, 0.274216, 0.477897,
		18.561905, 17.562572, 25.531940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732260, 16.841808, 25.087254>,  <19.146067, 17.370621, 25.197412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732260, 16.841808, 25.087254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.475525, 17.134314, 25.179598>,  <18.321484, 17.309816, 25.235004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.475525, 17.134314, 25.179598>,  <18.732260, 16.841808, 25.087254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.475525, 17.134314, 25.179598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610825, -0.305523, -0.730444,
		-0.463616, -0.609840, 0.642771,
		-0.641836, 0.731266, 0.230861,
		18.282974, 17.353693, 25.248856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054298, 16.537758, 25.196680>,  <18.732260, 16.841808, 25.087254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054298, 16.537758, 25.196680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.992731, 16.918814, 25.091770>,  <17.955791, 17.147448, 25.028824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.992731, 16.918814, 25.091770>,  <18.054298, 16.537758, 25.196680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992731, 16.918814, 25.091770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716591, -0.290377, -0.634175,
		-0.680298, 0.090334, 0.727347,
		-0.153917, 0.952639, -0.262276,
		17.946556, 17.204605, 25.013088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364901, 16.468451, 25.011810>,  <18.054298, 16.537758, 25.196680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364901, 16.468451, 25.011810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434196, 16.843416, 24.890985>,  <17.475773, 17.068396, 24.818491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434196, 16.843416, 24.890985>,  <17.364901, 16.468451, 25.011810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.434196, 16.843416, 24.890985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729850, -0.083738, -0.678460,
		-0.661293, 0.337994, 0.669666,
		0.173239, 0.937416, -0.302060,
		17.486168, 17.124641, 24.800367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721569, 16.765665, 24.945095>,  <17.364901, 16.468451, 25.011810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721569, 16.765665, 24.945095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.978722, 16.985334, 24.731510>,  <17.133013, 17.117136, 24.603359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.978722, 16.985334, 24.731510>,  <16.721569, 16.765665, 24.945095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978722, 16.985334, 24.731510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610143, -0.054281, -0.790429,
		-0.463065, 0.833945, 0.300177,
		0.642881, 0.549171, -0.533962,
		17.171585, 17.150085, 24.571321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286503, 17.300468, 24.742695>,  <16.721569, 16.765665, 24.945095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286503, 17.300468, 24.742695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595774, 17.274326, 24.490368>,  <16.781336, 17.258640, 24.338972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.595774, 17.274326, 24.490368>,  <16.286503, 17.300468, 24.742695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595774, 17.274326, 24.490368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630028, 0.034644, -0.775800,
		0.072556, 0.997261, -0.014390,
		0.773176, -0.065355, -0.630815,
		16.827726, 17.254719, 24.301123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155811, 17.710371, 24.162144>,  <16.286503, 17.300468, 24.742695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155811, 17.710371, 24.162144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458048, 17.505995, 23.998182>,  <16.639389, 17.383369, 23.899805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458048, 17.505995, 23.998182>,  <16.155811, 17.710371, 24.162144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458048, 17.505995, 23.998182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565237, -0.192320, -0.802197,
		0.331042, 0.837826, -0.434117,
		0.755591, -0.510940, -0.409905,
		16.684725, 17.352713, 23.875212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329432, 17.992901, 23.468678>,  <16.155811, 17.710371, 24.162144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329432, 17.992901, 23.468678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431913, 17.607683, 23.501917>,  <16.493402, 17.376553, 23.521860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431913, 17.607683, 23.501917>,  <16.329432, 17.992901, 23.468678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431913, 17.607683, 23.501917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394840, -0.182736, -0.900394,
		0.882304, 0.197874, -0.427066,
		0.256205, -0.963044, 0.083100,
		16.508774, 17.318769, 23.526846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.662210, 17.816200, 22.858187>,  <16.329432, 17.992901, 23.468678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.662210, 17.816200, 22.858187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586359, 17.455545, 23.013670>,  <16.540848, 17.239153, 23.106960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586359, 17.455545, 23.013670>,  <16.662210, 17.816200, 22.858187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586359, 17.455545, 23.013670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377334, -0.298568, -0.876628,
		0.906455, -0.312905, -0.283601,
		-0.189627, -0.901636, 0.388709,
		16.529470, 17.185055, 23.130283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160305, 17.258289, 22.476486>,  <16.662210, 17.816200, 22.858187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160305, 17.258289, 22.476486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826200, 17.098843, 22.627985>,  <16.625738, 17.003176, 22.718884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826200, 17.098843, 22.627985>,  <17.160305, 17.258289, 22.476486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826200, 17.098843, 22.627985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209807, -0.405648, -0.889624,
		0.508255, -0.822530, 0.255188,
		-0.835259, -0.398615, 0.378745,
		16.575623, 16.979258, 22.741608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.094156, 16.598452, 22.156265>,  <17.160305, 17.258289, 22.476486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.094156, 16.598452, 22.156265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721092, 16.638824, 22.294804>,  <16.497253, 16.663048, 22.377926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.721092, 16.638824, 22.294804>,  <17.094156, 16.598452, 22.156265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.721092, 16.638824, 22.294804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354225, -0.438014, -0.826237,
		0.068311, -0.893284, 0.444271,
		-0.932662, 0.100931, 0.346345,
		16.441294, 16.669104, 22.398706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697231, 15.990044, 21.951317>,  <17.094156, 16.598452, 22.156265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697231, 15.990044, 21.951317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410246, 16.257393, 22.029827>,  <16.238054, 16.417803, 22.076933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.410246, 16.257393, 22.029827>,  <16.697231, 15.990044, 21.951317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.410246, 16.257393, 22.029827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549242, -0.369467, -0.749551,
		-0.428463, -0.645578, 0.632178,
		-0.717463, 0.668374, 0.196276,
		16.195007, 16.457905, 22.088711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083445, 15.622153, 21.821499>,  <16.697231, 15.990044, 21.951317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083445, 15.622153, 21.821499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.946317, 15.997791, 21.811901>,  <15.864040, 16.223175, 21.806143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.946317, 15.997791, 21.811901>,  <16.083445, 15.622153, 21.821499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.946317, 15.997791, 21.811901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678225, -0.265098, -0.685372,
		-0.649990, -0.218684, 0.727798,
		-0.342818, 0.939096, -0.023994,
		15.843472, 16.279520, 21.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368011, 15.533546, 21.779078>,  <16.083445, 15.622153, 21.821499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368011, 15.533546, 21.779078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.452404, 15.897063, 21.635086>,  <15.503040, 16.115173, 21.548691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.452404, 15.897063, 21.635086>,  <15.368011, 15.533546, 21.779078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.452404, 15.897063, 21.635086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738507, -0.093066, -0.667792,
		-0.640385, 0.406739, 0.651514,
		0.210984, 0.908792, -0.359978,
		15.515699, 16.169701, 21.527092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759340, 15.823503, 21.675615>,  <15.368011, 15.533546, 21.779078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759340, 15.823503, 21.675615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.001697, 16.053928, 21.456144>,  <15.147111, 16.192184, 21.324463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.001697, 16.053928, 21.456144>,  <14.759340, 15.823503, 21.675615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001697, 16.053928, 21.456144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612007, -0.103126, -0.784100,
		-0.508274, 0.810873, 0.290072,
		0.605892, 0.576064, -0.548676,
		15.183464, 16.226748, 21.291542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335601, 16.351210, 21.321539>,  <14.759340, 15.823503, 21.675615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335601, 16.351210, 21.321539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665488, 16.369659, 21.096075>,  <14.863420, 16.380730, 20.960796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665488, 16.369659, 21.096075>,  <14.335601, 16.351210, 21.321539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665488, 16.369659, 21.096075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565514, 0.077759, -0.821065,
		0.005958, 0.995905, 0.090213,
		0.824718, 0.046125, -0.563661,
		14.912904, 16.383497, 20.926977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.257475, 16.896524, 20.772463>,  <14.335601, 16.351210, 21.321539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.257475, 16.896524, 20.772463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507475, 16.606974, 20.655588>,  <14.657475, 16.433243, 20.585463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507475, 16.606974, 20.655588>,  <14.257475, 16.896524, 20.772463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507475, 16.606974, 20.655588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331672, 0.092589, -0.938840,
		0.706660, 0.683687, -0.182221,
		0.625001, -0.723878, -0.292189,
		14.694975, 16.389811, 20.567932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440593, 17.164028, 20.174047>,  <14.257475, 16.896524, 20.772463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440593, 17.164028, 20.174047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547917, 16.778734, 20.168512>,  <14.612312, 16.547558, 20.165192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547917, 16.778734, 20.168512>,  <14.440593, 17.164028, 20.174047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547917, 16.778734, 20.168512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408399, -0.100728, -0.907229,
		0.872479, 0.249070, -0.420409,
		0.268311, -0.963233, -0.013837,
		14.628410, 16.489765, 20.164362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670188, 17.077381, 19.521063>,  <14.440593, 17.164028, 20.174047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.670188, 17.077381, 19.521063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608086, 16.699436, 19.636393>,  <14.570824, 16.472670, 19.705589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608086, 16.699436, 19.636393>,  <14.670188, 17.077381, 19.521063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608086, 16.699436, 19.636393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464364, -0.187804, -0.865503,
		0.871930, -0.268262, -0.409603,
		-0.155256, -0.944862, 0.288323,
		14.561509, 16.415977, 19.722889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382303, 17.305140, 19.270041>,  <14.670188, 17.077381, 19.521063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382303, 17.305140, 19.270041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690710, 17.356785, 19.020605>,  <15.875754, 17.387772, 18.870943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690710, 17.356785, 19.020605>,  <15.382303, 17.305140, 19.270041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690710, 17.356785, 19.020605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342069, 0.741993, 0.576571,
		0.537142, -0.657857, 0.527924,
		0.771017, 0.129114, -0.623588,
		15.922015, 17.395519, 18.833529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170948, 17.170710, 19.410355>,  <15.382303, 17.305140, 19.270041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170948, 17.170710, 19.410355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102255, 17.472944, 19.157499>,  <16.061039, 17.654285, 19.005787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.102255, 17.472944, 19.157499>,  <16.170948, 17.170710, 19.410355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102255, 17.472944, 19.157499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392179, 0.641066, 0.659720,
		0.903717, -0.134616, -0.406416,
		-0.171731, 0.755588, -0.632136,
		16.050735, 17.699621, 18.967859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789883, 17.511015, 19.326059>,  <16.170948, 17.170710, 19.410355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789883, 17.511015, 19.326059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511400, 17.784491, 19.238544>,  <16.344311, 17.948576, 19.186035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.511400, 17.784491, 19.238544>,  <16.789883, 17.511015, 19.326059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511400, 17.784491, 19.238544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333129, 0.577691, 0.745183,
		0.635866, 0.445915, -0.629948,
		-0.696204, 0.683690, -0.218787,
		16.302540, 17.989597, 19.172909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178291, 18.149448, 19.346428>,  <16.789883, 17.511015, 19.326059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178291, 18.149448, 19.346428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785009, 18.198256, 19.400723>,  <16.549040, 18.227539, 19.433298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.785009, 18.198256, 19.400723>,  <17.178291, 18.149448, 19.346428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.785009, 18.198256, 19.400723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180467, 0.761030, 0.623109,
		-0.027269, 0.637139, -0.770267,
		-0.983203, 0.122016, 0.135735,
		16.490049, 18.234859, 19.441442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997194, 18.877872, 19.154108>,  <17.178291, 18.149448, 19.346428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997194, 18.877872, 19.154108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745003, 18.730352, 19.427307>,  <16.593687, 18.641840, 19.591227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.745003, 18.730352, 19.427307>,  <16.997194, 18.877872, 19.154108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745003, 18.730352, 19.427307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205846, 0.768968, 0.605240,
		-0.748415, 0.522182, -0.408902,
		-0.630478, -0.368800, 0.682996,
		16.555859, 18.619713, 19.632206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.717382, 19.473551, 19.393246>,  <16.997194, 18.877872, 19.154108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.717382, 19.473551, 19.393246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586775, 19.208050, 19.662413>,  <16.508410, 19.048750, 19.823914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586775, 19.208050, 19.662413>,  <16.717382, 19.473551, 19.393246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586775, 19.208050, 19.662413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220405, 0.638844, 0.737089,
		-0.919134, 0.388988, -0.062300,
		-0.326519, -0.663753, 0.672918,
		16.488819, 19.008924, 19.864288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204546, 19.866129, 19.759367>,  <16.717382, 19.473551, 19.393246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204546, 19.866129, 19.759367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261988, 19.558941, 20.009039>,  <16.296453, 19.374628, 20.158842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261988, 19.558941, 20.009039>,  <16.204546, 19.866129, 19.759367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261988, 19.558941, 20.009039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225794, 0.639509, 0.734878,
		-0.963532, 0.035404, 0.265239,
		0.143605, -0.767968, 0.624181,
		16.305069, 19.328550, 20.196293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890446, 20.044128, 20.434736>,  <16.204546, 19.866129, 19.759367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890446, 20.044128, 20.434736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.167912, 19.766912, 20.513248>,  <16.334391, 19.600582, 20.560356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.167912, 19.766912, 20.513248>,  <15.890446, 20.044128, 20.434736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167912, 19.766912, 20.513248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222977, 0.465721, 0.856379,
		-0.684918, -0.550273, 0.477585,
		0.693663, -0.693040, 0.196282,
		16.376011, 19.559000, 20.572134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741405, 19.900524, 21.139519>,  <15.890446, 20.044128, 20.434736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741405, 19.900524, 21.139519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100616, 19.747559, 21.052517>,  <16.316143, 19.655779, 21.000317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100616, 19.747559, 21.052517>,  <15.741405, 19.900524, 21.139519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100616, 19.747559, 21.052517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323593, 0.239220, 0.915457,
		-0.298051, -0.892488, 0.338572,
		0.898027, -0.382412, -0.217503,
		16.370026, 19.632835, 20.987267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019047, 19.395147, 21.721775>,  <15.741405, 19.900524, 21.139519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019047, 19.395147, 21.721775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.335094, 19.565466, 21.545408>,  <16.524723, 19.667656, 21.439589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.335094, 19.565466, 21.545408>,  <16.019047, 19.395147, 21.721775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335094, 19.565466, 21.545408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331712, 0.307865, 0.891732,
		0.515438, -0.850833, 0.102010,
		0.790120, 0.425795, -0.440917,
		16.572130, 19.693205, 21.413134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631109, 19.327833, 22.191242>,  <16.019047, 19.395147, 21.721775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631109, 19.327833, 22.191242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765287, 19.601551, 21.932255>,  <16.845795, 19.765781, 21.776863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765287, 19.601551, 21.932255>,  <16.631109, 19.327833, 22.191242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765287, 19.601551, 21.932255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548202, 0.417145, 0.724889,
		0.766127, -0.598104, -0.235203,
		0.335445, 0.684296, -0.647469,
		16.865921, 19.806839, 21.738014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.318295, 19.384293, 22.356026>,  <16.631109, 19.327833, 22.191242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.318295, 19.384293, 22.356026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210878, 19.721039, 22.168772>,  <17.146429, 19.923086, 22.056419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210878, 19.721039, 22.168772>,  <17.318295, 19.384293, 22.356026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210878, 19.721039, 22.168772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435516, 0.539588, 0.720535,
		0.859193, -0.010389, -0.511546,
		-0.268538, 0.841865, -0.468135,
		17.130318, 19.973598, 22.028332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914595, 19.926233, 22.273481>,  <17.318295, 19.384293, 22.356026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.914595, 19.926233, 22.273481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.541418, 20.058989, 22.329294>,  <17.317513, 20.138641, 22.362782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.541418, 20.058989, 22.329294>,  <17.914595, 19.926233, 22.273481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541418, 20.058989, 22.329294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245195, 0.301928, 0.921260,
		0.263625, 0.893695, -0.363058,
		-0.932942, 0.331887, 0.139534,
		17.261536, 20.158554, 22.371155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.050396, 20.554102, 22.501217>,  <17.914595, 19.926233, 22.273481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.050396, 20.554102, 22.501217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.689068, 20.444534, 22.633263>,  <17.472271, 20.378794, 22.712490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.689068, 20.444534, 22.633263>,  <18.050396, 20.554102, 22.501217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689068, 20.444534, 22.633263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296687, 0.156861, 0.942004,
		-0.309817, 0.948874, -0.060428,
		-0.903322, -0.273920, 0.330117,
		17.418072, 20.362358, 22.732298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908705, 21.073811, 22.948479>,  <18.050396, 20.554102, 22.501217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908705, 21.073811, 22.948479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.641539, 20.801689, 23.069193>,  <17.481239, 20.638416, 23.141623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.641539, 20.801689, 23.069193>,  <17.908705, 21.073811, 22.948479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.641539, 20.801689, 23.069193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213699, 0.213114, 0.953370,
		-0.712895, 0.701264, 0.003038,
		-0.667917, -0.680302, 0.301788,
		17.441164, 20.597599, 23.159729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399591, 21.387745, 23.578854>,  <17.908705, 21.073811, 22.948479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399591, 21.387745, 23.578854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390802, 20.987892, 23.585228>,  <17.385529, 20.747980, 23.589052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390802, 20.987892, 23.585228>,  <17.399591, 21.387745, 23.578854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390802, 20.987892, 23.585228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269625, 0.009424, 0.962920,
		-0.962715, 0.025455, 0.269318,
		-0.021973, -0.999632, 0.015936,
		17.384211, 20.688004, 23.590008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192451, 21.235689, 24.261280>,  <17.399591, 21.387745, 23.578854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192451, 21.235689, 24.261280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355423, 20.890491, 24.141783>,  <17.453205, 20.683372, 24.070086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.355423, 20.890491, 24.141783>,  <17.192451, 21.235689, 24.261280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355423, 20.890491, 24.141783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506643, -0.058570, 0.860164,
		-0.759813, -0.501810, 0.413366,
		0.407429, -0.862992, -0.298741,
		17.477652, 20.631594, 24.052160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051384, 20.690102, 24.687317>,  <17.192451, 21.235689, 24.261280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051384, 20.690102, 24.687317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407465, 20.598309, 24.529900>,  <17.621115, 20.543232, 24.435450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407465, 20.598309, 24.529900>,  <17.051384, 20.690102, 24.687317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.407465, 20.598309, 24.529900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423002, 0.095654, 0.901066,
		-0.169137, -0.968601, 0.182224,
		0.890204, -0.229484, -0.393541,
		17.674526, 20.529463, 24.411837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286880, 20.486687, 25.271715>,  <17.051384, 20.690102, 24.687317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286880, 20.486687, 25.271715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590488, 20.497602, 25.011517>,  <17.772654, 20.504152, 24.855398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590488, 20.497602, 25.011517>,  <17.286880, 20.486687, 25.271715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590488, 20.497602, 25.011517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618001, 0.284168, 0.733023,
		0.204853, -0.958386, 0.198825,
		0.759019, 0.027288, -0.650496,
		17.818193, 20.505789, 24.816368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734200, 19.902370, 25.417645>,  <17.286880, 20.486687, 25.271715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734200, 19.902370, 25.417645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.926792, 20.196344, 25.226629>,  <18.042347, 20.372728, 25.112020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.926792, 20.196344, 25.226629>,  <17.734200, 19.902370, 25.417645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.926792, 20.196344, 25.226629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688917, 0.019476, 0.724578,
		0.541819, -0.677856, -0.496933,
		0.481482, 0.734936, -0.477539,
		18.071238, 20.416824, 25.083368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.322172, 19.743666, 25.628353>,  <17.734200, 19.902370, 25.417645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.322172, 19.743666, 25.628353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333612, 20.112885, 25.474905>,  <18.340477, 20.334415, 25.382837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333612, 20.112885, 25.474905>,  <18.322172, 19.743666, 25.628353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333612, 20.112885, 25.474905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645599, 0.275937, 0.712082,
		0.763141, -0.268030, -0.588027,
		0.028601, 0.923049, -0.383619,
		18.342194, 20.389799, 25.359819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080204, 19.880013, 25.630674>,  <18.322172, 19.743666, 25.628353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080204, 19.880013, 25.630674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895185, 20.234598, 25.624577>,  <18.784174, 20.447350, 25.620918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895185, 20.234598, 25.624577>,  <19.080204, 19.880013, 25.630674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895185, 20.234598, 25.624577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624151, 0.337793, 0.704508,
		0.629670, 0.316353, -0.709532,
		-0.462548, 0.886463, -0.015246,
		18.756420, 20.500538, 25.620003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637146, 20.413361, 25.687611>,  <19.080204, 19.880013, 25.630674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637146, 20.413361, 25.687611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294254, 20.590937, 25.791979>,  <19.088520, 20.697481, 25.854599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294254, 20.590937, 25.791979>,  <19.637146, 20.413361, 25.687611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294254, 20.590937, 25.791979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449556, 0.398096, 0.799637,
		0.251117, 0.802769, -0.540834,
		-0.857228, 0.443938, 0.260921,
		19.037086, 20.724117, 25.870255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.870571, 20.946268, 26.104116>,  <19.637146, 20.413361, 25.687611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.870571, 20.946268, 26.104116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.481565, 20.951084, 26.197128>,  <19.248161, 20.953974, 26.252935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.481565, 20.951084, 26.197128>,  <19.870571, 20.946268, 26.104116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481565, 20.951084, 26.197128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199677, 0.556827, 0.806271,
		-0.119771, 0.830541, -0.543927,
		-0.972514, 0.012041, 0.232532,
		19.189812, 20.954697, 26.266888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879770, 21.361168, 26.663532>,  <19.870571, 20.946268, 26.104116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879770, 21.361168, 26.663532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488419, 21.281675, 26.686441>,  <19.253607, 21.233980, 26.700186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488419, 21.281675, 26.686441>,  <19.879770, 21.361168, 26.663532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488419, 21.281675, 26.686441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027360, 0.398843, 0.916611,
		-0.205003, 0.895226, -0.395657,
		-0.978379, -0.198733, 0.057271,
		19.194904, 21.222055, 26.703623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544315, 21.866793, 26.958355>,  <19.879770, 21.361168, 26.663532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544315, 21.866793, 26.958355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304401, 21.555296, 27.031914>,  <19.160454, 21.368399, 27.076050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304401, 21.555296, 27.031914>,  <19.544315, 21.866793, 26.958355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304401, 21.555296, 27.031914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077175, 0.285054, 0.955400,
		-0.796431, 0.558842, -0.231070,
		-0.599785, -0.778743, 0.183897,
		19.124466, 21.321672, 27.087082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034571, 22.175539, 27.338909>,  <19.544315, 21.866793, 26.958355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034571, 22.175539, 27.338909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033262, 21.781971, 27.410341>,  <19.032476, 21.545830, 27.453201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033262, 21.781971, 27.410341>,  <19.034571, 22.175539, 27.338909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033262, 21.781971, 27.410341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032659, 0.178380, 0.983419,
		-0.999461, 0.009050, 0.031550,
		-0.003272, -0.983920, 0.178580,
		19.032280, 21.486795, 27.463915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.532988, 21.953739, 27.802416>,  <19.034571, 22.175539, 27.338909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.532988, 21.953739, 27.802416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.779196, 21.643545, 27.858644>,  <18.926920, 21.457428, 27.892382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.779196, 21.643545, 27.858644>,  <18.532988, 21.953739, 27.802416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.779196, 21.643545, 27.858644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112933, 0.089738, 0.989542,
		-0.779989, -0.624956, -0.032343,
		0.615518, -0.775484, 0.140573,
		18.963852, 21.410900, 27.900816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.213831, 21.517952, 28.378740>,  <18.532988, 21.953739, 27.802416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.213831, 21.517952, 28.378740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604824, 21.435305, 28.361580>,  <18.839420, 21.385717, 28.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604824, 21.435305, 28.361580>,  <18.213831, 21.517952, 28.378740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604824, 21.435305, 28.361580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092571, 0.237156, 0.967051,
		-0.189636, -0.949245, 0.250943,
		0.977481, -0.206618, -0.042899,
		18.898067, 21.373320, 28.348711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341925, 21.143494, 28.967178>,  <18.213831, 21.517952, 28.378740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.341925, 21.143494, 28.967178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.704311, 21.276493, 28.862360>,  <18.921743, 21.356293, 28.799469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.704311, 21.276493, 28.862360>,  <18.341925, 21.143494, 28.967178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.704311, 21.276493, 28.862360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090106, 0.453350, 0.886766,
		0.413642, -0.826995, 0.380762,
		0.905970, 0.332495, -0.262042,
		18.976101, 21.376244, 28.783747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.806265, 20.898363, 29.475393>,  <18.341925, 21.143494, 28.967178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.806265, 20.898363, 29.475393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.027925, 21.187916, 29.310997>,  <19.160921, 21.361647, 29.212358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.027925, 21.187916, 29.310997>,  <18.806265, 20.898363, 29.475393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.027925, 21.187916, 29.310997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236711, 0.336313, 0.911516,
		0.798052, -0.602402, 0.015016,
		0.554149, 0.723882, -0.410991,
		19.194170, 21.405081, 29.187700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435696, 20.947390, 29.856209>,  <18.806265, 20.898363, 29.475393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435696, 20.947390, 29.856209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401539, 21.312614, 29.696697>,  <19.381044, 21.531750, 29.600990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.401539, 21.312614, 29.696697>,  <19.435696, 20.947390, 29.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.401539, 21.312614, 29.696697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182073, 0.407800, 0.894734,
		0.979570, 0.003798, -0.201068,
		-0.085394, 0.913064, -0.398777,
		19.375921, 21.586533, 29.577065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.099274, 21.374767, 29.899612>,  <19.435696, 20.947390, 29.856209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.099274, 21.374767, 29.899612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785517, 21.621532, 29.925386>,  <19.597263, 21.769590, 29.940851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785517, 21.621532, 29.925386>,  <20.099274, 21.374767, 29.899612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785517, 21.621532, 29.925386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335056, 0.333999, 0.881012,
		0.521986, 0.712646, -0.468685,
		-0.784391, 0.616911, 0.064434,
		19.550200, 21.806606, 29.944717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361462, 22.036873, 30.240906>,  <20.099274, 21.374767, 29.899612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361462, 22.036873, 30.240906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.965918, 22.003315, 30.290087>,  <19.728592, 21.983179, 30.319595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.965918, 22.003315, 30.290087>,  <20.361462, 22.036873, 30.240906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965918, 22.003315, 30.290087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096577, 0.266900, 0.958873,
		-0.113262, 0.960066, -0.255824,
		-0.988860, -0.083897, 0.122950,
		19.669260, 21.978146, 30.326971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144714, 22.599255, 30.749222>,  <20.361462, 22.036873, 30.240906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144714, 22.599255, 30.749222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.857197, 22.321295, 30.740711>,  <19.684687, 22.154520, 30.735605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.857197, 22.321295, 30.740711>,  <20.144714, 22.599255, 30.749222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857197, 22.321295, 30.740711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036452, 0.007106, 0.999310,
		-0.694267, 0.719073, -0.030438,
		-0.718794, -0.694898, -0.021278,
		19.641560, 22.112825, 30.734327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601843, 22.741859, 31.327351>,  <20.144714, 22.599255, 30.749222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601843, 22.741859, 31.327351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598032, 22.349796, 31.248152>,  <19.595745, 22.114559, 31.200632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598032, 22.349796, 31.248152>,  <19.601843, 22.741859, 31.327351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598032, 22.349796, 31.248152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153434, -0.194227, 0.968883,
		-0.988113, 0.039610, -0.148539,
		-0.009527, -0.980156, -0.197996,
		19.595175, 22.055750, 31.188753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977427, 22.329041, 31.629246>,  <19.601843, 22.741859, 31.327351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977427, 22.329041, 31.629246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342402, 22.167910, 31.658060>,  <19.561386, 22.071232, 31.675348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.342402, 22.167910, 31.658060>,  <18.977427, 22.329041, 31.629246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.342402, 22.167910, 31.658060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175057, -0.225114, 0.958477,
		-0.369883, -0.887161, -0.275920,
		0.912437, -0.402826, 0.072038,
		19.616133, 22.047062, 31.679672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362799, 21.968277, 32.167728>,  <18.977427, 22.329041, 31.629246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.362799, 21.968277, 32.167728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983997, 22.017830, 32.286278>,  <17.756716, 22.047562, 32.357407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983997, 22.017830, 32.286278>,  <18.362799, 21.968277, 32.167728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983997, 22.017830, 32.286278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296377, 0.018825, -0.954885,
		-0.123874, -0.992118, 0.018889,
		-0.947003, 0.123884, 0.296373,
		17.699896, 22.054995, 32.375191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059671, 21.401670, 31.947937>,  <18.362799, 21.968277, 32.167728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059671, 21.401670, 31.947937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.804379, 21.705429, 31.998497>,  <17.651203, 21.887684, 32.028831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.804379, 21.705429, 31.998497>,  <18.059671, 21.401670, 31.947937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804379, 21.705429, 31.998497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285195, -0.080724, -0.955064,
		-0.715071, -0.645599, 0.268097,
		-0.638230, 0.759398, 0.126398,
		17.612909, 21.933249, 32.036415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443689, 21.146919, 31.657251>,  <18.059671, 21.401670, 31.947937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443689, 21.146919, 31.657251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400011, 21.543993, 31.636629>,  <17.373804, 21.782236, 31.624256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400011, 21.543993, 31.636629>,  <17.443689, 21.146919, 31.657251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400011, 21.543993, 31.636629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286090, -0.081059, -0.954768,
		-0.951961, -0.089508, 0.292847,
		-0.109197, 0.992682, -0.051558,
		17.367252, 21.841797, 31.621162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898796, 21.383299, 31.214899>,  <17.443689, 21.146919, 31.657251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898796, 21.383299, 31.214899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.072943, 21.743338, 31.208172>,  <17.177431, 21.959360, 31.204136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.072943, 21.743338, 31.208172>,  <16.898796, 21.383299, 31.214899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072943, 21.743338, 31.208172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381649, 0.167615, -0.908982,
		-0.815351, 0.402162, 0.416495,
		0.435369, 0.900095, -0.016819,
		17.203554, 22.013367, 31.203127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384642, 21.819403, 30.977785>,  <16.898796, 21.383299, 31.214899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384642, 21.819403, 30.977785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723970, 22.022430, 30.917488>,  <16.927568, 22.144247, 30.881310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723970, 22.022430, 30.917488>,  <16.384642, 21.819403, 30.977785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723970, 22.022430, 30.917488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339141, 0.302249, -0.890858,
		-0.406609, 0.806858, 0.428542,
		0.848323, 0.507568, -0.150741,
		16.978468, 22.174702, 30.872265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189756, 22.514717, 30.780695>,  <16.384642, 21.819403, 30.977785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189756, 22.514717, 30.780695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553976, 22.440086, 30.633135>,  <16.772509, 22.395308, 30.544598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553976, 22.440086, 30.633135>,  <16.189756, 22.514717, 30.780695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553976, 22.440086, 30.633135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329086, 0.212950, -0.919975,
		0.250204, 0.959084, 0.132502,
		0.910550, -0.186577, -0.368902,
		16.827141, 22.384113, 30.522465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307150, 23.220993, 30.331135>,  <16.189756, 22.514717, 30.780695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307150, 23.220993, 30.331135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555277, 22.922920, 30.233227>,  <16.704153, 22.744078, 30.174482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555277, 22.922920, 30.233227>,  <16.307150, 23.220993, 30.331135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555277, 22.922920, 30.233227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186347, 0.163116, -0.968849,
		0.761893, 0.646606, -0.037678,
		0.620318, -0.745180, -0.244770,
		16.741373, 22.699366, 30.159796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.562666, 23.467201, 29.778559>,  <16.307150, 23.220993, 30.331135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.562666, 23.467201, 29.778559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668186, 23.081404, 29.773544>,  <16.731499, 22.849924, 29.770536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668186, 23.081404, 29.773544>,  <16.562666, 23.467201, 29.778559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668186, 23.081404, 29.773544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289795, -0.066854, -0.954751,
		0.920015, 0.255496, -0.297143,
		0.263801, -0.964496, -0.012535,
		16.747326, 22.792055, 29.769783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080265, 23.335182, 29.231468>,  <16.562666, 23.467201, 29.778559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080265, 23.335182, 29.231468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.880592, 22.994522, 29.295355>,  <16.760788, 22.790127, 29.333687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.880592, 22.994522, 29.295355>,  <17.080265, 23.335182, 29.231468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880592, 22.994522, 29.295355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311945, 0.004663, -0.950089,
		0.808398, -0.524091, -0.267996,
		-0.499182, -0.851650, 0.159718,
		16.730837, 22.739027, 29.343269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119148, 22.949898, 28.611513>,  <17.080265, 23.335182, 29.231468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.119148, 22.949898, 28.611513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851017, 22.721317, 28.800873>,  <16.690138, 22.584169, 28.914488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851017, 22.721317, 28.800873>,  <17.119148, 22.949898, 28.611513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851017, 22.721317, 28.800873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397519, -0.262161, -0.879346,
		0.626610, -0.777634, -0.051429,
		-0.670327, -0.571452, 0.473397,
		16.649920, 22.549881, 28.942892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121359, 22.356453, 28.202209>,  <17.119148, 22.949898, 28.611513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121359, 22.356453, 28.202209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775776, 22.355019, 28.403629>,  <16.568426, 22.354158, 28.524483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775776, 22.355019, 28.403629>,  <17.121359, 22.356453, 28.202209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775776, 22.355019, 28.403629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474485, -0.329100, -0.816429,
		0.168646, -0.944288, 0.282627,
		-0.863957, -0.003585, 0.503552,
		16.516588, 22.353943, 28.554695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723396, 21.652424, 28.155664>,  <17.121359, 22.356453, 28.202209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723396, 21.652424, 28.155664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453846, 21.943314, 28.207867>,  <16.292116, 22.117847, 28.239187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453846, 21.943314, 28.207867>,  <16.723396, 21.652424, 28.155664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453846, 21.943314, 28.207867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535746, -0.359323, -0.764109,
		-0.508788, -0.584832, 0.631748,
		-0.673877, 0.727226, 0.130502,
		16.251682, 22.161482, 28.247017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108458, 21.323034, 28.068024>,  <16.723396, 21.652424, 28.155664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108458, 21.323034, 28.068024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.011894, 21.711029, 28.056402>,  <15.953956, 21.943827, 28.049429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.011894, 21.711029, 28.056402>,  <16.108458, 21.323034, 28.068024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011894, 21.711029, 28.056402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625199, -0.178357, -0.759812,
		-0.742191, -0.165262, 0.649493,
		-0.241410, 0.969988, -0.029053,
		15.939471, 22.002026, 28.047686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343032, 21.375374, 28.109859>,  <16.108458, 21.323034, 28.068024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343032, 21.375374, 28.109859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501365, 21.694923, 27.928699>,  <15.596364, 21.886654, 27.820004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501365, 21.694923, 27.928699>,  <15.343032, 21.375374, 28.109859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501365, 21.694923, 27.928699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515322, -0.214981, -0.829594,
		-0.760105, 0.561769, 0.326581,
		0.395832, 0.798873, -0.452900,
		15.620114, 21.934586, 27.792830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821836, 21.577751, 27.722719>,  <15.343032, 21.375374, 28.109859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821836, 21.577751, 27.722719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137162, 21.771137, 27.570496>,  <15.326358, 21.887169, 27.479162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137162, 21.771137, 27.570496>,  <14.821836, 21.577751, 27.722719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137162, 21.771137, 27.570496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387123, -0.091002, -0.917526,
		-0.478221, 0.870622, 0.115421,
		0.788315, 0.483463, -0.380557,
		15.373656, 21.916176, 27.456329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489246, 22.000677, 27.232037>,  <14.821836, 21.577751, 27.722719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489246, 22.000677, 27.232037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874630, 21.997740, 27.124937>,  <15.105861, 21.995977, 27.060677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.874630, 21.997740, 27.124937>,  <14.489246, 22.000677, 27.232037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.874630, 21.997740, 27.124937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265613, -0.155157, -0.951513,
		-0.034555, 0.987863, -0.151438,
		0.963460, -0.007345, -0.267751,
		15.163668, 21.995537, 27.044611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.602454, 22.560169, 26.652855>,  <14.489246, 22.000677, 27.232037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.602454, 22.560169, 26.652855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936936, 22.343472, 26.618740>,  <15.137626, 22.213453, 26.598272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.936936, 22.343472, 26.618740>,  <14.602454, 22.560169, 26.652855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936936, 22.343472, 26.618740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103182, -0.002681, -0.994659,
		0.538621, 0.840540, -0.058140,
		0.836206, -0.541743, -0.085285,
		15.187799, 22.180948, 26.593155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117657, 22.898474, 26.184240>,  <14.602454, 22.560169, 26.652855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117657, 22.898474, 26.184240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.228111, 22.514050, 26.188520>,  <15.294384, 22.283396, 26.191088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.228111, 22.514050, 26.188520>,  <15.117657, 22.898474, 26.184240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228111, 22.514050, 26.188520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034014, -0.001352, -0.999421,
		0.960516, 0.276340, 0.032316,
		0.276136, -0.961059, 0.010698,
		15.310952, 22.225731, 26.191730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744340, 22.791592, 25.708036>,  <15.117657, 22.898474, 26.184240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744340, 22.791592, 25.708036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563472, 22.436890, 25.746416>,  <15.454951, 22.224068, 25.769444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.563472, 22.436890, 25.746416>,  <15.744340, 22.791592, 25.708036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563472, 22.436890, 25.746416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028215, -0.121744, -0.992160,
		0.891485, -0.445918, 0.080069,
		-0.452170, -0.886756, 0.095951,
		15.427821, 22.170862, 25.775202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155432, 22.446302, 25.383291>,  <15.744340, 22.791592, 25.708036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155432, 22.446302, 25.383291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834992, 22.207422, 25.399250>,  <15.642728, 22.064095, 25.408825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834992, 22.207422, 25.399250>,  <16.155432, 22.446302, 25.383291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834992, 22.207422, 25.399250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225301, -0.362641, -0.904285,
		0.554507, -0.715433, 0.425061,
		-0.801100, -0.597199, 0.039899,
		15.594663, 22.028263, 25.411221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.361553, 21.718861, 25.246063>,  <16.155432, 22.446302, 25.383291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.361553, 21.718861, 25.246063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981156, 21.753561, 25.127342>,  <15.752918, 21.774382, 25.056110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981156, 21.753561, 25.127342>,  <16.361553, 21.718861, 25.246063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981156, 21.753561, 25.127342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266953, -0.254077, -0.929613,
		-0.156055, -0.963286, 0.218467,
		-0.950991, 0.086751, -0.296802,
		15.695859, 21.779587, 25.038301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260180, 21.175814, 24.698978>,  <16.361553, 21.718861, 25.246063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260180, 21.175814, 24.698978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.949494, 21.420708, 24.639805>,  <15.763083, 21.567644, 24.604300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.949494, 21.420708, 24.639805>,  <16.260180, 21.175814, 24.698978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949494, 21.420708, 24.639805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066502, -0.153846, -0.985855,
		-0.626333, -0.775564, 0.078779,
		-0.776713, 0.612235, -0.147935,
		15.716480, 21.604378, 24.595425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685229, 20.824097, 24.296513>,  <16.260180, 21.175814, 24.698978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685229, 20.824097, 24.296513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629898, 21.216082, 24.239183>,  <15.596700, 21.451273, 24.204786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629898, 21.216082, 24.239183>,  <15.685229, 20.824097, 24.296513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629898, 21.216082, 24.239183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159018, -0.164814, -0.973422,
		-0.977537, -0.111860, 0.178630,
		-0.138328, 0.979961, -0.143324,
		15.588400, 21.510071, 24.196186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248668, 20.845343, 23.692602>,  <15.685229, 20.824097, 24.296513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.248668, 20.845343, 23.692602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.348131, 21.229223, 23.744967>,  <15.407809, 21.459553, 23.776384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.348131, 21.229223, 23.744967>,  <15.248668, 20.845343, 23.692602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348131, 21.229223, 23.744967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004809, 0.133929, -0.990979,
		-0.968579, 0.247046, 0.028687,
		0.248660, 0.959704, 0.130909,
		15.422729, 21.517134, 23.784239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764210, 21.159512, 23.265812>,  <15.248668, 20.845343, 23.692602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.764210, 21.159512, 23.265812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078351, 21.405806, 23.291407>,  <15.266835, 21.553581, 23.306763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078351, 21.405806, 23.291407>,  <14.764210, 21.159512, 23.265812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078351, 21.405806, 23.291407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089522, -0.010689, -0.995927,
		-0.612542, 0.787882, -0.063517,
		0.785352, 0.615734, 0.063985,
		15.313956, 21.590527, 23.310602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745350, 21.613342, 22.682522>,  <14.764210, 21.159512, 23.265812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745350, 21.613342, 22.682522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124547, 21.656406, 22.802334>,  <15.352065, 21.682245, 22.874222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.124547, 21.656406, 22.802334>,  <14.745350, 21.613342, 22.682522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.124547, 21.656406, 22.802334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297903, 0.031285, -0.954084,
		-0.112088, 0.993695, -0.002415,
		0.947993, 0.107661, 0.299531,
		15.408945, 21.688705, 22.892193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.999379, 22.242613, 22.706264>,  <14.745350, 21.613342, 22.682522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.999379, 22.242613, 22.706264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338707, 22.037600, 22.653105>,  <15.542304, 21.914591, 22.621210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338707, 22.037600, 22.653105>,  <14.999379, 22.242613, 22.706264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338707, 22.037600, 22.653105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038599, 0.310188, -0.949891,
		0.528076, 0.800682, 0.282921,
		0.848320, -0.512535, -0.132897,
		15.593203, 21.883839, 22.613235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521632, 22.682894, 22.459955>,  <14.999379, 22.242613, 22.706264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.521632, 22.682894, 22.459955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633833, 22.311943, 22.360928>,  <15.701154, 22.089373, 22.301510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633833, 22.311943, 22.360928>,  <15.521632, 22.682894, 22.459955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633833, 22.311943, 22.360928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077548, 0.278978, -0.957161,
		0.956716, 0.249287, 0.150170,
		0.280502, -0.927376, -0.247571,
		15.717983, 22.033730, 22.286655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.943954, 22.806150, 21.841129>,  <15.521632, 22.682894, 22.459955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.943954, 22.806150, 21.841129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.895917, 22.409225, 21.829163>,  <15.867094, 22.171070, 21.821981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.895917, 22.409225, 21.829163>,  <15.943954, 22.806150, 21.841129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.895917, 22.409225, 21.829163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025582, 0.027033, -0.999307,
		0.992433, -0.120776, 0.022139,
		-0.120094, -0.992312, -0.029918,
		15.859889, 22.111532, 21.820187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.478510, 22.688202, 21.426191>,  <15.943954, 22.806150, 21.841129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.478510, 22.688202, 21.426191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232973, 22.372725, 21.412560>,  <16.085651, 22.183439, 21.404381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232973, 22.372725, 21.412560>,  <16.478510, 22.688202, 21.426191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.232973, 22.372725, 21.412560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043343, 0.009436, -0.999016,
		0.788237, -0.614717, 0.028392,
		-0.613844, -0.788692, -0.034081,
		16.048820, 22.136118, 21.402334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749565, 22.138775, 21.003334>,  <16.478510, 22.688202, 21.426191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749565, 22.138775, 21.003334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355722, 22.068974, 21.007263>,  <16.119417, 22.027092, 21.009621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.355722, 22.068974, 21.007263>,  <16.749565, 22.138775, 21.003334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.355722, 22.068974, 21.007263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010432, -0.114766, -0.993338,
		0.174470, -0.977945, 0.114819,
		-0.984607, -0.174505, 0.009822,
		16.060341, 22.016623, 21.010210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677748, 21.536392, 20.576715>,  <16.749565, 22.138775, 21.003334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677748, 21.536392, 20.576715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300177, 21.660376, 20.622189>,  <16.073633, 21.734766, 20.649473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300177, 21.660376, 20.622189>,  <16.677748, 21.536392, 20.576715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300177, 21.660376, 20.622189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210365, -0.299282, -0.930686,
		-0.254447, -0.902418, 0.347705,
		-0.943929, 0.309956, 0.113686,
		16.016998, 21.753363, 20.656294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306614, 21.090919, 20.181595>,  <16.677748, 21.536392, 20.576715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306614, 21.090919, 20.181595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034521, 21.383352, 20.202776>,  <15.871265, 21.558811, 20.215485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034521, 21.383352, 20.202776>,  <16.306614, 21.090919, 20.181595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034521, 21.383352, 20.202776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460511, -0.370042, -0.806845,
		-0.570274, -0.573227, 0.588386,
		-0.680233, 0.731081, 0.052952,
		15.830451, 21.602676, 20.218662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618546, 20.753798, 20.113304>,  <16.306614, 21.090919, 20.181595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618546, 20.753798, 20.113304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577155, 21.142239, 20.027279>,  <15.552320, 21.375303, 19.975664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577155, 21.142239, 20.027279>,  <15.618546, 20.753798, 20.113304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577155, 21.142239, 20.027279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666149, -0.228228, -0.710041,
		-0.738606, 0.069791, 0.670515,
		-0.103476, 0.971103, -0.215062,
		15.546112, 21.433569, 19.962761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939620, 20.744993, 19.981741>,  <15.618546, 20.753798, 20.113304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939620, 20.744993, 19.981741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080380, 21.083681, 19.822126>,  <15.164837, 21.286894, 19.726358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080380, 21.083681, 19.822126>,  <14.939620, 20.744993, 19.981741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080380, 21.083681, 19.822126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675886, -0.065071, -0.734128,
		-0.647567, 0.528043, 0.549389,
		0.351902, 0.846721, -0.399034,
		15.185951, 21.337698, 19.702415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445282, 21.241869, 20.013897>,  <14.939620, 20.744993, 19.981741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445282, 21.241869, 20.013897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675604, 21.318394, 19.695942>,  <14.813797, 21.364309, 19.505169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675604, 21.318394, 19.695942>,  <14.445282, 21.241869, 20.013897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.675604, 21.318394, 19.695942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792975, -0.106073, -0.599949,
		-0.199094, 0.975781, 0.090627,
		0.575805, 0.191311, -0.794889,
		14.848346, 21.375788, 19.457476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994878, 21.411570, 19.605322>,  <14.445282, 21.241869, 20.013897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994878, 21.411570, 19.605322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299236, 21.344931, 19.354473>,  <14.481852, 21.304947, 19.203964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299236, 21.344931, 19.354473>,  <13.994878, 21.411570, 19.605322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299236, 21.344931, 19.354473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645281, -0.092713, -0.758298,
		0.068190, 0.981656, -0.178049,
		0.760896, -0.166600, -0.627122,
		14.527505, 21.294950, 19.166336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.817249, 21.861279, 18.999655>,  <13.994878, 21.411570, 19.605322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.817249, 21.861279, 18.999655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.083055, 21.578154, 18.903803>,  <14.242537, 21.408278, 18.846292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.083055, 21.578154, 18.903803>,  <13.817249, 21.861279, 18.999655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.083055, 21.578154, 18.903803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600123, -0.314399, -0.735531,
		0.445280, 0.632577, -0.633698,
		0.664513, -0.707814, -0.239628,
		14.282409, 21.365810, 18.831915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992162, 21.808233, 18.237823>,  <13.817249, 21.861279, 18.999655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992162, 21.808233, 18.237823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069549, 21.441957, 18.378727>,  <14.115981, 21.222193, 18.463270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069549, 21.441957, 18.378727>,  <13.992162, 21.808233, 18.237823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069549, 21.441957, 18.378727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324162, -0.398540, -0.857954,
		0.926007, 0.051798, -0.373936,
		0.193468, -0.915687, 0.352260,
		14.127589, 21.167252, 18.484406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177040, 21.610746, 17.592310>,  <13.992162, 21.808233, 18.237823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.177040, 21.610746, 17.592310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088361, 21.312838, 17.844076>,  <14.035153, 21.134092, 17.995136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.088361, 21.312838, 17.844076>,  <14.177040, 21.610746, 17.592310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088361, 21.312838, 17.844076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395194, -0.521468, -0.756236,
		0.891444, -0.416398, -0.178720,
		-0.221698, -0.744771, 0.629417,
		14.021852, 21.089407, 18.032902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362257, 21.045134, 17.204771>,  <14.177040, 21.610746, 17.592310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362257, 21.045134, 17.204771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091093, 20.928095, 17.474535>,  <13.928394, 20.857872, 17.636393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091093, 20.928095, 17.474535>,  <14.362257, 21.045134, 17.204771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091093, 20.928095, 17.474535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533569, -0.435239, -0.725170,
		0.505710, -0.851443, 0.138933,
		-0.677910, -0.292595, 0.674408,
		13.887720, 20.840317, 17.676857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.235797, 20.341413, 16.965166>,  <14.362257, 21.045134, 17.204771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.235797, 20.341413, 16.965166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.924605, 20.490124, 17.167761>,  <13.737890, 20.579350, 17.289318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.924605, 20.490124, 17.167761>,  <14.235797, 20.341413, 16.965166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924605, 20.490124, 17.167761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624167, -0.549527, -0.555370,
		0.071857, -0.748200, 0.659571,
		-0.777980, 0.371775, 0.506489,
		13.691212, 20.601656, 17.319708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076183, 19.730669, 17.371601>,  <14.235797, 20.341413, 16.965166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.076183, 19.730669, 17.371601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800673, 19.992609, 17.247175>,  <13.635367, 20.149773, 17.172520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.800673, 19.992609, 17.247175>,  <14.076183, 19.730669, 17.371601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800673, 19.992609, 17.247175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287411, -0.640558, -0.712095,
		-0.665574, -0.401067, 0.629410,
		-0.688771, 0.654851, -0.311067,
		13.594041, 20.189064, 17.153856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579551, 19.812815, 17.929302>,  <14.076183, 19.730669, 17.371601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579551, 19.812815, 17.929302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630177, 19.791027, 17.533117>,  <14.660554, 19.777954, 17.295406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.630177, 19.791027, 17.533117>,  <14.579551, 19.812815, 17.929302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630177, 19.791027, 17.533117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457142, -0.882937, 0.106974,
		-0.880342, -0.466321, -0.086852,
		0.126569, -0.054470, -0.990461,
		14.668148, 19.774685, 17.235979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469666, 19.111433, 17.875278>,  <14.579551, 19.812815, 17.929302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469666, 19.111433, 17.875278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.712055, 19.323483, 17.638039>,  <14.857489, 19.450712, 17.495695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.712055, 19.323483, 17.638039>,  <14.469666, 19.111433, 17.875278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.712055, 19.323483, 17.638039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710397, -0.696135, 0.103598,
		-0.357957, -0.484113, -0.798437,
		0.605973, 0.530123, -0.593099,
		14.893847, 19.482519, 17.460110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.578303, 18.639324, 17.249199>,  <14.469666, 19.111433, 17.875278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.578303, 18.639324, 17.249199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868362, 18.906622, 17.315662>,  <15.042397, 19.067001, 17.355539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868362, 18.906622, 17.315662>,  <14.578303, 18.639324, 17.249199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868362, 18.906622, 17.315662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682756, -0.729108, -0.047393,
		0.089476, 0.147812, -0.984960,
		0.725147, 0.668246, 0.166158,
		15.085907, 19.107096, 17.365509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209551, 18.476910, 16.735994>,  <14.578303, 18.639324, 17.249199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209551, 18.476910, 16.735994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303258, 18.642017, 17.088072>,  <15.359482, 18.741081, 17.299318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.303258, 18.642017, 17.088072>,  <15.209551, 18.476910, 16.735994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.303258, 18.642017, 17.088072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778469, -0.621972, 0.084483,
		0.582328, 0.665412, -0.467035,
		0.234267, 0.412769, 0.880194,
		15.373538, 18.765848, 17.352131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794613, 18.950300, 16.726280>,  <15.209551, 18.476910, 16.735994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794613, 18.950300, 16.726280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751294, 18.752993, 17.071524>,  <15.725303, 18.634607, 17.278669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751294, 18.752993, 17.071524>,  <15.794613, 18.950300, 16.726280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751294, 18.752993, 17.071524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856552, -0.486966, -0.170829,
		0.504569, 0.720798, 0.475248,
		-0.108296, -0.493269, 0.863109,
		15.718805, 18.605011, 17.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440355, 18.810736, 16.915243>,  <15.794613, 18.950300, 16.726280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.440355, 18.810736, 16.915243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211720, 18.533812, 17.091419>,  <16.074537, 18.367657, 17.197124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.211720, 18.533812, 17.091419>,  <16.440355, 18.810736, 16.915243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211720, 18.533812, 17.091419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783174, -0.620441, 0.041132,
		0.244792, 0.368453, 0.896838,
		-0.571590, -0.692312, 0.440442,
		16.040243, 18.326118, 17.223553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532860, 18.930431, 16.093679>,  <16.440355, 18.810736, 16.915243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532860, 18.930431, 16.093679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498199, 18.560377, 15.945833>,  <16.477404, 18.338345, 15.857125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498199, 18.560377, 15.945833>,  <16.532860, 18.930431, 16.093679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498199, 18.560377, 15.945833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231912, 0.379550, -0.895633,
		0.968870, 0.008112, -0.247437,
		-0.086650, -0.925136, -0.369616,
		16.472204, 18.282837, 15.834949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962395, 18.852301, 15.400590>,  <16.532860, 18.930431, 16.093679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962395, 18.852301, 15.400590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692818, 18.556816, 15.404792>,  <16.531071, 18.379526, 15.407312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692818, 18.556816, 15.404792>,  <16.962395, 18.852301, 15.400590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692818, 18.556816, 15.404792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302316, 0.262782, -0.916270,
		0.674097, -0.620688, -0.400424,
		-0.673942, -0.738710, 0.010504,
		16.490635, 18.335203, 15.407943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046186, 18.521015, 14.725962>,  <16.962395, 18.852301, 15.400590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046186, 18.521015, 14.725962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689333, 18.419773, 14.875647>,  <16.475222, 18.359028, 14.965458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689333, 18.419773, 14.875647>,  <17.046186, 18.521015, 14.725962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689333, 18.419773, 14.875647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423320, 0.179039, -0.888113,
		0.157767, -0.950733, -0.266863,
		-0.892138, -0.253084, 0.374218,
		16.421692, 18.343842, 14.987910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713467, 18.121479, 14.193275>,  <17.046186, 18.521015, 14.725962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713467, 18.121479, 14.193275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417751, 18.242882, 14.433720>,  <16.240322, 18.315723, 14.577986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417751, 18.242882, 14.433720>,  <16.713467, 18.121479, 14.193275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417751, 18.242882, 14.433720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553312, 0.234976, -0.799145,
		-0.383794, -0.923401, -0.005781,
		-0.739290, 0.303508, 0.601111,
		16.195965, 18.333935, 14.614053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143259, 17.786175, 13.901119>,  <16.713467, 18.121479, 14.193275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143259, 17.786175, 13.901119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997618, 18.071857, 14.140230>,  <15.910233, 18.243267, 14.283696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997618, 18.071857, 14.140230>,  <16.143259, 17.786175, 13.901119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997618, 18.071857, 14.140230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684025, 0.230534, -0.692072,
		-0.632091, -0.660879, 0.404599,
		-0.364102, 0.714208, 0.597776,
		15.888387, 18.286119, 14.319563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455391, 17.560648, 13.909101>,  <16.143259, 17.786175, 13.901119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455391, 17.560648, 13.909101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481050, 17.948473, 14.003614>,  <15.496445, 18.181168, 14.060323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481050, 17.948473, 14.003614>,  <15.455391, 17.560648, 13.909101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481050, 17.948473, 14.003614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712558, 0.210269, -0.669364,
		-0.698675, -0.125430, 0.704358,
		0.064146, 0.969564, 0.236285,
		15.500294, 18.239342, 14.074500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829787, 17.857208, 14.056677>,  <15.455391, 17.560648, 13.909101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829787, 17.857208, 14.056677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.031117, 18.185768, 13.949371>,  <15.151916, 18.382904, 13.884988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.031117, 18.185768, 13.949371>,  <14.829787, 17.857208, 14.056677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.031117, 18.185768, 13.949371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746924, 0.257477, -0.613033,
		-0.434474, 0.508928, 0.743119,
		0.503325, 0.821400, -0.268263,
		15.182115, 18.432188, 13.868893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.284082, 18.331560, 13.901107>,  <14.829787, 17.857208, 14.056677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.284082, 18.331560, 13.901107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624168, 18.492233, 13.764997>,  <14.828219, 18.588638, 13.683331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.624168, 18.492233, 13.764997>,  <14.284082, 18.331560, 13.901107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.624168, 18.492233, 13.764997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497157, 0.400088, -0.769912,
		-0.173122, 0.823759, 0.539861,
		0.850214, 0.401684, -0.340274,
		14.879232, 18.612738, 13.662915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064525, 18.915262, 13.695910>,  <14.284082, 18.331560, 13.901107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064525, 18.915262, 13.695910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414797, 18.884357, 13.505241>,  <14.624960, 18.865814, 13.390841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414797, 18.884357, 13.505241>,  <14.064525, 18.915262, 13.695910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.414797, 18.884357, 13.505241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372630, 0.519722, -0.768789,
		0.307133, 0.850835, 0.426321,
		0.875681, -0.077260, -0.476670,
		14.677501, 18.861179, 13.362241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.190595, 19.519745, 13.236805>,  <14.064525, 18.915262, 13.695910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.190595, 19.519745, 13.236805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386551, 19.202118, 13.092879>,  <14.504125, 19.011541, 13.006524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.386551, 19.202118, 13.092879>,  <14.190595, 19.519745, 13.236805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.386551, 19.202118, 13.092879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357289, 0.193602, -0.913708,
		0.795205, 0.576176, -0.188867,
		0.489892, -0.794065, -0.359814,
		14.533519, 18.963898, 12.984935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.457534, 19.784695, 12.526443>,  <14.190595, 19.519745, 13.236805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.457534, 19.784695, 12.526443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.456486, 19.385029, 12.510129>,  <14.455857, 19.145229, 12.500340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.456486, 19.385029, 12.510129>,  <14.457534, 19.784695, 12.526443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456486, 19.385029, 12.510129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422030, 0.038079, -0.905782,
		0.906578, 0.014839, -0.421777,
		-0.002620, -0.999164, -0.040784,
		14.455700, 19.085279, 12.497893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707891, 19.536383, 11.806174>,  <14.457534, 19.784695, 12.526443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707891, 19.536383, 11.806174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564770, 19.207869, 11.983924>,  <14.478897, 19.010761, 12.090573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564770, 19.207869, 11.983924>,  <14.707891, 19.536383, 11.806174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564770, 19.207869, 11.983924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097994, -0.440227, -0.892523,
		0.928641, -0.362895, 0.077035,
		-0.357804, -0.821284, 0.444374,
		14.457428, 18.961483, 12.117236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155996, 18.894270, 11.515900>,  <14.707891, 19.536383, 11.806174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155996, 18.894270, 11.515900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.786714, 18.779743, 11.618438>,  <14.565145, 18.711027, 11.679961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.786714, 18.779743, 11.618438>,  <15.155996, 18.894270, 11.515900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786714, 18.779743, 11.618438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107204, -0.448689, -0.887234,
		0.369050, -0.846582, 0.383538,
		-0.923206, -0.286317, 0.256346,
		14.509751, 18.693848, 11.695341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.033098, 18.231655, 11.111844>,  <15.155996, 18.894270, 11.515900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.033098, 18.231655, 11.111844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666723, 18.311033, 11.251375>,  <14.446898, 18.358660, 11.335093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666723, 18.311033, 11.251375>,  <15.033098, 18.231655, 11.111844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666723, 18.311033, 11.251375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400477, -0.508386, -0.762340,
		0.026056, -0.837952, 0.545122,
		-0.915936, 0.198445, 0.348827,
		14.391942, 18.370567, 11.356023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.613271, 17.602961, 11.099237>,  <15.033098, 18.231655, 11.111844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.613271, 17.602961, 11.099237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366691, 17.915693, 11.061867>,  <14.218742, 18.103333, 11.039444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366691, 17.915693, 11.061867>,  <14.613271, 17.602961, 11.099237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366691, 17.915693, 11.061867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383894, -0.402021, -0.831267,
		-0.687470, -0.476568, 0.547966,
		-0.616450, 0.781832, -0.093426,
		14.181756, 18.150244, 11.033839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992589, 17.336107, 10.775608>,  <14.613271, 17.602961, 11.099237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992589, 17.336107, 10.775608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934330, 17.728395, 10.723487>,  <13.899375, 17.963768, 10.692214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934330, 17.728395, 10.723487>,  <13.992589, 17.336107, 10.775608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.934330, 17.728395, 10.723487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511873, -0.187408, -0.838370,
		-0.846624, -0.055408, 0.529298,
		-0.145647, 0.980719, -0.130302,
		13.890635, 18.022612, 10.684396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.298367, 17.427200, 10.553010>,  <13.992589, 17.336107, 10.775608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.298367, 17.427200, 10.553010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499532, 17.746857, 10.421279>,  <13.620231, 17.938650, 10.342240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.499532, 17.746857, 10.421279>,  <13.298367, 17.427200, 10.553010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.499532, 17.746857, 10.421279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456206, -0.078202, -0.886431,
		-0.734136, 0.596038, 0.325244,
		0.502912, 0.799139, -0.329327,
		13.650405, 17.986599, 10.322481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.800565, 17.811487, 10.168917>,  <13.298367, 17.427200, 10.553010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.800565, 17.811487, 10.168917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151493, 17.945805, 10.031775>,  <13.362050, 18.026396, 9.949491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151493, 17.945805, 10.031775>,  <12.800565, 17.811487, 10.168917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.151493, 17.945805, 10.031775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360019, -0.011869, -0.932869,
		-0.317323, 0.941860, 0.110479,
		0.877321, 0.335795, -0.342854,
		13.414689, 18.046543, 9.928919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.711636, 18.451786, 9.713365>,  <12.800565, 17.811487, 10.168917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.711636, 18.451786, 9.713365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056773, 18.284195, 9.600257>,  <13.263856, 18.183640, 9.532393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056773, 18.284195, 9.600257>,  <12.711636, 18.451786, 9.713365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056773, 18.284195, 9.600257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152090, 0.318296, -0.935712,
		0.482048, 0.850379, 0.210917,
		0.862843, -0.418980, -0.282768,
		13.315626, 18.158501, 9.515427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046063, 18.963455, 9.414107>,  <12.711636, 18.451786, 9.713365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046063, 18.963455, 9.414107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212855, 18.631216, 9.266467>,  <13.312930, 18.431873, 9.177883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212855, 18.631216, 9.266467>,  <13.046063, 18.963455, 9.414107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212855, 18.631216, 9.266467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074973, 0.373274, -0.924687,
		0.905818, 0.413248, 0.093375,
		0.416979, -0.830598, -0.369101,
		13.337949, 18.382036, 9.155737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454466, 19.257368, 8.930789>,  <13.046063, 18.963455, 9.414107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454466, 19.257368, 8.930789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454917, 18.870329, 8.829790>,  <13.455188, 18.638105, 8.769191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454917, 18.870329, 8.829790>,  <13.454466, 19.257368, 8.930789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.454917, 18.870329, 8.829790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171442, 0.248945, -0.953223,
		0.985193, -0.042215, 0.166168,
		0.001127, -0.967597, -0.252497,
		13.455255, 18.580050, 8.754041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060695, 19.065084, 8.653459>,  <13.454466, 19.257368, 8.930789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060695, 19.065084, 8.653459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773668, 18.832714, 8.499771>,  <13.601453, 18.693293, 8.407558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773668, 18.832714, 8.499771>,  <14.060695, 19.065084, 8.653459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773668, 18.832714, 8.499771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256873, 0.292028, -0.921269,
		0.647391, -0.759767, -0.060325,
		-0.717566, -0.580925, -0.384219,
		13.558398, 18.658436, 8.384505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.313687, 18.686808, 8.165492>,  <14.060695, 19.065084, 8.653459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.313687, 18.686808, 8.165492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941837, 18.732462, 8.025337>,  <13.718727, 18.759855, 7.941244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.941837, 18.732462, 8.025337>,  <14.313687, 18.686808, 8.165492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.941837, 18.732462, 8.025337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367216, 0.207368, -0.906726,
		-0.030831, -0.971582, -0.234687,
		-0.929625, 0.114136, -0.350387,
		13.662950, 18.766703, 7.920221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.927395, 18.204962, 8.116049>,  <14.313687, 18.686808, 8.165492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.927395, 18.204962, 8.116049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644987, 17.981636, 8.290323>,  <14.475543, 17.847641, 8.394888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644987, 17.981636, 8.290323>,  <14.927395, 18.204962, 8.116049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.644987, 17.981636, 8.290323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583495, -0.109951, 0.804639,
		-0.401337, 0.822311, 0.403401,
		-0.706018, -0.558314, 0.435687,
		14.433182, 17.814142, 8.421029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671856, 18.196135, 8.293428>,  <14.927395, 18.204962, 8.116049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.671856, 18.196135, 8.293428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851485, 17.900248, 8.493887>,  <15.959263, 17.722715, 8.614162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851485, 17.900248, 8.493887>,  <15.671856, 18.196135, 8.293428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851485, 17.900248, 8.493887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887776, -0.432765, 0.156745,
		0.100932, -0.515297, -0.851047,
		0.449073, -0.739719, 0.501148,
		15.986207, 17.678331, 8.644231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657145, 17.476011, 7.925432>,  <15.671856, 18.196135, 8.293428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.657145, 17.476011, 7.925432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.638176, 17.445675, 8.323829>,  <15.626795, 17.427473, 8.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.638176, 17.445675, 8.323829>,  <15.657145, 17.476011, 7.925432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638176, 17.445675, 8.323829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969465, -0.236682, -0.064180,
		0.240601, -0.968622, -0.062309,
		-0.047419, -0.075848, 0.995991,
		15.623950, 17.422922, 8.622626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196379, 16.941437, 8.050852>,  <15.657145, 17.476011, 7.925432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196379, 16.941437, 8.050852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384132, 16.589071, 8.026614>,  <16.496784, 16.377653, 8.012072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.384132, 16.589071, 8.026614>,  <16.196379, 16.941437, 8.050852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.384132, 16.589071, 8.026614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365431, 0.131328, 0.921527,
		-0.803827, -0.454694, 0.383556,
		0.469385, -0.880912, -0.060595,
		16.524948, 16.324799, 8.008436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.973806, 16.612246, 8.609535>,  <16.196379, 16.941437, 8.050852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.973806, 16.612246, 8.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342430, 16.523975, 8.481766>,  <16.563604, 16.471014, 8.405104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342430, 16.523975, 8.481766>,  <15.973806, 16.612246, 8.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342430, 16.523975, 8.481766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335825, 0.040260, 0.941064,
		-0.194809, -0.974516, 0.111210,
		0.921559, -0.220675, -0.319424,
		16.618898, 16.457773, 8.385939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.187813, 16.018187, 9.055782>,  <15.973806, 16.612246, 8.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.187813, 16.018187, 9.055782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508001, 16.237673, 8.959323>,  <16.700115, 16.369366, 8.901447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508001, 16.237673, 8.959323>,  <16.187813, 16.018187, 9.055782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508001, 16.237673, 8.959323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407749, -0.203651, 0.890094,
		0.439300, -0.810824, -0.386756,
		0.800473, 0.548717, -0.241148,
		16.748142, 16.402288, 8.886978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823904, 15.667880, 9.019690>,  <16.187813, 16.018187, 9.055782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823904, 15.667880, 9.019690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911102, 16.049084, 9.103832>,  <16.963421, 16.277805, 9.154318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911102, 16.049084, 9.103832>,  <16.823904, 15.667880, 9.019690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911102, 16.049084, 9.103832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685495, -0.302940, 0.662060,
		0.694675, -0.000128, -0.719323,
		0.217997, 0.953009, 0.210357,
		16.976501, 16.334986, 9.166940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502380, 15.638387, 9.006310>,  <16.823904, 15.667880, 9.019690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502380, 15.638387, 9.006310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382931, 15.935611, 9.245872>,  <17.311262, 16.113945, 9.389608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.382931, 15.935611, 9.245872>,  <17.502380, 15.638387, 9.006310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382931, 15.935611, 9.245872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592226, -0.347820, 0.726835,
		0.748393, 0.571736, -0.336193,
		-0.298623, 0.743061, 0.598903,
		17.293344, 16.158529, 9.425543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045376, 15.661613, 9.302941>,  <17.502380, 15.638387, 9.006310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.045376, 15.661613, 9.302941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772476, 15.855529, 9.521853>,  <17.608736, 15.971878, 9.653201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772476, 15.855529, 9.521853>,  <18.045376, 15.661613, 9.302941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772476, 15.855529, 9.521853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536033, -0.177379, 0.825352,
		0.497198, 0.856456, -0.138846,
		-0.682249, 0.484789, 0.547281,
		17.567802, 16.000965, 9.686038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.534060, 15.872382, 9.875934>,  <18.045376, 15.661613, 9.302941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.534060, 15.872382, 9.875934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.152248, 15.927014, 9.981935>,  <17.923162, 15.959794, 10.045535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.152248, 15.927014, 9.981935>,  <18.534060, 15.872382, 9.875934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.152248, 15.927014, 9.981935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280853, 0.113766, 0.952984,
		0.100010, 0.984075, -0.146952,
		-0.954526, 0.136580, 0.265002,
		17.865891, 15.967988, 10.061435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.523474, 16.366127, 10.378825>,  <18.534060, 15.872382, 9.875934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.523474, 16.366127, 10.378825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180752, 16.174709, 10.455645>,  <17.975119, 16.059858, 10.501737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180752, 16.174709, 10.455645>,  <18.523474, 16.366127, 10.378825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180752, 16.174709, 10.455645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331232, -0.225343, 0.916245,
		-0.395186, 0.848655, 0.351584,
		-0.856804, -0.478544, 0.192049,
		17.923710, 16.031147, 10.513259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276411, 16.666029, 11.057733>,  <18.523474, 16.366127, 10.378825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276411, 16.666029, 11.057733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122223, 16.305962, 10.976631>,  <18.029711, 16.089920, 10.927970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122223, 16.305962, 10.976631>,  <18.276411, 16.666029, 11.057733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122223, 16.305962, 10.976631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414208, -0.365158, 0.833722,
		-0.824528, 0.237391, 0.513614,
		-0.385468, -0.900170, -0.202754,
		18.006582, 16.035912, 10.915805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007277, 16.486013, 11.686525>,  <18.276411, 16.666029, 11.057733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007277, 16.486013, 11.686525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.067568, 16.142937, 11.489895>,  <18.103743, 15.937091, 11.371917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.067568, 16.142937, 11.489895>,  <18.007277, 16.486013, 11.686525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067568, 16.142937, 11.489895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496897, -0.364146, 0.787712,
		-0.854619, -0.362993, 0.371297,
		0.150727, -0.857691, -0.491577,
		18.112785, 15.885630, 11.342422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547541, 16.179581, 12.040894>,  <18.007277, 16.486013, 11.686525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547541, 16.179581, 12.040894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412930, 15.833319, 12.189157>,  <18.332163, 15.625561, 12.278114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412930, 15.833319, 12.189157>,  <18.547541, 16.179581, 12.040894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.412930, 15.833319, 12.189157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667775, 0.058147, 0.742089,
		-0.663946, 0.497250, 0.558496,
		-0.336529, -0.865656, 0.370658,
		18.311972, 15.573622, 12.300354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.349293, 16.208075, 12.780422>,  <18.547541, 16.179581, 12.040894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.349293, 16.208075, 12.780422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496191, 15.853321, 12.668302>,  <18.584330, 15.640470, 12.601029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496191, 15.853321, 12.668302>,  <18.349293, 16.208075, 12.780422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496191, 15.853321, 12.668302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818946, 0.165444, 0.549505,
		-0.440972, -0.431355, 0.787068,
		0.367247, -0.886883, -0.280301,
		18.606365, 15.587256, 12.584211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564739, 15.825728, 13.390566>,  <18.349293, 16.208075, 12.780422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.564739, 15.825728, 13.390566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751953, 15.657629, 13.079610>,  <18.864281, 15.556769, 12.893036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751953, 15.657629, 13.079610>,  <18.564739, 15.825728, 13.390566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751953, 15.657629, 13.079610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832421, -0.085675, 0.547480,
		-0.296681, -0.903355, 0.309726,
		0.468033, -0.420249, -0.777390,
		18.892363, 15.531554, 12.846393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936052, 15.254730, 13.678517>,  <18.564739, 15.825728, 13.390566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.936052, 15.254730, 13.678517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119732, 15.321696, 13.329551>,  <19.229940, 15.361876, 13.120171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119732, 15.321696, 13.329551>,  <18.936052, 15.254730, 13.678517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119732, 15.321696, 13.329551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888316, -0.092846, 0.449750,
		-0.005704, -0.981504, -0.191354,
		0.459198, 0.167417, -0.872415,
		19.257492, 15.371922, 13.067826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473932, 14.920017, 13.787755>,  <18.936052, 15.254730, 13.678517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473932, 14.920017, 13.787755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.583008, 15.132589, 13.466951>,  <19.648453, 15.260133, 13.274469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.583008, 15.132589, 13.466951>,  <19.473932, 14.920017, 13.787755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.583008, 15.132589, 13.466951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950526, -0.019893, 0.310007,
		0.148793, -0.846868, -0.510564,
		0.272691, 0.531431, -0.802010,
		19.664816, 15.292019, 13.226348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.930300, 14.462095, 13.442378>,  <19.473932, 14.920017, 13.787755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.930300, 14.462095, 13.442378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002092, 14.847927, 13.365051>,  <20.045168, 15.079426, 13.318655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002092, 14.847927, 13.365051>,  <19.930300, 14.462095, 13.442378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002092, 14.847927, 13.365051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936781, -0.107578, 0.332969,
		0.300378, -0.240859, -0.922909,
		0.179483, 0.964580, -0.193318,
		20.055937, 15.137301, 13.307055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.634956, 14.510201, 13.143623>,  <19.930300, 14.462095, 13.442378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.634956, 14.510201, 13.143623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.570173, 14.888919, 13.254872>,  <20.531303, 15.116149, 13.321622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.570173, 14.888919, 13.254872>,  <20.634956, 14.510201, 13.143623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.570173, 14.888919, 13.254872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928446, 0.050720, 0.367990,
		0.334304, 0.317821, -0.887260,
		-0.161957, 0.946793, 0.278123,
		20.521585, 15.172956, 13.338309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334398, 14.820346, 13.069226>,  <20.634956, 14.510201, 13.143623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334398, 14.820346, 13.069226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137981, 15.073684, 13.308476>,  <21.020132, 15.225686, 13.452026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137981, 15.073684, 13.308476>,  <21.334398, 14.820346, 13.069226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137981, 15.073684, 13.308476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834204, 0.144066, 0.532306,
		0.250963, 0.760343, -0.599080,
		-0.491042, 0.633344, 0.598126,
		20.990669, 15.263687, 13.487914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.848022, 15.223403, 13.166389>,  <21.334398, 14.820346, 13.069226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.848022, 15.223403, 13.166389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.576504, 15.323657, 13.442481>,  <21.413591, 15.383809, 13.608136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.576504, 15.323657, 13.442481>,  <21.848022, 15.223403, 13.166389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576504, 15.323657, 13.442481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734125, 0.253558, 0.629896,
		-0.017139, 0.934286, -0.356112,
		-0.678798, 0.250635, 0.690228,
		21.372864, 15.398848, 13.649549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630199, 15.999653, 13.356368>,  <21.848022, 15.223403, 13.166389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630199, 15.999653, 13.356368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591595, 15.757502, 13.672395>,  <21.568432, 15.612211, 13.862011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591595, 15.757502, 13.672395>,  <21.630199, 15.999653, 13.356368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591595, 15.757502, 13.672395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545479, 0.631783, 0.550729,
		-0.832549, 0.484116, 0.269247,
		-0.096511, -0.605377, 0.790066,
		21.562641, 15.575889, 13.909414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321524, 15.771089, 13.683092>,  <21.630199, 15.999653, 13.356368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321524, 15.771089, 13.683092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482578, 15.902538, 13.341357>,  <22.579210, 15.981408, 13.136316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482578, 15.902538, 13.341357>,  <22.321524, 15.771089, 13.683092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.482578, 15.902538, 13.341357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840163, 0.237791, 0.487423,
		0.363333, -0.914036, -0.180355,
		0.402636, 0.328624, -0.854337,
		22.603369, 16.001125, 13.085056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.949860, 15.382877, 13.541745>,  <22.321524, 15.771089, 13.683092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.949860, 15.382877, 13.541745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.945755, 15.763774, 13.419675>,  <22.943293, 15.992311, 13.346433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.945755, 15.763774, 13.419675>,  <22.949860, 15.382877, 13.541745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.945755, 15.763774, 13.419675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861196, 0.163513, 0.481254,
		0.508169, -0.257878, -0.821744,
		-0.010261, 0.952241, -0.305176,
		22.942677, 16.049446, 13.328122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.655025, 15.491008, 13.489477>,  <22.949860, 15.382877, 13.541745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.655025, 15.491008, 13.489477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.429020, 15.817931, 13.534665>,  <23.293417, 16.014086, 13.561778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.429020, 15.817931, 13.534665>,  <23.655025, 15.491008, 13.489477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.429020, 15.817931, 13.534665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583787, 0.299258, 0.754743,
		0.583052, 0.492392, -0.646220,
		-0.565016, 0.817309, 0.112970,
		23.259516, 16.063124, 13.568556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.823326, 14.822273, 13.237525>,  <23.655025, 15.491008, 13.489477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.823326, 14.822273, 13.237525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033173, 14.684964, 12.925900>,  <24.159081, 14.602578, 12.738924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033173, 14.684964, 12.925900>,  <23.823326, 14.822273, 13.237525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.033173, 14.684964, 12.925900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751225, 0.617207, 0.233915,
		0.400547, -0.707968, 0.581673,
		0.524617, -0.343273, -0.779064,
		24.190557, 14.581983, 12.692181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.439907, 14.843847, 13.644526>,  <23.823326, 14.822273, 13.237525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.439907, 14.843847, 13.644526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532272, 14.799287, 13.257895>,  <24.587690, 14.772551, 13.025916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532272, 14.799287, 13.257895>,  <24.439907, 14.843847, 13.644526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532272, 14.799287, 13.257895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904575, 0.390475, 0.171096,
		0.358364, -0.913849, 0.190935,
		0.230912, -0.111400, -0.966576,
		24.601545, 14.765867, 12.967921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241930, 14.690243, 13.601831>,  <24.439907, 14.843847, 13.644526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241930, 14.690243, 13.601831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025961, 14.868052, 13.315928>,  <24.896379, 14.974736, 13.144384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025961, 14.868052, 13.315928>,  <25.241930, 14.690243, 13.601831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025961, 14.868052, 13.315928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358630, 0.889729, 0.282430,
		0.761490, -0.103844, -0.639805,
		-0.539924, 0.444521, -0.714761,
		24.863983, 15.001408, 13.101500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740211, 14.294214, 13.959352>,  <25.241930, 14.690243, 13.601831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740211, 14.294214, 13.959352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943674, 14.347103, 13.619050>,  <26.065752, 14.378837, 13.414868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943674, 14.347103, 13.619050>,  <25.740211, 14.294214, 13.959352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943674, 14.347103, 13.619050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193317, 0.980446, 0.036796,
		0.838986, 0.145749, 0.524271,
		0.508656, 0.132222, -0.850757,
		26.096272, 14.386769, 13.363823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221560, 14.754169, 14.144309>,  <25.740211, 14.294214, 13.959352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221560, 14.754169, 14.144309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158419, 14.769306, 13.749615>,  <26.120533, 14.778389, 13.512798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158419, 14.769306, 13.749615>,  <26.221560, 14.754169, 14.144309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158419, 14.769306, 13.749615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063477, 0.996810, 0.048384,
		0.985420, 0.070273, -0.154948,
		-0.157854, 0.037843, -0.986737,
		26.111063, 14.780659, 13.453593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767044, 14.927650, 14.509871>,  <26.221560, 14.754169, 14.144309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767044, 14.927650, 14.509871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647959, 14.984955, 14.887408>,  <26.576508, 15.019338, 15.113931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647959, 14.984955, 14.887408>,  <26.767044, 14.927650, 14.509871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647959, 14.984955, 14.887408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445510, -0.853567, 0.270083,
		0.844327, 0.500899, 0.190293,
		-0.297712, 0.143261, 0.943845,
		26.558645, 15.027933, 15.170562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.215508, 17.600201, 28.437500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.523669, 17.347322, 28.404501>,  <13.708567, 17.195595, 28.384701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.523669, 17.347322, 28.404501>,  <13.215508, 17.600201, 28.437500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523669, 17.347322, 28.404501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243530, -0.172215, -0.954482,
		0.589211, 0.755428, -0.286633,
		0.770405, -0.632195, -0.082498,
		13.754790, 17.157663, 28.379751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646283, 17.794188, 27.902990>,  <13.215508, 17.600201, 28.437500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646283, 17.794188, 27.902990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.736259, 17.404987, 27.923658>,  <13.790245, 17.171467, 27.936060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.736259, 17.404987, 27.923658>,  <13.646283, 17.794188, 27.902990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.736259, 17.404987, 27.923658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303029, -0.120257, -0.945363,
		0.926053, 0.196993, -0.321899,
		0.224941, -0.973001, 0.051669,
		13.803741, 17.113087, 27.939159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.958655, 17.613220, 27.266914>,  <13.646283, 17.794188, 27.902990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.958655, 17.613220, 27.266914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.822931, 17.270195, 27.421553>,  <13.741497, 17.064381, 27.514336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.822931, 17.270195, 27.421553>,  <13.958655, 17.613220, 27.266914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822931, 17.270195, 27.421553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389491, -0.246011, -0.887567,
		0.856251, -0.451734, -0.250540,
		-0.339309, -0.857563, 0.386594,
		13.721139, 17.012926, 27.537531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.169422, 17.123846, 26.798666>,  <13.958655, 17.613220, 27.266914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.169422, 17.123846, 26.798666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.858273, 16.979574, 27.004509>,  <13.671583, 16.893011, 27.128016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.858273, 16.979574, 27.004509>,  <14.169422, 17.123846, 26.798666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858273, 16.979574, 27.004509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430801, -0.290130, -0.854538,
		0.457519, -0.886416, 0.070303,
		-0.777874, -0.360680, 0.514609,
		13.624910, 16.871370, 27.158892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.023738, 16.621813, 26.446667>,  <14.169422, 17.123846, 26.798666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.023738, 16.621813, 26.446667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.677916, 16.610735, 26.647377>,  <13.470423, 16.604088, 26.767803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.677916, 16.610735, 26.647377>,  <14.023738, 16.621813, 26.446667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677916, 16.610735, 26.647377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452002, -0.393531, -0.800517,
		0.219635, -0.918894, 0.327711,
		-0.864555, -0.027696, 0.501775,
		13.418550, 16.602427, 26.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691103, 15.953303, 26.365570>,  <14.023738, 16.621813, 26.446667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691103, 15.953303, 26.365570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.426781, 16.237190, 26.463253>,  <13.268188, 16.407522, 26.521862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.426781, 16.237190, 26.463253>,  <13.691103, 15.953303, 26.365570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.426781, 16.237190, 26.463253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468700, -0.136070, -0.872815,
		-0.586224, -0.691220, 0.422560,
		-0.660805, 0.709718, 0.244207,
		13.228539, 16.450106, 26.536514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054465, 15.658543, 26.178488>,  <13.691103, 15.953303, 26.365570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054465, 15.658543, 26.178488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.023911, 16.056126, 26.210014>,  <13.005578, 16.294676, 26.228930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.023911, 16.056126, 26.210014>,  <13.054465, 15.658543, 26.178488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023911, 16.056126, 26.210014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378669, 0.044204, -0.924476,
		-0.922375, -0.100461, 0.373005,
		-0.076386, 0.993958, 0.078815,
		13.000995, 16.354313, 26.233658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.395634, 15.805758, 25.871078>,  <13.054465, 15.658543, 26.178488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.395634, 15.805758, 25.871078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.588683, 16.155695, 25.887678>,  <12.704514, 16.365658, 25.897638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.588683, 16.155695, 25.887678>,  <12.395634, 15.805758, 25.871078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588683, 16.155695, 25.887678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225820, 0.170077, -0.959208,
		-0.846214, 0.453566, 0.279640,
		0.482625, 0.874843, 0.041497,
		12.733471, 16.418148, 25.900127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.951915, 16.330532, 25.527664>,  <12.395634, 15.805758, 25.871078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.951915, 16.330532, 25.527664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.306672, 16.514633, 25.543608>,  <12.519526, 16.625093, 25.553173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.306672, 16.514633, 25.543608>,  <11.951915, 16.330532, 25.527664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306672, 16.514633, 25.543608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125010, 0.322155, -0.938397,
		-0.444741, 0.827275, 0.343253,
		0.886892, 0.460253, 0.039858,
		12.572740, 16.652710, 25.555565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.890636, 17.073795, 25.434799>,  <11.951915, 16.330532, 25.527664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.890636, 17.073795, 25.434799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.256978, 16.962900, 25.318626>,  <12.476783, 16.896362, 25.248922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.256978, 16.962900, 25.318626>,  <11.890636, 17.073795, 25.434799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.256978, 16.962900, 25.318626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176435, 0.371882, -0.911359,
		0.360671, 0.885913, 0.291674,
		0.915853, -0.277239, -0.290433,
		12.531734, 16.879728, 25.231497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.215981, 17.718201, 25.103764>,  <11.890636, 17.073795, 25.434799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.215981, 17.718201, 25.103764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.440836, 17.413816, 24.974186>,  <12.575748, 17.231186, 24.896439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.440836, 17.413816, 24.974186>,  <12.215981, 17.718201, 25.103764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440836, 17.413816, 24.974186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087065, 0.335062, -0.938165,
		0.822450, 0.555580, 0.122097,
		0.562136, -0.760963, -0.323943,
		12.609477, 17.185528, 24.877003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.675032, 18.050350, 24.673229>,  <12.215981, 17.718201, 25.103764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.675032, 18.050350, 24.673229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.704283, 17.664368, 24.572424>,  <12.721833, 17.432777, 24.511942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.704283, 17.664368, 24.572424>,  <12.675032, 18.050350, 24.673229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.704283, 17.664368, 24.572424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073624, 0.246775, -0.966272,
		0.994601, 0.089216, -0.052998,
		0.073128, -0.964957, -0.252011,
		12.726221, 17.374880, 24.496820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197454, 17.983553, 24.074047>,  <12.675032, 18.050350, 24.673229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197454, 17.983553, 24.074047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.003613, 17.637426, 24.022840>,  <12.887309, 17.429750, 23.992117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.003613, 17.637426, 24.022840>,  <13.197454, 17.983553, 24.074047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.003613, 17.637426, 24.022840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171018, 0.049802, -0.984008,
		0.857854, -0.498746, 0.123851,
		-0.484602, -0.865317, -0.128017,
		12.858232, 17.377831, 23.984436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640043, 17.614368, 23.692802>,  <13.197454, 17.983553, 24.074047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640043, 17.614368, 23.692802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.285419, 17.435024, 23.647223>,  <13.072645, 17.327417, 23.619875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.285419, 17.435024, 23.647223>,  <13.640043, 17.614368, 23.692802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285419, 17.435024, 23.647223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113430, 0.028114, -0.993148,
		0.448494, -0.893409, 0.025933,
		-0.886559, -0.448363, -0.113948,
		13.019452, 17.300516, 23.613037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741360, 17.160536, 23.155703>,  <13.640043, 17.614368, 23.692802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741360, 17.160536, 23.155703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.342717, 17.193462, 23.156296>,  <13.103532, 17.213219, 23.156652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.342717, 17.193462, 23.156296>,  <13.741360, 17.160536, 23.155703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.342717, 17.193462, 23.156296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006929, 0.101824, -0.994778,
		-0.082037, -0.991391, -0.102049,
		-0.996605, 0.082316, 0.001484,
		13.043736, 17.218157, 23.156740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.468201, 16.711304, 22.605913>,  <13.741360, 17.160536, 23.155703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.468201, 16.711304, 22.605913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.168121, 16.967916, 22.669966>,  <12.988074, 17.121883, 22.708397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.168121, 16.967916, 22.669966>,  <13.468201, 16.711304, 22.605913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.168121, 16.967916, 22.669966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127514, 0.097266, -0.987056,
		-0.648802, -0.760906, 0.008835,
		-0.750198, 0.641530, 0.160133,
		12.943062, 17.160376, 22.718006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.025217, 16.572903, 22.043892>,  <13.468201, 16.711304, 22.605913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.025217, 16.572903, 22.043892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.898834, 16.917278, 22.203369>,  <12.823005, 17.123903, 22.299055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.898834, 16.917278, 22.203369>,  <13.025217, 16.572903, 22.043892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898834, 16.917278, 22.203369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375891, 0.272244, -0.885770,
		-0.871135, -0.429731, 0.237601,
		-0.315957, 0.860938, 0.398694,
		12.804047, 17.175560, 22.322977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.284467, 16.682411, 22.000824>,  <13.025217, 16.572903, 22.043892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.284467, 16.682411, 22.000824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.442332, 17.048328, 22.035227>,  <12.537051, 17.267878, 22.055868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.442332, 17.048328, 22.035227>,  <12.284467, 16.682411, 22.000824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.442332, 17.048328, 22.035227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357402, 0.239075, -0.902833,
		-0.846466, 0.325575, 0.421303,
		0.394663, 0.914792, 0.086008,
		12.560731, 17.322765, 22.061029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739012, 16.997587, 21.723444>,  <12.284467, 16.682411, 22.000824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739012, 16.997587, 21.723444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.060747, 17.234991, 21.712244>,  <12.253788, 17.377434, 21.705524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.060747, 17.234991, 21.712244>,  <11.739012, 16.997587, 21.723444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060747, 17.234991, 21.712244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272962, 0.327246, -0.904656,
		-0.527761, 0.735292, 0.425223,
		0.804338, 0.593512, -0.027998,
		12.302049, 17.413044, 21.703844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.505812, 17.584618, 21.476776>,  <11.739012, 16.997587, 21.723444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.505812, 17.584618, 21.476776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.898849, 17.585478, 21.402473>,  <12.134671, 17.585995, 21.357891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.898849, 17.585478, 21.402473>,  <11.505812, 17.584618, 21.476776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.898849, 17.585478, 21.402473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174434, 0.354648, -0.918585,
		0.063904, 0.934997, 0.348850,
		0.982593, 0.002150, -0.185758,
		12.193626, 17.586123, 21.346746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.610445, 18.195057, 21.070002>,  <11.505812, 17.584618, 21.476776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.610445, 18.195057, 21.070002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.912244, 17.944513, 20.991608>,  <12.093323, 17.794188, 20.944571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.912244, 17.944513, 20.991608>,  <11.610445, 18.195057, 21.070002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.912244, 17.944513, 20.991608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057115, 0.234826, -0.970358,
		0.653813, 0.743326, 0.141401,
		0.754497, -0.626357, -0.195987,
		12.138593, 17.756607, 20.932812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.076643, 18.574835, 20.646164>,  <11.610445, 18.195057, 21.070002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.076643, 18.574835, 20.646164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.162757, 18.190367, 20.577112>,  <12.214425, 17.959686, 20.535681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.162757, 18.190367, 20.577112>,  <12.076643, 18.574835, 20.646164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.162757, 18.190367, 20.577112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138703, 0.144885, -0.979678,
		0.966651, 0.234854, -0.102126,
		0.215285, -0.961172, -0.172629,
		12.227343, 17.902016, 20.525324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.430660, 19.008505, 20.152462>,  <12.076643, 18.574835, 20.646164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.430660, 19.008505, 20.152462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.525490, 19.393671, 20.100937>,  <12.582388, 19.624771, 20.070023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.525490, 19.393671, 20.100937>,  <12.430660, 19.008505, 20.152462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.525490, 19.393671, 20.100937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226326, 0.074201, 0.971222,
		0.944761, -0.259406, -0.200341,
		0.237075, 0.962914, -0.128813,
		12.596612, 19.682545, 20.062294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.997294, 19.096556, 20.585154>,  <12.430660, 19.008505, 20.152462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.997294, 19.096556, 20.585154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.881761, 19.473698, 20.518698>,  <12.812440, 19.699982, 20.478825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.881761, 19.473698, 20.518698>,  <12.997294, 19.096556, 20.585154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881761, 19.473698, 20.518698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296739, 0.253155, 0.920792,
		0.910231, 0.216657, -0.352901,
		-0.288835, 0.942853, -0.166139,
		12.795110, 19.756554, 20.468857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.540411, 19.623131, 20.923941>,  <12.997294, 19.096556, 20.585154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.540411, 19.623131, 20.923941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.197545, 19.826458, 20.890759>,  <12.991826, 19.948454, 20.870850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.197545, 19.826458, 20.890759>,  <13.540411, 19.623131, 20.923941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.197545, 19.826458, 20.890759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115798, 0.347145, 0.930635,
		0.501857, 0.788101, -0.356422,
		-0.857164, 0.508319, -0.082957,
		12.940395, 19.978954, 20.865871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.656575, 20.330235, 21.014107>,  <13.540411, 19.623131, 20.923941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.656575, 20.330235, 21.014107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.266891, 20.268295, 21.079752>,  <13.033080, 20.231131, 21.119139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.266891, 20.268295, 21.079752>,  <13.656575, 20.330235, 21.014107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266891, 20.268295, 21.079752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087933, 0.409282, 0.908161,
		-0.207797, 0.899172, -0.385111,
		-0.974211, -0.154849, 0.164115,
		12.974627, 20.221840, 21.128986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479705, 20.918404, 21.381754>,  <13.656575, 20.330235, 21.014107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479705, 20.918404, 21.381754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.205112, 20.642668, 21.474323>,  <13.040358, 20.477226, 21.529865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.205112, 20.642668, 21.474323>,  <13.479705, 20.918404, 21.381754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205112, 20.642668, 21.474323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027546, 0.293382, 0.955598,
		-0.726627, 0.662374, -0.182413,
		-0.686480, -0.689338, 0.231425,
		12.999168, 20.435865, 21.543751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.915050, 21.242426, 21.856852>,  <13.479705, 20.918404, 21.381754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.915050, 21.242426, 21.856852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.880345, 20.847277, 21.908352>,  <12.859523, 20.610188, 21.939253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.880345, 20.847277, 21.908352>,  <12.915050, 21.242426, 21.856852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.880345, 20.847277, 21.908352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161773, 0.141494, 0.976631,
		-0.983007, 0.063906, -0.172088,
		-0.086762, -0.987874, 0.128751,
		12.854317, 20.550915, 21.946978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.576468, 21.291290, 22.574562>,  <12.915050, 21.242426, 21.856852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.576468, 21.291290, 22.574562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.657068, 20.912325, 22.475121>,  <12.705429, 20.684946, 22.415457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.657068, 20.912325, 22.475121>,  <12.576468, 21.291290, 22.574562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.657068, 20.912325, 22.475121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022875, -0.249187, 0.968185,
		-0.979221, -0.200777, -0.028539,
		0.201501, -0.947414, -0.248602,
		12.717519, 20.628101, 22.400539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.122177, 20.927946, 22.990759>,  <12.576468, 21.291290, 22.574562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.122177, 20.927946, 22.990759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.408565, 20.665152, 22.896305>,  <12.580397, 20.507475, 22.839632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.408565, 20.665152, 22.896305>,  <12.122177, 20.927946, 22.990759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408565, 20.665152, 22.896305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100962, -0.432121, 0.896146,
		-0.690795, -0.617771, -0.375715,
		0.715967, -0.656986, -0.236135,
		12.623355, 20.468056, 22.825464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820132, 20.284351, 23.249460>,  <12.122177, 20.927946, 22.990759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820132, 20.284351, 23.249460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.218149, 20.277914, 23.210201>,  <12.456959, 20.274052, 23.186646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.218149, 20.277914, 23.210201>,  <11.820132, 20.284351, 23.249460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.218149, 20.277914, 23.210201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087833, -0.320834, 0.943054,
		-0.046665, -0.946999, -0.317830,
		0.995042, -0.016092, -0.098149,
		12.516662, 20.273087, 23.180756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.955732, 19.692646, 23.529091>,  <11.820132, 20.284351, 23.249460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.955732, 19.692646, 23.529091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.303374, 19.887835, 23.561443>,  <12.511959, 20.004948, 23.580854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.303374, 19.887835, 23.561443>,  <11.955732, 19.692646, 23.529091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303374, 19.887835, 23.561443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149504, -0.415030, 0.897440,
		0.471494, -0.767877, -0.433658,
		0.869104, 0.487971, 0.080884,
		12.564106, 20.034225, 23.585709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.467597, 19.182411, 23.817347>,  <11.955732, 19.692646, 23.529091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.467597, 19.182411, 23.817347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.612056, 19.551706, 23.869816>,  <12.698730, 19.773283, 23.901299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.612056, 19.551706, 23.869816>,  <12.467597, 19.182411, 23.817347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.612056, 19.551706, 23.869816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340017, -0.261358, 0.903372,
		0.868310, -0.281648, -0.408305,
		0.361146, 0.923237, 0.131175,
		12.720400, 19.828678, 23.909168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167392, 19.114403, 24.193567>,  <12.467597, 19.182411, 23.817347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.167392, 19.114403, 24.193567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.059324, 19.495178, 24.251282>,  <12.994484, 19.723644, 24.285910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.059324, 19.495178, 24.251282>,  <13.167392, 19.114403, 24.193567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.059324, 19.495178, 24.251282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299306, -0.059395, 0.952307,
		0.915109, 0.300469, -0.268875,
		-0.270169, 0.951941, 0.144285,
		12.978273, 19.780760, 24.294567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.768436, 19.582064, 24.508087>,  <13.167392, 19.114403, 24.193567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.768436, 19.582064, 24.508087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.405288, 19.727922, 24.590841>,  <13.187399, 19.815437, 24.640493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.405288, 19.727922, 24.590841>,  <13.768436, 19.582064, 24.508087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405288, 19.727922, 24.590841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237951, 0.041880, 0.970374,
		0.345179, 0.930204, -0.124789,
		-0.907871, 0.364647, 0.206887,
		13.132926, 19.837317, 24.652908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.824242, 20.210508, 24.886076>,  <13.768436, 19.582064, 24.508087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.824242, 20.210508, 24.886076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.481630, 20.016924, 24.957790>,  <13.276064, 19.900774, 25.000818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.481630, 20.016924, 24.957790>,  <13.824242, 20.210508, 24.886076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.481630, 20.016924, 24.957790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198318, 0.012082, 0.980063,
		-0.476478, 0.875007, 0.085630,
		-0.856527, -0.483960, 0.179286,
		13.224672, 19.871737, 25.011576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.597472, 20.528193, 25.373991>,  <13.824242, 20.210508, 24.886076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.597472, 20.528193, 25.373991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.380719, 20.192255, 25.386791>,  <13.250668, 19.990692, 25.394470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.380719, 20.192255, 25.386791>,  <13.597472, 20.528193, 25.373991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380719, 20.192255, 25.386791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150381, -0.059429, 0.986840,
		-0.826892, 0.539562, 0.158500,
		-0.541881, -0.839846, 0.031998,
		13.218155, 19.940302, 25.396391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.172993, 20.594376, 25.905611>,  <13.597472, 20.528193, 25.373991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.172993, 20.594376, 25.905611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.224263, 20.201500, 25.850658>,  <13.255025, 19.965775, 25.817686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.224263, 20.201500, 25.850658>,  <13.172993, 20.594376, 25.905611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.224263, 20.201500, 25.850658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015435, -0.136532, 0.990515,
		-0.991631, -0.129080, -0.002339,
		0.128175, -0.982190, -0.137382,
		13.262715, 19.906843, 25.809444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.797042, 20.365330, 26.438194>,  <13.172993, 20.594376, 25.905611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.797042, 20.365330, 26.438194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014918, 20.047308, 26.331463>,  <13.145644, 19.856495, 26.267424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.014918, 20.047308, 26.331463>,  <12.797042, 20.365330, 26.438194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014918, 20.047308, 26.331463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246553, -0.152295, 0.957088,
		-0.801576, -0.587104, 0.113071,
		0.544690, -0.795056, -0.266828,
		13.178326, 19.808790, 26.251415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.615080, 19.963936, 26.991198>,  <12.797042, 20.365330, 26.438194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.615080, 19.963936, 26.991198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.938422, 19.797005, 26.825115>,  <13.132428, 19.696846, 26.725466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.938422, 19.797005, 26.825115>,  <12.615080, 19.963936, 26.991198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.938422, 19.797005, 26.825115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324744, -0.272169, 0.905795,
		-0.491021, -0.867041, -0.084485,
		0.808356, -0.417328, -0.415207,
		13.180929, 19.671806, 26.700554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.688494, 19.265200, 27.180248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.054381, 19.383163, 27.069748>,  <13.273914, 19.453941, 27.003447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.054381, 19.383163, 27.069748>,  <12.688494, 19.265200, 27.180248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054381, 19.383163, 27.069748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363328, -0.301018, 0.881693,
		0.176863, -0.906872, -0.382496,
		0.914720, 0.294910, -0.276253,
		13.328797, 19.471636, 26.986872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.112261, 18.745060, 27.440142>,  <12.688494, 19.265200, 27.180248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.112261, 18.745060, 27.440142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.346092, 19.064030, 27.380295>,  <13.486391, 19.255411, 27.344387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.346092, 19.064030, 27.380295>,  <13.112261, 18.745060, 27.440142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346092, 19.064030, 27.380295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325055, -0.061227, 0.943711,
		0.743375, -0.600307, -0.294998,
		0.584579, 0.797422, -0.149618,
		13.521466, 19.303257, 27.335409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.684690, 18.575823, 27.759502>,  <13.112261, 18.745060, 27.440142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.684690, 18.575823, 27.759502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.752982, 18.967743, 27.717852>,  <13.793957, 19.202894, 27.692862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.752982, 18.967743, 27.717852>,  <13.684690, 18.575823, 27.759502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.752982, 18.967743, 27.717852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436235, 0.019594, 0.899619,
		0.883488, -0.199015, -0.424078,
		0.170729, 0.979800, -0.104129,
		13.804201, 19.261683, 27.686613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.311169, 18.781513, 28.038853>,  <13.684690, 18.575823, 27.759502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.311169, 18.781513, 28.038853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.187164, 19.159639, 27.998306>,  <14.112761, 19.386515, 27.973978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.187164, 19.159639, 27.998306>,  <14.311169, 18.781513, 28.038853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187164, 19.159639, 27.998306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420848, 0.232049, 0.876950,
		0.852514, 0.229204, -0.469771,
		-0.310010, 0.945314, -0.101365,
		14.094161, 19.443233, 27.967897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820170, 19.205694, 28.237438>,  <14.311169, 18.781513, 28.038853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.820170, 19.205694, 28.237438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.496727, 19.433784, 28.295399>,  <14.302661, 19.570639, 28.330175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.496727, 19.433784, 28.295399>,  <14.820170, 19.205694, 28.237438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496727, 19.433784, 28.295399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384327, 0.325459, 0.863926,
		0.445472, 0.754268, -0.482322,
		-0.808608, 0.570224, 0.144903,
		14.254145, 19.604853, 28.338869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064041, 19.779543, 28.711895>,  <14.820170, 19.205694, 28.237438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064041, 19.779543, 28.711895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.666007, 19.765974, 28.749105>,  <14.427186, 19.757833, 28.771431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.666007, 19.765974, 28.749105>,  <15.064041, 19.779543, 28.711895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666007, 19.765974, 28.749105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077127, 0.323642, 0.943031,
		-0.062095, 0.945571, -0.319436,
		-0.995086, -0.033920, 0.093026,
		14.367481, 19.755798, 28.777014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925939, 20.431786, 28.929974>,  <15.064041, 19.779543, 28.711895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925939, 20.431786, 28.929974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.605837, 20.221579, 29.045506>,  <14.413775, 20.095455, 29.114824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.605837, 20.221579, 29.045506>,  <14.925939, 20.431786, 28.929974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.605837, 20.221579, 29.045506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167933, 0.265986, 0.949236,
		-0.575665, 0.808136, -0.124605,
		-0.800255, -0.525517, 0.288832,
		14.365761, 20.063923, 29.132154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490232, 20.899826, 29.338362>,  <14.925939, 20.431786, 28.929974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490232, 20.899826, 29.338362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.375896, 20.526833, 29.426699>,  <14.307294, 20.303036, 29.479700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.375896, 20.526833, 29.426699>,  <14.490232, 20.899826, 29.338362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375896, 20.526833, 29.426699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106155, 0.198227, 0.974391,
		-0.952380, 0.301962, 0.042326,
		-0.285839, -0.932483, 0.220842,
		14.290144, 20.247087, 29.492950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970768, 20.851471, 29.884506>,  <14.490232, 20.899826, 29.338362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970768, 20.851471, 29.884506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.140147, 20.489731, 29.905846>,  <14.241775, 20.272688, 29.918650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.140147, 20.489731, 29.905846>,  <13.970768, 20.851471, 29.884506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.140147, 20.489731, 29.905846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038097, 0.076613, 0.996333,
		-0.905119, -0.419862, 0.066894,
		0.423447, -0.904349, 0.053348,
		14.267181, 20.218426, 29.921850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.680392, 20.596014, 30.575741>,  <13.970768, 20.851471, 29.884506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.680392, 20.596014, 30.575741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.983659, 20.361267, 30.462059>,  <14.165619, 20.220419, 30.393850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.983659, 20.361267, 30.462059>,  <13.680392, 20.596014, 30.575741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.983659, 20.361267, 30.462059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387616, 0.055146, 0.920170,
		-0.524344, -0.807804, 0.269288,
		0.758167, -0.586866, -0.284202,
		14.211109, 20.185207, 30.376799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716663, 19.909100, 30.931211>,  <13.680392, 20.596014, 30.575741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716663, 19.909100, 30.931211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.087925, 19.986006, 30.803734>,  <14.310681, 20.032148, 30.727247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.087925, 19.986006, 30.803734>,  <13.716663, 19.909100, 30.931211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087925, 19.986006, 30.803734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344523, -0.119788, 0.931104,
		0.140842, -0.974005, -0.177421,
		0.928153, 0.192264, -0.318695,
		14.366371, 20.043684, 30.708126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101723, 19.438524, 31.255606>,  <13.716663, 19.909100, 30.931211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101723, 19.438524, 31.255606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.346292, 19.746542, 31.182732>,  <14.493034, 19.931353, 31.139008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.346292, 19.746542, 31.182732>,  <14.101723, 19.438524, 31.255606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.346292, 19.746542, 31.182732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291382, -0.005042, 0.956594,
		0.735703, -0.637968, -0.227460,
		0.611423, 0.770046, -0.182183,
		14.529719, 19.977556, 31.128077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527373, 19.300953, 31.791302>,  <14.101723, 19.438524, 31.255606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527373, 19.300953, 31.791302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.623423, 19.664162, 31.653994>,  <14.681052, 19.882088, 31.571609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.623423, 19.664162, 31.653994>,  <14.527373, 19.300953, 31.791302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.623423, 19.664162, 31.653994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396651, 0.230971, 0.888437,
		0.886007, -0.349492, -0.304707,
		0.240123, 0.908024, -0.343269,
		14.695459, 19.936569, 31.551012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156562, 19.427561, 32.129883>,  <14.527373, 19.300953, 31.791302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156562, 19.427561, 32.129883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.053539, 19.793161, 32.004490>,  <14.991726, 20.012522, 31.929255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.053539, 19.793161, 32.004490>,  <15.156562, 19.427561, 32.129883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053539, 19.793161, 32.004490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545878, 0.405328, 0.733298,
		0.797296, 0.017744, -0.603328,
		-0.257557, 0.913999, -0.313480,
		14.976273, 20.067362, 31.910446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808979, 19.817602, 32.008163>,  <15.156562, 19.427561, 32.129883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808979, 19.817602, 32.008163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.495712, 20.034500, 32.129898>,  <15.307753, 20.164639, 32.202938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.495712, 20.034500, 32.129898>,  <15.808979, 19.817602, 32.008163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495712, 20.034500, 32.129898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590968, 0.496844, 0.635533,
		0.193410, 0.677580, -0.709562,
		-0.783166, 0.542247, 0.304334,
		15.260762, 20.197174, 32.221199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995688, 20.557520, 31.941814>,  <15.808979, 19.817602, 32.008163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.995688, 20.557520, 31.941814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.686397, 20.555468, 32.195457>,  <15.500822, 20.554235, 32.347645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.686397, 20.555468, 32.195457>,  <15.995688, 20.557520, 31.941814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686397, 20.555468, 32.195457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523036, 0.560226, 0.642324,
		-0.358539, 0.828324, -0.430499,
		-0.773229, -0.005132, 0.634106,
		15.454428, 20.553928, 32.385689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067480, 21.126143, 32.322151>,  <15.995688, 20.557520, 31.941814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.067480, 21.126143, 32.322151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.765251, 20.987465, 32.544472>,  <15.583914, 20.904259, 32.677864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.765251, 20.987465, 32.544472>,  <16.067480, 21.126143, 32.322151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765251, 20.987465, 32.544472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253752, 0.627319, 0.736261,
		-0.603920, 0.697334, -0.386012,
		-0.755573, -0.346692, 0.555800,
		15.538579, 20.883457, 32.711212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.856835, 21.719681, 32.730171>,  <16.067480, 21.126143, 32.322151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.856835, 21.719681, 32.730171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.691184, 21.418011, 32.934021>,  <15.591793, 21.237009, 33.056332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.691184, 21.418011, 32.934021>,  <15.856835, 21.719681, 32.730171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.691184, 21.418011, 32.934021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425460, 0.334570, 0.840861,
		-0.804662, 0.565048, 0.182317,
		-0.414129, -0.754177, 0.509621,
		15.566945, 21.191757, 33.086906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.272801, 21.895935, 33.255402>,  <15.856835, 21.719681, 32.730171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.272801, 21.895935, 33.255402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.449094, 21.557217, 33.374527>,  <15.554870, 21.353985, 33.446003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.449094, 21.557217, 33.374527>,  <15.272801, 21.895935, 33.255402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.449094, 21.557217, 33.374527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114102, 0.381932, 0.917120,
		-0.890358, -0.370222, 0.264950,
		0.440731, -0.846796, 0.297813,
		15.581313, 21.303177, 33.463871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876165, 21.707603, 33.843723>,  <15.272801, 21.895935, 33.255402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876165, 21.707603, 33.843723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.235953, 21.533117, 33.833382>,  <15.451826, 21.428425, 33.827179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.235953, 21.533117, 33.833382>,  <14.876165, 21.707603, 33.843723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235953, 21.533117, 33.833382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218019, 0.396711, 0.891677,
		-0.378709, -0.807673, 0.451933,
		0.899470, -0.436216, -0.025851,
		15.505795, 21.402252, 33.825626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.963271, 21.563269, 34.578384>,  <14.876165, 21.707603, 33.843723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.963271, 21.563269, 34.578384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.330940, 21.543962, 34.422031>,  <15.551542, 21.532379, 34.328220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.330940, 21.543962, 34.422031>,  <14.963271, 21.563269, 34.578384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330940, 21.543962, 34.422031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372031, 0.432175, 0.821473,
		0.129280, -0.900497, 0.415201,
		0.919173, -0.048268, -0.390884,
		15.606692, 21.529482, 34.304768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378619, 21.181259, 35.042866>,  <14.963271, 21.563269, 34.578384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378619, 21.181259, 35.042866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.621675, 21.406071, 34.818401>,  <15.767509, 21.540956, 34.683723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.621675, 21.406071, 34.818401>,  <15.378619, 21.181259, 35.042866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.621675, 21.406071, 34.818401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518631, 0.254316, 0.816299,
		0.601494, -0.787051, -0.136952,
		0.607640, 0.562027, -0.561159,
		15.803967, 21.574678, 34.650055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.147818, 20.902071, 35.110256>,  <15.378619, 21.181259, 35.042866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.147818, 20.902071, 35.110256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.087526, 21.291349, 35.040779>,  <16.051352, 21.524916, 34.999092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.087526, 21.291349, 35.040779>,  <16.147818, 20.902071, 35.110256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087526, 21.291349, 35.040779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655065, 0.229916, 0.719742,
		0.740386, -0.005297, -0.672162,
		-0.150728, 0.973196, -0.173697,
		16.042309, 21.583309, 34.988670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.049349, 20.273390, 35.548229>,  <16.147818, 20.902071, 35.110256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.049349, 20.273390, 35.548229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.806287, 20.453699, 35.809780>,  <15.660450, 20.561886, 35.966713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.806287, 20.453699, 35.809780>,  <16.049349, 20.273390, 35.548229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806287, 20.453699, 35.809780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787386, 0.449565, 0.421799,
		-0.103825, 0.771164, -0.628114,
		-0.607654, 0.450775, 0.653880,
		15.623991, 20.588932, 36.005943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912850, 19.654556, 35.165966>,  <16.049349, 20.273390, 35.548229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912850, 19.654556, 35.165966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.081295, 19.338779, 35.344604>,  <16.182362, 19.149313, 35.451786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.081295, 19.338779, 35.344604>,  <15.912850, 19.654556, 35.165966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081295, 19.338779, 35.344604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382027, -0.292193, -0.876743,
		0.822630, 0.539818, 0.178542,
		0.421113, -0.789443, 0.446592,
		16.207628, 19.101946, 35.478580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581720, 19.549355, 35.064320>,  <15.912850, 19.654556, 35.165966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581720, 19.549355, 35.064320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.467857, 19.174292, 35.144085>,  <16.399540, 18.949253, 35.191944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.467857, 19.174292, 35.144085>,  <16.581720, 19.549355, 35.064320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467857, 19.174292, 35.144085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341427, -0.293544, -0.892894,
		0.895767, -0.186082, 0.403701,
		-0.284656, -0.937659, 0.199414,
		16.382460, 18.892994, 35.203911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074167, 19.239103, 34.698051>,  <16.581720, 19.549355, 35.064320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074167, 19.239103, 34.698051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.800137, 18.957743, 34.773838>,  <16.635717, 18.788927, 34.819309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.800137, 18.957743, 34.773838>,  <17.074167, 19.239103, 34.698051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.800137, 18.957743, 34.773838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226865, -0.453166, -0.862075,
		0.692244, -0.547604, 0.470031,
		-0.685077, -0.703400, 0.189469,
		16.594614, 18.746723, 34.830677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392248, 18.679237, 34.399681>,  <17.074167, 19.239103, 34.698051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392248, 18.679237, 34.399681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.001345, 18.602123, 34.435005>,  <16.766802, 18.555855, 34.456200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.001345, 18.602123, 34.435005>,  <17.392248, 18.679237, 34.399681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001345, 18.602123, 34.435005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002017, -0.407995, -0.912982,
		0.212042, -0.892398, 0.398327,
		-0.977258, -0.192787, 0.088312,
		16.708168, 18.544287, 34.461498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298836, 17.946560, 34.185802>,  <17.392248, 18.679237, 34.399681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298836, 17.946560, 34.185802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.933661, 18.106821, 34.154758>,  <16.714556, 18.202978, 34.136131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.933661, 18.106821, 34.154758>,  <17.298836, 17.946560, 34.185802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933661, 18.106821, 34.154758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121570, -0.448525, -0.885464,
		-0.389569, -0.798940, 0.458183,
		-0.912939, 0.400651, -0.077604,
		16.659779, 18.227016, 34.131477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903641, 17.367683, 33.859417>,  <17.298836, 17.946560, 34.185802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.903641, 17.367683, 33.859417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.667311, 17.687393, 33.815437>,  <16.525513, 17.879219, 33.789051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.667311, 17.687393, 33.815437>,  <16.903641, 17.367683, 33.859417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667311, 17.687393, 33.815437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275450, -0.327919, -0.903658,
		-0.758322, -0.503619, 0.413902,
		-0.590826, 0.799273, -0.109946,
		16.490063, 17.927176, 33.782452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202217, 17.182272, 33.756638>,  <16.903641, 17.367683, 33.859417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202217, 17.182272, 33.756638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.273138, 17.535101, 33.582047>,  <16.315691, 17.746798, 33.477291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.273138, 17.535101, 33.582047>,  <16.202217, 17.182272, 33.756638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.273138, 17.535101, 33.582047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400278, -0.340532, -0.850774,
		-0.899078, 0.325554, 0.292698,
		0.177300, 0.882073, -0.436477,
		16.326328, 17.799723, 33.451103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625462, 17.229986, 33.401199>,  <16.202217, 17.182272, 33.756638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625462, 17.229986, 33.401199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.852298, 17.520569, 33.245937>,  <15.988400, 17.694918, 33.152779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.852298, 17.520569, 33.245937>,  <15.625462, 17.229986, 33.401199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852298, 17.520569, 33.245937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431039, -0.139828, -0.891433,
		-0.701863, 0.672836, 0.233836,
		0.567091, 0.726457, -0.388159,
		16.022425, 17.738506, 33.129490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231359, 17.729414, 32.949814>,  <15.625462, 17.229986, 33.401199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231359, 17.729414, 32.949814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.607121, 17.787901, 32.825783>,  <15.832577, 17.822992, 32.751366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.607121, 17.787901, 32.825783>,  <15.231359, 17.729414, 32.949814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607121, 17.787901, 32.825783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308407, -0.034515, -0.950628,
		-0.149701, 0.988650, 0.012671,
		0.939401, 0.146217, -0.310073,
		15.888941, 17.831766, 32.732761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099370, 18.189198, 32.443932>,  <15.231359, 17.729414, 32.949814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099370, 18.189198, 32.443932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.457300, 18.028479, 32.366112>,  <15.672058, 17.932047, 32.319420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.457300, 18.028479, 32.366112>,  <15.099370, 18.189198, 32.443932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457300, 18.028479, 32.366112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247686, -0.084287, -0.965167,
		0.371403, 0.911842, -0.174942,
		0.894825, -0.401796, -0.194546,
		15.725748, 17.907940, 32.307747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144341, 18.615503, 31.852243>,  <15.099370, 18.189198, 32.443932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.144341, 18.615503, 31.852243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.399734, 18.307951, 31.838634>,  <15.552971, 18.123419, 31.830469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.399734, 18.307951, 31.838634>,  <15.144341, 18.615503, 31.852243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.399734, 18.307951, 31.838634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196598, -0.120195, -0.973089,
		0.744102, 0.627991, -0.227903,
		0.638484, -0.768882, -0.034024,
		15.591280, 18.077286, 31.828426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530425, 18.769976, 31.230671>,  <15.144341, 18.615503, 31.852243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530425, 18.769976, 31.230671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.566261, 18.377274, 31.297754>,  <15.587763, 18.141651, 31.338003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.566261, 18.377274, 31.297754>,  <15.530425, 18.769976, 31.230671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.566261, 18.377274, 31.297754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278901, -0.186378, -0.942060,
		0.956132, 0.037627, -0.290511,
		0.089592, -0.981757, 0.167707,
		15.593139, 18.082747, 31.348066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.856875, 18.425934, 30.624435>,  <15.530425, 18.769976, 31.230671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.856875, 18.425934, 30.624435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.684558, 18.121447, 30.818329>,  <15.581167, 17.938755, 30.934664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.684558, 18.121447, 30.818329>,  <15.856875, 18.425934, 30.624435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.684558, 18.121447, 30.818329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344449, -0.357772, -0.867960,
		0.834129, -0.540877, -0.108074,
		-0.430794, -0.761217, 0.484732,
		15.555320, 17.893082, 30.963749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086710, 17.755421, 30.249964>,  <15.856875, 18.425934, 30.624435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086710, 17.755421, 30.249964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.737181, 17.694387, 30.434639>,  <15.527464, 17.657768, 30.545444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.737181, 17.694387, 30.434639>,  <16.086710, 17.755421, 30.249964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737181, 17.694387, 30.434639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357974, -0.440715, -0.823179,
		0.329077, -0.884584, 0.330485,
		-0.873821, -0.152584, 0.461687,
		15.475035, 17.648613, 30.573145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883731, 17.056173, 30.197554>,  <16.086710, 17.755421, 30.249964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883731, 17.056173, 30.197554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.552917, 17.270397, 30.265894>,  <15.354429, 17.398932, 30.306898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.552917, 17.270397, 30.265894>,  <15.883731, 17.056173, 30.197554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552917, 17.270397, 30.265894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451819, -0.452436, -0.768870,
		-0.334476, -0.713076, 0.616156,
		-0.827034, 0.535560, 0.170852,
		15.304808, 17.431065, 30.317150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334682, 16.632504, 30.131056>,  <15.883731, 17.056173, 30.197554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334682, 16.632504, 30.131056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.140674, 16.980858, 30.099276>,  <15.024269, 17.189871, 30.080208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.140674, 16.980858, 30.099276>,  <15.334682, 16.632504, 30.131056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.140674, 16.980858, 30.099276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578129, -0.387486, -0.718068,
		-0.656142, -0.302343, 0.691423,
		-0.485019, 0.870887, -0.079452,
		14.995168, 17.242125, 30.075439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663004, 16.460943, 30.230917>,  <15.334682, 16.632504, 30.131056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.663004, 16.460943, 30.230917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.673882, 16.814552, 30.044256>,  <14.680409, 17.026718, 29.932259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.673882, 16.814552, 30.044256>,  <14.663004, 16.460943, 30.230917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.673882, 16.814552, 30.044256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504812, -0.390781, -0.769711,
		-0.862801, 0.256507, 0.435636,
		0.027197, 0.884022, -0.466654,
		14.682041, 17.079760, 29.904261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049205, 16.479870, 29.842245>,  <14.663004, 16.460943, 30.230917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049205, 16.479870, 29.842245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.249651, 16.781124, 29.671755>,  <14.369919, 16.961878, 29.569460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.249651, 16.781124, 29.671755>,  <14.049205, 16.479870, 29.842245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.249651, 16.781124, 29.671755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427916, -0.212446, -0.878496,
		-0.752178, 0.622616, 0.215819,
		0.501116, 0.753137, -0.426225,
		14.399985, 17.007065, 29.543888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.538877, 16.800781, 29.508223>,  <14.049205, 16.479870, 29.842245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.538877, 16.800781, 29.508223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.860840, 16.943291, 29.318405>,  <14.054017, 17.028797, 29.204514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.860840, 16.943291, 29.318405>,  <13.538877, 16.800781, 29.508223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.860840, 16.943291, 29.318405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403984, -0.256762, -0.877992,
		-0.434652, 0.898411, -0.062740,
		0.804907, 0.356275, -0.474546,
		14.102312, 17.050173, 29.176041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.236767, 17.232719, 29.053450>,  <13.538877, 16.800781, 29.508223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.236767, 17.232719, 29.053450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.607508, 17.198158, 28.907310>,  <13.829952, 17.177422, 28.819628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.607508, 17.198158, 28.907310>,  <13.236767, 17.232719, 29.053450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607508, 17.198158, 28.907310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373469, -0.311401, -0.873814,
		-0.038267, 0.946342, -0.320893,
		0.926853, -0.086405, -0.365346,
		13.885564, 17.172237, 28.797707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<13.907722, 18.100000, 5.976905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.540341, 18.257719, 5.964426>,  <13.319913, 18.352350, 5.956938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.540341, 18.257719, 5.964426>,  <13.907722, 18.100000, 5.976905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.540341, 18.257719, 5.964426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105158, 0.319462, 0.941746,
		0.381295, 0.861669, -0.334874,
		-0.918453, 0.394297, -0.031198,
		13.264806, 18.376009, 5.955067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999709, 18.776909, 6.113687>,  <13.907722, 18.100000, 5.976905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999709, 18.776909, 6.113687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.662734, 18.604059, 6.242414>,  <13.460548, 18.500349, 6.319651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.662734, 18.604059, 6.242414>,  <13.999709, 18.776909, 6.113687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662734, 18.604059, 6.242414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209257, 0.287996, 0.934489,
		-0.496497, 0.854592, -0.152194,
		-0.842438, -0.432123, 0.321819,
		13.410003, 18.474422, 6.338960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042312, 19.517616, 6.300384>,  <13.999709, 18.776909, 6.113687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042312, 19.517616, 6.300384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.216876, 19.824921, 6.113057>,  <14.321614, 20.009304, 6.000661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.216876, 19.824921, 6.113057>,  <14.042312, 19.517616, 6.300384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.216876, 19.824921, 6.113057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836895, -0.537728, -0.102252,
		-0.330383, -0.347308, -0.877624,
		0.436410, 0.768262, -0.468316,
		14.347799, 20.055399, 5.972562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.427900, 19.747095, 6.942742>,  <14.042312, 19.517616, 6.300384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.427900, 19.747095, 6.942742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.706794, 19.461967, 6.912408>,  <14.874130, 19.290890, 6.894207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.706794, 19.461967, 6.912408>,  <14.427900, 19.747095, 6.942742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706794, 19.461967, 6.912408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455159, -0.358493, -0.815054,
		0.553801, 0.602801, -0.574400,
		0.697234, -0.712821, -0.075837,
		14.915964, 19.248121, 6.889657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.834482, 19.118065, 6.910657>,  <14.427900, 19.747095, 6.942742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.834482, 19.118065, 6.910657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.561139, 18.853399, 6.787225>,  <13.397133, 18.694599, 6.713166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.561139, 18.853399, 6.787225>,  <13.834482, 19.118065, 6.910657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561139, 18.853399, 6.787225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278652, -0.154292, 0.947917,
		-0.674814, 0.733754, -0.078938,
		-0.683359, -0.661664, -0.308580,
		13.356132, 18.654900, 6.694651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.089189, 19.352310, 7.147460>,  <13.834482, 19.118065, 6.910657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.089189, 19.352310, 7.147460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.171220, 18.962576, 7.110331>,  <13.220439, 18.728735, 7.088053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.171220, 18.962576, 7.110331>,  <13.089189, 19.352310, 7.147460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.171220, 18.962576, 7.110331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051373, -0.105425, 0.993100,
		-0.977396, -0.198895, -0.071675,
		0.205079, -0.974334, -0.092824,
		13.232743, 18.670277, 7.082483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.555360, 18.829428, 7.528874>,  <13.089189, 19.352310, 7.147460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.555360, 18.829428, 7.528874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.906040, 18.641762, 7.486397>,  <13.116448, 18.529161, 7.460911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.906040, 18.641762, 7.486397>,  <12.555360, 18.829428, 7.528874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.906040, 18.641762, 7.486397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019522, -0.255280, 0.966670,
		-0.480639, -0.845408, -0.232963,
		0.876701, -0.469167, -0.106193,
		13.169050, 18.501011, 7.454539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.557274, 18.090492, 7.792006>,  <12.555360, 18.829428, 7.528874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.557274, 18.090492, 7.792006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.941251, 18.201761, 7.805452>,  <13.171637, 18.268522, 7.813520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.941251, 18.201761, 7.805452>,  <12.557274, 18.090492, 7.792006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941251, 18.201761, 7.805452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077041, -0.377381, 0.922848,
		0.269397, -0.883291, -0.383695,
		0.959943, 0.278173, 0.033616,
		13.229234, 18.285213, 7.815537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.803111, 17.634804, 8.215540>,  <12.557274, 18.090492, 7.792006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.803111, 17.634804, 8.215540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.097240, 17.905691, 8.225896>,  <13.273718, 18.068224, 8.232110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.097240, 17.905691, 8.225896>,  <12.803111, 17.634804, 8.215540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.097240, 17.905691, 8.225896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136056, -0.184939, 0.973286,
		0.663918, -0.712158, -0.228130,
		0.735324, 0.677221, 0.025891,
		13.317838, 18.108858, 8.233663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.393595, 17.299164, 8.424939>,  <12.803111, 17.634804, 8.215540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.393595, 17.299164, 8.424939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.445029, 17.685688, 8.514118>,  <13.475890, 17.917603, 8.567626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.445029, 17.685688, 8.514118>,  <13.393595, 17.299164, 8.424939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.445029, 17.685688, 8.514118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325633, -0.253490, 0.910882,
		0.936712, -0.044528, -0.347259,
		0.128586, 0.966313, 0.222947,
		13.483605, 17.975582, 8.581002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.037494, 17.344879, 8.826332>,  <13.393595, 17.299164, 8.424939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.037494, 17.344879, 8.826332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.819506, 17.670540, 8.906492>,  <13.688713, 17.865936, 8.954589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.819506, 17.670540, 8.906492>,  <14.037494, 17.344879, 8.826332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819506, 17.670540, 8.906492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269371, -0.056333, 0.961388,
		0.794006, 0.577910, -0.188609,
		-0.544971, 0.814154, 0.200401,
		13.656014, 17.914785, 8.966613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432684, 17.741016, 9.112578>,  <14.037494, 17.344879, 8.826332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432684, 17.741016, 9.112578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.078115, 17.878195, 9.236929>,  <13.865375, 17.960503, 9.311539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.078115, 17.878195, 9.236929>,  <14.432684, 17.741016, 9.112578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078115, 17.878195, 9.236929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353088, 0.066697, 0.933210,
		0.299307, 0.936984, -0.180212,
		-0.886422, 0.342947, 0.310875,
		13.812189, 17.981079, 9.330192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554886, 18.327358, 9.510020>,  <14.432684, 17.741016, 9.112578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554886, 18.327358, 9.510020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.179889, 18.263815, 9.633874>,  <13.954890, 18.225689, 9.708186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.179889, 18.263815, 9.633874>,  <14.554886, 18.327358, 9.510020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.179889, 18.263815, 9.633874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271481, 0.222824, 0.936295,
		-0.217731, 0.961829, -0.165769,
		-0.937492, -0.158857, 0.309633,
		13.898641, 18.216158, 9.726764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325381, 18.968311, 9.891088>,  <14.554886, 18.327358, 9.510020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325381, 18.968311, 9.891088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.100888, 18.663877, 10.021176>,  <13.966192, 18.481216, 10.099229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.100888, 18.663877, 10.021176>,  <14.325381, 18.968311, 9.891088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100888, 18.663877, 10.021176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236143, 0.229360, 0.944262,
		-0.793255, 0.606750, 0.051000,
		-0.561233, -0.761084, 0.325221,
		13.932518, 18.435553, 10.118743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787346, 19.258455, 10.341403>,  <14.325381, 18.968311, 9.891088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787346, 19.258455, 10.341403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.833617, 18.877890, 10.455547>,  <13.861381, 18.649551, 10.524035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.833617, 18.877890, 10.455547>,  <13.787346, 19.258455, 10.341403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833617, 18.877890, 10.455547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023859, 0.289869, 0.956769,
		-0.993000, -0.103870, 0.056231,
		0.115679, -0.951413, 0.285362,
		13.868321, 18.592466, 10.541156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.411193, 19.184174, 10.973757>,  <13.787346, 19.258455, 10.341403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.411193, 19.184174, 10.973757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.645605, 18.860748, 10.994913>,  <13.786252, 18.666693, 11.007607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.645605, 18.860748, 10.994913>,  <13.411193, 19.184174, 10.973757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645605, 18.860748, 10.994913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180825, 0.194128, 0.964166,
		-0.789855, -0.555466, 0.259973,
		0.586030, -0.808561, 0.052890,
		13.821414, 18.618179, 11.010780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.159012, 18.729956, 11.537892>,  <13.411193, 19.184174, 10.973757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.159012, 18.729956, 11.537892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.547942, 18.647591, 11.493744>,  <13.781301, 18.598171, 11.467255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.547942, 18.647591, 11.493744>,  <13.159012, 18.729956, 11.537892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.547942, 18.647591, 11.493744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158532, 0.234503, 0.959102,
		-0.171610, -0.950057, 0.260658,
		0.972326, -0.205914, -0.110371,
		13.839640, 18.585817, 11.460632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.306603, 18.318398, 12.027377>,  <13.159012, 18.729956, 11.537892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.306603, 18.318398, 12.027377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.673226, 18.439322, 11.922661>,  <13.893200, 18.511875, 11.859831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.673226, 18.439322, 11.922661>,  <13.306603, 18.318398, 12.027377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.673226, 18.439322, 11.922661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275213, -0.001880, 0.961381,
		0.290142, -0.953208, -0.084923,
		0.916556, 0.302309, -0.261790,
		13.948194, 18.530014, 11.844124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.755918, 17.887285, 12.324056>,  <13.306603, 18.318398, 12.027377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.755918, 17.887285, 12.324056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.977437, 18.215765, 12.269005>,  <14.110349, 18.412853, 12.235974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.977437, 18.215765, 12.269005>,  <13.755918, 17.887285, 12.324056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977437, 18.215765, 12.269005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430007, -0.140526, 0.891822,
		0.713022, -0.553070, -0.430944,
		0.553799, 0.821198, -0.137626,
		14.143577, 18.462124, 12.227717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.428968, 17.775560, 12.597240>,  <13.755918, 17.887285, 12.324056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.428968, 17.775560, 12.597240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.455088, 18.173403, 12.564996>,  <14.470759, 18.412107, 12.545649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.455088, 18.173403, 12.564996>,  <14.428968, 17.775560, 12.597240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455088, 18.173403, 12.564996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534191, 0.033392, 0.844705,
		0.842839, -0.098219, -0.529128,
		0.065298, 0.994604, -0.080612,
		14.474677, 18.471785, 12.540812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.088934, 17.916973, 12.442951>,  <14.428968, 17.775560, 12.597240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.088934, 17.916973, 12.442951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.930985, 18.248686, 12.601127>,  <14.836216, 18.447714, 12.696032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.930985, 18.248686, 12.601127>,  <15.088934, 17.916973, 12.442951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.930985, 18.248686, 12.601127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668396, -0.035999, 0.742934,
		0.630336, 0.557672, -0.540072,
		-0.394871, 0.829280, 0.395438,
		14.812524, 18.497471, 12.719758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698631, 18.368048, 12.829811>,  <15.088934, 17.916973, 12.442951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698631, 18.368048, 12.829811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.367194, 18.527315, 12.987239>,  <15.168332, 18.622875, 13.081696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.367194, 18.527315, 12.987239>,  <15.698631, 18.368048, 12.829811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367194, 18.527315, 12.987239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478182, 0.137728, 0.867394,
		0.291164, 0.906914, -0.304517,
		-0.828592, 0.398169, 0.393569,
		15.118616, 18.646765, 13.105309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928828, 19.061605, 13.044339>,  <15.698631, 18.368048, 12.829811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.928828, 19.061605, 13.044339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.611691, 18.915966, 13.239822>,  <15.421410, 18.828583, 13.357112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.611691, 18.915966, 13.239822>,  <15.928828, 19.061605, 13.044339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611691, 18.915966, 13.239822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458700, 0.171451, 0.871894,
		-0.401243, 0.915444, 0.031077,
		-0.792842, -0.364096, 0.488707,
		15.373838, 18.806738, 13.386435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815976, 19.501144, 13.606788>,  <15.928828, 19.061605, 13.044339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.815976, 19.501144, 13.606788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.623660, 19.161030, 13.692440>,  <15.508270, 18.956961, 13.743832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.623660, 19.161030, 13.692440>,  <15.815976, 19.501144, 13.606788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623660, 19.161030, 13.692440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542264, -0.096427, 0.834657,
		-0.689050, 0.517410, 0.507441,
		-0.480791, -0.850287, 0.214130,
		15.479423, 18.905943, 13.756679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639363, 19.522694, 14.338824>,  <15.815976, 19.501144, 13.606788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639363, 19.522694, 14.338824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.569343, 19.133471, 14.278805>,  <15.527330, 18.899937, 14.242793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.569343, 19.133471, 14.278805>,  <15.639363, 19.522694, 14.338824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569343, 19.133471, 14.278805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478143, -0.217243, 0.850991,
		-0.860660, 0.077223, 0.503290,
		-0.175052, -0.973058, -0.150049,
		15.516827, 18.841553, 14.233790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463048, 19.316563, 14.996053>,  <15.639363, 19.522694, 14.338824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463048, 19.316563, 14.996053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.571902, 18.985640, 14.799479>,  <15.637215, 18.787086, 14.681536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.571902, 18.985640, 14.799479>,  <15.463048, 19.316563, 14.996053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571902, 18.985640, 14.799479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475231, -0.328528, 0.816225,
		-0.836718, -0.455669, 0.303757,
		0.272136, -0.827306, -0.491434,
		15.653543, 18.737448, 14.652049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.358092, 18.718658, 15.488871>,  <15.463048, 19.316563, 14.996053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.358092, 18.718658, 15.488871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.606713, 18.595308, 15.200821>,  <15.755886, 18.521297, 15.027991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.606713, 18.595308, 15.200821>,  <15.358092, 18.718658, 15.488871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606713, 18.595308, 15.200821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454781, -0.606445, 0.652226,
		-0.637848, -0.732889, -0.236690,
		0.621550, -0.308379, -0.720124,
		15.793179, 18.502796, 14.984784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219152, 17.985279, 15.412951>,  <15.358092, 18.718658, 15.488871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219152, 17.985279, 15.412951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.588482, 18.084215, 15.295445>,  <15.810080, 18.143576, 15.224942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.588482, 18.084215, 15.295445>,  <15.219152, 17.985279, 15.412951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588482, 18.084215, 15.295445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383774, -0.621812, 0.682691,
		-0.013810, -0.743084, -0.669056,
		0.923324, 0.247339, -0.293764,
		15.865479, 18.158417, 15.207316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583140, 17.354080, 15.302483>,  <15.219152, 17.985279, 15.412951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583140, 17.354080, 15.302483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854329, 17.640739, 15.367929>,  <16.017042, 17.812735, 15.407196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854329, 17.640739, 15.367929>,  <15.583140, 17.354080, 15.302483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854329, 17.640739, 15.367929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387580, -0.537624, 0.748827,
		0.624609, -0.444270, -0.642252,
		0.677972, 0.716648, 0.163615,
		16.057720, 17.855734, 15.417013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184622, 17.032019, 15.542151>,  <15.583140, 17.354080, 15.302483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184622, 17.032019, 15.542151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.272236, 17.413904, 15.622693>,  <16.324804, 17.643036, 15.671019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.272236, 17.413904, 15.622693>,  <16.184622, 17.032019, 15.542151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.272236, 17.413904, 15.622693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561535, -0.292109, 0.774177,
		0.797936, -0.056505, -0.600088,
		0.219036, 0.954714, 0.201355,
		16.337946, 17.700319, 15.683100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881752, 17.174654, 15.603697>,  <16.184622, 17.032019, 15.542151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881752, 17.174654, 15.603697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.698309, 17.453699, 15.823885>,  <16.588243, 17.621126, 15.955997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.698309, 17.453699, 15.823885>,  <16.881752, 17.174654, 15.603697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698309, 17.453699, 15.823885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514926, -0.296240, 0.804421,
		0.724245, 0.652364, -0.223361,
		-0.458607, 0.697612, 0.550470,
		16.560726, 17.662983, 15.989026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425526, 17.492579, 15.852976>,  <16.881752, 17.174654, 15.603697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425526, 17.492579, 15.852976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.115860, 17.532385, 16.103020>,  <16.930059, 17.556269, 16.253046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.115860, 17.532385, 16.103020>,  <17.425526, 17.492579, 15.852976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115860, 17.532385, 16.103020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587381, -0.255104, 0.768053,
		0.235903, 0.961779, 0.139039,
		-0.774166, 0.099517, 0.625111,
		16.883610, 17.562241, 16.290552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130421, 17.132658, 15.566783>,  <17.425526, 17.492579, 15.852976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130421, 17.132658, 15.566783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.519041, 17.196178, 15.496502>,  <18.752213, 17.234291, 15.454333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.519041, 17.196178, 15.496502>,  <18.130421, 17.132658, 15.566783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.519041, 17.196178, 15.496502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133971, -0.980292, -0.145190,
		-0.195295, 0.117521, -0.973678,
		0.971551, 0.158799, -0.175702,
		18.810507, 17.243818, 15.443791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.335033, 16.522768, 15.323395>,  <18.130421, 17.132658, 15.566783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.335033, 16.522768, 15.323395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.688877, 16.706861, 15.353464>,  <18.901184, 16.817318, 15.371506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.688877, 16.706861, 15.353464>,  <18.335033, 16.522768, 15.323395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688877, 16.706861, 15.353464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463856, -0.884997, -0.040232,
		0.048012, 0.070459, -0.996358,
		0.884609, 0.460235, 0.075173,
		18.954260, 16.844933, 15.376016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.820662, 16.400940, 14.670444>,  <18.335033, 16.522768, 15.323395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.820662, 16.400940, 14.670444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.026541, 16.432465, 15.011941>,  <19.150068, 16.451380, 15.216839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.026541, 16.432465, 15.011941>,  <18.820662, 16.400940, 14.670444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.026541, 16.432465, 15.011941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401077, -0.902226, -0.158511,
		0.757776, 0.424002, -0.495983,
		0.514697, 0.078811, 0.853742,
		19.180950, 16.456108, 15.268064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535456, 16.156326, 14.580523>,  <18.820662, 16.400940, 14.670444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535456, 16.156326, 14.580523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.439306, 16.112862, 14.966355>,  <19.381617, 16.086782, 15.197854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.439306, 16.112862, 14.966355>,  <19.535456, 16.156326, 14.580523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.439306, 16.112862, 14.966355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048969, -0.993807, -0.099749,
		0.969445, 0.023258, 0.244205,
		-0.240373, -0.108660, 0.964580,
		19.367195, 16.080263, 15.255730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970253, 15.743314, 14.928666>,  <19.535456, 16.156326, 14.580523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970253, 15.743314, 14.928666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.594786, 15.681540, 15.051990>,  <19.369505, 15.644477, 15.125983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.594786, 15.681540, 15.051990>,  <19.970253, 15.743314, 14.928666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.594786, 15.681540, 15.051990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107596, -0.980638, -0.163622,
		0.327608, -0.120414, 0.937109,
		-0.938667, -0.154433, 0.308309,
		19.313185, 15.635211, 15.144483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615076, 15.679845, 14.651435>,  <19.970253, 15.743314, 14.928666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615076, 15.679845, 14.651435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.852152, 15.587873, 14.342669>,  <20.994398, 15.532689, 14.157411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.852152, 15.587873, 14.342669>,  <20.615076, 15.679845, 14.651435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.852152, 15.587873, 14.342669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759313, 0.160135, -0.630715,
		0.268631, 0.959942, -0.079679,
		0.592690, -0.229931, -0.771913,
		21.029959, 15.518893, 14.111095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344688, 16.086592, 14.254753>,  <20.615076, 15.679845, 14.651435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344688, 16.086592, 14.254753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.531086, 15.809480, 14.034607>,  <20.642925, 15.643212, 13.902519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.531086, 15.809480, 14.034607>,  <20.344688, 16.086592, 14.254753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.531086, 15.809480, 14.034607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752790, 0.016419, -0.658056,
		0.464925, 0.720961, -0.513868,
		0.465995, -0.692781, -0.550365,
		20.670885, 15.601645, 13.869497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297089, 16.374630, 13.685938>,  <20.344688, 16.086592, 14.254753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297089, 16.374630, 13.685938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.376329, 16.002018, 13.563950>,  <20.423874, 15.778451, 13.490757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.376329, 16.002018, 13.563950>,  <20.297089, 16.374630, 13.685938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.376329, 16.002018, 13.563950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804323, 0.023328, -0.593734,
		0.560195, 0.362916, -0.744630,
		0.198104, -0.931530, -0.304970,
		20.435760, 15.722559, 13.472459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.287058, 16.383179, 12.911088>,  <20.297089, 16.374630, 13.685938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.287058, 16.383179, 12.911088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.215466, 16.007965, 13.029787>,  <20.172510, 15.782837, 13.101007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.215466, 16.007965, 13.029787>,  <20.287058, 16.383179, 12.911088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215466, 16.007965, 13.029787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822730, -0.022702, -0.567979,
		0.539521, -0.345799, -0.767685,
		-0.178979, -0.938034, 0.296747,
		20.161772, 15.726555, 13.118812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074257, 16.050524, 12.241966>,  <20.287058, 16.383179, 12.911088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074257, 16.050524, 12.241966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.963593, 15.807252, 12.539577>,  <19.897194, 15.661289, 12.718144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.963593, 15.807252, 12.539577>,  <20.074257, 16.050524, 12.241966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963593, 15.807252, 12.539577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833259, -0.233847, -0.500994,
		0.478682, -0.758574, -0.442073,
		-0.276663, -0.608178, 0.744027,
		19.880594, 15.624799, 12.762786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.850950, 15.535240, 11.937755>,  <20.074257, 16.050524, 12.241966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.850950, 15.535240, 11.937755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.662809, 15.497181, 12.288688>,  <19.549925, 15.474345, 12.499248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.662809, 15.497181, 12.288688>,  <19.850950, 15.535240, 11.937755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662809, 15.497181, 12.288688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821279, -0.316578, -0.474635,
		0.322906, -0.943782, 0.070760,
		-0.470353, -0.095149, 0.877334,
		19.521704, 15.468637, 12.551888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.459627, 14.924109, 11.845469>,  <19.850950, 15.535240, 11.937755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.459627, 14.924109, 11.845469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.283575, 15.103300, 12.156751>,  <19.177944, 15.210814, 12.343519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.283575, 15.103300, 12.156751>,  <19.459627, 14.924109, 11.845469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.283575, 15.103300, 12.156751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888031, -0.088807, -0.451126,
		-0.132986, -0.889621, 0.436908,
		-0.440132, 0.447981, 0.778201,
		19.151535, 15.237693, 12.390212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279976, 15.429588, 11.294038>,  <19.459627, 14.924109, 11.845469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279976, 15.429588, 11.294038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.957565, 15.248416, 11.446446>,  <18.764120, 15.139712, 11.537891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.957565, 15.248416, 11.446446>,  <19.279976, 15.429588, 11.294038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.957565, 15.248416, 11.446446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587225, 0.531357, -0.610595,
		0.074098, -0.715900, -0.694260,
		-0.806025, -0.452931, 0.381022,
		18.715757, 15.112536, 11.560753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894972, 15.005647, 10.869864>,  <19.279976, 15.429588, 11.294038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894972, 15.005647, 10.869864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.622417, 15.160697, 11.118206>,  <18.458885, 15.253727, 11.267211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.622417, 15.160697, 11.118206>,  <18.894972, 15.005647, 10.869864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622417, 15.160697, 11.118206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499831, 0.373226, -0.781582,
		-0.534681, -0.842881, -0.060563,
		-0.681385, 0.387626, 0.620855,
		18.418001, 15.276984, 11.304462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266256, 14.829341, 10.614659>,  <18.894972, 15.005647, 10.869864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266256, 14.829341, 10.614659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.194899, 15.144861, 10.849936>,  <18.152084, 15.334173, 10.991101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.194899, 15.144861, 10.849936>,  <18.266256, 14.829341, 10.614659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.194899, 15.144861, 10.849936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627989, 0.368925, -0.685218,
		-0.757499, -0.491617, 0.429544,
		-0.178395, 0.788801, 0.588190,
		18.141380, 15.381501, 11.026393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518738, 14.833792, 10.748290>,  <18.266256, 14.829341, 10.614659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518738, 14.833792, 10.748290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.669067, 15.198873, 10.812451>,  <17.759266, 15.417921, 10.850948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.669067, 15.198873, 10.812451>,  <17.518738, 14.833792, 10.748290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669067, 15.198873, 10.812451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648779, 0.382739, -0.657721,
		-0.661697, 0.143121, 0.735985,
		0.375824, 0.912703, 0.160403,
		17.781815, 15.472684, 10.860573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938686, 15.320611, 10.824036>,  <17.518738, 14.833792, 10.748290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938686, 15.320611, 10.824036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.260801, 15.524036, 10.702135>,  <17.454071, 15.646091, 10.628995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.260801, 15.524036, 10.702135>,  <16.938686, 15.320611, 10.824036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.260801, 15.524036, 10.702135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567532, 0.512522, -0.644382,
		-0.171517, 0.691869, 0.701355,
		0.805288, 0.508564, -0.304752,
		17.502388, 15.676605, 10.610709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636934, 15.900493, 10.478903>,  <16.938686, 15.320611, 10.824036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636934, 15.900493, 10.478903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.019865, 15.931643, 10.367576>,  <17.249624, 15.950334, 10.300779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.019865, 15.931643, 10.367576>,  <16.636934, 15.900493, 10.478903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019865, 15.931643, 10.367576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267251, 0.605107, -0.749948,
		0.110009, 0.792326, 0.600098,
		0.957327, 0.077876, -0.278318,
		17.307064, 15.955007, 10.284081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860437, 16.538694, 10.611241>,  <16.636934, 15.900493, 10.478903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860437, 16.538694, 10.611241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.047926, 16.366966, 10.302441>,  <17.160419, 16.263929, 10.117160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.047926, 16.366966, 10.302441>,  <16.860437, 16.538694, 10.611241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047926, 16.366966, 10.302441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393806, 0.680739, -0.617666,
		0.790707, 0.593532, 0.150008,
		0.468720, -0.429319, -0.772002,
		17.188541, 16.238171, 10.070840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.170486, 17.009295, 10.197252>,  <16.860437, 16.538694, 10.611241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.170486, 17.009295, 10.197252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.085600, 16.694782, 9.965138>,  <17.034668, 16.506075, 9.825870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.085600, 16.694782, 9.965138>,  <17.170486, 17.009295, 10.197252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085600, 16.694782, 9.965138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498779, 0.597789, -0.627588,
		0.840348, 0.156250, -0.519039,
		-0.212215, -0.786278, -0.580285,
		17.021935, 16.458899, 9.791053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<12.749047, 21.134674, 24.497396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808016, 20.745829, 24.424444>,  <12.843397, 20.512522, 24.380672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808016, 20.745829, 24.424444>,  <12.749047, 21.134674, 24.497396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808016, 20.745829, 24.424444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007374, 0.183308, -0.983028,
		0.989047, 0.146263, 0.019855,
		0.147420, -0.972114, -0.182379,
		12.852242, 20.454195, 24.369730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.318998, 21.040615, 24.075523>,  <12.749047, 21.134674, 24.497396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.318998, 21.040615, 24.075523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122358, 20.696550, 24.021193>,  <13.004375, 20.490110, 23.988594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122358, 20.696550, 24.021193>,  <13.318998, 21.040615, 24.075523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.122358, 20.696550, 24.021193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147474, 0.071492, -0.986479,
		0.858243, -0.504983, 0.091706,
		-0.491599, -0.860163, -0.135830,
		12.974878, 20.438501, 23.980444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727398, 20.655037, 23.569563>,  <13.318998, 21.040615, 24.075523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727398, 20.655037, 23.569563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.362865, 20.490372, 23.570492>,  <13.144146, 20.391573, 23.571049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.362865, 20.490372, 23.570492>,  <13.727398, 20.655037, 23.569563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.362865, 20.490372, 23.570492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010076, 0.016666, -0.999810,
		0.411549, -0.911183, -0.019336,
		-0.911332, -0.411666, 0.002322,
		13.089466, 20.366873, 23.571188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.811398, 20.144989, 23.104183>,  <13.727398, 20.655037, 23.569563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.811398, 20.144989, 23.104183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.415030, 20.189203, 23.134806>,  <13.177209, 20.215731, 23.153179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.415030, 20.189203, 23.134806>,  <13.811398, 20.144989, 23.104183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.415030, 20.189203, 23.134806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060806, 0.139443, -0.988362,
		-0.119923, -0.984042, -0.131455,
		-0.990919, 0.110534, 0.076558,
		13.117754, 20.222363, 23.157772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593632, 19.638790, 22.674486>,  <13.811398, 20.144989, 23.104183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593632, 19.638790, 22.674486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.277353, 19.876755, 22.732286>,  <13.087586, 20.019533, 22.766966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.277353, 19.876755, 22.732286>,  <13.593632, 19.638790, 22.674486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277353, 19.876755, 22.732286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148224, 0.042979, -0.988020,
		-0.593995, -0.802641, 0.054197,
		-0.790696, 0.594912, 0.144500,
		13.040145, 20.055227, 22.775637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046818, 19.359936, 22.390446>,  <13.593632, 19.638790, 22.674486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046818, 19.359936, 22.390446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958054, 19.749941, 22.386358>,  <12.904795, 19.983944, 22.383905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958054, 19.749941, 22.386358>,  <13.046818, 19.359936, 22.390446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.958054, 19.749941, 22.386358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183058, -0.051952, -0.981729,
		-0.957729, -0.215986, 0.190012,
		-0.221911, 0.975013, -0.010218,
		12.891480, 20.042444, 22.383293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.379124, 19.388927, 22.154716>,  <13.046818, 19.359936, 22.390446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.379124, 19.388927, 22.154716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540463, 19.751350, 22.103542>,  <12.637267, 19.968805, 22.072838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540463, 19.751350, 22.103542>,  <12.379124, 19.388927, 22.154716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540463, 19.751350, 22.103542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274041, -0.013787, -0.961619,
		-0.873047, 0.422928, 0.242736,
		0.403350, 0.906058, -0.127936,
		12.661469, 20.023169, 22.065161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.883737, 19.749332, 21.815004>,  <12.379124, 19.388927, 22.154716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.883737, 19.749332, 21.815004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228478, 19.936834, 21.737568>,  <12.435324, 20.049335, 21.691107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228478, 19.936834, 21.737568>,  <11.883737, 19.749332, 21.815004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.228478, 19.936834, 21.737568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253605, 0.067774, -0.964931,
		-0.439194, 0.880725, 0.177290,
		0.861854, 0.468753, -0.193590,
		12.487035, 20.077461, 21.679491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670183, 20.291754, 21.385662>,  <11.883737, 19.749332, 21.815004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670183, 20.291754, 21.385662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059271, 20.248381, 21.303629>,  <12.292724, 20.222357, 21.254410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059271, 20.248381, 21.303629>,  <11.670183, 20.291754, 21.385662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.059271, 20.248381, 21.303629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202210, 0.036973, -0.978644,
		0.113702, 0.993416, 0.014038,
		0.972719, -0.108435, -0.205083,
		12.351087, 20.215851, 21.242104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.801820, 20.675447, 20.806732>,  <11.670183, 20.291754, 21.385662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.801820, 20.675447, 20.806732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.140015, 20.462622, 20.824892>,  <12.342932, 20.334927, 20.835789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.140015, 20.462622, 20.824892>,  <11.801820, 20.675447, 20.806732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.140015, 20.462622, 20.824892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001192, -0.086900, -0.996216,
		0.533994, 0.842234, -0.074106,
		0.845487, -0.532062, 0.045400,
		12.393661, 20.303003, 20.838512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.160671, 20.871996, 20.228046>,  <11.801820, 20.675447, 20.806732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.160671, 20.871996, 20.228046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.359699, 20.535526, 20.312759>,  <12.479116, 20.333645, 20.363588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.359699, 20.535526, 20.312759>,  <12.160671, 20.871996, 20.228046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359699, 20.535526, 20.312759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020973, -0.232415, -0.972391,
		0.867170, 0.488275, -0.098001,
		0.497571, -0.841172, 0.211784,
		12.508970, 20.283175, 20.376295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.874189, 20.943710, 19.914104>,  <12.160671, 20.871996, 20.228046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.874189, 20.943710, 19.914104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763618, 20.561768, 19.957613>,  <12.697274, 20.332602, 19.983717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763618, 20.561768, 19.957613>,  <12.874189, 20.943710, 19.914104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.763618, 20.561768, 19.957613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056107, -0.096952, -0.993706,
		0.959395, -0.280793, -0.026774,
		-0.276430, -0.954859, 0.108769,
		12.680689, 20.275311, 19.990244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.689586, 21.144667, 19.171963>,  <12.874189, 20.943710, 19.914104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.689586, 21.144667, 19.171963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336017, 21.318720, 19.240482>,  <12.123876, 21.423151, 19.281593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336017, 21.318720, 19.240482>,  <12.689586, 21.144667, 19.171963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.336017, 21.318720, 19.240482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467618, 0.825579, 0.315837,
		-0.003991, 0.359278, -0.933222,
		-0.883922, 0.435131, 0.171299,
		12.070840, 21.449259, 19.291872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.994631, 21.081251, 18.492462>,  <12.689586, 21.144667, 19.171963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.994631, 21.081251, 18.492462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078913, 20.879250, 18.157661>,  <13.129482, 20.758049, 17.956781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078913, 20.879250, 18.157661>,  <12.994631, 21.081251, 18.492462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078913, 20.879250, 18.157661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943390, -0.119320, 0.309479,
		-0.256160, -0.854829, 0.451276,
		0.210705, -0.505005, -0.837003,
		13.142124, 20.727749, 17.906561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.177544, 20.436951, 18.666706>,  <12.994631, 21.081251, 18.492462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.177544, 20.436951, 18.666706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387779, 20.569309, 18.353207>,  <13.513921, 20.648726, 18.165108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387779, 20.569309, 18.353207>,  <13.177544, 20.436951, 18.666706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387779, 20.569309, 18.353207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819780, 0.049276, 0.570556,
		0.227416, -0.942379, -0.245365,
		0.525589, 0.330899, -0.783749,
		13.545456, 20.668579, 18.118082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808977, 20.167082, 18.863363>,  <13.177544, 20.436951, 18.666706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808977, 20.167082, 18.863363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.898406, 20.442909, 18.587824>,  <13.952064, 20.608406, 18.422501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.898406, 20.442909, 18.587824>,  <13.808977, 20.167082, 18.863363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.898406, 20.442909, 18.587824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828614, 0.237677, 0.506862,
		0.513240, -0.684108, -0.518249,
		0.223573, 0.689570, -0.688846,
		13.965478, 20.649780, 18.381170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524531, 20.045710, 18.932240>,  <13.808977, 20.167082, 18.863363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524531, 20.045710, 18.932240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414315, 20.388733, 18.758495>,  <14.348186, 20.594547, 18.654249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414315, 20.388733, 18.758495>,  <14.524531, 20.045710, 18.932240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.414315, 20.388733, 18.758495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754374, 0.472962, 0.455222,
		0.595816, -0.202239, -0.777240,
		-0.275541, 0.857559, -0.434362,
		14.331653, 20.646000, 18.628187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.127898, 20.415539, 18.671040>,  <14.524531, 20.045710, 18.932240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.127898, 20.415539, 18.671040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867614, 20.718365, 18.694456>,  <14.711443, 20.900061, 18.708506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867614, 20.718365, 18.694456>,  <15.127898, 20.415539, 18.671040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.867614, 20.718365, 18.694456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713810, 0.583595, 0.387159,
		0.258941, 0.293715, -0.920153,
		-0.650711, 0.757066, 0.058540,
		14.672400, 20.945484, 18.712019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479471, 21.073391, 18.344936>,  <15.127898, 20.415539, 18.671040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479471, 21.073391, 18.344936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172838, 21.189955, 18.573822>,  <14.988858, 21.259893, 18.711153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172838, 21.189955, 18.573822>,  <15.479471, 21.073391, 18.344936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.172838, 21.189955, 18.573822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615559, 0.587229, 0.525594,
		-0.182860, 0.755144, -0.629539,
		-0.766583, 0.291409, 0.572216,
		14.942863, 21.277378, 18.745487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514113, 21.852276, 18.484423>,  <15.479471, 21.073391, 18.344936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514113, 21.852276, 18.484423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304876, 21.694479, 18.786615>,  <15.179334, 21.599800, 18.967930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304876, 21.694479, 18.786615>,  <15.514113, 21.852276, 18.484423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.304876, 21.694479, 18.786615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573714, 0.492526, 0.654424,
		-0.630259, 0.775753, -0.031311,
		-0.523093, -0.394493, 0.755479,
		15.147948, 21.576132, 19.013260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707727, 22.290545, 19.031219>,  <15.514113, 21.852276, 18.484423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707727, 22.290545, 19.031219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552526, 21.991024, 19.246161>,  <15.459406, 21.811312, 19.375126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552526, 21.991024, 19.246161>,  <15.707727, 22.290545, 19.031219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552526, 21.991024, 19.246161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462427, 0.346171, 0.816288,
		-0.797255, 0.565209, 0.211951,
		-0.388002, -0.748802, 0.537355,
		15.436126, 21.766384, 19.407368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468175, 22.670376, 19.597397>,  <15.707727, 22.290545, 19.031219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468175, 22.670376, 19.597397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469680, 22.288008, 19.714836>,  <15.470583, 22.058586, 19.785299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469680, 22.288008, 19.714836>,  <15.468175, 22.670376, 19.597397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.469680, 22.288008, 19.714836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444629, 0.264579, 0.855747,
		-0.895707, 0.127322, 0.426026,
		0.003762, -0.955922, 0.293596,
		15.470808, 22.001230, 19.802916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130137, 22.721033, 20.221836>,  <15.468175, 22.670376, 19.597397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130137, 22.721033, 20.221836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320729, 22.369411, 20.227982>,  <15.435084, 22.158440, 20.231668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320729, 22.369411, 20.227982>,  <15.130137, 22.721033, 20.221836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.320729, 22.369411, 20.227982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140319, 0.093287, 0.985702,
		-0.867916, -0.467510, 0.167797,
		0.476478, -0.879052, 0.015365,
		15.463673, 22.105696, 20.232592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867785, 22.362907, 20.711487>,  <15.130137, 22.721033, 20.221836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.867785, 22.362907, 20.711487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196796, 22.136400, 20.690361>,  <15.394203, 22.000496, 20.677685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196796, 22.136400, 20.690361>,  <14.867785, 22.362907, 20.711487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196796, 22.136400, 20.690361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006429, -0.083601, 0.996479,
		-0.568690, -0.819970, -0.065124,
		0.822527, -0.566268, -0.052815,
		15.443555, 21.966520, 20.674517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776015, 21.647409, 21.099339>,  <14.867785, 22.362907, 20.711487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776015, 21.647409, 21.099339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156562, 21.760670, 21.050795>,  <15.384890, 21.828627, 21.021667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156562, 21.760670, 21.050795>,  <14.776015, 21.647409, 21.099339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.156562, 21.760670, 21.050795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211582, -0.314230, 0.925469,
		0.223914, -0.906137, -0.358857,
		0.951365, 0.283153, -0.121361,
		15.441972, 21.845615, 21.014385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170628, 21.137438, 21.388039>,  <14.776015, 21.647409, 21.099339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.170628, 21.137438, 21.388039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438129, 21.434214, 21.368889>,  <15.598630, 21.612280, 21.357399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438129, 21.434214, 21.368889>,  <15.170628, 21.137438, 21.388039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438129, 21.434214, 21.368889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243542, -0.157771, 0.956972,
		0.702464, -0.651638, -0.286204,
		0.668754, 0.741941, -0.047873,
		15.638756, 21.656796, 21.354527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.702132, 20.837515, 21.734062>,  <15.170628, 21.137438, 21.388039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.702132, 20.837515, 21.734062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.775258, 21.230707, 21.741282>,  <15.819134, 21.466623, 21.745613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.775258, 21.230707, 21.741282>,  <15.702132, 20.837515, 21.734062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775258, 21.230707, 21.741282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298093, -0.072913, 0.951748,
		0.936867, -0.168613, -0.306349,
		0.182814, 0.982982, 0.018048,
		15.830102, 21.525602, 21.746696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336622, 20.930372, 21.922504>,  <15.702132, 20.837515, 21.734062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336622, 20.930372, 21.922504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132727, 21.255371, 22.035654>,  <16.010389, 21.450371, 22.103544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132727, 21.255371, 22.035654>,  <16.336622, 20.930372, 21.922504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.132727, 21.255371, 22.035654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352154, -0.102943, 0.930263,
		0.784955, 0.573806, -0.233650,
		-0.509738, 0.812496, 0.282874,
		15.979805, 21.499121, 22.120516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745546, 21.006086, 21.299936>,  <16.336622, 20.930372, 21.922504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745546, 21.006086, 21.299936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885288, 20.704212, 21.522074>,  <16.969133, 20.523088, 21.655355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885288, 20.704212, 21.522074>,  <16.745546, 21.006086, 21.299936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.885288, 20.704212, 21.522074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054712, -0.575246, -0.816148,
		0.935393, 0.315508, -0.159674,
		0.349353, -0.754683, 0.555343,
		16.990093, 20.477808, 21.688677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086695, 20.673077, 20.864328>,  <16.745546, 21.006086, 21.299936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086695, 20.673077, 20.864328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029924, 20.397087, 21.148243>,  <16.995863, 20.231493, 21.318592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029924, 20.397087, 21.148243>,  <17.086695, 20.673077, 20.864328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029924, 20.397087, 21.148243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029555, -0.713770, -0.699756,
		0.989436, -0.120290, 0.080909,
		-0.141924, -0.689973, 0.709785,
		16.987347, 20.190096, 21.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668751, 20.113697, 20.770910>,  <17.086695, 20.673077, 20.864328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668751, 20.113697, 20.770910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330326, 19.992470, 20.946333>,  <17.127272, 19.919733, 21.051586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330326, 19.992470, 20.946333>,  <17.668751, 20.113697, 20.770910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330326, 19.992470, 20.946333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128634, -0.682299, -0.719668,
		0.517335, -0.665296, 0.538281,
		-0.846060, -0.303068, 0.438557,
		17.076508, 19.901550, 21.077900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692461, 19.346304, 20.726946>,  <17.668751, 20.113697, 20.770910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692461, 19.346304, 20.726946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306746, 19.428452, 20.793840>,  <17.075315, 19.477739, 20.833977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.306746, 19.428452, 20.793840>,  <17.692461, 19.346304, 20.726946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306746, 19.428452, 20.793840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261432, -0.636978, -0.725198,
		-0.042405, -0.743023, 0.667921,
		-0.964290, 0.205368, 0.167239,
		17.017458, 19.490063, 20.844011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371248, 18.672190, 20.746876>,  <17.692461, 19.346304, 20.726946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.371248, 18.672190, 20.746876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069038, 18.930063, 20.700289>,  <16.887712, 19.084787, 20.672337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069038, 18.930063, 20.700289>,  <17.371248, 18.672190, 20.746876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069038, 18.930063, 20.700289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478124, -0.664155, -0.574713,
		-0.447860, -0.378525, 0.810025,
		-0.755526, 0.644683, -0.116466,
		16.842381, 19.123468, 20.665348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794432, 18.365141, 20.924166>,  <17.371248, 18.672190, 20.746876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794432, 18.365141, 20.924166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642418, 18.656755, 20.696455>,  <16.551208, 18.831724, 20.559828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642418, 18.656755, 20.696455>,  <16.794432, 18.365141, 20.924166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.642418, 18.656755, 20.696455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472764, -0.682086, -0.557900,
		-0.795027, 0.057113, 0.603879,
		-0.380035, 0.729038, -0.569278,
		16.528408, 18.875467, 20.525671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009487, 18.235559, 20.837591>,  <16.794432, 18.365141, 20.924166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009487, 18.235559, 20.837591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140076, 18.469091, 20.540255>,  <16.218430, 18.609211, 20.361853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140076, 18.469091, 20.540255>,  <16.009487, 18.235559, 20.837591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.140076, 18.469091, 20.540255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374274, -0.642303, -0.668854,
		-0.867948, 0.496577, 0.008817,
		0.326474, 0.583831, -0.743342,
		16.238018, 18.644241, 20.317251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569358, 18.226301, 20.372816>,  <16.009487, 18.235559, 20.837591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.569358, 18.226301, 20.372816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.850671, 18.369200, 20.126965>,  <16.019459, 18.454939, 19.979454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.850671, 18.369200, 20.126965>,  <15.569358, 18.226301, 20.372816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850671, 18.369200, 20.126965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335308, -0.595667, -0.729897,
		-0.626867, 0.719413, -0.299134,
		0.703282, 0.357246, -0.614630,
		16.061655, 18.476374, 19.942575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227837, 18.537205, 19.699617>,  <15.569358, 18.226301, 20.372816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227837, 18.537205, 19.699617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604751, 18.424162, 19.627802>,  <15.830899, 18.356337, 19.584713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.604751, 18.424162, 19.627802>,  <15.227837, 18.537205, 19.699617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604751, 18.424162, 19.627802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292266, -0.432681, -0.852859,
		0.163342, 0.856108, -0.490305,
		0.942284, -0.282607, -0.179537,
		15.887436, 18.339380, 19.573940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388833, 18.884066, 19.049351>,  <15.227837, 18.537205, 19.699617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388833, 18.884066, 19.049351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651692, 18.587463, 19.103504>,  <15.809408, 18.409502, 19.135996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651692, 18.587463, 19.103504>,  <15.388833, 18.884066, 19.049351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651692, 18.587463, 19.103504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236649, -0.373492, -0.896940,
		0.715649, 0.557384, -0.420916,
		0.657148, -0.741503, 0.135385,
		15.848837, 18.365013, 19.144119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837270, 18.864708, 18.491138>,  <15.388833, 18.884066, 19.049351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837270, 18.864708, 18.491138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885890, 18.490198, 18.622963>,  <15.915062, 18.265491, 18.702059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885890, 18.490198, 18.622963>,  <15.837270, 18.864708, 18.491138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885890, 18.490198, 18.622963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105924, -0.342364, -0.933577,
		0.986917, 0.078567, -0.140789,
		0.121550, -0.936277, 0.329563,
		15.922355, 18.209314, 18.721832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296897, 19.378557, 18.513523>,  <15.837270, 18.864708, 18.491138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296897, 19.378557, 18.513523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164166, 19.645124, 18.780590>,  <15.084528, 19.805065, 18.940830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164166, 19.645124, 18.780590>,  <15.296897, 19.378557, 18.513523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.164166, 19.645124, 18.780590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458995, 0.504281, -0.731454,
		-0.824145, -0.549171, 0.138549,
		-0.331826, 0.666417, 0.667668,
		15.064619, 19.845049, 18.980890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.586475, 20.253159, 27.358908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.775862, 20.598234, 27.287807>,  <18.889494, 20.805279, 27.245148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.775862, 20.598234, 27.287807>,  <18.586475, 20.253159, 27.358908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775862, 20.598234, 27.287807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176704, -0.104670, -0.978683,
		-0.862905, 0.494783, 0.102883,
		0.473467, 0.862690, -0.177750,
		18.917902, 20.857040, 27.234482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.461161, 20.177258, 26.659790>,  <18.586475, 20.253159, 27.358908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.461161, 20.177258, 26.659790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.606247, 20.546879, 26.708055>,  <18.693298, 20.768652, 26.737015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.606247, 20.546879, 26.708055>,  <18.461161, 20.177258, 26.659790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.606247, 20.546879, 26.708055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072146, 0.156937, -0.984970,
		-0.929103, 0.348559, 0.123590,
		0.362716, 0.924055, 0.120663,
		18.715061, 20.824095, 26.744255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955677, 20.690992, 26.461040>,  <18.461161, 20.177258, 26.659790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955677, 20.690992, 26.461040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.324863, 20.835148, 26.407000>,  <18.546375, 20.921642, 26.374575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.324863, 20.835148, 26.407000>,  <17.955677, 20.690992, 26.461040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324863, 20.835148, 26.407000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203114, 0.157922, -0.966336,
		-0.326923, 0.919336, 0.218957,
		0.922966, 0.360390, -0.135102,
		18.601753, 20.943266, 26.366468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.900606, 21.323999, 26.163757>,  <17.955677, 20.690992, 26.461040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.900606, 21.323999, 26.163757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.260023, 21.178768, 26.065130>,  <18.475674, 21.091629, 26.005955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.260023, 21.178768, 26.065130>,  <17.900606, 21.323999, 26.163757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260023, 21.178768, 26.065130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320533, -0.159124, -0.933776,
		0.299797, 0.918071, -0.259358,
		0.898543, -0.363076, -0.246567,
		18.529587, 21.069845, 25.991159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086395, 21.683086, 25.601225>,  <17.900606, 21.323999, 26.163757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086395, 21.683086, 25.601225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.265982, 21.325697, 25.605844>,  <18.373734, 21.111263, 25.608616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.265982, 21.325697, 25.605844>,  <18.086395, 21.683086, 25.601225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265982, 21.325697, 25.605844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292350, -0.159093, -0.942985,
		0.844370, 0.419993, -0.332635,
		0.448967, -0.893474, 0.011548,
		18.400671, 21.057655, 25.609308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.617661, 21.579861, 25.039047>,  <18.086395, 21.683086, 25.601225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.617661, 21.579861, 25.039047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.519709, 21.206669, 25.144562>,  <18.460938, 20.982754, 25.207870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.519709, 21.206669, 25.144562>,  <18.617661, 21.579861, 25.039047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.519709, 21.206669, 25.144562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319187, -0.179329, -0.930570,
		0.915507, -0.312077, -0.253880,
		-0.244881, -0.932978, 0.263788,
		18.446243, 20.926775, 25.223698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798367, 21.271086, 24.422365>,  <18.617661, 21.579861, 25.039047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798367, 21.271086, 24.422365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.556124, 21.037348, 24.638432>,  <18.410778, 20.897106, 24.768072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.556124, 21.037348, 24.638432>,  <18.798367, 21.271086, 24.422365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556124, 21.037348, 24.638432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404752, -0.358244, -0.841330,
		0.685138, -0.728151, -0.019559,
		-0.605608, -0.584344, 0.540167,
		18.374441, 20.862045, 24.800482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954138, 20.588356, 24.152264>,  <18.798367, 21.271086, 24.422365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954138, 20.588356, 24.152264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.602478, 20.563677, 24.341280>,  <18.391483, 20.548870, 24.454689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.602478, 20.563677, 24.341280>,  <18.954138, 20.588356, 24.152264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602478, 20.563677, 24.341280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424785, -0.347992, -0.835739,
		0.216004, -0.935465, 0.279727,
		-0.879147, -0.061699, 0.472539,
		18.338734, 20.545168, 24.483042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647099, 20.010752, 23.847069>,  <18.954138, 20.588356, 24.152264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647099, 20.010752, 23.847069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.337828, 20.184595, 24.031813>,  <18.152266, 20.288902, 24.142658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.337828, 20.184595, 24.031813>,  <18.647099, 20.010752, 23.847069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337828, 20.184595, 24.031813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582003, -0.196952, -0.788975,
		-0.251939, -0.878817, 0.405226,
		-0.773175, 0.434617, 0.461854,
		18.105875, 20.314978, 24.170370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139771, 19.578188, 23.632195>,  <18.647099, 20.010752, 23.847069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.139771, 19.578188, 23.632195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.935631, 19.893333, 23.770071>,  <17.813147, 20.082420, 23.852797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.935631, 19.893333, 23.770071>,  <18.139771, 19.578188, 23.632195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.935631, 19.893333, 23.770071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580482, -0.019878, -0.814031,
		-0.634494, -0.615528, 0.467485,
		-0.510351, 0.787864, 0.344691,
		17.782526, 20.129692, 23.873478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355877, 19.363819, 23.561842>,  <18.139771, 19.578188, 23.632195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355877, 19.363819, 23.561842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.371904, 19.761414, 23.602613>,  <17.381521, 19.999969, 23.627077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.371904, 19.761414, 23.602613>,  <17.355877, 19.363819, 23.561842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371904, 19.761414, 23.602613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631412, 0.104249, -0.768408,
		-0.774412, -0.033571, 0.631791,
		0.040068, 0.993985, 0.101929,
		17.383924, 20.059608, 23.633192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650240, 19.577898, 23.368593>,  <17.355877, 19.363819, 23.561842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650240, 19.577898, 23.368593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.883131, 19.899235, 23.318550>,  <17.022865, 20.092037, 23.288525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.883131, 19.899235, 23.318550>,  <16.650240, 19.577898, 23.368593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883131, 19.899235, 23.318550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352576, 0.110824, -0.929198,
		-0.732599, 0.585114, 0.347764,
		0.582227, 0.803343, -0.125107,
		17.057798, 20.140238, 23.281017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203875, 20.152529, 23.164429>,  <16.650240, 19.577898, 23.368593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203875, 20.152529, 23.164429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.570784, 20.209219, 23.015554>,  <16.790930, 20.243233, 22.926229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.570784, 20.209219, 23.015554>,  <16.203875, 20.152529, 23.164429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.570784, 20.209219, 23.015554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380881, 0.039147, -0.923795,
		-0.116353, 0.989132, 0.089889,
		0.917274, 0.141723, -0.372186,
		16.845966, 20.251736, 22.903898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110598, 20.577002, 22.591440>,  <16.203875, 20.152529, 23.164429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110598, 20.577002, 22.591440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.472021, 20.415024, 22.535439>,  <16.688875, 20.317837, 22.501839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.472021, 20.415024, 22.535439>,  <16.110598, 20.577002, 22.591440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.472021, 20.415024, 22.535439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239368, -0.206074, -0.948808,
		0.355363, 0.890817, -0.283131,
		0.903560, -0.404944, -0.140002,
		16.743090, 20.293541, 22.493439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.681673, 21.177082, 22.577858>,  <16.110598, 20.577002, 22.591440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.681673, 21.177082, 22.577858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.344620, 21.391695, 22.559507>,  <16.142387, 21.520462, 22.548496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.344620, 21.391695, 22.559507>,  <16.681673, 21.177082, 22.577858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344620, 21.391695, 22.559507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007795, 0.097340, 0.995220,
		0.538434, 0.838247, -0.086204,
		-0.842631, 0.536533, -0.045877,
		16.091831, 21.552654, 22.545744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677649, 21.685980, 23.171360>,  <16.681673, 21.177082, 22.577858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677649, 21.685980, 23.171360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.286049, 21.694435, 23.090252>,  <16.051090, 21.699509, 23.041588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.286049, 21.694435, 23.090252>,  <16.677649, 21.685980, 23.171360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286049, 21.694435, 23.090252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203832, -0.082469, 0.975526,
		0.003898, 0.996369, 0.085045,
		-0.978998, 0.021137, -0.202771,
		15.992350, 21.700777, 23.029421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373898, 22.302820, 23.506353>,  <16.677649, 21.685980, 23.171360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373898, 22.302820, 23.506353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.049044, 22.079882, 23.437305>,  <15.854131, 21.946117, 23.395876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.049044, 22.079882, 23.437305>,  <16.373898, 22.302820, 23.506353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.049044, 22.079882, 23.437305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312370, 0.165443, 0.935443,
		-0.492808, 0.813629, -0.308461,
		-0.812136, -0.557348, -0.172621,
		15.805403, 21.912678, 23.385519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760870, 22.750721, 23.681273>,  <16.373898, 22.302820, 23.506353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760870, 22.750721, 23.681273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.681144, 22.360210, 23.715124>,  <15.633307, 22.125904, 23.735435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.681144, 22.360210, 23.715124>,  <15.760870, 22.750721, 23.681273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.681144, 22.360210, 23.715124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305076, 0.143888, 0.941395,
		-0.931236, 0.161818, -0.326517,
		-0.199317, -0.976274, 0.084627,
		15.621348, 22.067327, 23.740513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274623, 22.762245, 24.065012>,  <15.760870, 22.750721, 23.681273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274623, 22.762245, 24.065012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.369223, 22.376383, 24.111494>,  <15.425982, 22.144865, 24.139383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.369223, 22.376383, 24.111494>,  <15.274623, 22.762245, 24.065012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369223, 22.376383, 24.111494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145441, 0.083104, 0.985870,
		-0.960684, -0.250059, -0.120647,
		0.236500, -0.964657, 0.116205,
		15.440172, 22.086985, 24.146357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.703211, 22.398804, 24.412914>,  <15.274623, 22.762245, 24.065012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.703211, 22.398804, 24.412914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.041226, 22.193226, 24.471937>,  <15.244036, 22.069880, 24.507351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.041226, 22.193226, 24.471937>,  <14.703211, 22.398804, 24.412914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041226, 22.193226, 24.471937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189369, -0.029582, 0.981460,
		-0.500050, -0.857314, -0.122323,
		0.845038, -0.513943, 0.147557,
		15.294738, 22.039043, 24.516205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.477161, 21.793030, 24.687071>,  <14.703211, 22.398804, 24.412914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.477161, 21.793030, 24.687071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.853820, 21.839615, 24.813396>,  <15.079815, 21.867567, 24.889193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.853820, 21.839615, 24.813396>,  <14.477161, 21.793030, 24.687071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.853820, 21.839615, 24.813396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273868, -0.280409, 0.919982,
		0.195702, -0.952789, -0.232150,
		0.941646, 0.116464, 0.315815,
		15.136313, 21.874554, 24.908140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508670, 21.376904, 25.293018>,  <14.477161, 21.793030, 24.687071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508670, 21.376904, 25.293018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.852859, 21.571920, 25.352203>,  <15.059372, 21.688931, 25.387714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.852859, 21.571920, 25.352203>,  <14.508670, 21.376904, 25.293018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.852859, 21.571920, 25.352203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125263, -0.079063, 0.988968,
		0.493860, -0.869513, -0.006960,
		0.860472, 0.487541, 0.147964,
		15.111000, 21.718182, 25.396593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911934, 21.021170, 25.840740>,  <14.508670, 21.376904, 25.293018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911934, 21.021170, 25.840740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.082590, 21.382679, 25.827072>,  <15.184984, 21.599585, 25.818872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.082590, 21.382679, 25.827072>,  <14.911934, 21.021170, 25.840740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082590, 21.382679, 25.827072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112560, -0.015574, 0.993523,
		0.897389, -0.427724, -0.108374,
		0.426642, 0.903775, -0.034169,
		15.210583, 21.653812, 25.816822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.577721, 20.941641, 26.311529>,  <14.911934, 21.021170, 25.840740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.577721, 20.941641, 26.311529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.488655, 21.328230, 26.260380>,  <15.435216, 21.560183, 26.229691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.488655, 21.328230, 26.260380>,  <15.577721, 20.941641, 26.311529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488655, 21.328230, 26.260380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100210, 0.153159, 0.983107,
		0.969731, 0.206089, -0.130953,
		-0.222664, 0.966473, -0.127871,
		15.421856, 21.618172, 26.222019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.182570, 21.343740, 26.522621>,  <15.577721, 20.941641, 26.311529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.182570, 21.343740, 26.522621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.862768, 21.582117, 26.552673>,  <15.670887, 21.725143, 26.570705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.862768, 21.582117, 26.552673>,  <16.182570, 21.343740, 26.522621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862768, 21.582117, 26.552673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208200, 0.157624, 0.965302,
		0.563421, 0.787406, -0.250096,
		-0.799505, 0.595942, 0.075130,
		15.622916, 21.760900, 26.575212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451435, 21.934786, 26.735806>,  <16.182570, 21.343740, 26.522621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.451435, 21.934786, 26.735806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.063528, 21.917000, 26.831779>,  <15.830783, 21.906328, 26.889364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.063528, 21.917000, 26.831779>,  <16.451435, 21.934786, 26.735806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063528, 21.917000, 26.831779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210364, 0.345975, 0.914357,
		-0.123669, 0.937189, -0.326163,
		-0.969770, -0.044465, 0.239937,
		15.772597, 21.903660, 26.903761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194317, 22.645397, 26.826982>,  <16.451435, 21.934786, 26.735806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.194317, 22.645397, 26.826982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.953573, 22.399652, 27.031071>,  <15.809127, 22.252205, 27.153524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.953573, 22.399652, 27.031071>,  <16.194317, 22.645397, 26.826982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953573, 22.399652, 27.031071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346516, 0.374714, 0.859951,
		-0.719509, 0.694369, -0.012638,
		-0.601859, -0.614363, 0.510220,
		15.773016, 22.215343, 27.184137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946367, 23.086222, 27.312847>,  <16.194317, 22.645397, 26.826982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946367, 23.086222, 27.312847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.864635, 22.728262, 27.471544>,  <15.815597, 22.513487, 27.566763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.864635, 22.728262, 27.471544>,  <15.946367, 23.086222, 27.312847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.864635, 22.728262, 27.471544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316327, 0.323188, 0.891901,
		-0.926384, 0.307742, 0.217044,
		-0.204329, -0.894899, 0.396743,
		15.803337, 22.459793, 27.590567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.638184, 15.040855, 29.574717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.814995, 15.388611, 29.486378>,  <16.921082, 15.597264, 29.433374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.814995, 15.388611, 29.486378>,  <16.638184, 15.040855, 29.574717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814995, 15.388611, 29.486378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604428, 0.106768, -0.789473,
		-0.662780, 0.482455, 0.572678,
		0.442029, 0.869389, -0.220846,
		16.947603, 15.649427, 29.420124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158644, 15.518920, 29.544067>,  <16.638184, 15.040855, 29.574717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158644, 15.518920, 29.544067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.451042, 15.662462, 29.311907>,  <16.626480, 15.748588, 29.172609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.451042, 15.662462, 29.311907>,  <16.158644, 15.518920, 29.544067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451042, 15.662462, 29.311907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619185, -0.008666, -0.785197,
		-0.286802, 0.933353, 0.215863,
		0.730995, 0.358856, -0.580404,
		16.670341, 15.770119, 29.137785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902132, 16.088017, 29.179068>,  <16.158644, 15.518920, 29.544067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902132, 16.088017, 29.179068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.228619, 16.025486, 28.956591>,  <16.424511, 15.987967, 28.823105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.228619, 16.025486, 28.956591>,  <15.902132, 16.088017, 29.179068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228619, 16.025486, 28.956591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541812, 0.127102, -0.830834,
		0.200575, 0.979493, 0.019044,
		0.816217, -0.156327, -0.556194,
		16.473484, 15.978588, 28.789732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852460, 16.502954, 28.653887>,  <15.902132, 16.088017, 29.179068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.852460, 16.502954, 28.653887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.104958, 16.219711, 28.527325>,  <16.256456, 16.049765, 28.451387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.104958, 16.219711, 28.527325>,  <15.852460, 16.502954, 28.653887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104958, 16.219711, 28.527325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274193, 0.177864, -0.945083,
		0.725498, 0.683335, -0.081883,
		0.631245, -0.708108, -0.316406,
		16.294331, 16.007278, 28.432404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232193, 16.765709, 28.016710>,  <15.852460, 16.502954, 28.653887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232193, 16.765709, 28.016710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.268799, 16.369211, 27.978634>,  <16.290762, 16.131313, 27.955788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.268799, 16.369211, 27.978634>,  <16.232193, 16.765709, 28.016710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268799, 16.369211, 27.978634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339641, 0.058789, -0.938716,
		0.936092, 0.118237, -0.331287,
		0.091515, -0.991244, -0.095190,
		16.296253, 16.071838, 27.950077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.517090, 16.640200, 27.295599>,  <16.232193, 16.765709, 28.016710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.517090, 16.640200, 27.295599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.361574, 16.292416, 27.417501>,  <16.268265, 16.083744, 27.490643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.361574, 16.292416, 27.417501>,  <16.517090, 16.640200, 27.295599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.361574, 16.292416, 27.417501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258522, -0.214539, -0.941881,
		0.884312, -0.444981, -0.141364,
		-0.388791, -0.869462, 0.304757,
		16.244936, 16.031576, 27.508928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.528561, 16.212128, 26.601768>,  <16.517090, 16.640200, 27.295599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.528561, 16.212128, 26.601768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.293249, 16.020546, 26.862392>,  <16.152061, 15.905598, 27.018766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.293249, 16.020546, 26.862392>,  <16.528561, 16.212128, 26.601768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293249, 16.020546, 26.862392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610987, -0.264564, -0.746124,
		0.529737, -0.837025, -0.136996,
		-0.588280, -0.478953, 0.651560,
		16.116764, 15.876861, 27.057861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493141, 15.634582, 26.231915>,  <16.528561, 16.212128, 26.601768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493141, 15.634582, 26.231915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.183077, 15.645143, 26.484398>,  <15.997038, 15.651480, 26.635889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.183077, 15.645143, 26.484398>,  <16.493141, 15.634582, 26.231915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183077, 15.645143, 26.484398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626204, -0.164343, -0.762141,
		0.083612, -0.986050, 0.143926,
		-0.775163, 0.026403, 0.631210,
		15.950528, 15.653064, 26.673761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144125, 14.953210, 26.286293>,  <16.493141, 15.634582, 26.231915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144125, 14.953210, 26.286293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.877608, 15.235264, 26.383322>,  <15.717698, 15.404496, 26.441540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.877608, 15.235264, 26.383322>,  <16.144125, 14.953210, 26.286293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877608, 15.235264, 26.383322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610423, -0.328923, -0.720551,
		-0.428298, -0.628169, 0.649589,
		-0.666292, 0.705134, 0.242572,
		15.677721, 15.446804, 26.456093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462203, 14.627629, 26.172478>,  <16.144125, 14.953210, 26.286293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462203, 14.627629, 26.172478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.377337, 15.017002, 26.206928>,  <15.326418, 15.250626, 26.227598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.377337, 15.017002, 26.206928>,  <15.462203, 14.627629, 26.172478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377337, 15.017002, 26.206928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643277, -0.072770, -0.762168,
		-0.735650, -0.217108, 0.641625,
		-0.212164, 0.973431, 0.086127,
		15.313688, 15.309031, 26.232767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737372, 14.730326, 26.303041>,  <15.462203, 14.627629, 26.172478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737372, 14.730326, 26.303041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.873762, 15.071703, 26.145374>,  <14.955596, 15.276529, 26.050774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.873762, 15.071703, 26.145374>,  <14.737372, 14.730326, 26.303041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873762, 15.071703, 26.145374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648651, -0.089898, -0.755758,
		-0.680432, 0.513372, 0.522935,
		0.340975, 0.853444, -0.394169,
		14.976054, 15.327736, 26.027124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143011, 15.011703, 26.062641>,  <14.737372, 14.730326, 26.303041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143011, 15.011703, 26.062641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.418857, 15.212044, 25.853422>,  <14.584364, 15.332248, 25.727890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.418857, 15.212044, 25.853422>,  <14.143011, 15.011703, 26.062641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.418857, 15.212044, 25.853422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576765, -0.056906, -0.814926,
		-0.437921, 0.863661, 0.249630,
		0.689614, 0.500851, -0.523049,
		14.625741, 15.362299, 25.696507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.768491, 15.444634, 25.603844>,  <14.143011, 15.011703, 26.062641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.768491, 15.444634, 25.603844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.132522, 15.465571, 25.439396>,  <14.350941, 15.478133, 25.340727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.132522, 15.465571, 25.439396>,  <13.768491, 15.444634, 25.603844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132522, 15.465571, 25.439396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407379, -0.069334, -0.910624,
		-0.076168, 0.996220, -0.041776,
		0.910078, 0.052342, -0.411119,
		14.405545, 15.481274, 25.316059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830615, 15.905932, 25.054605>,  <13.768491, 15.444634, 25.603844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830615, 15.905932, 25.054605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135071, 15.672061, 24.942308>,  <14.317744, 15.531738, 24.874929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.135071, 15.672061, 24.942308>,  <13.830615, 15.905932, 25.054605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135071, 15.672061, 24.942308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347349, -0.001911, -0.937734,
		0.547737, 0.811262, -0.204542,
		0.761139, -0.584679, -0.280744,
		14.363413, 15.496657, 24.858086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832315, 16.674385, 24.997173>,  <13.830615, 15.905932, 25.054605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832315, 16.674385, 24.997173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.443495, 16.736206, 25.067862>,  <13.210202, 16.773298, 25.110275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.443495, 16.736206, 25.067862>,  <13.832315, 16.674385, 24.997173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.443495, 16.736206, 25.067862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157070, -0.131327, 0.978817,
		0.174487, 0.979217, 0.103381,
		-0.972051, 0.154553, 0.176721,
		13.151879, 16.782572, 25.120878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.780429, 17.222122, 25.489283>,  <13.832315, 16.674385, 24.997173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.780429, 17.222122, 25.489283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.419406, 17.050194, 25.499420>,  <13.202792, 16.947037, 25.505503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.419406, 17.050194, 25.499420>,  <13.780429, 17.222122, 25.489283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419406, 17.050194, 25.499420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007951, 0.075485, 0.997115,
		-0.430494, 0.899753, -0.071547,
		-0.902558, -0.429821, 0.025342,
		13.148639, 16.921247, 25.507023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460363, 17.586048, 25.978973>,  <13.780429, 17.222122, 25.489283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460363, 17.586048, 25.978973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.231150, 17.258266, 25.983496>,  <13.093621, 17.061598, 25.986210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.231150, 17.258266, 25.983496>,  <13.460363, 17.586048, 25.978973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231150, 17.258266, 25.983496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222903, -0.142569, 0.964359,
		-0.788635, 0.555131, 0.264356,
		-0.573035, -0.819453, 0.011306,
		13.059239, 17.012430, 25.986887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.919867, 17.616560, 26.471378>,  <13.460363, 17.586048, 25.978973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.919867, 17.616560, 26.471378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.953484, 17.224714, 26.398388>,  <12.973654, 16.989607, 26.354593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.953484, 17.224714, 26.398388>,  <12.919867, 17.616560, 26.471378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.953484, 17.224714, 26.398388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001570, -0.183253, 0.983065,
		-0.996461, -0.082332, -0.016939,
		0.084042, -0.979612, -0.182476,
		12.978696, 16.930830, 26.343645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.388621, 17.349445, 26.928570>,  <12.919867, 17.616560, 26.471378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.388621, 17.349445, 26.928570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.640541, 17.065254, 26.802982>,  <12.791693, 16.894739, 26.727629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.640541, 17.065254, 26.802982>,  <12.388621, 17.349445, 26.928570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640541, 17.065254, 26.802982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097314, -0.328851, 0.939355,
		-0.770638, -0.622159, -0.137970,
		0.629799, -0.710476, -0.313969,
		12.829481, 16.852112, 26.708792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304090, 16.800112, 27.410337>,  <12.388621, 17.349445, 26.928570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304090, 16.800112, 27.410337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.659868, 16.740845, 27.237394>,  <12.873335, 16.705284, 27.133629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.659868, 16.740845, 27.237394>,  <12.304090, 16.800112, 27.410337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659868, 16.740845, 27.237394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386495, -0.261073, 0.884569,
		-0.243946, -0.953879, -0.174942,
		0.889445, -0.148173, -0.432358,
		12.926702, 16.696394, 27.107687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741307, 16.345413, 27.884970>,  <12.304090, 16.800112, 27.410337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741307, 16.345413, 27.884970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.032878, 16.474773, 27.643616>,  <13.207821, 16.552389, 27.498802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.032878, 16.474773, 27.643616>,  <12.741307, 16.345413, 27.884970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032878, 16.474773, 27.643616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644783, -0.028153, 0.763847,
		0.230044, -0.945842, -0.229047,
		0.728927, 0.323404, -0.603387,
		13.251556, 16.571795, 27.462599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267816, 15.852374, 27.916574>,  <12.741307, 16.345413, 27.884970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267816, 15.852374, 27.916574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.403509, 16.214176, 27.813198>,  <13.484925, 16.431257, 27.751171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.403509, 16.214176, 27.813198>,  <13.267816, 15.852374, 27.916574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.403509, 16.214176, 27.813198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656418, -0.030816, 0.753768,
		0.673822, -0.425350, -0.604187,
		0.339233, 0.904504, -0.258443,
		13.505280, 16.485527, 27.735664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.022278, 15.830633, 28.115744>,  <13.267816, 15.852374, 27.916574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.022278, 15.830633, 28.115744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.920941, 16.214790, 28.069330>,  <13.860140, 16.445284, 28.041481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.920941, 16.214790, 28.069330>,  <14.022278, 15.830633, 28.115744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920941, 16.214790, 28.069330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588776, 0.248251, 0.769229,
		0.767568, 0.126559, -0.628349,
		-0.253341, 0.960393, -0.116035,
		13.844939, 16.502909, 28.034519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.640188, 16.186319, 28.428312>,  <14.022278, 15.830633, 28.115744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.640188, 16.186319, 28.428312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.370275, 16.478958, 28.389467>,  <14.208326, 16.654541, 28.366159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.370275, 16.478958, 28.389467>,  <14.640188, 16.186319, 28.428312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370275, 16.478958, 28.389467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402999, 0.475504, 0.781977,
		0.618271, 0.488528, -0.615696,
		-0.674784, 0.731598, -0.097114,
		14.167839, 16.698437, 28.360332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983418, 16.883211, 28.304298>,  <14.640188, 16.186319, 28.428312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983418, 16.883211, 28.304298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638883, 16.960081, 28.492411>,  <14.432161, 17.006203, 28.605278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638883, 16.960081, 28.492411>,  <14.983418, 16.883211, 28.304298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638883, 16.960081, 28.492411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495331, 0.523368, 0.693349,
		-0.112885, 0.830153, -0.545988,
		-0.861339, 0.192175, 0.470281,
		14.380481, 17.017735, 28.633495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107502, 17.446615, 28.515270>,  <14.983418, 16.883211, 28.304298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.107502, 17.446615, 28.515270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.792674, 17.335911, 28.735788>,  <14.603778, 17.269487, 28.868099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.792674, 17.335911, 28.735788>,  <15.107502, 17.446615, 28.515270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792674, 17.335911, 28.735788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433368, 0.387922, 0.813455,
		-0.438993, 0.879158, -0.185381,
		-0.787069, -0.276762, 0.551294,
		14.556553, 17.252882, 28.901176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113764, 18.010113, 29.065788>,  <15.107502, 17.446615, 28.515270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113764, 18.010113, 29.065788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.870665, 17.724045, 29.203873>,  <14.724805, 17.552404, 29.286724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.870665, 17.724045, 29.203873>,  <15.113764, 18.010113, 29.065788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.870665, 17.724045, 29.203873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122316, 0.345218, 0.930518,
		-0.784653, 0.607746, -0.122329,
		-0.607749, -0.715171, 0.345213,
		14.688340, 17.509493, 29.307436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517708, 18.299776, 29.452051>,  <15.113764, 18.010113, 29.065788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517708, 18.299776, 29.452051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.577093, 17.927984, 29.587124>,  <14.612724, 17.704910, 29.668167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.577093, 17.927984, 29.587124>,  <14.517708, 18.299776, 29.452051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.577093, 17.927984, 29.587124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140691, 0.357844, 0.923122,
		-0.978859, -0.089541, 0.183896,
		0.148463, -0.929478, 0.337681,
		14.621633, 17.649141, 29.688429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075437, 18.960159, 29.696945>,  <14.517708, 18.299776, 29.452051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075437, 18.960159, 29.696945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100916, 19.357042, 29.654110>,  <14.116203, 19.595173, 29.628408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100916, 19.357042, 29.654110>,  <14.075437, 18.960159, 29.696945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100916, 19.357042, 29.654110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187947, -0.093461, -0.977722,
		-0.980112, 0.082405, 0.180529,
		0.063697, 0.992207, -0.107090,
		14.120025, 19.654705, 29.621983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409403, 19.263638, 29.441139>,  <14.075437, 18.960159, 29.696945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409403, 19.263638, 29.441139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.701189, 19.518930, 29.342720>,  <13.876261, 19.672106, 29.283669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.701189, 19.518930, 29.342720>,  <13.409403, 19.263638, 29.441139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.701189, 19.518930, 29.342720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199206, -0.145894, -0.969037,
		-0.654368, 0.755892, 0.020715,
		0.729465, 0.638233, -0.246046,
		13.920029, 19.710400, 29.268906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063808, 19.642702, 28.975567>,  <13.409403, 19.263638, 29.441139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.063808, 19.642702, 28.975567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.456088, 19.695528, 28.917891>,  <13.691456, 19.727222, 28.883286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.456088, 19.695528, 28.917891>,  <13.063808, 19.642702, 28.975567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.456088, 19.695528, 28.917891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135364, -0.073577, -0.988060,
		-0.141096, 0.988507, -0.054280,
		0.980698, 0.132064, -0.144189,
		13.750298, 19.735147, 28.874634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.236293, 20.340969, 28.619158>,  <13.063808, 19.642702, 28.975567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.236293, 20.340969, 28.619158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.512070, 20.062677, 28.538532>,  <13.677536, 19.895702, 28.490158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.512070, 20.062677, 28.538532>,  <13.236293, 20.340969, 28.619158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.512070, 20.062677, 28.538532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223170, 0.060704, -0.972888,
		0.689103, 0.715733, -0.113414,
		0.689443, -0.695731, -0.201562,
		13.718903, 19.853958, 28.478064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261934, 20.504370, 28.020744>,  <13.236293, 20.340969, 28.619158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261934, 20.504370, 28.020744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.503269, 20.185808, 28.037357>,  <13.648070, 19.994671, 28.047325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.503269, 20.185808, 28.037357>,  <13.261934, 20.504370, 28.020744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503269, 20.185808, 28.037357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185061, -0.190475, -0.964091,
		0.775717, 0.573986, -0.262304,
		0.603338, -0.796404, 0.041532,
		13.684271, 19.946888, 28.049816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907503, 20.564455, 27.644032>,  <13.261934, 20.504370, 28.020744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907503, 20.564455, 27.644032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.832094, 20.171972, 27.660475>,  <13.786849, 19.936481, 27.670340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.832094, 20.171972, 27.660475>,  <13.907503, 20.564455, 27.644032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832094, 20.171972, 27.660475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053819, -0.031472, -0.998055,
		0.980593, -0.190367, -0.046874,
		-0.188522, -0.981208, 0.041106,
		13.775537, 19.877609, 27.672806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408814, 20.200708, 27.290972>,  <13.907503, 20.564455, 27.644032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.408814, 20.200708, 27.290972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.120938, 19.922991, 27.291544>,  <13.948213, 19.756361, 27.291887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.120938, 19.922991, 27.291544>,  <14.408814, 20.200708, 27.290972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120938, 19.922991, 27.291544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042576, 0.042076, -0.998207,
		0.692988, -0.718461, -0.059842,
		-0.719691, -0.694293, 0.001431,
		13.905031, 19.714703, 27.291973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.462808, 19.901600, 26.561008>,  <14.408814, 20.200708, 27.290972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.462808, 19.901600, 26.561008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.123117, 19.745054, 26.702799>,  <13.919304, 19.651127, 26.787872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.123117, 19.745054, 26.702799>,  <14.462808, 19.901600, 26.561008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.123117, 19.745054, 26.702799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310377, -0.173124, -0.934716,
		0.427182, -0.903805, 0.025551,
		-0.849224, -0.391363, 0.354476,
		13.868350, 19.627645, 26.809141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332572, 19.300093, 26.132790>,  <14.462808, 19.901600, 26.561008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332572, 19.300093, 26.132790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.989434, 19.407015, 26.308357>,  <13.783551, 19.471169, 26.413698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.989434, 19.407015, 26.308357>,  <14.332572, 19.300093, 26.132790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989434, 19.407015, 26.308357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454911, 0.002357, -0.890534,
		-0.239080, -0.963609, 0.119579,
		-0.857844, 0.267307, 0.438920,
		13.732081, 19.487207, 26.440033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893126, 18.814308, 25.945091>,  <14.332572, 19.300093, 26.132790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893126, 18.814308, 25.945091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.655869, 19.121719, 26.041052>,  <13.513516, 19.306166, 26.098629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.655869, 19.121719, 26.041052>,  <13.893126, 18.814308, 25.945091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.655869, 19.121719, 26.041052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458070, -0.077095, -0.885566,
		-0.662085, -0.635157, 0.397767,
		-0.593139, 0.768526, 0.239903,
		13.477927, 19.352278, 26.113024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.223764, 18.614601, 25.758928>,  <13.893126, 18.814308, 25.945091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.223764, 18.614601, 25.758928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.217532, 19.013988, 25.780167>,  <13.213793, 19.253620, 25.792910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.217532, 19.013988, 25.780167>,  <13.223764, 18.614601, 25.758928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.217532, 19.013988, 25.780167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504203, 0.038012, -0.862749,
		-0.863445, -0.040214, 0.502838,
		-0.015581, 0.998468, 0.053097,
		13.212858, 19.313528, 25.796095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.610234, 18.763176, 25.566257>,  <13.223764, 18.614601, 25.758928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.610234, 18.763176, 25.566257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.798155, 19.113256, 25.520115>,  <12.910907, 19.323305, 25.492430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.798155, 19.113256, 25.520115>,  <12.610234, 18.763176, 25.566257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798155, 19.113256, 25.520115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480939, 0.144176, -0.864819,
		-0.740260, 0.461773, 0.488653,
		0.469801, 0.875202, -0.115357,
		12.939095, 19.375816, 25.485508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123925, 19.153166, 25.210939>,  <12.610234, 18.763176, 25.566257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123925, 19.153166, 25.210939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.465577, 19.348375, 25.139053>,  <12.670568, 19.465500, 25.095922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.465577, 19.348375, 25.139053>,  <12.123925, 19.153166, 25.210939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.465577, 19.348375, 25.139053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276628, 0.133713, -0.951629,
		-0.440385, 0.862529, 0.249209,
		0.854130, 0.488022, -0.179714,
		12.721816, 19.494781, 25.085138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986923, 19.849913, 24.891930>,  <12.123925, 19.153166, 25.210939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986923, 19.849913, 24.891930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.339387, 19.703476, 24.772240>,  <12.550865, 19.615614, 24.700426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.339387, 19.703476, 24.772240>,  <11.986923, 19.849913, 24.891930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339387, 19.703476, 24.772240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324529, -0.008039, -0.945842,
		0.343859, 0.930545, -0.125891,
		0.881160, -0.366091, -0.299224,
		12.603735, 19.593649, 24.682472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.700299, 5.263479, 10.565957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.012898, 5.383973, 10.784505>,  <10.200458, 5.456269, 10.915633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.012898, 5.383973, 10.784505>,  <9.700299, 5.263479, 10.565957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.012898, 5.383973, 10.784505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508472, 0.814980, 0.277962,
		-0.361548, -0.495040, 0.790075,
		0.781498, 0.301235, 0.546368,
		10.247348, 5.474343, 10.948416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.962607, 4.895674, 11.113097>,  <9.700299, 5.263479, 10.565957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.962607, 4.895674, 11.113097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.126957, 5.183446, 11.337098>,  <10.225567, 5.356110, 11.471498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.126957, 5.183446, 11.337098>,  <9.962607, 4.895674, 11.113097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.126957, 5.183446, 11.337098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897778, 0.426185, 0.111182,
		-0.158676, -0.548439, 0.820997,
		0.410873, 0.719432, 0.560002,
		10.250219, 5.399276, 11.505098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.469358, 5.113571, 11.613293>,  <9.962607, 4.895674, 11.113097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.469358, 5.113571, 11.613293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.722480, 5.423147, 11.622884>,  <9.874352, 5.608893, 11.628638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.722480, 5.423147, 11.622884>,  <9.469358, 5.113571, 11.613293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.722480, 5.423147, 11.622884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773689, 0.630746, 0.059713,
		0.031090, -0.056338, 0.997928,
		0.632803, 0.773942, 0.023978,
		9.912320, 5.655330, 11.630077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.412991, 5.533332, 12.184896>,  <9.469358, 5.113571, 11.613293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.412991, 5.533332, 12.184896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.566910, 5.764354, 11.896907>,  <9.659261, 5.902967, 11.724113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.566910, 5.764354, 11.896907>,  <9.412991, 5.533332, 12.184896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.566910, 5.764354, 11.896907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787387, 0.612420, 0.070450,
		0.481614, 0.539787, 0.690418,
		0.384798, 0.577556, -0.719972,
		9.682349, 5.937621, 11.680915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.538630, 6.199654, 12.382878>,  <9.412991, 5.533332, 12.184896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.538630, 6.199654, 12.382878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.447712, 6.189016, 11.993493>,  <9.393161, 6.182634, 11.759862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.447712, 6.189016, 11.993493>,  <9.538630, 6.199654, 12.382878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.447712, 6.189016, 11.993493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843581, 0.504792, 0.183181,
		0.486525, 0.862831, -0.137172,
		-0.227297, -0.026593, -0.973462,
		9.379522, 6.181038, 11.701454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.418012, 6.860770, 11.922559>,  <9.538630, 6.199654, 12.382878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.418012, 6.860770, 11.922559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.181730, 6.552316, 11.827548>,  <9.039962, 6.367243, 11.770541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.181730, 6.552316, 11.827548>,  <9.418012, 6.860770, 11.922559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.181730, 6.552316, 11.827548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805243, 0.544585, 0.234544,
		-0.051511, 0.329813, -0.942640,
		-0.590703, -0.771136, -0.237528,
		9.004519, 6.320975, 11.756289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.194256, 6.861255, 11.997446>,  <9.418012, 6.860770, 11.922559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.194256, 6.861255, 11.997446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.297010, 7.230139, 12.113059>,  <10.358663, 7.451469, 12.182427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.297010, 7.230139, 12.113059>,  <10.194256, 6.861255, 11.997446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.297010, 7.230139, 12.113059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560222, -0.101602, 0.822088,
		0.787503, -0.373105, 0.490541,
		0.256885, 0.922209, 0.289033,
		10.374076, 7.506802, 12.199769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.464614, 6.799357, 12.580819>,  <10.194256, 6.861255, 11.997446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.464614, 6.799357, 12.580819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.290386, 7.158464, 12.554617>,  <10.185849, 7.373929, 12.538896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.290386, 7.158464, 12.554617>,  <10.464614, 6.799357, 12.580819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.290386, 7.158464, 12.554617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621427, -0.247252, 0.743434,
		0.651235, 0.364524, 0.665594,
		-0.435569, 0.897769, -0.065506,
		10.159716, 7.427795, 12.534966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.794159, 7.184842, 13.037956>,  <10.464614, 6.799357, 12.580819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.794159, 7.184842, 13.037956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.750491, 7.536350, 12.852119>,  <10.724291, 7.747255, 12.740618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.750491, 7.536350, 12.852119>,  <10.794159, 7.184842, 13.037956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.750491, 7.536350, 12.852119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623077, 0.303672, 0.720804,
		0.774504, 0.368166, 0.514390,
		-0.109170, 0.878770, -0.464592,
		10.717740, 7.799981, 12.712742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.879330, 7.745516, 13.490414>,  <10.794159, 7.184842, 13.037956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.879330, 7.745516, 13.490414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.651443, 7.879322, 13.190142>,  <10.514710, 7.959605, 13.009978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.651443, 7.879322, 13.190142>,  <10.879330, 7.745516, 13.490414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.651443, 7.879322, 13.190142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649869, 0.375769, 0.660657,
		0.503081, 0.864233, 0.003307,
		-0.569719, 0.334513, -0.750681,
		10.480527, 7.979676, 12.964937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.722466, 8.344276, 13.605950>,  <10.879330, 7.745516, 13.490414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.722466, 8.344276, 13.605950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.444743, 8.271811, 13.327349>,  <10.278110, 8.228331, 13.160188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.444743, 8.271811, 13.327349>,  <10.722466, 8.344276, 13.605950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444743, 8.271811, 13.327349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651081, 0.570486, 0.500639,
		0.306648, 0.801078, -0.514044,
		-0.694306, -0.181165, -0.696505,
		10.236451, 8.217462, 13.118398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.402755, 8.937511, 13.464488>,  <10.722466, 8.344276, 13.605950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.402755, 8.937511, 13.464488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.135951, 8.652893, 13.376122>,  <9.975869, 8.482122, 13.323103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.135951, 8.652893, 13.376122>,  <10.402755, 8.937511, 13.464488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.135951, 8.652893, 13.376122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691293, 0.480465, 0.539692,
		-0.277875, 0.512694, -0.812361,
		-0.667008, -0.711546, -0.220913,
		9.935848, 8.439429, 13.309849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.914397, 9.296775, 13.106071>,  <10.402755, 8.937511, 13.464488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.914397, 9.296775, 13.106071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.736879, 8.973651, 13.261243>,  <9.630369, 8.779777, 13.354346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.736879, 8.973651, 13.261243>,  <9.914397, 9.296775, 13.106071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.736879, 8.973651, 13.261243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724802, 0.578140, 0.374721,
		-0.526981, -0.114873, -0.842078,
		-0.443794, -0.807810, 0.387929,
		9.603742, 8.731308, 13.377622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.214592, 9.422640, 12.949223>,  <9.914397, 9.296775, 13.106071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.214592, 9.422640, 12.949223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.158612, 9.123299, 13.208570>,  <9.125025, 8.943694, 13.364179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.158612, 9.123299, 13.208570>,  <9.214592, 9.422640, 12.949223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.158612, 9.123299, 13.208570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910168, 0.355065, 0.213361,
		-0.389883, -0.560265, -0.730818,
		-0.139949, -0.748353, 0.648369,
		9.116628, 8.898793, 13.403081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.574881, 9.245134, 12.941290>,  <9.214592, 9.422640, 12.949223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.574881, 9.245134, 12.941290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.649456, 9.085620, 13.300447>,  <8.694201, 8.989911, 13.515941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.649456, 9.085620, 13.300447>,  <8.574881, 9.245134, 12.941290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.649456, 9.085620, 13.300447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773014, 0.504522, 0.384586,
		-0.606374, -0.765785, -0.214205,
		0.186439, -0.398787, 0.897891,
		8.705388, 8.965983, 13.569814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.949829, 8.959223, 13.211007>,  <8.574881, 9.245134, 12.941290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.949829, 8.959223, 13.211007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.190189, 9.030435, 13.522705>,  <8.334406, 9.073162, 13.709724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.190189, 9.030435, 13.522705>,  <7.949829, 8.959223, 13.211007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.190189, 9.030435, 13.522705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688813, 0.609932, 0.391817,
		-0.405532, -0.772198, 0.489137,
		0.600900, 0.178029, 0.779246,
		8.370460, 9.083843, 13.756479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.503197, 8.828519, 13.897077>,  <7.949829, 8.959223, 13.211007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.503197, 8.828519, 13.897077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.815399, 9.049479, 14.014153>,  <8.002720, 9.182055, 14.084399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.815399, 9.049479, 14.014153>,  <7.503197, 8.828519, 13.897077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.815399, 9.049479, 14.014153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623596, 0.654969, 0.426783,
		0.044050, -0.515628, 0.855680,
		0.780505, 0.552399, 0.292692,
		8.049550, 9.215199, 14.101961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.355667, 8.960564, 14.612963>,  <7.503197, 8.828519, 13.897077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.355667, 8.960564, 14.612963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.642196, 9.223956, 14.520629>,  <7.814114, 9.381991, 14.465229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.642196, 9.223956, 14.520629>,  <7.355667, 8.960564, 14.612963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.642196, 9.223956, 14.520629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501527, 0.715877, 0.485790,
		0.485132, -0.232213, 0.843045,
		0.716323, 0.658481, -0.230833,
		7.857093, 9.421500, 14.451379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.581577, 9.245694, 15.191823>,  <7.355667, 8.960564, 14.612963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.581577, 9.245694, 15.191823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.714046, 9.517254, 14.929702>,  <7.793527, 9.680189, 14.772429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.714046, 9.517254, 14.929702>,  <7.581577, 9.245694, 15.191823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.714046, 9.517254, 14.929702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275847, 0.733812, 0.620829,
		0.902349, -0.024837, 0.430290,
		0.331171, 0.678899, -0.655303,
		7.813397, 9.720923, 14.733110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.847747, 9.783489, 15.595729>,  <7.581577, 9.245694, 15.191823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.847747, 9.783489, 15.595729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.762998, 9.936102, 15.235830>,  <7.712148, 10.027670, 15.019892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.762998, 9.936102, 15.235830>,  <7.847747, 9.783489, 15.595729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.762998, 9.936102, 15.235830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152068, 0.896563, 0.415993,
		0.965393, 0.224961, -0.131940,
		-0.211875, 0.381533, -0.899746,
		7.699435, 10.050562, 14.965907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.268327, 10.358070, 15.540300>,  <7.847747, 9.783489, 15.595729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.268327, 10.358070, 15.540300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.951413, 10.408894, 15.301590>,  <7.761264, 10.439387, 15.158364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.951413, 10.408894, 15.301590>,  <8.268327, 10.358070, 15.540300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.951413, 10.408894, 15.301590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213093, 0.858868, 0.465765,
		0.571731, 0.496187, -0.653393,
		-0.792285, 0.127059, -0.596775,
		7.713727, 10.447011, 15.122558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.225490, 11.054077, 15.565305>,  <8.268327, 10.358070, 15.540300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.225490, 11.054077, 15.565305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.877437, 10.966334, 15.388782>,  <7.668605, 10.913689, 15.282867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.877437, 10.966334, 15.388782>,  <8.225490, 11.054077, 15.565305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.877437, 10.966334, 15.388782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303261, 0.944187, 0.128622,
		0.388464, 0.245750, -0.888090,
		-0.870132, -0.219358, -0.441308,
		7.616398, 10.900527, 15.256389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.153708, 11.618930, 15.087789>,  <8.225490, 11.054077, 15.565305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.153708, 11.618930, 15.087789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.786926, 11.465932, 15.133203>,  <7.566857, 11.374133, 15.160451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.786926, 11.465932, 15.133203>,  <8.153708, 11.618930, 15.087789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.786926, 11.465932, 15.133203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384161, 0.923234, 0.007691,
		-0.107762, -0.036564, -0.993504,
		-0.916956, -0.382495, 0.113536,
		7.511839, 11.351184, 15.167263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.721094, 11.826715, 14.536495>,  <8.153708, 11.618930, 15.087789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.721094, 11.826715, 14.536495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.493178, 11.724912, 14.849051>,  <7.356429, 11.663830, 15.036584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.493178, 11.724912, 14.849051>,  <7.721094, 11.826715, 14.536495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.493178, 11.724912, 14.849051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361409, 0.931554, 0.039881,
		-0.738055, -0.259677, -0.622770,
		-0.569788, -0.254509, 0.781388,
		7.322242, 11.648560, 15.083467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.982305, 12.073050, 14.344250>,  <7.721094, 11.826715, 14.536495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.982305, 12.073050, 14.344250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.011438, 12.039357, 14.741762>,  <7.028919, 12.019141, 14.980269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.011438, 12.039357, 14.741762>,  <6.982305, 12.073050, 14.344250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.011438, 12.039357, 14.741762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239669, 0.965750, 0.099424,
		-0.968119, -0.245420, 0.050152,
		0.072834, -0.084234, 0.993780,
		7.033288, 12.014087, 15.039896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.340081, 12.362103, 14.643336>,  <6.982305, 12.073050, 14.344250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.340081, 12.362103, 14.643336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.616800, 12.388763, 14.930940>,  <6.782832, 12.404760, 15.103501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.616800, 12.388763, 14.930940>,  <6.340081, 12.362103, 14.643336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.616800, 12.388763, 14.930940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325174, 0.917810, 0.227786,
		-0.644730, -0.391385, 0.656613,
		0.691799, 0.066653, 0.719007,
		6.824340, 12.408759, 15.146642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.997528, 12.760311, 15.165648>,  <6.340081, 12.362103, 14.643336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.997528, 12.760311, 15.165648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.388422, 12.787917, 15.245898>,  <6.622958, 12.804481, 15.294048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.388422, 12.787917, 15.245898>,  <5.997528, 12.760311, 15.165648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.388422, 12.787917, 15.245898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119600, 0.960245, 0.252239,
		-0.175240, -0.270492, 0.946639,
		0.977234, 0.069015, 0.200624,
		6.681592, 12.808621, 15.306086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.043181, 13.229491, 15.694807>,  <5.997528, 12.760311, 15.165648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.043181, 13.229491, 15.694807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.429607, 13.190376, 15.599177>,  <6.661463, 13.166907, 15.541800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.429607, 13.190376, 15.599177>,  <6.043181, 13.229491, 15.694807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.429607, 13.190376, 15.599177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154496, 0.960508, 0.231422,
		0.207001, -0.260504, 0.943021,
		0.966065, -0.097788, -0.239073,
		6.719427, 13.161040, 15.527455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.512882, 13.607279, 16.217739>,  <6.043181, 13.229491, 15.694807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.512882, 13.607279, 16.217739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.684675, 13.571692, 15.858267>,  <6.787751, 13.550341, 15.642583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.684675, 13.571692, 15.858267>,  <6.512882, 13.607279, 16.217739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.684675, 13.571692, 15.858267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187851, 0.982169, -0.007456,
		0.883322, -0.165616, 0.438537,
		0.429483, -0.088965, -0.898682,
		6.813519, 13.545003, 15.588662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.960092, 14.099309, 16.229532>,  <6.512882, 13.607279, 16.217739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.960092, 14.099309, 16.229532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.967798, 14.025445, 15.836486>,  <6.972421, 13.981127, 15.600658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.967798, 14.025445, 15.836486>,  <6.960092, 14.099309, 16.229532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.967798, 14.025445, 15.836486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373358, 0.913029, -0.164264,
		0.927488, -0.363702, 0.086533,
		0.019264, -0.184660, -0.982614,
		6.973577, 13.970047, 15.541701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.637569, 14.222584, 16.010958>,  <6.960092, 14.099309, 16.229532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.637569, 14.222584, 16.010958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.367041, 14.265044, 15.719391>,  <7.204723, 14.290521, 15.544451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.367041, 14.265044, 15.719391>,  <7.637569, 14.222584, 16.010958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.367041, 14.265044, 15.719391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413728, 0.873469, -0.256673,
		0.609441, -0.475167, -0.634664,
		-0.676322, 0.106152, -0.728917,
		7.164144, 14.296889, 15.500715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.068873, 14.470604, 16.594593>,  <7.637569, 14.222584, 16.010958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.068873, 14.470604, 16.594593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.425263, 14.523452, 16.768354>,  <8.639097, 14.555161, 16.872612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.425263, 14.523452, 16.768354>,  <8.068873, 14.470604, 16.594593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.425263, 14.523452, 16.768354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273203, -0.920154, -0.280493,
		0.362660, 0.368593, -0.855930,
		0.890976, 0.132120, 0.434404,
		8.692556, 14.563087, 16.898676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.465366, 14.089861, 16.156527>,  <8.068873, 14.470604, 16.594593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.465366, 14.089861, 16.156527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.672524, 14.126884, 16.496695>,  <8.796820, 14.149098, 16.700796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.672524, 14.126884, 16.496695>,  <8.465366, 14.089861, 16.156527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.672524, 14.126884, 16.496695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509358, -0.832055, -0.219634,
		0.687269, 0.546916, -0.478063,
		0.517896, 0.092558, 0.850421,
		8.827893, 14.154652, 16.751822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.169450, 14.143963, 15.991190>,  <8.465366, 14.089861, 16.156527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.169450, 14.143963, 15.991190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.177462, 14.018679, 16.370979>,  <9.182269, 13.943508, 16.598852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.177462, 14.018679, 16.370979>,  <9.169450, 14.143963, 15.991190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.177462, 14.018679, 16.370979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558337, -0.784278, -0.270496,
		0.829372, 0.535543, 0.159169,
		0.020029, -0.313211, 0.949472,
		9.183471, 13.924715, 16.655821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.781504, 13.705094, 16.005356>,  <9.169450, 14.143963, 15.991190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.781504, 13.705094, 16.005356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.597820, 13.611941, 16.348259>,  <9.487610, 13.556049, 16.554001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.597820, 13.611941, 16.348259>,  <9.781504, 13.705094, 16.005356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.597820, 13.611941, 16.348259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427107, -0.904045, -0.016804,
		0.778914, 0.358425, 0.514611,
		-0.459209, -0.232883, 0.857259,
		9.460057, 13.542076, 16.605436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.265486, 13.505789, 16.574896>,  <9.781504, 13.705094, 16.005356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.265486, 13.505789, 16.574896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.916014, 13.360001, 16.703794>,  <9.706330, 13.272528, 16.781134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.916014, 13.360001, 16.703794>,  <10.265486, 13.505789, 16.574896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.916014, 13.360001, 16.703794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439167, -0.875844, 0.200074,
		0.209317, 0.316321, 0.925271,
		-0.873681, -0.364470, 0.322247,
		9.653910, 13.250660, 16.800468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.432505, 13.102826, 17.240490>,  <10.265486, 13.505789, 16.574896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.432505, 13.102826, 17.240490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.090163, 12.967459, 17.084036>,  <9.884758, 12.886238, 16.990164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.090163, 12.967459, 17.084036>,  <10.432505, 13.102826, 17.240490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.090163, 12.967459, 17.084036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264019, -0.936136, 0.232258,
		-0.444757, 0.095511, 0.890544,
		-0.855854, -0.338419, -0.391136,
		9.833407, 12.865933, 16.966696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.262551, 12.552863, 17.676006>,  <10.432505, 13.102826, 17.240490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.262551, 12.552863, 17.676006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.035311, 12.506631, 17.350086>,  <9.898967, 12.478891, 17.154533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.035311, 12.506631, 17.350086>,  <10.262551, 12.552863, 17.676006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.035311, 12.506631, 17.350086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308610, -0.947756, -0.080730,
		-0.762903, -0.297319, 0.574092,
		-0.568102, -0.115582, -0.814801,
		9.864881, 12.471956, 17.105646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.015530, 11.962709, 17.863943>,  <10.262551, 12.552863, 17.676006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.015530, 11.962709, 17.863943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.963503, 11.989572, 17.468252>,  <9.932287, 12.005689, 17.230837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.963503, 11.989572, 17.468252>,  <10.015530, 11.962709, 17.863943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.963503, 11.989572, 17.468252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294282, -0.950131, -0.103194,
		-0.946827, -0.304534, 0.103818,
		-0.130067, 0.067155, -0.989228,
		9.924483, 12.009718, 17.171484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.713655, 11.301761, 17.684748>,  <10.015530, 11.962709, 17.863943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.713655, 11.301761, 17.684748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.901305, 11.463127, 17.370504>,  <10.013895, 11.559947, 17.181959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.901305, 11.463127, 17.370504>,  <9.713655, 11.301761, 17.684748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.901305, 11.463127, 17.370504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400967, -0.889891, -0.217530,
		-0.786860, -0.212953, -0.579226,
		0.469124, 0.403416, -0.785607,
		10.042043, 11.584152, 17.134823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.393864, 10.881476, 17.137959>,  <9.713655, 11.301761, 17.684748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.393864, 10.881476, 17.137959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.722605, 11.062194, 16.999140>,  <9.919849, 11.170625, 16.915848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.722605, 11.062194, 16.999140>,  <9.393864, 10.881476, 17.137959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.722605, 11.062194, 16.999140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217671, -0.811979, -0.541581,
		-0.526478, 0.369558, -0.765669,
		0.821852, 0.451794, -0.347046,
		9.969160, 11.197732, 16.895025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.434174, 10.864504, 16.442125>,  <9.393864, 10.881476, 17.137959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.434174, 10.864504, 16.442125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.821157, 10.870840, 16.543140>,  <10.053347, 10.874641, 16.603750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.821157, 10.870840, 16.543140>,  <9.434174, 10.864504, 16.442125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.821157, 10.870840, 16.543140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171241, -0.775752, -0.607359,
		0.186286, 0.630839, -0.753220,
		0.967458, 0.015840, 0.252538,
		10.111394, 10.875592, 16.618902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.773704, 10.732361, 15.843259>,  <9.434174, 10.864504, 16.442125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.773704, 10.732361, 15.843259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.027794, 10.639350, 16.137856>,  <10.180248, 10.583544, 16.314613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.027794, 10.639350, 16.137856>,  <9.773704, 10.732361, 15.843259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.027794, 10.639350, 16.137856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162977, -0.891770, -0.422120,
		0.754935, 0.388172, -0.528578,
		0.635225, -0.232527, 0.736492,
		10.218362, 10.569592, 16.358803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.153823, 10.234632, 15.563262>,  <9.773704, 10.732361, 15.843259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.153823, 10.234632, 15.563262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.289069, 10.163863, 15.932992>,  <10.370217, 10.121402, 16.154829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.289069, 10.163863, 15.932992>,  <10.153823, 10.234632, 15.563262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.289069, 10.163863, 15.932992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282024, -0.917983, -0.278872,
		0.897853, 0.354973, -0.260489,
		0.338116, -0.176922, 0.924324,
		10.390504, 10.110786, 16.210289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.884023, 10.011487, 15.441778>,  <10.153823, 10.234632, 15.563262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.884023, 10.011487, 15.441778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.756809, 9.875613, 15.795834>,  <10.680481, 9.794088, 16.008266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.756809, 9.875613, 15.795834>,  <10.884023, 10.011487, 15.441778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756809, 9.875613, 15.795834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180368, -0.938238, -0.295256,
		0.930764, 0.065749, 0.359660,
		-0.318034, -0.339685, 0.885138,
		10.661399, 9.773707, 16.061375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365913, 9.547165, 15.752822>,  <10.884023, 10.011487, 15.441778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365913, 9.547165, 15.752822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.029719, 9.435396, 15.938514>,  <10.828003, 9.368335, 16.049929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.029719, 9.435396, 15.938514>,  <11.365913, 9.547165, 15.752822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.029719, 9.435396, 15.938514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168923, -0.949199, -0.265492,
		0.514830, -0.144724, 0.844989,
		-0.840485, -0.279421, 0.464229,
		10.777574, 9.351570, 16.077782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464940, 8.854167, 15.910407>,  <11.365913, 9.547165, 15.752822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464940, 8.854167, 15.910407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.072069, 8.900716, 15.969446>,  <10.836347, 8.928645, 16.004869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.072069, 8.900716, 15.969446>,  <11.464940, 8.854167, 15.910407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.072069, 8.900716, 15.969446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157506, -0.938099, -0.308484,
		0.102563, -0.326233, 0.939709,
		-0.982178, 0.116371, 0.147598,
		10.777416, 8.935627, 16.013725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298184, 8.200674, 16.214457>,  <11.464940, 8.854167, 15.910407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.298184, 8.200674, 16.214457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.951326, 8.361303, 16.096609>,  <10.743212, 8.457681, 16.025902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.951326, 8.361303, 16.096609>,  <11.298184, 8.200674, 16.214457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.951326, 8.361303, 16.096609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332859, -0.907290, -0.256963,
		-0.370492, -0.124758, 0.920419,
		-0.867145, 0.401573, -0.294617,
		10.691183, 8.481775, 16.008224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.809429, 7.784854, 16.512600>,  <11.298184, 8.200674, 16.214457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.809429, 7.784854, 16.512600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.658005, 7.974131, 16.194410>,  <10.567150, 8.087697, 16.003496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.658005, 7.974131, 16.194410>,  <10.809429, 7.784854, 16.512600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.658005, 7.974131, 16.194410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278409, -0.877851, -0.389700,
		-0.882706, 0.073936, 0.464072,
		-0.378574, 0.473193, -0.795469,
		10.544436, 8.116088, 15.955768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.144170, 7.642069, 16.528135>,  <10.809429, 7.784854, 16.512600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.144170, 7.642069, 16.528135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.200693, 7.734946, 16.143194>,  <10.234608, 7.790671, 15.912230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.200693, 7.734946, 16.143194>,  <10.144170, 7.642069, 16.528135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.200693, 7.734946, 16.143194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435611, -0.858352, -0.271062,
		-0.888974, 0.457514, -0.020149,
		0.141309, 0.232190, -0.962351,
		10.243086, 7.804603, 15.854489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.573684, 7.368284, 16.094585>,  <10.144170, 7.642069, 16.528135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.573684, 7.368284, 16.094585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.872924, 7.395150, 15.830515>,  <10.052467, 7.411270, 15.672072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.872924, 7.395150, 15.830515>,  <9.573684, 7.368284, 16.094585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.872924, 7.395150, 15.830515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325862, -0.829468, -0.453648,
		-0.578067, 0.554501, -0.598638,
		0.748100, 0.067166, -0.660179,
		10.097354, 7.415300, 15.632462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.316883, 7.337399, 15.389822>,  <9.573684, 7.368284, 16.094585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.316883, 7.337399, 15.389822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.698141, 7.217604, 15.372757>,  <9.926896, 7.145727, 15.362518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.698141, 7.217604, 15.372757>,  <9.316883, 7.337399, 15.389822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.698141, 7.217604, 15.372757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293872, -0.883214, -0.365476,
		0.071776, 0.360889, -0.929843,
		0.953146, -0.299487, -0.042662,
		9.984085, 7.127758, 15.359959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.456162, 23.177483, 27.929922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.625584, 22.816528, 27.961679>,  <15.727237, 22.599957, 27.980734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.625584, 22.816528, 27.961679>,  <15.456162, 23.177483, 27.929922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.625584, 22.816528, 27.961679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235095, 0.194140, 0.952387,
		-0.874833, -0.384722, 0.294375,
		0.423554, -0.902385, 0.079393,
		15.752650, 22.545813, 27.985498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.253890, 22.941303, 28.511745>,  <15.456162, 23.177483, 27.929922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.253890, 22.941303, 28.511745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597271, 22.753971, 28.428104>,  <15.803300, 22.641571, 28.377920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.597271, 22.753971, 28.428104>,  <15.253890, 22.941303, 28.511745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597271, 22.753971, 28.428104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350766, 0.238639, 0.905547,
		-0.374197, -0.850715, 0.369136,
		0.858452, -0.468333, -0.209104,
		15.854807, 22.613472, 28.365374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410439, 22.505867, 29.209082>,  <15.253890, 22.941303, 28.511745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410439, 22.505867, 29.209082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.746889, 22.455372, 28.998720>,  <15.948759, 22.425076, 28.872503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.746889, 22.455372, 28.998720>,  <15.410439, 22.505867, 29.209082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.746889, 22.455372, 28.998720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515412, -0.107562, 0.850165,
		-0.163893, -0.986151, -0.025407,
		0.841124, -0.126241, -0.525903,
		15.999227, 22.417501, 28.840950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673458, 21.942192, 29.541000>,  <15.410439, 22.505867, 29.209082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673458, 21.942192, 29.541000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.978218, 22.121340, 29.353844>,  <16.161074, 22.228828, 29.241550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.978218, 22.121340, 29.353844>,  <15.673458, 21.942192, 29.541000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978218, 22.121340, 29.353844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575342, -0.136206, 0.806492,
		0.297473, -0.883663, -0.361453,
		0.761899, 0.447869, -0.467891,
		16.206787, 22.255701, 29.213476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368406, 21.480354, 29.488911>,  <15.673458, 21.942192, 29.541000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368406, 21.480354, 29.488911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.488079, 21.860575, 29.455580>,  <16.559883, 22.088707, 29.435581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.488079, 21.860575, 29.455580>,  <16.368406, 21.480354, 29.488911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488079, 21.860575, 29.455580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652549, -0.140105, 0.744681,
		0.696182, -0.277172, -0.662198,
		0.299182, 0.950551, -0.083329,
		16.577833, 22.145741, 29.430580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.045515, 21.502056, 29.889000>,  <16.368406, 21.480354, 29.488911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.045515, 21.502056, 29.889000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.959396, 21.889277, 29.837582>,  <16.907724, 22.121609, 29.806730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.959396, 21.889277, 29.837582>,  <17.045515, 21.502056, 29.889000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959396, 21.889277, 29.837582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541282, 0.227860, 0.809379,
		0.812811, 0.104677, -0.573046,
		-0.215298, 0.968051, -0.128547,
		16.894808, 22.179691, 29.799017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.722315, 21.933775, 29.803684>,  <17.045515, 21.502056, 29.889000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.722315, 21.933775, 29.803684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.414770, 22.141588, 29.952780>,  <17.230244, 22.266275, 30.042236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.414770, 22.141588, 29.952780>,  <17.722315, 21.933775, 29.803684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414770, 22.141588, 29.952780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502796, 0.131104, 0.854405,
		0.395025, 0.844332, -0.362020,
		-0.768864, 0.519534, 0.372737,
		17.184111, 22.297449, 30.064602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983948, 22.401100, 30.067526>,  <17.722315, 21.933775, 29.803684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983948, 22.401100, 30.067526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.626617, 22.440210, 30.242985>,  <17.412220, 22.463676, 30.348261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.626617, 22.440210, 30.242985>,  <17.983948, 22.401100, 30.067526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626617, 22.440210, 30.242985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434334, -0.062883, 0.898554,
		0.115440, 0.993220, 0.013708,
		-0.893324, 0.097775, 0.438648,
		17.358620, 22.469543, 30.374578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.068033, 22.824112, 30.574841>,  <17.983948, 22.401100, 30.067526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.068033, 22.824112, 30.574841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.725006, 22.653358, 30.689629>,  <17.519190, 22.550907, 30.758501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.725006, 22.653358, 30.689629>,  <18.068033, 22.824112, 30.574841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725006, 22.653358, 30.689629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338776, -0.048931, 0.939594,
		-0.387054, 0.902982, 0.186579,
		-0.857566, -0.426882, 0.286969,
		17.467735, 22.525293, 30.775719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750847, 23.208982, 31.214209>,  <18.068033, 22.824112, 30.574841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750847, 23.208982, 31.214209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.589626, 22.843163, 31.200645>,  <17.492893, 22.623671, 31.192509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.589626, 22.843163, 31.200645>,  <17.750847, 23.208982, 31.214209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589626, 22.843163, 31.200645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007555, -0.033723, 0.999403,
		-0.915146, 0.403067, 0.006683,
		-0.403051, -0.914549, -0.033907,
		17.468712, 22.568798, 31.190474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326447, 23.143463, 31.738138>,  <17.750847, 23.208982, 31.214209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326447, 23.143463, 31.738138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.319918, 22.746473, 31.689602>,  <17.316000, 22.508280, 31.660480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.319918, 22.746473, 31.689602>,  <17.326447, 23.143463, 31.738138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319918, 22.746473, 31.689602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046402, -0.120474, 0.991631,
		-0.998790, 0.021814, -0.044087,
		-0.016321, -0.992477, -0.121340,
		17.315022, 22.448730, 31.653200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749973, 22.883556, 32.185608>,  <17.326447, 23.143463, 31.738138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749973, 22.883556, 32.185608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.005161, 22.580017, 32.133236>,  <17.158274, 22.397894, 32.101814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.005161, 22.580017, 32.133236>,  <16.749973, 22.883556, 32.185608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005161, 22.580017, 32.133236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053894, -0.125605, 0.990615,
		-0.768173, -0.639039, -0.039235,
		0.637970, -0.758850, -0.130927,
		17.196552, 22.352362, 32.093956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708080, 22.542019, 32.935760>,  <16.749973, 22.883556, 32.185608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708080, 22.542019, 32.935760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.014717, 22.399828, 32.721855>,  <17.198698, 22.314514, 32.593513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.014717, 22.399828, 32.721855>,  <16.708080, 22.542019, 32.935760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014717, 22.399828, 32.721855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492772, -0.208301, 0.844859,
		-0.411720, -0.911178, 0.015487,
		0.766592, -0.355477, -0.534765,
		17.244694, 22.293184, 32.561424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.897135, 21.937220, 33.160103>,  <16.708080, 22.542019, 32.935760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.897135, 21.937220, 33.160103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.229134, 22.077522, 32.986633>,  <17.428333, 22.161703, 32.882549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.229134, 22.077522, 32.986633>,  <16.897135, 21.937220, 33.160103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229134, 22.077522, 32.986633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503128, -0.135200, 0.853571,
		0.240762, -0.926656, -0.288691,
		0.829997, 0.350756, -0.433676,
		17.478132, 22.182749, 32.856529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660694, 22.063124, 33.907192>,  <16.897135, 21.937220, 33.160103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660694, 22.063124, 33.907192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.394438, 21.881561, 34.144138>,  <16.234684, 21.772625, 34.286304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.394438, 21.881561, 34.144138>,  <16.660694, 22.063124, 33.907192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394438, 21.881561, 34.144138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276658, -0.587114, -0.760761,
		0.693098, -0.670275, 0.265230,
		-0.665640, -0.453904, 0.592364,
		16.194746, 21.745390, 34.321846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.769203, 21.321936, 33.755077>,  <16.660694, 22.063124, 33.907192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.769203, 21.321936, 33.755077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.408880, 21.376749, 33.919888>,  <16.192686, 21.409637, 34.018772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.408880, 21.376749, 33.919888>,  <16.769203, 21.321936, 33.755077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.408880, 21.376749, 33.919888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414939, -0.551250, -0.723843,
		0.127940, -0.823010, 0.553431,
		-0.900809, 0.137032, 0.412026,
		16.138638, 21.417858, 34.043495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497295, 20.599022, 33.981209>,  <16.769203, 21.321936, 33.755077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497295, 20.599022, 33.981209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.235296, 20.888626, 33.894688>,  <16.078096, 21.062389, 33.842773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.235296, 20.888626, 33.894688>,  <16.497295, 20.599022, 33.981209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235296, 20.888626, 33.894688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509521, -0.634571, -0.581127,
		-0.558001, -0.270426, 0.784541,
		-0.654999, 0.724009, -0.216304,
		16.038797, 21.105829, 33.829796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961884, 20.141602, 33.816723>,  <16.497295, 20.599022, 33.981209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961884, 20.141602, 33.816723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.850787, 20.508942, 33.703945>,  <15.784129, 20.729345, 33.636276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.850787, 20.508942, 33.703945>,  <15.961884, 20.141602, 33.816723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850787, 20.508942, 33.703945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493158, -0.388172, -0.778536,
		-0.824412, -0.077186, 0.560703,
		-0.277741, 0.918349, -0.281948,
		15.767465, 20.784447, 33.619362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284135, 20.050901, 33.646202>,  <15.961884, 20.141602, 33.816723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284135, 20.050901, 33.646202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.357567, 20.406054, 33.477455>,  <15.401626, 20.619144, 33.376209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.357567, 20.406054, 33.477455>,  <15.284135, 20.050901, 33.646202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357567, 20.406054, 33.477455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576981, -0.250128, -0.777514,
		-0.795859, 0.386144, 0.466371,
		0.183580, 0.887879, -0.421864,
		15.412641, 20.672417, 33.350895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673285, 20.453894, 33.512119>,  <15.284135, 20.050901, 33.646202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.673285, 20.453894, 33.512119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.958387, 20.575821, 33.259434>,  <15.129449, 20.648977, 33.107822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.958387, 20.575821, 33.259434>,  <14.673285, 20.453894, 33.512119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958387, 20.575821, 33.259434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548692, -0.318734, -0.772882,
		-0.436938, 0.897493, -0.059927,
		0.712756, 0.304820, -0.631714,
		15.172215, 20.667267, 33.069920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.346965, 20.693027, 33.018406>,  <14.673285, 20.453894, 33.512119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.346965, 20.693027, 33.018406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.706339, 20.647123, 32.848869>,  <14.921964, 20.619581, 32.747147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.706339, 20.647123, 32.848869>,  <14.346965, 20.693027, 33.018406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706339, 20.647123, 32.848869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439038, -0.251623, -0.862515,
		-0.007665, 0.960997, -0.276452,
		0.898436, -0.114762, -0.423843,
		14.975870, 20.612694, 32.721718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.404977, 21.126400, 32.381142>,  <14.346965, 20.693027, 33.018406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.404977, 21.126400, 32.381142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.665289, 20.826588, 32.332661>,  <14.821476, 20.646700, 32.303570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.665289, 20.826588, 32.332661>,  <14.404977, 21.126400, 32.381142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665289, 20.826588, 32.332661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341751, -0.146614, -0.928284,
		0.678005, 0.645531, -0.351566,
		0.650780, -0.749529, -0.121206,
		14.860523, 20.601728, 32.296299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452477, 21.212374, 31.664251>,  <14.404977, 21.126400, 32.381142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452477, 21.212374, 31.664251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.636997, 20.864107, 31.732534>,  <14.747709, 20.655148, 31.773504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.636997, 20.864107, 31.732534>,  <14.452477, 21.212374, 31.664251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.636997, 20.864107, 31.732534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138361, -0.260643, -0.955469,
		0.876390, 0.417138, -0.240701,
		0.461300, -0.870667, 0.170709,
		14.775387, 20.602907, 31.783747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972696, 21.174892, 31.234787>,  <14.452477, 21.212374, 31.664251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972696, 21.174892, 31.234787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.894753, 20.789915, 31.310398>,  <14.847988, 20.558928, 31.355764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.894753, 20.789915, 31.310398>,  <14.972696, 21.174892, 31.234787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.894753, 20.789915, 31.310398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018194, -0.196234, -0.980388,
		0.980663, -0.187596, 0.055748,
		-0.194857, -0.962445, 0.189026,
		14.836296, 20.501183, 31.367105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.426455, 20.821276, 30.781469>,  <14.972696, 21.174892, 31.234787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.426455, 20.821276, 30.781469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.158829, 20.543907, 30.888443>,  <14.998254, 20.377487, 30.952627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.158829, 20.543907, 30.888443>,  <15.426455, 20.821276, 30.781469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158829, 20.543907, 30.888443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123241, -0.251346, -0.960019,
		0.732916, -0.675273, 0.082708,
		-0.669064, -0.693420, 0.267436,
		14.958110, 20.335880, 30.968674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.581250, 20.265596, 30.303667>,  <15.426455, 20.821276, 30.781469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.581250, 20.265596, 30.303667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.210940, 20.199688, 30.439779>,  <14.988754, 20.160143, 30.521446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.210940, 20.199688, 30.439779>,  <15.581250, 20.265596, 30.303667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210940, 20.199688, 30.439779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283149, -0.294251, -0.912822,
		0.250534, -0.941418, 0.225755,
		-0.925775, -0.164771, 0.340281,
		14.933208, 20.150257, 30.541864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.290828, 19.532574, 30.104431>,  <15.581250, 20.265596, 30.303667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.290828, 19.532574, 30.104431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.976336, 19.771761, 30.166754>,  <14.787642, 19.915274, 30.204147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.976336, 19.771761, 30.166754>,  <15.290828, 19.532574, 30.104431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976336, 19.771761, 30.166754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372851, -0.257998, -0.891302,
		-0.492775, -0.758859, 0.425800,
		-0.786228, 0.597971, 0.155807,
		14.740468, 19.951153, 30.213495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710225, 19.044893, 30.081032>,  <15.290828, 19.532574, 30.104431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710225, 19.044893, 30.081032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.560533, 19.412323, 30.030169>,  <14.470717, 19.632782, 29.999651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.560533, 19.412323, 30.030169>,  <14.710225, 19.044893, 30.081032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.560533, 19.412323, 30.030169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502260, -0.316043, -0.804892,
		-0.779543, -0.237348, 0.579637,
		-0.374230, 0.918576, -0.127159,
		14.448263, 19.687897, 29.992022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.316581, 18.364159, 30.154593>,  <14.710225, 19.044893, 30.081032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.316581, 18.364159, 30.154593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.547763, 18.038986, 30.126001>,  <14.686472, 17.843882, 30.108847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.547763, 18.038986, 30.126001>,  <14.316581, 18.364159, 30.154593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547763, 18.038986, 30.126001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291825, 0.124084, 0.948389,
		-0.762106, -0.568985, 0.308949,
		0.577955, -0.812932, -0.071479,
		14.721149, 17.795107, 30.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194232, 17.869778, 30.721615>,  <14.316581, 18.364159, 30.154593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194232, 17.869778, 30.721615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.553596, 17.753439, 30.590000>,  <14.769216, 17.683636, 30.511032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.553596, 17.753439, 30.590000>,  <14.194232, 17.869778, 30.721615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.553596, 17.753439, 30.590000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341864, -0.007111, 0.939722,
		-0.275657, -0.956743, 0.093042,
		0.898411, -0.290849, -0.329036,
		14.823120, 17.666183, 30.491289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.384645, 17.247660, 31.178364>,  <14.194232, 17.869778, 30.721615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.384645, 17.247660, 31.178364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.718111, 17.402361, 31.020668>,  <14.918191, 17.495182, 30.926050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.718111, 17.402361, 31.020668>,  <14.384645, 17.247660, 31.178364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.718111, 17.402361, 31.020668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427750, -0.000644, 0.903897,
		0.349331, -0.922183, -0.165970,
		0.833665, 0.386753, -0.394239,
		14.968210, 17.518387, 30.902397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979293, 16.907192, 31.522089>,  <14.384645, 17.247660, 31.178364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979293, 16.907192, 31.522089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.188753, 17.205019, 31.356483>,  <15.314429, 17.383715, 31.257120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.188753, 17.205019, 31.356483>,  <14.979293, 16.907192, 31.522089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.188753, 17.205019, 31.356483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488533, 0.135691, 0.861930,
		0.697944, -0.653610, -0.292691,
		0.523651, 0.744568, -0.414015,
		15.345848, 17.428389, 31.232279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739386, 16.774855, 31.582245>,  <14.979293, 16.907192, 31.522089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739386, 16.774855, 31.582245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.715400, 17.164118, 31.493368>,  <15.701008, 17.397676, 31.440042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.715400, 17.164118, 31.493368>,  <15.739386, 16.774855, 31.582245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.715400, 17.164118, 31.493368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676489, 0.203299, 0.707837,
		0.734008, -0.107865, -0.670520,
		-0.059965, 0.973157, -0.222192,
		15.697411, 17.456064, 31.426710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422569, 16.978477, 31.801849>,  <15.739386, 16.774855, 31.582245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422569, 16.978477, 31.801849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.190193, 17.303965, 31.809563>,  <16.050768, 17.499256, 31.814190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.190193, 17.303965, 31.809563>,  <16.422569, 16.978477, 31.801849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.190193, 17.303965, 31.809563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564303, 0.385577, 0.729995,
		0.586574, 0.434967, -0.683180,
		-0.580942, 0.813716, 0.019283,
		16.015911, 17.548080, 31.815348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.837328, 17.453856, 31.902647>,  <16.422569, 16.978477, 31.801849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.837328, 17.453856, 31.902647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.496069, 17.628672, 32.016586>,  <16.291313, 17.733561, 32.084949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.496069, 17.628672, 32.016586>,  <16.837328, 17.453856, 31.902647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.496069, 17.628672, 32.016586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456233, 0.360304, 0.813654,
		0.252966, 0.824122, -0.506784,
		-0.853147, 0.437039, 0.284847,
		16.240126, 17.759783, 32.102039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503462, 17.638533, 31.724604>,  <16.837328, 17.453856, 31.902647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.503462, 17.638533, 31.724604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.773241, 17.345961, 31.764858>,  <17.935108, 17.170418, 31.789011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.773241, 17.345961, 31.764858>,  <17.503462, 17.638533, 31.724604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773241, 17.345961, 31.764858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312690, -0.406448, -0.858502,
		0.668839, 0.547547, -0.502839,
		0.674447, -0.731432, 0.100635,
		17.975574, 17.126532, 31.795050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.864281, 17.584846, 31.057293>,  <17.503462, 17.638533, 31.724604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.864281, 17.584846, 31.057293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.914637, 17.237869, 31.249830>,  <17.944849, 17.029682, 31.365353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.914637, 17.237869, 31.249830>,  <17.864281, 17.584846, 31.057293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914637, 17.237869, 31.249830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352905, -0.492623, -0.795475,
		0.927152, -0.069727, -0.368141,
		0.125889, -0.867445, 0.481343,
		17.952404, 16.977636, 31.394234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162283, 17.156029, 30.584785>,  <17.864281, 17.584846, 31.057293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162283, 17.156029, 30.584785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.010180, 16.897198, 30.849117>,  <17.918919, 16.741899, 31.007717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.010180, 16.897198, 30.849117>,  <18.162283, 17.156029, 30.584785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010180, 16.897198, 30.849117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205958, -0.637319, -0.742567,
		0.901657, -0.418469, 0.109075,
		-0.380257, -0.647076, 0.660831,
		17.896103, 16.703075, 31.047367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550896, 16.555422, 30.411243>,  <18.162283, 17.156029, 30.584785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550896, 16.555422, 30.411243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.205776, 16.480803, 30.599190>,  <17.998705, 16.436031, 30.711958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.205776, 16.480803, 30.599190>,  <18.550896, 16.555422, 30.411243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205776, 16.480803, 30.599190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238675, -0.669015, -0.703884,
		0.445657, -0.719457, 0.532702,
		-0.862800, -0.186548, 0.469868,
		17.946936, 16.424837, 30.740150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493423, 15.797329, 30.241735>,  <18.550896, 16.555422, 30.411243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.493423, 15.797329, 30.241735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.125711, 15.903474, 30.358017>,  <17.905085, 15.967161, 30.427786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.125711, 15.903474, 30.358017>,  <18.493423, 15.797329, 30.241735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125711, 15.903474, 30.358017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391654, -0.543211, -0.742650,
		-0.039158, -0.796558, 0.603293,
		-0.919279, 0.265362, 0.290704,
		17.849928, 15.983083, 30.445229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973436, 15.195960, 30.062155>,  <18.493423, 15.797329, 30.241735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973436, 15.195960, 30.062155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.751400, 15.528517, 30.072416>,  <17.618177, 15.728051, 30.078573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.751400, 15.528517, 30.072416>,  <17.973436, 15.195960, 30.062155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751400, 15.528517, 30.072416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446108, -0.271539, -0.852792,
		-0.702039, -0.484822, 0.521621,
		-0.555093, 0.831393, 0.025652,
		17.584871, 15.777935, 30.080112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338064, 15.001610, 29.739822>,  <17.973436, 15.195960, 30.062155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338064, 15.001610, 29.739822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.300037, 15.399080, 29.715916>,  <17.277222, 15.637563, 29.701572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.300037, 15.399080, 29.715916>,  <17.338064, 15.001610, 29.739822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300037, 15.399080, 29.715916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424210, -0.094752, -0.900593,
		-0.900560, -0.060262, 0.430535,
		-0.095066, 0.993675, -0.059766,
		17.271517, 15.697183, 29.697987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<21.759295, 24.362162, 28.471134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.699940, 23.975092, 28.552704>,  <21.664328, 23.742849, 28.601645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.699940, 23.975092, 28.552704>,  <21.759295, 24.362162, 28.471134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699940, 23.975092, 28.552704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032051, -0.210802, -0.977003,
		0.988410, -0.138439, 0.062295,
		-0.148387, -0.967676, 0.203922,
		21.655424, 23.684790, 28.613880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.132036, 24.043486, 27.964802>,  <21.759295, 24.362162, 28.471134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.132036, 24.043486, 27.964802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.866182, 23.775362, 28.096830>,  <21.706671, 23.614489, 28.176048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.866182, 23.775362, 28.096830>,  <22.132036, 24.043486, 27.964802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.866182, 23.775362, 28.096830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016218, -0.428718, -0.903293,
		0.746992, -0.605713, 0.274070,
		-0.664635, -0.670308, 0.330072,
		21.666792, 23.574270, 28.195852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394821, 23.313280, 27.896675>,  <22.132036, 24.043486, 27.964802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394821, 23.313280, 27.896675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.996290, 23.334785, 27.870020>,  <21.757172, 23.347689, 27.854027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.996290, 23.334785, 27.870020>,  <22.394821, 23.313280, 27.896675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.996290, 23.334785, 27.870020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022515, -0.586394, -0.809713,
		-0.082607, -0.808240, 0.583030,
		-0.996328, 0.053761, -0.066638,
		21.697392, 23.350914, 27.850029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.863272, 22.823141, 27.514219>,  <22.394821, 23.313280, 27.896675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.863272, 22.823141, 27.514219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.740707, 23.082619, 27.235563>,  <21.667170, 23.238306, 27.068369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.740707, 23.082619, 27.235563>,  <21.863272, 22.823141, 27.514219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740707, 23.082619, 27.235563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872395, -0.101430, -0.478162,
		-0.380842, -0.754258, -0.534840,
		-0.306409, 0.648696, -0.696640,
		21.648785, 23.277227, 27.026571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.622824, 22.835278, 28.226078>,  <21.863272, 22.823141, 27.514219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.622824, 22.835278, 28.226078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.403795, 22.645947, 28.502087>,  <21.272379, 22.532349, 28.667692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.403795, 22.645947, 28.502087>,  <21.622824, 22.835278, 28.226078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403795, 22.645947, 28.502087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723867, 0.681612, -0.106870,
		-0.419742, -0.558001, -0.715857,
		-0.547570, -0.473327, 0.690020,
		21.239525, 22.503948, 28.709093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.942377, 22.780138, 27.937401>,  <21.622824, 22.835278, 28.226078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.942377, 22.780138, 27.937401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.879566, 22.744024, 28.330784>,  <20.841881, 22.722357, 28.566814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.879566, 22.744024, 28.330784>,  <20.942377, 22.780138, 27.937401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879566, 22.744024, 28.330784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720213, 0.691841, -0.051481,
		-0.675749, -0.716384, -0.173659,
		-0.157025, -0.090283, 0.983459,
		20.832458, 22.716940, 28.625822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166275, 22.639931, 28.129879>,  <20.942377, 22.780138, 27.937401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166275, 22.639931, 28.129879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.365353, 22.819111, 28.426970>,  <20.484798, 22.926619, 28.605225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.365353, 22.819111, 28.426970>,  <20.166275, 22.639931, 28.129879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.365353, 22.819111, 28.426970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654276, 0.756052, -0.017564,
		-0.569408, -0.477207, 0.669363,
		0.497692, 0.447949, 0.742727,
		20.514660, 22.953495, 28.649788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845184, 22.238310, 28.519777>,  <20.166275, 22.639931, 28.129879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845184, 22.238310, 28.519777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.658293, 21.979187, 28.760456>,  <19.546158, 21.823713, 28.904863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.658293, 21.979187, 28.760456>,  <19.845184, 22.238310, 28.519777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658293, 21.979187, 28.760456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293316, -0.528436, -0.796694,
		0.834064, -0.548727, 0.056889,
		-0.467230, -0.647807, 0.601699,
		19.518124, 21.784845, 28.940966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155972, 21.639042, 28.413795>,  <19.845184, 22.238310, 28.519777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155972, 21.639042, 28.413795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.775198, 21.591795, 28.526838>,  <19.546734, 21.563448, 28.594664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.775198, 21.591795, 28.526838>,  <20.155972, 21.639042, 28.413795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775198, 21.591795, 28.526838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157636, -0.602163, -0.782656,
		0.262620, -0.789588, 0.554601,
		-0.951936, -0.118116, 0.282607,
		19.489616, 21.556360, 28.611620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.157681, 21.005629, 28.279644>,  <20.155972, 21.639042, 28.413795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.157681, 21.005629, 28.279644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.776808, 21.126619, 28.296896>,  <19.548285, 21.199215, 28.307247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.776808, 21.126619, 28.296896>,  <20.157681, 21.005629, 28.279644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776808, 21.126619, 28.296896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191601, -0.481178, -0.855428,
		-0.237996, -0.822785, 0.516123,
		-0.952180, 0.302478, 0.043128,
		19.491154, 21.217363, 28.309834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835459, 20.464874, 28.107990>,  <20.157681, 21.005629, 28.279644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835459, 20.464874, 28.107990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.567543, 20.755825, 28.048246>,  <19.406794, 20.930395, 28.012400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.567543, 20.755825, 28.048246>,  <19.835459, 20.464874, 28.107990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.567543, 20.755825, 28.048246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235945, -0.399196, -0.885987,
		-0.704070, -0.558182, 0.438998,
		-0.669788, 0.727376, -0.149362,
		19.366606, 20.974037, 28.003437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269835, 20.209198, 27.702494>,  <19.835459, 20.464874, 28.107990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269835, 20.209198, 27.702494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.188507, 20.597851, 27.654171>,  <19.139711, 20.831043, 27.625177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.188507, 20.597851, 27.654171>,  <19.269835, 20.209198, 27.702494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188507, 20.597851, 27.654171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156704, -0.154085, -0.975552,
		-0.966492, -0.179416, 0.183586,
		-0.203317, 0.971632, -0.120807,
		19.127512, 20.889339, 27.617929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671425, 19.506107, 27.942179>,  <19.269835, 20.209198, 27.702494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.671425, 19.506107, 27.942179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.774893, 19.134729, 28.048820>,  <19.836973, 18.911901, 28.112806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.774893, 19.134729, 28.048820>,  <19.671425, 19.506107, 27.942179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.774893, 19.134729, 28.048820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278295, 0.335923, 0.899837,
		-0.925009, -0.158566, 0.345275,
		0.258670, -0.928446, 0.266604,
		19.852493, 18.856195, 28.128801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428810, 19.454372, 28.641720>,  <19.671425, 19.506107, 27.942179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428810, 19.454372, 28.641720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.705976, 19.169785, 28.594934>,  <19.872276, 18.999031, 28.566864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.705976, 19.169785, 28.594934>,  <19.428810, 19.454372, 28.641720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705976, 19.169785, 28.594934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397314, 0.241405, 0.885362,
		-0.601673, -0.659951, 0.449950,
		0.692915, -0.711469, -0.116961,
		19.913851, 18.956345, 28.559847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391680, 19.122469, 29.216227>,  <19.428810, 19.454372, 28.641720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391680, 19.122469, 29.216227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.749224, 19.000992, 29.084297>,  <19.963751, 18.928106, 29.005140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.749224, 19.000992, 29.084297>,  <19.391680, 19.122469, 29.216227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.749224, 19.000992, 29.084297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367552, 0.075092, 0.926966,
		-0.256745, -0.949807, 0.178744,
		0.893861, -0.303691, -0.329824,
		20.017382, 18.909885, 28.985350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646875, 18.548872, 29.698675>,  <19.391680, 19.122469, 29.216227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646875, 18.548872, 29.698675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.967527, 18.685427, 29.502371>,  <20.159918, 18.767361, 29.384588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.967527, 18.685427, 29.502371>,  <19.646875, 18.548872, 29.698675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967527, 18.685427, 29.502371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493340, 0.085885, 0.865586,
		0.337651, -0.935990, -0.099574,
		0.801628, 0.341389, -0.490760,
		20.208015, 18.787844, 29.355143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234089, 18.068428, 29.810938>,  <19.646875, 18.548872, 29.698675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234089, 18.068428, 29.810938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.356564, 18.442287, 29.738625>,  <20.430048, 18.666603, 29.695236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.356564, 18.442287, 29.738625>,  <20.234089, 18.068428, 29.810938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356564, 18.442287, 29.738625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557258, -0.022005, 0.830048,
		0.771825, -0.354890, -0.527578,
		0.306185, 0.934649, -0.180781,
		20.448420, 18.722683, 29.684391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.799299, 18.009872, 30.104385>,  <20.234089, 18.068428, 29.810938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.799299, 18.009872, 30.104385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.778641, 18.405788, 30.051239>,  <20.766245, 18.643337, 30.019352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.778641, 18.405788, 30.051239>,  <20.799299, 18.009872, 30.104385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.778641, 18.405788, 30.051239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379180, 0.142515, 0.914282,
		0.923880, -0.003158, -0.382668,
		-0.051648, 0.989788, -0.132864,
		20.763145, 18.702724, 30.011379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443268, 18.138605, 30.223829>,  <20.799299, 18.009872, 30.104385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443268, 18.138605, 30.223829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.250675, 18.481272, 30.297907>,  <21.135120, 18.686872, 30.342354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.250675, 18.481272, 30.297907>,  <21.443268, 18.138605, 30.223829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.250675, 18.481272, 30.297907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465135, 0.070664, 0.882415,
		0.742849, 0.511007, -0.432489,
		-0.481482, 0.856667, 0.185194,
		21.106232, 18.738272, 30.353466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.849934, 18.441376, 30.559956>,  <21.443268, 18.138605, 30.223829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.849934, 18.441376, 30.559956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.534250, 18.673904, 30.639164>,  <21.344839, 18.813421, 30.686689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.534250, 18.673904, 30.639164>,  <21.849934, 18.441376, 30.559956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534250, 18.673904, 30.639164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331718, 0.132162, 0.934075,
		0.516827, 0.802869, -0.297139,
		-0.789210, 0.581322, 0.198021,
		21.297487, 18.848301, 30.698570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.090990, 18.927801, 30.878828>,  <21.849934, 18.441376, 30.559956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.090990, 18.927801, 30.878828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.702271, 18.966841, 30.964699>,  <21.469040, 18.990265, 31.016220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.702271, 18.966841, 30.964699>,  <22.090990, 18.927801, 30.878828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702271, 18.966841, 30.964699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234639, 0.309167, 0.921608,
		0.023579, 0.945986, -0.323348,
		-0.971797, 0.097601, 0.214675,
		21.410732, 18.996120, 31.029102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974556, 19.612591, 31.188715>,  <22.090990, 18.927801, 30.878828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974556, 19.612591, 31.188715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.691334, 19.356833, 31.308601>,  <21.521400, 19.203377, 31.380533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.691334, 19.356833, 31.308601>,  <21.974556, 19.612591, 31.188715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.691334, 19.356833, 31.308601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168395, 0.259301, 0.951003,
		-0.685783, 0.723835, -0.075929,
		-0.708057, -0.639395, 0.299714,
		21.478916, 19.165014, 31.398516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.584501, 20.019135, 31.748732>,  <21.974556, 19.612591, 31.188715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.584501, 20.019135, 31.748732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.496914, 19.632088, 31.798958>,  <21.444361, 19.399858, 31.829094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.496914, 19.632088, 31.798958>,  <21.584501, 20.019135, 31.748732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.496914, 19.632088, 31.798958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251084, 0.068477, 0.965540,
		-0.942873, 0.242952, 0.227959,
		-0.218970, -0.967618, 0.125567,
		21.431223, 19.341803, 31.836628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124714, 20.033014, 32.341984>,  <21.584501, 20.019135, 31.748732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124714, 20.033014, 32.341984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.257263, 19.656263, 32.319855>,  <21.336794, 19.430214, 32.306576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.257263, 19.656263, 32.319855>,  <21.124714, 20.033014, 32.341984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.257263, 19.656263, 32.319855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037771, -0.045347, 0.998257,
		-0.942743, -0.332886, 0.020549,
		0.331374, -0.941876, -0.055324,
		21.356676, 19.373701, 32.303257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724602, 19.619894, 32.833420>,  <21.124714, 20.033014, 32.341984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724602, 19.619894, 32.833420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.071138, 19.445234, 32.736431>,  <21.279060, 19.340439, 32.678238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.071138, 19.445234, 32.736431>,  <20.724602, 19.619894, 32.833420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.071138, 19.445234, 32.736431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190818, -0.159283, 0.968616,
		-0.461568, -0.885418, -0.054672,
		0.866339, -0.436650, -0.242474,
		21.331039, 19.314240, 32.663689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680658, 18.870781, 33.007366>,  <20.724602, 19.619894, 32.833420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680658, 18.870781, 33.007366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.067375, 18.973003, 33.007236>,  <21.299406, 19.034336, 33.007156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.067375, 18.973003, 33.007236>,  <20.680658, 18.870781, 33.007366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067375, 18.973003, 33.007236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026024, 0.099720, 0.994675,
		0.254229, -0.961637, 0.103059,
		0.966794, 0.255557, -0.000326,
		21.357414, 19.049669, 33.007137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934355, 19.047216, 33.027893>,  <20.680658, 18.870781, 33.007366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934355, 19.047216, 33.027893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.648771, 18.997431, 33.303509>,  <19.477421, 18.967560, 33.468880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.648771, 18.997431, 33.303509>,  <19.934355, 19.047216, 33.027893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.648771, 18.997431, 33.303509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202501, -0.905317, -0.373355,
		0.670268, -0.406090, 0.621153,
		-0.713957, -0.124463, 0.689039,
		19.434584, 18.960093, 33.510220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.151337, 18.258207, 33.370220>,  <19.934355, 19.047216, 33.027893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.151337, 18.258207, 33.370220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.765671, 18.357912, 33.406570>,  <19.534271, 18.417734, 33.428383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.765671, 18.357912, 33.406570>,  <20.151337, 18.258207, 33.370220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.765671, 18.357912, 33.406570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257109, -0.793324, -0.551844,
		-0.065457, -0.555433, 0.828981,
		-0.964163, 0.249261, 0.090878,
		19.476421, 18.432690, 33.433834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781261, 17.616840, 33.509010>,  <20.151337, 18.258207, 33.370220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781261, 17.616840, 33.509010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.477932, 17.851198, 33.394695>,  <19.295935, 17.991812, 33.326107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.477932, 17.851198, 33.394695>,  <19.781261, 17.616840, 33.509010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.477932, 17.851198, 33.394695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408352, -0.768677, -0.492326,
		-0.508127, -0.256642, 0.822157,
		-0.758324, 0.585893, -0.285786,
		19.250435, 18.026966, 33.308960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239120, 17.094421, 33.347095>,  <19.781261, 17.616840, 33.509010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.239120, 17.094421, 33.347095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.083717, 17.415159, 33.165501>,  <18.990477, 17.607603, 33.056545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.083717, 17.415159, 33.165501>,  <19.239120, 17.094421, 33.347095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083717, 17.415159, 33.165501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492172, -0.597101, -0.633433,
		-0.778993, -0.022653, 0.626624,
		-0.388506, 0.801847, -0.453988,
		18.967165, 17.655714, 33.029305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522131, 16.944164, 33.355164>,  <19.239120, 17.094421, 33.347095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522131, 16.944164, 33.355164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.548149, 17.236485, 33.083370>,  <18.563761, 17.411877, 32.920292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.548149, 17.236485, 33.083370>,  <18.522131, 16.944164, 33.355164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548149, 17.236485, 33.083370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564162, -0.534727, -0.629117,
		-0.823097, 0.424263, 0.377507,
		0.065048, 0.730800, -0.679485,
		18.567663, 17.455725, 32.879524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853731, 17.038984, 33.079193>,  <18.522131, 16.944164, 33.355164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853731, 17.038984, 33.079193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.109238, 17.199085, 32.816353>,  <18.262541, 17.295145, 32.658649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.109238, 17.199085, 32.816353>,  <17.853731, 17.038984, 33.079193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109238, 17.199085, 32.816353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481824, -0.457744, -0.747205,
		-0.599853, 0.793894, -0.099540,
		0.638765, 0.400253, -0.657097,
		18.300867, 17.319160, 32.619225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501425, 17.478834, 32.409866>,  <17.853731, 17.038984, 33.079193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.501425, 17.478834, 32.409866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.858383, 17.324041, 32.317024>,  <18.072559, 17.231167, 32.261318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.858383, 17.324041, 32.317024>,  <17.501425, 17.478834, 32.409866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858383, 17.324041, 32.317024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420108, -0.524718, -0.740392,
		0.164727, 0.758233, -0.630831,
		0.892398, -0.386980, -0.232104,
		18.126102, 17.207947, 32.247395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108414, 18.109430, 32.301441>,  <17.501425, 17.478834, 32.409866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108414, 18.109430, 32.301441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.738873, 18.033817, 32.434563>,  <16.517147, 17.988449, 32.514435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.738873, 18.033817, 32.434563>,  <17.108414, 18.109430, 32.301441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738873, 18.033817, 32.434563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214527, 0.464365, 0.859269,
		-0.316973, 0.865235, -0.388453,
		-0.923854, -0.189031, 0.332808,
		16.461716, 17.977108, 32.534405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.787251, 18.702446, 32.668514>,  <17.108414, 18.109430, 32.301441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.787251, 18.702446, 32.668514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.568567, 18.401604, 32.815727>,  <16.437357, 18.221098, 32.904057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.568567, 18.401604, 32.815727>,  <16.787251, 18.702446, 32.668514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568567, 18.401604, 32.815727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138900, 0.351984, 0.925643,
		-0.825721, 0.557178, -0.087966,
		-0.546710, -0.752104, 0.368032,
		16.404554, 18.175972, 32.926136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397068, 19.032341, 33.178024>,  <16.787251, 18.702446, 32.668514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.397068, 19.032341, 33.178024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.388391, 18.642883, 33.268837>,  <16.383186, 18.409208, 33.323326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.388391, 18.642883, 33.268837>,  <16.397068, 19.032341, 33.178024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.388391, 18.642883, 33.268837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126486, 0.222588, 0.966672,
		-0.991731, 0.049683, 0.118325,
		-0.021690, -0.973646, 0.227032,
		16.381884, 18.350790, 33.336948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793747, 19.091959, 33.704735>,  <16.397068, 19.032341, 33.178024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793747, 19.091959, 33.704735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.005398, 18.753082, 33.723896>,  <16.132389, 18.549757, 33.735394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.005398, 18.753082, 33.723896>,  <15.793747, 19.091959, 33.704735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005398, 18.753082, 33.723896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214646, 0.188248, 0.958379,
		-0.820946, -0.496822, 0.281453,
		0.529127, -0.847190, 0.047900,
		16.164135, 18.498926, 33.738266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496429, 18.796797, 34.167980>,  <15.793747, 19.091959, 33.704735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496429, 18.796797, 34.167980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.854250, 18.618649, 34.152885>,  <16.068941, 18.511759, 34.143829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.854250, 18.618649, 34.152885>,  <15.496429, 18.796797, 34.167980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854250, 18.618649, 34.152885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151691, 0.223079, 0.962925,
		-0.420440, -0.867110, 0.267114,
		0.894550, -0.445371, -0.037742,
		16.122616, 18.485037, 34.141563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454952, 18.226610, 34.555172>,  <15.496429, 18.796797, 34.167980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454952, 18.226610, 34.555172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.840743, 18.330963, 34.538570>,  <16.072218, 18.393574, 34.528610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.840743, 18.330963, 34.538570>,  <15.454952, 18.226610, 34.555172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840743, 18.330963, 34.538570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035417, 0.028007, 0.998980,
		0.261778, -0.964964, 0.017772,
		0.964478, 0.260882, -0.041508,
		16.130087, 18.409227, 34.526119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837073, 17.597818, 34.963566>,  <15.454952, 18.226610, 34.555172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837073, 17.597818, 34.963566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.041620, 17.940624, 34.938183>,  <16.164349, 18.146309, 34.922951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.041620, 17.940624, 34.938183>,  <15.837073, 17.597818, 34.963566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041620, 17.940624, 34.938183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037066, 0.051783, 0.997970,
		0.858563, -0.512681, -0.005286,
		0.511367, 0.857016, -0.063462,
		16.195030, 18.197729, 34.919144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069481, 17.705769, 35.564186>,  <15.837073, 17.597818, 34.963566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069481, 17.705769, 35.564186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.148155, 18.073753, 35.428547>,  <16.195360, 18.294544, 35.347164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.148155, 18.073753, 35.428547>,  <16.069481, 17.705769, 35.564186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148155, 18.073753, 35.428547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059579, 0.356428, 0.932421,
		0.978655, -0.163190, 0.124914,
		0.196685, 0.919961, -0.339097,
		16.207161, 18.349741, 35.326817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511436, 17.930275, 35.951553>,  <16.069481, 17.705769, 35.564186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511436, 17.930275, 35.951553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.411507, 18.290937, 35.810356>,  <16.351549, 18.507334, 35.725636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.411507, 18.290937, 35.810356>,  <16.511436, 17.930275, 35.951553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411507, 18.290937, 35.810356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091766, 0.340868, 0.935621,
		0.963933, 0.266132, -0.002415,
		-0.249823, 0.901655, -0.352997,
		16.336559, 18.561434, 35.704456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.798104, 16.718418, 20.390186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636487, 17.081833, 20.432728>,  <12.539516, 17.299881, 20.458252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.636487, 17.081833, 20.432728>,  <12.798104, 16.718418, 20.390186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.636487, 17.081833, 20.432728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383299, 0.062590, 0.921501,
		0.830561, 0.413091, -0.373530,
		-0.404043, 0.908537, 0.106353,
		12.515274, 17.354393, 20.464634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.266854, 17.142038, 20.736336>,  <12.798104, 16.718418, 20.390186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.266854, 17.142038, 20.736336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930252, 17.350052, 20.794893>,  <12.728291, 17.474861, 20.830027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930252, 17.350052, 20.794893>,  <13.266854, 17.142038, 20.736336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930252, 17.350052, 20.794893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242011, 0.120597, 0.962750,
		0.483010, 0.845588, -0.227337,
		-0.841506, 0.520036, 0.146392,
		12.677800, 17.506063, 20.838810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.456989, 17.750214, 21.130947>,  <13.266854, 17.142038, 20.736336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.456989, 17.750214, 21.130947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070349, 17.663801, 21.186100>,  <12.838365, 17.611954, 21.219193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.070349, 17.663801, 21.186100>,  <13.456989, 17.750214, 21.130947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.070349, 17.663801, 21.186100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136184, 0.022806, 0.990421,
		-0.217105, 0.976120, 0.007375,
		-0.966602, -0.216030, 0.137884,
		12.780368, 17.598991, 21.227465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.338874, 18.198967, 21.610390>,  <13.456989, 17.750214, 21.130947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.338874, 18.198967, 21.610390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.038362, 17.938026, 21.650417>,  <12.858054, 17.781462, 21.674435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.038362, 17.938026, 21.650417>,  <13.338874, 18.198967, 21.610390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.038362, 17.938026, 21.650417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091119, 0.047650, 0.994699,
		-0.653662, 0.756417, 0.023643,
		-0.751281, -0.652352, 0.100071,
		12.812978, 17.742321, 21.680439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877934, 18.555143, 22.086121>,  <13.338874, 18.198967, 21.610390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877934, 18.555143, 22.086121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813953, 18.160326, 22.081072>,  <12.775565, 17.923435, 22.078043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.813953, 18.160326, 22.081072>,  <12.877934, 18.555143, 22.086121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813953, 18.160326, 22.081072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142475, 0.010431, 0.989744,
		-0.976789, 0.160110, -0.142298,
		-0.159952, -0.987044, -0.012623,
		12.765967, 17.864212, 22.077286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542645, 18.504156, 22.659000>,  <12.877934, 18.555143, 22.086121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.542645, 18.504156, 22.659000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622338, 18.120922, 22.576654>,  <12.670155, 17.890982, 22.527246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622338, 18.120922, 22.576654>,  <12.542645, 18.504156, 22.659000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.622338, 18.120922, 22.576654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130960, -0.234222, 0.963322,
		-0.971162, -0.164966, -0.172136,
		0.199233, -0.958085, -0.205864,
		12.682108, 17.833496, 22.514894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.073323, 18.029066, 22.982794>,  <12.542645, 18.504156, 22.659000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.073323, 18.029066, 22.982794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360823, 17.766014, 22.892525>,  <12.533322, 17.608183, 22.838364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360823, 17.766014, 22.892525>,  <12.073323, 18.029066, 22.982794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.360823, 17.766014, 22.892525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149840, -0.463465, 0.873355,
		-0.678933, -0.593907, -0.431653,
		0.718747, -0.657628, -0.225671,
		12.576447, 17.568726, 22.824823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.758932, 17.407532, 23.290985>,  <12.073323, 18.029066, 22.982794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.758932, 17.407532, 23.290985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.141666, 17.310658, 23.226719>,  <12.371307, 17.252533, 23.188160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.141666, 17.310658, 23.226719>,  <11.758932, 17.407532, 23.290985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.141666, 17.310658, 23.226719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093142, -0.268120, 0.958872,
		-0.275331, -0.932440, -0.233984,
		0.956827, -0.242214, -0.160671,
		12.428717, 17.238003, 23.178520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.851314, 16.733324, 23.516443>,  <11.758932, 17.407532, 23.290985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.851314, 16.733324, 23.516443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222413, 16.882469, 23.522837>,  <12.445073, 16.971956, 23.526672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222413, 16.882469, 23.522837>,  <11.851314, 16.733324, 23.516443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222413, 16.882469, 23.522837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163429, -0.444395, 0.880798,
		0.335517, -0.814548, -0.473223,
		0.927750, 0.372861, 0.015982,
		12.500738, 16.994328, 23.527632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159929, 16.284925, 24.015602>,  <11.851314, 16.733324, 23.516443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159929, 16.284925, 24.015602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376955, 16.620523, 23.999065>,  <12.507171, 16.821882, 23.989143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376955, 16.620523, 23.999065>,  <12.159929, 16.284925, 24.015602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.376955, 16.620523, 23.999065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263013, -0.122933, 0.956928,
		0.797777, -0.530069, -0.287366,
		0.542564, 0.838996, -0.041342,
		12.539724, 16.872223, 23.986662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853047, 16.135477, 24.172655>,  <12.159929, 16.284925, 24.015602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853047, 16.135477, 24.172655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818353, 16.517193, 24.287062>,  <12.797536, 16.746223, 24.355705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818353, 16.517193, 24.287062>,  <12.853047, 16.135477, 24.172655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818353, 16.517193, 24.287062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367461, -0.236207, 0.899543,
		0.925985, 0.183122, -0.330178,
		-0.086736, 0.954292, 0.286014,
		12.792332, 16.803480, 24.372866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421562, 16.218342, 24.558716>,  <12.853047, 16.135477, 24.172655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421562, 16.218342, 24.558716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.193119, 16.534828, 24.646177>,  <13.056053, 16.724720, 24.698654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.193119, 16.534828, 24.646177>,  <13.421562, 16.218342, 24.558716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.193119, 16.534828, 24.646177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274182, -0.067201, 0.959327,
		0.773730, 0.607830, -0.178559,
		-0.571109, 0.791218, 0.218652,
		13.021787, 16.772194, 24.711773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136035, 16.242762, 24.386177>,  <13.421562, 16.218342, 24.558716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136035, 16.242762, 24.386177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274676, 15.867695, 24.396315>,  <14.357862, 15.642654, 24.402397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.274676, 15.867695, 24.396315>,  <14.136035, 16.242762, 24.386177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274676, 15.867695, 24.396315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401276, -0.172644, -0.899539,
		0.847846, 0.301614, -0.436103,
		0.346604, -0.937669, 0.025345,
		14.378657, 15.586394, 24.403917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467460, 16.081646, 23.716345>,  <14.136035, 16.242762, 24.386177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.467460, 16.081646, 23.716345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371196, 15.731750, 23.884586>,  <14.313437, 15.521811, 23.985531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371196, 15.731750, 23.884586>,  <14.467460, 16.081646, 23.716345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371196, 15.731750, 23.884586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342897, -0.328776, -0.879959,
		0.908022, -0.355995, -0.220824,
		-0.240660, -0.874742, 0.420606,
		14.298998, 15.469327, 24.010769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.676050, 15.537381, 23.220634>,  <14.467460, 16.081646, 23.716345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.676050, 15.537381, 23.220634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394643, 15.393111, 23.465576>,  <14.225799, 15.306549, 23.612541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394643, 15.393111, 23.465576>,  <14.676050, 15.537381, 23.220634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394643, 15.393111, 23.465576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491478, -0.375463, -0.785797,
		0.513333, -0.853780, 0.086880,
		-0.703518, -0.360676, 0.612352,
		14.183587, 15.284908, 23.649282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468177, 14.915600, 22.840857>,  <14.676050, 15.537381, 23.220634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468177, 14.915600, 22.840857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.185773, 14.985900, 23.115276>,  <14.016331, 15.028080, 23.279928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.185773, 14.985900, 23.115276>,  <14.468177, 14.915600, 22.840857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.185773, 14.985900, 23.115276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688526, -0.397089, -0.606837,
		0.165771, -0.900796, 0.401357,
		-0.706011, 0.175749, 0.686047,
		13.973969, 15.038625, 23.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.984161, 14.270026, 22.861912>,  <14.468177, 14.915600, 22.840857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.984161, 14.270026, 22.861912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770321, 14.568998, 23.019672>,  <13.642016, 14.748382, 23.114328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770321, 14.568998, 23.019672>,  <13.984161, 14.270026, 22.861912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770321, 14.568998, 23.019672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795039, -0.286558, -0.534601,
		-0.286558, -0.599361, 0.747429,
		0.534601, -0.747429, -0.394400,
		13.609941, 14.793227, 23.137993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.323822, 13.954152, 23.134632>,  <13.984161, 14.270026, 22.861912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.323822, 13.954152, 23.134632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256355, 14.345074, 23.083364>,  <13.215875, 14.579627, 23.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.256355, 14.345074, 23.083364>,  <13.323822, 13.954152, 23.134632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.256355, 14.345074, 23.083364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816650, -0.211371, -0.537034,
		-0.551937, 0.014089, 0.833767,
		-0.168668, 0.977304, -0.128170,
		13.205755, 14.638265, 23.044914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.656287, 13.938218, 23.056450>,  <13.323822, 13.954152, 23.134632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.656287, 13.938218, 23.056450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787291, 14.289290, 22.916500>,  <12.865892, 14.499934, 22.832531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.787291, 14.289290, 22.916500>,  <12.656287, 13.938218, 23.056450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.787291, 14.289290, 22.916500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790201, 0.051425, -0.610686,
		-0.517996, 0.476478, 0.710387,
		0.327510, 0.877682, -0.349875,
		12.885544, 14.552595, 22.811537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.076063, 14.284018, 22.816952>,  <12.656287, 13.938218, 23.056450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.076063, 14.284018, 22.816952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351049, 14.483037, 22.605352>,  <12.516041, 14.602448, 22.478394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351049, 14.483037, 22.605352>,  <12.076063, 14.284018, 22.816952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.351049, 14.483037, 22.605352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643537, 0.079822, -0.761242,
		-0.336529, 0.863756, 0.375065,
		0.687465, 0.497548, -0.528996,
		12.557289, 14.632301, 22.446653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.734777, 14.709641, 22.231554>,  <12.076063, 14.284018, 22.816952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.734777, 14.709641, 22.231554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114987, 14.679353, 22.111044>,  <12.343114, 14.661180, 22.038738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114987, 14.679353, 22.111044>,  <11.734777, 14.709641, 22.231554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.114987, 14.679353, 22.111044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285843, 0.166548, -0.943693,
		0.121636, 0.983121, 0.136664,
		0.950525, -0.075722, -0.301276,
		12.400145, 14.656636, 22.020660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927737, 15.335579, 21.918499>,  <11.734777, 14.709641, 22.231554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927737, 15.335579, 21.918499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149736, 15.034977, 21.775827>,  <12.282936, 14.854616, 21.690226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149736, 15.034977, 21.775827>,  <11.927737, 15.335579, 21.918499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149736, 15.034977, 21.775827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161757, 0.323093, -0.932441,
		0.815974, 0.575197, 0.057754,
		0.554997, -0.751505, -0.356678,
		12.316236, 14.809525, 21.668823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.229525, 15.512952, 21.297119>,  <11.927737, 15.335579, 21.918499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.229525, 15.512952, 21.297119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.284957, 15.118164, 21.264408>,  <12.318216, 14.881291, 21.244781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.284957, 15.118164, 21.264408>,  <12.229525, 15.512952, 21.297119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.284957, 15.118164, 21.264408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071570, 0.072376, -0.994806,
		0.987762, 0.143713, -0.060607,
		0.138581, -0.986969, -0.081776,
		12.326531, 14.822073, 21.239876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720444, 15.458378, 20.749950>,  <12.229525, 15.512952, 21.297119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720444, 15.458378, 20.749950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548811, 15.098844, 20.785685>,  <12.445831, 14.883122, 20.807125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548811, 15.098844, 20.785685>,  <12.720444, 15.458378, 20.749950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548811, 15.098844, 20.785685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114207, -0.044122, -0.992477,
		0.896016, -0.436057, -0.083721,
		-0.429082, -0.898837, 0.089335,
		12.420086, 14.829192, 20.812485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022696, 15.057305, 20.183331>,  <12.720444, 15.458378, 20.749950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022696, 15.057305, 20.183331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683513, 14.877060, 20.294983>,  <12.480002, 14.768912, 20.361975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683513, 14.877060, 20.294983>,  <13.022696, 15.057305, 20.183331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683513, 14.877060, 20.294983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271341, -0.083359, -0.958867,
		0.455347, -0.888818, -0.051585,
		-0.847958, -0.450615, 0.279130,
		12.429125, 14.741876, 20.378721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938587, 14.615316, 19.697277>,  <13.022696, 15.057305, 20.183331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938587, 14.615316, 19.697277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574124, 14.648218, 19.858784>,  <12.355447, 14.667959, 19.955688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574124, 14.648218, 19.858784>,  <12.938587, 14.615316, 19.697277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574124, 14.648218, 19.858784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411703, -0.222472, -0.883746,
		0.017137, -0.971463, 0.236570,
		-0.911157, 0.082252, 0.403767,
		12.300777, 14.672894, 19.979914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.679101, 14.879453, 19.937073>,  <12.938587, 14.615316, 19.697277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.679101, 14.879453, 19.937073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.398230, 15.156349, 19.870441>,  <13.229707, 15.322487, 19.830462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.398230, 15.156349, 19.870441>,  <13.679101, 14.879453, 19.937073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.398230, 15.156349, 19.870441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703763, 0.710279, -0.014909,
		0.107998, -0.127702, -0.985915,
		-0.702178, 0.692240, -0.166581,
		13.187576, 15.364021, 19.820467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.751958, 15.540743, 20.029858>,  <13.679101, 14.879453, 19.937073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.751958, 15.540743, 20.029858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.015473, 15.695165, 19.771568>,  <14.173582, 15.787818, 19.616594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.015473, 15.695165, 19.771568>,  <13.751958, 15.540743, 20.029858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.015473, 15.695165, 19.771568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602997, 0.242297, 0.760057,
		0.449881, -0.890086, -0.073168,
		0.658788, 0.386055, -0.645724,
		14.213110, 15.810982, 19.577850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.395753, 15.177748, 20.000515>,  <13.751958, 15.540743, 20.029858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.395753, 15.177748, 20.000515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468223, 15.560445, 19.909458>,  <14.511704, 15.790063, 19.854824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468223, 15.560445, 19.909458>,  <14.395753, 15.177748, 20.000515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468223, 15.560445, 19.909458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419708, 0.134117, 0.897696,
		0.889394, -0.258182, -0.377254,
		0.181173, 0.956742, -0.227644,
		14.522574, 15.847467, 19.841166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093231, 15.265563, 20.005800>,  <14.395753, 15.177748, 20.000515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093231, 15.265563, 20.005800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961162, 15.642298, 20.030869>,  <14.881920, 15.868339, 20.045910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961162, 15.642298, 20.030869>,  <15.093231, 15.265563, 20.005800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961162, 15.642298, 20.030869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657436, 0.181815, 0.731246,
		0.677320, 0.282641, -0.679228,
		-0.330174, 0.941837, 0.062672,
		14.862109, 15.924849, 20.049669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684118, 15.673560, 20.079832>,  <15.093231, 15.265563, 20.005800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684118, 15.673560, 20.079832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.387033, 15.891606, 20.235384>,  <15.208782, 16.022434, 20.328714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.387033, 15.891606, 20.235384>,  <15.684118, 15.673560, 20.079832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387033, 15.891606, 20.235384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571712, 0.213885, 0.792085,
		0.348602, 0.810619, -0.470504,
		-0.742712, 0.545115, 0.388880,
		15.164220, 16.055141, 20.352049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042177, 16.257444, 20.347298>,  <15.684118, 15.673560, 20.079832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042177, 16.257444, 20.347298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685562, 16.291306, 20.525282>,  <15.471593, 16.311623, 20.632072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685562, 16.291306, 20.525282>,  <16.042177, 16.257444, 20.347298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685562, 16.291306, 20.525282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445302, 0.343508, 0.826866,
		-0.082850, 0.935326, -0.343948,
		-0.891539, 0.084655, 0.444962,
		15.418100, 16.316702, 20.658772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000803, 16.973118, 20.598099>,  <16.042177, 16.257444, 20.347298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000803, 16.973118, 20.598099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742984, 16.748240, 20.805365>,  <15.588293, 16.613312, 20.929724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.742984, 16.748240, 20.805365>,  <16.000803, 16.973118, 20.598099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.742984, 16.748240, 20.805365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437068, 0.285137, 0.853035,
		-0.627321, 0.776294, 0.061934,
		-0.644547, -0.562196, 0.518165,
		15.549620, 16.579580, 20.960814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764991, 17.347767, 21.175323>,  <16.000803, 16.973118, 20.598099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764991, 17.347767, 21.175323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680226, 16.974684, 21.292046>,  <15.629368, 16.750834, 21.362080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680226, 16.974684, 21.292046>,  <15.764991, 17.347767, 21.175323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680226, 16.974684, 21.292046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356224, 0.204326, 0.911787,
		-0.910053, 0.297167, 0.288954,
		-0.211912, -0.932707, 0.291806,
		15.616652, 16.694872, 21.379587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340406, 17.407784, 21.812233>,  <15.764991, 17.347767, 21.175323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.340406, 17.407784, 21.812233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541595, 17.062376, 21.797506>,  <15.662309, 16.855131, 21.788671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.541595, 17.062376, 21.797506>,  <15.340406, 17.407784, 21.812233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541595, 17.062376, 21.797506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375107, 0.179717, 0.909393,
		-0.778662, -0.471209, 0.414304,
		0.502971, -0.863519, -0.036815,
		15.692487, 16.803320, 21.786461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.235401, 17.266190, 22.517426>,  <15.340406, 17.407784, 21.812233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.235401, 17.266190, 22.517426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520259, 17.028408, 22.368040>,  <15.691174, 16.885738, 22.278408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520259, 17.028408, 22.368040>,  <15.235401, 17.266190, 22.517426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520259, 17.028408, 22.368040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487353, 0.035711, 0.872475,
		-0.505309, -0.803337, 0.315140,
		0.712145, -0.594454, -0.373463,
		15.733902, 16.850073, 22.256001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313819, 16.807667, 22.963396>,  <15.235401, 17.266190, 22.517426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.313819, 16.807667, 22.963396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666918, 16.799515, 22.775633>,  <15.878777, 16.794622, 22.662975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666918, 16.799515, 22.775633>,  <15.313819, 16.807667, 22.963396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666918, 16.799515, 22.775633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469259, 0.088323, 0.878633,
		0.023549, -0.995883, 0.087532,
		0.882747, -0.020384, -0.469407,
		15.931742, 16.793400, 22.634811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.624263, 16.337263, 23.342073>,  <15.313819, 16.807667, 22.963396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.624263, 16.337263, 23.342073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907331, 16.549414, 23.155352>,  <16.077171, 16.676704, 23.043318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907331, 16.549414, 23.155352>,  <15.624263, 16.337263, 23.342073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907331, 16.549414, 23.155352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589294, -0.078573, 0.804089,
		0.389790, -0.844114, -0.368151,
		0.707670, 0.530375, -0.466804,
		16.119631, 16.708527, 23.015310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339724, 15.996233, 23.594019>,  <15.624263, 16.337263, 23.342073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339724, 15.996233, 23.594019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406309, 16.357180, 23.435009>,  <16.446260, 16.573748, 23.339603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.406309, 16.357180, 23.435009>,  <16.339724, 15.996233, 23.594019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406309, 16.357180, 23.435009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637215, 0.209216, 0.741745,
		0.752494, -0.376781, -0.540175,
		0.166463, 0.902366, -0.397524,
		16.456247, 16.627890, 23.315752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066116, 16.084806, 23.549177>,  <16.339724, 15.996233, 23.594019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066116, 16.084806, 23.549177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916840, 16.454561, 23.517574>,  <16.827274, 16.676414, 23.498613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.916840, 16.454561, 23.517574>,  <17.066116, 16.084806, 23.549177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916840, 16.454561, 23.517574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751419, 0.351108, 0.558652,
		0.544149, 0.149116, -0.825631,
		-0.373190, 0.924385, -0.079006,
		16.804882, 16.731876, 23.493872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627813, 16.574518, 23.433247>,  <17.066116, 16.084806, 23.549177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627813, 16.574518, 23.433247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323133, 16.794636, 23.570063>,  <17.140326, 16.926706, 23.652153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323133, 16.794636, 23.570063>,  <17.627813, 16.574518, 23.433247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.323133, 16.794636, 23.570063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619221, 0.462850, 0.634299,
		0.190738, 0.694943, -0.693306,
		-0.761699, 0.550295, 0.342040,
		17.094624, 16.959724, 23.672674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.834393, 17.309408, 23.430784>,  <17.627813, 16.574518, 23.433247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.834393, 17.309408, 23.430784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556671, 17.244793, 23.711311>,  <17.390038, 17.206024, 23.879627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556671, 17.244793, 23.711311>,  <17.834393, 17.309408, 23.430784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.556671, 17.244793, 23.711311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573240, 0.465059, 0.674623,
		-0.435131, 0.870418, -0.230293,
		-0.694303, -0.161536, 0.701320,
		17.348381, 17.196333, 23.921707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879517, 17.943960, 23.765402>,  <17.834393, 17.309408, 23.430784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879517, 17.943960, 23.765402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.684771, 17.708893, 24.023891>,  <17.567923, 17.567852, 24.178986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.684771, 17.708893, 24.023891>,  <17.879517, 17.943960, 23.765402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684771, 17.708893, 24.023891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598984, 0.313853, 0.736692,
		-0.635751, 0.745748, 0.199200,
		-0.486867, -0.587670, 0.646224,
		17.538710, 17.532593, 24.217758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069550, 18.188208, 24.318542>,  <17.879517, 17.943960, 23.765402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069550, 18.188208, 24.318542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.857342, 17.888504, 24.477116>,  <17.730017, 17.708683, 24.572260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.857342, 17.888504, 24.477116>,  <18.069550, 18.188208, 24.318542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857342, 17.888504, 24.477116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374756, 0.212173, 0.902519,
		-0.760332, 0.627371, 0.168226,
		-0.530522, -0.749258, 0.396433,
		17.698185, 17.663727, 24.596046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737436, 18.498505, 24.928085>,  <18.069550, 18.188208, 24.318542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737436, 18.498505, 24.928085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.791094, 18.103212, 24.957487>,  <17.823288, 17.866037, 24.975128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.791094, 18.103212, 24.957487>,  <17.737436, 18.498505, 24.928085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.791094, 18.103212, 24.957487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366435, 0.118384, 0.922882,
		-0.920723, -0.096864, 0.378003,
		0.134143, -0.988232, 0.073504,
		17.831337, 17.806744, 24.979538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.514908, 18.335966, 25.539547>,  <17.737436, 18.498505, 24.928085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.514908, 18.335966, 25.539547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752657, 18.026152, 25.452995>,  <17.895306, 17.840263, 25.401064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752657, 18.026152, 25.452995>,  <17.514908, 18.335966, 25.539547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752657, 18.026152, 25.452995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501241, 0.146397, 0.852834,
		-0.628872, -0.615357, 0.475242,
		0.594371, -0.774534, -0.216378,
		17.930969, 17.793791, 25.388083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.464081, 17.923094, 26.154989>,  <17.514908, 18.335966, 25.539547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.464081, 17.923094, 26.154989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.796333, 17.807867, 25.964382>,  <17.995684, 17.738731, 25.850018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.796333, 17.807867, 25.964382>,  <17.464081, 17.923094, 26.154989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.796333, 17.807867, 25.964382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534707, 0.173854, 0.826961,
		-0.155378, -0.941696, 0.298441,
		0.830630, -0.288070, -0.476518,
		18.045523, 17.721447, 25.821426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850491, 17.544836, 26.559511>,  <17.464081, 17.923094, 26.154989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850491, 17.544836, 26.559511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155485, 17.647562, 26.321970>,  <18.338482, 17.709198, 26.179445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155485, 17.647562, 26.321970>,  <17.850491, 17.544836, 26.559511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.155485, 17.647562, 26.321970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591522, 0.095176, 0.800652,
		0.262140, -0.961763, -0.079342,
		0.762485, 0.256815, -0.593853,
		18.384232, 17.724607, 26.143814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518566, 17.207222, 26.764675>,  <17.850491, 17.544836, 26.559511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518566, 17.207222, 26.764675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.646200, 17.496426, 26.519581>,  <18.722780, 17.669947, 26.372524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.646200, 17.496426, 26.519581>,  <18.518566, 17.207222, 26.764675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.646200, 17.496426, 26.519581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596421, 0.349260, 0.722703,
		0.736524, -0.596051, -0.319774,
		0.319083, 0.723008, -0.612736,
		18.741924, 17.713327, 26.335760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273075, 17.120409, 26.661657>,  <18.518566, 17.207222, 26.764675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273075, 17.120409, 26.661657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.135374, 17.493530, 26.619003>,  <19.052753, 17.717403, 26.593410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.135374, 17.493530, 26.619003>,  <19.273075, 17.120409, 26.661657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.135374, 17.493530, 26.619003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570506, 0.298035, 0.765309,
		0.745663, 0.202623, -0.634769,
		-0.344253, 0.932802, -0.106636,
		19.032099, 17.773371, 26.587013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.913240, 17.545389, 26.731960>,  <19.273075, 17.120409, 26.661657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.913240, 17.545389, 26.731960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608101, 17.797073, 26.791496>,  <19.425016, 17.948084, 26.827217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608101, 17.797073, 26.791496>,  <19.913240, 17.545389, 26.731960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608101, 17.797073, 26.791496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531641, 0.479390, 0.698242,
		0.367990, 0.611784, -0.700217,
		-0.762850, 0.629211, 0.148839,
		19.379246, 17.985836, 26.836147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.285149, 18.159225, 26.749424>,  <19.913240, 17.545389, 26.731960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.285149, 18.159225, 26.749424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933527, 18.215528, 26.931610>,  <19.722553, 18.249311, 27.040922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933527, 18.215528, 26.931610>,  <20.285149, 18.159225, 26.749424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933527, 18.215528, 26.931610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471124, 0.402463, 0.784899,
		-0.072826, 0.904550, -0.420102,
		-0.879056, 0.140759, 0.455465,
		19.669811, 18.257755, 27.068249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346323, 18.783707, 27.043898>,  <20.285149, 18.159225, 26.749424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346323, 18.783707, 27.043898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013084, 18.632322, 27.205252>,  <19.813141, 18.541492, 27.302065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013084, 18.632322, 27.205252>,  <20.346323, 18.783707, 27.043898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013084, 18.632322, 27.205252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198717, 0.475806, 0.856808,
		-0.516202, 0.793962, -0.321185,
		-0.833095, -0.378461, 0.403386,
		19.763157, 18.518784, 27.326267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144989, 19.232964, 27.414461>,  <20.346323, 18.783707, 27.043898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144989, 19.232964, 27.414461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960649, 18.917875, 27.577978>,  <19.850046, 18.728823, 27.676088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.960649, 18.917875, 27.577978>,  <20.144989, 19.232964, 27.414461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960649, 18.917875, 27.577978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300627, 0.294826, 0.907029,
		-0.835009, 0.540898, 0.100940,
		-0.460851, -0.787723, 0.408791,
		19.822393, 18.681559, 27.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
