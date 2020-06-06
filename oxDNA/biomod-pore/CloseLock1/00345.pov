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
	<24.149744, 34.949135, 35.722710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166605, 35.035419, 35.332489>,  <24.176722, 35.087189, 35.098358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.166605, 35.035419, 35.332489>,  <24.149744, 34.949135, 35.722710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.166605, 35.035419, 35.332489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971077, 0.220832, 0.090787,
		0.235015, -0.951159, -0.200161,
		0.042151, 0.215709, -0.975548,
		24.179251, 35.100132, 35.039825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781940, 35.046638, 35.704205>,  <24.149744, 34.949135, 35.722710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781940, 35.046638, 35.704205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664246, 35.102402, 35.326000>,  <24.593628, 35.135860, 35.099079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664246, 35.102402, 35.326000>,  <24.781940, 35.046638, 35.704205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664246, 35.102402, 35.326000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935139, 0.246259, -0.254701,
		0.197332, -0.959125, -0.202827,
		-0.294238, 0.139411, -0.945510,
		24.575974, 35.144226, 35.042347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403435, 34.817329, 35.261543>,  <24.781940, 35.046638, 35.704205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403435, 34.817329, 35.261543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233814, 35.098080, 35.032616>,  <25.132042, 35.266529, 34.895260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233814, 35.098080, 35.032616>,  <25.403435, 34.817329, 35.261543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233814, 35.098080, 35.032616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903439, 0.283816, -0.321321,
		-0.063094, -0.653312, -0.754455,
		-0.424049, 0.701878, -0.572320,
		25.106600, 35.308643, 34.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725418, 34.247433, 34.860115>,  <25.403435, 34.817329, 35.261543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725418, 34.247433, 34.860115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036684, 34.491348, 34.799965>,  <26.223444, 34.637699, 34.763874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036684, 34.491348, 34.799965>,  <25.725418, 34.247433, 34.860115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036684, 34.491348, 34.799965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294471, 0.142757, -0.944938,
		-0.554749, 0.779598, 0.290655,
		0.778165, 0.609793, -0.150375,
		26.270134, 34.674286, 34.754852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529825, 34.646679, 34.238472>,  <25.725418, 34.247433, 34.860115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529825, 34.646679, 34.238472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911985, 34.763962, 34.252529>,  <26.141281, 34.834332, 34.260963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911985, 34.763962, 34.252529>,  <25.529825, 34.646679, 34.238472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911985, 34.763962, 34.252529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123965, 0.506233, -0.853441,
		-0.268029, 0.811022, 0.520003,
		0.955402, 0.293209, 0.035147,
		26.198606, 34.851925, 34.263073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519915, 35.429863, 34.140671>,  <25.529825, 34.646679, 34.238472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519915, 35.429863, 34.140671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862570, 35.257561, 34.027096>,  <26.068163, 35.154179, 33.958950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862570, 35.257561, 34.027096>,  <25.519915, 35.429863, 34.140671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862570, 35.257561, 34.027096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047377, 0.482352, -0.874695,
		0.513742, 0.762748, 0.392792,
		0.856636, -0.430758, -0.283942,
		26.119560, 35.128334, 33.941914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962883, 35.968498, 33.855579>,  <25.519915, 35.429863, 34.140671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962883, 35.968498, 33.855579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101379, 35.633991, 33.685509>,  <26.184477, 35.433289, 33.583466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101379, 35.633991, 33.685509>,  <25.962883, 35.968498, 33.855579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101379, 35.633991, 33.685509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098194, 0.418419, -0.902930,
		0.932993, 0.354381, 0.062757,
		0.346240, -0.836265, -0.425180,
		26.205252, 35.383110, 33.557953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333153, 36.280102, 33.410378>,  <25.962883, 35.968498, 33.855579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333153, 36.280102, 33.410378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298388, 35.903515, 33.280098>,  <26.277529, 35.677563, 33.201931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298388, 35.903515, 33.280098>,  <26.333153, 36.280102, 33.410378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298388, 35.903515, 33.280098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134660, 0.335035, -0.932533,
		0.987073, -0.037191, -0.155897,
		-0.086913, -0.941471, -0.325696,
		26.272314, 35.621075, 33.182388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800777, 36.207321, 32.806721>,  <26.333153, 36.280102, 33.410378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800777, 36.207321, 32.806721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529161, 35.917866, 32.757317>,  <26.366192, 35.744194, 32.727676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529161, 35.917866, 32.757317>,  <26.800777, 36.207321, 32.806721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529161, 35.917866, 32.757317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130879, 0.284886, -0.949584,
		0.722341, -0.628641, -0.288158,
		-0.679039, -0.723637, -0.123509,
		26.325449, 35.700775, 32.720264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854353, 35.920910, 32.132481>,  <26.800777, 36.207321, 32.806721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854353, 35.920910, 32.132481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485657, 35.793941, 32.221596>,  <26.264439, 35.717762, 32.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485657, 35.793941, 32.221596>,  <26.854353, 35.920910, 32.132481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485657, 35.793941, 32.221596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256601, 0.068459, -0.964090,
		0.290768, -0.945811, -0.144552,
		-0.921743, -0.317418, 0.222790,
		26.209133, 35.698715, 32.288433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688454, 35.505608, 31.477982>,  <26.854353, 35.920910, 32.132481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688454, 35.505608, 31.477982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343086, 35.582268, 31.664648>,  <26.135866, 35.628265, 31.776648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343086, 35.582268, 31.664648>,  <26.688454, 35.505608, 31.477982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343086, 35.582268, 31.664648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491709, -0.112824, -0.863419,
		-0.112824, -0.974957, 0.191650,
		0.863419, -0.191650, -0.466666,
		26.084061, 35.639763, 31.804647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324902, 34.999569, 31.316439>,  <26.688454, 35.505608, 31.477982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324902, 34.999569, 31.316439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066790, 35.287212, 31.419586>,  <25.911922, 35.459797, 31.481474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066790, 35.287212, 31.419586>,  <26.324902, 34.999569, 31.316439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066790, 35.287212, 31.419586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423405, -0.055686, -0.904228,
		-0.635880, -0.692661, 0.340407,
		-0.645279, 0.719111, 0.257867,
		25.873205, 35.502945, 31.496946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595995, 34.768211, 31.107975>,  <26.324902, 34.999569, 31.316439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595995, 34.768211, 31.107975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536417, 35.159267, 31.167362>,  <25.500671, 35.393902, 31.202995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536417, 35.159267, 31.167362>,  <25.595995, 34.768211, 31.107975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536417, 35.159267, 31.167362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409995, 0.075575, -0.908951,
		-0.899844, -0.196254, 0.389570,
		-0.148943, 0.977636, 0.148468,
		25.491734, 35.452557, 31.211903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868755, 34.914940, 31.003521>,  <25.595995, 34.768211, 31.107975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868755, 34.914940, 31.003521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054344, 35.267296, 30.966085>,  <25.165697, 35.478710, 30.943624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054344, 35.267296, 30.966085>,  <24.868755, 34.914940, 31.003521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054344, 35.267296, 30.966085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325510, 0.071278, -0.942848,
		-0.823876, 0.467920, 0.319810,
		0.463974, 0.880892, -0.093588,
		25.193537, 35.531563, 30.938009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352554, 35.426983, 30.645416>,  <24.868755, 34.914940, 31.003521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352554, 35.426983, 30.645416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729923, 35.534023, 30.567091>,  <24.956345, 35.598248, 30.520096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729923, 35.534023, 30.567091>,  <24.352554, 35.426983, 30.645416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729923, 35.534023, 30.567091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246135, 0.169447, -0.954309,
		-0.222194, 0.948513, 0.225726,
		0.943423, 0.267601, -0.195812,
		25.012951, 35.614304, 30.508347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188154, 35.889874, 30.176275>,  <24.352554, 35.426983, 30.645416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188154, 35.889874, 30.176275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579794, 35.820400, 30.133940>,  <24.814777, 35.778717, 30.108540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579794, 35.820400, 30.133940>,  <24.188154, 35.889874, 30.176275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579794, 35.820400, 30.133940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051997, 0.289318, -0.955820,
		0.196634, 0.941344, 0.274239,
		0.979097, -0.173688, -0.105837,
		24.873524, 35.768295, 30.102188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510962, 36.467522, 29.777592>,  <24.188154, 35.889874, 30.176275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510962, 36.467522, 29.777592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752575, 36.151501, 29.735706>,  <24.897543, 35.961887, 29.710575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752575, 36.151501, 29.735706>,  <24.510962, 36.467522, 29.777592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752575, 36.151501, 29.735706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007573, 0.137074, -0.990532,
		0.796923, 0.597521, 0.088781,
		0.604034, -0.790050, -0.104713,
		24.933784, 35.914486, 29.704292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997757, 36.777260, 29.429401>,  <24.510962, 36.467522, 29.777592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997757, 36.777260, 29.429401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014862, 36.381344, 29.375010>,  <25.025126, 36.143795, 29.342375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014862, 36.381344, 29.375010>,  <24.997757, 36.777260, 29.429401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014862, 36.381344, 29.375010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098933, 0.131240, -0.986402,
		0.994175, 0.055632, -0.092311,
		0.042761, -0.989788, -0.135979,
		25.027691, 36.084408, 29.334215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311338, 36.801311, 28.813292>,  <24.997757, 36.777260, 29.429401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311338, 36.801311, 28.813292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186594, 36.422333, 28.841805>,  <25.111748, 36.194946, 28.858913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186594, 36.422333, 28.841805>,  <25.311338, 36.801311, 28.813292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186594, 36.422333, 28.841805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085047, -0.046889, -0.995273,
		0.946314, -0.316448, -0.065955,
		-0.311860, -0.947451, 0.071284,
		25.093037, 36.138096, 28.863190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635176, 36.447403, 28.288853>,  <25.311338, 36.801311, 28.813292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635176, 36.447403, 28.288853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310713, 36.221611, 28.350016>,  <25.116035, 36.086136, 28.386713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310713, 36.221611, 28.350016>,  <25.635176, 36.447403, 28.288853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310713, 36.221611, 28.350016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181898, -0.004975, -0.983305,
		0.555821, -0.825429, -0.098643,
		-0.811157, -0.564484, 0.152909,
		25.067366, 36.052265, 28.395889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678171, 35.954971, 27.722151>,  <25.635176, 36.447403, 28.288853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678171, 35.954971, 27.722151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307364, 35.885105, 27.854895>,  <25.084879, 35.843185, 27.934542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307364, 35.885105, 27.854895>,  <25.678171, 35.954971, 27.722151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307364, 35.885105, 27.854895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289409, -0.229580, -0.929266,
		0.238499, -0.957489, 0.162275,
		-0.927017, -0.174665, 0.331861,
		25.029259, 35.832706, 27.954453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466557, 35.312904, 27.586857>,  <25.678171, 35.954971, 27.722151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466557, 35.312904, 27.586857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125063, 35.520420, 27.604719>,  <24.920166, 35.644932, 27.615437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125063, 35.520420, 27.604719>,  <25.466557, 35.312904, 27.586857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125063, 35.520420, 27.604719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236057, -0.309161, -0.921247,
		-0.464130, -0.797041, 0.386406,
		-0.853733, 0.518792, 0.044656,
		24.868942, 35.676056, 27.618116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916887, 34.864861, 27.550322>,  <25.466557, 35.312904, 27.586857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916887, 34.864861, 27.550322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770805, 35.218300, 27.433100>,  <24.683157, 35.430363, 27.362766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770805, 35.218300, 27.433100>,  <24.916887, 34.864861, 27.550322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770805, 35.218300, 27.433100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363570, -0.425175, -0.828881,
		-0.856996, -0.196167, 0.476525,
		-0.365205, 0.883598, -0.293053,
		24.661243, 35.483379, 27.345184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.184643, 34.673904, 27.398891>,  <24.916887, 34.864861, 27.550322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.184643, 34.673904, 27.398891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356915, 34.974751, 27.199360>,  <24.460278, 35.155258, 27.079641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356915, 34.974751, 27.199360>,  <24.184643, 34.673904, 27.398891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356915, 34.974751, 27.199360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239557, -0.437620, -0.866661,
		-0.870130, 0.492753, -0.008299,
		0.430681, 0.752119, -0.498829,
		24.486118, 35.200386, 27.049711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.724487, 34.850178, 26.889099>,  <24.184643, 34.673904, 27.398891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.724487, 34.850178, 26.889099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118275, 34.876610, 26.824038>,  <24.354548, 34.892471, 26.785000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118275, 34.876610, 26.824038>,  <23.724487, 34.850178, 26.889099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.118275, 34.876610, 26.824038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082900, -0.641700, -0.762462,
		-0.154761, 0.764103, -0.626255,
		0.984468, 0.066083, -0.162654,
		24.413614, 34.896435, 26.775242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.831821, 34.897873, 26.119898>,  <23.724487, 34.850178, 26.889099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.831821, 34.897873, 26.119898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205233, 34.819000, 26.239662>,  <24.429279, 34.771675, 26.311522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205233, 34.819000, 26.239662>,  <23.831821, 34.897873, 26.119898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205233, 34.819000, 26.239662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123342, -0.607530, -0.784662,
		0.336621, 0.769433, -0.542825,
		0.933527, -0.197180, 0.299410,
		24.485291, 34.759846, 26.329485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.290062, 35.061993, 25.525139>,  <23.831821, 34.897873, 26.119898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.290062, 35.061993, 25.525139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452442, 34.806450, 25.786537>,  <24.549871, 34.653122, 25.943377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452442, 34.806450, 25.786537>,  <24.290062, 35.061993, 25.525139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452442, 34.806450, 25.786537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161809, -0.653527, -0.739406,
		0.899456, 0.405905, -0.161927,
		0.405952, -0.638862, 0.653497,
		24.574228, 34.614792, 25.982586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955393, 34.945877, 25.345818>,  <24.290062, 35.061993, 25.525139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955393, 34.945877, 25.345818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832664, 34.627850, 25.555092>,  <24.759027, 34.437031, 25.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832664, 34.627850, 25.555092>,  <24.955393, 34.945877, 25.345818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832664, 34.627850, 25.555092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178603, -0.588031, -0.788873,
		0.934859, -0.148600, 0.322422,
		-0.306820, -0.795071, 0.523186,
		24.740618, 34.389328, 25.712048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190865, 34.677620, 25.995914>,  <24.955393, 34.945877, 25.345818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190865, 34.677620, 25.995914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265644, 34.562061, 25.620342>,  <25.310513, 34.492725, 25.394999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.265644, 34.562061, 25.620342>,  <25.190865, 34.677620, 25.995914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265644, 34.562061, 25.620342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563547, 0.814412, -0.138376,
		0.804652, -0.503263, 0.315059,
		0.186948, -0.288895, -0.938930,
		25.321728, 34.475391, 25.338663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857590, 34.856575, 25.970194>,  <25.190865, 34.677620, 25.995914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857590, 34.856575, 25.970194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741943, 34.766270, 25.598078>,  <25.672556, 34.712086, 25.374807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741943, 34.766270, 25.598078>,  <25.857590, 34.856575, 25.970194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741943, 34.766270, 25.598078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713922, 0.596560, -0.366648,
		0.637751, -0.770160, -0.011299,
		-0.289118, -0.225764, -0.930291,
		25.655209, 34.698540, 25.318991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419037, 34.547615, 25.478460>,  <25.857590, 34.856575, 25.970194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419037, 34.547615, 25.478460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154219, 34.735565, 25.244909>,  <25.995327, 34.848335, 25.104778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154219, 34.735565, 25.244909>,  <26.419037, 34.547615, 25.478460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154219, 34.735565, 25.244909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748849, 0.383183, -0.540736,
		-0.030349, -0.795227, -0.605552,
		-0.662045, 0.469878, -0.583876,
		25.955605, 34.876530, 25.069746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387951, 33.875126, 25.223587>,  <26.419037, 34.547615, 25.478460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387951, 33.875126, 25.223587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494848, 34.148300, 24.951654>,  <26.558987, 34.312206, 24.788494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494848, 34.148300, 24.951654>,  <26.387951, 33.875126, 25.223587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494848, 34.148300, 24.951654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932261, -0.004696, 0.361757,
		0.243866, -0.730459, -0.637933,
		0.267244, 0.682940, -0.679833,
		26.575022, 34.353184, 24.747704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979879, 33.773636, 24.870909>,  <26.387951, 33.875126, 25.223587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979879, 33.773636, 24.870909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983805, 34.171204, 24.914772>,  <26.986160, 34.409744, 24.941090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983805, 34.171204, 24.914772>,  <26.979879, 33.773636, 24.870909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983805, 34.171204, 24.914772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757308, -0.078997, 0.648263,
		0.652984, 0.076683, -0.753479,
		0.009812, 0.993921, 0.109656,
		26.986748, 34.469379, 24.947668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517612, 33.825058, 25.247871>,  <26.979879, 33.773636, 24.870909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517612, 33.825058, 25.247871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397150, 34.206398, 25.256184>,  <27.324873, 34.435204, 25.261171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397150, 34.206398, 25.256184>,  <27.517612, 33.825058, 25.247871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397150, 34.206398, 25.256184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491212, 0.136417, 0.860291,
		0.817323, 0.269288, -0.509379,
		-0.301154, 0.953349, 0.020781,
		27.306805, 34.492401, 25.262419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057520, 34.293427, 25.398806>,  <27.517612, 33.825058, 25.247871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057520, 34.293427, 25.398806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703430, 34.403084, 25.549122>,  <27.490976, 34.468880, 25.639313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703430, 34.403084, 25.549122>,  <28.057520, 34.293427, 25.398806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703430, 34.403084, 25.549122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390337, -0.001624, 0.920671,
		0.253006, 0.961688, -0.105571,
		-0.885226, 0.274143, 0.375793,
		27.437862, 34.485325, 25.661860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177938, 34.808067, 25.868256>,  <28.057520, 34.293427, 25.398806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177938, 34.808067, 25.868256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834309, 34.638508, 25.983004>,  <27.628130, 34.536770, 26.051851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834309, 34.638508, 25.983004>,  <28.177938, 34.808067, 25.868256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834309, 34.638508, 25.983004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203085, 0.232166, 0.951239,
		-0.469834, 0.875446, -0.113360,
		-0.859077, -0.423903, 0.286869,
		27.576586, 34.511337, 26.069065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854996, 35.282032, 26.310375>,  <28.177938, 34.808067, 25.868256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854996, 35.282032, 26.310375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688496, 34.924965, 26.379517>,  <27.588594, 34.710724, 26.421001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688496, 34.924965, 26.379517>,  <27.854996, 35.282032, 26.310375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688496, 34.924965, 26.379517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002343, 0.191159, 0.981556,
		-0.909246, 0.408170, -0.081662,
		-0.416253, -0.892668, 0.172854,
		27.563620, 34.657166, 26.431374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222797, 35.423641, 26.849714>,  <27.854996, 35.282032, 26.310375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222797, 35.423641, 26.849714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311161, 35.033535, 26.846468>,  <27.364180, 34.799473, 26.844521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311161, 35.033535, 26.846468>,  <27.222797, 35.423641, 26.849714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311161, 35.033535, 26.846468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101020, -0.031156, 0.994396,
		-0.970049, -0.218850, -0.105404,
		0.220908, -0.975261, -0.008115,
		27.377434, 34.740955, 26.844034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739916, 35.176571, 27.273727>,  <27.222797, 35.423641, 26.849714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739916, 35.176571, 27.273727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069134, 34.949509, 27.266130>,  <27.266665, 34.813271, 27.261572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069134, 34.949509, 27.266130>,  <26.739916, 35.176571, 27.273727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069134, 34.949509, 27.266130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018254, -0.059861, 0.998040,
		-0.567680, -0.821087, -0.059631,
		0.823047, -0.567656, -0.018994,
		27.316048, 34.779213, 27.260433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633108, 34.645885, 27.741732>,  <26.739916, 35.176571, 27.273727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633108, 34.645885, 27.741732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029169, 34.660225, 27.687599>,  <27.266806, 34.668831, 27.655119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029169, 34.660225, 27.687599>,  <26.633108, 34.645885, 27.741732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029169, 34.660225, 27.687599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136404, -0.029312, 0.990220,
		0.031536, -0.998927, -0.033914,
		0.990152, 0.035853, -0.135333,
		27.326214, 34.670979, 27.646999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906101, 34.207386, 28.294334>,  <26.633108, 34.645885, 27.741732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906101, 34.207386, 28.294334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203743, 34.439499, 28.161922>,  <27.382328, 34.578766, 28.082476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203743, 34.439499, 28.161922>,  <26.906101, 34.207386, 28.294334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203743, 34.439499, 28.161922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314071, 0.133480, 0.939970,
		0.589633, -0.803403, -0.082927,
		0.744105, 0.580281, -0.331029,
		27.426975, 34.613583, 28.062614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482029, 33.891548, 28.408098>,  <26.906101, 34.207386, 28.294334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482029, 33.891548, 28.408098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596771, 34.274734, 28.406242>,  <27.665617, 34.504646, 28.405128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596771, 34.274734, 28.406242>,  <27.482029, 33.891548, 28.408098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596771, 34.274734, 28.406242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386549, -0.111318, 0.915526,
		0.876523, -0.264416, -0.402232,
		0.286856, 0.957963, -0.004637,
		27.682829, 34.562122, 28.404852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100191, 33.917831, 28.789301>,  <27.482029, 33.891548, 28.408098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100191, 33.917831, 28.789301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031530, 34.310444, 28.755526>,  <27.990334, 34.546013, 28.735260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031530, 34.310444, 28.755526>,  <28.100191, 33.917831, 28.789301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031530, 34.310444, 28.755526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296254, 0.133172, 0.945779,
		0.939558, 0.137329, -0.313642,
		-0.171651, 0.981533, -0.084438,
		27.980036, 34.604904, 28.730194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718998, 34.203293, 29.068003>,  <28.100191, 33.917831, 28.789301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718998, 34.203293, 29.068003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407740, 34.451054, 29.109642>,  <28.220985, 34.599709, 29.134626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407740, 34.451054, 29.109642>,  <28.718998, 34.203293, 29.068003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407740, 34.451054, 29.109642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238101, 0.137538, 0.961453,
		0.581204, 0.772936, -0.254503,
		-0.778145, 0.619397, 0.104099,
		28.174295, 34.636871, 29.140871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995449, 34.884296, 29.340124>,  <28.718998, 34.203293, 29.068003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995449, 34.884296, 29.340124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603319, 34.886951, 29.419035>,  <28.368040, 34.888546, 29.466381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603319, 34.886951, 29.419035>,  <28.995449, 34.884296, 29.340124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603319, 34.886951, 29.419035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190315, 0.296945, 0.935737,
		-0.052365, 0.954872, -0.292367,
		-0.980326, 0.006642, 0.197276,
		28.309221, 34.888943, 29.478218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908323, 35.448971, 29.683575>,  <28.995449, 34.884296, 29.340124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908323, 35.448971, 29.683575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593361, 35.223068, 29.782398>,  <28.404383, 35.087524, 29.841692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593361, 35.223068, 29.782398>,  <28.908323, 35.448971, 29.683575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593361, 35.223068, 29.782398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159101, 0.201014, 0.966582,
		-0.595549, 0.800400, -0.068426,
		-0.787406, -0.564760, 0.247058,
		28.357140, 35.053638, 29.856516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639418, 35.769081, 30.173479>,  <28.908323, 35.448971, 29.683575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639418, 35.769081, 30.173479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446016, 35.426754, 30.247026>,  <28.329975, 35.221359, 30.291155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446016, 35.426754, 30.247026>,  <28.639418, 35.769081, 30.173479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446016, 35.426754, 30.247026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034702, 0.191148, 0.980948,
		-0.874655, 0.480670, -0.062722,
		-0.483501, -0.855815, 0.183868,
		28.300966, 35.170010, 30.302187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089619, 35.906631, 30.674212>,  <28.639418, 35.769081, 30.173479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089619, 35.906631, 30.674212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168547, 35.514629, 30.684513>,  <28.215904, 35.279430, 30.690693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168547, 35.514629, 30.684513>,  <28.089619, 35.906631, 30.674212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168547, 35.514629, 30.684513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129541, 0.052104, 0.990204,
		-0.971742, -0.192052, 0.137232,
		0.197321, -0.980000, 0.025753,
		28.227743, 35.220631, 30.692240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712240, 35.677956, 31.296770>,  <28.089619, 35.906631, 30.674212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712240, 35.677956, 31.296770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973755, 35.382366, 31.231682>,  <28.130663, 35.205013, 31.192629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973755, 35.382366, 31.231682>,  <27.712240, 35.677956, 31.296770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973755, 35.382366, 31.231682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098862, -0.129785, 0.986601,
		-0.750193, -0.661114, -0.011796,
		0.653787, -0.738975, -0.162723,
		28.169891, 35.160675, 31.182865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563955, 35.274788, 31.830847>,  <27.712240, 35.677956, 31.296770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563955, 35.274788, 31.830847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916695, 35.133305, 31.706120>,  <28.128338, 35.048412, 31.631283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916695, 35.133305, 31.706120>,  <27.563955, 35.274788, 31.830847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916695, 35.133305, 31.706120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287457, -0.120924, 0.950129,
		-0.373779, -0.927504, -0.004960,
		0.881849, -0.353713, -0.311816,
		28.181250, 35.027191, 31.612576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686405, 34.564156, 32.105938>,  <27.563955, 35.274788, 31.830847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686405, 34.564156, 32.105938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041317, 34.734772, 32.035736>,  <28.254265, 34.837139, 31.993616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041317, 34.734772, 32.035736>,  <27.686405, 34.564156, 32.105938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041317, 34.734772, 32.035736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236670, -0.094447, 0.966989,
		0.395880, -0.899526, -0.184749,
		0.887280, 0.426536, -0.175501,
		28.307501, 34.862732, 31.983086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170147, 34.142216, 32.483761>,  <27.686405, 34.564156, 32.105938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170147, 34.142216, 32.483761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356279, 34.488113, 32.408192>,  <28.467958, 34.695652, 32.362850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356279, 34.488113, 32.408192>,  <28.170147, 34.142216, 32.483761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356279, 34.488113, 32.408192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335518, 0.025189, 0.941697,
		0.819082, -0.501587, -0.278415,
		0.465330, 0.864740, -0.188923,
		28.495878, 34.747536, 32.351513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824995, 33.989555, 32.767899>,  <28.170147, 34.142216, 32.483761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824995, 33.989555, 32.767899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803022, 34.384216, 32.706581>,  <28.789839, 34.621014, 32.669788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803022, 34.384216, 32.706581>,  <28.824995, 33.989555, 32.767899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803022, 34.384216, 32.706581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452248, 0.161463, 0.877155,
		0.890199, -0.021145, -0.455080,
		-0.054931, 0.986652, -0.153297,
		28.786543, 34.680210, 32.660591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423500, 34.215843, 32.979282>,  <28.824995, 33.989555, 32.767899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423500, 34.215843, 32.979282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210951, 34.554577, 32.970284>,  <29.083422, 34.757816, 32.964882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210951, 34.554577, 32.970284>,  <29.423500, 34.215843, 32.979282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210951, 34.554577, 32.970284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430649, 0.292907, 0.853667,
		0.729508, 0.443927, -0.520333,
		-0.531375, 0.846838, -0.022502,
		29.051538, 34.808628, 32.963531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895441, 34.840668, 33.145142>,  <29.423500, 34.215843, 32.979282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895441, 34.840668, 33.145142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523092, 34.950062, 33.242039>,  <29.299683, 35.015697, 33.300175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523092, 34.950062, 33.242039>,  <29.895441, 34.840668, 33.145142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523092, 34.950062, 33.242039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302448, 0.204937, 0.930874,
		0.204937, 0.939791, -0.273485,
		-0.930874, 0.273485, 0.242239,
		29.243830, 35.032108, 33.314709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005764, 35.549191, 33.452240>,  <29.895441, 34.840668, 33.145142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005764, 35.549191, 33.452240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709972, 35.309464, 33.574867>,  <29.532497, 35.165627, 33.648445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709972, 35.309464, 33.574867>,  <30.005764, 35.549191, 33.452240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709972, 35.309464, 33.574867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394771, -0.017191, 0.918618,
		-0.545278, 0.800323, 0.249308,
		-0.739478, -0.599322, 0.306571,
		29.488129, 35.129665, 33.666840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798845, 35.909603, 34.060230>,  <30.005764, 35.549191, 33.452240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798845, 35.909603, 34.060230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683222, 35.528278, 34.025276>,  <29.613848, 35.299484, 34.004303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683222, 35.528278, 34.025276>,  <29.798845, 35.909603, 34.060230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683222, 35.528278, 34.025276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581158, -0.247286, 0.775310,
		-0.760724, 0.173323, 0.625506,
		-0.289057, -0.953315, -0.087388,
		29.596504, 35.242283, 33.999062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340364, 35.596382, 34.630833>,  <29.798845, 35.909603, 34.060230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340364, 35.596382, 34.630833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622021, 35.362068, 34.470310>,  <29.791014, 35.221481, 34.373997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622021, 35.362068, 34.470310>,  <29.340364, 35.596382, 34.630833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622021, 35.362068, 34.470310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404885, -0.133059, 0.904634,
		-0.583316, -0.799472, 0.143482,
		0.704139, -0.585781, -0.401310,
		29.833261, 35.186333, 34.349918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295563, 35.055500, 34.990440>,  <29.340364, 35.596382, 34.630833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295563, 35.055500, 34.990440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678541, 35.106709, 34.886974>,  <29.908327, 35.137436, 34.824894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678541, 35.106709, 34.886974>,  <29.295563, 35.055500, 34.990440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678541, 35.106709, 34.886974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269549, -0.076288, 0.959960,
		0.103166, -0.988832, -0.107550,
		0.957444, 0.128025, -0.258668,
		29.965775, 35.145115, 34.809372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830736, 34.494881, 35.202969>,  <29.295563, 35.055500, 34.990440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830736, 34.494881, 35.202969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971174, 34.867336, 35.163555>,  <30.055437, 35.090809, 35.139908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971174, 34.867336, 35.163555>,  <29.830736, 34.494881, 35.202969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971174, 34.867336, 35.163555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101544, 0.066748, 0.992590,
		0.930817, -0.358499, -0.071117,
		0.351096, 0.931141, -0.098534,
		30.076504, 35.146679, 35.133995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519516, 34.493744, 35.533863>,  <29.830736, 34.494881, 35.202969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519516, 34.493744, 35.533863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336357, 34.848530, 35.509766>,  <30.226461, 35.061401, 35.495308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336357, 34.848530, 35.509766>,  <30.519516, 34.493744, 35.533863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336357, 34.848530, 35.509766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184207, 0.160960, 0.969618,
		0.869713, 0.432885, -0.237088,
		-0.457895, 0.886963, -0.060248,
		30.198988, 35.114620, 35.491692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021608, 35.008114, 35.955006>,  <30.519516, 34.493744, 35.533863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021608, 35.008114, 35.955006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628042, 35.070866, 35.920822>,  <30.391903, 35.108517, 35.900314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628042, 35.070866, 35.920822>,  <31.021608, 35.008114, 35.955006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628042, 35.070866, 35.920822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049254, 0.221583, 0.973897,
		0.171722, 0.962439, -0.210291,
		-0.983913, 0.156882, -0.085455,
		30.332869, 35.117931, 35.895187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773943, 35.603706, 36.262753>,  <31.021608, 35.008114, 35.955006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773943, 35.603706, 36.262753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456558, 35.361645, 36.288704>,  <30.266127, 35.216408, 36.304276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456558, 35.361645, 36.288704>,  <30.773943, 35.603706, 36.262753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456558, 35.361645, 36.288704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027046, 0.071437, 0.997078,
		-0.608017, 0.792899, -0.040316,
		-0.793463, -0.605151, 0.064880,
		30.218519, 35.180099, 36.308167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255932, 35.941483, 36.728127>,  <30.773943, 35.603706, 36.262753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255932, 35.941483, 36.728127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200609, 35.545879, 36.749035>,  <30.167416, 35.308517, 36.761581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200609, 35.545879, 36.749035>,  <30.255932, 35.941483, 36.728127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200609, 35.545879, 36.749035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131345, 0.034000, 0.990753,
		-0.981642, 0.143892, 0.125199,
		-0.138305, -0.989009, 0.052275,
		30.159119, 35.249176, 36.764717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775110, 35.775078, 37.298889>,  <30.255932, 35.941483, 36.728127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775110, 35.775078, 37.298889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049099, 35.492687, 37.226871>,  <30.213491, 35.323254, 37.183662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049099, 35.492687, 37.226871>,  <29.775110, 35.775078, 37.298889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049099, 35.492687, 37.226871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279677, 0.026604, 0.959725,
		-0.672752, -0.707737, 0.215668,
		0.684971, -0.705975, -0.180040,
		30.254591, 35.280895, 37.172859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827017, 35.425915, 37.880241>,  <29.775110, 35.775078, 37.298889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827017, 35.425915, 37.880241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146837, 35.284626, 37.685940>,  <30.338730, 35.199852, 37.569359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146837, 35.284626, 37.685940>,  <29.827017, 35.425915, 37.880241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146837, 35.284626, 37.685940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490107, -0.083771, 0.867627,
		-0.347155, -0.931782, 0.106137,
		0.799549, -0.353220, -0.485755,
		30.386702, 35.178661, 37.540215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032362, 34.909885, 38.284000>,  <29.827017, 35.425915, 37.880241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032362, 34.909885, 38.284000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346130, 35.035042, 38.069790>,  <30.534391, 35.110134, 37.941265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346130, 35.035042, 38.069790>,  <30.032362, 34.909885, 38.284000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346130, 35.035042, 38.069790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551737, 0.042391, 0.832940,
		0.283318, -0.948843, -0.139380,
		0.784421, 0.312888, -0.535522,
		30.581457, 35.128906, 37.909134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540277, 34.542244, 38.473324>,  <30.032362, 34.909885, 38.284000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540277, 34.542244, 38.473324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754734, 34.835365, 38.305729>,  <30.883408, 35.011238, 38.205173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754734, 34.835365, 38.305729>,  <30.540277, 34.542244, 38.473324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754734, 34.835365, 38.305729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642060, -0.031788, 0.765995,
		0.548007, -0.679694, -0.487549,
		0.536141, 0.732807, -0.418984,
		30.915577, 35.055206, 38.180035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218565, 34.357342, 38.562836>,  <30.540277, 34.542244, 38.473324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218565, 34.357342, 38.562836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270622, 34.745003, 38.479122>,  <31.301857, 34.977600, 38.428894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270622, 34.745003, 38.479122>,  <31.218565, 34.357342, 38.562836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270622, 34.745003, 38.479122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797017, 0.023296, 0.603508,
		0.589769, -0.245344, -0.769402,
		0.130143, 0.969156, -0.209282,
		31.309666, 35.035751, 38.416336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940472, 34.455654, 38.365223>,  <31.218565, 34.357342, 38.562836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940472, 34.455654, 38.365223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811274, 34.811436, 38.494560>,  <31.733755, 35.024906, 38.572163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811274, 34.811436, 38.494560>,  <31.940472, 34.455654, 38.365223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811274, 34.811436, 38.494560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791821, 0.066849, 0.607084,
		0.518358, 0.452111, -0.725879,
		-0.322994, 0.889453, 0.323339,
		31.714375, 35.078270, 38.591560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500034, 34.842812, 38.368832>,  <31.940472, 34.455654, 38.365223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500034, 34.842812, 38.368832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252701, 35.013939, 38.632538>,  <32.104301, 35.116615, 38.790764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252701, 35.013939, 38.632538>,  <32.500034, 34.842812, 38.368832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252701, 35.013939, 38.632538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643994, -0.205020, 0.737048,
		0.450488, 0.880305, -0.148744,
		-0.618331, 0.427821, 0.659269,
		32.067200, 35.142284, 38.830318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856358, 35.228405, 38.827618>,  <32.500034, 34.842812, 38.368832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856358, 35.228405, 38.827618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512955, 35.169971, 39.024239>,  <32.306915, 35.134911, 39.142212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512955, 35.169971, 39.024239>,  <32.856358, 35.228405, 38.827618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512955, 35.169971, 39.024239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510363, -0.336849, 0.791241,
		0.049989, 0.930156, 0.363745,
		-0.858505, -0.146088, 0.491556,
		32.255402, 35.126144, 39.171707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042461, 35.471233, 39.402191>,  <32.856358, 35.228405, 38.827618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042461, 35.471233, 39.402191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723991, 35.252583, 39.505959>,  <32.532909, 35.121391, 39.568218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723991, 35.252583, 39.505959>,  <33.042461, 35.471233, 39.402191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723991, 35.252583, 39.505959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430035, -0.209610, 0.878142,
		-0.425640, 0.810717, 0.401956,
		-0.796179, -0.546627, 0.259418,
		32.485138, 35.088593, 39.583782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946095, 35.577526, 40.099709>,  <33.042461, 35.471233, 39.402191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946095, 35.577526, 40.099709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727314, 35.247612, 40.042336>,  <32.596046, 35.049664, 40.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727314, 35.247612, 40.042336>,  <32.946095, 35.577526, 40.099709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727314, 35.247612, 40.042336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176657, -0.281178, 0.943255,
		-0.818314, 0.490576, 0.299495,
		-0.546950, -0.824787, -0.143428,
		32.563229, 35.000175, 39.999306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632088, 35.350044, 40.773655>,  <32.946095, 35.577526, 40.099709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632088, 35.350044, 40.773655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581654, 35.021351, 40.551353>,  <32.551395, 34.824135, 40.417973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581654, 35.021351, 40.551353>,  <32.632088, 35.350044, 40.773655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581654, 35.021351, 40.551353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204291, -0.569726, 0.796038,
		-0.970757, -0.013171, 0.239703,
		-0.126081, -0.821729, -0.555756,
		32.543831, 34.774834, 40.384628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271053, 34.844151, 41.234295>,  <32.632088, 35.350044, 40.773655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271053, 34.844151, 41.234295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456028, 34.643948, 40.941547>,  <32.567013, 34.523827, 40.765900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456028, 34.643948, 40.941547>,  <32.271053, 34.844151, 41.234295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456028, 34.643948, 40.941547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309592, -0.682333, 0.662249,
		-0.830845, -0.532832, -0.160584,
		0.462439, -0.500511, -0.731873,
		32.594761, 34.493793, 40.721985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024269, 34.188633, 41.185181>,  <32.271053, 34.844151, 41.234295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024269, 34.188633, 41.185181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394405, 34.165939, 41.035236>,  <32.616489, 34.152325, 40.945271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394405, 34.165939, 41.035236>,  <32.024269, 34.188633, 41.185181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394405, 34.165939, 41.035236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241446, -0.674138, 0.698027,
		-0.292310, -0.736424, -0.610111,
		0.925342, -0.056732, -0.374864,
		32.672009, 34.148918, 40.922775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146450, 33.438850, 41.120369>,  <32.024269, 34.188633, 41.185181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146450, 33.438850, 41.120369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503761, 33.618572, 41.125664>,  <32.718147, 33.726406, 41.128841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503761, 33.618572, 41.125664>,  <32.146450, 33.438850, 41.120369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503761, 33.618572, 41.125664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337985, -0.690792, 0.639197,
		0.296337, -0.566509, -0.768929,
		0.893281, 0.449305, 0.013236,
		32.771744, 33.753365, 41.129635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583397, 32.862629, 41.272644>,  <32.146450, 33.438850, 41.120369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583397, 32.862629, 41.272644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805317, 33.176434, 41.383457>,  <32.938469, 33.364716, 41.449944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805317, 33.176434, 41.383457>,  <32.583397, 32.862629, 41.272644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805317, 33.176434, 41.383457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352974, -0.523463, 0.775497,
		0.753400, -0.332458, -0.567327,
		0.554795, 0.784511, 0.277028,
		32.971756, 33.411785, 41.466564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193851, 32.542564, 41.516068>,  <32.583397, 32.862629, 41.272644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193851, 32.542564, 41.516068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184250, 32.911915, 41.669323>,  <33.178490, 33.133526, 41.761276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184250, 32.911915, 41.669323>,  <33.193851, 32.542564, 41.516068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184250, 32.911915, 41.669323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333174, -0.353947, 0.873909,
		0.942560, 0.148626, -0.299151,
		-0.024002, 0.923381, 0.383134,
		33.177048, 33.188931, 41.784264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777061, 32.691959, 41.953968>,  <33.193851, 32.542564, 41.516068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777061, 32.691959, 41.953968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549744, 32.994881, 42.082672>,  <33.413353, 33.176632, 42.159897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549744, 32.994881, 42.082672>,  <33.777061, 32.691959, 41.953968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549744, 32.994881, 42.082672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345032, -0.135683, 0.928732,
		0.746990, 0.638812, -0.184187,
		-0.568294, 0.757304, 0.321764,
		33.379257, 33.222073, 42.179203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185528, 33.008457, 42.470882>,  <33.777061, 32.691959, 41.953968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185528, 33.008457, 42.470882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814064, 33.139477, 42.540504>,  <33.591187, 33.218090, 42.582279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814064, 33.139477, 42.540504>,  <34.185528, 33.008457, 42.470882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814064, 33.139477, 42.540504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185506, 0.003771, 0.982636,
		0.321204, 0.944827, -0.064264,
		-0.928663, 0.327548, 0.174059,
		33.535465, 33.237740, 42.592724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277824, 33.561600, 42.853279>,  <34.185528, 33.008457, 42.470882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277824, 33.561600, 42.853279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905582, 33.427101, 42.911129>,  <33.682240, 33.346401, 42.945839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905582, 33.427101, 42.911129>,  <34.277824, 33.561600, 42.853279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905582, 33.427101, 42.911129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193012, -0.115070, 0.974426,
		-0.311006, 0.934718, 0.171985,
		-0.930603, -0.336247, 0.144624,
		33.626400, 33.326225, 42.954517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013454, 33.991859, 43.427353>,  <34.277824, 33.561600, 42.853279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013454, 33.991859, 43.427353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829441, 33.638691, 43.389774>,  <33.719032, 33.426792, 43.367226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829441, 33.638691, 43.389774>,  <34.013454, 33.991859, 43.427353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829441, 33.638691, 43.389774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105377, -0.159352, 0.981582,
		-0.881626, 0.441661, 0.166347,
		-0.460034, -0.882917, -0.093948,
		33.691429, 33.373817, 43.361591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079811, 33.698318, 44.024384>,  <34.013454, 33.991859, 43.427353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079811, 33.698318, 44.024384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861572, 33.401142, 43.869278>,  <33.730629, 33.222836, 43.776215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861572, 33.401142, 43.869278>,  <34.079811, 33.698318, 44.024384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861572, 33.401142, 43.869278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048491, -0.489906, 0.870426,
		-0.836644, 0.456097, 0.303317,
		-0.545596, -0.742945, -0.387761,
		33.697895, 33.178257, 43.752949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490089, 33.655178, 44.454163>,  <34.079811, 33.698318, 44.024384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490089, 33.655178, 44.454163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589993, 33.306858, 44.284775>,  <33.649937, 33.097866, 44.183140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589993, 33.306858, 44.284775>,  <33.490089, 33.655178, 44.454163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589993, 33.306858, 44.284775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162664, -0.393387, 0.904869,
		-0.954547, -0.294886, 0.043394,
		0.249762, -0.870798, -0.423473,
		33.664921, 33.045620, 44.157734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028763, 33.082855, 44.769207>,  <33.490089, 33.655178, 44.454163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028763, 33.082855, 44.769207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353714, 32.911983, 44.610432>,  <33.548683, 32.809460, 44.515167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353714, 32.911983, 44.610432>,  <33.028763, 33.082855, 44.769207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353714, 32.911983, 44.610432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107249, -0.559636, 0.821770,
		-0.573187, -0.710158, -0.408819,
		0.812376, -0.427182, -0.396940,
		33.597427, 32.783829, 44.491352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983135, 32.198517, 44.941147>,  <33.028763, 33.082855, 44.769207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983135, 32.198517, 44.941147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359905, 32.289284, 44.842117>,  <33.585968, 32.343742, 44.782700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359905, 32.289284, 44.842117>,  <32.983135, 32.198517, 44.941147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359905, 32.289284, 44.842117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335654, -0.612072, 0.716034,
		0.010948, -0.757547, -0.652689,
		0.941922, 0.226917, -0.247573,
		33.642483, 32.357357, 44.767845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313068, 31.565794, 45.060596>,  <32.983135, 32.198517, 44.941147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313068, 31.565794, 45.060596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591911, 31.852446, 45.051830>,  <33.759216, 32.024437, 45.046570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591911, 31.852446, 45.051830>,  <33.313068, 31.565794, 45.060596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591911, 31.852446, 45.051830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375269, -0.338656, 0.862836,
		0.610910, -0.609717, -0.505009,
		0.697110, 0.716629, -0.021919,
		33.801044, 32.067432, 45.045254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939045, 31.248158, 45.127621>,  <33.313068, 31.565794, 45.060596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939045, 31.248158, 45.127621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979050, 31.626963, 45.249714>,  <34.003052, 31.854246, 45.322971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979050, 31.626963, 45.249714>,  <33.939045, 31.248158, 45.127621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979050, 31.626963, 45.249714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375216, -0.320018, 0.869943,
		0.921526, 0.027522, -0.387340,
		0.100013, 0.947012, 0.305232,
		34.009052, 31.911066, 45.341282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695076, 31.381758, 45.432972>,  <33.939045, 31.248158, 45.127621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695076, 31.381758, 45.432972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471748, 31.663410, 45.608459>,  <34.337753, 31.832401, 45.713753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471748, 31.663410, 45.608459>,  <34.695076, 31.381758, 45.432972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471748, 31.663410, 45.608459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486636, -0.150329, 0.860573,
		0.671910, 0.693972, -0.258725,
		-0.558320, 0.704133, 0.438720,
		34.304253, 31.874651, 45.740074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141308, 31.749252, 45.834156>,  <34.695076, 31.381758, 45.432972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141308, 31.749252, 45.834156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794964, 31.855640, 46.003643>,  <34.587158, 31.919474, 46.105335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794964, 31.855640, 46.003643>,  <35.141308, 31.749252, 45.834156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794964, 31.855640, 46.003643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409908, -0.108375, 0.905666,
		0.286803, 0.957869, -0.015186,
		-0.865864, 0.265973, 0.423720,
		34.535206, 31.935432, 46.130760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337601, 32.098537, 46.379066>,  <35.141308, 31.749252, 45.834156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337601, 32.098537, 46.379066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961922, 32.006863, 46.481346>,  <34.736515, 31.951859, 46.542713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961922, 32.006863, 46.481346>,  <35.337601, 32.098537, 46.379066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961922, 32.006863, 46.481346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312846, -0.264126, 0.912340,
		-0.141559, 0.936862, 0.319766,
		-0.939196, -0.229187, 0.255704,
		34.680164, 31.938107, 46.558056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140789, 32.534977, 47.065498>,  <35.337601, 32.098537, 46.379066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140789, 32.534977, 47.065498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928959, 32.197071, 47.034729>,  <34.801861, 31.994328, 47.016266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928959, 32.197071, 47.034729>,  <35.140789, 32.534977, 47.065498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928959, 32.197071, 47.034729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202738, -0.214108, 0.955539,
		-0.823680, 0.490432, 0.284653,
		-0.529574, -0.844769, -0.076927,
		34.770088, 31.943640, 47.011650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876396, 32.489761, 47.694439>,  <35.140789, 32.534977, 47.065498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876396, 32.489761, 47.694439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817928, 32.111759, 47.577412>,  <34.782848, 31.884958, 47.507195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817928, 32.111759, 47.577412>,  <34.876396, 32.489761, 47.694439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817928, 32.111759, 47.577412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164288, -0.314831, 0.934821,
		-0.975523, 0.088573, 0.201271,
		-0.146167, -0.945006, -0.292573,
		34.774078, 31.828257, 47.489639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362560, 32.226570, 48.132538>,  <34.876396, 32.489761, 47.694439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362560, 32.226570, 48.132538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576900, 31.929029, 47.972763>,  <34.705505, 31.750505, 47.876900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576900, 31.929029, 47.972763>,  <34.362560, 32.226570, 48.132538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576900, 31.929029, 47.972763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135155, -0.391416, 0.910235,
		-0.833423, -0.541737, -0.109207,
		0.535853, -0.743851, -0.399433,
		34.737656, 31.705873, 47.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128403, 31.625954, 48.521404>,  <34.362560, 32.226570, 48.132538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128403, 31.625954, 48.521404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478001, 31.546597, 48.343964>,  <34.687759, 31.498981, 48.237499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478001, 31.546597, 48.343964>,  <34.128403, 31.625954, 48.521404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478001, 31.546597, 48.343964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266824, -0.567012, 0.779296,
		-0.406131, -0.799461, -0.442629,
		0.873993, -0.198392, -0.443597,
		34.740200, 31.487078, 48.210884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274391, 30.898575, 48.607506>,  <34.128403, 31.625954, 48.521404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274391, 30.898575, 48.607506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634144, 31.030432, 48.492645>,  <34.849995, 31.109547, 48.423729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634144, 31.030432, 48.492645>,  <34.274391, 30.898575, 48.607506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634144, 31.030432, 48.492645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431699, -0.566079, 0.702275,
		0.068952, -0.755572, -0.651427,
		0.899378, 0.329644, -0.287147,
		34.903957, 31.129324, 48.406502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742069, 30.377100, 48.430504>,  <34.274391, 30.898575, 48.607506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742069, 30.377100, 48.430504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992222, 30.665169, 48.550674>,  <35.142311, 30.838011, 48.622776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992222, 30.665169, 48.550674>,  <34.742069, 30.377100, 48.430504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992222, 30.665169, 48.550674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399210, -0.626083, 0.669815,
		0.670473, -0.298954, -0.679038,
		0.625378, 0.720172, 0.300426,
		35.179836, 30.881220, 48.640800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324615, 29.983959, 48.515022>,  <34.742069, 30.377100, 48.430504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324615, 29.983959, 48.515022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382828, 30.316118, 48.730156>,  <35.417755, 30.515413, 48.859234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382828, 30.316118, 48.730156>,  <35.324615, 29.983959, 48.515022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382828, 30.316118, 48.730156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399476, -0.546654, 0.735927,
		0.905119, 0.107752, -0.411277,
		0.145528, 0.830397, 0.537831,
		35.426487, 30.565237, 48.891506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954453, 29.841541, 48.917042>,  <35.324615, 29.983959, 48.515022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954453, 29.841541, 48.917042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762054, 30.121370, 49.128418>,  <35.646618, 30.289267, 49.255241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762054, 30.121370, 49.128418>,  <35.954453, 29.841541, 48.917042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762054, 30.121370, 49.128418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311598, -0.426980, 0.848878,
		0.819483, 0.572965, -0.012611,
		-0.480993, 0.699571, 0.528438,
		35.617756, 30.331242, 49.286949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383179, 30.005312, 49.518211>,  <35.954453, 29.841541, 48.917042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383179, 30.005312, 49.518211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031773, 30.164669, 49.623653>,  <35.820927, 30.260284, 49.686920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031773, 30.164669, 49.623653>,  <36.383179, 30.005312, 49.518211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031773, 30.164669, 49.623653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141549, -0.309942, 0.940159,
		0.456258, 0.863260, 0.215897,
		-0.878518, 0.398395, 0.263607,
		35.768219, 30.284187, 49.702736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512863, 30.475925, 50.104332>,  <36.383179, 30.005312, 49.518211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512863, 30.475925, 50.104332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127201, 30.370924, 50.119831>,  <35.895805, 30.307922, 50.129131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127201, 30.370924, 50.119831>,  <36.512863, 30.475925, 50.104332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127201, 30.370924, 50.119831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091150, -0.190493, 0.977448,
		-0.249202, 0.945941, 0.207592,
		-0.964152, -0.262504, 0.038751,
		35.837955, 30.292173, 50.131458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312809, 30.663546, 50.791061>,  <36.512863, 30.475925, 50.104332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312809, 30.663546, 50.791061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022717, 30.404005, 50.698948>,  <35.848663, 30.248280, 50.643681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022717, 30.404005, 50.698948>,  <36.312809, 30.663546, 50.791061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022717, 30.404005, 50.698948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183507, -0.504537, 0.843663,
		-0.663602, 0.569590, 0.484974,
		-0.725230, -0.648853, -0.230288,
		35.805149, 30.209349, 50.629860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736198, 30.569965, 51.328426>,  <36.312809, 30.663546, 50.791061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736198, 30.569965, 51.328426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723862, 30.232061, 51.114723>,  <35.716461, 30.029320, 50.986500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723862, 30.232061, 51.114723>,  <35.736198, 30.569965, 51.328426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723862, 30.232061, 51.114723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164208, -0.531533, 0.830968,
		-0.985943, -0.062100, 0.155110,
		-0.030843, -0.844758, -0.534259,
		35.714607, 29.978634, 50.954445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248329, 30.132071, 51.709473>,  <35.736198, 30.569965, 51.328426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248329, 30.132071, 51.709473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560364, 29.955275, 51.532333>,  <35.747585, 29.849197, 51.426052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560364, 29.955275, 51.532333>,  <35.248329, 30.132071, 51.709473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560364, 29.955275, 51.532333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153661, -0.550772, 0.820389,
		-0.606513, -0.708020, -0.361731,
		0.780083, -0.441993, -0.442846,
		35.794388, 29.822678, 51.399479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214317, 29.366375, 51.453854>,  <35.248329, 30.132071, 51.709473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214317, 29.366375, 51.453854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583836, 29.456678, 51.577553>,  <35.805546, 29.510860, 51.651772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583836, 29.456678, 51.577553>,  <35.214317, 29.366375, 51.453854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583836, 29.456678, 51.577553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011134, -0.791497, 0.611071,
		0.382728, -0.567947, -0.728667,
		0.923794, 0.225761, 0.309252,
		35.860973, 29.524406, 51.670330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729633, 28.797640, 51.283833>,  <35.214317, 29.366375, 51.453854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729633, 28.797640, 51.283833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783787, 29.021347, 51.610977>,  <35.816280, 29.155571, 51.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783787, 29.021347, 51.610977>,  <35.729633, 28.797640, 51.283833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783787, 29.021347, 51.610977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120267, -0.810078, 0.573855,
		0.983467, -0.176051, -0.042409,
		0.135382, 0.559267, 0.817858,
		35.824402, 29.189127, 51.856335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194660, 28.421165, 51.682976>,  <35.729633, 28.797640, 51.283833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194660, 28.421165, 51.682976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004562, 28.671570, 51.930283>,  <35.890503, 28.821812, 52.078667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004562, 28.671570, 51.930283>,  <36.194660, 28.421165, 51.682976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004562, 28.671570, 51.930283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039383, -0.717126, 0.695831,
		0.878974, 0.306338, 0.365462,
		-0.475241, 0.626010, 0.618270,
		35.861988, 28.859373, 52.115765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565704, 28.615301, 52.338093>,  <36.194660, 28.421165, 51.682976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565704, 28.615301, 52.338093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170586, 28.567574, 52.378151>,  <35.933514, 28.538937, 52.402187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170586, 28.567574, 52.378151>,  <36.565704, 28.615301, 52.338093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170586, 28.567574, 52.378151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155762, -0.747107, 0.646196,
		-0.002284, 0.653907, 0.756572,
		-0.987792, -0.119320, 0.100147,
		35.874249, 28.531778, 52.408195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571709, 27.935329, 52.049461>,  <36.565704, 28.615301, 52.338093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571709, 27.935329, 52.049461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418594, 27.592836, 52.188221>,  <36.326725, 27.387341, 52.271477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418594, 27.592836, 52.188221>,  <36.571709, 27.935329, 52.049461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418594, 27.592836, 52.188221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871652, 0.210321, -0.442706,
		0.306100, -0.471837, -0.826845,
		-0.382788, -0.856233, 0.346898,
		36.303757, 27.335966, 52.292290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491493, 27.423506, 51.457008>,  <36.571709, 27.935329, 52.049461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491493, 27.423506, 51.457008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722668, 27.132072, 51.309952>,  <36.861370, 26.957212, 51.221718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722668, 27.132072, 51.309952>,  <36.491493, 27.423506, 51.457008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722668, 27.132072, 51.309952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506214, 0.033306, -0.861765,
		0.640110, 0.684149, -0.349569,
		0.577933, -0.728581, -0.367645,
		36.896046, 26.913498, 51.199657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809761, 27.536413, 50.791595>,  <36.491493, 27.423506, 51.457008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809761, 27.536413, 50.791595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651123, 27.182051, 50.887829>,  <36.555943, 26.969433, 50.945568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651123, 27.182051, 50.887829>,  <36.809761, 27.536413, 50.791595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651123, 27.182051, 50.887829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661809, 0.094301, -0.743718,
		0.636179, -0.454173, -0.623701,
		-0.396593, -0.885909, 0.240584,
		36.532146, 26.916279, 50.960003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868202, 27.012348, 50.261131>,  <36.809761, 27.536413, 50.791595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868202, 27.012348, 50.261131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540768, 26.960009, 50.484844>,  <36.344307, 26.928604, 50.619072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540768, 26.960009, 50.484844>,  <36.868202, 27.012348, 50.261131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540768, 26.960009, 50.484844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563488, 0.371719, -0.737771,
		-0.111360, -0.919078, -0.378014,
		-0.818584, -0.130848, 0.559284,
		36.295193, 26.920753, 50.652630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318329, 26.722794, 49.816967>,  <36.868202, 27.012348, 50.261131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318329, 26.722794, 49.816967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147575, 26.907326, 50.128078>,  <36.045124, 27.018045, 50.314747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147575, 26.907326, 50.128078>,  <36.318329, 26.722794, 49.816967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147575, 26.907326, 50.128078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659787, 0.429298, -0.616753,
		-0.618427, -0.776452, 0.121120,
		-0.426883, 0.461330, 0.777783,
		36.019512, 27.045725, 50.361412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537003, 26.558199, 49.873241>,  <36.318329, 26.722794, 49.816967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537003, 26.558199, 49.873241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667213, 26.909609, 50.013084>,  <35.745338, 27.120455, 50.096989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667213, 26.909609, 50.013084>,  <35.537003, 26.558199, 49.873241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667213, 26.909609, 50.013084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658715, 0.475965, -0.582710,
		-0.678327, -0.040605, 0.733637,
		0.325525, 0.878526, 0.349607,
		35.764870, 27.173166, 50.117966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910152, 26.882816, 49.943527>,  <35.537003, 26.558199, 49.873241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910152, 26.882816, 49.943527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167908, 27.188372, 49.929462>,  <35.322563, 27.371704, 49.921024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167908, 27.188372, 49.929462>,  <34.910152, 26.882816, 49.943527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167908, 27.188372, 49.929462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565136, 0.444742, -0.694857,
		-0.515153, 0.467632, 0.718287,
		0.644390, 0.763888, -0.035165,
		35.361225, 27.417538, 49.918911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534447, 27.563042, 49.763237>,  <34.910152, 26.882816, 49.943527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534447, 27.563042, 49.763237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916813, 27.644278, 49.678402>,  <35.146233, 27.693020, 49.627502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916813, 27.644278, 49.678402>,  <34.534447, 27.563042, 49.763237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916813, 27.644278, 49.678402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293292, 0.625085, -0.723359,
		-0.014336, 0.753673, 0.657093,
		0.955915, 0.203090, -0.212085,
		35.203587, 27.705204, 49.614777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514874, 28.246481, 49.745682>,  <34.534447, 27.563042, 49.763237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514874, 28.246481, 49.745682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840706, 28.130291, 49.544853>,  <35.036205, 28.060577, 49.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840706, 28.130291, 49.544853>,  <34.514874, 28.246481, 49.745682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840706, 28.130291, 49.544853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303947, 0.523467, -0.795989,
		0.494035, 0.801003, 0.338118,
		0.814583, -0.290476, -0.502074,
		35.085079, 28.043148, 49.394230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612701, 28.781939, 49.311150>,  <34.514874, 28.246481, 49.745682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612701, 28.781939, 49.311150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814835, 28.480032, 49.143837>,  <34.936115, 28.298887, 49.043449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814835, 28.480032, 49.143837>,  <34.612701, 28.781939, 49.311150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814835, 28.480032, 49.143837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247109, 0.337859, -0.908179,
		0.826785, 0.562297, -0.015777,
		0.505336, -0.754767, -0.418285,
		34.966434, 28.253601, 49.018353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917038, 29.153381, 48.803596>,  <34.612701, 28.781939, 49.311150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917038, 29.153381, 48.803596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933411, 28.761726, 48.723984>,  <34.943233, 28.526733, 48.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933411, 28.761726, 48.723984>,  <34.917038, 29.153381, 48.803596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933411, 28.761726, 48.723984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176038, 0.189014, -0.966067,
		0.983532, 0.074584, -0.164628,
		0.040936, -0.979138, -0.199031,
		34.945690, 28.467985, 48.664276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446732, 29.069059, 48.375038>,  <34.917038, 29.153381, 48.803596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446732, 29.069059, 48.375038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212826, 28.751299, 48.309338>,  <35.072483, 28.560642, 48.269917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212826, 28.751299, 48.309338>,  <35.446732, 29.069059, 48.375038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212826, 28.751299, 48.309338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058389, 0.160730, -0.985270,
		0.809100, -0.585740, -0.047605,
		-0.584763, -0.794402, -0.164247,
		35.037395, 28.512978, 48.260063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810547, 28.660223, 47.795048>,  <35.446732, 29.069059, 48.375038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810547, 28.660223, 47.795048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431782, 28.537313, 47.832863>,  <35.204521, 28.463568, 47.855553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431782, 28.537313, 47.832863>,  <35.810547, 28.660223, 47.795048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431782, 28.537313, 47.832863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036939, -0.188127, -0.981450,
		0.319361, -0.932840, 0.166789,
		-0.946913, -0.307276, 0.094538,
		35.147709, 28.445131, 47.861225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793224, 28.259987, 47.230209>,  <35.810547, 28.660223, 47.795048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793224, 28.259987, 47.230209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406296, 28.301447, 47.322773>,  <35.174141, 28.326323, 47.378311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406296, 28.301447, 47.322773>,  <35.793224, 28.259987, 47.230209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406296, 28.301447, 47.322773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245422, -0.153338, -0.957212,
		-0.063733, -0.982723, 0.173765,
		-0.967319, 0.103652, 0.231409,
		35.116100, 28.332542, 47.392197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435970, 27.631325, 47.061398>,  <35.793224, 28.259987, 47.230209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435970, 27.631325, 47.061398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182156, 27.939911, 47.042599>,  <35.029869, 28.125063, 47.031319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182156, 27.939911, 47.042599>,  <35.435970, 27.631325, 47.061398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182156, 27.939911, 47.042599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208533, -0.229431, -0.950724,
		-0.744233, -0.593465, 0.306458,
		-0.634532, 0.771467, -0.046993,
		34.991795, 28.171350, 47.028500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067844, 27.441507, 46.529060>,  <35.435970, 27.631325, 47.061398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067844, 27.441507, 46.529060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971039, 27.825247, 46.587132>,  <34.912956, 28.055490, 46.621975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971039, 27.825247, 46.587132>,  <35.067844, 27.441507, 46.529060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971039, 27.825247, 46.587132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272719, 0.076339, -0.959060,
		-0.931157, -0.271699, 0.243158,
		-0.242013, 0.959350, 0.145181,
		34.898434, 28.113052, 46.630688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443085, 27.548798, 46.189098>,  <35.067844, 27.441507, 46.529060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443085, 27.548798, 46.189098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593548, 27.916918, 46.232094>,  <34.683826, 28.137789, 46.257889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593548, 27.916918, 46.232094>,  <34.443085, 27.548798, 46.189098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593548, 27.916918, 46.232094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369176, 0.255264, -0.893616,
		-0.849831, 0.296461, 0.435772,
		0.376159, 0.920300, 0.107485,
		34.706394, 28.193008, 46.264339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834572, 28.003046, 46.055607>,  <34.443085, 27.548798, 46.189098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834572, 28.003046, 46.055607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164413, 28.212299, 45.969490>,  <34.362320, 28.337851, 45.917820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164413, 28.212299, 45.969490>,  <33.834572, 28.003046, 46.055607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164413, 28.212299, 45.969490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355842, 0.183810, -0.916292,
		-0.439769, 0.832193, 0.337724,
		0.824609, 0.523133, -0.215295,
		34.411797, 28.369240, 45.904903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597305, 28.610151, 45.679146>,  <33.834572, 28.003046, 46.055607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597305, 28.610151, 45.679146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983360, 28.551273, 45.592575>,  <34.214993, 28.515947, 45.540634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983360, 28.551273, 45.592575>,  <33.597305, 28.610151, 45.679146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983360, 28.551273, 45.592575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168475, 0.283438, -0.944076,
		0.200306, 0.947627, 0.248758,
		0.965139, -0.147195, -0.216425,
		34.272903, 28.507114, 45.527649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923687, 29.242495, 45.490883>,  <33.597305, 28.610151, 45.679146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923687, 29.242495, 45.490883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163971, 28.961853, 45.337570>,  <34.308140, 28.793468, 45.245583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163971, 28.961853, 45.337570>,  <33.923687, 29.242495, 45.490883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163971, 28.961853, 45.337570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151741, 0.370641, -0.916297,
		0.784938, 0.608584, 0.116184,
		0.600706, -0.701606, -0.383277,
		34.344181, 28.751371, 45.222588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423267, 29.607052, 44.989170>,  <33.923687, 29.242495, 45.490883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423267, 29.607052, 44.989170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402412, 29.221699, 44.883965>,  <34.389900, 28.990486, 44.820843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402412, 29.221699, 44.883965>,  <34.423267, 29.607052, 44.989170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402412, 29.221699, 44.883965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188947, 0.268132, -0.944672,
		0.980602, 0.000442, -0.196008,
		-0.052139, -0.963382, -0.263014,
		34.386772, 28.932684, 44.805061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724262, 29.676161, 44.433445>,  <34.423267, 29.607052, 44.989170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724262, 29.676161, 44.433445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543106, 29.320478, 44.407505>,  <34.434414, 29.107069, 44.391941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543106, 29.320478, 44.407505>,  <34.724262, 29.676161, 44.433445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543106, 29.320478, 44.407505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145260, 0.145356, -0.978658,
		0.879654, -0.433804, -0.194996,
		-0.452889, -0.889205, -0.064849,
		34.407238, 29.053717, 44.388050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813129, 29.515732, 43.747513>,  <34.724262, 29.676161, 44.433445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813129, 29.515732, 43.747513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505516, 29.278599, 43.843124>,  <34.320950, 29.136318, 43.900494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505516, 29.278599, 43.843124>,  <34.813129, 29.515732, 43.747513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505516, 29.278599, 43.843124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338148, 0.059969, -0.939180,
		0.542443, -0.803090, -0.246583,
		-0.769034, -0.592833, 0.239033,
		34.274807, 29.100750, 43.914833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780918, 29.085155, 43.128941>,  <34.813129, 29.515732, 43.747513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780918, 29.085155, 43.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432590, 29.021584, 43.315022>,  <34.223595, 28.983440, 43.426670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432590, 29.021584, 43.315022>,  <34.780918, 29.085155, 43.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432590, 29.021584, 43.315022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454509, -0.100298, -0.885077,
		0.187326, -0.982182, 0.015105,
		-0.870822, -0.158933, 0.465199,
		34.171345, 28.973904, 43.454582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453682, 28.618208, 42.737026>,  <34.780918, 29.085155, 43.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453682, 28.618208, 42.737026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152882, 28.737621, 42.972099>,  <33.972401, 28.809269, 43.113144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152882, 28.737621, 42.972099>,  <34.453682, 28.618208, 42.737026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152882, 28.737621, 42.972099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608913, 0.026796, -0.792785,
		-0.252420, -0.954023, 0.161630,
		-0.752004, 0.298533, 0.587681,
		33.927280, 28.827181, 43.148403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904087, 28.213343, 42.422070>,  <34.453682, 28.618208, 42.737026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904087, 28.213343, 42.422070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793739, 28.548536, 42.610401>,  <33.727531, 28.749653, 42.723400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793739, 28.548536, 42.610401>,  <33.904087, 28.213343, 42.422070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793739, 28.548536, 42.610401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594719, 0.236009, -0.768511,
		-0.755118, -0.492022, 0.433256,
		-0.275872, 0.837982, 0.470830,
		33.710979, 28.799931, 42.751652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151814, 28.305723, 42.358757>,  <33.904087, 28.213343, 42.422070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151814, 28.305723, 42.358757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288441, 28.678049, 42.410786>,  <33.370419, 28.901443, 42.442001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288441, 28.678049, 42.410786>,  <33.151814, 28.305723, 42.358757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288441, 28.678049, 42.410786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617231, 0.326522, -0.715828,
		-0.708772, 0.164222, 0.686056,
		0.341567, 0.930814, 0.130067,
		33.390911, 28.957293, 42.449806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600368, 28.682865, 42.352787>,  <33.151814, 28.305723, 42.358757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600368, 28.682865, 42.352787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895809, 28.945860, 42.293224>,  <33.073074, 29.103657, 42.257488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895809, 28.945860, 42.293224>,  <32.600368, 28.682865, 42.352787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895809, 28.945860, 42.293224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588878, 0.521739, -0.617261,
		-0.328153, 0.543598, 0.772539,
		0.738605, 0.657488, -0.148902,
		33.117390, 29.143106, 42.248554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272163, 29.378733, 42.319099>,  <32.600368, 28.682865, 42.352787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272163, 29.378733, 42.319099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627136, 29.423256, 42.140179>,  <32.840118, 29.449970, 42.032825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627136, 29.423256, 42.140179>,  <32.272163, 29.378733, 42.319099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627136, 29.423256, 42.140179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427947, 0.559514, -0.709792,
		0.171267, 0.821312, 0.544163,
		0.887428, 0.111309, -0.447304,
		32.893364, 29.456648, 42.005989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546581, 30.117212, 42.259125>,  <32.272163, 29.378733, 42.319099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546581, 30.117212, 42.259125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718220, 29.920177, 41.956276>,  <32.821201, 29.801956, 41.774567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718220, 29.920177, 41.956276>,  <32.546581, 30.117212, 42.259125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718220, 29.920177, 41.956276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353132, 0.680017, -0.642553,
		0.831371, 0.543080, 0.117842,
		0.429092, -0.492586, -0.757125,
		32.846947, 29.772402, 41.729137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548191, 30.628031, 41.841705>,  <32.546581, 30.117212, 42.259125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548191, 30.628031, 41.841705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624134, 30.306549, 41.616135>,  <32.669701, 30.113661, 41.480793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624134, 30.306549, 41.616135>,  <32.548191, 30.628031, 41.841705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624134, 30.306549, 41.616135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305509, 0.497501, -0.811885,
		0.933070, 0.326426, -0.151086,
		0.189855, -0.803703, -0.563929,
		32.681091, 30.065437, 41.446957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025860, 30.822617, 41.361244>,  <32.548191, 30.628031, 41.841705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025860, 30.822617, 41.361244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848549, 30.507364, 41.190430>,  <32.742165, 30.318213, 41.087940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848549, 30.507364, 41.190430>,  <33.025860, 30.822617, 41.361244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848549, 30.507364, 41.190430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221557, 0.557947, -0.799754,
		0.868575, -0.259896, -0.421939,
		-0.443273, -0.788130, -0.427037,
		32.715569, 30.270926, 41.062317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218601, 30.872538, 40.631653>,  <33.025860, 30.822617, 41.361244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218601, 30.872538, 40.631653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904995, 30.624763, 40.615578>,  <32.716831, 30.476099, 40.605934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904995, 30.624763, 40.615578>,  <33.218601, 30.872538, 40.631653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904995, 30.624763, 40.615578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324778, 0.464515, -0.823860,
		0.528998, -0.632868, -0.565367,
		-0.784016, -0.619439, -0.040186,
		32.669788, 30.438932, 40.603523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091690, 30.623957, 39.863850>,  <33.218601, 30.872538, 40.631653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091690, 30.623957, 39.863850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745205, 30.564447, 40.054657>,  <32.537315, 30.528742, 40.169140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745205, 30.564447, 40.054657>,  <33.091690, 30.623957, 39.863850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745205, 30.564447, 40.054657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498748, 0.315716, -0.807201,
		-0.030512, -0.937118, -0.347677,
		-0.866210, -0.148774, 0.477019,
		32.485340, 30.519815, 40.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715309, 30.258831, 39.412476>,  <33.091690, 30.623957, 39.863850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715309, 30.258831, 39.412476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437737, 30.418282, 39.652325>,  <32.271191, 30.513952, 39.796234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437737, 30.418282, 39.652325>,  <32.715309, 30.258831, 39.412476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437737, 30.418282, 39.652325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399919, 0.479132, -0.781343,
		-0.598763, -0.782004, -0.173069,
		-0.693936, 0.398626, 0.599625,
		32.229557, 30.537868, 39.832211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071804, 30.205563, 39.022701>,  <32.715309, 30.258831, 39.412476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071804, 30.205563, 39.022701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963112, 30.459061, 39.312397>,  <31.897896, 30.611160, 39.486214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963112, 30.459061, 39.312397>,  <32.071804, 30.205563, 39.022701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963112, 30.459061, 39.312397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490249, 0.556437, -0.670846,
		-0.828141, -0.537349, 0.159491,
		-0.271732, 0.633745, 0.724244,
		31.881592, 30.649185, 39.529671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333855, 30.384239, 38.870895>,  <32.071804, 30.205563, 39.022701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333855, 30.384239, 38.870895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513798, 30.667694, 39.088322>,  <31.621763, 30.837767, 39.218777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513798, 30.667694, 39.088322>,  <31.333855, 30.384239, 38.870895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513798, 30.667694, 39.088322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436608, 0.705436, -0.558331,
		-0.779103, 0.013846, 0.626743,
		0.449858, 0.708638, 0.543562,
		31.648754, 30.880285, 39.251389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828297, 30.906019, 39.092995>,  <31.333855, 30.384239, 38.870895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828297, 30.906019, 39.092995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179510, 31.097301, 39.085278>,  <31.390240, 31.212070, 39.080647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179510, 31.097301, 39.085278>,  <30.828297, 30.906019, 39.092995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179510, 31.097301, 39.085278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404876, 0.720693, -0.562741,
		-0.255202, 0.501917, 0.826408,
		0.878036, 0.478206, -0.019292,
		31.442921, 31.240763, 39.079491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650240, 31.542418, 38.830009>,  <30.828297, 30.906019, 39.092995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650240, 31.542418, 38.830009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045677, 31.527636, 38.771610>,  <31.282940, 31.518766, 38.736568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045677, 31.527636, 38.771610>,  <30.650240, 31.542418, 38.830009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045677, 31.527636, 38.771610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060356, 0.790968, -0.608873,
		0.137982, 0.610741, 0.779716,
		0.988594, -0.036953, -0.146001,
		31.342255, 31.516550, 38.727810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833200, 32.218781, 38.697842>,  <30.650240, 31.542418, 38.830009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833200, 32.218781, 38.697842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143591, 32.013474, 38.551189>,  <31.329826, 31.890289, 38.463200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143591, 32.013474, 38.551189>,  <30.833200, 32.218781, 38.697842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143591, 32.013474, 38.551189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097031, 0.671466, -0.734655,
		0.623252, 0.534502, 0.570846,
		0.775978, -0.513265, -0.366629,
		31.376385, 31.859493, 38.441200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269081, 32.654240, 38.570808>,  <30.833200, 32.218781, 38.697842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269081, 32.654240, 38.570808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391029, 32.364017, 38.324028>,  <31.464199, 32.189884, 38.175961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391029, 32.364017, 38.324028>,  <31.269081, 32.654240, 38.570808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391029, 32.364017, 38.324028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069870, 0.629003, -0.774257,
		0.949827, 0.279155, 0.141071,
		0.304872, -0.725554, -0.616948,
		31.482491, 32.146351, 38.138943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745703, 32.945732, 38.197601>,  <31.269081, 32.654240, 38.570808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745703, 32.945732, 38.197601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690912, 32.622334, 37.968666>,  <31.658037, 32.428295, 37.831306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690912, 32.622334, 37.968666>,  <31.745703, 32.945732, 38.197601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690912, 32.622334, 37.968666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134363, 0.557277, -0.819383,
		0.981419, -0.189138, 0.032298,
		-0.136978, -0.808498, -0.572335,
		31.649818, 32.379784, 37.796967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348339, 32.850800, 37.777111>,  <31.745703, 32.945732, 38.197601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348339, 32.850800, 37.777111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050259, 32.681686, 37.570835>,  <31.871412, 32.580219, 37.447071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050259, 32.681686, 37.570835>,  <32.348339, 32.850800, 37.777111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050259, 32.681686, 37.570835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228217, 0.564940, -0.792944,
		0.626577, -0.708589, -0.324505,
		-0.745197, -0.422783, -0.515690,
		31.826700, 32.554852, 37.416126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550739, 32.905441, 37.211704>,  <32.348339, 32.850800, 37.777111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550739, 32.905441, 37.211704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167133, 32.818718, 37.138729>,  <31.936970, 32.766685, 37.094944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167133, 32.818718, 37.138729>,  <32.550739, 32.905441, 37.211704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167133, 32.818718, 37.138729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062490, 0.466162, -0.882489,
		0.276374, -0.857722, -0.433509,
		-0.959017, -0.216807, -0.182434,
		31.879429, 32.753677, 37.084000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525185, 32.543667, 36.502777>,  <32.550739, 32.905441, 37.211704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525185, 32.543667, 36.502777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186272, 32.713223, 36.630798>,  <31.982925, 32.814957, 36.707611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186272, 32.713223, 36.630798>,  <32.525185, 32.543667, 36.502777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186272, 32.713223, 36.630798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016585, 0.581163, -0.813618,
		-0.530889, -0.694670, -0.485377,
		-0.847279, 0.423891, 0.320054,
		31.932087, 32.840389, 36.726814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069157, 32.103241, 36.365688>,  <32.525185, 32.543667, 36.502777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069157, 32.103241, 36.365688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399441, 32.040386, 36.148979>,  <33.597610, 32.002674, 36.018955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399441, 32.040386, 36.148979>,  <33.069157, 32.103241, 36.365688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399441, 32.040386, 36.148979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314932, -0.668387, 0.673852,
		-0.468001, -0.727025, -0.502404,
		0.825708, -0.157140, -0.541769,
		33.647152, 31.993244, 35.986450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210079, 31.353474, 36.257362>,  <33.069157, 32.103241, 36.365688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210079, 31.353474, 36.257362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560520, 31.541553, 36.214722>,  <33.770782, 31.654402, 36.189137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560520, 31.541553, 36.214722>,  <33.210079, 31.353474, 36.257362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560520, 31.541553, 36.214722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431447, -0.665907, 0.608623,
		0.215187, -0.579207, -0.786266,
		0.876098, 0.470199, -0.106602,
		33.823349, 31.682613, 36.182739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713017, 30.870205, 36.191895>,  <33.210079, 31.353474, 36.257362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713017, 30.870205, 36.191895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931206, 31.189955, 36.292656>,  <34.062119, 31.381805, 36.353111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931206, 31.189955, 36.292656>,  <33.713017, 30.870205, 36.191895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931206, 31.189955, 36.292656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601542, -0.582684, 0.546468,
		0.583611, -0.146557, -0.798698,
		0.545478, 0.799375, 0.251901,
		34.094849, 31.429768, 36.368225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499416, 30.639427, 36.120464>,  <33.713017, 30.870205, 36.191895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499416, 30.639427, 36.120464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488510, 30.967073, 36.349655>,  <34.481968, 31.163662, 36.487171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488510, 30.967073, 36.349655>,  <34.499416, 30.639427, 36.120464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488510, 30.967073, 36.349655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460758, -0.498373, 0.734388,
		0.887107, 0.284028, -0.363826,
		-0.027266, 0.819117, 0.572978,
		34.480331, 31.212809, 36.521549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146450, 30.746330, 36.240910>,  <34.499416, 30.639427, 36.120464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146450, 30.746330, 36.240910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971302, 30.945257, 36.540493>,  <34.866211, 31.064613, 36.720245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971302, 30.945257, 36.540493>,  <35.146450, 30.746330, 36.240910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971302, 30.945257, 36.540493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544231, -0.516465, 0.661118,
		0.715597, 0.697094, -0.044509,
		-0.437874, 0.497317, 0.748961,
		34.839939, 31.094452, 36.765182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680134, 30.964989, 36.614902>,  <35.146450, 30.746330, 36.240910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680134, 30.964989, 36.614902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372894, 31.018442, 36.865395>,  <35.188549, 31.050514, 37.015690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372894, 31.018442, 36.865395>,  <35.680134, 30.964989, 36.614902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372894, 31.018442, 36.865395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560746, -0.331830, 0.758586,
		0.309173, 0.933826, 0.179945,
		-0.768099, 0.133631, 0.626232,
		35.142464, 31.058531, 37.053265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903347, 31.424036, 37.282269>,  <35.680134, 30.964989, 36.614902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903347, 31.424036, 37.282269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592426, 31.187609, 37.368473>,  <35.405872, 31.045753, 37.420197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592426, 31.187609, 37.368473>,  <35.903347, 31.424036, 37.282269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592426, 31.187609, 37.368473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444227, -0.273080, 0.853282,
		-0.445495, 0.758991, 0.474833,
		-0.777301, -0.591067, 0.215509,
		35.359238, 31.010288, 37.433125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966026, 31.471155, 38.035778>,  <35.903347, 31.424036, 37.282269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966026, 31.471155, 38.035778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729652, 31.165247, 37.933071>,  <35.587830, 30.981703, 37.871449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729652, 31.165247, 37.933071>,  <35.966026, 31.471155, 38.035778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729652, 31.165247, 37.933071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253016, -0.477922, 0.841174,
		-0.766017, 0.432112, 0.475918,
		-0.590933, -0.764768, -0.256765,
		35.552372, 30.935816, 37.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643627, 31.341040, 38.607239>,  <35.966026, 31.471155, 38.035778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643627, 31.341040, 38.607239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586174, 30.999809, 38.406586>,  <35.551701, 30.795071, 38.286194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586174, 30.999809, 38.406586>,  <35.643627, 31.341040, 38.607239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586174, 30.999809, 38.406586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233475, -0.521790, 0.820503,
		-0.961696, 0.000732, 0.274117,
		-0.143632, -0.853074, -0.501632,
		35.543083, 30.743887, 38.256096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118187, 30.936264, 38.952465>,  <35.643627, 31.341040, 38.607239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118187, 30.936264, 38.952465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349171, 30.682030, 38.747498>,  <35.487762, 30.529490, 38.624516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349171, 30.682030, 38.747498>,  <35.118187, 30.936264, 38.952465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349171, 30.682030, 38.747498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188648, -0.506778, 0.841182,
		-0.794326, -0.582414, -0.172742,
		0.577458, -0.635586, -0.512418,
		35.522408, 30.491354, 38.593773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961548, 30.215611, 39.266258>,  <35.118187, 30.936264, 38.952465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961548, 30.215611, 39.266258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285221, 30.114376, 39.054157>,  <35.479424, 30.053635, 38.926895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285221, 30.114376, 39.054157>,  <34.961548, 30.215611, 39.266258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285221, 30.114376, 39.054157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291084, -0.611266, 0.735951,
		-0.510385, -0.749869, -0.420957,
		0.809183, -0.253084, -0.530255,
		35.527977, 30.038450, 38.895081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997181, 29.537815, 39.237885>,  <34.961548, 30.215611, 39.266258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997181, 29.537815, 39.237885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372746, 29.644051, 39.150333>,  <35.598083, 29.707792, 39.097805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372746, 29.644051, 39.150333>,  <34.997181, 29.537815, 39.237885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372746, 29.644051, 39.150333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341072, -0.633150, 0.694832,
		0.045958, -0.727038, -0.685057,
		0.938913, 0.265587, -0.218874,
		35.654419, 29.723726, 39.084671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436081, 28.853449, 39.090721>,  <34.997181, 29.537815, 39.237885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436081, 28.853449, 39.090721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652481, 29.158447, 39.232662>,  <35.782322, 29.341446, 39.317829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652481, 29.158447, 39.232662>,  <35.436081, 28.853449, 39.090721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652481, 29.158447, 39.232662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359222, -0.591005, 0.722269,
		0.760448, -0.263274, -0.593637,
		0.540997, 0.762496, 0.354855,
		35.814781, 29.387196, 39.339119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979416, 28.583496, 39.260189>,  <35.436081, 28.853449, 39.090721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979416, 28.583496, 39.260189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990967, 28.906933, 39.495255>,  <35.997898, 29.100994, 39.636295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990967, 28.906933, 39.495255>,  <35.979416, 28.583496, 39.260189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990967, 28.906933, 39.495255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186150, -0.581974, 0.791615,
		0.982097, 0.086534, -0.167325,
		0.028877, 0.808591, 0.587663,
		35.999630, 29.149509, 39.671555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588631, 28.472437, 39.627102>,  <35.979416, 28.583496, 39.260189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588631, 28.472437, 39.627102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385620, 28.747206, 39.835159>,  <36.263813, 28.912067, 39.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385620, 28.747206, 39.835159>,  <36.588631, 28.472437, 39.627102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385620, 28.747206, 39.835159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339146, -0.395685, 0.853472,
		0.792083, 0.609566, -0.032146,
		-0.507528, 0.686923, 0.520147,
		36.233360, 28.953283, 39.991203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057129, 28.692345, 40.036385>,  <36.588631, 28.472437, 39.627102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057129, 28.692345, 40.036385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709805, 28.805382, 40.199448>,  <36.501411, 28.873203, 40.297287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709805, 28.805382, 40.199448>,  <37.057129, 28.692345, 40.036385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709805, 28.805382, 40.199448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365068, -0.192308, 0.910902,
		0.335809, 0.939766, 0.063817,
		-0.868307, 0.282592, 0.407657,
		36.449314, 28.890160, 40.321743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279064, 29.107498, 40.684280>,  <37.057129, 28.692345, 40.036385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279064, 29.107498, 40.684280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892967, 29.023010, 40.745850>,  <36.661308, 28.972317, 40.782791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892967, 29.023010, 40.745850>,  <37.279064, 29.107498, 40.684280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892967, 29.023010, 40.745850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196937, -0.200615, 0.959671,
		-0.171824, 0.956629, 0.235240,
		-0.965242, -0.211222, 0.153925,
		36.603394, 28.959644, 40.792027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018093, 29.547087, 41.222622>,  <37.279064, 29.107498, 40.684280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018093, 29.547087, 41.222622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810055, 29.205580, 41.232208>,  <36.685230, 29.000675, 41.237961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810055, 29.205580, 41.232208>,  <37.018093, 29.547087, 41.222622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810055, 29.205580, 41.232208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091697, -0.027916, 0.995396,
		-0.849169, 0.519903, 0.092807,
		-0.520100, -0.853769, 0.023969,
		36.654026, 28.949450, 41.239399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500042, 29.652126, 41.753941>,  <37.018093, 29.547087, 41.222622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500042, 29.652126, 41.753941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519470, 29.256014, 41.701809>,  <36.531128, 29.018347, 41.670528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519470, 29.256014, 41.701809>,  <36.500042, 29.652126, 41.753941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519470, 29.256014, 41.701809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203511, -0.117939, 0.971944,
		-0.977867, -0.073732, 0.195804,
		0.048571, -0.990280, -0.130334,
		36.534042, 28.958929, 41.662708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099041, 29.378109, 42.281033>,  <36.500042, 29.652126, 41.753941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099041, 29.378109, 42.281033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326710, 29.071012, 42.163311>,  <36.463310, 28.886755, 42.092678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326710, 29.071012, 42.163311>,  <36.099041, 29.378109, 42.281033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326710, 29.071012, 42.163311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153332, -0.252548, 0.955358,
		-0.807792, -0.588893, -0.026025,
		0.569176, -0.767740, -0.294303,
		36.497463, 28.840691, 42.075020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822220, 28.762985, 42.607826>,  <36.099041, 29.378109, 42.281033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822220, 28.762985, 42.607826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190205, 28.628740, 42.526798>,  <36.410995, 28.548193, 42.478184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190205, 28.628740, 42.526798>,  <35.822220, 28.762985, 42.607826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190205, 28.628740, 42.526798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049796, -0.412504, 0.909594,
		-0.388824, -0.846882, -0.362778,
		0.919965, -0.335607, -0.202563,
		36.466194, 28.528057, 42.466030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874645, 28.132109, 42.838100>,  <35.822220, 28.762985, 42.607826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874645, 28.132109, 42.838100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253441, 28.260569, 42.841404>,  <36.480721, 28.337645, 42.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253441, 28.260569, 42.841404>,  <35.874645, 28.132109, 42.838100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253441, 28.260569, 42.841404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113703, -0.359115, 0.926341,
		0.300463, -0.876298, -0.376595,
		0.946992, 0.321152, 0.008263,
		36.537537, 28.356915, 42.843884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188313, 27.576004, 43.182095>,  <35.874645, 28.132109, 42.838100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188313, 27.576004, 43.182095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431625, 27.893049, 43.198872>,  <36.577614, 28.083277, 43.208939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431625, 27.893049, 43.198872>,  <36.188313, 27.576004, 43.182095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431625, 27.893049, 43.198872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185825, -0.193587, 0.963324,
		0.771663, -0.578177, -0.265042,
		0.608280, 0.792613, 0.041944,
		36.614109, 28.130833, 43.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724823, 27.230490, 43.462219>,  <36.188313, 27.576004, 43.182095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724823, 27.230490, 43.462219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762405, 27.626465, 43.504536>,  <36.784954, 27.864050, 43.529926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762405, 27.626465, 43.504536>,  <36.724823, 27.230490, 43.462219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762405, 27.626465, 43.504536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216487, -0.124038, 0.968374,
		0.971754, -0.068080, -0.225962,
		0.093954, 0.989939, 0.105796,
		36.790592, 27.923447, 43.536274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324364, 27.334221, 43.882786>,  <36.724823, 27.230490, 43.462219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324364, 27.334221, 43.882786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144924, 27.685480, 43.949253>,  <37.037258, 27.896236, 43.989136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144924, 27.685480, 43.949253>,  <37.324364, 27.334221, 43.882786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144924, 27.685480, 43.949253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128320, -0.120717, 0.984358,
		0.884472, 0.462907, -0.058530,
		-0.448601, 0.878148, 0.166171,
		37.010345, 27.948925, 43.999104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820786, 27.832815, 44.284073>,  <37.324364, 27.334221, 43.882786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820786, 27.832815, 44.284073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443592, 27.944649, 44.356300>,  <37.217274, 28.011749, 44.399635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443592, 27.944649, 44.356300>,  <37.820786, 27.832815, 44.284073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443592, 27.944649, 44.356300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250335, 0.238286, 0.938377,
		0.219329, 0.930082, -0.294691,
		-0.942988, 0.279585, 0.180569,
		37.160694, 28.028524, 44.410473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937004, 28.460037, 44.541519>,  <37.820786, 27.832815, 44.284073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937004, 28.460037, 44.541519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570415, 28.343420, 44.651131>,  <37.350464, 28.273449, 44.716896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570415, 28.343420, 44.651131>,  <37.937004, 28.460037, 44.541519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570415, 28.343420, 44.651131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177065, 0.318640, 0.931191,
		-0.358799, 0.901926, -0.240400,
		-0.916467, -0.291544, 0.274027,
		37.295475, 28.255957, 44.733337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742188, 29.027847, 44.936066>,  <37.937004, 28.460037, 44.541519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742188, 29.027847, 44.936066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498432, 28.723375, 45.024841>,  <37.352180, 28.540693, 45.078106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498432, 28.723375, 45.024841>,  <37.742188, 29.027847, 44.936066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498432, 28.723375, 45.024841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025470, 0.260980, 0.965008,
		-0.792464, 0.593715, -0.139650,
		-0.609386, -0.761178, 0.221939,
		37.315617, 28.495022, 45.091423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486610, 29.284359, 45.444286>,  <37.742188, 29.027847, 44.936066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486610, 29.284359, 45.444286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419415, 28.896330, 45.514416>,  <37.379097, 28.663513, 45.556492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419415, 28.896330, 45.514416>,  <37.486610, 29.284359, 45.444286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419415, 28.896330, 45.514416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178202, 0.145037, 0.973246,
		-0.969547, 0.194743, 0.148504,
		-0.167994, -0.970072, 0.175324,
		37.369015, 28.605309, 45.567013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082153, 29.319515, 46.012993>,  <37.486610, 29.284359, 45.444286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082153, 29.319515, 46.012993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256912, 28.959848, 46.022949>,  <37.361767, 28.744047, 46.028923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256912, 28.959848, 46.022949>,  <37.082153, 29.319515, 46.012993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256912, 28.959848, 46.022949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344551, 0.192842, 0.918747,
		-0.830908, -0.392821, 0.394061,
		0.436894, -0.899169, 0.024887,
		37.387981, 28.690098, 46.030415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856094, 28.970434, 46.670162>,  <37.082153, 29.319515, 46.012993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856094, 28.970434, 46.670162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195335, 28.790276, 46.558544>,  <37.398880, 28.682180, 46.491573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195335, 28.790276, 46.558544>,  <36.856094, 28.970434, 46.670162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195335, 28.790276, 46.558544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354800, 0.091639, 0.930440,
		-0.393496, -0.888113, 0.237520,
		0.848102, -0.450397, -0.279043,
		37.449764, 28.655157, 46.474831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974319, 28.501957, 47.141582>,  <36.856094, 28.970434, 46.670162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974319, 28.501957, 47.141582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332363, 28.537708, 46.966866>,  <37.547188, 28.559160, 46.862034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332363, 28.537708, 46.966866>,  <36.974319, 28.501957, 47.141582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332363, 28.537708, 46.966866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428942, 0.094562, 0.898369,
		0.121599, -0.991498, 0.046306,
		0.895110, 0.089379, -0.436794,
		37.600895, 28.564522, 46.835827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405952, 28.146614, 47.539688>,  <36.974319, 28.501957, 47.141582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405952, 28.146614, 47.539688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626560, 28.426519, 47.358070>,  <37.758923, 28.594463, 47.249100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626560, 28.426519, 47.358070>,  <37.405952, 28.146614, 47.539688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626560, 28.426519, 47.358070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271170, 0.364350, 0.890907,
		0.788858, -0.614473, 0.011190,
		0.551516, 0.699765, -0.454048,
		37.792015, 28.636450, 47.221855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029369, 28.171732, 47.881813>,  <37.405952, 28.146614, 47.539688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029369, 28.171732, 47.881813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020802, 28.523815, 47.692173>,  <38.015659, 28.735065, 47.578388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020802, 28.523815, 47.692173>,  <38.029369, 28.171732, 47.881813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020802, 28.523815, 47.692173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333122, 0.453397, 0.826717,
		0.942640, -0.140222, -0.302931,
		-0.021424, 0.880210, -0.474101,
		38.014374, 28.787878, 47.549942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645073, 28.429728, 47.864632>,  <38.029369, 28.171732, 47.881813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645073, 28.429728, 47.864632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416260, 28.757729, 47.856964>,  <38.278973, 28.954529, 47.852364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416260, 28.757729, 47.856964>,  <38.645073, 28.429728, 47.864632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416260, 28.757729, 47.856964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546100, 0.398189, 0.737035,
		0.612005, 0.411142, -0.675583,
		-0.572036, 0.820005, -0.019170,
		38.244648, 29.003731, 47.851212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072929, 28.940439, 47.878529>,  <38.645073, 28.429728, 47.864632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072929, 28.940439, 47.878529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740059, 29.136320, 47.982590>,  <38.540337, 29.253849, 48.045029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740059, 29.136320, 47.982590>,  <39.072929, 28.940439, 47.878529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740059, 29.136320, 47.982590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520215, 0.526994, 0.672052,
		0.192006, 0.694599, -0.693300,
		-0.832172, 0.489704, 0.260155,
		38.490406, 29.283232, 48.060635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338917, 29.571550, 47.890282>,  <39.072929, 28.940439, 47.878529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338917, 29.571550, 47.890282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995266, 29.582682, 48.094685>,  <38.789078, 29.589361, 48.217327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995266, 29.582682, 48.094685>,  <39.338917, 29.571550, 47.890282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995266, 29.582682, 48.094685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401423, 0.656001, 0.639158,
		-0.317437, 0.754247, -0.574757,
		-0.859124, 0.027828, 0.511011,
		38.737530, 29.591030, 48.247990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090878, 30.153744, 48.227112>,  <39.338917, 29.571550, 47.890282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090878, 30.153744, 48.227112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248966, 30.167356, 47.859932>,  <39.343819, 30.175524, 47.639622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248966, 30.167356, 47.859932>,  <39.090878, 30.153744, 48.227112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248966, 30.167356, 47.859932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917266, -0.068146, 0.392402,
		-0.049200, -0.997094, -0.058150,
		0.395225, 0.034033, -0.917954,
		39.367535, 30.177565, 47.584545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321091, 30.563431, 48.889553>,  <39.090878, 30.153744, 48.227112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321091, 30.563431, 48.889553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549164, 30.866596, 49.016335>,  <39.686008, 31.048494, 49.092403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549164, 30.866596, 49.016335>,  <39.321091, 30.563431, 48.889553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549164, 30.866596, 49.016335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136222, 0.293250, -0.946281,
		-0.810145, 0.582729, 0.063962,
		0.570182, 0.757913, 0.316955,
		39.720219, 31.093969, 49.111420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932209, 31.129129, 48.683475>,  <39.321091, 30.563431, 48.889553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932209, 31.129129, 48.683475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320873, 31.220013, 48.709557>,  <39.554073, 31.274544, 48.725204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320873, 31.220013, 48.709557>,  <38.932209, 31.129129, 48.683475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320873, 31.220013, 48.709557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013298, 0.222855, -0.974761,
		-0.236005, 0.948004, 0.213518,
		0.971661, 0.227209, 0.065201,
		39.612373, 31.288176, 48.729118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971661, 31.709419, 48.365070>,  <38.932209, 31.129129, 48.683475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971661, 31.709419, 48.365070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353512, 31.591717, 48.383408>,  <39.582623, 31.521095, 48.394409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353512, 31.591717, 48.383408>,  <38.971661, 31.709419, 48.365070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353512, 31.591717, 48.383408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132120, 0.280507, -0.950716,
		0.266895, 0.913635, 0.306656,
		0.954626, -0.294257, 0.045844,
		39.639900, 31.503439, 48.397160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315525, 32.253445, 47.965900>,  <38.971661, 31.709419, 48.365070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315525, 32.253445, 47.965900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544781, 31.925690, 47.961761>,  <39.682335, 31.729036, 47.959278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544781, 31.925690, 47.961761>,  <39.315525, 32.253445, 47.965900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544781, 31.925690, 47.961761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271279, 0.201638, -0.941143,
		0.773252, 0.536599, 0.337850,
		0.573140, -0.819392, -0.010349,
		39.716724, 31.679873, 47.958656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842724, 32.460518, 47.663208>,  <39.315525, 32.253445, 47.965900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842724, 32.460518, 47.663208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873863, 32.063671, 47.623913>,  <39.892548, 31.825563, 47.600334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873863, 32.063671, 47.623913>,  <39.842724, 32.460518, 47.663208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873863, 32.063671, 47.623913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505793, 0.124222, -0.853664,
		0.859135, 0.016769, 0.511474,
		0.077851, -0.992113, -0.098242,
		39.897217, 31.766037, 47.594440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565739, 32.276760, 47.640705>,  <39.842724, 32.460518, 47.663208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565739, 32.276760, 47.640705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342171, 31.988659, 47.476341>,  <40.208031, 31.815800, 47.377724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342171, 31.988659, 47.476341>,  <40.565739, 32.276760, 47.640705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342171, 31.988659, 47.476341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489585, 0.113312, -0.864562,
		0.669261, -0.684398, 0.289291,
		-0.558924, -0.720250, -0.410906,
		40.174492, 31.772583, 47.353069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943935, 32.051365, 46.983143>,  <40.565739, 32.276760, 47.640705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943935, 32.051365, 46.983143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585621, 31.887671, 46.913750>,  <40.370632, 31.789454, 46.872112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585621, 31.887671, 46.913750>,  <40.943935, 32.051365, 46.983143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585621, 31.887671, 46.913750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127517, 0.137292, -0.982288,
		0.425808, -0.902039, -0.070799,
		-0.895783, -0.409238, -0.173485,
		40.316887, 31.764898, 46.861706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999237, 31.743979, 46.323910>,  <40.943935, 32.051365, 46.983143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999237, 31.743979, 46.323910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603195, 31.727823, 46.377659>,  <40.365570, 31.718130, 46.409908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603195, 31.727823, 46.377659>,  <40.999237, 31.743979, 46.323910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603195, 31.727823, 46.377659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137499, 0.088686, -0.986524,
		0.027922, -0.995241, -0.093362,
		-0.990108, -0.040383, 0.134369,
		40.306164, 31.715708, 46.417969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616364, 31.165245, 45.932934>,  <40.999237, 31.743979, 46.323910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616364, 31.165245, 45.932934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339630, 31.449459, 45.984325>,  <40.173592, 31.619987, 46.015160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339630, 31.449459, 45.984325>,  <40.616364, 31.165245, 45.932934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339630, 31.449459, 45.984325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257987, -0.077055, -0.963071,
		-0.674395, -0.699430, 0.236618,
		-0.691833, 0.710535, 0.128479,
		40.132080, 31.662619, 46.022869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106434, 30.935925, 45.508938>,  <40.616364, 31.165245, 45.932934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106434, 30.935925, 45.508938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016201, 31.318373, 45.583710>,  <39.962063, 31.547842, 45.628574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016201, 31.318373, 45.583710>,  <40.106434, 30.935925, 45.508938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016201, 31.318373, 45.583710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303620, 0.113326, -0.946030,
		-0.925704, -0.270166, 0.264733,
		-0.225583, 0.956121, 0.186934,
		39.948524, 31.605209, 45.639790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453396, 30.965561, 45.435593>,  <40.106434, 30.935925, 45.508938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453396, 30.965561, 45.435593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542404, 31.352743, 45.389046>,  <39.595810, 31.585052, 45.361118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542404, 31.352743, 45.389046>,  <39.453396, 30.965561, 45.435593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542404, 31.352743, 45.389046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500612, 0.011020, -0.865602,
		-0.836583, 0.250872, 0.487024,
		0.222522, 0.967958, -0.116370,
		39.609161, 31.643131, 45.354134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849167, 31.317844, 45.203396>,  <39.453396, 30.965561, 45.435593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849167, 31.317844, 45.203396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128735, 31.585995, 45.103710>,  <39.296474, 31.746885, 45.043900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128735, 31.585995, 45.103710>,  <38.849167, 31.317844, 45.203396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128735, 31.585995, 45.103710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441478, 0.130242, -0.887770,
		-0.562679, 0.730504, 0.386984,
		0.698921, 0.670374, -0.249216,
		39.338409, 31.787107, 45.028946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521000, 31.931208, 45.120998>,  <38.849167, 31.317844, 45.203396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521000, 31.931208, 45.120998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855614, 31.946047, 44.902336>,  <39.056381, 31.954950, 44.771137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855614, 31.946047, 44.902336>,  <38.521000, 31.931208, 45.120998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855614, 31.946047, 44.902336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547637, 0.088402, -0.832033,
		0.017457, 0.995394, 0.094268,
		0.836534, 0.037100, -0.546658,
		39.106575, 31.957176, 44.738338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392517, 32.424461, 44.537209>,  <38.521000, 31.931208, 45.120998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392517, 32.424461, 44.537209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718636, 32.230316, 44.410896>,  <38.914307, 32.113831, 44.335110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718636, 32.230316, 44.410896>,  <38.392517, 32.424461, 44.537209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718636, 32.230316, 44.410896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362789, -0.003121, -0.931866,
		0.451308, 0.874307, -0.178629,
		0.815295, -0.485363, -0.315781,
		38.963223, 32.084709, 44.316162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563839, 32.772720, 43.897270>,  <38.392517, 32.424461, 44.537209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563839, 32.772720, 43.897270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744682, 32.417690, 43.861919>,  <38.853188, 32.204674, 43.840710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744682, 32.417690, 43.861919>,  <38.563839, 32.772720, 43.897270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744682, 32.417690, 43.861919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281913, -0.048184, -0.958229,
		0.846239, 0.458141, -0.272003,
		0.452111, -0.887572, -0.088381,
		38.880314, 32.151417, 43.835403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033939, 32.800354, 43.344860>,  <38.563839, 32.772720, 43.897270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033939, 32.800354, 43.344860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960712, 32.410610, 43.397179>,  <38.916775, 32.176765, 43.428570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960712, 32.410610, 43.397179>,  <39.033939, 32.800354, 43.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960712, 32.410610, 43.397179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166142, -0.100468, -0.980971,
		0.968959, -0.201317, -0.143489,
		-0.183070, -0.974360, 0.130797,
		38.905792, 32.118301, 43.436417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438690, 32.422466, 42.823326>,  <39.033939, 32.800354, 43.344860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438690, 32.422466, 42.823326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156448, 32.161026, 42.932816>,  <38.987103, 32.004162, 42.998508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156448, 32.161026, 42.932816>,  <39.438690, 32.422466, 42.823326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156448, 32.161026, 42.932816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188009, -0.199755, -0.961640,
		0.683206, -0.730002, 0.018065,
		-0.705608, -0.653601, 0.273721,
		38.944767, 31.964945, 43.014931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560162, 31.802940, 42.552490>,  <39.438690, 32.422466, 42.823326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560162, 31.802940, 42.552490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166779, 31.784924, 42.622665>,  <38.930748, 31.774113, 42.664772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166779, 31.784924, 42.622665>,  <39.560162, 31.802940, 42.552490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166779, 31.784924, 42.622665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146088, -0.375362, -0.915293,
		0.107080, -0.925783, 0.362573,
		-0.983459, -0.045042, 0.175440,
		38.871742, 31.771412, 42.675297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342533, 31.160023, 42.292076>,  <39.560162, 31.802940, 42.552490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342533, 31.160023, 42.292076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002350, 31.368109, 42.323303>,  <38.798241, 31.492960, 42.342041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002350, 31.368109, 42.323303>,  <39.342533, 31.160023, 42.292076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002350, 31.368109, 42.323303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275726, -0.314450, -0.908348,
		-0.447987, -0.794039, 0.410865,
		-0.850460, 0.520214, 0.078068,
		38.747211, 31.524174, 42.346725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873215, 30.738409, 42.135639>,  <39.342533, 31.160023, 42.292076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873215, 30.738409, 42.135639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663670, 31.075016, 42.082855>,  <38.537941, 31.276981, 42.051186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.663670, 31.075016, 42.082855>,  <38.873215, 30.738409, 42.135639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663670, 31.075016, 42.082855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388495, -0.373910, -0.842178,
		-0.758049, -0.389920, 0.522804,
		-0.523864, 0.841519, -0.131960,
		38.506512, 31.327471, 42.043266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305500, 30.434429, 41.920063>,  <38.873215, 30.738409, 42.135639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305500, 30.434429, 41.920063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289646, 30.817741, 41.806839>,  <38.280136, 31.047729, 41.738903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289646, 30.817741, 41.806839>,  <38.305500, 30.434429, 41.920063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289646, 30.817741, 41.806839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572820, -0.253905, -0.779365,
		-0.818723, 0.131258, 0.558985,
		-0.039631, 0.958282, -0.283065,
		38.277756, 31.105227, 41.721920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627167, 30.516216, 41.596512>,  <38.305500, 30.434429, 41.920063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627167, 30.516216, 41.596512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821888, 30.829939, 41.442688>,  <37.938721, 31.018173, 41.350395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821888, 30.829939, 41.442688>,  <37.627167, 30.516216, 41.596512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821888, 30.829939, 41.442688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493275, -0.116501, -0.862037,
		-0.720904, 0.609334, 0.330166,
		0.486804, 0.784308, -0.384555,
		37.967930, 31.065231, 41.327320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120541, 30.895948, 41.258350>,  <37.627167, 30.516216, 41.596512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120541, 30.895948, 41.258350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457634, 31.022570, 41.084183>,  <37.659889, 31.098543, 40.979683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457634, 31.022570, 41.084183>,  <37.120541, 30.895948, 41.258350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457634, 31.022570, 41.084183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493878, 0.132822, -0.859327,
		-0.214192, 0.939229, 0.268273,
		0.842737, 0.316555, -0.435416,
		37.710457, 31.117537, 40.953560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962742, 31.585726, 40.984375>,  <37.120541, 30.895948, 41.258350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962742, 31.585726, 40.984375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274715, 31.453833, 40.771591>,  <37.461899, 31.374697, 40.643921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274715, 31.453833, 40.771591>,  <36.962742, 31.585726, 40.984375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274715, 31.453833, 40.771591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498011, 0.187827, -0.846585,
		0.379064, 0.925201, -0.017719,
		0.779933, -0.329734, -0.531959,
		37.508694, 31.354912, 40.612003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086784, 32.062809, 40.419075>,  <36.962742, 31.585726, 40.984375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086784, 32.062809, 40.419075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275055, 31.727980, 40.307514>,  <37.388016, 31.527082, 40.240578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275055, 31.727980, 40.307514>,  <37.086784, 32.062809, 40.419075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275055, 31.727980, 40.307514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249886, 0.176690, -0.952018,
		0.846183, 0.517781, -0.126009,
		0.470672, -0.837069, -0.278898,
		37.416256, 31.476858, 40.223846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629841, 32.217983, 39.863037>,  <37.086784, 32.062809, 40.419075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629841, 32.217983, 39.863037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544384, 31.833475, 39.793396>,  <37.493111, 31.602770, 39.751614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544384, 31.833475, 39.793396>,  <37.629841, 32.217983, 39.863037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544384, 31.833475, 39.793396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116684, 0.202048, -0.972400,
		0.969919, -0.187427, -0.155331,
		-0.213639, -0.961274, -0.174100,
		37.480293, 31.545094, 39.741165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074245, 32.183395, 39.384773>,  <37.629841, 32.217983, 39.863037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074245, 32.183395, 39.384773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818844, 31.876040, 39.367355>,  <37.665604, 31.691626, 39.356903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818844, 31.876040, 39.367355>,  <38.074245, 32.183395, 39.384773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818844, 31.876040, 39.367355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025207, 0.077432, -0.996679,
		0.769208, -0.635283, -0.068809,
		-0.638501, -0.768388, -0.043547,
		37.627293, 31.645523, 39.354290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434784, 31.703739, 38.959503>,  <38.074245, 32.183395, 39.384773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434784, 31.703739, 38.959503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043594, 31.624584, 38.932930>,  <37.808880, 31.577091, 38.916988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043594, 31.624584, 38.932930>,  <38.434784, 31.703739, 38.959503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043594, 31.624584, 38.932930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057916, 0.048517, -0.997142,
		0.200545, -0.979023, -0.035988,
		-0.977971, -0.197888, -0.066431,
		37.750202, 31.565218, 38.913002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304131, 31.178802, 38.423901>,  <38.434784, 31.703739, 38.959503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304131, 31.178802, 38.423901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930428, 31.319359, 38.448196>,  <37.706207, 31.403692, 38.462772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930428, 31.319359, 38.448196>,  <38.304131, 31.178802, 38.423901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930428, 31.319359, 38.448196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075686, -0.028948, -0.996711,
		-0.348476, -0.935781, 0.053641,
		-0.934257, 0.351390, 0.060738,
		37.650150, 31.424776, 38.466419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931145, 30.764767, 37.929955>,  <38.304131, 31.178802, 38.423901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931145, 30.764767, 37.929955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690186, 31.078264, 37.990433>,  <37.545609, 31.266363, 38.026722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690186, 31.078264, 37.990433>,  <37.931145, 30.764767, 37.929955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690186, 31.078264, 37.990433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274889, -0.025865, -0.961128,
		-0.749367, -0.620546, 0.231023,
		-0.602399, 0.783743, 0.151199,
		37.509464, 31.313387, 38.035793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214157, 30.616360, 37.637428>,  <37.931145, 30.764767, 37.929955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214157, 30.616360, 37.637428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253479, 31.014284, 37.647930>,  <37.277073, 31.253038, 37.654232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253479, 31.014284, 37.647930>,  <37.214157, 30.616360, 37.637428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253479, 31.014284, 37.647930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176421, 0.043384, -0.983358,
		-0.979393, 0.092041, 0.179771,
		0.098308, 0.994810, 0.026252,
		37.282970, 31.312727, 37.655807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724567, 30.985477, 37.103115>,  <37.214157, 30.616360, 37.637428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724567, 30.985477, 37.103115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995365, 31.271408, 37.173199>,  <37.157845, 31.442966, 37.215248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995365, 31.271408, 37.173199>,  <36.724567, 30.985477, 37.103115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995365, 31.271408, 37.173199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037216, 0.204512, -0.978156,
		-0.735045, 0.668729, 0.111851,
		0.676996, 0.714826, 0.175213,
		37.198463, 31.485855, 37.225761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638504, 31.446449, 36.539806>,  <36.724567, 30.985477, 37.103115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638504, 31.446449, 36.539806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989227, 31.566216, 36.690300>,  <37.199661, 31.638075, 36.780594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989227, 31.566216, 36.690300>,  <36.638504, 31.446449, 36.539806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989227, 31.566216, 36.690300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262938, 0.356534, -0.896520,
		-0.402570, 0.885005, 0.233886,
		0.876813, 0.299415, 0.376231,
		37.252270, 31.656040, 36.803169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751495, 32.099613, 36.156082>,  <36.638504, 31.446449, 36.539806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751495, 32.099613, 36.156082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116898, 32.013523, 36.294178>,  <37.336140, 31.961868, 36.377037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116898, 32.013523, 36.294178>,  <36.751495, 32.099613, 36.156082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116898, 32.013523, 36.294178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406652, 0.457638, -0.790697,
		0.012182, 0.862697, 0.505575,
		0.913502, -0.215226, 0.345242,
		37.390949, 31.948956, 36.397751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090626, 32.724678, 36.193546>,  <36.751495, 32.099613, 36.156082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090626, 32.724678, 36.193546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373867, 32.442284, 36.188419>,  <37.543812, 32.272846, 36.185345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373867, 32.442284, 36.188419>,  <37.090626, 32.724678, 36.193546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373867, 32.442284, 36.188419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469954, 0.484756, -0.737668,
		0.526999, 0.516324, 0.675042,
		0.708107, -0.705989, -0.012817,
		37.586300, 32.230488, 36.184574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664600, 33.051113, 36.130585>,  <37.090626, 32.724678, 36.193546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664600, 33.051113, 36.130585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804672, 32.688911, 36.034718>,  <37.888718, 32.471592, 35.977196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804672, 32.688911, 36.034718>,  <37.664600, 33.051113, 36.130585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804672, 32.688911, 36.034718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716635, 0.423764, -0.553947,
		0.603164, 0.022225, 0.797308,
		0.350182, -0.905500, -0.239672,
		37.909725, 32.417263, 35.962814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460720, 32.944927, 36.295746>,  <37.664600, 33.051113, 36.130585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460720, 32.944927, 36.295746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368408, 32.700214, 35.993099>,  <38.313023, 32.553387, 35.811512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368408, 32.700214, 35.993099>,  <38.460720, 32.944927, 36.295746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368408, 32.700214, 35.993099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741950, 0.392424, -0.543611,
		0.629485, -0.686822, 0.363351,
		-0.230776, -0.611783, -0.756613,
		38.299175, 32.516678, 35.766117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069229, 32.672855, 36.065472>,  <38.460720, 32.944927, 36.295746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069229, 32.672855, 36.065472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806114, 32.610695, 35.770672>,  <38.648247, 32.573399, 35.593792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806114, 32.610695, 35.770672>,  <39.069229, 32.672855, 36.065472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806114, 32.610695, 35.770672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690939, 0.265057, -0.672568,
		0.299866, -0.951627, -0.066977,
		-0.657787, -0.155404, -0.736998,
		38.608780, 32.564075, 35.549572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441944, 32.295307, 35.663414>,  <39.069229, 32.672855, 36.065472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441944, 32.295307, 35.663414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158562, 32.457458, 35.432323>,  <38.988533, 32.554749, 35.293671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158562, 32.457458, 35.432323>,  <39.441944, 32.295307, 35.663414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158562, 32.457458, 35.432323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697625, 0.278320, -0.660195,
		-0.106835, -0.870752, -0.479977,
		-0.708453, 0.405376, -0.577724,
		38.946026, 32.579071, 35.259007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632523, 32.090267, 34.999252>,  <39.441944, 32.295307, 35.663414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632523, 32.090267, 34.999252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421135, 32.428238, 34.966209>,  <39.294304, 32.631020, 34.946384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421135, 32.428238, 34.966209>,  <39.632523, 32.090267, 34.999252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421135, 32.428238, 34.966209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613619, 0.312912, -0.724954,
		-0.586682, -0.433805, -0.683826,
		-0.528466, 0.844926, -0.082611,
		39.262596, 32.681717, 34.941425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382900, 32.195885, 34.289524>,  <39.632523, 32.090267, 34.999252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382900, 32.195885, 34.289524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398697, 32.549664, 34.475513>,  <39.408173, 32.761929, 34.587105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398697, 32.549664, 34.475513>,  <39.382900, 32.195885, 34.289524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398697, 32.549664, 34.475513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549504, 0.369429, -0.749379,
		-0.834558, 0.285096, -0.471417,
		0.039490, 0.884445, 0.464971,
		39.410545, 32.814999, 34.615005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227207, 32.825592, 33.817554>,  <39.382900, 32.195885, 34.289524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227207, 32.825592, 33.817554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489021, 32.892746, 34.112415>,  <39.646111, 32.933037, 34.289333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489021, 32.892746, 34.112415>,  <39.227207, 32.825592, 33.817554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489021, 32.892746, 34.112415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648581, 0.376334, -0.661600,
		-0.388487, 0.911147, 0.137440,
		0.654538, 0.167882, 0.737154,
		39.685383, 32.943111, 34.333561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539711, 32.636742, 33.039635>,  <39.227207, 32.825592, 33.817554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539711, 32.636742, 33.039635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391941, 32.990299, 32.924915>,  <39.303280, 33.202435, 32.856083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391941, 32.990299, 32.924915>,  <39.539711, 32.636742, 33.039635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391941, 32.990299, 32.924915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761650, -0.111196, 0.638377,
		0.532368, 0.454272, 0.714298,
		-0.369424, 0.883896, -0.286799,
		39.281113, 33.255466, 32.838875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069267, 32.203274, 33.148018>,  <39.539711, 32.636742, 33.039635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069267, 32.203274, 33.148018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056000, 32.355553, 32.778378>,  <40.048038, 32.446918, 32.556591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056000, 32.355553, 32.778378>,  <40.069267, 32.203274, 33.148018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056000, 32.355553, 32.778378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926909, 0.357542, 0.114029,
		0.373817, -0.852779, -0.364731,
		-0.033165, 0.380698, -0.924104,
		40.046051, 32.469761, 32.501144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659966, 31.911831, 32.875530>,  <40.069267, 32.203274, 33.148018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659966, 31.911831, 32.875530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536724, 32.268921, 32.744007>,  <40.462780, 32.483173, 32.665092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536724, 32.268921, 32.744007>,  <40.659966, 31.911831, 32.875530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536724, 32.268921, 32.744007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932495, 0.351860, 0.081531,
		0.188479, -0.281493, -0.940870,
		-0.308105, 0.892724, -0.328809,
		40.444294, 32.536739, 32.645363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156300, 32.100441, 32.357376>,  <40.659966, 31.911831, 32.875530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156300, 32.100441, 32.357376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977184, 32.402164, 32.549419>,  <40.869717, 32.583199, 32.664646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977184, 32.402164, 32.549419>,  <41.156300, 32.100441, 32.357376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977184, 32.402164, 32.549419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877095, 0.474903, 0.071915,
		-0.173757, 0.453301, -0.874258,
		-0.447787, 0.754312, 0.480105,
		40.842850, 32.628456, 32.693451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678818, 32.658966, 32.251839>,  <41.156300, 32.100441, 32.357376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678818, 32.658966, 32.251839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394291, 32.788330, 32.501457>,  <41.223576, 32.865948, 32.651226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394291, 32.788330, 32.501457>,  <41.678818, 32.658966, 32.251839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394291, 32.788330, 32.501457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584889, 0.764723, 0.270376,
		-0.389779, 0.557321, -0.733121,
		-0.711320, 0.323408, 0.624044,
		41.180893, 32.885353, 32.688671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115536, 33.302723, 32.519493>,  <41.678818, 32.658966, 32.251839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115536, 33.302723, 32.519493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453449, 33.341187, 32.730049>,  <42.656197, 33.364265, 32.856384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453449, 33.341187, 32.730049>,  <42.115536, 33.302723, 32.519493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453449, 33.341187, 32.730049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104541, 0.994424, -0.013888,
		-0.524790, -0.043297, 0.850130,
		0.844788, 0.096162, 0.526389,
		42.706886, 33.370033, 32.887966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975784, 33.963203, 32.920311>,  <42.115536, 33.302723, 32.519493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975784, 33.963203, 32.920311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368427, 33.910336, 32.975426>,  <42.604012, 33.878616, 33.008495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368427, 33.910336, 32.975426>,  <41.975784, 33.963203, 32.920311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368427, 33.910336, 32.975426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087609, 0.953008, 0.290000,
		-0.169643, -0.272594, 0.947056,
		0.981604, -0.132167, 0.137789,
		42.662907, 33.870686, 33.016762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047680, 34.384377, 33.504021>,  <41.975784, 33.963203, 32.920311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047680, 34.384377, 33.504021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402164, 34.343643, 33.323238>,  <42.614853, 34.319202, 33.214767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402164, 34.343643, 33.323238>,  <42.047680, 34.384377, 33.504021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402164, 34.343643, 33.323238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240294, 0.935097, 0.260483,
		0.396095, -0.339445, 0.853162,
		0.886210, -0.101834, -0.451954,
		42.668026, 34.313091, 33.187653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605511, 34.576813, 34.020931>,  <42.047680, 34.384377, 33.504021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605511, 34.576813, 34.020931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692730, 34.632912, 33.634609>,  <42.745060, 34.666573, 33.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692730, 34.632912, 33.634609>,  <42.605511, 34.576813, 34.020931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692730, 34.632912, 33.634609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112147, 0.979465, 0.167548,
		0.969474, -0.144845, 0.197839,
		0.218045, 0.140247, -0.965809,
		42.758144, 34.674984, 33.344868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017677, 35.120384, 34.039845>,  <42.605511, 34.576813, 34.020931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017677, 35.120384, 34.039845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937031, 35.120247, 33.648060>,  <42.888641, 35.120163, 33.412987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.937031, 35.120247, 33.648060>,  <43.017677, 35.120384, 34.039845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937031, 35.120247, 33.648060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074116, 0.997127, -0.015605,
		0.976656, -0.075740, -0.201015,
		-0.201619, -0.000343, -0.979464,
		42.876545, 35.120144, 33.354221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423035, 35.706917, 33.697197>,  <43.017677, 35.120384, 34.039845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423035, 35.706917, 33.697197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145962, 35.623898, 33.420902>,  <42.979717, 35.574085, 33.255127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145962, 35.623898, 33.420902>,  <43.423035, 35.706917, 33.697197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145962, 35.623898, 33.420902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159266, 0.978076, -0.134168,
		0.703440, 0.017075, -0.710549,
		-0.692680, -0.207546, -0.690738,
		42.938156, 35.561634, 33.213680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553596, 36.203682, 33.145805>,  <43.423035, 35.706917, 33.697197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553596, 36.203682, 33.145805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171249, 36.086369, 33.138786>,  <42.941841, 36.015980, 33.134575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171249, 36.086369, 33.138786>,  <43.553596, 36.203682, 33.145805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171249, 36.086369, 33.138786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291730, 0.954506, -0.061748,
		0.034857, -0.053905, -0.997938,
		-0.955865, -0.293281, -0.017545,
		42.884491, 35.998383, 33.133522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247089, 36.617596, 32.574345>,  <43.553596, 36.203682, 33.145805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247089, 36.617596, 32.574345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952122, 36.481792, 32.807903>,  <42.775139, 36.400311, 32.948040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952122, 36.481792, 32.807903>,  <43.247089, 36.617596, 32.574345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952122, 36.481792, 32.807903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502329, 0.853579, -0.138089,
		-0.451523, -0.395140, -0.799995,
		-0.737423, -0.339510, 0.583901,
		42.730896, 36.379940, 32.983074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792732, 36.510784, 32.084236>,  <43.247089, 36.617596, 32.574345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792732, 36.510784, 32.084236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643410, 36.536892, 32.454399>,  <42.553818, 36.552555, 32.676498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643410, 36.536892, 32.454399>,  <42.792732, 36.510784, 32.084236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643410, 36.536892, 32.454399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409308, 0.883596, -0.227432,
		-0.832532, -0.463679, -0.303137,
		-0.373305, 0.065268, 0.925409,
		42.531418, 36.556473, 32.732021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247864, 36.896919, 31.957972>,  <42.792732, 36.510784, 32.084236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247864, 36.896919, 31.957972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292263, 36.916634, 32.355011>,  <42.318905, 36.928463, 32.593235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292263, 36.916634, 32.355011>,  <42.247864, 36.896919, 31.957972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292263, 36.916634, 32.355011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323770, 0.946075, -0.010767,
		-0.939602, -0.320178, 0.120971,
		0.111000, 0.049284, 0.992598,
		42.325562, 36.931419, 32.652790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629932, 37.229412, 32.159988>,  <42.247864, 36.896919, 31.957972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629932, 37.229412, 32.159988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900669, 37.276817, 32.450600>,  <42.063110, 37.305260, 32.624966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900669, 37.276817, 32.450600>,  <41.629932, 37.229412, 32.159988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900669, 37.276817, 32.450600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256558, 0.963051, 0.081917,
		-0.689974, -0.241841, 0.682238,
		0.676841, 0.118512, 0.726527,
		42.103722, 37.312370, 32.668556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324947, 37.458149, 32.654610>,  <41.629932, 37.229412, 32.159988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324947, 37.458149, 32.654610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707890, 37.555336, 32.717148>,  <41.937653, 37.613647, 32.754669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707890, 37.555336, 32.717148>,  <41.324947, 37.458149, 32.654610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707890, 37.555336, 32.717148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254592, 0.965251, 0.058933,
		-0.136593, -0.096224, 0.985943,
		0.957353, 0.242963, 0.156345,
		41.995094, 37.628223, 32.764050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311871, 38.073307, 33.062035>,  <41.324947, 37.458149, 32.654610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311871, 38.073307, 33.062035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680786, 38.071991, 32.907436>,  <41.902134, 38.071201, 32.814678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680786, 38.071991, 32.907436>,  <41.311871, 38.073307, 33.062035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680786, 38.071991, 32.907436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007030, 0.999941, 0.008265,
		0.386441, -0.010340, 0.922256,
		0.922287, -0.003290, -0.386491,
		41.957474, 38.071003, 32.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727955, 38.452007, 33.506866>,  <41.311871, 38.073307, 33.062035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727955, 38.452007, 33.506866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934658, 38.484203, 33.165932>,  <42.058681, 38.503521, 32.961372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934658, 38.484203, 33.165932>,  <41.727955, 38.452007, 33.506866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934658, 38.484203, 33.165932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030636, 0.996672, 0.075544,
		0.855581, -0.012927, 0.517509,
		0.516763, 0.080488, -0.852337,
		42.089687, 38.508350, 32.910233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269619, 39.002258, 33.594566>,  <41.727955, 38.452007, 33.506866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269619, 39.002258, 33.594566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224560, 38.978046, 33.197849>,  <42.197525, 38.963520, 32.959820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224560, 38.978046, 33.197849>,  <42.269619, 39.002258, 33.594566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224560, 38.978046, 33.197849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081631, 0.995332, -0.051475,
		0.990276, 0.075162, -0.117061,
		-0.112646, -0.060530, -0.991790,
		42.190765, 38.959888, 32.900311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832142, 39.454285, 33.319046>,  <42.269619, 39.002258, 33.594566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832142, 39.454285, 33.319046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552925, 39.417194, 33.035034>,  <42.385395, 39.394939, 32.864628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552925, 39.417194, 33.035034>,  <42.832142, 39.454285, 33.319046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552925, 39.417194, 33.035034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012510, 0.993008, -0.117382,
		0.715950, -0.073055, -0.694320,
		-0.698040, -0.092725, -0.710030,
		42.343513, 39.389378, 32.822025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899570, 40.188572, 32.932484>,  <42.832142, 39.454285, 33.319046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899570, 40.188572, 32.932484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544556, 40.021084, 32.855602>,  <42.331547, 39.920589, 32.809471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.544556, 40.021084, 32.855602>,  <42.899570, 40.188572, 32.932484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544556, 40.021084, 32.855602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417921, 0.907282, -0.046710,
		0.193943, 0.038870, -0.980242,
		-0.887540, -0.418723, -0.192206,
		42.278294, 39.895466, 32.797939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673332, 40.515980, 32.325443>,  <42.899570, 40.188572, 32.932484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673332, 40.515980, 32.325443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350994, 40.352467, 32.496799>,  <42.157593, 40.254360, 32.599613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350994, 40.352467, 32.496799>,  <42.673332, 40.515980, 32.325443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350994, 40.352467, 32.496799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443329, 0.896109, 0.021143,
		-0.392526, -0.172879, -0.903347,
		-0.805843, -0.408780, 0.428388,
		42.109241, 40.229832, 32.625317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144833, 40.884861, 31.984081>,  <42.673332, 40.515980, 32.325443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144833, 40.884861, 31.984081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971138, 40.717258, 32.303047>,  <41.866920, 40.616695, 32.494427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971138, 40.717258, 32.303047>,  <42.144833, 40.884861, 31.984081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971138, 40.717258, 32.303047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567091, 0.814953, 0.119411,
		-0.699889, -0.400354, -0.591500,
		-0.434239, -0.419009, 0.797414,
		41.840866, 40.591557, 32.542271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322006, 41.078323, 31.886059>,  <42.144833, 40.884861, 31.984081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322006, 41.078323, 31.886059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381653, 40.997349, 32.273209>,  <41.417442, 40.948765, 32.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381653, 40.997349, 32.273209>,  <41.322006, 41.078323, 31.886059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381653, 40.997349, 32.273209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668445, 0.700655, 0.249528,
		-0.728661, -0.684180, -0.030836,
		0.149116, -0.202433, 0.967877,
		41.426388, 40.936619, 32.563572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773983, 41.480797, 32.069145>,  <41.322006, 41.078323, 31.886059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773983, 41.480797, 32.069145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962906, 41.387932, 32.409271>,  <41.076260, 41.332214, 32.613346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962906, 41.387932, 32.409271>,  <40.773983, 41.480797, 32.069145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962906, 41.387932, 32.409271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642993, 0.569097, 0.512531,
		-0.602900, -0.788815, 0.119508,
		0.472304, -0.232162, 0.850312,
		41.104595, 41.318283, 32.664364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202446, 41.096985, 32.585800>,  <40.773983, 41.480797, 32.069145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202446, 41.096985, 32.585800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504326, 41.301983, 32.749645>,  <40.685452, 41.424980, 32.847954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504326, 41.301983, 32.749645>,  <40.202446, 41.096985, 32.585800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504326, 41.301983, 32.749645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648854, 0.675420, 0.350423,
		-0.097069, -0.530241, 0.842272,
		0.754696, 0.512497, 0.409612,
		40.730736, 41.455730, 32.872528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687531, 40.741795, 33.136482>,  <40.202446, 41.096985, 32.585800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687531, 40.741795, 33.136482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800568, 40.393135, 33.296665>,  <39.868389, 40.183937, 33.392776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800568, 40.393135, 33.296665>,  <39.687531, 40.741795, 33.136482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800568, 40.393135, 33.296665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489366, 0.490065, 0.721358,
		-0.825022, -0.007883, 0.565046,
		0.282595, -0.871650, 0.400456,
		39.885345, 40.131641, 33.416801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445770, 40.724934, 33.846138>,  <39.687531, 40.741795, 33.136482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445770, 40.724934, 33.846138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766300, 40.491375, 33.794083>,  <39.958618, 40.351238, 33.762848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766300, 40.491375, 33.794083>,  <39.445770, 40.724934, 33.846138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766300, 40.491375, 33.794083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507222, 0.547818, 0.665298,
		-0.317172, -0.599133, 0.735147,
		0.801329, -0.583897, -0.130141,
		40.006699, 40.316204, 33.755039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604137, 41.002911, 34.589012>,  <39.445770, 40.724934, 33.846138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604137, 41.002911, 34.589012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343567, 40.702621, 34.632938>,  <39.187225, 40.522446, 34.659294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343567, 40.702621, 34.632938>,  <39.604137, 41.002911, 34.589012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343567, 40.702621, 34.632938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626831, -0.614070, -0.479584,
		0.427472, -0.243574, 0.870597,
		-0.651422, -0.750726, 0.109818,
		39.148140, 40.477406, 34.665882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932041, 40.394604, 34.938519>,  <39.604137, 41.002911, 34.589012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932041, 40.394604, 34.938519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625793, 40.306976, 34.696583>,  <39.442043, 40.254398, 34.551422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625793, 40.306976, 34.696583>,  <39.932041, 40.394604, 34.938519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625793, 40.306976, 34.696583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597155, -0.591682, -0.541589,
		-0.239226, -0.775835, 0.583825,
		-0.765622, -0.219072, -0.604839,
		39.396107, 40.241257, 34.515129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055321, 39.804176, 34.586845>,  <39.932041, 40.394604, 34.938519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055321, 39.804176, 34.586845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772678, 39.896915, 34.319424>,  <39.603092, 39.952557, 34.158970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772678, 39.896915, 34.319424>,  <40.055321, 39.804176, 34.586845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772678, 39.896915, 34.319424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534903, -0.443509, -0.719151,
		-0.463238, -0.865765, 0.189372,
		-0.706604, 0.231842, -0.668551,
		39.560696, 39.966469, 34.118858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601658, 39.926922, 35.135593>,  <40.055321, 39.804176, 34.586845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601658, 39.926922, 35.135593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910015, 39.770016, 35.336330>,  <41.095028, 39.675873, 35.456772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910015, 39.770016, 35.336330>,  <40.601658, 39.926922, 35.135593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910015, 39.770016, 35.336330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137012, 0.871549, 0.470776,
		-0.622053, -0.294160, 0.725617,
		0.770894, -0.392266, 0.501846,
		41.141285, 39.652336, 35.486885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669727, 40.095009, 35.874493>,  <40.601658, 39.926922, 35.135593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669727, 40.095009, 35.874493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041290, 40.032955, 35.739990>,  <41.264229, 39.995724, 35.659290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041290, 40.032955, 35.739990>,  <40.669727, 40.095009, 35.874493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041290, 40.032955, 35.739990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271601, 0.902653, 0.333842,
		0.251731, -0.401435, 0.880614,
		0.928905, -0.155137, -0.336256,
		41.319962, 39.986416, 35.639114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077866, 40.245716, 36.482899>,  <40.669727, 40.095009, 35.874493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077866, 40.245716, 36.482899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252293, 40.318916, 36.130455>,  <41.356949, 40.362839, 35.918987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252293, 40.318916, 36.130455>,  <41.077866, 40.245716, 36.482899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252293, 40.318916, 36.130455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246378, 0.917418, 0.312478,
		0.865532, -0.353347, 0.354964,
		0.436064, 0.183004, -0.881112,
		41.383110, 40.373817, 35.866123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786156, 40.295502, 37.242645>,  <41.077866, 40.245716, 36.482899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786156, 40.295502, 37.242645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551086, 39.980659, 37.317593>,  <40.410046, 39.791756, 37.362560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551086, 39.980659, 37.317593>,  <40.786156, 40.295502, 37.242645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551086, 39.980659, 37.317593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784140, -0.611135, -0.107881,
		0.199424, 0.083527, 0.976347,
		-0.587669, -0.787107, 0.187371,
		40.374786, 39.744526, 37.373802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086838, 39.842918, 37.751228>,  <40.786156, 40.295502, 37.242645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086838, 39.842918, 37.751228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847763, 39.648155, 37.496452>,  <40.704319, 39.531300, 37.343586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847763, 39.648155, 37.496452>,  <41.086838, 39.842918, 37.751228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847763, 39.648155, 37.496452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666143, -0.743674, -0.056595,
		-0.446120, -0.458119, 0.768833,
		-0.597688, -0.486905, -0.636940,
		40.668457, 39.502083, 37.305370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111343, 39.185322, 38.005917>,  <41.086838, 39.842918, 37.751228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111343, 39.185322, 38.005917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977486, 39.140358, 37.631668>,  <40.897171, 39.113380, 37.407120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977486, 39.140358, 37.631668>,  <41.111343, 39.185322, 38.005917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977486, 39.140358, 37.631668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458293, -0.886949, -0.057359,
		-0.823396, -0.447981, 0.348326,
		-0.334643, -0.112407, -0.935617,
		40.877094, 39.106636, 37.350983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833591, 38.415874, 37.986801>,  <41.111343, 39.185322, 38.005917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833591, 38.415874, 37.986801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910404, 38.552738, 37.618877>,  <40.956493, 38.634857, 37.398125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910404, 38.552738, 37.618877>,  <40.833591, 38.415874, 37.986801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910404, 38.552738, 37.618877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437778, -0.868700, -0.231754,
		-0.878335, -0.358167, -0.316612,
		0.192035, 0.342164, -0.919808,
		40.968014, 38.655388, 37.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703735, 37.868137, 37.635914>,  <40.833591, 38.415874, 37.986801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703735, 37.868137, 37.635914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899174, 38.073582, 37.353786>,  <41.016438, 38.196850, 37.184509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899174, 38.073582, 37.353786>,  <40.703735, 37.868137, 37.635914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899174, 38.073582, 37.353786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513160, -0.822943, -0.243786,
		-0.705651, -0.242831, -0.665650,
		0.488593, 0.513613, -0.705321,
		41.045753, 38.227665, 37.142189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816959, 37.406139, 37.057068>,  <40.703735, 37.868137, 37.635914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816959, 37.406139, 37.057068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081604, 37.700279, 36.998375>,  <41.240391, 37.876762, 36.963158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081604, 37.700279, 36.998375>,  <40.816959, 37.406139, 37.057068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081604, 37.700279, 36.998375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656479, -0.662595, -0.360559,
		-0.362362, 0.142223, -0.921122,
		0.661611, 0.735351, -0.146733,
		41.280087, 37.920883, 36.954353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987759, 37.410511, 36.338993>,  <40.816959, 37.406139, 37.057068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987759, 37.410511, 36.338993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299282, 37.604462, 36.498169>,  <41.486195, 37.720833, 36.593674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299282, 37.604462, 36.498169>,  <40.987759, 37.410511, 36.338993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299282, 37.604462, 36.498169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611317, -0.444573, -0.654711,
		-0.140544, 0.753158, -0.642651,
		0.778806, 0.484879, 0.397937,
		41.532925, 37.749924, 36.617550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405048, 37.736256, 35.786106>,  <40.987759, 37.410511, 36.338993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405048, 37.736256, 35.786106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667511, 37.712070, 36.086987>,  <41.824989, 37.697559, 36.267513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667511, 37.712070, 36.086987>,  <41.405048, 37.736256, 35.786106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667511, 37.712070, 36.086987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603526, -0.556330, -0.571186,
		0.453006, 0.828759, -0.328549,
		0.656157, -0.060462, 0.752198,
		41.864357, 37.693932, 36.312645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995586, 37.746876, 35.422947>,  <41.405048, 37.736256, 35.786106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995586, 37.746876, 35.422947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068516, 37.582390, 35.780197>,  <42.112274, 37.483700, 35.994545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068516, 37.582390, 35.780197>,  <41.995586, 37.746876, 35.422947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068516, 37.582390, 35.780197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651861, -0.629475, -0.422893,
		0.736095, 0.659293, 0.153285,
		0.182321, -0.411210, 0.893121,
		42.123211, 37.459026, 36.048134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689423, 37.682247, 35.434338>,  <41.995586, 37.746876, 35.422947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689423, 37.682247, 35.434338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571434, 37.402523, 35.694786>,  <42.500641, 37.234688, 35.851055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571434, 37.402523, 35.694786>,  <42.689423, 37.682247, 35.434338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571434, 37.402523, 35.694786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672884, -0.635837, -0.378072,
		0.678396, 0.326609, 0.658108,
		-0.294968, -0.699312, 0.651119,
		42.482944, 37.192730, 35.890121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326366, 37.395798, 35.760078>,  <42.689423, 37.682247, 35.434338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326366, 37.395798, 35.760078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045883, 37.114037, 35.804096>,  <42.877594, 36.944981, 35.830509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045883, 37.114037, 35.804096>,  <43.326366, 37.395798, 35.760078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045883, 37.114037, 35.804096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626357, -0.682392, -0.376854,
		0.340555, -0.195325, 0.919712,
		-0.701213, -0.704407, 0.110049,
		42.835518, 36.902714, 35.837112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609406, 36.763615, 36.128872>,  <43.326366, 37.395798, 35.760078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609406, 36.763615, 36.128872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285725, 36.588390, 35.972260>,  <43.091518, 36.483257, 35.878292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285725, 36.588390, 35.972260>,  <43.609406, 36.763615, 36.128872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285725, 36.588390, 35.972260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557563, -0.782682, -0.276646,
		-0.185257, -0.442166, 0.877593,
		-0.809199, -0.438062, -0.391533,
		43.042965, 36.456970, 35.854801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537910, 36.096252, 36.374161>,  <43.609406, 36.763615, 36.128872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537910, 36.096252, 36.374161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310944, 36.098396, 36.044796>,  <43.174763, 36.099682, 35.847179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310944, 36.098396, 36.044796>,  <43.537910, 36.096252, 36.374161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310944, 36.098396, 36.044796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540597, -0.751865, -0.377430,
		-0.621117, -0.659295, 0.423725,
		-0.567422, 0.005364, -0.823409,
		43.140717, 36.100006, 35.797771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408173, 35.380836, 36.228775>,  <43.537910, 36.096252, 36.374161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408173, 35.380836, 36.228775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301075, 35.543247, 35.879272>,  <43.236816, 35.640694, 35.669571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301075, 35.543247, 35.879272>,  <43.408173, 35.380836, 36.228775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301075, 35.543247, 35.879272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435525, -0.757928, -0.485656,
		-0.859435, -0.510578, 0.026101,
		-0.267748, 0.406022, -0.873760,
		43.220749, 35.665054, 35.617146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219288, 34.783127, 35.870342>,  <43.408173, 35.380836, 36.228775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219288, 34.783127, 35.870342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307098, 35.068371, 35.604023>,  <43.359783, 35.239517, 35.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307098, 35.068371, 35.604023>,  <43.219288, 34.783127, 35.870342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307098, 35.068371, 35.604023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428365, -0.683594, -0.590933,
		-0.876535, -0.155481, -0.455536,
		0.219523, 0.713109, -0.665796,
		43.372955, 35.282303, 35.404285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125881, 34.510063, 35.233265>,  <43.219288, 34.783127, 35.870342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125881, 34.510063, 35.233265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347187, 34.835617, 35.162281>,  <43.479973, 35.030949, 35.119690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347187, 34.835617, 35.162281>,  <43.125881, 34.510063, 35.233265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347187, 34.835617, 35.162281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436401, -0.464661, -0.770483,
		-0.709541, 0.348839, -0.612260,
		0.553268, 0.813881, -0.177463,
		43.513168, 35.079781, 35.109043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215378, 34.548939, 34.531017>,  <43.125881, 34.510063, 35.233265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215378, 34.548939, 34.531017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517677, 34.775581, 34.662350>,  <43.699059, 34.911568, 34.741150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517677, 34.775581, 34.662350>,  <43.215378, 34.548939, 34.531017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517677, 34.775581, 34.662350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627661, -0.483737, -0.609950,
		-0.186776, 0.667050, -0.721221,
		0.755749, 0.566606, 0.328331,
		43.744400, 34.945564, 34.760849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665470, 34.792557, 33.905491>,  <43.215378, 34.548939, 34.531017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665470, 34.792557, 33.905491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920433, 34.838284, 34.210293>,  <44.073410, 34.865719, 34.393173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920433, 34.838284, 34.210293>,  <43.665470, 34.792557, 33.905491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920433, 34.838284, 34.210293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688247, -0.529127, -0.496327,
		0.346455, 0.840806, -0.415949,
		0.637405, 0.114320, 0.762001,
		44.111656, 34.872581, 34.438892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281212, 35.075661, 33.625710>,  <43.665470, 34.792557, 33.905491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281212, 35.075661, 33.625710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409580, 34.915970, 33.969250>,  <44.486599, 34.820156, 34.175373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409580, 34.915970, 33.969250>,  <44.281212, 35.075661, 33.625710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409580, 34.915970, 33.969250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631373, -0.585754, -0.508194,
		0.705961, 0.705346, 0.064082,
		0.320917, -0.399225, 0.858855,
		44.505856, 34.796204, 34.226906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954353, 35.276150, 33.787369>,  <44.281212, 35.075661, 33.625710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954353, 35.276150, 33.787369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931976, 34.934845, 33.994762>,  <44.918549, 34.730064, 34.119198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931976, 34.934845, 33.994762>,  <44.954353, 35.276150, 33.787369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931976, 34.934845, 33.994762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722281, -0.393115, -0.569009,
		0.689333, 0.342656, 0.638284,
		-0.055945, -0.853257, 0.518481,
		44.915192, 34.678867, 34.150307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666557, 35.031876, 33.862297>,  <44.954353, 35.276150, 33.787369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666557, 35.031876, 33.862297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432121, 34.715645, 33.933266>,  <45.291458, 34.525906, 33.975849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432121, 34.715645, 33.933266>,  <45.666557, 35.031876, 33.862297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432121, 34.715645, 33.933266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633901, -0.583791, -0.507304,
		0.504644, -0.184857, 0.843304,
		-0.586093, -0.790579, 0.177426,
		45.256294, 34.478470, 33.986492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047489, 34.516460, 34.132858>,  <45.666557, 35.031876, 33.862297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047489, 34.516460, 34.132858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742470, 34.309910, 33.976971>,  <45.559460, 34.185982, 33.883438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742470, 34.309910, 33.976971>,  <46.047489, 34.516460, 34.132858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742470, 34.309910, 33.976971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634978, -0.482156, -0.603596,
		0.123777, -0.707732, 0.695553,
		-0.762550, -0.516372, -0.389714,
		45.513706, 34.154999, 33.860058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257275, 35.077034, 34.472855>,  <46.047489, 34.516460, 34.132858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257275, 35.077034, 34.472855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522511, 35.311878, 34.658592>,  <46.681652, 35.452785, 34.770035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522511, 35.311878, 34.658592>,  <46.257275, 35.077034, 34.472855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522511, 35.311878, 34.658592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378297, -0.798121, 0.468928,
		0.645915, -0.135282, -0.751328,
		0.663088, 0.587112, 0.464341,
		46.721436, 35.488010, 34.797894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.560200, 34.618450, 34.921162>,  <46.257275, 35.077034, 34.472855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.560200, 34.618450, 34.921162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819752, 34.917625, 34.977081>,  <46.975483, 35.097130, 35.010632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819752, 34.917625, 34.977081>,  <46.560200, 34.618450, 34.921162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819752, 34.917625, 34.977081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585802, -0.608310, 0.535532,
		0.485589, -0.265598, -0.832863,
		0.648875, 0.747942, 0.139801,
		47.014416, 35.142010, 35.019020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239170, 34.599026, 34.644600>,  <46.560200, 34.618450, 34.921162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239170, 34.599026, 34.644600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.206898, 34.806583, 34.985008>,  <47.187534, 34.931118, 35.189255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.206898, 34.806583, 34.985008>,  <47.239170, 34.599026, 34.644600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.206898, 34.806583, 34.985008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480743, -0.727673, 0.489264,
		0.873142, 0.448597, -0.190746,
		-0.080681, 0.518897, 0.851021,
		47.182693, 34.962254, 35.240314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.819916, 34.939812, 34.730148>,  <47.239170, 34.599026, 34.644600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.819916, 34.939812, 34.730148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654900, 34.867474, 35.087273>,  <47.555889, 34.824070, 35.301548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654900, 34.867474, 35.087273>,  <47.819916, 34.939812, 34.730148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654900, 34.867474, 35.087273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744600, -0.631552, 0.216132,
		0.524767, 0.753948, 0.395200,
		-0.412542, -0.180847, 0.892807,
		47.531136, 34.813221, 35.355114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.735577, 35.100174, 44.220169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378704, 34.937050, 44.297836>,  <36.164581, 34.839176, 44.344437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378704, 34.937050, 44.297836>,  <36.735577, 35.100174, 44.220169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378704, 34.937050, 44.297836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223715, 0.025540, -0.974320,
		0.392377, -0.912710, -0.114020,
		-0.892184, -0.407808, 0.194165,
		36.111050, 34.814709, 44.356087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670914, 34.414108, 43.834465>,  <36.735577, 35.100174, 44.220169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670914, 34.414108, 43.834465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307064, 34.547180, 43.933987>,  <36.088753, 34.627026, 43.993698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307064, 34.547180, 43.933987>,  <36.670914, 34.414108, 43.834465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307064, 34.547180, 43.933987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285865, -0.066695, -0.955946,
		-0.301435, -0.940676, 0.155771,
		-0.909625, 0.332685, 0.248802,
		36.034176, 34.646984, 44.008629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212360, 33.931969, 43.433949>,  <36.670914, 34.414108, 43.834465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212360, 33.931969, 43.433949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020767, 34.271046, 43.525154>,  <35.905811, 34.474491, 43.579880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020767, 34.271046, 43.525154>,  <36.212360, 33.931969, 43.433949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020767, 34.271046, 43.525154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359967, 0.047233, -0.931769,
		-0.800622, -0.528384, 0.282517,
		-0.478987, 0.847691, 0.228016,
		35.877071, 34.525352, 43.593559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699287, 33.834427, 43.050285>,  <36.212360, 33.931969, 43.433949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699287, 33.834427, 43.050285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696873, 34.222771, 43.146111>,  <35.695423, 34.455776, 43.203606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.696873, 34.222771, 43.146111>,  <35.699287, 33.834427, 43.050285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696873, 34.222771, 43.146111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344310, 0.222904, -0.912011,
		-0.938836, -0.087986, 0.332933,
		-0.006032, 0.970861, 0.239565,
		35.695065, 34.514030, 43.217979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164097, 34.104214, 42.682575>,  <35.699287, 33.834427, 43.050285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164097, 34.104214, 42.682575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382172, 34.421913, 42.789864>,  <35.513016, 34.612534, 42.854237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382172, 34.421913, 42.789864>,  <35.164097, 34.104214, 42.682575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382172, 34.421913, 42.789864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132398, 0.397515, -0.907994,
		-0.827795, 0.459512, 0.321876,
		0.545185, 0.794248, 0.268223,
		35.545727, 34.660187, 42.870331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682343, 34.624817, 42.541424>,  <35.164097, 34.104214, 42.682575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682343, 34.624817, 42.541424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054260, 34.771912, 42.547752>,  <35.277412, 34.860168, 42.551548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054260, 34.771912, 42.547752>,  <34.682343, 34.624817, 42.541424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054260, 34.771912, 42.547752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185138, 0.504398, -0.843390,
		-0.318126, 0.781251, 0.537069,
		0.929796, 0.367736, 0.015823,
		35.333199, 34.882233, 42.552498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581600, 35.268208, 42.376102>,  <34.682343, 34.624817, 42.541424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581600, 35.268208, 42.376102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.964897, 35.187233, 42.295326>,  <35.194878, 35.138649, 42.246861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.964897, 35.187233, 42.295326>,  <34.581600, 35.268208, 42.376102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964897, 35.187233, 42.295326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094670, 0.441798, -0.892105,
		0.269815, 0.873975, 0.404187,
		0.958247, -0.202439, -0.201943,
		35.252373, 35.126503, 42.234745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739464, 35.789371, 41.980988>,  <34.581600, 35.268208, 42.376102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739464, 35.789371, 41.980988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036823, 35.532543, 41.906048>,  <35.215240, 35.378445, 41.861084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036823, 35.532543, 41.906048>,  <34.739464, 35.789371, 41.980988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036823, 35.532543, 41.906048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016151, 0.262794, -0.964717,
		0.668650, 0.720198, 0.184992,
		0.743402, -0.642070, -0.187350,
		35.259846, 35.339924, 41.849842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226208, 36.205341, 41.565029>,  <34.739464, 35.789371, 41.980988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226208, 36.205341, 41.565029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288181, 35.812145, 41.525581>,  <35.325367, 35.576229, 41.501911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288181, 35.812145, 41.525581>,  <35.226208, 36.205341, 41.565029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288181, 35.812145, 41.525581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008934, 0.101215, -0.994825,
		0.987884, 0.153254, 0.024463,
		0.154936, -0.982990, -0.098619,
		35.334663, 35.517250, 41.495995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696526, 36.003647, 41.188713>,  <35.226208, 36.205341, 41.565029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696526, 36.003647, 41.188713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537998, 35.640202, 41.136017>,  <35.442883, 35.422134, 41.104401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537998, 35.640202, 41.136017>,  <35.696526, 36.003647, 41.188713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537998, 35.640202, 41.136017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222220, 0.044288, -0.973990,
		0.890816, -0.415281, 0.184361,
		-0.396315, -0.908615, -0.131736,
		35.419106, 35.367619, 41.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083710, 35.691708, 40.618622>,  <35.696526, 36.003647, 41.188713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083710, 35.691708, 40.618622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758358, 35.461292, 40.651112>,  <35.563148, 35.323044, 40.670605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758358, 35.461292, 40.651112>,  <36.083710, 35.691708, 40.618622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758358, 35.461292, 40.651112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052057, -0.066987, -0.996395,
		0.579403, -0.814673, 0.024499,
		-0.813377, -0.576039, 0.081222,
		35.514343, 35.288479, 40.675480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258163, 35.117519, 40.278866>,  <36.083710, 35.691708, 40.618622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258163, 35.117519, 40.278866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862293, 35.174858, 40.278618>,  <35.624771, 35.209263, 40.278469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862293, 35.174858, 40.278618>,  <36.258163, 35.117519, 40.278866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862293, 35.174858, 40.278618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002919, -0.024452, -0.999697,
		-0.143320, -0.989370, 0.024618,
		-0.989672, 0.143348, -0.000616,
		35.565392, 35.217861, 40.278435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003468, 34.533314, 39.986679>,  <36.258163, 35.117519, 40.278866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003468, 34.533314, 39.986679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719707, 34.812027, 39.944256>,  <35.549454, 34.979256, 39.918804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719707, 34.812027, 39.944256>,  <36.003468, 34.533314, 39.986679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719707, 34.812027, 39.944256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074683, -0.075311, -0.994360,
		-0.700842, -0.713316, 0.001388,
		-0.709397, 0.696785, -0.106054,
		35.506889, 35.021061, 39.912441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482769, 34.309704, 39.477280>,  <36.003468, 34.533314, 39.986679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482769, 34.309704, 39.477280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437412, 34.706978, 39.488068>,  <35.410198, 34.945343, 39.494541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437412, 34.706978, 39.488068>,  <35.482769, 34.309704, 39.477280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437412, 34.706978, 39.488068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053524, 0.033208, -0.998014,
		-0.992108, -0.111719, -0.056924,
		-0.113387, 0.993185, 0.026966,
		35.403397, 35.004932, 39.496159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919247, 34.437149, 38.996700>,  <35.482769, 34.309704, 39.477280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919247, 34.437149, 38.996700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086262, 34.799145, 39.029339>,  <35.186470, 35.016342, 39.048923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.086262, 34.799145, 39.029339>,  <34.919247, 34.437149, 38.996700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086262, 34.799145, 39.029339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190019, 0.174782, -0.966097,
		-0.888567, 0.387881, 0.244943,
		0.417542, 0.904986, 0.081601,
		35.211525, 35.070641, 39.053818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576378, 34.843014, 38.563721>,  <34.919247, 34.437149, 38.996700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576378, 34.843014, 38.563721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897556, 35.073875, 38.623268>,  <35.090263, 35.212395, 38.658997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.897556, 35.073875, 38.623268>,  <34.576378, 34.843014, 38.563721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897556, 35.073875, 38.623268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062196, 0.167269, -0.983948,
		-0.592793, 0.799320, 0.098411,
		0.802950, 0.577156, 0.148870,
		35.138443, 35.247021, 38.667931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472107, 35.467670, 38.150120>,  <34.576378, 34.843014, 38.563721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472107, 35.467670, 38.150120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869232, 35.469650, 38.197960>,  <35.107506, 35.470837, 38.226662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869232, 35.469650, 38.197960>,  <34.472107, 35.467670, 38.150120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869232, 35.469650, 38.197960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110430, 0.347636, -0.931104,
		-0.046184, 0.937617, 0.344590,
		0.992810, 0.004949, 0.119596,
		35.167076, 35.471134, 38.233837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743553, 36.147305, 37.886833>,  <34.472107, 35.467670, 38.150120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743553, 36.147305, 37.886833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088135, 35.944763, 37.902378>,  <35.294884, 35.823238, 37.911705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088135, 35.944763, 37.902378>,  <34.743553, 36.147305, 37.886833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088135, 35.944763, 37.902378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293324, 0.433637, -0.852009,
		0.414567, 0.745362, 0.522082,
		0.861450, -0.506354, 0.038861,
		35.346569, 35.792858, 37.914036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261482, 36.592690, 37.630676>,  <34.743553, 36.147305, 37.886833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261482, 36.592690, 37.630676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382912, 36.214722, 37.581730>,  <35.455769, 35.987942, 37.552361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382912, 36.214722, 37.581730>,  <35.261482, 36.592690, 37.630676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382912, 36.214722, 37.581730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277483, 0.210537, -0.937378,
		0.911506, 0.250612, 0.326113,
		0.303577, -0.944917, -0.122365,
		35.473984, 35.931248, 37.545021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019417, 36.584862, 37.440174>,  <35.261482, 36.592690, 37.630676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019417, 36.584862, 37.440174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868805, 36.236286, 37.314438>,  <35.778439, 36.027142, 37.238995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868805, 36.236286, 37.314438>,  <36.019417, 36.584862, 37.440174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868805, 36.236286, 37.314438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369512, 0.169878, -0.913566,
		0.849521, -0.460139, 0.258045,
		-0.376531, -0.871444, -0.314341,
		35.755844, 35.974854, 37.220135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540447, 36.245865, 36.957024>,  <36.019417, 36.584862, 37.440174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540447, 36.245865, 36.957024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183041, 36.086403, 36.874371>,  <35.968597, 35.990726, 36.824780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183041, 36.086403, 36.874371>,  <36.540447, 36.245865, 36.957024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183041, 36.086403, 36.874371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208927, 0.038226, -0.977184,
		0.397458, -0.916304, 0.049134,
		-0.893519, -0.398655, -0.206634,
		35.914986, 35.966808, 36.812382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804501, 35.896721, 36.460533>,  <36.540447, 36.245865, 36.957024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804501, 35.896721, 36.460533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411812, 35.933769, 36.394024>,  <36.176197, 35.955997, 36.354118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411812, 35.933769, 36.394024>,  <36.804501, 35.896721, 36.460533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411812, 35.933769, 36.394024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138173, -0.253982, -0.957288,
		-0.130892, -0.962764, 0.236542,
		-0.981720, 0.092618, -0.166272,
		36.117294, 35.961555, 36.344143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354176, 35.593788, 35.933998>,  <36.804501, 35.896721, 36.460533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354176, 35.593788, 35.933998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676952, 35.401833, 35.796268>,  <37.870617, 35.286659, 35.713631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676952, 35.401833, 35.796268>,  <37.354176, 35.593788, 35.933998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676952, 35.401833, 35.796268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271526, -0.216306, 0.937809,
		-0.524519, -0.850248, -0.044244,
		0.806941, -0.479885, -0.344321,
		37.919033, 35.257866, 35.692970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339981, 34.988224, 36.172859>,  <37.354176, 35.593788, 35.933998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339981, 34.988224, 36.172859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718758, 35.088921, 36.092926>,  <37.946022, 35.149338, 36.044968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718758, 35.088921, 36.092926>,  <37.339981, 34.988224, 36.172859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718758, 35.088921, 36.092926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260162, -0.235237, 0.936472,
		0.188745, -0.938769, -0.288249,
		0.946938, 0.251745, -0.199832,
		38.002838, 35.164444, 36.032978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721752, 34.408134, 36.312847>,  <37.339981, 34.988224, 36.172859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721752, 34.408134, 36.312847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013599, 34.681675, 36.312542>,  <38.188709, 34.845798, 36.312359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013599, 34.681675, 36.312542>,  <37.721752, 34.408134, 36.312847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013599, 34.681675, 36.312542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349416, -0.371847, 0.860022,
		0.587847, -0.627754, -0.510256,
		0.729620, 0.683853, -0.000758,
		38.232487, 34.886829, 36.312313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251202, 34.056110, 36.572742>,  <37.721752, 34.408134, 36.312847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251202, 34.056110, 36.572742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352539, 34.437973, 36.635296>,  <38.413342, 34.667091, 36.672829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352539, 34.437973, 36.635296>,  <38.251202, 34.056110, 36.572742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352539, 34.437973, 36.635296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460348, -0.261151, 0.848458,
		0.850822, -0.142961, -0.505633,
		0.253343, 0.954653, 0.156381,
		38.428543, 34.724369, 36.682209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900070, 34.177563, 36.776653>,  <38.251202, 34.056110, 36.572742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900070, 34.177563, 36.776653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734043, 34.514614, 36.913879>,  <38.634426, 34.716846, 36.996216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734043, 34.514614, 36.913879>,  <38.900070, 34.177563, 36.776653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734043, 34.514614, 36.913879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356746, -0.196139, 0.913379,
		0.836931, 0.501497, -0.219195,
		-0.415065, 0.842633, 0.343062,
		38.609524, 34.767403, 37.016796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388664, 34.267807, 37.299320>,  <38.900070, 34.177563, 36.776653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388664, 34.267807, 37.299320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087700, 34.521572, 37.370197>,  <38.907120, 34.673832, 37.412724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087700, 34.521572, 37.370197>,  <39.388664, 34.267807, 37.299320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087700, 34.521572, 37.370197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073795, -0.186123, 0.979751,
		0.654546, 0.750253, 0.093224,
		-0.752412, 0.634413, 0.177191,
		38.861977, 34.711895, 37.423355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649864, 34.744236, 37.690002>,  <39.388664, 34.267807, 37.299320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649864, 34.744236, 37.690002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260231, 34.777382, 37.774185>,  <39.026451, 34.797268, 37.824696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260231, 34.777382, 37.774185>,  <39.649864, 34.744236, 37.690002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260231, 34.777382, 37.774185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208999, -0.025982, 0.977571,
		0.086475, 0.996222, 0.007990,
		-0.974085, 0.082866, 0.210456,
		38.968006, 34.802242, 37.837322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524986, 35.254436, 38.291088>,  <39.649864, 34.744236, 37.690002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524986, 35.254436, 38.291088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185314, 35.043686, 38.276737>,  <38.981510, 34.917236, 38.268127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185314, 35.043686, 38.276737>,  <39.524986, 35.254436, 38.291088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185314, 35.043686, 38.276737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016378, -0.041623, 0.998999,
		-0.527843, 0.848922, 0.026716,
		-0.849184, -0.526877, -0.035874,
		38.930557, 34.885624, 38.265976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971516, 35.636730, 38.543213>,  <39.524986, 35.254436, 38.291088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971516, 35.636730, 38.543213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874062, 35.250141, 38.575645>,  <38.815590, 35.018188, 38.595104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874062, 35.250141, 38.575645>,  <38.971516, 35.636730, 38.543213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874062, 35.250141, 38.575645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082184, 0.103869, 0.991190,
		-0.966378, 0.234830, -0.104735,
		-0.243640, -0.966471, 0.081077,
		38.800968, 34.960201, 38.599968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578709, 35.694912, 39.173611>,  <38.971516, 35.636730, 38.543213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578709, 35.694912, 39.173611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643456, 35.307240, 39.099323>,  <38.682304, 35.074638, 39.054752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643456, 35.307240, 39.099323>,  <38.578709, 35.694912, 39.173611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643456, 35.307240, 39.099323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187237, -0.214945, 0.958510,
		-0.968887, -0.120374, -0.216258,
		0.161863, -0.969180, -0.185719,
		38.692013, 35.016487, 39.043606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135170, 35.345760, 39.508434>,  <38.578709, 35.694912, 39.173611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135170, 35.345760, 39.508434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406811, 35.052776, 39.489159>,  <38.569798, 34.876987, 39.477592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406811, 35.052776, 39.489159>,  <38.135170, 35.345760, 39.508434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406811, 35.052776, 39.489159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057888, -0.118889, 0.991219,
		-0.731756, -0.670351, -0.123139,
		0.679104, -0.732458, -0.048193,
		38.610542, 34.833038, 39.474701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900120, 34.855225, 39.984299>,  <38.135170, 35.345760, 39.508434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900120, 34.855225, 39.984299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277161, 34.732487, 39.931629>,  <38.503387, 34.658844, 39.900028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277161, 34.732487, 39.931629>,  <37.900120, 34.855225, 39.984299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277161, 34.732487, 39.931629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050049, -0.260054, 0.964296,
		-0.330137, -0.915541, -0.229771,
		0.942606, -0.306850, -0.131676,
		38.559944, 34.640430, 39.892128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944660, 34.179436, 40.158360>,  <37.900120, 34.855225, 39.984299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944660, 34.179436, 40.158360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293198, 34.372459, 40.193893>,  <38.502319, 34.488274, 40.215214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.293198, 34.372459, 40.193893>,  <37.944660, 34.179436, 40.158360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293198, 34.372459, 40.193893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067650, -0.297463, 0.952334,
		0.485983, -0.823803, -0.291839,
		0.871346, 0.482561, 0.088831,
		38.554600, 34.517227, 40.220543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341927, 33.758385, 40.560329>,  <37.944660, 34.179436, 40.158360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341927, 33.758385, 40.560329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561867, 34.091457, 40.586590>,  <38.693832, 34.291302, 40.602348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561867, 34.091457, 40.586590>,  <38.341927, 33.758385, 40.560329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561867, 34.091457, 40.586590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135901, -0.166741, 0.976590,
		0.824131, -0.528059, -0.204844,
		0.549853, 0.832677, 0.065653,
		38.726822, 34.341259, 40.606285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073055, 33.611435, 40.892570>,  <38.341927, 33.758385, 40.560329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073055, 33.611435, 40.892570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950706, 33.986279, 40.959816>,  <38.877296, 34.211185, 41.000164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950706, 33.986279, 40.959816>,  <39.073055, 33.611435, 40.892570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950706, 33.986279, 40.959816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229395, -0.098833, 0.968303,
		0.924024, 0.334741, -0.184739,
		-0.305872, 0.937113, 0.168112,
		38.858944, 34.267414, 41.010250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600243, 33.860714, 41.255886>,  <39.073055, 33.611435, 40.892570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600243, 33.860714, 41.255886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311741, 34.131500, 41.314548>,  <39.138641, 34.293972, 41.349747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311741, 34.131500, 41.314548>,  <39.600243, 33.860714, 41.255886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311741, 34.131500, 41.314548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192969, -0.006964, 0.981180,
		0.665250, 0.735978, -0.125611,
		-0.721252, 0.676970, 0.146654,
		39.095364, 34.334591, 41.358543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828144, 34.381260, 41.810520>,  <39.600243, 33.860714, 41.255886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828144, 34.381260, 41.810520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429165, 34.408772, 41.818115>,  <39.189777, 34.425278, 41.822670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.429165, 34.408772, 41.818115>,  <39.828144, 34.381260, 41.810520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429165, 34.408772, 41.818115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031289, 0.182518, 0.982705,
		0.064125, 0.980794, -0.184205,
		-0.997451, 0.068779, 0.018984,
		39.129929, 34.429405, 41.823811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703388, 34.945175, 42.213970>,  <39.828144, 34.381260, 41.810520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703388, 34.945175, 42.213970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374737, 34.717266, 42.207268>,  <39.177544, 34.580521, 42.203247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374737, 34.717266, 42.207268>,  <39.703388, 34.945175, 42.213970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374737, 34.717266, 42.207268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097898, 0.112090, 0.988864,
		-0.561551, 0.814121, -0.147876,
		-0.821630, -0.569774, -0.016757,
		39.128246, 34.546333, 42.202240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.140091, 35.320103, 42.579880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994579, 34.947964, 42.598274>,  <38.907272, 34.724678, 42.609310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.994579, 34.947964, 42.598274>,  <39.140091, 35.320103, 42.579880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994579, 34.947964, 42.598274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321686, 0.171808, 0.931128,
		-0.874176, 0.323930, -0.361781,
		-0.363777, -0.930350, 0.045987,
		38.885445, 34.668858, 42.612072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512737, 35.340691, 43.005688>,  <39.140091, 35.320103, 42.579880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512737, 35.340691, 43.005688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638847, 34.962288, 43.035789>,  <38.714512, 34.735245, 43.053852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.638847, 34.962288, 43.035789>,  <38.512737, 35.340691, 43.005688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638847, 34.962288, 43.035789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394579, -0.058551, 0.916995,
		-0.863081, -0.318802, -0.391736,
		0.315276, -0.946011, 0.075258,
		38.733429, 34.678486, 43.058369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999733, 34.883598, 43.173538>,  <38.512737, 35.340691, 43.005688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999733, 34.883598, 43.173538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316723, 34.674561, 43.299320>,  <38.506916, 34.549137, 43.374790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316723, 34.674561, 43.299320>,  <37.999733, 34.883598, 43.173538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316723, 34.674561, 43.299320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410623, -0.075935, 0.908638,
		-0.450973, -0.849192, -0.274767,
		0.792472, -0.522596, 0.314453,
		38.554466, 34.517780, 43.393658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685650, 34.383648, 43.614716>,  <37.999733, 34.883598, 43.173538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685650, 34.383648, 43.614716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072842, 34.362385, 43.712845>,  <38.305157, 34.349625, 43.771725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072842, 34.362385, 43.712845>,  <37.685650, 34.383648, 43.614716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072842, 34.362385, 43.712845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250610, -0.260617, 0.932348,
		0.014373, -0.963977, -0.265595,
		0.967981, -0.053161, 0.245328,
		38.363235, 34.346436, 43.786442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757812, 33.759586, 43.999725>,  <37.685650, 34.383648, 43.614716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757812, 33.759586, 43.999725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085629, 33.973442, 44.082207>,  <38.282318, 34.101753, 44.131695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.085629, 33.973442, 44.082207>,  <37.757812, 33.759586, 43.999725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085629, 33.973442, 44.082207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110699, -0.205352, 0.972407,
		0.562227, -0.819753, -0.109110,
		0.819540, 0.534636, 0.206201,
		38.331490, 34.133831, 44.144066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251007, 33.316898, 44.347034>,  <37.757812, 33.759586, 43.999725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251007, 33.316898, 44.347034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345253, 33.682396, 44.479431>,  <38.401798, 33.901695, 44.558868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345253, 33.682396, 44.479431>,  <38.251007, 33.316898, 44.347034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345253, 33.682396, 44.479431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051318, -0.351805, 0.934666,
		0.970492, -0.203231, -0.129780,
		0.235610, 0.913745, 0.330995,
		38.415936, 33.956520, 44.578728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680279, 33.168549, 44.862965>,  <38.251007, 33.316898, 44.347034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680279, 33.168549, 44.862965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608280, 33.554977, 44.937057>,  <38.565083, 33.786835, 44.981514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608280, 33.554977, 44.937057>,  <38.680279, 33.168549, 44.862965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608280, 33.554977, 44.937057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137859, -0.161676, 0.977167,
		0.973959, 0.201424, -0.104080,
		-0.179998, 0.966069, 0.185234,
		38.554279, 33.844799, 44.992626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275291, 33.443127, 45.194401>,  <38.680279, 33.168549, 44.862965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275291, 33.443127, 45.194401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.982788, 33.695862, 45.297195>,  <38.807285, 33.847504, 45.358871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.982788, 33.695862, 45.297195>,  <39.275291, 33.443127, 45.194401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982788, 33.695862, 45.297195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190653, -0.172412, 0.966398,
		0.654912, 0.755684, 0.005617,
		-0.731260, 0.631835, 0.256988,
		38.763409, 33.885414, 45.374290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607082, 33.901855, 45.621586>,  <39.275291, 33.443127, 45.194401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607082, 33.901855, 45.621586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.214180, 33.918415, 45.694763>,  <38.978439, 33.928352, 45.738670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.214180, 33.918415, 45.694763>,  <39.607082, 33.901855, 45.621586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214180, 33.918415, 45.694763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180515, -0.056276, 0.981961,
		0.050951, 0.997556, 0.047803,
		-0.982252, 0.041403, 0.182941,
		38.919506, 33.930836, 45.749645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597595, 34.412914, 46.155087>,  <39.607082, 33.901855, 45.621586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597595, 34.412914, 46.155087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265953, 34.190159, 46.174961>,  <39.066967, 34.056507, 46.186886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265953, 34.190159, 46.174961>,  <39.597595, 34.412914, 46.155087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265953, 34.190159, 46.174961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120254, -0.090841, 0.988578,
		-0.546010, 0.825608, 0.142284,
		-0.829103, -0.556884, 0.049683,
		39.017223, 34.023094, 46.189865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255932, 34.817123, 46.604397>,  <39.597595, 34.412914, 46.155087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255932, 34.817123, 46.604397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121864, 34.440285, 46.608875>,  <39.041424, 34.214184, 46.611561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121864, 34.440285, 46.608875>,  <39.255932, 34.817123, 46.604397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121864, 34.440285, 46.608875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277213, -0.087253, 0.956839,
		-0.900454, 0.323803, 0.290404,
		-0.335166, -0.942093, 0.011195,
		39.021313, 34.157658, 46.612232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701118, 34.775654, 47.069294>,  <39.255932, 34.817123, 46.604397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701118, 34.775654, 47.069294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851326, 34.405041, 47.060177>,  <38.941448, 34.182671, 47.054707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.851326, 34.405041, 47.060177>,  <38.701118, 34.775654, 47.069294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851326, 34.405041, 47.060177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306301, 0.100855, 0.946577,
		-0.874739, -0.362436, 0.321671,
		0.375515, -0.926536, -0.022793,
		38.963982, 34.127079, 47.053341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495762, 34.519325, 47.694092>,  <38.701118, 34.775654, 47.069294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495762, 34.519325, 47.694092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.757401, 34.239243, 47.579643>,  <38.914383, 34.071194, 47.510975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.757401, 34.239243, 47.579643>,  <38.495762, 34.519325, 47.694092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757401, 34.239243, 47.579643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280341, -0.126913, 0.951474,
		-0.702539, -0.702571, 0.113283,
		0.654100, -0.700206, -0.286121,
		38.953632, 34.029182, 47.493809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283588, 33.960670, 48.030464>,  <38.495762, 34.519325, 47.694092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283588, 33.960670, 48.030464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670029, 33.906620, 47.942478>,  <38.901894, 33.874191, 47.889687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670029, 33.906620, 47.942478>,  <38.283588, 33.960670, 48.030464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670029, 33.906620, 47.942478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173805, -0.289581, 0.941241,
		-0.190884, -0.947568, -0.256279,
		0.966103, -0.135125, -0.219969,
		38.959858, 33.866081, 47.876488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477341, 33.374428, 48.333050>,  <38.283588, 33.960670, 48.030464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477341, 33.374428, 48.333050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840801, 33.530361, 48.273197>,  <39.058876, 33.623920, 48.237286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840801, 33.530361, 48.273197>,  <38.477341, 33.374428, 48.333050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840801, 33.530361, 48.273197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291915, -0.336821, 0.895174,
		0.298568, -0.857078, -0.419850,
		0.908649, 0.389831, -0.149630,
		39.113396, 33.647312, 48.228310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949272, 32.842167, 48.494614>,  <38.477341, 33.374428, 48.333050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949272, 32.842167, 48.494614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155022, 33.184292, 48.519466>,  <39.278473, 33.389568, 48.534378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155022, 33.184292, 48.519466>,  <38.949272, 32.842167, 48.494614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155022, 33.184292, 48.519466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363943, -0.283321, 0.887285,
		0.776509, -0.433784, -0.457018,
		0.514373, 0.855313, 0.062128,
		39.309334, 33.440887, 48.538105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593838, 32.613483, 48.629238>,  <38.949272, 32.842167, 48.494614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593838, 32.613483, 48.629238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574951, 32.986027, 48.773651>,  <39.563618, 33.209553, 48.860298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574951, 32.986027, 48.773651>,  <39.593838, 32.613483, 48.629238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574951, 32.986027, 48.773651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393389, -0.314889, 0.863765,
		0.918159, 0.182814, -0.351516,
		-0.047220, 0.931356, 0.361035,
		39.560783, 33.265434, 48.881962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115990, 32.701946, 49.108505>,  <39.593838, 32.613483, 48.629238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115990, 32.701946, 49.108505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.897545, 33.029819, 49.177639>,  <39.766479, 33.226543, 49.219120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.897545, 33.029819, 49.177639>,  <40.115990, 32.701946, 49.108505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897545, 33.029819, 49.177639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145426, -0.110424, 0.983188,
		0.824992, 0.562067, -0.058900,
		-0.546114, 0.819687, 0.172838,
		39.733711, 33.275726, 49.229492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441586, 33.038219, 49.629745>,  <40.115990, 32.701946, 49.108505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441586, 33.038219, 49.629745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073082, 33.191605, 49.655754>,  <39.851978, 33.283638, 49.671360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073082, 33.191605, 49.655754>,  <40.441586, 33.038219, 49.629745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073082, 33.191605, 49.655754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074251, 0.009308, 0.997196,
		0.381787, 0.923508, -0.037048,
		-0.921263, 0.383467, 0.065018,
		39.796703, 33.306644, 49.675259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533455, 33.583542, 50.024620>,  <40.441586, 33.038219, 49.629745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533455, 33.583542, 50.024620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.152683, 33.464291, 50.052769>,  <39.924221, 33.392738, 50.069656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.152683, 33.464291, 50.052769>,  <40.533455, 33.583542, 50.024620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152683, 33.464291, 50.052769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079621, -0.018981, 0.996644,
		-0.295791, 0.954337, 0.041806,
		-0.951929, -0.298127, 0.070371,
		39.867104, 33.374851, 50.073879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444336, 33.650944, 50.720943>,  <40.533455, 33.583542, 50.024620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444336, 33.650944, 50.720943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123238, 33.428135, 50.635773>,  <39.930580, 33.294449, 50.584671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.123238, 33.428135, 50.635773>,  <40.444336, 33.650944, 50.720943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123238, 33.428135, 50.635773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024742, -0.387863, 0.921385,
		-0.595814, 0.734366, 0.325135,
		-0.802741, -0.557019, -0.212924,
		39.882416, 33.261028, 50.571896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904396, 33.681301, 51.390049>,  <40.444336, 33.650944, 50.720943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904396, 33.681301, 51.390049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.809349, 33.362183, 51.168396>,  <39.752319, 33.170712, 51.035404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.809349, 33.362183, 51.168396>,  <39.904396, 33.681301, 51.390049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809349, 33.362183, 51.168396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020563, -0.574475, 0.818264,
		-0.971141, 0.183042, 0.152912,
		-0.237621, -0.797794, -0.554131,
		39.738064, 33.122845, 51.002155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295879, 33.509937, 51.590965>,  <39.904396, 33.681301, 51.390049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295879, 33.509937, 51.590965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521770, 33.205078, 51.464340>,  <39.657307, 33.022163, 51.388367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521770, 33.205078, 51.464340>,  <39.295879, 33.509937, 51.590965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521770, 33.205078, 51.464340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024318, -0.368046, 0.929490,
		-0.824918, -0.532608, -0.189312,
		0.564729, -0.762149, -0.316560,
		39.691189, 32.976433, 51.369373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526184, 33.431652, 51.827053>,  <39.295879, 33.509937, 51.590965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526184, 33.431652, 51.827053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275749, 33.155880, 51.972763>,  <38.125488, 32.990417, 52.060188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275749, 33.155880, 51.972763>,  <38.526184, 33.431652, 51.827053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275749, 33.155880, 51.972763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247264, -0.267520, -0.931286,
		0.739512, -0.673136, -0.002982,
		-0.626085, -0.689435, 0.364277,
		38.087925, 32.949051, 52.082047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608036, 33.039238, 51.250519>,  <38.526184, 33.431652, 51.827053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608036, 33.039238, 51.250519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264263, 32.958862, 51.438564>,  <38.057999, 32.910637, 51.551392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264263, 32.958862, 51.438564>,  <38.608036, 33.039238, 51.250519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264263, 32.958862, 51.438564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430999, -0.209841, -0.877614,
		0.274998, -0.956864, 0.093738,
		-0.859428, -0.200942, 0.470113,
		38.006435, 32.898579, 51.579597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425030, 32.413261, 51.044567>,  <38.608036, 33.039238, 51.250519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425030, 32.413261, 51.044567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076904, 32.543297, 51.192554>,  <37.868031, 32.621319, 51.281345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.076904, 32.543297, 51.192554>,  <38.425030, 32.413261, 51.044567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076904, 32.543297, 51.192554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443116, -0.189012, -0.876312,
		-0.214959, -0.926599, 0.308555,
		-0.870311, 0.325097, 0.369961,
		37.815811, 32.640823, 51.303543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824383, 31.973112, 50.743599>,  <38.425030, 32.413261, 51.044567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824383, 31.973112, 50.743599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679276, 32.325542, 50.864994>,  <37.592209, 32.537003, 50.937832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.679276, 32.325542, 50.864994>,  <37.824383, 31.973112, 50.743599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679276, 32.325542, 50.864994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482098, 0.101257, -0.870246,
		-0.797483, -0.462009, 0.388032,
		-0.362771, 0.881076, 0.303485,
		37.570446, 32.589867, 50.956039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135658, 31.787394, 50.711376>,  <37.824383, 31.973112, 50.743599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135658, 31.787394, 50.711376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192829, 32.182926, 50.694473>,  <37.227131, 32.420246, 50.684334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192829, 32.182926, 50.694473>,  <37.135658, 31.787394, 50.711376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192829, 32.182926, 50.694473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550831, 0.044001, -0.833456,
		-0.822288, 0.142396, 0.550968,
		0.142924, 0.988831, -0.042254,
		37.235706, 32.479576, 50.681797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508942, 32.053772, 50.491001>,  <37.135658, 31.787394, 50.711376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508942, 32.053772, 50.491001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766460, 32.348980, 50.410160>,  <36.920971, 32.526104, 50.361656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766460, 32.348980, 50.410160>,  <36.508942, 32.053772, 50.491001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766460, 32.348980, 50.410160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537476, 0.248161, -0.805938,
		-0.544646, 0.627487, 0.556435,
		0.643801, 0.738022, -0.202100,
		36.959602, 32.570385, 50.349529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121284, 32.437302, 50.054836>,  <36.508942, 32.053772, 50.491001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121284, 32.437302, 50.054836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483952, 32.597576, 50.002056>,  <36.701550, 32.693741, 49.970390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.483952, 32.597576, 50.002056>,  <36.121284, 32.437302, 50.054836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483952, 32.597576, 50.002056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280879, 0.340025, -0.897491,
		-0.314746, 0.850785, 0.420832,
		0.906666, 0.400684, -0.131946,
		36.755951, 32.717781, 49.962471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967571, 33.069790, 49.792873>,  <36.121284, 32.437302, 50.054836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967571, 33.069790, 49.792873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346775, 32.969582, 49.714367>,  <36.574295, 32.909454, 49.667263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346775, 32.969582, 49.714367>,  <35.967571, 33.069790, 49.792873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346775, 32.969582, 49.714367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104139, 0.338554, -0.935167,
		0.300729, 0.906983, 0.294862,
		0.948007, -0.250525, -0.196265,
		36.631176, 32.894424, 49.655487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327435, 33.678993, 49.522892>,  <35.967571, 33.069790, 49.792873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327435, 33.678993, 49.522892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507324, 33.347176, 49.390469>,  <36.615257, 33.148083, 49.311012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507324, 33.347176, 49.390469>,  <36.327435, 33.678993, 49.522892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507324, 33.347176, 49.390469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042691, 0.350273, -0.935675,
		0.892148, 0.434927, 0.122111,
		0.449722, -0.829547, -0.331063,
		36.642242, 33.098312, 49.291149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865398, 33.956112, 49.147053>,  <36.327435, 33.678993, 49.522892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865398, 33.956112, 49.147053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819885, 33.577156, 49.027378>,  <36.792576, 33.349785, 48.955574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819885, 33.577156, 49.027378>,  <36.865398, 33.956112, 49.147053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819885, 33.577156, 49.027378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084202, 0.309258, -0.947243,
		0.989931, -0.082589, -0.114961,
		-0.113785, -0.947385, -0.299190,
		36.785751, 33.292942, 48.937622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283886, 33.836075, 48.623711>,  <36.865398, 33.956112, 49.147053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283886, 33.836075, 48.623711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007000, 33.549892, 48.585831>,  <36.840870, 33.378185, 48.563103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007000, 33.549892, 48.585831>,  <37.283886, 33.836075, 48.623711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007000, 33.549892, 48.585831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152395, 0.273162, -0.949820,
		0.705420, -0.643047, -0.298118,
		-0.692213, -0.715453, -0.094697,
		36.799335, 33.335255, 48.557423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416080, 33.575954, 47.922577>,  <37.283886, 33.836075, 48.623711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416080, 33.575954, 47.922577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054836, 33.412952, 47.976730>,  <36.838089, 33.315151, 48.009224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054836, 33.412952, 47.976730>,  <37.416080, 33.575954, 47.922577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054836, 33.412952, 47.976730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266999, 0.285972, -0.920289,
		0.336308, -0.867270, -0.367068,
		-0.903110, -0.407508, 0.135386,
		36.783901, 33.290703, 48.017345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211121, 32.920135, 47.400272>,  <37.416080, 33.575954, 47.922577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211121, 32.920135, 47.400272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890179, 33.122746, 47.526543>,  <36.697613, 33.244312, 47.602306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890179, 33.122746, 47.526543>,  <37.211121, 32.920135, 47.400272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890179, 33.122746, 47.526543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235813, 0.216835, -0.947299,
		-0.548284, -0.834512, -0.054534,
		-0.802357, 0.506529, 0.315676,
		36.649471, 33.274704, 47.621246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685226, 32.677135, 46.967384>,  <37.211121, 32.920135, 47.400272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685226, 32.677135, 46.967384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512867, 33.006218, 47.115692>,  <36.409451, 33.203667, 47.204678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512867, 33.006218, 47.115692>,  <36.685226, 32.677135, 46.967384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512867, 33.006218, 47.115692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295760, 0.259421, -0.919362,
		-0.852554, -0.505814, 0.131540,
		-0.430902, 0.822711, 0.370770,
		36.383595, 33.253033, 47.226925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066319, 32.798935, 46.611115>,  <36.685226, 32.677135, 46.967384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066319, 32.798935, 46.611115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125584, 33.162556, 46.766891>,  <36.161144, 33.380730, 46.860359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125584, 33.162556, 46.766891>,  <36.066319, 32.798935, 46.611115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125584, 33.162556, 46.766891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326109, 0.416674, -0.848549,
		-0.933648, -0.001273, 0.358189,
		0.148168, 0.909055, 0.389442,
		36.170033, 33.435272, 46.883724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686104, 33.158543, 46.211353>,  <36.066319, 32.798935, 46.611115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686104, 33.158543, 46.211353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.897129, 33.453465, 46.380142>,  <36.023746, 33.630417, 46.481415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.897129, 33.453465, 46.380142>,  <35.686104, 33.158543, 46.211353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897129, 33.453465, 46.380142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121370, 0.557039, -0.821570,
		-0.840798, 0.382219, 0.383362,
		0.527567, 0.737303, 0.421968,
		36.055401, 33.674656, 46.506733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375896, 33.690353, 46.165123>,  <35.686104, 33.158543, 46.211353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375896, 33.690353, 46.165123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739803, 33.855309, 46.184109>,  <35.958149, 33.954281, 46.195499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739803, 33.855309, 46.184109>,  <35.375896, 33.690353, 46.165123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739803, 33.855309, 46.184109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241944, 0.619683, -0.746630,
		-0.337317, 0.667777, 0.663544,
		0.909770, 0.412391, 0.047465,
		36.012733, 33.979027, 46.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228371, 34.457157, 46.109924>,  <35.375896, 33.690353, 46.165123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228371, 34.457157, 46.109924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610081, 34.386551, 46.013432>,  <35.839108, 34.344185, 45.955536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.610081, 34.386551, 46.013432>,  <35.228371, 34.457157, 46.109924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610081, 34.386551, 46.013432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096935, 0.580665, -0.808351,
		0.282765, 0.794776, 0.537005,
		0.954279, -0.176518, -0.241234,
		35.896366, 34.333595, 45.941063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424171, 35.101891, 45.765903>,  <35.228371, 34.457157, 46.109924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424171, 35.101891, 45.765903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706409, 34.835861, 45.668072>,  <35.875751, 34.676243, 45.609375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.706409, 34.835861, 45.668072>,  <35.424171, 35.101891, 45.765903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706409, 34.835861, 45.668072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091073, 0.427395, -0.899466,
		0.702737, 0.612386, 0.362139,
		0.705596, -0.665069, -0.244575,
		35.918087, 34.636341, 45.594700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955467, 35.454170, 45.394444>,  <35.424171, 35.101891, 45.765903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955467, 35.454170, 45.394444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989876, 35.071404, 45.283520>,  <36.010521, 34.841743, 45.216965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989876, 35.071404, 45.283520>,  <35.955467, 35.454170, 45.394444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989876, 35.071404, 45.283520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165462, 0.288199, -0.943167,
		0.982457, 0.035250, 0.183126,
		0.086023, -0.956921, -0.277311,
		36.015682, 34.784328, 45.200325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526363, 35.417583, 44.926254>,  <35.955467, 35.454170, 45.394444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526363, 35.417583, 44.926254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287487, 35.106003, 44.849731>,  <36.144161, 34.919056, 44.803818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287487, 35.106003, 44.849731>,  <36.526363, 35.417583, 44.926254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287487, 35.106003, 44.849731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101208, 0.163427, -0.981350,
		0.795686, -0.605418, -0.018762,
		-0.597193, -0.778948, -0.191310,
		36.108330, 34.872318, 44.792339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.734718, 41.390823, 33.510201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423786, 41.275997, 33.286289>,  <41.237228, 41.207100, 33.151943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423786, 41.275997, 33.286289>,  <41.734718, 41.390823, 33.510201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423786, 41.275997, 33.286289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474683, -0.851582, -0.222448,
		-0.412843, -0.438634, 0.798223,
		-0.777326, -0.287067, -0.559782,
		41.190590, 41.189877, 33.118355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491676, 40.690941, 33.834320>,  <41.734718, 41.390823, 33.510201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491676, 40.690941, 33.834320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455124, 40.738029, 33.438786>,  <41.433193, 40.766281, 33.201466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455124, 40.738029, 33.438786>,  <41.491676, 40.690941, 33.834320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455124, 40.738029, 33.438786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502512, -0.851835, -0.147847,
		-0.859727, -0.510412, 0.018686,
		-0.091380, 0.117718, -0.988834,
		41.427711, 40.773346, 33.142136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169415, 40.118977, 33.578014>,  <41.491676, 40.690941, 33.834320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169415, 40.118977, 33.578014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.364532, 40.250401, 33.254509>,  <41.481606, 40.329254, 33.060406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.364532, 40.250401, 33.254509>,  <41.169415, 40.118977, 33.578014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364532, 40.250401, 33.254509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389432, -0.911072, -0.135241,
		-0.781278, -0.248988, -0.572372,
		0.487799, 0.328561, -0.808765,
		41.510872, 40.348969, 33.011879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035130, 39.584534, 33.077068>,  <41.169415, 40.118977, 33.578014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035130, 39.584534, 33.077068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350674, 39.787518, 32.938400>,  <41.540001, 39.909309, 32.855198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350674, 39.787518, 32.938400>,  <41.035130, 39.584534, 33.077068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350674, 39.787518, 32.938400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422392, -0.857429, -0.293940,
		-0.446408, 0.085448, -0.890741,
		0.788863, 0.507459, -0.346670,
		41.587334, 39.939754, 32.834400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119183, 39.234909, 32.562004>,  <41.035130, 39.584534, 33.077068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119183, 39.234909, 32.562004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455219, 39.451149, 32.579857>,  <41.656841, 39.580894, 32.590569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.455219, 39.451149, 32.579857>,  <41.119183, 39.234909, 32.562004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455219, 39.451149, 32.579857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538013, -0.819912, -0.195668,
		-0.069181, 0.188394, -0.979654,
		0.840092, 0.540604, 0.044636,
		41.707249, 39.613331, 32.593246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452065, 39.209408, 31.957659>,  <41.119183, 39.234909, 32.562004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452065, 39.209408, 31.957659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.743553, 39.268238, 32.225189>,  <41.918446, 39.303535, 32.385708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.743553, 39.268238, 32.225189>,  <41.452065, 39.209408, 31.957659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743553, 39.268238, 32.225189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411562, -0.874666, -0.256079,
		0.547335, 0.461875, -0.697923,
		0.728726, 0.147078, 0.668825,
		41.962170, 39.312363, 32.425838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002163, 38.752457, 31.647270>,  <41.452065, 39.209408, 31.957659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002163, 38.752457, 31.647270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059273, 38.842102, 32.032890>,  <42.093536, 38.895889, 32.264263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059273, 38.842102, 32.032890>,  <42.002163, 38.752457, 31.647270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059273, 38.842102, 32.032890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368249, -0.916128, 0.158440,
		0.918700, 0.332389, -0.213327,
		0.142771, 0.224116, 0.964048,
		42.102104, 38.909336, 32.322105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650009, 38.528500, 31.791321>,  <42.002163, 38.752457, 31.647270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650009, 38.528500, 31.791321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.441231, 38.517662, 32.132339>,  <42.315964, 38.511162, 32.336952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.441231, 38.517662, 32.132339>,  <42.650009, 38.528500, 31.791321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441231, 38.517662, 32.132339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308852, -0.937676, 0.159290,
		0.795098, 0.346452, 0.497785,
		-0.521948, -0.027091, 0.852547,
		42.284645, 38.509533, 32.388103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176846, 38.258007, 32.355350>,  <42.650009, 38.528500, 31.791321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176846, 38.258007, 32.355350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798428, 38.173004, 32.453205>,  <42.571377, 38.122002, 32.511917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798428, 38.173004, 32.453205>,  <43.176846, 38.258007, 32.355350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798428, 38.173004, 32.453205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291350, -0.888276, 0.355081,
		0.141844, 0.407195, 0.902260,
		-0.946042, -0.212507, 0.244633,
		42.514614, 38.109253, 32.526596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213947, 37.986111, 33.050095>,  <43.176846, 38.258007, 32.355350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213947, 37.986111, 33.050095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841087, 37.885708, 32.945713>,  <42.617371, 37.825466, 32.883083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.841087, 37.885708, 32.945713>,  <43.213947, 37.986111, 33.050095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841087, 37.885708, 32.945713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123467, -0.897864, 0.422606,
		-0.340380, 0.361711, 0.867932,
		-0.932147, -0.251008, -0.260956,
		42.561443, 37.810406, 32.867428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781029, 37.675240, 33.628029>,  <43.213947, 37.986111, 33.050095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781029, 37.675240, 33.628029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615021, 37.547531, 33.287247>,  <42.515415, 37.470905, 33.082779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615021, 37.547531, 33.287247>,  <42.781029, 37.675240, 33.628029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615021, 37.547531, 33.287247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294459, -0.933143, 0.206250,
		-0.860846, -0.165269, 0.481281,
		-0.415017, -0.319267, -0.851956,
		42.490517, 37.451752, 33.031658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478394, 37.149101, 33.916794>,  <42.781029, 37.675240, 33.628029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478394, 37.149101, 33.916794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442402, 37.087303, 33.523239>,  <42.420807, 37.050224, 33.287106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442402, 37.087303, 33.523239>,  <42.478394, 37.149101, 33.916794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442402, 37.087303, 33.523239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169537, -0.975853, 0.137727,
		-0.981408, -0.154412, 0.114001,
		-0.089981, -0.154493, -0.983888,
		42.415409, 37.040955, 33.228073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904907, 36.634117, 33.869022>,  <42.478394, 37.149101, 33.916794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904907, 36.634117, 33.869022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.107079, 36.614243, 33.524448>,  <42.228382, 36.602318, 33.317703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.107079, 36.614243, 33.524448>,  <41.904907, 36.634117, 33.869022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107079, 36.614243, 33.524448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074465, -0.992105, 0.100914,
		-0.859651, -0.115151, -0.497734,
		0.505425, -0.049687, -0.861439,
		42.258705, 36.599335, 33.266018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676212, 35.989204, 33.654190>,  <41.904907, 36.634117, 33.869022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676212, 35.989204, 33.654190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.009064, 36.092438, 33.457844>,  <42.208775, 36.154377, 33.340034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.009064, 36.092438, 33.457844>,  <41.676212, 35.989204, 33.654190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009064, 36.092438, 33.457844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276171, -0.960404, -0.036787,
		-0.480923, -0.104951, -0.870459,
		0.832132, 0.258087, -0.490865,
		42.258701, 36.169865, 33.310585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696594, 35.424744, 33.108704>,  <41.676212, 35.989204, 33.654190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696594, 35.424744, 33.108704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046776, 35.616573, 33.084721>,  <42.256886, 35.731670, 33.070332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046776, 35.616573, 33.084721>,  <41.696594, 35.424744, 33.108704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046776, 35.616573, 33.084721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439086, -0.841052, -0.315968,
		-0.201954, 0.250290, -0.946874,
		0.875453, 0.479570, -0.059955,
		42.309410, 35.760445, 33.066734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992496, 35.222179, 32.478851>,  <41.696594, 35.424744, 33.108704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992496, 35.222179, 32.478851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.293232, 35.340096, 32.714764>,  <42.473675, 35.410847, 32.856312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.293232, 35.340096, 32.714764>,  <41.992496, 35.222179, 32.478851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293232, 35.340096, 32.714764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499565, -0.838464, -0.217746,
		0.430318, 0.458342, -0.777656,
		0.751838, 0.294790, 0.589778,
		42.518784, 35.428532, 32.891697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575695, 35.083981, 32.056442>,  <41.992496, 35.222179, 32.478851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575695, 35.083981, 32.056442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648335, 35.102814, 32.449341>,  <42.691917, 35.114113, 32.685081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.648335, 35.102814, 32.449341>,  <42.575695, 35.083981, 32.056442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648335, 35.102814, 32.449341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429280, -0.902450, -0.036103,
		0.884727, 0.428214, -0.184095,
		0.181596, 0.047087, 0.982245,
		42.702812, 35.116940, 32.744015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338345, 34.788620, 32.157719>,  <42.575695, 35.083981, 32.056442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338345, 34.788620, 32.157719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.123604, 34.731060, 32.490246>,  <42.994759, 34.696526, 32.689762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.123604, 34.731060, 32.490246>,  <43.338345, 34.788620, 32.157719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123604, 34.731060, 32.490246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241230, -0.970391, -0.012193,
		0.808456, 0.193992, 0.555667,
		-0.536849, -0.143901, 0.831315,
		42.962547, 34.687889, 32.739639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761944, 34.382160, 32.462803>,  <43.338345, 34.788620, 32.157719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761944, 34.382160, 32.462803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423714, 34.334496, 32.670956>,  <43.220776, 34.305897, 32.795849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423714, 34.334496, 32.670956>,  <43.761944, 34.382160, 32.462803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423714, 34.334496, 32.670956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228552, -0.961725, 0.151156,
		0.482453, 0.246749, 0.840449,
		-0.845579, -0.119161, 0.520382,
		43.170040, 34.298748, 32.827072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954826, 33.826626, 33.024067>,  <43.761944, 34.382160, 32.462803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954826, 33.826626, 33.024067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555218, 33.833157, 33.007607>,  <43.315453, 33.837074, 32.997730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.555218, 33.833157, 33.007607>,  <43.954826, 33.826626, 33.024067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555218, 33.833157, 33.007607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019741, -0.996265, 0.084059,
		-0.039628, 0.084789, 0.995611,
		-0.999020, 0.016323, -0.041153,
		43.255512, 33.838055, 32.995262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837818, 33.376945, 33.553658>,  <43.954826, 33.826626, 33.024067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837818, 33.376945, 33.553658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510101, 33.405983, 33.326153>,  <43.313473, 33.423405, 33.189648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510101, 33.405983, 33.326153>,  <43.837818, 33.376945, 33.553658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510101, 33.405983, 33.326153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112666, -0.992996, 0.035556,
		-0.562200, 0.093211, 0.821731,
		-0.819291, 0.072592, -0.568765,
		43.264313, 33.427761, 33.155525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532917, 33.454952, 33.478855>,  <43.837818, 33.376945, 33.553658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532917, 33.454952, 33.478855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.841045, 33.663277, 33.626022>,  <45.025921, 33.788273, 33.714321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.841045, 33.663277, 33.626022>,  <44.532917, 33.454952, 33.478855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841045, 33.663277, 33.626022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615217, 0.455316, 0.643580,
		0.167666, -0.722111, 0.671151,
		0.770322, 0.520810, 0.367914,
		45.072144, 33.819519, 33.736397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499565, 33.453289, 34.225628>,  <44.532917, 33.454952, 33.478855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499565, 33.453289, 34.225628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740822, 33.767849, 34.172283>,  <44.885578, 33.956585, 34.140278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740822, 33.767849, 34.172283>,  <44.499565, 33.453289, 34.225628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740822, 33.767849, 34.172283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453097, 0.475398, 0.754121,
		0.656445, -0.394418, 0.643051,
		0.603144, 0.786404, -0.133363,
		44.921764, 34.003769, 34.132275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759342, 33.650898, 34.918922>,  <44.499565, 33.453289, 34.225628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759342, 33.650898, 34.918922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798302, 33.969997, 34.680893>,  <44.821678, 34.161457, 34.538074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798302, 33.969997, 34.680893>,  <44.759342, 33.650898, 34.918922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798302, 33.969997, 34.680893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546811, 0.542479, 0.637741,
		0.831571, 0.263278, 0.489054,
		0.097398, 0.797747, -0.595074,
		44.827522, 34.209320, 34.502369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486088, 34.183784, 35.330875>,  <44.759342, 33.650898, 34.918922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486088, 34.183784, 35.330875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549171, 34.396290, 34.997917>,  <44.587021, 34.523792, 34.798141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549171, 34.396290, 34.997917>,  <44.486088, 34.183784, 35.330875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549171, 34.396290, 34.997917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496533, 0.771295, 0.398194,
		0.853571, 0.350514, 0.385431,
		0.157709, 0.531266, -0.832397,
		44.596485, 34.555668, 34.748199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860985, 34.879944, 35.490570>,  <44.486088, 34.183784, 35.330875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860985, 34.879944, 35.490570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624062, 34.897930, 35.168789>,  <44.481907, 34.908722, 34.975719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624062, 34.897930, 35.168789>,  <44.860985, 34.879944, 35.490570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624062, 34.897930, 35.168789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632033, 0.593306, 0.498520,
		0.499701, 0.803721, -0.323005,
		-0.592312, 0.044961, -0.804453,
		44.446369, 34.911419, 34.927452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.651665, 35.615757, 35.363922>,  <44.860985, 34.879944, 35.490570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.651665, 35.615757, 35.363922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383007, 35.410820, 35.149857>,  <44.221813, 35.287857, 35.021420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.383007, 35.410820, 35.149857>,  <44.651665, 35.615757, 35.363922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383007, 35.410820, 35.149857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727654, 0.592024, 0.346450,
		0.139327, 0.622104, -0.770438,
		-0.671646, -0.512342, -0.535161,
		44.181515, 35.257118, 34.989307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313293, 36.075554, 34.880745>,  <44.651665, 35.615757, 35.363922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313293, 36.075554, 34.880745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.064606, 35.773197, 34.962799>,  <43.915394, 35.591782, 35.012032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.064606, 35.773197, 34.962799>,  <44.313293, 36.075554, 34.880745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064606, 35.773197, 34.962799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680471, 0.650986, 0.336418,
		-0.387838, 0.069569, -0.919098,
		-0.621724, -0.755895, 0.205138,
		43.878090, 35.546429, 35.024342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711281, 36.278751, 34.583096>,  <44.313293, 36.075554, 34.880745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711281, 36.278751, 34.583096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583023, 35.987549, 34.825478>,  <43.506069, 35.812828, 34.970909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583023, 35.987549, 34.825478>,  <43.711281, 36.278751, 34.583096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583023, 35.987549, 34.825478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755072, 0.582709, 0.300528,
		-0.571886, -0.361180, -0.736543,
		-0.320645, -0.728011, 0.605959,
		43.486828, 35.769146, 35.007267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959026, 36.096611, 34.417004>,  <43.711281, 36.278751, 34.583096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959026, 36.096611, 34.417004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045353, 35.990883, 34.792995>,  <43.097149, 35.927444, 35.018589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.045353, 35.990883, 34.792995>,  <42.959026, 36.096611, 34.417004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045353, 35.990883, 34.792995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697755, 0.631672, 0.337829,
		-0.683054, -0.728782, -0.048111,
		0.215814, -0.264325, 0.939977,
		43.110096, 35.911587, 35.074989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349335, 36.047672, 34.748390>,  <42.959026, 36.096611, 34.417004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349335, 36.047672, 34.748390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603199, 36.080837, 35.055721>,  <42.755520, 36.100735, 35.240120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603199, 36.080837, 35.055721>,  <42.349335, 36.047672, 34.748390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603199, 36.080837, 35.055721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561598, 0.732456, 0.384857,
		-0.530857, -0.675747, 0.511427,
		0.634664, 0.082913, 0.768328,
		42.793598, 36.105709, 35.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942661, 36.078804, 35.285496>,  <42.349335, 36.047672, 34.748390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942661, 36.078804, 35.285496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281246, 36.203217, 35.458355>,  <42.484398, 36.277863, 35.562073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281246, 36.203217, 35.458355>,  <41.942661, 36.078804, 35.285496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281246, 36.203217, 35.458355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521837, 0.645817, 0.557321,
		-0.105747, -0.697266, 0.708970,
		0.846465, 0.311031, 0.432152,
		42.535187, 36.296528, 35.588001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862019, 36.112286, 36.043995>,  <41.942661, 36.078804, 35.285496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862019, 36.112286, 36.043995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.176613, 36.348759, 35.972504>,  <42.365368, 36.490643, 35.929611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.176613, 36.348759, 35.972504>,  <41.862019, 36.112286, 36.043995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176613, 36.348759, 35.972504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366815, 0.679941, 0.634922,
		0.496878, -0.433799, 0.751619,
		0.786485, 0.591184, -0.178724,
		42.412560, 36.526115, 35.918888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222355, 36.302822, 36.730671>,  <41.862019, 36.112286, 36.043995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222355, 36.302822, 36.730671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292179, 36.576176, 36.447117>,  <42.334072, 36.740189, 36.276985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.292179, 36.576176, 36.447117>,  <42.222355, 36.302822, 36.730671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292179, 36.576176, 36.447117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312586, 0.721158, 0.618240,
		0.933712, 0.113667, 0.339502,
		0.174562, 0.683382, -0.708885,
		42.344547, 36.781189, 36.234451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378006, 36.855408, 37.163242>,  <42.222355, 36.302822, 36.730671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378006, 36.855408, 37.163242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290634, 37.033253, 36.815769>,  <42.238209, 37.139961, 36.607285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.290634, 37.033253, 36.815769>,  <42.378006, 36.855408, 37.163242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290634, 37.033253, 36.815769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301387, 0.815922, 0.493393,
		0.928145, 0.369583, -0.044224,
		-0.218433, 0.444612, -0.868681,
		42.225105, 37.166637, 36.555164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595966, 37.561642, 37.324467>,  <42.378006, 36.855408, 37.163242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595966, 37.561642, 37.324467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357559, 37.613091, 37.007427>,  <42.214516, 37.643959, 36.817204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357559, 37.613091, 37.007427>,  <42.595966, 37.561642, 37.324467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357559, 37.613091, 37.007427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466995, 0.747456, 0.472467,
		0.653203, 0.651741, -0.385433,
		-0.596021, 0.128622, -0.792601,
		42.178753, 37.651676, 36.769646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567787, 38.317226, 37.115364>,  <42.595966, 37.561642, 37.324467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567787, 38.317226, 37.115364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240768, 38.141830, 36.966049>,  <42.044556, 38.036594, 36.876461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240768, 38.141830, 36.966049>,  <42.567787, 38.317226, 37.115364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240768, 38.141830, 36.966049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573895, 0.673932, 0.465253,
		0.047560, 0.594593, -0.802619,
		-0.817547, -0.438491, -0.373286,
		41.995502, 38.010284, 36.854065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170586, 38.854225, 36.754955>,  <42.567787, 38.317226, 37.115364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170586, 38.854225, 36.754955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899464, 38.566666, 36.816608>,  <41.736790, 38.394131, 36.853600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899464, 38.566666, 36.816608>,  <42.170586, 38.854225, 36.754955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899464, 38.566666, 36.816608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704954, 0.694995, 0.141503,
		-0.208849, -0.012746, -0.977865,
		-0.677807, -0.718902, 0.154134,
		41.696121, 38.350994, 36.862850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676521, 39.025814, 36.333672>,  <42.170586, 38.854225, 36.754955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676521, 39.025814, 36.333672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491425, 38.795250, 36.603077>,  <41.380367, 38.656914, 36.764721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.491425, 38.795250, 36.603077>,  <41.676521, 39.025814, 36.333672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491425, 38.795250, 36.603077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763306, 0.645433, 0.027944,
		-0.450817, -0.501169, -0.738643,
		-0.462740, -0.576408, 0.673517,
		41.352604, 38.622326, 36.805134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010307, 38.843212, 36.071514>,  <41.676521, 39.025814, 36.333672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010307, 38.843212, 36.071514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997002, 38.786144, 36.467197>,  <40.989017, 38.751904, 36.704609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997002, 38.786144, 36.467197>,  <41.010307, 38.843212, 36.071514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997002, 38.786144, 36.467197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765750, 0.639691, 0.066506,
		-0.642278, -0.755276, -0.130526,
		-0.033267, -0.142666, 0.989212,
		40.987022, 38.743343, 36.763962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320545, 38.876656, 36.209854>,  <41.010307, 38.843212, 36.071514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320545, 38.876656, 36.209854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493713, 38.935181, 36.565647>,  <40.597614, 38.970295, 36.779121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493713, 38.935181, 36.565647>,  <40.320545, 38.876656, 36.209854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493713, 38.935181, 36.565647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663910, 0.719215, 0.204825,
		-0.609757, -0.679207, 0.408502,
		0.432919, 0.146315, 0.889479,
		40.623589, 38.979076, 36.832489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748783, 38.799294, 36.670158>,  <40.320545, 38.876656, 36.209854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748783, 38.799294, 36.670158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033840, 39.014359, 36.850407>,  <40.204872, 39.143398, 36.958557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.033840, 39.014359, 36.850407>,  <39.748783, 38.799294, 36.670158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033840, 39.014359, 36.850407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690978, 0.648957, 0.318440,
		-0.121223, -0.538305, 0.833986,
		0.712638, 0.537664, 0.450625,
		40.247631, 39.175659, 36.985596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.796753, 34.274193, 39.716248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418621, 34.395870, 39.763279>,  <39.191742, 34.468876, 39.791496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418621, 34.395870, 39.763279>,  <39.796753, 34.274193, 39.716248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418621, 34.395870, 39.763279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145438, -0.070534, -0.986850,
		-0.291905, -0.949994, 0.110919,
		-0.945325, 0.304198, 0.117576,
		39.135025, 34.487129, 39.798553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424629, 33.842648, 39.351746>,  <39.796753, 34.274193, 39.716248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424629, 33.842648, 39.351746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193905, 34.167225, 39.389370>,  <39.055470, 34.361973, 39.411945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193905, 34.167225, 39.389370>,  <39.424629, 33.842648, 39.351746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193905, 34.167225, 39.389370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126622, 0.024941, -0.991637,
		-0.807005, -0.583896, 0.088361,
		-0.576810, 0.811445, 0.094061,
		39.020863, 34.410660, 39.417587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017227, 33.792641, 38.724041>,  <39.424629, 33.842648, 39.351746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017227, 33.792641, 38.724041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932041, 34.168987, 38.829433>,  <38.880932, 34.394794, 38.892670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932041, 34.168987, 38.829433>,  <39.017227, 33.792641, 38.724041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932041, 34.168987, 38.829433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352074, 0.177656, -0.918957,
		-0.911423, -0.288467, 0.293419,
		-0.212962, 0.940864, 0.263482,
		38.868153, 34.451248, 38.908478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260811, 33.836590, 38.670006>,  <39.017227, 33.792641, 38.724041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260811, 33.836590, 38.670006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430202, 34.198517, 38.652218>,  <38.531837, 34.415672, 38.641544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430202, 34.198517, 38.652218>,  <38.260811, 33.836590, 38.670006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430202, 34.198517, 38.652218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269023, 0.078734, -0.959910,
		-0.865040, 0.418463, 0.276758,
		0.423477, 0.904815, -0.044468,
		38.557247, 34.469963, 38.638878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816853, 34.186802, 38.261215>,  <38.260811, 33.836590, 38.670006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816853, 34.186802, 38.261215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147655, 34.411674, 38.262177>,  <38.346138, 34.546597, 38.262753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147655, 34.411674, 38.262177>,  <37.816853, 34.186802, 38.261215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147655, 34.411674, 38.262177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277132, 0.411393, -0.868305,
		-0.489131, 0.717433, 0.496025,
		0.827012, 0.562180, 0.002401,
		38.395760, 34.580330, 38.262897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670288, 34.922363, 38.023102>,  <37.816853, 34.186802, 38.261215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670288, 34.922363, 38.023102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063583, 34.887974, 37.958786>,  <38.299561, 34.867340, 37.920197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063583, 34.887974, 37.958786>,  <37.670288, 34.922363, 38.023102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063583, 34.887974, 37.958786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125549, 0.320264, -0.938972,
		0.132218, 0.943419, 0.304102,
		0.983238, -0.085969, -0.160790,
		38.358555, 34.862183, 37.910549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869827, 35.456059, 37.659092>,  <37.670288, 34.922363, 38.023102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869827, 35.456059, 37.659092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195667, 35.235050, 37.588501>,  <38.391171, 35.102444, 37.546146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195667, 35.235050, 37.588501>,  <37.869827, 35.456059, 37.659092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195667, 35.235050, 37.588501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067038, 0.391912, -0.917557,
		0.576133, 0.735613, 0.356292,
		0.814602, -0.552520, -0.176480,
		38.440048, 35.069294, 37.535557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248734, 35.972363, 37.366009>,  <37.869827, 35.456059, 37.659092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248734, 35.972363, 37.366009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360775, 35.605270, 37.253365>,  <38.428001, 35.385014, 37.185780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360775, 35.605270, 37.253365>,  <38.248734, 35.972363, 37.366009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360775, 35.605270, 37.253365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028966, 0.301301, -0.953089,
		0.959532, 0.258808, 0.110979,
		0.280105, -0.917734, -0.281611,
		38.444805, 35.329948, 37.168880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661789, 36.062778, 36.855316>,  <38.248734, 35.972363, 37.366009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661789, 36.062778, 36.855316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601082, 35.671234, 36.800465>,  <38.564659, 35.436310, 36.767551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601082, 35.671234, 36.800465>,  <38.661789, 36.062778, 36.855316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601082, 35.671234, 36.800465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063597, 0.128782, -0.989632,
		0.986368, -0.158915, 0.042708,
		-0.151768, -0.978857, -0.137133,
		38.555550, 35.377579, 36.759323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125000, 35.856724, 36.272758>,  <38.661789, 36.062778, 36.855316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125000, 35.856724, 36.272758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857574, 35.559711, 36.289078>,  <38.697117, 35.381504, 36.298870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857574, 35.559711, 36.289078>,  <39.125000, 35.856724, 36.272758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857574, 35.559711, 36.289078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099118, 0.034606, -0.994474,
		0.737016, -0.668917, -0.096735,
		-0.668568, -0.742532, 0.040796,
		38.657005, 35.336952, 36.301315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334854, 35.211834, 35.828548>,  <39.125000, 35.856724, 36.272758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334854, 35.211834, 35.828548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937382, 35.233257, 35.867989>,  <38.698898, 35.246113, 35.891655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937382, 35.233257, 35.867989>,  <39.334854, 35.211834, 35.828548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937382, 35.233257, 35.867989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102714, -0.080366, -0.991459,
		-0.045177, -0.995325, 0.085360,
		-0.993684, 0.053559, 0.098603,
		38.639275, 35.249325, 35.897568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053928, 34.836121, 35.248539>,  <39.334854, 35.211834, 35.828548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053928, 34.836121, 35.248539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693157, 34.925926, 35.396111>,  <38.476692, 34.979809, 35.484653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693157, 34.925926, 35.396111>,  <39.053928, 34.836121, 35.248539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693157, 34.925926, 35.396111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366669, 0.053284, -0.928825,
		-0.228196, -0.973012, 0.034265,
		-0.901932, 0.224518, 0.368932,
		38.422577, 34.993282, 35.506790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596775, 34.420612, 34.955521>,  <39.053928, 34.836121, 35.248539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596775, 34.420612, 34.955521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436470, 34.768227, 35.071571>,  <38.340286, 34.976795, 35.141201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436470, 34.768227, 35.071571>,  <38.596775, 34.420612, 34.955521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436470, 34.768227, 35.071571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349304, 0.147822, -0.925276,
		-0.846981, -0.472158, 0.244315,
		-0.400761, 0.869032, 0.290129,
		38.316242, 35.028934, 35.158611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888653, 33.794292, 35.104000>,  <38.596775, 34.420612, 34.955521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888653, 33.794292, 35.104000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947853, 33.517681, 34.821190>,  <38.983372, 33.351715, 34.651505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947853, 33.517681, 34.821190>,  <38.888653, 33.794292, 35.104000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947853, 33.517681, 34.821190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606503, -0.628148, 0.487427,
		-0.781185, 0.356672, -0.512382,
		0.148000, -0.691532, -0.707022,
		38.992252, 33.310223, 34.609085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334679, 33.659439, 34.750031>,  <38.888653, 33.794292, 35.104000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334679, 33.659439, 34.750031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584267, 33.347538, 34.770641>,  <38.734020, 33.160397, 34.783009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584267, 33.347538, 34.770641>,  <38.334679, 33.659439, 34.750031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584267, 33.347538, 34.770641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695778, -0.524333, 0.490885,
		-0.355749, -0.342150, -0.869699,
		0.623968, -0.779749, 0.051529,
		38.771458, 33.113613, 34.786098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014786, 33.088676, 34.492748>,  <38.334679, 33.659439, 34.750031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014786, 33.088676, 34.492748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309540, 32.915585, 34.700497>,  <38.486393, 32.811729, 34.825146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309540, 32.915585, 34.700497>,  <38.014786, 33.088676, 34.492748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309540, 32.915585, 34.700497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656854, -0.639955, 0.398750,
		0.159823, -0.634983, -0.755813,
		0.736885, -0.432729, 0.519370,
		38.530605, 32.785767, 34.856308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867527, 32.297295, 34.497570>,  <38.014786, 33.088676, 34.492748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867527, 32.297295, 34.497570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086323, 32.384396, 34.820900>,  <38.217602, 32.436657, 35.014896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086323, 32.384396, 34.820900>,  <37.867527, 32.297295, 34.497570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086323, 32.384396, 34.820900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475083, -0.714282, 0.513904,
		0.689272, -0.665121, -0.287259,
		0.546992, 0.217748, 0.808322,
		38.250420, 32.449718, 35.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093090, 31.642319, 34.804264>,  <37.867527, 32.297295, 34.497570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093090, 31.642319, 34.804264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123566, 31.922653, 35.087963>,  <38.141850, 32.090855, 35.258183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123566, 31.922653, 35.087963>,  <38.093090, 31.642319, 34.804264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123566, 31.922653, 35.087963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338421, -0.650912, 0.679547,
		0.937905, -0.291796, 0.187586,
		0.076187, 0.700834, 0.709244,
		38.146423, 32.132904, 35.300735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148502, 31.219261, 35.436901>,  <38.093090, 31.642319, 34.804264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148502, 31.219261, 35.436901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100891, 31.584927, 35.591892>,  <38.072327, 31.804325, 35.684887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100891, 31.584927, 35.591892>,  <38.148502, 31.219261, 35.436901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100891, 31.584927, 35.591892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315540, -0.404844, 0.858217,
		0.941418, -0.020115, 0.336642,
		-0.119025, 0.914165, 0.387475,
		38.065186, 31.859177, 35.708134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418259, 31.141958, 36.019131>,  <38.148502, 31.219261, 35.436901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418259, 31.141958, 36.019131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198551, 31.469675, 36.084930>,  <38.066727, 31.666306, 36.124413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198551, 31.469675, 36.084930>,  <38.418259, 31.141958, 36.019131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198551, 31.469675, 36.084930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187463, -0.312647, 0.931187,
		0.814346, 0.480635, 0.325315,
		-0.549270, 0.819293, 0.164502,
		38.033772, 31.715464, 36.134281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469963, 31.364912, 36.774139>,  <38.418259, 31.141958, 36.019131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469963, 31.364912, 36.774139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151211, 31.574963, 36.654655>,  <37.959961, 31.700993, 36.582966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151211, 31.574963, 36.654655>,  <38.469963, 31.364912, 36.774139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151211, 31.574963, 36.654655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435336, -0.156302, 0.886596,
		0.418887, 0.836547, 0.353160,
		-0.796879, 0.525127, -0.298706,
		37.912148, 31.732500, 36.565044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428146, 32.022736, 37.197311>,  <38.469963, 31.364912, 36.774139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428146, 32.022736, 37.197311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060177, 31.918024, 37.080544>,  <37.839397, 31.855198, 37.010483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060177, 31.918024, 37.080544>,  <38.428146, 32.022736, 37.197311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060177, 31.918024, 37.080544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291184, -0.042524, 0.955721,
		-0.262597, 0.964192, -0.037105,
		-0.919921, -0.261774, -0.291924,
		37.784199, 31.839491, 36.992966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955605, 32.443588, 37.460518>,  <38.428146, 32.022736, 37.197311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955605, 32.443588, 37.460518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742378, 32.110790, 37.399029>,  <37.614441, 31.911112, 37.362133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742378, 32.110790, 37.399029>,  <37.955605, 32.443588, 37.460518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742378, 32.110790, 37.399029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293676, 0.011552, 0.955835,
		-0.793471, 0.554668, -0.250494,
		-0.533065, -0.831991, -0.153727,
		37.582458, 31.861193, 37.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332500, 32.639606, 37.830444>,  <37.955605, 32.443588, 37.460518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332500, 32.639606, 37.830444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346741, 32.242489, 37.784679>,  <37.355286, 32.004219, 37.757221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346741, 32.242489, 37.784679>,  <37.332500, 32.639606, 37.830444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346741, 32.242489, 37.784679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181957, -0.119006, 0.976079,
		-0.982662, -0.013932, -0.184883,
		0.035601, -0.992796, -0.114408,
		37.357422, 31.944651, 37.750359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814560, 32.373814, 38.195885>,  <37.332500, 32.639606, 37.830444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814560, 32.373814, 38.195885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060135, 32.059898, 38.161968>,  <37.207481, 31.871550, 38.141621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060135, 32.059898, 38.161968>,  <36.814560, 32.373814, 38.195885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060135, 32.059898, 38.161968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110972, -0.192162, 0.975069,
		-0.781512, -0.589226, -0.205065,
		0.613941, -0.784784, -0.084789,
		37.244316, 31.824463, 38.136532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456387, 31.890150, 38.542194>,  <36.814560, 32.373814, 38.195885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456387, 31.890150, 38.542194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836185, 31.765253, 38.529835>,  <37.064064, 31.690315, 38.522419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836185, 31.765253, 38.529835>,  <36.456387, 31.890150, 38.542194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836185, 31.765253, 38.529835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023278, -0.168318, 0.985458,
		-0.312906, -0.934972, -0.167086,
		0.949499, -0.312245, -0.030904,
		37.121037, 31.671579, 38.520565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467979, 31.260313, 38.872486>,  <36.456387, 31.890150, 38.542194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467979, 31.260313, 38.872486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862175, 31.327593, 38.881565>,  <37.098694, 31.367960, 38.887012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862175, 31.327593, 38.881565>,  <36.467979, 31.260313, 38.872486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862175, 31.327593, 38.881565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034030, -0.326834, 0.944469,
		0.166277, -0.929994, -0.327816,
		0.985492, 0.168199, 0.022698,
		37.157822, 31.378052, 38.888374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710472, 30.665684, 39.213482>,  <36.467979, 31.260313, 38.872486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710472, 30.665684, 39.213482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995190, 30.944233, 39.250191>,  <37.166019, 31.111362, 39.272217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995190, 30.944233, 39.250191>,  <36.710472, 30.665684, 39.213482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995190, 30.944233, 39.250191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104332, -0.234032, 0.966615,
		0.694601, -0.678451, -0.239235,
		0.711789, 0.696371, 0.091775,
		37.208725, 31.153145, 39.277721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898598, 30.068754, 38.914200>,  <36.710472, 30.665684, 39.213482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898598, 30.068754, 38.914200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518692, 29.953453, 38.962955>,  <36.290749, 29.884272, 38.992210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518692, 29.953453, 38.962955>,  <36.898598, 30.068754, 38.914200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518692, 29.953453, 38.962955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258702, 0.503903, -0.824108,
		0.176131, -0.814242, -0.553161,
		-0.949763, -0.288255, 0.121893,
		36.233765, 29.866976, 38.999523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663071, 29.940517, 38.224739>,  <36.898598, 30.068754, 38.914200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663071, 29.940517, 38.224739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308659, 29.942200, 38.410187>,  <36.096012, 29.943209, 38.521454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308659, 29.942200, 38.410187>,  <36.663071, 29.940517, 38.224739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308659, 29.942200, 38.410187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434463, 0.341579, -0.833406,
		-0.161867, -0.939844, -0.300820,
		-0.886026, 0.004206, 0.463617,
		36.042850, 29.943460, 38.549271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209808, 29.583641, 37.876427>,  <36.663071, 29.940517, 38.224739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209808, 29.583641, 37.876427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981140, 29.833757, 38.088921>,  <35.843941, 29.983828, 38.216415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981140, 29.833757, 38.088921>,  <36.209808, 29.583641, 37.876427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981140, 29.833757, 38.088921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352497, 0.397493, -0.847199,
		-0.740908, -0.671572, -0.006819,
		-0.571666, 0.625292, 0.531232,
		35.809639, 30.021345, 38.248291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530670, 29.632160, 37.601700>,  <36.209808, 29.583641, 37.876427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530670, 29.632160, 37.601700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506409, 29.973829, 37.808277>,  <35.491852, 30.178831, 37.932224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506409, 29.973829, 37.808277>,  <35.530670, 29.632160, 37.601700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506409, 29.973829, 37.808277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487781, 0.426045, -0.761942,
		-0.870857, -0.298122, 0.390809,
		-0.060649, 0.854171, 0.516442,
		35.488213, 30.230082, 37.963211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758213, 29.852638, 37.666897>,  <35.530670, 29.632160, 37.601700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758213, 29.852638, 37.666897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978516, 30.179649, 37.734211>,  <35.110695, 30.375856, 37.774601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978516, 30.179649, 37.734211>,  <34.758213, 29.852638, 37.666897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978516, 30.179649, 37.734211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573942, 0.517328, -0.634794,
		-0.606020, 0.253029, 0.754133,
		0.550755, 0.817526, 0.168287,
		35.143742, 30.424908, 37.784698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305912, 30.359745, 37.721901>,  <34.758213, 29.852638, 37.666897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305912, 30.359745, 37.721901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636551, 30.569523, 37.640213>,  <34.834934, 30.695389, 37.591202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636551, 30.569523, 37.640213>,  <34.305912, 30.359745, 37.721901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636551, 30.569523, 37.640213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508086, 0.539308, -0.671562,
		-0.242060, 0.658868, 0.712250,
		0.826593, 0.524443, -0.204217,
		34.884529, 30.726856, 37.578949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195011, 31.090031, 37.913216>,  <34.305912, 30.359745, 37.721901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195011, 31.090031, 37.913216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484737, 31.095802, 37.637489>,  <34.658573, 31.099264, 37.472054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484737, 31.095802, 37.637489>,  <34.195011, 31.090031, 37.913216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484737, 31.095802, 37.637489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434796, 0.785476, -0.440431,
		0.535088, 0.618724, 0.575206,
		0.724316, 0.014428, -0.689317,
		34.702034, 31.100130, 37.430695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424198, 31.791067, 37.759537>,  <34.195011, 31.090031, 37.913216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424198, 31.791067, 37.759537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567039, 31.598076, 37.439613>,  <34.652744, 31.482281, 37.247658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567039, 31.598076, 37.439613>,  <34.424198, 31.791067, 37.759537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567039, 31.598076, 37.439613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593855, 0.543658, -0.593104,
		0.720981, 0.686769, -0.092379,
		0.357103, -0.482476, -0.799809,
		34.674171, 31.453333, 37.199669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449799, 32.269779, 37.298954>,  <34.424198, 31.791067, 37.759537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449799, 32.269779, 37.298954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468601, 31.949539, 37.060013>,  <34.479881, 31.757395, 36.916649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468601, 31.949539, 37.060013>,  <34.449799, 32.269779, 37.298954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468601, 31.949539, 37.060013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561143, 0.473573, -0.678857,
		0.826383, 0.367112, -0.426990,
		0.047006, -0.800598, -0.597355,
		34.482704, 31.709360, 36.880806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685390, 32.516438, 36.721390>,  <34.449799, 32.269779, 37.298954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685390, 32.516438, 36.721390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526447, 32.168819, 36.603500>,  <34.431080, 31.960247, 36.532768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526447, 32.168819, 36.603500>,  <34.685390, 32.516438, 36.721390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526447, 32.168819, 36.603500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431022, 0.460283, -0.776119,
		0.810139, -0.181368, -0.557476,
		-0.397360, -0.869049, -0.294719,
		34.407238, 31.908104, 36.515083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812054, 32.435669, 35.997871>,  <34.685390, 32.516438, 36.721390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812054, 32.435669, 35.997871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485989, 32.210773, 36.053585>,  <34.290348, 32.075836, 36.087013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485989, 32.210773, 36.053585>,  <34.812054, 32.435669, 35.997871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485989, 32.210773, 36.053585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394504, 0.362829, -0.844228,
		0.424123, -0.743129, -0.517570,
		-0.815161, -0.562240, 0.139283,
		34.241440, 32.042103, 36.095371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627506, 32.014481, 35.411549>,  <34.812054, 32.435669, 35.997871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627506, 32.014481, 35.411549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315701, 32.121777, 35.637962>,  <34.128616, 32.186153, 35.773811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315701, 32.121777, 35.637962>,  <34.627506, 32.014481, 35.411549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315701, 32.121777, 35.637962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482073, 0.320074, -0.815572,
		-0.399946, -0.908624, -0.120191,
		-0.779518, 0.268244, 0.566036,
		34.081844, 32.202251, 35.807774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.650394, 28.155815, 42.081406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.288975, 28.269463, 42.209698>,  <37.072121, 28.337650, 42.286674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.288975, 28.269463, 42.209698>,  <37.650394, 28.155815, 42.081406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288975, 28.269463, 42.209698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330451, 0.014427, -0.943713,
		-0.272752, -0.958681, 0.080852,
		-0.903553, 0.284117, 0.320732,
		37.017910, 28.354698, 42.305916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216026, 27.886879, 41.671745>,  <37.650394, 28.155815, 42.081406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216026, 27.886879, 41.671745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000935, 28.196161, 41.806206>,  <36.871880, 28.381731, 41.886883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000935, 28.196161, 41.806206>,  <37.216026, 27.886879, 41.671745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000935, 28.196161, 41.806206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485931, 0.041596, -0.873007,
		-0.688995, -0.632792, 0.353356,
		-0.537733, 0.773204, 0.336152,
		36.839615, 28.428122, 41.907051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527222, 27.682240, 41.404064>,  <37.216026, 27.886879, 41.671745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527222, 27.682240, 41.404064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542305, 28.067345, 41.511147>,  <36.551353, 28.298409, 41.575397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.542305, 28.067345, 41.511147>,  <36.527222, 27.682240, 41.404064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542305, 28.067345, 41.511147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455856, 0.254969, -0.852752,
		-0.889255, -0.089882, 0.448495,
		0.037705, 0.962763, 0.267706,
		36.553616, 28.356173, 41.591457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873985, 27.919792, 41.193802>,  <36.527222, 27.682240, 41.404064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873985, 27.919792, 41.193802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.110134, 28.241648, 41.219162>,  <36.251823, 28.434761, 41.234379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.110134, 28.241648, 41.219162>,  <35.873985, 27.919792, 41.193802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110134, 28.241648, 41.219162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323458, 0.307827, -0.894773,
		-0.739484, 0.507740, 0.441999,
		0.590371, 0.804638, 0.063401,
		36.287247, 28.483040, 41.238182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377510, 28.514004, 40.981308>,  <35.873985, 27.919792, 41.193802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377510, 28.514004, 40.981308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748421, 28.643904, 40.906807>,  <35.970966, 28.721844, 40.862106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748421, 28.643904, 40.906807>,  <35.377510, 28.514004, 40.981308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748421, 28.643904, 40.906807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335487, 0.500054, -0.798370,
		-0.166132, 0.802798, 0.572639,
		0.927280, 0.324748, -0.186254,
		36.026604, 28.741327, 40.850929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310528, 29.248224, 40.885929>,  <35.377510, 28.514004, 40.981308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310528, 29.248224, 40.885929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652412, 29.143444, 40.706665>,  <35.857544, 29.080576, 40.599106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652412, 29.143444, 40.706665>,  <35.310528, 29.248224, 40.885929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652412, 29.143444, 40.706665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331080, 0.389870, -0.859295,
		0.399819, 0.882826, 0.246499,
		0.854711, -0.261952, -0.448164,
		35.908825, 29.064859, 40.572216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609653, 29.836533, 40.709084>,  <35.310528, 29.248224, 40.885929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609653, 29.836533, 40.709084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816799, 29.578077, 40.484825>,  <35.941086, 29.423004, 40.350269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816799, 29.578077, 40.484825>,  <35.609653, 29.836533, 40.709084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816799, 29.578077, 40.484825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030191, 0.641158, -0.766815,
		0.854932, 0.414030, 0.312523,
		0.517861, -0.646139, -0.560646,
		35.972157, 29.384235, 40.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985298, 30.279840, 40.330250>,  <35.609653, 29.836533, 40.709084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985298, 30.279840, 40.330250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002773, 29.932907, 40.131927>,  <36.013256, 29.724747, 40.012932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002773, 29.932907, 40.131927>,  <35.985298, 30.279840, 40.330250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002773, 29.932907, 40.131927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034785, 0.497303, -0.866879,
		0.998440, 0.020622, 0.051894,
		0.043684, -0.867332, -0.495810,
		36.015877, 29.672709, 39.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544075, 30.329144, 39.840729>,  <35.985298, 30.279840, 40.330250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544075, 30.329144, 39.840729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296913, 30.052254, 39.691586>,  <36.148617, 29.886120, 39.602100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.296913, 30.052254, 39.691586>,  <36.544075, 30.329144, 39.840729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296913, 30.052254, 39.691586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121466, 0.552567, -0.824570,
		0.776816, -0.464214, -0.425514,
		-0.617902, -0.692225, -0.372856,
		36.111542, 29.844585, 39.579727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296154, 30.252605, 39.658501>,  <36.544075, 30.329144, 39.840729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296154, 30.252605, 39.658501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339592, 30.650200, 39.664066>,  <37.365654, 30.888758, 39.667408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339592, 30.650200, 39.664066>,  <37.296154, 30.252605, 39.658501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339592, 30.650200, 39.664066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559823, -0.072720, 0.825415,
		0.821465, -0.081848, -0.564355,
		0.108599, 0.993988, 0.013917,
		37.372173, 30.948397, 39.668240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041828, 30.405787, 39.874134>,  <37.296154, 30.252605, 39.658501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041828, 30.405787, 39.874134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865959, 30.750114, 39.976643>,  <37.760437, 30.956711, 40.038147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.865959, 30.750114, 39.976643>,  <38.041828, 30.405787, 39.874134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865959, 30.750114, 39.976643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591445, 0.062763, 0.803899,
		0.675927, 0.505027, -0.536722,
		-0.439677, 0.860818, 0.256273,
		37.734055, 31.008360, 40.053524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636852, 30.823652, 40.215137>,  <38.041828, 30.405787, 39.874134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636852, 30.823652, 40.215137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300457, 31.019791, 40.306618>,  <38.098621, 31.137474, 40.361507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300457, 31.019791, 40.306618>,  <38.636852, 30.823652, 40.215137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300457, 31.019791, 40.306618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357876, 0.187095, 0.914834,
		0.405798, 0.851208, -0.332827,
		-0.840984, 0.490348, 0.228704,
		38.048161, 31.166895, 40.375229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813221, 31.530460, 40.440750>,  <38.636852, 30.823652, 40.215137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813221, 31.530460, 40.440750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460041, 31.427429, 40.597752>,  <38.248135, 31.365610, 40.691952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460041, 31.427429, 40.597752>,  <38.813221, 31.530460, 40.440750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460041, 31.427429, 40.597752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349788, 0.196702, 0.915946,
		-0.313135, 0.946024, -0.083579,
		-0.882947, -0.257579, 0.392502,
		38.195156, 31.350155, 40.715504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651585, 32.031586, 40.821381>,  <38.813221, 31.530460, 40.440750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651585, 32.031586, 40.821381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450024, 31.722145, 40.975067>,  <38.329086, 31.536480, 41.067280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450024, 31.722145, 40.975067>,  <38.651585, 32.031586, 40.821381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450024, 31.722145, 40.975067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300248, 0.260207, 0.917684,
		-0.809898, 0.577783, 0.101153,
		-0.503901, -0.773601, 0.384220,
		38.298855, 31.490065, 41.090332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198566, 32.358284, 41.304283>,  <38.651585, 32.031586, 40.821381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198566, 32.358284, 41.304283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241779, 31.979681, 41.425911>,  <38.267708, 31.752520, 41.498886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241779, 31.979681, 41.425911>,  <38.198566, 32.358284, 41.304283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241779, 31.979681, 41.425911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214761, 0.320857, 0.922458,
		-0.970674, -0.034348, 0.237934,
		0.108027, -0.946505, 0.304071,
		38.274189, 31.695730, 41.517132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966881, 32.521969, 41.952667>,  <38.198566, 32.358284, 41.304283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966881, 32.521969, 41.952667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124146, 32.154186, 41.950947>,  <38.218502, 31.933516, 41.949913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124146, 32.154186, 41.950947>,  <37.966881, 32.521969, 41.952667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124146, 32.154186, 41.950947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206407, 0.083700, 0.974880,
		-0.896004, -0.384169, 0.222690,
		0.393158, -0.919461, -0.004300,
		38.242092, 31.878347, 41.949657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600449, 32.157757, 42.436241>,  <37.966881, 32.521969, 41.952667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600449, 32.157757, 42.436241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955494, 31.976871, 42.401291>,  <38.168522, 31.868340, 42.380322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955494, 31.976871, 42.401291>,  <37.600449, 32.157757, 42.436241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955494, 31.976871, 42.401291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105082, 0.014135, 0.994363,
		-0.448434, -0.891796, 0.060066,
		0.887618, -0.452218, -0.087373,
		38.221779, 31.841206, 42.375080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603596, 31.680109, 42.923702>,  <37.600449, 32.157757, 42.436241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603596, 31.680109, 42.923702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993130, 31.717606, 42.840885>,  <38.226849, 31.740103, 42.791195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.993130, 31.717606, 42.840885>,  <37.603596, 31.680109, 42.923702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993130, 31.717606, 42.840885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204153, 0.039529, 0.978141,
		0.099878, -0.994811, 0.019356,
		0.973831, 0.093744, -0.207042,
		38.285278, 31.745728, 42.778774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980713, 31.194878, 43.482758>,  <37.603596, 31.680109, 42.923702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980713, 31.194878, 43.482758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260502, 31.441025, 43.337395>,  <38.428375, 31.588713, 43.250175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.260502, 31.441025, 43.337395>,  <37.980713, 31.194878, 43.482758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260502, 31.441025, 43.337395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412763, 0.067254, 0.908352,
		0.583410, -0.785367, -0.206958,
		0.699471, 0.615366, -0.363407,
		38.470345, 31.625635, 43.228371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567600, 30.890827, 43.676079>,  <37.980713, 31.194878, 43.482758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567600, 30.890827, 43.676079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.632610, 31.280153, 43.611282>,  <38.671616, 31.513748, 43.572403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.632610, 31.280153, 43.611282>,  <38.567600, 30.890827, 43.676079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632610, 31.280153, 43.611282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423271, 0.079530, 0.902506,
		0.891306, -0.215249, -0.399051,
		0.162527, 0.973315, -0.161994,
		38.681370, 31.572147, 43.562683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254398, 30.895058, 43.994064>,  <38.567600, 30.890827, 43.676079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254398, 30.895058, 43.994064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168583, 31.282024, 43.940281>,  <39.117092, 31.514204, 43.908009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168583, 31.282024, 43.940281>,  <39.254398, 30.895058, 43.994064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168583, 31.282024, 43.940281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553435, 0.233842, 0.799392,
		0.804787, 0.097086, -0.585571,
		-0.214541, 0.967415, -0.134462,
		39.104221, 31.572248, 43.899940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916222, 31.292606, 43.946011>,  <39.254398, 30.895058, 43.994064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916222, 31.292606, 43.946011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.637516, 31.559822, 44.050503>,  <39.470291, 31.720152, 44.113197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.637516, 31.559822, 44.050503>,  <39.916222, 31.292606, 43.946011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637516, 31.559822, 44.050503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495832, 0.185393, 0.848398,
		0.518335, 0.720659, -0.460412,
		-0.696764, 0.668042, 0.261230,
		39.428486, 31.760235, 44.128872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256290, 31.915283, 44.077965>,  <39.916222, 31.292606, 43.946011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256290, 31.915283, 44.077965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906418, 31.913258, 44.271835>,  <39.696495, 31.912043, 44.388157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906418, 31.913258, 44.271835>,  <40.256290, 31.915283, 44.077965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906418, 31.913258, 44.271835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480353, 0.124638, 0.868174,
		-0.064807, 0.992189, -0.106585,
		-0.874678, -0.005065, 0.484679,
		39.644016, 31.911737, 44.417240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.728008, 32.866928, 46.290577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902855, 32.553276, 46.114361>,  <34.007763, 32.365086, 46.008633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902855, 32.553276, 46.114361>,  <33.728008, 32.866928, 46.290577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902855, 32.553276, 46.114361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109495, 0.439771, -0.891410,
		0.892713, 0.437890, 0.106375,
		0.437121, -0.784126, -0.440536,
		34.033993, 32.318039, 45.982201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148510, 33.136677, 45.699501>,  <33.728008, 32.866928, 46.290577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148510, 33.136677, 45.699501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127121, 32.751396, 45.594135>,  <34.114288, 32.520229, 45.530918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.127121, 32.751396, 45.594135>,  <34.148510, 33.136677, 45.699501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127121, 32.751396, 45.594135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221090, 0.268660, -0.937519,
		0.973787, 0.008110, -0.227319,
		-0.053468, -0.963201, -0.263411,
		34.111080, 32.462437, 45.515114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662506, 33.032925, 45.025879>,  <34.148510, 33.136677, 45.699501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662506, 33.032925, 45.025879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.412769, 32.720516, 45.031490>,  <34.262928, 32.533070, 45.034859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.412769, 32.720516, 45.031490>,  <34.662506, 33.032925, 45.025879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412769, 32.720516, 45.031490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138834, 0.093273, -0.985914,
		0.768712, -0.617499, -0.166667,
		-0.624346, -0.781022, 0.014029,
		34.225464, 32.486210, 45.035698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856693, 32.515358, 44.415916>,  <34.662506, 33.032925, 45.025879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856693, 32.515358, 44.415916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477757, 32.506741, 44.543720>,  <34.250397, 32.501572, 44.620403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.477757, 32.506741, 44.543720>,  <34.856693, 32.515358, 44.415916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477757, 32.506741, 44.543720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310824, 0.301981, -0.901219,
		-0.077074, -0.953070, -0.292774,
		-0.947338, -0.021540, 0.319512,
		34.193554, 32.500278, 44.639572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556026, 32.142292, 43.871731>,  <34.856693, 32.515358, 44.415916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556026, 32.142292, 43.871731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285892, 32.347050, 44.084099>,  <34.123810, 32.469906, 44.211521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285892, 32.347050, 44.084099>,  <34.556026, 32.142292, 43.871731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285892, 32.347050, 44.084099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356096, 0.404088, -0.842561,
		-0.645843, -0.758074, -0.090612,
		-0.675339, 0.511895, 0.530924,
		34.083290, 32.500618, 44.243378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903721, 31.817305, 43.668495>,  <34.556026, 32.142292, 43.871731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903721, 31.817305, 43.668495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866253, 32.187153, 43.816174>,  <33.843773, 32.409061, 43.904781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866253, 32.187153, 43.816174>,  <33.903721, 31.817305, 43.668495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866253, 32.187153, 43.816174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436483, 0.295146, -0.849924,
		-0.894823, -0.240762, 0.375933,
		-0.093675, 0.924620, 0.369192,
		33.838150, 32.464539, 43.926929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435932, 32.028702, 43.253155>,  <33.903721, 31.817305, 43.668495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435932, 32.028702, 43.253155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.510151, 32.383110, 43.423119>,  <33.554680, 32.595753, 43.525097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.510151, 32.383110, 43.423119>,  <33.435932, 32.028702, 43.253155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510151, 32.383110, 43.423119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417751, 0.462518, -0.782024,
		-0.889414, -0.032405, 0.455952,
		0.185545, 0.886017, 0.424907,
		33.565815, 32.648914, 43.550591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823647, 32.358978, 43.266476>,  <33.435932, 32.028702, 43.253155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823647, 32.358978, 43.266476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094448, 32.650757, 43.305603>,  <33.256927, 32.825825, 43.329079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094448, 32.650757, 43.305603>,  <32.823647, 32.358978, 43.266476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094448, 32.650757, 43.305603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420161, 0.492192, -0.762372,
		-0.604258, 0.475029, 0.639702,
		0.677005, 0.729448, 0.097822,
		33.297550, 32.869591, 43.334949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424320, 32.888008, 43.191570>,  <32.823647, 32.358978, 43.266476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424320, 32.888008, 43.191570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793079, 33.027035, 43.123100>,  <33.014336, 33.110451, 43.082020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793079, 33.027035, 43.123100>,  <32.424320, 32.888008, 43.191570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793079, 33.027035, 43.123100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314635, 0.413844, -0.854247,
		-0.226072, 0.841385, 0.490880,
		0.921898, 0.347570, -0.171171,
		33.069649, 33.131306, 43.071751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280251, 33.491184, 42.854465>,  <32.424320, 32.888008, 43.191570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280251, 33.491184, 42.854465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669102, 33.436157, 42.778519>,  <32.902412, 33.403141, 42.732948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.669102, 33.436157, 42.778519>,  <32.280251, 33.491184, 42.854465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669102, 33.436157, 42.778519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117346, 0.415622, -0.901936,
		0.202993, 0.899074, 0.387893,
		0.972123, -0.137569, -0.189871,
		32.960739, 33.394886, 42.721558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549522, 34.089607, 42.606422>,  <32.280251, 33.491184, 42.854465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549522, 34.089607, 42.606422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.808159, 33.817978, 42.467415>,  <32.963341, 33.654999, 42.384010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.808159, 33.817978, 42.467415>,  <32.549522, 34.089607, 42.606422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808159, 33.817978, 42.467415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111337, 0.366676, -0.923663,
		0.754665, 0.635927, 0.161484,
		0.646595, -0.679077, -0.347520,
		33.002136, 33.614254, 42.363159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125000, 34.433022, 42.169159>,  <32.549522, 34.089607, 42.606422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125000, 34.433022, 42.169159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120678, 34.047997, 42.060825>,  <33.118084, 33.816982, 41.995827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120678, 34.047997, 42.060825>,  <33.125000, 34.433022, 42.169159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120678, 34.047997, 42.060825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008520, 0.270753, -0.962611,
		0.999905, -0.012705, 0.005276,
		-0.010802, -0.962565, -0.270835,
		33.117439, 33.759228, 41.979576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785912, 34.423744, 41.718304>,  <33.125000, 34.433022, 42.169159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785912, 34.423744, 41.718304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590691, 34.088352, 41.621353>,  <33.473557, 33.887115, 41.563183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590691, 34.088352, 41.621353>,  <33.785912, 34.423744, 41.718304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590691, 34.088352, 41.621353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204834, 0.379978, -0.902031,
		0.848437, -0.390593, -0.357200,
		-0.488055, -0.838483, -0.242380,
		33.444275, 33.836807, 41.548637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088921, 34.048870, 41.105854>,  <33.785912, 34.423744, 41.718304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088921, 34.048870, 41.105854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697262, 33.969917, 41.125084>,  <33.462265, 33.922546, 41.136623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697262, 33.969917, 41.125084>,  <34.088921, 34.048870, 41.105854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697262, 33.969917, 41.125084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137036, 0.467001, -0.873574,
		0.149975, -0.861946, -0.484311,
		-0.979147, -0.197382, 0.048079,
		33.403519, 33.910702, 41.139507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779293, 34.330040, 41.185822>,  <34.088921, 34.048870, 41.105854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779293, 34.330040, 41.185822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958645, 34.681889, 41.122288>,  <35.066257, 34.892998, 41.084167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958645, 34.681889, 41.122288>,  <34.779293, 34.330040, 41.185822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958645, 34.681889, 41.122288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398918, -0.037906, 0.916203,
		0.799888, -0.474168, -0.367891,
		0.448379, 0.879618, -0.158833,
		35.093159, 34.945774, 41.074638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481441, 34.266281, 41.254238>,  <34.779293, 34.330040, 41.185822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481441, 34.266281, 41.254238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411194, 34.652378, 41.331665>,  <35.369045, 34.884037, 41.378120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411194, 34.652378, 41.331665>,  <35.481441, 34.266281, 41.254238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411194, 34.652378, 41.331665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432363, -0.101020, 0.896023,
		0.884433, 0.241045, -0.399594,
		-0.175615, 0.965242, 0.193565,
		35.358509, 34.941952, 41.389736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073750, 34.414242, 41.530678>,  <35.481441, 34.266281, 41.254238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073750, 34.414242, 41.530678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.848881, 34.729889, 41.629673>,  <35.713959, 34.919277, 41.689072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.848881, 34.729889, 41.629673>,  <36.073750, 34.414242, 41.530678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848881, 34.729889, 41.629673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338316, -0.053632, 0.939503,
		0.754653, 0.611894, -0.236821,
		-0.562175, 0.789119, 0.247487,
		35.680229, 34.966625, 41.703918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526749, 34.798561, 42.021984>,  <36.073750, 34.414242, 41.530678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526749, 34.798561, 42.021984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152637, 34.931950, 42.069401>,  <35.928169, 35.011982, 42.097851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152637, 34.931950, 42.069401>,  <36.526749, 34.798561, 42.021984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152637, 34.931950, 42.069401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169768, 0.128828, 0.977027,
		0.310539, 0.933916, -0.177103,
		-0.935278, 0.333472, 0.118543,
		35.872055, 35.031990, 42.104965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547424, 35.214481, 42.602814>,  <36.526749, 34.798561, 42.021984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547424, 35.214481, 42.602814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153801, 35.146381, 42.582222>,  <35.917629, 35.105522, 42.569866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153801, 35.146381, 42.582222>,  <36.547424, 35.214481, 42.602814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153801, 35.146381, 42.582222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044721, -0.043272, 0.998062,
		-0.172152, 0.984449, 0.034968,
		-0.984055, -0.170255, -0.051475,
		35.858585, 35.095306, 42.566780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215424, 35.776260, 43.079464>,  <36.547424, 35.214481, 42.602814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215424, 35.776260, 43.079464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031132, 35.425999, 43.021568>,  <35.920555, 35.215839, 42.986832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.031132, 35.425999, 43.021568>,  <36.215424, 35.776260, 43.079464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031132, 35.425999, 43.021568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117979, -0.101210, 0.987845,
		-0.879663, 0.472207, -0.056679,
		-0.460731, -0.875658, -0.144741,
		35.892914, 35.163300, 42.978146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643799, 35.814861, 43.485485>,  <36.215424, 35.776260, 43.079464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643799, 35.814861, 43.485485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664318, 35.422012, 43.413036>,  <35.676628, 35.186302, 43.369568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664318, 35.422012, 43.413036>,  <35.643799, 35.814861, 43.485485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664318, 35.422012, 43.413036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341738, -0.187675, 0.920866,
		-0.938394, 0.014656, -0.345256,
		0.051300, -0.982122, -0.181121,
		35.679707, 35.127377, 43.358700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147003, 35.590958, 43.870358>,  <35.643799, 35.814861, 43.485485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147003, 35.590958, 43.870358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.364265, 35.265404, 43.787827>,  <35.494621, 35.070072, 43.738308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.364265, 35.265404, 43.787827>,  <35.147003, 35.590958, 43.870358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364265, 35.265404, 43.787827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064639, -0.285537, 0.956186,
		-0.837143, -0.506017, -0.207699,
		0.543152, -0.813889, -0.206326,
		35.527210, 35.021236, 43.725929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797684, 35.003471, 44.137291>,  <35.147003, 35.590958, 43.870358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797684, 35.003471, 44.137291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.182671, 34.902035, 44.098610>,  <35.413662, 34.841175, 44.075401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.182671, 34.902035, 44.098610>,  <34.797684, 35.003471, 44.137291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182671, 34.902035, 44.098610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002998, -0.346341, 0.938104,
		-0.271381, -0.903184, -0.332581,
		0.962467, -0.253587, -0.096698,
		35.471409, 34.825958, 44.069599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941780, 34.338596, 44.378971>,  <34.797684, 35.003471, 44.137291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941780, 34.338596, 44.378971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301373, 34.507881, 44.424095>,  <35.517128, 34.609451, 44.451168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301373, 34.507881, 44.424095>,  <34.941780, 34.338596, 44.378971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301373, 34.507881, 44.424095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097777, -0.444988, 0.890183,
		0.426932, -0.789228, -0.441417,
		0.898982, 0.423208, 0.112812,
		35.571068, 34.634842, 44.457939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361767, 33.840328, 44.697433>,  <34.941780, 34.338596, 44.378971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361767, 33.840328, 44.697433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599087, 34.162285, 44.692608>,  <35.741478, 34.355457, 44.689713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599087, 34.162285, 44.692608>,  <35.361767, 33.840328, 44.697433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599087, 34.162285, 44.692608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471352, -0.335218, 0.815755,
		0.652551, -0.489673, -0.578272,
		0.593300, 0.804891, -0.012061,
		35.777077, 34.403751, 44.688988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055771, 33.558880, 44.803837>,  <35.361767, 33.840328, 44.697433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055771, 33.558880, 44.803837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020714, 33.934761, 44.936066>,  <35.999680, 34.160290, 45.015404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020714, 33.934761, 44.936066>,  <36.055771, 33.558880, 44.803837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020714, 33.934761, 44.936066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324880, -0.286740, 0.901240,
		0.941686, 0.186379, -0.280162,
		-0.087638, 0.939704, 0.330570,
		35.994423, 34.216671, 45.035236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734398, 33.783665, 45.168648>,  <36.055771, 33.558880, 44.803837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734398, 33.783665, 45.168648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447212, 34.020275, 45.315411>,  <36.274902, 34.162243, 45.403469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447212, 34.020275, 45.315411>,  <36.734398, 33.783665, 45.168648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447212, 34.020275, 45.315411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393404, -0.090028, 0.914947,
		0.574250, 0.801242, -0.168073,
		-0.717963, 0.591529, 0.366910,
		36.231823, 34.197735, 45.425484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119305, 34.357094, 45.557213>,  <36.734398, 33.783665, 45.168648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119305, 34.357094, 45.557213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745079, 34.342861, 45.697758>,  <36.520542, 34.334324, 45.782085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745079, 34.342861, 45.697758>,  <37.119305, 34.357094, 45.557213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745079, 34.342861, 45.697758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352731, -0.142913, 0.924747,
		0.017312, 0.989096, 0.146254,
		-0.935564, -0.035579, 0.351359,
		36.464409, 34.332188, 45.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858086, 34.771275, 45.619564>,  <37.119305, 34.357094, 45.557213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858086, 34.771275, 45.619564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.141159, 34.497299, 45.550220>,  <38.311001, 34.332916, 45.508614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.141159, 34.497299, 45.550220>,  <37.858086, 34.771275, 45.619564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141159, 34.497299, 45.550220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005041, 0.240462, -0.970645,
		0.706514, 0.687782, 0.166718,
		0.707681, -0.684934, -0.173357,
		38.353462, 34.291821, 45.498215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195087, 35.119026, 45.128506>,  <37.858086, 34.771275, 45.619564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195087, 35.119026, 45.128506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314720, 34.738117, 45.104050>,  <38.386497, 34.509571, 45.089378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314720, 34.738117, 45.104050>,  <38.195087, 35.119026, 45.128506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314720, 34.738117, 45.104050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288457, 0.151295, -0.945464,
		0.909585, 0.265132, 0.319938,
		0.299078, -0.952268, -0.061136,
		38.404442, 34.452438, 45.085709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889336, 35.101246, 44.904297>,  <38.195087, 35.119026, 45.128506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889336, 35.101246, 44.904297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752720, 34.740551, 44.798302>,  <38.670750, 34.524132, 44.734703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752720, 34.740551, 44.798302>,  <38.889336, 35.101246, 44.904297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752720, 34.740551, 44.798302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289601, 0.167256, -0.942420,
		0.894139, -0.398610, 0.204021,
		-0.341535, -0.901740, -0.264989,
		38.650261, 34.470028, 44.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422943, 34.767479, 44.481899>,  <38.889336, 35.101246, 44.904297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422943, 34.767479, 44.481899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.103176, 34.558533, 44.363194>,  <38.911316, 34.433163, 44.291969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.103176, 34.558533, 44.363194>,  <39.422943, 34.767479, 44.481899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103176, 34.558533, 44.363194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291874, 0.094064, -0.951820,
		0.525116, -0.847516, 0.077270,
		-0.799414, -0.522368, -0.296762,
		38.863350, 34.401821, 44.274166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644379, 34.188255, 44.061764>,  <39.422943, 34.767479, 44.481899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644379, 34.188255, 44.061764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257156, 34.242008, 43.977093>,  <39.024822, 34.274261, 43.926292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257156, 34.242008, 43.977093>,  <39.644379, 34.188255, 44.061764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257156, 34.242008, 43.977093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198491, -0.105056, -0.974456,
		-0.153192, -0.985345, 0.075025,
		-0.968057, 0.134387, -0.211676,
		38.966740, 34.282322, 43.913589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507149, 33.687088, 43.490765>,  <39.644379, 34.188255, 44.061764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507149, 33.687088, 43.490765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.183994, 33.920563, 43.458199>,  <38.990101, 34.060646, 43.438660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.183994, 33.920563, 43.458199>,  <39.507149, 33.687088, 43.490765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183994, 33.920563, 43.458199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035247, -0.185751, -0.981965,
		-0.588283, -0.790447, 0.170639,
		-0.807887, 0.583687, -0.081413,
		38.941628, 34.095669, 43.433773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068287, 33.394238, 42.950123>,  <39.507149, 33.687088, 43.490765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068287, 33.394238, 42.950123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942059, 33.771622, 42.990715>,  <38.866322, 33.998051, 43.015072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.942059, 33.771622, 42.990715>,  <39.068287, 33.394238, 42.950123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942059, 33.771622, 42.990715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135221, 0.061142, -0.988927,
		-0.939217, -0.325802, 0.108281,
		-0.315574, 0.943459, 0.101481,
		38.847385, 34.054661, 43.021160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459728, 33.457909, 42.516350>,  <39.068287, 33.394238, 42.950123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459728, 33.457909, 42.516350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585346, 33.834278, 42.566998>,  <38.660717, 34.060101, 42.597385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585346, 33.834278, 42.566998>,  <38.459728, 33.457909, 42.516350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585346, 33.834278, 42.566998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016349, 0.127986, -0.991641,
		-0.949268, 0.313488, 0.024809,
		0.314043, 0.940928, 0.126618,
		38.679558, 34.116558, 42.604984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984459, 33.900486, 42.111565>,  <38.459728, 33.457909, 42.516350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984459, 33.900486, 42.111565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331089, 34.089901, 42.174561>,  <38.539066, 34.203552, 42.212357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331089, 34.089901, 42.174561>,  <37.984459, 33.900486, 42.111565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331089, 34.089901, 42.174561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073995, 0.190165, -0.978960,
		-0.493525, 0.859998, 0.129753,
		0.866578, 0.473540, 0.157486,
		38.591061, 34.231964, 42.221806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861053, 34.546078, 41.801094>,  <37.984459, 33.900486, 42.111565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861053, 34.546078, 41.801094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.256870, 34.491165, 41.818790>,  <38.494362, 34.458218, 41.829407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.256870, 34.491165, 41.818790>,  <37.861053, 34.546078, 41.801094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256870, 34.491165, 41.818790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077211, 0.245130, -0.966411,
		0.121824, 0.959722, 0.253166,
		0.989544, -0.137280, 0.044238,
		38.553734, 34.449982, 41.832062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117535, 35.212673, 41.477848>,  <37.861053, 34.546078, 41.801094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117535, 35.212673, 41.477848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.400101, 34.929775, 41.466679>,  <38.569641, 34.760036, 41.459976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.400101, 34.929775, 41.466679>,  <38.117535, 35.212673, 41.477848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400101, 34.929775, 41.466679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097725, 0.136528, -0.985804,
		0.701021, 0.693656, 0.165561,
		0.706413, -0.707249, -0.027922,
		38.612026, 34.717602, 41.458302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572750, 35.505741, 41.135231>,  <38.117535, 35.212673, 41.477848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572750, 35.505741, 41.135231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.670254, 35.120785, 41.087265>,  <38.728756, 34.889809, 41.058487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.670254, 35.120785, 41.087265>,  <38.572750, 35.505741, 41.135231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670254, 35.120785, 41.087265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298017, 0.191988, -0.935054,
		0.922913, 0.192189, 0.333609,
		0.243756, -0.962395, -0.119912,
		38.743382, 34.832066, 41.051292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260365, 35.530594, 40.615406>,  <38.572750, 35.505741, 41.135231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260365, 35.530594, 40.615406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133884, 35.151115, 40.614697>,  <39.057999, 34.923428, 40.614273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133884, 35.151115, 40.614697>,  <39.260365, 35.530594, 40.615406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133884, 35.151115, 40.614697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046487, -0.013630, -0.998826,
		0.947554, -0.315907, 0.048412,
		-0.316196, -0.948692, -0.001770,
		39.039024, 34.866508, 40.614166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664768, 35.191395, 40.128220>,  <39.260365, 35.530594, 40.615406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664768, 35.191395, 40.128220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.328777, 34.984322, 40.193264>,  <39.127182, 34.860077, 40.232288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.328777, 34.984322, 40.193264>,  <39.664768, 35.191395, 40.128220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328777, 34.984322, 40.193264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091415, -0.160379, -0.982813,
		0.534869, -0.840404, 0.087390,
		-0.839975, -0.517688, 0.162608,
		39.076786, 34.829014, 40.242046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.941792, 35.724888, 26.400358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.550629, 35.701366, 26.480598>,  <24.315931, 35.687252, 26.528742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.550629, 35.701366, 26.480598>,  <24.941792, 35.724888, 26.400358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550629, 35.701366, 26.480598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170188, 0.333277, 0.927342,
		-0.121386, 0.940994, -0.315906,
		-0.977907, -0.058803, 0.200601,
		24.257257, 35.683727, 26.540779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615482, 36.415421, 26.677259>,  <24.941792, 35.724888, 26.400358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615482, 36.415421, 26.677259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.434204, 36.085125, 26.811586>,  <24.325438, 35.886948, 26.892181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.434204, 36.085125, 26.811586>,  <24.615482, 36.415421, 26.677259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434204, 36.085125, 26.811586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044305, 0.355393, 0.933666,
		-0.890308, 0.438013, -0.124479,
		-0.453197, -0.825736, 0.335816,
		24.298244, 35.837402, 26.912331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.081928, 36.612152, 27.180130>,  <24.615482, 36.415421, 26.677259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.081928, 36.612152, 27.180130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.217432, 36.241753, 27.246780>,  <24.298735, 36.019512, 27.286770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.217432, 36.241753, 27.246780>,  <24.081928, 36.612152, 27.180130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.217432, 36.241753, 27.246780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259805, 0.262274, 0.929362,
		-0.904292, -0.271539, 0.329427,
		0.338758, -0.926001, 0.166625,
		24.319059, 35.963951, 27.296768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.721695, 36.282024, 27.765171>,  <24.081928, 36.612152, 27.180130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.721695, 36.282024, 27.765171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.089603, 36.134205, 27.712328>,  <24.310349, 36.045513, 27.680622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.089603, 36.134205, 27.712328>,  <23.721695, 36.282024, 27.765171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089603, 36.134205, 27.712328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162847, 0.053104, 0.985221,
		-0.357075, -0.927691, 0.109024,
		0.919770, -0.369552, -0.132109,
		24.365534, 36.023338, 27.672695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.773294, 35.793533, 28.309544>,  <23.721695, 36.282024, 27.765171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.773294, 35.793533, 28.309544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.162592, 35.803432, 28.218170>,  <24.396170, 35.809372, 28.163345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.162592, 35.803432, 28.218170>,  <23.773294, 35.793533, 28.309544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162592, 35.803432, 28.218170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229046, -0.025506, 0.973081,
		0.018259, -0.999368, -0.030493,
		0.973244, 0.024752, -0.228436,
		24.454565, 35.810860, 28.149639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.083475, 35.261654, 28.668446>,  <23.773294, 35.793533, 28.309544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.083475, 35.261654, 28.668446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.383440, 35.507023, 28.569372>,  <24.563419, 35.654243, 28.509928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.383440, 35.507023, 28.569372>,  <24.083475, 35.261654, 28.668446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383440, 35.507023, 28.569372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262022, 0.068365, 0.962637,
		0.607434, -0.786792, -0.109462,
		0.749913, 0.613420, -0.247684,
		24.608414, 35.691048, 28.495068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551376, 34.965851, 28.915787>,  <24.083475, 35.261654, 28.668446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551376, 34.965851, 28.915787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.738863, 35.318890, 28.901224>,  <24.851355, 35.530712, 28.892487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.738863, 35.318890, 28.901224>,  <24.551376, 34.965851, 28.915787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738863, 35.318890, 28.901224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166114, -0.047592, 0.984957,
		0.867588, -0.467715, -0.168919,
		0.468719, 0.882597, -0.036404,
		24.879478, 35.583668, 28.890303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194992, 34.813229, 29.152254>,  <24.551376, 34.965851, 28.915787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194992, 34.813229, 29.152254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.138994, 35.205013, 29.210287>,  <25.105396, 35.440086, 29.245106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.138994, 35.205013, 29.210287>,  <25.194992, 34.813229, 29.152254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138994, 35.205013, 29.210287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286565, -0.100174, 0.952810,
		0.947778, 0.174964, -0.266656,
		-0.139995, 0.979466, 0.145081,
		25.096996, 35.498852, 29.253811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797012, 35.009453, 29.478628>,  <25.194992, 34.813229, 29.152254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797012, 35.009453, 29.478628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.507055, 35.273399, 29.557735>,  <25.333080, 35.431767, 29.605200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.507055, 35.273399, 29.557735>,  <25.797012, 35.009453, 29.478628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507055, 35.273399, 29.557735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380602, 0.144353, 0.913403,
		0.574171, 0.737390, -0.355785,
		-0.724893, 0.659862, 0.197769,
		25.289587, 35.471359, 29.617065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136049, 35.385632, 29.998854>,  <25.797012, 35.009453, 29.478628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136049, 35.385632, 29.998854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.768326, 35.542370, 30.013435>,  <25.547691, 35.636414, 30.022184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.768326, 35.542370, 30.013435>,  <26.136049, 35.385632, 29.998854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768326, 35.542370, 30.013435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131532, 0.218635, 0.966901,
		0.370903, 0.893677, -0.252533,
		-0.919309, 0.391843, 0.036454,
		25.492533, 35.659924, 30.024372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180506, 36.132690, 30.324741>,  <26.136049, 35.385632, 29.998854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180506, 36.132690, 30.324741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823957, 35.958603, 30.375412>,  <25.610029, 35.854153, 30.405815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.823957, 35.958603, 30.375412>,  <26.180506, 36.132690, 30.324741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823957, 35.958603, 30.375412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065432, 0.152998, 0.986058,
		-0.448529, 0.887231, -0.107901,
		-0.891370, -0.435216, 0.126677,
		25.556547, 35.828037, 30.413416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805021, 36.630726, 30.726347>,  <26.180506, 36.132690, 30.324741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805021, 36.630726, 30.726347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.624332, 36.278835, 30.785706>,  <25.515919, 36.067699, 30.821321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.624332, 36.278835, 30.785706>,  <25.805021, 36.630726, 30.726347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624332, 36.278835, 30.785706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076549, 0.127504, 0.988880,
		-0.888868, 0.458060, 0.009746,
		-0.451723, -0.879730, 0.148398,
		25.488815, 36.014915, 30.830225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.280998, 36.718700, 31.247112>,  <25.805021, 36.630726, 30.726347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.280998, 36.718700, 31.247112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.376684, 36.330338, 31.251448>,  <25.434095, 36.097321, 31.254049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.376684, 36.330338, 31.251448>,  <25.280998, 36.718700, 31.247112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376684, 36.330338, 31.251448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026904, 0.017784, 0.999480,
		-0.970593, -0.238801, 0.030376,
		0.239217, -0.970906, 0.010836,
		25.448450, 36.039066, 31.254698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139849, 36.473614, 31.941721>,  <25.280998, 36.718700, 31.247112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139849, 36.473614, 31.941721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.370829, 36.172798, 31.814604>,  <25.509417, 35.992310, 31.738335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.370829, 36.172798, 31.814604>,  <25.139849, 36.473614, 31.941721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370829, 36.172798, 31.814604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213575, -0.236545, 0.947857,
		-0.787994, -0.615214, 0.024023,
		0.577452, -0.752036, -0.317791,
		25.544064, 35.947186, 31.719267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020893, 35.960789, 32.421902>,  <25.139849, 36.473614, 31.941721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020893, 35.960789, 32.421902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.344656, 35.814426, 32.238174>,  <25.538914, 35.726608, 32.127937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.344656, 35.814426, 32.238174>,  <25.020893, 35.960789, 32.421902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344656, 35.814426, 32.238174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330046, -0.363494, 0.871173,
		-0.485725, -0.856730, -0.173450,
		0.809408, -0.365904, -0.459318,
		25.587479, 35.704655, 32.100380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050529, 35.189217, 32.559948>,  <25.020893, 35.960789, 32.421902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050529, 35.189217, 32.559948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.405584, 35.355404, 32.480465>,  <25.618616, 35.455116, 32.432774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.405584, 35.355404, 32.480465>,  <25.050529, 35.189217, 32.559948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405584, 35.355404, 32.480465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381665, -0.422140, 0.822271,
		0.257747, -0.805717, -0.533278,
		0.887636, 0.415472, -0.198709,
		25.671875, 35.480045, 32.420853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592043, 34.654274, 32.611244>,  <25.050529, 35.189217, 32.559948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592043, 34.654274, 32.611244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789095, 34.999397, 32.656635>,  <25.907326, 35.206470, 32.683868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789095, 34.999397, 32.656635>,  <25.592043, 34.654274, 32.611244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789095, 34.999397, 32.656635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455837, -0.366919, 0.810915,
		0.741300, -0.347755, -0.574056,
		0.492632, 0.862807, 0.113477,
		25.936884, 35.258240, 32.690678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219263, 34.369972, 32.835545>,  <25.592043, 34.654274, 32.611244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219263, 34.369972, 32.835545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248018, 34.752678, 32.948288>,  <26.265270, 34.982300, 33.015934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248018, 34.752678, 32.948288>,  <26.219263, 34.369972, 32.835545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248018, 34.752678, 32.948288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567759, -0.271589, 0.777103,
		0.820050, 0.104163, -0.562733,
		0.071886, 0.956760, 0.281856,
		26.269585, 35.039707, 33.032845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817904, 34.350166, 33.153046>,  <26.219263, 34.369972, 32.835545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817904, 34.350166, 33.153046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.624039, 34.672951, 33.288048>,  <26.507719, 34.866623, 33.369049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.624039, 34.672951, 33.288048>,  <26.817904, 34.350166, 33.153046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624039, 34.672951, 33.288048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373443, -0.158025, 0.914094,
		0.790976, 0.569067, -0.224766,
		-0.484662, 0.806964, 0.337508,
		26.478640, 34.915039, 33.389301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292948, 34.810143, 33.539532>,  <26.817904, 34.350166, 33.153046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292948, 34.810143, 33.539532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920540, 34.885357, 33.664654>,  <26.697096, 34.930485, 33.739727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920540, 34.885357, 33.664654>,  <27.292948, 34.810143, 33.539532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920540, 34.885357, 33.664654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302916, -0.079957, 0.949657,
		0.203582, 0.978902, 0.017482,
		-0.931019, 0.188038, 0.312803,
		26.641233, 34.941769, 33.758495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425730, 35.130360, 34.216103>,  <27.292948, 34.810143, 33.539532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425730, 35.130360, 34.216103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034697, 35.046844, 34.227009>,  <26.800077, 34.996735, 34.233551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034697, 35.046844, 34.227009>,  <27.425730, 35.130360, 34.216103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034697, 35.046844, 34.227009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105504, -0.373653, 0.921549,
		-0.182222, 0.903765, 0.387304,
		-0.977581, -0.208788, 0.027263,
		26.741423, 34.984207, 34.235188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162447, 34.920307, 34.118698>,  <27.425730, 35.130360, 34.216103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162447, 34.920307, 34.118698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494165, 35.101952, 33.988434>,  <28.693197, 35.210938, 33.910275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.494165, 35.101952, 33.988434>,  <28.162447, 34.920307, 34.118698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494165, 35.101952, 33.988434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430862, 0.148514, -0.890113,
		-0.355843, 0.878481, 0.318820,
		0.829297, 0.454108, -0.325657,
		28.742954, 35.238186, 33.890736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093954, 35.509937, 33.673779>,  <28.162447, 34.920307, 34.118698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093954, 35.509937, 33.673779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449106, 35.352627, 33.578278>,  <28.662197, 35.258240, 33.520977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449106, 35.352627, 33.578278>,  <28.093954, 35.509937, 33.673779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449106, 35.352627, 33.578278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198383, 0.140950, -0.969937,
		0.415105, 0.908552, 0.047127,
		0.887881, -0.393276, -0.238750,
		28.715471, 35.234646, 33.506653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198256, 35.826107, 33.000572>,  <28.093954, 35.509937, 33.673779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198256, 35.826107, 33.000572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.465733, 35.528748, 32.994740>,  <28.626219, 35.350334, 32.991238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.465733, 35.528748, 32.994740>,  <28.198256, 35.826107, 33.000572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465733, 35.528748, 32.994740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121574, -0.089963, -0.988497,
		0.733533, 0.662773, -0.150535,
		0.668692, -0.743397, -0.014586,
		28.666340, 35.305729, 32.990364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665689, 35.973343, 32.514484>,  <28.198256, 35.826107, 33.000572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665689, 35.973343, 32.514484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688272, 35.575573, 32.550129>,  <28.701822, 35.336910, 32.571514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688272, 35.575573, 32.550129>,  <28.665689, 35.973343, 32.514484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688272, 35.575573, 32.550129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181354, -0.097984, -0.978524,
		0.981796, 0.039084, -0.185874,
		0.056458, -0.994420, 0.089113,
		28.705210, 35.277248, 32.576862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122890, 35.839947, 32.005478>,  <28.665689, 35.973343, 32.514484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122890, 35.839947, 32.005478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934498, 35.505260, 32.117249>,  <28.821463, 35.304447, 32.184311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934498, 35.505260, 32.117249>,  <29.122890, 35.839947, 32.005478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934498, 35.505260, 32.117249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023735, -0.304624, -0.952177,
		0.881823, -0.455091, 0.123613,
		-0.470982, -0.836718, 0.279426,
		28.793203, 35.254246, 32.201077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445400, 35.294334, 31.680292>,  <29.122890, 35.839947, 32.005478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445400, 35.294334, 31.680292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073641, 35.176834, 31.769670>,  <28.850586, 35.106335, 31.823298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073641, 35.176834, 31.769670>,  <29.445400, 35.294334, 31.680292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073641, 35.176834, 31.769670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113313, -0.349077, -0.930218,
		0.351257, -0.889862, 0.291145,
		-0.929397, -0.293755, 0.223448,
		28.794821, 35.088707, 31.836704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365938, 34.712223, 31.225685>,  <29.445400, 35.294334, 31.680292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365938, 34.712223, 31.225685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.997570, 34.796993, 31.356524>,  <28.776548, 34.847855, 31.435026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.997570, 34.796993, 31.356524>,  <29.365938, 34.712223, 31.225685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997570, 34.796993, 31.356524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377088, -0.272330, -0.885235,
		-0.098521, -0.938577, 0.330707,
		-0.920922, 0.211920, 0.327096,
		28.721292, 34.860569, 31.454653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942528, 34.254395, 30.814005>,  <29.365938, 34.712223, 31.225685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942528, 34.254395, 30.814005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.690218, 34.527489, 30.961517>,  <28.538832, 34.691345, 31.050024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.690218, 34.527489, 30.961517>,  <28.942528, 34.254395, 30.814005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690218, 34.527489, 30.961517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639196, -0.187719, -0.745781,
		-0.439943, -0.706143, 0.554809,
		-0.630776, 0.682733, 0.368778,
		28.500984, 34.732307, 31.072151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320694, 33.938419, 30.810833>,  <28.942528, 34.254395, 30.814005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320694, 33.938419, 30.810833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275654, 34.335136, 30.786633>,  <28.248629, 34.573166, 30.772112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275654, 34.335136, 30.786633>,  <28.320694, 33.938419, 30.810833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275654, 34.335136, 30.786633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424295, -0.103052, -0.899641,
		-0.898496, -0.075630, 0.432418,
		-0.112601, 0.991797, -0.060502,
		28.241873, 34.632675, 30.768482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692732, 34.082970, 30.591076>,  <28.320694, 33.938419, 30.810833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692732, 34.082970, 30.591076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.895044, 34.406784, 30.471853>,  <28.016432, 34.601074, 30.400320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.895044, 34.406784, 30.471853>,  <27.692732, 34.082970, 30.591076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895044, 34.406784, 30.471853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446020, -0.050347, -0.893606,
		-0.738412, 0.584908, 0.335605,
		0.505780, 0.809536, -0.298058,
		28.046778, 34.649643, 30.382437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348282, 34.325443, 30.041304>,  <27.692732, 34.082970, 30.591076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348282, 34.325443, 30.041304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677711, 34.546940, 29.992155>,  <27.875368, 34.679836, 29.962666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677711, 34.546940, 29.992155>,  <27.348282, 34.325443, 30.041304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677711, 34.546940, 29.992155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197129, 0.076308, -0.977403,
		-0.531854, 0.829184, 0.172004,
		0.823573, 0.553743, -0.122872,
		27.924784, 34.713062, 29.955294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029896, 34.876598, 29.700840>,  <27.348282, 34.325443, 30.041304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029896, 34.876598, 29.700840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422750, 34.852886, 29.629402>,  <27.658463, 34.838657, 29.586540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.422750, 34.852886, 29.629402>,  <27.029896, 34.876598, 29.700840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422750, 34.852886, 29.629402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175467, 0.054358, -0.982984,
		0.067979, 0.996760, 0.042985,
		0.982136, -0.059280, -0.178593,
		27.717392, 34.835102, 29.575825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170618, 35.451576, 29.242035>,  <27.029896, 34.876598, 29.700840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170618, 35.451576, 29.242035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.479015, 35.199219, 29.207298>,  <27.664053, 35.047806, 29.186457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.479015, 35.199219, 29.207298>,  <27.170618, 35.451576, 29.242035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479015, 35.199219, 29.207298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034815, 0.094406, -0.994925,
		0.635891, 0.770104, 0.050822,
		0.770993, -0.630894, -0.086843,
		27.710314, 35.009949, 29.181246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713137, 35.858356, 28.818651>,  <27.170618, 35.451576, 29.242035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713137, 35.858356, 28.818651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792845, 35.467010, 28.796417>,  <27.840670, 35.232201, 28.783077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792845, 35.467010, 28.796417>,  <27.713137, 35.858356, 28.818651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792845, 35.467010, 28.796417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075002, 0.041328, -0.996327,
		0.977070, 0.202707, -0.065144,
		0.199270, -0.978367, -0.055583,
		27.852625, 35.173500, 28.779741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164846, 35.773102, 28.169088>,  <27.713137, 35.858356, 28.818651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164846, 35.773102, 28.169088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005684, 35.411091, 28.229216>,  <27.910187, 35.193886, 28.265291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.005684, 35.411091, 28.229216>,  <28.164846, 35.773102, 28.169088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005684, 35.411091, 28.229216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274084, -0.039095, -0.960911,
		0.875527, -0.423554, -0.232497,
		-0.397908, -0.905027, 0.150318,
		27.886311, 35.139584, 28.274311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468477, 35.381985, 27.664249>,  <28.164846, 35.773102, 28.169088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468477, 35.381985, 27.664249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155107, 35.170406, 27.794764>,  <27.967085, 35.043461, 27.873072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155107, 35.170406, 27.794764>,  <28.468477, 35.381985, 27.664249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155107, 35.170406, 27.794764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170965, -0.321328, -0.931407,
		0.597508, -0.785471, 0.161305,
		-0.783425, -0.528946, 0.326284,
		27.920080, 35.011723, 27.892649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617527, 34.527763, 27.665102>,  <28.468477, 35.381985, 27.664249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617527, 34.527763, 27.665102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226633, 34.608261, 27.638222>,  <27.992098, 34.656559, 27.622093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226633, 34.608261, 27.638222>,  <28.617527, 34.527763, 27.665102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226633, 34.608261, 27.638222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029275, -0.441595, -0.896737,
		-0.210136, -0.874354, 0.437433,
		-0.977234, 0.201242, -0.067198,
		27.933462, 34.668633, 27.618063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313446, 33.945061, 27.256332>,  <28.617527, 34.527763, 27.665102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313446, 33.945061, 27.256332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001532, 34.195427, 27.251223>,  <27.814383, 34.345646, 27.248156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001532, 34.195427, 27.251223>,  <28.313446, 33.945061, 27.256332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001532, 34.195427, 27.251223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253499, -0.334345, -0.907718,
		-0.572427, -0.704586, 0.419387,
		-0.779785, 0.625917, -0.012776,
		27.767595, 34.383202, 27.247391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759130, 33.549576, 26.938801>,  <28.313446, 33.945061, 27.256332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759130, 33.549576, 26.938801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617840, 33.922821, 26.911884>,  <27.533066, 34.146770, 26.895735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617840, 33.922821, 26.911884>,  <27.759130, 33.549576, 26.938801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617840, 33.922821, 26.911884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273705, -0.171856, -0.946335,
		-0.894605, -0.315850, 0.316103,
		-0.353225, 0.933115, -0.067294,
		27.511873, 34.202755, 26.891697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941633, 33.567368, 26.730175>,  <27.759130, 33.549576, 26.938801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941633, 33.567368, 26.730175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.136965, 33.898888, 26.620899>,  <27.254164, 34.097797, 26.555334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.136965, 33.898888, 26.620899>,  <26.941633, 33.567368, 26.730175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136965, 33.898888, 26.620899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439907, -0.036576, -0.897298,
		-0.753669, 0.558355, 0.346732,
		0.488328, 0.828796, -0.273191,
		27.283463, 34.147526, 26.538942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464903, 33.907913, 26.398645>,  <26.941633, 33.567368, 26.730175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464903, 33.907913, 26.398645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819567, 34.050209, 26.280472>,  <27.032366, 34.135586, 26.209568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.819567, 34.050209, 26.280472>,  <26.464903, 33.907913, 26.398645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819567, 34.050209, 26.280472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349210, 0.096313, -0.932082,
		-0.303124, 0.929609, 0.209624,
		0.886661, 0.355739, -0.295434,
		27.085566, 34.156929, 26.191841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.299206, 32.525867, 44.561771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002937, 32.306957, 44.717663>,  <39.825176, 32.175610, 44.811199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.002937, 32.306957, 44.717663>,  <40.299206, 32.525867, 44.561771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002937, 32.306957, 44.717663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364521, 0.159941, 0.917357,
		-0.564383, 0.821526, 0.081030,
		-0.740673, -0.547278, 0.389731,
		39.780735, 32.142773, 44.834583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003773, 32.859993, 45.090237>,  <40.299206, 32.525867, 44.561771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003773, 32.859993, 45.090237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895592, 32.488277, 45.190861>,  <39.830685, 32.265247, 45.251236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895592, 32.488277, 45.190861>,  <40.003773, 32.859993, 45.090237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895592, 32.488277, 45.190861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272841, 0.176598, 0.945712,
		-0.923263, 0.324402, 0.205787,
		-0.270449, -0.929288, 0.251557,
		39.814457, 32.209492, 45.266327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741940, 32.902695, 45.748669>,  <40.003773, 32.859993, 45.090237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741940, 32.902695, 45.748669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775402, 32.505505, 45.715214>,  <39.795479, 32.267189, 45.695141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775402, 32.505505, 45.715214>,  <39.741940, 32.902695, 45.748669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775402, 32.505505, 45.715214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089312, -0.076118, 0.993091,
		-0.992484, -0.090547, 0.082317,
		0.083656, -0.992979, -0.083633,
		39.800499, 32.207611, 45.690125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218578, 32.538261, 46.212585>,  <39.741940, 32.902695, 45.748669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218578, 32.538261, 46.212585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.506168, 32.267368, 46.150059>,  <39.678722, 32.104832, 46.112541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.506168, 32.267368, 46.150059>,  <39.218578, 32.538261, 46.212585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506168, 32.267368, 46.150059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049902, -0.274621, 0.960257,
		-0.693245, -0.682598, -0.231240,
		0.718973, -0.677232, -0.156316,
		39.721859, 32.064198, 46.103165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055157, 31.954477, 46.428806>,  <39.218578, 32.538261, 46.212585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055157, 31.954477, 46.428806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444901, 31.865452, 46.442051>,  <39.678745, 31.812037, 46.449997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.444901, 31.865452, 46.442051>,  <39.055157, 31.954477, 46.428806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444901, 31.865452, 46.442051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085599, -0.230528, 0.969293,
		-0.208093, -0.947272, -0.243668,
		0.974356, -0.222561, 0.033114,
		39.737206, 31.798683, 46.451984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168091, 31.232561, 46.750900>,  <39.055157, 31.954477, 46.428806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168091, 31.232561, 46.750900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.526077, 31.407213, 46.787518>,  <39.740871, 31.512005, 46.809490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.526077, 31.407213, 46.787518>,  <39.168091, 31.232561, 46.750900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526077, 31.407213, 46.787518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125795, -0.443866, 0.887220,
		0.428022, -0.782519, -0.452173,
		0.894971, 0.436631, 0.091547,
		39.794567, 31.538202, 46.814983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539478, 30.708120, 46.904995>,  <39.168091, 31.232561, 46.750900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539478, 30.708120, 46.904995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735710, 31.029886, 47.039009>,  <39.853451, 31.222946, 47.119419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735710, 31.029886, 47.039009>,  <39.539478, 30.708120, 46.904995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735710, 31.029886, 47.039009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162684, -0.462269, 0.871688,
		0.856076, -0.373126, -0.357645,
		0.490578, 0.804415, 0.335036,
		39.882885, 31.271212, 47.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984951, 30.527502, 47.504913>,  <39.539478, 30.708120, 46.904995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984951, 30.527502, 47.504913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000668, 30.924210, 47.553658>,  <40.010098, 31.162233, 47.582905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000668, 30.924210, 47.553658>,  <39.984951, 30.527502, 47.504913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000668, 30.924210, 47.553658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146262, -0.126349, 0.981144,
		0.988465, -0.020726, -0.150022,
		0.039290, 0.991769, 0.121860,
		40.012455, 31.221741, 47.590214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499573, 30.688053, 48.031178>,  <39.984951, 30.527502, 47.504913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499573, 30.688053, 48.031178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.273735, 31.016544, 47.998138>,  <40.138233, 31.213638, 47.978313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.273735, 31.016544, 47.998138>,  <40.499573, 30.688053, 48.031178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273735, 31.016544, 47.998138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041548, 0.128226, 0.990874,
		0.824324, 0.556008, -0.106516,
		-0.564592, 0.821227, -0.082599,
		40.104359, 31.262913, 47.973358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880711, 31.154922, 48.420631>,  <40.499573, 30.688053, 48.031178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880711, 31.154922, 48.420631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.491207, 31.243944, 48.401581>,  <40.257507, 31.297358, 48.390148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.491207, 31.243944, 48.401581>,  <40.880711, 31.154922, 48.420631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491207, 31.243944, 48.401581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049151, -0.001303, 0.998791,
		0.222223, 0.974920, 0.012207,
		-0.973756, 0.222554, -0.047629,
		40.199081, 31.310711, 48.387291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799255, 31.673050, 48.979889>,  <40.880711, 31.154922, 48.420631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799255, 31.673050, 48.979889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433636, 31.537312, 48.891022>,  <40.214264, 31.455868, 48.837700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.433636, 31.537312, 48.891022>,  <40.799255, 31.673050, 48.979889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433636, 31.537312, 48.891022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247637, 0.033083, 0.968288,
		-0.321235, 0.940079, -0.114274,
		-0.914048, -0.339347, -0.222171,
		40.159420, 31.435507, 48.824371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498482, 32.073204, 49.471325>,  <40.799255, 31.673050, 48.979889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498482, 32.073204, 49.471325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.249695, 31.780460, 49.359943>,  <40.100422, 31.604815, 49.293114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.249695, 31.780460, 49.359943>,  <40.498482, 32.073204, 49.471325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249695, 31.780460, 49.359943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145659, -0.241267, 0.959465,
		-0.769377, 0.637315, 0.043457,
		-0.621966, -0.731861, -0.278456,
		40.063107, 31.560902, 49.276405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840416, 32.201130, 49.791874>,  <40.498482, 32.073204, 49.471325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840416, 32.201130, 49.791874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873951, 31.814905, 49.693356>,  <39.894073, 31.583170, 49.634243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873951, 31.814905, 49.693356>,  <39.840416, 32.201130, 49.791874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873951, 31.814905, 49.693356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201362, -0.258483, 0.944796,
		-0.975922, -0.029619, -0.216099,
		0.083842, -0.965562, -0.246296,
		39.899105, 31.525236, 49.619469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975506, 32.004936, 50.498528>,  <39.840416, 32.201130, 49.791874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975506, 32.004936, 50.498528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780571, 32.231979, 50.763958>,  <39.663612, 32.368206, 50.923214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780571, 32.231979, 50.763958>,  <39.975506, 32.004936, 50.498528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780571, 32.231979, 50.763958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466272, 0.473363, -0.747341,
		-0.738307, -0.673608, 0.033974,
		-0.487333, 0.567608, 0.663572,
		39.634373, 32.402260, 50.963028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273335, 32.123730, 50.364445>,  <39.975506, 32.004936, 50.498528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273335, 32.123730, 50.364445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408508, 32.449928, 50.552387>,  <39.489613, 32.645645, 50.665154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408508, 32.449928, 50.552387>,  <39.273335, 32.123730, 50.364445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408508, 32.449928, 50.552387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235113, 0.556549, -0.796853,
		-0.911329, 0.158817, 0.379812,
		0.337938, 0.815494, 0.469859,
		39.509892, 32.694576, 50.693344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791782, 32.635323, 50.271305>,  <39.273335, 32.123730, 50.364445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791782, 32.635323, 50.271305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140137, 32.811928, 50.357681>,  <39.349148, 32.917892, 50.409508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140137, 32.811928, 50.357681>,  <38.791782, 32.635323, 50.271305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140137, 32.811928, 50.357681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148266, 0.654887, -0.741040,
		-0.468591, 0.613344, 0.635792,
		0.870884, 0.441512, 0.215936,
		39.401402, 32.944382, 50.422462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634663, 33.376183, 50.348816>,  <38.791782, 32.635323, 50.271305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634663, 33.376183, 50.348816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019470, 33.337078, 50.246861>,  <39.250355, 33.313614, 50.185688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019470, 33.337078, 50.246861>,  <38.634663, 33.376183, 50.348816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019470, 33.337078, 50.246861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168983, 0.520066, -0.837243,
		0.214409, 0.848513, 0.483791,
		0.962015, -0.097760, -0.254891,
		39.308075, 33.307751, 50.170395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639591, 33.849037, 49.809746>,  <38.634663, 33.376183, 50.348816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639591, 33.849037, 49.809746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004654, 33.692287, 49.763298>,  <39.223694, 33.598236, 49.735432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004654, 33.692287, 49.763298>,  <38.639591, 33.849037, 49.809746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004654, 33.692287, 49.763298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013928, 0.254109, -0.967075,
		0.408482, 0.884228, 0.226457,
		0.912660, -0.391879, -0.116115,
		39.278450, 33.574722, 49.728462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961926, 34.303749, 49.487328>,  <38.639591, 33.849037, 49.809746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961926, 34.303749, 49.487328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.200191, 33.991711, 49.410759>,  <39.343151, 33.804489, 49.364819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.200191, 33.991711, 49.410759>,  <38.961926, 34.303749, 49.487328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200191, 33.991711, 49.410759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188454, 0.367387, -0.910776,
		0.780815, 0.506440, 0.365850,
		0.595662, -0.780093, -0.191421,
		39.378891, 33.757683, 49.353333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710957, 34.521618, 49.236343>,  <38.961926, 34.303749, 49.487328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710957, 34.521618, 49.236343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608727, 34.153717, 49.117184>,  <39.547390, 33.932976, 49.045689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608727, 34.153717, 49.117184>,  <39.710957, 34.521618, 49.236343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608727, 34.153717, 49.117184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008748, 0.310317, -0.950593,
		0.966750, -0.240340, -0.087355,
		-0.255573, -0.919750, -0.297897,
		39.532055, 33.877792, 49.027813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051247, 34.508999, 48.638237>,  <39.710957, 34.521618, 49.236343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051247, 34.508999, 48.638237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.818462, 34.186123, 48.598717>,  <39.678791, 33.992397, 48.575005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.818462, 34.186123, 48.598717>,  <40.051247, 34.508999, 48.638237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818462, 34.186123, 48.598717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074059, 0.173593, -0.982029,
		0.809838, -0.564184, -0.160804,
		-0.581960, -0.807194, -0.098799,
		39.643875, 33.943966, 48.569077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367256, 34.054489, 48.115391>,  <40.051247, 34.508999, 48.638237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367256, 34.054489, 48.115391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.980064, 33.957561, 48.141632>,  <39.747749, 33.899406, 48.157375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.980064, 33.957561, 48.141632>,  <40.367256, 34.054489, 48.115391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980064, 33.957561, 48.141632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066542, -0.004312, -0.997774,
		0.242060, -0.970187, -0.011950,
		-0.967977, -0.242317, 0.065602,
		39.689671, 33.884865, 48.161312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242390, 33.647976, 47.521469>,  <40.367256, 34.054489, 48.115391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242390, 33.647976, 47.521469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864037, 33.717579, 47.631031>,  <39.637024, 33.759338, 47.696766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.864037, 33.717579, 47.631031>,  <40.242390, 33.647976, 47.521469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864037, 33.717579, 47.631031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267897, 0.057582, -0.961725,
		-0.183116, -0.983060, -0.007850,
		-0.945886, 0.174004, 0.273903,
		39.580273, 33.769779, 47.713203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780422, 33.134476, 47.140247>,  <40.242390, 33.647976, 47.521469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780422, 33.134476, 47.140247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.534801, 33.428303, 47.255726>,  <39.387428, 33.604599, 47.325012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.534801, 33.428303, 47.255726>,  <39.780422, 33.134476, 47.140247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534801, 33.428303, 47.255726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629776, -0.235536, -0.740206,
		-0.475736, -0.636339, 0.607246,
		-0.614051, 0.734571, 0.288698,
		39.350586, 33.648674, 47.342335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119953, 32.883492, 47.125248>,  <39.780422, 33.134476, 47.140247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119953, 32.883492, 47.125248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099808, 33.280666, 47.082268>,  <39.087719, 33.518970, 47.056480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.099808, 33.280666, 47.082268>,  <39.119953, 32.883492, 47.125248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099808, 33.280666, 47.082268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385020, -0.118577, -0.915259,
		-0.921533, -0.004724, 0.388271,
		-0.050364, 0.992934, -0.107454,
		39.084698, 33.578545, 47.050030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367451, 33.016670, 46.733017>,  <39.119953, 32.883492, 47.125248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367451, 33.016670, 46.733017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591831, 33.344173, 46.684074>,  <38.726460, 33.540676, 46.654709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591831, 33.344173, 46.684074>,  <38.367451, 33.016670, 46.733017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591831, 33.344173, 46.684074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435693, 0.166310, -0.884598,
		-0.703918, 0.549530, 0.450018,
		0.560955, 0.818754, -0.122357,
		38.760117, 33.589798, 46.647366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857983, 33.407948, 46.272366>,  <38.367451, 33.016670, 46.733017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857983, 33.407948, 46.272366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205212, 33.605087, 46.248543>,  <38.413548, 33.723373, 46.234249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205212, 33.605087, 46.248543>,  <37.857983, 33.407948, 46.272366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205212, 33.605087, 46.248543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230065, 0.293068, -0.927999,
		-0.439912, 0.819272, 0.367792,
		0.868071, 0.492854, -0.059562,
		38.465633, 33.752945, 46.230675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630394, 34.043209, 45.936722>,  <37.857983, 33.407948, 46.272366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630394, 34.043209, 45.936722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028709, 34.028633, 45.903076>,  <38.267700, 34.019886, 45.882889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028709, 34.028633, 45.903076>,  <37.630394, 34.043209, 45.936722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028709, 34.028633, 45.903076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064520, 0.373238, -0.925489,
		0.065124, 0.927020, 0.369315,
		0.995789, -0.036443, -0.084118,
		38.327446, 34.017700, 45.877842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177181, 34.540657, 46.295135>,  <37.630394, 34.043209, 45.936722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177181, 34.540657, 46.295135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823090, 34.355194, 46.280197>,  <36.610634, 34.243916, 46.271233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823090, 34.355194, 46.280197>,  <37.177181, 34.540657, 46.295135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823090, 34.355194, 46.280197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012519, -0.104012, 0.994497,
		-0.464995, 0.879886, 0.097879,
		-0.885225, -0.463661, -0.037350,
		36.557522, 34.216095, 46.268993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776886, 34.623283, 46.894238>,  <37.177181, 34.540657, 46.295135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776886, 34.623283, 46.894238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579304, 34.301739, 46.761684>,  <36.460754, 34.108810, 46.682152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579304, 34.301739, 46.761684>,  <36.776886, 34.623283, 46.894238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579304, 34.301739, 46.761684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020574, -0.370208, 0.928721,
		-0.869243, 0.465566, 0.166329,
		-0.493957, -0.803862, -0.331379,
		36.431118, 34.060581, 46.662270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241180, 34.604374, 47.422859>,  <36.776886, 34.623283, 46.894238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241180, 34.604374, 47.422859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215126, 34.237659, 47.265247>,  <36.199493, 34.017632, 47.170681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215126, 34.237659, 47.265247>,  <36.241180, 34.604374, 47.422859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215126, 34.237659, 47.265247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118068, -0.399170, 0.909243,
		-0.990867, 0.012699, 0.134242,
		-0.065132, -0.916789, -0.394026,
		36.195587, 33.962624, 47.147041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699306, 34.241802, 47.740261>,  <36.241180, 34.604374, 47.422859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699306, 34.241802, 47.740261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931328, 33.951756, 47.591808>,  <36.070541, 33.777725, 47.502735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931328, 33.951756, 47.591808>,  <35.699306, 34.241802, 47.740261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931328, 33.951756, 47.591808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030827, -0.474827, 0.879539,
		-0.813993, -0.498740, -0.297779,
		0.580055, -0.725119, -0.371131,
		36.105343, 33.734219, 47.480469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490398, 33.641983, 48.020424>,  <35.699306, 34.241802, 47.740261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490398, 33.641983, 48.020424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851013, 33.529408, 47.888958>,  <36.067383, 33.461864, 47.810078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851013, 33.529408, 47.888958>,  <35.490398, 33.641983, 48.020424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851013, 33.529408, 47.888958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174275, -0.459065, 0.871142,
		-0.396048, -0.842647, -0.364818,
		0.901540, -0.281436, -0.328664,
		36.121475, 33.444977, 47.790359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620159, 32.939701, 48.343071>,  <35.490398, 33.641983, 48.020424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620159, 32.939701, 48.343071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985985, 33.073357, 48.251923>,  <36.205479, 33.153549, 48.197231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985985, 33.073357, 48.251923>,  <35.620159, 32.939701, 48.343071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985985, 33.073357, 48.251923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390174, -0.580580, 0.714627,
		0.106486, -0.742481, -0.661349,
		0.914563, 0.334139, -0.227873,
		36.260353, 33.173599, 48.183559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012138, 32.327599, 48.412529>,  <35.620159, 32.939701, 48.343071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012138, 32.327599, 48.412529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257030, 32.642017, 48.446728>,  <36.403965, 32.830669, 48.467247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.257030, 32.642017, 48.446728>,  <36.012138, 32.327599, 48.412529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257030, 32.642017, 48.446728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389667, -0.394036, 0.832403,
		0.687994, -0.476307, -0.547536,
		0.612229, 0.786045, 0.085493,
		36.440701, 32.877831, 48.472374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045551, 31.638847, 48.198303>,  <36.012138, 32.327599, 48.412529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045551, 31.638847, 48.198303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697861, 31.450241, 48.257786>,  <35.489246, 31.337078, 48.293476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697861, 31.450241, 48.257786>,  <36.045551, 31.638847, 48.198303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697861, 31.450241, 48.257786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259159, 0.178394, -0.949216,
		0.421043, -0.863625, -0.277263,
		-0.869229, -0.471516, 0.148705,
		35.437092, 31.308786, 48.302399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820415, 31.274887, 47.518311>,  <36.045551, 31.638847, 48.198303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820415, 31.274887, 47.518311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487156, 31.303007, 47.737736>,  <35.287201, 31.319880, 47.869392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487156, 31.303007, 47.737736>,  <35.820415, 31.274887, 47.518311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487156, 31.303007, 47.737736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551996, -0.044504, -0.832658,
		-0.034097, -0.996535, 0.075867,
		-0.833149, 0.070270, 0.548566,
		35.237213, 31.324097, 47.902306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371803, 30.800409, 47.180901>,  <35.820415, 31.274887, 47.518311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371803, 30.800409, 47.180901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170246, 31.062531, 47.405994>,  <35.049313, 31.219803, 47.541050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170246, 31.062531, 47.405994>,  <35.371803, 30.800409, 47.180901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170246, 31.062531, 47.405994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675485, 0.107080, -0.729557,
		-0.538338, -0.747737, 0.388691,
		-0.503896, 0.655303, 0.562731,
		35.019077, 31.259121, 47.574814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588501, 30.580910, 47.202065>,  <35.371803, 30.800409, 47.180901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588501, 30.580910, 47.202065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650150, 30.973295, 47.249325>,  <34.687141, 31.208727, 47.277679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.650150, 30.973295, 47.249325>,  <34.588501, 30.580910, 47.202065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650150, 30.973295, 47.249325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629704, 0.189669, -0.753325,
		-0.761392, 0.041709, 0.646948,
		0.154126, 0.980962, 0.118148,
		34.696388, 31.267584, 47.284771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963879, 30.947273, 47.028191>,  <34.588501, 30.580910, 47.202065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963879, 30.947273, 47.028191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236176, 31.240175, 47.020271>,  <34.399555, 31.415916, 47.015522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.236176, 31.240175, 47.020271>,  <33.963879, 30.947273, 47.028191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236176, 31.240175, 47.020271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447413, 0.394241, -0.802743,
		-0.580006, 0.555320, 0.595997,
		0.680745, 0.732253, -0.019795,
		34.440399, 31.459850, 47.014332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503353, 31.491631, 46.865353>,  <33.963879, 30.947273, 47.028191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503353, 31.491631, 46.865353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864460, 31.644348, 46.786118>,  <34.081123, 31.735979, 46.738579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864460, 31.644348, 46.786118>,  <33.503353, 31.491631, 46.865353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864460, 31.644348, 46.786118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359184, 0.415825, -0.835510,
		-0.236623, 0.825424, 0.512528,
		0.902772, 0.381793, -0.198085,
		34.135292, 31.758886, 46.726692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500244, 32.316936, 46.773361>,  <33.503353, 31.491631, 46.865353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500244, 32.316936, 46.773361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809803, 32.157688, 46.576347>,  <33.995537, 32.062138, 46.458141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809803, 32.157688, 46.576347>,  <33.500244, 32.316936, 46.773361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809803, 32.157688, 46.576347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225248, 0.553822, -0.801589,
		0.591906, 0.731286, 0.338922,
		0.773893, -0.398124, -0.492531,
		34.041969, 32.038250, 46.428589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.033653, 29.386196, 49.254856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.258568, 29.607306, 49.008839>,  <38.393517, 29.739971, 48.861229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.258568, 29.607306, 49.008839>,  <38.033653, 29.386196, 49.254856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258568, 29.607306, 49.008839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491744, -0.374463, -0.786108,
		-0.664851, 0.744459, 0.061269,
		0.562282, 0.552774, -0.615045,
		38.427254, 29.773138, 48.824326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521034, 29.606541, 48.704067>,  <38.033653, 29.386196, 49.254856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521034, 29.606541, 48.704067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888115, 29.662525, 48.555351>,  <38.108364, 29.696115, 48.466122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.888115, 29.662525, 48.555351>,  <37.521034, 29.606541, 48.704067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888115, 29.662525, 48.555351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321698, -0.287284, -0.902207,
		-0.233084, 0.947565, -0.218616,
		0.917705, 0.139962, -0.371791,
		38.163425, 29.704514, 48.443813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409828, 29.927397, 48.114624>,  <37.521034, 29.606541, 48.704067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409828, 29.927397, 48.114624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762402, 29.738476, 48.114632>,  <37.973946, 29.625124, 48.114635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762402, 29.738476, 48.114632>,  <37.409828, 29.927397, 48.114624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762402, 29.738476, 48.114632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193271, -0.360735, -0.912423,
		0.430948, 0.804239, -0.409247,
		0.881437, -0.472302, 0.000022,
		38.026833, 29.596785, 48.114639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727085, 30.113508, 47.554111>,  <37.409828, 29.927397, 48.114624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727085, 30.113508, 47.554111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.876099, 29.755880, 47.653595>,  <37.965508, 29.541304, 47.713287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.876099, 29.755880, 47.653595>,  <37.727085, 30.113508, 47.554111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876099, 29.755880, 47.653595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162666, -0.326764, -0.931002,
		0.913649, 0.306377, -0.267166,
		0.372538, -0.894069, 0.248710,
		37.987862, 29.487659, 47.728207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984524, 29.949274, 46.906563>,  <37.727085, 30.113508, 47.554111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984524, 29.949274, 46.906563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003532, 29.608971, 47.115925>,  <38.014938, 29.404789, 47.241543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003532, 29.608971, 47.115925>,  <37.984524, 29.949274, 46.906563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003532, 29.608971, 47.115925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074154, -0.525557, -0.847521,
		0.996114, 0.001464, -0.088062,
		0.047522, -0.850757, 0.523406,
		38.017788, 29.353743, 47.272945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432018, 29.447720, 46.515724>,  <37.984524, 29.949274, 46.906563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432018, 29.447720, 46.515724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.223408, 29.211298, 46.761868>,  <38.098240, 29.069445, 46.909554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.223408, 29.211298, 46.761868>,  <38.432018, 29.447720, 46.515724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223408, 29.211298, 46.761868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291672, -0.554261, -0.779565,
		0.801833, -0.586048, 0.116669,
		-0.521527, -0.591052, 0.615359,
		38.066948, 29.033983, 46.946476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723900, 28.729879, 46.383430>,  <38.432018, 29.447720, 46.515724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723900, 28.729879, 46.383430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348232, 28.742863, 46.520195>,  <38.122833, 28.750652, 46.602253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.348232, 28.742863, 46.520195>,  <38.723900, 28.729879, 46.383430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348232, 28.742863, 46.520195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323472, -0.418188, -0.848814,
		0.115432, -0.907780, 0.403249,
		-0.939170, 0.032460, 0.341914,
		38.066483, 28.752602, 46.622768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536377, 27.978128, 46.155071>,  <38.723900, 28.729879, 46.383430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536377, 27.978128, 46.155071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.212463, 28.200478, 46.230183>,  <38.018116, 28.333887, 46.275249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.212463, 28.200478, 46.230183>,  <38.536377, 27.978128, 46.155071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212463, 28.200478, 46.230183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517532, -0.525932, -0.674950,
		-0.276428, -0.643743, 0.713571,
		-0.809783, 0.555870, 0.187775,
		37.969528, 28.367239, 46.286514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988487, 27.518875, 45.862679>,  <38.536377, 27.978128, 46.155071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988487, 27.518875, 45.862679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.795113, 27.865786, 45.910221>,  <37.679089, 28.073933, 45.938747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.795113, 27.865786, 45.910221>,  <37.988487, 27.518875, 45.862679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795113, 27.865786, 45.910221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620440, -0.243688, -0.745433,
		-0.617533, -0.434107, 0.655900,
		-0.483433, 0.867275, 0.118852,
		37.650082, 28.125969, 45.945877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273544, 27.309736, 45.760002>,  <37.988487, 27.518875, 45.862679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273544, 27.309736, 45.760002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300137, 27.704792, 45.703217>,  <37.316090, 27.941826, 45.669147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.300137, 27.704792, 45.703217>,  <37.273544, 27.309736, 45.760002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300137, 27.704792, 45.703217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618316, -0.070889, -0.782726,
		-0.783113, 0.139812, 0.605959,
		0.066479, 0.987637, -0.141962,
		37.320080, 28.001083, 45.660629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603607, 27.502939, 45.435188>,  <37.273544, 27.309736, 45.760002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603607, 27.502939, 45.435188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840168, 27.806908, 45.327290>,  <36.982105, 27.989288, 45.262550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840168, 27.806908, 45.327290>,  <36.603607, 27.502939, 45.435188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840168, 27.806908, 45.327290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530566, 0.114792, -0.839835,
		-0.607241, 0.639802, 0.471075,
		0.591404, 0.759919, -0.269750,
		37.017590, 28.034883, 45.246365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119381, 28.003586, 45.105423>,  <36.603607, 27.502939, 45.435188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119381, 28.003586, 45.105423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.490372, 28.083277, 44.978874>,  <36.712967, 28.131092, 44.902943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.490372, 28.083277, 44.978874>,  <36.119381, 28.003586, 45.105423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490372, 28.083277, 44.978874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317303, -0.028127, -0.947907,
		-0.197747, 0.979550, 0.037128,
		0.927478, 0.199227, -0.316376,
		36.768616, 28.143045, 44.883961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584385, 28.542089, 45.212212>,  <36.119381, 28.003586, 45.105423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584385, 28.542089, 45.212212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.198357, 28.521305, 45.314922>,  <34.966740, 28.508835, 45.376549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.198357, 28.521305, 45.314922>,  <35.584385, 28.542089, 45.212212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198357, 28.521305, 45.314922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257946, -0.017121, 0.966008,
		-0.045800, 0.998502, 0.029926,
		-0.965073, -0.051963, 0.256776,
		34.908836, 28.505716, 45.391956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527981, 29.049034, 45.798069>,  <35.584385, 28.542089, 45.212212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527981, 29.049034, 45.798069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186817, 28.840818, 45.813969>,  <34.982117, 28.715889, 45.823509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186817, 28.840818, 45.813969>,  <35.527981, 29.049034, 45.798069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186817, 28.840818, 45.813969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091716, -0.074452, 0.992998,
		-0.513934, 0.850586, 0.111243,
		-0.852913, -0.520538, 0.039750,
		34.930943, 28.684656, 45.825893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089172, 29.440136, 46.240387>,  <35.527981, 29.049034, 45.798069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089172, 29.440136, 46.240387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.973442, 29.057343, 46.249123>,  <34.904003, 28.827667, 46.254364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.973442, 29.057343, 46.249123>,  <35.089172, 29.440136, 46.240387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973442, 29.057343, 46.249123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044723, 0.036303, 0.998340,
		-0.956186, 0.287867, -0.053302,
		-0.289324, -0.956982, 0.021838,
		34.886646, 28.770248, 46.255672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533714, 29.414570, 46.717468>,  <35.089172, 29.440136, 46.240387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533714, 29.414570, 46.717468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658585, 29.035685, 46.688255>,  <34.733505, 28.808353, 46.670727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658585, 29.035685, 46.688255>,  <34.533714, 29.414570, 46.717468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658585, 29.035685, 46.688255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100821, -0.109470, 0.988864,
		-0.944660, -0.301334, -0.129673,
		0.312174, -0.947214, -0.073031,
		34.752235, 28.751520, 46.666348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168037, 29.112635, 47.176903>,  <34.533714, 29.414570, 46.717468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168037, 29.112635, 47.176903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.402172, 28.793167, 47.121029>,  <34.542652, 28.601486, 47.087505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.402172, 28.793167, 47.121029>,  <34.168037, 29.112635, 47.176903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402172, 28.793167, 47.121029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051381, -0.208478, 0.976676,
		-0.809164, -0.564503, -0.163066,
		0.585332, -0.798670, -0.139688,
		34.577770, 28.553566, 47.079124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871334, 28.613707, 47.596085>,  <34.168037, 29.112635, 47.176903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871334, 28.613707, 47.596085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.253082, 28.501791, 47.554348>,  <34.482132, 28.434643, 47.529305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.253082, 28.501791, 47.554348>,  <33.871334, 28.613707, 47.596085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253082, 28.501791, 47.554348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093680, -0.051246, 0.994283,
		-0.283536, -0.958693, -0.022697,
		0.954375, -0.279789, -0.104340,
		34.539394, 28.417854, 47.523045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900837, 28.108240, 48.073502>,  <33.871334, 28.613707, 47.596085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900837, 28.108240, 48.073502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275330, 28.230066, 48.003395>,  <34.500023, 28.303162, 47.961330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275330, 28.230066, 48.003395>,  <33.900837, 28.108240, 48.073502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275330, 28.230066, 48.003395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230259, -0.154955, 0.960713,
		0.265439, -0.939803, -0.215202,
		0.936228, 0.304563, -0.175267,
		34.556198, 28.321436, 47.950813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294392, 27.481552, 48.228912>,  <33.900837, 28.108240, 48.073502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294392, 27.481552, 48.228912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526268, 27.807434, 48.223072>,  <34.665394, 28.002964, 48.219566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526268, 27.807434, 48.223072>,  <34.294392, 27.481552, 48.228912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526268, 27.807434, 48.223072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431459, -0.291693, 0.853673,
		0.691233, -0.501167, -0.520604,
		0.579690, 0.814706, -0.014605,
		34.700176, 28.051846, 48.218689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877853, 27.195038, 48.492336>,  <34.294392, 27.481552, 48.228912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877853, 27.195038, 48.492336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924885, 27.591492, 48.517082>,  <34.953106, 27.829365, 48.531929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924885, 27.591492, 48.517082>,  <34.877853, 27.195038, 48.492336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924885, 27.591492, 48.517082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539061, -0.116019, 0.834238,
		0.834019, -0.064744, -0.547923,
		0.117581, 0.991135, 0.061861,
		34.960159, 27.888832, 48.535641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562218, 27.311678, 48.351997>,  <34.877853, 27.195038, 48.492336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562218, 27.311678, 48.351997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415730, 27.614202, 48.568836>,  <35.327835, 27.795717, 48.698940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415730, 27.614202, 48.568836>,  <35.562218, 27.311678, 48.351997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415730, 27.614202, 48.568836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602480, -0.251254, 0.757555,
		0.709153, 0.604038, -0.363648,
		-0.366224, 0.756313, 0.542098,
		35.305862, 27.841097, 48.731464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125721, 27.617994, 48.732643>,  <35.562218, 27.311678, 48.351997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125721, 27.617994, 48.732643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.816563, 27.763117, 48.940872>,  <35.631065, 27.850191, 49.065811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.816563, 27.763117, 48.940872>,  <36.125721, 27.617994, 48.732643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816563, 27.763117, 48.940872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460022, -0.244691, 0.853526,
		0.437045, 0.899165, 0.022223,
		-0.772898, 0.362807, 0.520577,
		35.584694, 27.871960, 49.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381752, 28.114286, 49.273033>,  <36.125721, 27.617994, 48.732643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381752, 28.114286, 49.273033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019566, 27.975004, 49.370094>,  <35.802254, 27.891436, 49.428329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.019566, 27.975004, 49.370094>,  <36.381752, 28.114286, 49.273033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019566, 27.975004, 49.370094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354651, -0.306725, 0.883257,
		-0.233126, 0.885819, 0.401220,
		-0.905469, -0.348203, 0.242651,
		35.747925, 27.870543, 49.442890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241623, 28.459818, 49.852554>,  <36.381752, 28.114286, 49.273033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241623, 28.459818, 49.852554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.015820, 28.129950, 49.866692>,  <35.880337, 27.932030, 49.875172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.015820, 28.129950, 49.866692>,  <36.241623, 28.459818, 49.852554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015820, 28.129950, 49.866692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245392, -0.126793, 0.961097,
		-0.788106, 0.551220, 0.273943,
		-0.564510, -0.824670, 0.035339,
		35.846466, 27.882549, 49.877293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900986, 28.410561, 50.541531>,  <36.241623, 28.459818, 49.852554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900986, 28.410561, 50.541531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.900829, 28.033794, 50.407192>,  <35.900734, 27.807735, 50.326588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.900829, 28.033794, 50.407192>,  <35.900986, 28.410561, 50.541531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900829, 28.033794, 50.407192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418628, -0.305158, 0.855353,
		-0.908158, -0.140261, 0.394432,
		-0.000392, -0.941916, -0.335849,
		35.900711, 27.751219, 50.306438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448879, 28.962866, 50.216579>,  <35.900986, 28.410561, 50.541531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448879, 28.962866, 50.216579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521873, 29.282495, 50.445728>,  <35.565670, 29.474274, 50.583218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521873, 29.282495, 50.445728>,  <35.448879, 28.962866, 50.216579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521873, 29.282495, 50.445728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441865, 0.587152, -0.678239,
		-0.878325, -0.129364, 0.460229,
		0.182484, 0.799073, 0.572872,
		35.576618, 29.522217, 50.617588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923370, 29.381987, 50.133530>,  <35.448879, 28.962866, 50.216579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923370, 29.381987, 50.133530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.191463, 29.636246, 50.286751>,  <35.352322, 29.788801, 50.378685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.191463, 29.636246, 50.286751>,  <34.923370, 29.381987, 50.133530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191463, 29.636246, 50.286751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219584, 0.662886, -0.715797,
		-0.708918, 0.395642, 0.583869,
		0.670238, 0.635650, 0.383055,
		35.392536, 29.826941, 50.401669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591911, 30.004097, 50.104294>,  <34.923370, 29.381987, 50.133530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591911, 30.004097, 50.104294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.977497, 30.109043, 50.121861>,  <35.208851, 30.172010, 50.132401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.977497, 30.109043, 50.121861>,  <34.591911, 30.004097, 50.104294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977497, 30.109043, 50.121861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127114, 0.599338, -0.790339,
		-0.233678, 0.756280, 0.611093,
		0.963969, 0.262364, 0.043919,
		35.266689, 30.187752, 50.135036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594368, 30.745619, 50.073822>,  <34.591911, 30.004097, 50.104294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594368, 30.745619, 50.073822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948097, 30.599224, 49.957874>,  <35.160336, 30.511387, 49.888306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948097, 30.599224, 49.957874>,  <34.594368, 30.745619, 50.073822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948097, 30.599224, 49.957874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051370, 0.540828, -0.839563,
		0.464037, 0.757338, 0.459467,
		0.884325, -0.365985, -0.289869,
		35.213394, 30.489428, 49.870914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018211, 31.287617, 49.922867>,  <34.594368, 30.745619, 50.073822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018211, 31.287617, 49.922867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.205708, 30.997002, 49.721897>,  <35.318207, 30.822634, 49.601315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.205708, 30.997002, 49.721897>,  <35.018211, 31.287617, 49.922867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205708, 30.997002, 49.721897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111513, 0.612896, -0.782255,
		0.876268, 0.310650, 0.368308,
		0.468742, -0.726537, -0.502419,
		35.346329, 30.779041, 49.571171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573257, 31.675848, 49.553696>,  <35.018211, 31.287617, 49.922867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573257, 31.675848, 49.553696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518131, 31.344296, 49.336823>,  <35.485058, 31.145365, 49.206699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.518131, 31.344296, 49.336823>,  <35.573257, 31.675848, 49.553696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518131, 31.344296, 49.336823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059604, 0.553355, -0.830811,
		0.988663, -0.082180, -0.125664,
		-0.137813, -0.828882, -0.542183,
		35.476788, 31.095631, 49.174168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128242, 31.741585, 48.948872>,  <35.573257, 31.675848, 49.553696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128242, 31.741585, 48.948872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.813625, 31.511513, 48.858967>,  <35.624855, 31.373470, 48.805023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.813625, 31.511513, 48.858967>,  <36.128242, 31.741585, 48.948872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813625, 31.511513, 48.858967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075916, 0.451263, -0.889156,
		0.612847, -0.682299, -0.398605,
		-0.786546, -0.575177, -0.224758,
		35.577663, 31.338959, 48.791538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676685, 32.027245, 48.558655>,  <36.128242, 31.741585, 48.948872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676685, 32.027245, 48.558655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.715332, 32.408443, 48.673523>,  <36.738522, 32.637161, 48.742443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.715332, 32.408443, 48.673523>,  <36.676685, 32.027245, 48.558655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715332, 32.408443, 48.673523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274981, -0.302849, 0.912506,
		0.956582, -0.009201, -0.291317,
		0.096621, 0.952994, 0.287170,
		36.744320, 32.694344, 48.759674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360260, 32.115959, 48.907887>,  <36.676685, 32.027245, 48.558655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360260, 32.115959, 48.907887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.133434, 32.423012, 49.027344>,  <36.997341, 32.607243, 49.099018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.133434, 32.423012, 49.027344>,  <37.360260, 32.115959, 48.907887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133434, 32.423012, 49.027344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295496, -0.148844, 0.943678,
		0.768845, 0.623371, -0.142428,
		-0.567062, 0.767629, 0.298642,
		36.963314, 32.653301, 49.116936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820541, 32.480423, 49.291172>,  <37.360260, 32.115959, 48.907887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820541, 32.480423, 49.291172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.461937, 32.610107, 49.411942>,  <37.246773, 32.687920, 49.484402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.461937, 32.610107, 49.411942>,  <37.820541, 32.480423, 49.291172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461937, 32.610107, 49.411942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352697, 0.109893, 0.929262,
		0.268096, 0.939580, -0.212868,
		-0.896510, 0.324210, 0.301925,
		37.192986, 32.707371, 49.502518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055634, 32.879955, 49.779488>,  <37.820541, 32.480423, 49.291172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055634, 32.879955, 49.779488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.656597, 32.872345, 49.806183>,  <37.417175, 32.867779, 49.822201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.656597, 32.872345, 49.806183>,  <38.055634, 32.879955, 49.779488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656597, 32.872345, 49.806183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060664, 0.227904, 0.971792,
		-0.033695, 0.973498, -0.226200,
		-0.997589, -0.019022, 0.066735,
		37.357319, 32.866638, 49.826202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772953, 33.563290, 49.942722>,  <38.055634, 32.879955, 49.779488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772953, 33.563290, 49.942722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.556366, 33.260799, 50.089657>,  <37.426414, 33.079308, 50.177818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.556366, 33.260799, 50.089657>,  <37.772953, 33.563290, 49.942722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556366, 33.260799, 50.089657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245622, 0.275569, 0.929371,
		-0.804039, 0.593453, 0.036533,
		-0.541471, -0.756224, 0.367334,
		37.393925, 33.033932, 50.199856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374088, 33.801193, 50.550285>,  <37.772953, 33.563290, 49.942722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374088, 33.801193, 50.550285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.330784, 33.406044, 50.594818>,  <37.304802, 33.168957, 50.621536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.330784, 33.406044, 50.594818>,  <37.374088, 33.801193, 50.550285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330784, 33.406044, 50.594818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284029, 0.076585, 0.955752,
		-0.952684, 0.135095, 0.272292,
		-0.108263, -0.987869, 0.111332,
		37.298306, 33.109684, 50.628220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958599, 33.643295, 51.204460>,  <37.374088, 33.801193, 50.550285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958599, 33.643295, 51.204460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.158794, 33.303158, 51.139435>,  <37.278912, 33.099075, 51.100422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.158794, 33.303158, 51.139435>,  <36.958599, 33.643295, 51.204460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158794, 33.303158, 51.139435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191713, -0.074248, 0.978639,
		-0.844250, -0.520961, 0.125862,
		0.500488, -0.850345, -0.162559,
		37.308941, 33.048054, 51.090668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733662, 33.193680, 51.749775>,  <36.958599, 33.643295, 51.204460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733662, 33.193680, 51.749775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082584, 33.055668, 51.611195>,  <37.291939, 32.972858, 51.528046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082584, 33.055668, 51.611195>,  <36.733662, 33.193680, 51.749775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082584, 33.055668, 51.611195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310785, -0.155771, 0.937629,
		-0.377480, -0.925575, -0.028649,
		0.872308, -0.345032, -0.346455,
		37.344276, 32.952160, 51.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910755, 32.611862, 52.231915>,  <36.733662, 33.193680, 51.749775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910755, 32.611862, 52.231915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.238960, 32.730404, 52.036392>,  <37.435883, 32.801529, 51.919079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.238960, 32.730404, 52.036392>,  <36.910755, 32.611862, 52.231915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238960, 32.730404, 52.036392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523800, -0.047395, 0.850522,
		0.228891, -0.953900, -0.194120,
		0.820513, 0.296357, -0.488805,
		37.485115, 32.819309, 51.889751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.765385, 36.010254, 36.346653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162815, 35.973537, 36.320190>,  <35.401276, 35.951508, 36.304314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162815, 35.973537, 36.320190>,  <34.765385, 36.010254, 36.346653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162815, 35.973537, 36.320190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030130, -0.348918, 0.936669,
		-0.109064, -0.932647, -0.343911,
		0.993578, -0.091795, -0.066155,
		35.460888, 35.945999, 36.300343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828297, 35.313683, 36.560902>,  <34.765385, 36.010254, 36.346653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828297, 35.313683, 36.560902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179066, 35.495415, 36.623634>,  <35.389526, 35.604454, 36.661274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179066, 35.495415, 36.623634>,  <34.828297, 35.313683, 36.560902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179066, 35.495415, 36.623634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117985, -0.519788, 0.846108,
		0.465932, -0.723465, -0.509417,
		0.876919, 0.454333, 0.156828,
		35.442142, 35.631714, 36.670681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349846, 34.798782, 36.818863>,  <34.828297, 35.313683, 36.560902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349846, 34.798782, 36.818863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459717, 35.159443, 36.952473>,  <35.525639, 35.375839, 37.032639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459717, 35.159443, 36.952473>,  <35.349846, 34.798782, 36.818863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459717, 35.159443, 36.952473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078257, -0.367202, 0.926843,
		0.958346, -0.228445, -0.171424,
		0.274680, 0.901652, 0.334029,
		35.542122, 35.429939, 37.052681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822216, 34.687588, 37.342136>,  <35.349846, 34.798782, 36.818863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822216, 34.687588, 37.342136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714840, 35.068848, 37.397911>,  <35.650414, 35.297604, 37.431377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714840, 35.068848, 37.397911>,  <35.822216, 34.687588, 37.342136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714840, 35.068848, 37.397911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042138, -0.132997, 0.990220,
		0.962373, 0.271695, -0.004461,
		-0.268445, 0.953149, 0.139441,
		35.634308, 35.354794, 37.439743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267078, 34.907597, 37.853588>,  <35.822216, 34.687588, 37.342136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267078, 34.907597, 37.853588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980804, 35.186451, 37.870579>,  <35.809040, 35.353764, 37.880772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980804, 35.186451, 37.870579>,  <36.267078, 34.907597, 37.853588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980804, 35.186451, 37.870579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088632, -0.150980, 0.984555,
		0.692780, 0.700864, 0.169841,
		-0.715682, 0.697133, 0.042477,
		35.766098, 35.395592, 37.883324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461796, 35.366520, 38.359474>,  <36.267078, 34.907597, 37.853588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461796, 35.366520, 38.359474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065620, 35.412300, 38.328659>,  <35.827915, 35.439770, 38.310169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065620, 35.412300, 38.328659>,  <36.461796, 35.366520, 38.359474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065620, 35.412300, 38.328659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095568, -0.166430, 0.981411,
		0.099500, 0.979389, 0.175776,
		-0.990438, 0.114449, -0.077038,
		35.768490, 35.446636, 38.305546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223267, 35.949490, 38.855164>,  <36.461796, 35.366520, 38.359474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223267, 35.949490, 38.855164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904797, 35.716927, 38.788143>,  <35.713715, 35.577389, 38.747932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904797, 35.716927, 38.788143>,  <36.223267, 35.949490, 38.855164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904797, 35.716927, 38.788143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194177, -0.016751, 0.980823,
		-0.573063, 0.813441, -0.099559,
		-0.796175, -0.581406, -0.167551,
		35.665943, 35.542503, 38.737877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716549, 36.303658, 39.256184>,  <36.223267, 35.949490, 38.855164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716549, 36.303658, 39.256184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561733, 35.941200, 39.187946>,  <35.468845, 35.723724, 39.147003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561733, 35.941200, 39.187946>,  <35.716549, 36.303658, 39.256184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561733, 35.941200, 39.187946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321756, -0.040659, 0.945949,
		-0.864104, 0.421006, -0.275822,
		-0.387036, -0.906146, -0.170595,
		35.445621, 35.669357, 39.136768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083916, 36.277534, 39.544239>,  <35.716549, 36.303658, 39.256184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083916, 36.277534, 39.544239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189724, 35.891792, 39.547142>,  <35.253208, 35.660347, 39.548882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189724, 35.891792, 39.547142>,  <35.083916, 36.277534, 39.544239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189724, 35.891792, 39.547142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240325, -0.058634, 0.968920,
		-0.933954, -0.258047, -0.247268,
		0.264525, -0.964352, 0.007253,
		35.269081, 35.602486, 39.549316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543221, 35.871819, 39.943600>,  <35.083916, 36.277534, 39.544239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543221, 35.871819, 39.943600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859505, 35.627956, 39.921329>,  <35.049274, 35.481640, 39.907967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859505, 35.627956, 39.921329>,  <34.543221, 35.871819, 39.943600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859505, 35.627956, 39.921329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123610, -0.248066, 0.960824,
		-0.599579, -0.752854, -0.271508,
		0.790712, -0.609651, -0.055675,
		35.096718, 35.445061, 39.904629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276325, 35.372681, 40.261257>,  <34.543221, 35.871819, 39.943600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276325, 35.372681, 40.261257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672287, 35.318932, 40.279270>,  <34.909866, 35.286682, 40.290077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672287, 35.318932, 40.279270>,  <34.276325, 35.372681, 40.261257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672287, 35.318932, 40.279270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084379, -0.303554, 0.949071,
		-0.113862, -0.943291, -0.311829,
		0.989907, -0.134375, 0.045031,
		34.969257, 35.278618, 40.292778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353661, 34.688763, 40.645309>,  <34.276325, 35.372681, 40.261257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353661, 34.688763, 40.645309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707428, 34.874031, 40.668224>,  <34.919689, 34.985191, 40.681973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707428, 34.874031, 40.668224>,  <34.353661, 34.688763, 40.645309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707428, 34.874031, 40.668224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115773, -0.336638, 0.934490,
		0.452114, -0.819845, -0.351351,
		0.884415, 0.463173, 0.057283,
		34.972752, 35.012981, 40.685410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818157, 34.078606, 40.406464>,  <34.353661, 34.688763, 40.645309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818157, 34.078606, 40.406464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456215, 34.101303, 40.575237>,  <33.239052, 34.114922, 40.676502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456215, 34.101303, 40.575237>,  <33.818157, 34.078606, 40.406464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456215, 34.101303, 40.575237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376467, 0.356119, -0.855249,
		-0.198789, -0.932716, -0.300872,
		-0.904851, 0.056746, 0.421930,
		33.184761, 34.118328, 40.701817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307560, 33.799576, 39.886242>,  <33.818157, 34.078606, 40.406464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307560, 33.799576, 39.886242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093716, 34.023796, 40.139217>,  <32.965408, 34.158329, 40.291000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093716, 34.023796, 40.139217>,  <33.307560, 33.799576, 39.886242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093716, 34.023796, 40.139217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497053, 0.396665, -0.771748,
		-0.683470, -0.726937, 0.066564,
		-0.534609, 0.560552, 0.632435,
		32.933334, 34.191963, 40.328949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657555, 33.756832, 39.551743>,  <33.307560, 33.799576, 39.886242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657555, 33.756832, 39.551743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616615, 34.056946, 39.813000>,  <32.592052, 34.237015, 39.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616615, 34.056946, 39.813000>,  <32.657555, 33.756832, 39.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616615, 34.056946, 39.813000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654375, 0.443742, -0.612280,
		-0.749212, -0.490065, 0.445554,
		-0.102346, 0.750286, 0.653143,
		32.585911, 34.282032, 40.008942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915253, 33.853336, 39.693558>,  <32.657555, 33.756832, 39.551743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915253, 33.853336, 39.693558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096184, 34.193272, 39.801765>,  <32.204742, 34.397232, 39.866688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096184, 34.193272, 39.801765>,  <31.915253, 33.853336, 39.693558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096184, 34.193272, 39.801765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614755, 0.516849, -0.595771,
		-0.646123, 0.103184, 0.756226,
		0.452329, 0.849836, 0.270515,
		32.231884, 34.448223, 39.882919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422047, 34.416832, 39.843304>,  <31.915253, 33.853336, 39.693558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422047, 34.416832, 39.843304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756769, 34.614124, 39.748245>,  <31.957602, 34.732502, 39.691208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756769, 34.614124, 39.748245>,  <31.422047, 34.416832, 39.843304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756769, 34.614124, 39.748245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538815, 0.664891, -0.517299,
		-0.097140, 0.560926, 0.822147,
		0.836805, 0.493235, -0.237648,
		32.007812, 34.762096, 39.676952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104929, 34.951191, 39.669014>,  <31.422047, 34.416832, 39.843304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104929, 34.951191, 39.669014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470184, 35.049309, 39.538776>,  <31.689337, 35.108177, 39.460632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470184, 35.049309, 39.538776>,  <31.104929, 34.951191, 39.669014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470184, 35.049309, 39.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399704, 0.695703, -0.596854,
		0.080116, 0.675152, 0.733316,
		0.913137, 0.245292, -0.325598,
		31.744125, 35.122898, 39.441097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089840, 35.601364, 39.600155>,  <31.104929, 34.951191, 39.669014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089840, 35.601364, 39.600155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391279, 35.488644, 39.362610>,  <31.572144, 35.421013, 39.220081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391279, 35.488644, 39.362610>,  <31.089840, 35.601364, 39.600155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391279, 35.488644, 39.362610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459103, 0.420932, -0.782330,
		0.470438, 0.862209, 0.187839,
		0.753600, -0.281801, -0.593865,
		31.617359, 35.404102, 39.184452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070826, 36.065624, 39.073730>,  <31.089840, 35.601364, 39.600155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070826, 36.065624, 39.073730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278004, 35.766308, 38.907940>,  <31.402309, 35.586716, 38.808464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278004, 35.766308, 38.907940>,  <31.070826, 36.065624, 39.073730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278004, 35.766308, 38.907940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428003, 0.192822, -0.882968,
		0.740640, 0.634725, -0.220401,
		0.517944, -0.748294, -0.414476,
		31.433388, 35.541821, 38.783596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371174, 36.315250, 38.372334>,  <31.070826, 36.065624, 39.073730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371174, 36.315250, 38.372334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316425, 35.919060, 38.378296>,  <31.283577, 35.681347, 38.381874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316425, 35.919060, 38.378296>,  <31.371174, 36.315250, 38.372334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316425, 35.919060, 38.378296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498321, 0.055840, -0.865193,
		0.856121, -0.125847, -0.501218,
		-0.136870, -0.990477, 0.014906,
		31.275364, 35.621918, 38.382767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537094, 36.024055, 37.671730>,  <31.371174, 36.315250, 38.372334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537094, 36.024055, 37.671730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331297, 35.725719, 37.840973>,  <31.207819, 35.546719, 37.942520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331297, 35.725719, 37.840973>,  <31.537094, 36.024055, 37.671730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331297, 35.725719, 37.840973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475193, -0.162742, -0.864700,
		0.713785, -0.645941, -0.270687,
		-0.514493, -0.745839, 0.423109,
		31.176949, 35.501968, 37.967907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659399, 35.465824, 37.259274>,  <31.537094, 36.024055, 37.671730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659399, 35.465824, 37.259274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323788, 35.365223, 37.452263>,  <31.122421, 35.304863, 37.568054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323788, 35.365223, 37.452263>,  <31.659399, 35.465824, 37.259274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323788, 35.365223, 37.452263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437841, -0.214313, -0.873135,
		0.323000, -0.943829, 0.069694,
		-0.839027, -0.251507, 0.482470,
		31.072079, 35.289772, 37.597004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501726, 34.836071, 37.101654>,  <31.659399, 35.465824, 37.259274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501726, 34.836071, 37.101654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132128, 34.909859, 37.235641>,  <30.910368, 34.954132, 37.316032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132128, 34.909859, 37.235641>,  <31.501726, 34.836071, 37.101654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132128, 34.909859, 37.235641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363910, -0.155088, -0.918432,
		-0.117470, -0.970526, 0.210430,
		-0.923997, 0.184466, 0.334966,
		30.854929, 34.965202, 37.336132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025690, 34.270531, 36.831528>,  <31.501726, 34.836071, 37.101654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025690, 34.270531, 36.831528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783697, 34.569908, 36.940216>,  <30.638502, 34.749535, 37.005428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783697, 34.569908, 36.940216>,  <31.025690, 34.270531, 36.831528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783697, 34.569908, 36.940216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482246, -0.072869, -0.873000,
		-0.633591, -0.659184, 0.405018,
		-0.604981, 0.748443, 0.271720,
		30.602203, 34.794441, 37.021732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306602, 34.029388, 36.926998>,  <31.025690, 34.270531, 36.831528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306602, 34.029388, 36.926998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309221, 34.417137, 36.828796>,  <30.310793, 34.649788, 36.769875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309221, 34.417137, 36.828796>,  <30.306602, 34.029388, 36.926998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309221, 34.417137, 36.828796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593521, -0.193819, -0.781132,
		-0.804792, 0.150825, 0.574075,
		0.006547, 0.969374, -0.245502,
		30.311186, 34.707951, 36.755146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572523, 33.525642, 37.417706>,  <30.306602, 34.029388, 36.926998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572523, 33.525642, 37.417706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282692, 33.455322, 37.684261>,  <30.108793, 33.413132, 37.844196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282692, 33.455322, 37.684261>,  <30.572523, 33.525642, 37.417706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282692, 33.455322, 37.684261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634735, -0.206490, -0.744629,
		0.268508, -0.962526, 0.038033,
		-0.724579, -0.175798, 0.666394,
		30.065319, 33.402584, 37.884178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227762, 32.752609, 37.414589>,  <30.572523, 33.525642, 37.417706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227762, 32.752609, 37.414589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957869, 32.996056, 37.581596>,  <29.795933, 33.142124, 37.681801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957869, 32.996056, 37.581596>,  <30.227762, 32.752609, 37.414589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957869, 32.996056, 37.581596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650474, -0.223066, -0.726033,
		-0.348743, -0.761463, 0.546400,
		-0.674731, 0.608618, 0.417519,
		29.755449, 33.178638, 37.706852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714405, 33.025257, 36.856895>,  <30.227762, 32.752609, 37.414589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714405, 33.025257, 36.856895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088499, 32.935413, 36.747433>,  <31.312956, 32.881508, 36.681755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088499, 32.935413, 36.747433>,  <30.714405, 33.025257, 36.856895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088499, 32.935413, 36.747433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052994, -0.675460, 0.735490,
		-0.350041, -0.702357, -0.619811,
		0.935234, -0.224605, -0.273660,
		31.369070, 32.868031, 36.665333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749359, 32.338230, 36.670277>,  <30.714405, 33.025257, 36.856895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749359, 32.338230, 36.670277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114639, 32.440308, 36.797359>,  <31.333809, 32.501556, 36.873608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114639, 32.440308, 36.797359>,  <30.749359, 32.338230, 36.670277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114639, 32.440308, 36.797359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085748, -0.641839, 0.762030,
		0.398382, -0.723130, -0.564247,
		0.913203, 0.255196, 0.317704,
		31.388599, 32.516865, 36.892670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057432, 31.739588, 36.764267>,  <30.749359, 32.338230, 36.670277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057432, 31.739588, 36.764267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281397, 31.997637, 36.972237>,  <31.415775, 32.152466, 37.097019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281397, 31.997637, 36.972237>,  <31.057432, 31.739588, 36.764267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281397, 31.997637, 36.972237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095547, -0.673593, 0.732901,
		0.823025, -0.360683, -0.438792,
		0.559912, 0.645121, 0.519921,
		31.449369, 32.191174, 37.128212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618538, 31.399752, 36.966866>,  <31.057432, 31.739588, 36.764267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618538, 31.399752, 36.966866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620499, 31.688709, 37.243450>,  <31.621675, 31.862083, 37.409401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620499, 31.688709, 37.243450>,  <31.618538, 31.399752, 36.966866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620499, 31.688709, 37.243450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083096, -0.689375, 0.719623,
		0.996529, 0.053931, -0.063408,
		0.004902, 0.722395, 0.691464,
		31.621969, 31.905428, 37.450890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943079, 31.090551, 37.519276>,  <31.618538, 31.399752, 36.966866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943079, 31.090551, 37.519276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786472, 31.411320, 37.699783>,  <31.692509, 31.603781, 37.808086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786472, 31.411320, 37.699783>,  <31.943079, 31.090551, 37.519276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786472, 31.411320, 37.699783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132697, -0.436085, 0.890068,
		0.910553, 0.408358, 0.064322,
		-0.391516, 0.801919, 0.451266,
		31.669018, 31.651896, 37.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497128, 31.397053, 37.936356>,  <31.943079, 31.090551, 37.519276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497128, 31.397053, 37.936356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151257, 31.522667, 38.093178>,  <31.943733, 31.598036, 38.187271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151257, 31.522667, 38.093178>,  <32.497128, 31.397053, 37.936356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151257, 31.522667, 38.093178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225282, -0.455158, 0.861440,
		0.448969, 0.833195, 0.322821,
		-0.864682, 0.314034, 0.392056,
		31.891851, 31.616877, 38.210796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624710, 31.543432, 38.579090>,  <32.497128, 31.397053, 37.936356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624710, 31.543432, 38.579090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228390, 31.553772, 38.632221>,  <31.990597, 31.559977, 38.664101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228390, 31.553772, 38.632221>,  <32.624710, 31.543432, 38.579090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228390, 31.553772, 38.632221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115678, -0.347470, 0.930528,
		0.070207, 0.937335, 0.341284,
		-0.990802, 0.025851, 0.132824,
		31.931149, 31.561527, 38.672070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559620, 31.724804, 39.247959>,  <32.624710, 31.543432, 38.579090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559620, 31.724804, 39.247959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187759, 31.596777, 39.174957>,  <31.964643, 31.519960, 39.131157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187759, 31.596777, 39.174957>,  <32.559620, 31.724804, 39.247959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187759, 31.596777, 39.174957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049846, -0.381530, 0.923012,
		-0.365058, 0.867174, 0.338735,
		-0.929649, -0.320069, -0.182505,
		31.908865, 31.500757, 39.120205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187290, 31.883303, 39.856956>,  <32.559620, 31.724804, 39.247959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187290, 31.883303, 39.856956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009136, 31.574852, 39.674965>,  <31.902245, 31.389782, 39.565769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009136, 31.574852, 39.674965>,  <32.187290, 31.883303, 39.856956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009136, 31.574852, 39.674965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148139, -0.564621, 0.811947,
		-0.883001, 0.294226, 0.365705,
		-0.445381, -0.771125, -0.454975,
		31.875523, 31.343513, 39.538471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825430, 31.581882, 40.450058>,  <32.187290, 31.883303, 39.856956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825430, 31.581882, 40.450058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825775, 31.279419, 40.188305>,  <31.825983, 31.097940, 40.031254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825775, 31.279419, 40.188305>,  <31.825430, 31.581882, 40.450058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825775, 31.279419, 40.188305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290690, -0.625938, 0.723671,
		-0.956817, -0.190849, 0.219268,
		0.000864, -0.756160, -0.654386,
		31.826035, 31.052570, 39.991989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385931, 30.984533, 40.679184>,  <31.825430, 31.581882, 40.450058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385931, 30.984533, 40.679184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642464, 30.838146, 40.409439>,  <31.796383, 30.750315, 40.247593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642464, 30.838146, 40.409439>,  <31.385931, 30.984533, 40.679184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642464, 30.838146, 40.409439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234977, -0.742999, 0.626688,
		-0.730386, -0.560380, -0.390526,
		0.641344, -0.365959, -0.674353,
		31.834864, 30.728355, 40.207130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359938, 30.235521, 40.665451>,  <31.385931, 30.984533, 40.679184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359938, 30.235521, 40.665451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733192, 30.323610, 40.551781>,  <31.957146, 30.376465, 40.483578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733192, 30.323610, 40.551781>,  <31.359938, 30.235521, 40.665451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733192, 30.323610, 40.551781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352686, -0.714126, 0.604679,
		-0.069774, -0.664474, -0.744047,
		0.933137, 0.220224, -0.284178,
		32.013134, 30.389677, 40.466526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660198, 29.613480, 40.574142>,  <31.359938, 30.235521, 40.665451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660198, 29.613480, 40.574142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956495, 29.879553, 40.611725>,  <32.134274, 30.039198, 40.634274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956495, 29.879553, 40.611725>,  <31.660198, 29.613480, 40.574142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956495, 29.879553, 40.611725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445721, -0.591283, 0.672099,
		0.502624, -0.455975, -0.734476,
		0.740744, 0.665185, 0.093955,
		32.178719, 30.079109, 40.639912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205379, 29.137251, 40.630047>,  <31.660198, 29.613480, 40.574142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205379, 29.137251, 40.630047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367657, 29.480589, 40.755684>,  <32.465023, 29.686592, 40.831066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367657, 29.480589, 40.755684>,  <32.205379, 29.137251, 40.630047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367657, 29.480589, 40.755684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630850, -0.511623, 0.583327,
		0.661396, -0.038502, -0.749048,
		0.405690, 0.858347, 0.314096,
		32.489365, 29.738092, 40.849915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907055, 29.016596, 40.638840>,  <32.205379, 29.137251, 40.630047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907055, 29.016596, 40.638840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857765, 29.328228, 40.884716>,  <32.828190, 29.515207, 41.032242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857765, 29.328228, 40.884716>,  <32.907055, 29.016596, 40.638840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857765, 29.328228, 40.884716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572457, -0.450162, 0.685308,
		0.810622, 0.436331, -0.390520,
		-0.123224, 0.779082, 0.614692,
		32.820797, 29.561953, 41.069122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514175, 29.113008, 40.889481>,  <32.907055, 29.016596, 40.638840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514175, 29.113008, 40.889481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289993, 29.322416, 41.146172>,  <33.155483, 29.448061, 41.300186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289993, 29.322416, 41.146172>,  <33.514175, 29.113008, 40.889481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289993, 29.322416, 41.146172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498708, -0.405287, 0.766180,
		0.661195, 0.749446, -0.033938,
		-0.560456, 0.523520, 0.641729,
		33.121857, 29.479473, 41.338692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025475, 29.562731, 41.278118>,  <33.514175, 29.113008, 40.889481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025475, 29.562731, 41.278118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693989, 29.508423, 41.495300>,  <33.495098, 29.475838, 41.625610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693989, 29.508423, 41.495300>,  <34.025475, 29.562731, 41.278118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693989, 29.508423, 41.495300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551805, -0.360308, 0.752123,
		0.093517, 0.922901, 0.373509,
		-0.828713, -0.135767, 0.542956,
		33.445374, 29.467693, 41.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233624, 29.785063, 41.973583>,  <34.025475, 29.562731, 41.278118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233624, 29.785063, 41.973583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888420, 29.612337, 42.078461>,  <33.681297, 29.508701, 42.141388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888420, 29.612337, 42.078461>,  <34.233624, 29.785063, 41.973583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888420, 29.612337, 42.078461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443766, -0.399970, 0.801932,
		-0.241418, 0.808430, 0.536805,
		-0.863011, -0.431816, 0.262194,
		33.629517, 29.482792, 42.157120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031029, 30.030298, 42.684933>,  <34.233624, 29.785063, 41.973583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031029, 30.030298, 42.684933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821667, 29.697523, 42.611248>,  <33.696049, 29.497858, 42.567036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821667, 29.697523, 42.611248>,  <34.031029, 30.030298, 42.684933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821667, 29.697523, 42.611248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261526, -0.362601, 0.894497,
		-0.810960, 0.420003, 0.407358,
		-0.523400, -0.831936, -0.184214,
		33.664646, 29.447943, 42.555984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441425, 29.947554, 43.221565>,  <34.031029, 30.030298, 42.684933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441425, 29.947554, 43.221565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516930, 29.582445, 43.076672>,  <33.562233, 29.363380, 42.989735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516930, 29.582445, 43.076672>,  <33.441425, 29.947554, 43.221565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516930, 29.582445, 43.076672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193086, -0.327168, 0.925029,
		-0.962853, -0.244555, 0.114486,
		0.188764, -0.912773, -0.362235,
		33.573559, 29.308613, 42.968002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084190, 29.593946, 43.695702>,  <33.441425, 29.947554, 43.221565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084190, 29.593946, 43.695702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316517, 29.305229, 43.545147>,  <33.455914, 29.131998, 43.454815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316517, 29.305229, 43.545147>,  <33.084190, 29.593946, 43.695702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316517, 29.305229, 43.545147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271586, -0.264060, 0.925480,
		-0.767394, -0.639755, 0.042658,
		0.580817, -0.721793, -0.376386,
		33.490761, 29.088692, 43.432232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046246, 28.868423, 44.022934>,  <33.084190, 29.593946, 43.695702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046246, 28.868423, 44.022934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404331, 28.896099, 43.846840>,  <33.619183, 28.912704, 43.741184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404331, 28.896099, 43.846840>,  <33.046246, 28.868423, 44.022934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404331, 28.896099, 43.846840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444607, -0.205789, 0.871766,
		-0.030277, -0.976147, -0.214987,
		0.895214, 0.069190, -0.440232,
		33.672894, 28.916855, 43.714771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426590, 28.238649, 44.234245>,  <33.046246, 28.868423, 44.022934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426590, 28.238649, 44.234245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696587, 28.509747, 44.117592>,  <33.858585, 28.672405, 44.047600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696587, 28.509747, 44.117592>,  <33.426590, 28.238649, 44.234245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696587, 28.509747, 44.117592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496943, -0.125437, 0.858669,
		0.545375, -0.724520, -0.421468,
		0.674991, 0.677743, -0.291635,
		33.899082, 28.713070, 44.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984596, 27.877808, 44.182770>,  <33.426590, 28.238649, 44.234245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984596, 27.877808, 44.182770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113316, 28.249243, 44.256714>,  <34.190548, 28.472103, 44.301079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113316, 28.249243, 44.256714>,  <33.984596, 27.877808, 44.182770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113316, 28.249243, 44.256714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536774, -0.339762, 0.772292,
		0.779949, -0.149292, -0.607776,
		0.321796, 0.928587, 0.184861,
		34.209854, 28.527819, 44.312172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689487, 27.815897, 44.360638>,  <33.984596, 27.877808, 44.182770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689487, 27.815897, 44.360638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595352, 28.175104, 44.509331>,  <34.538872, 28.390629, 44.598545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595352, 28.175104, 44.509331>,  <34.689487, 27.815897, 44.360638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595352, 28.175104, 44.509331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442135, -0.241688, 0.863773,
		0.865525, 0.367632, -0.340167,
		-0.235337, 0.898016, 0.371730,
		34.524750, 28.444510, 44.620850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346874, 28.055294, 44.704468>,  <34.689487, 27.815897, 44.360638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346874, 28.055294, 44.704468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037792, 28.262197, 44.851635>,  <34.852345, 28.386339, 44.939938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037792, 28.262197, 44.851635>,  <35.346874, 28.055294, 44.704468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037792, 28.262197, 44.851635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302481, -0.209527, 0.929841,
		0.558059, 0.829784, 0.005442,
		-0.772707, 0.517260, 0.367922,
		34.805981, 28.417376, 44.962013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987282, 28.537508, 44.563511>,  <35.346874, 28.055294, 44.704468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987282, 28.537508, 44.563511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356182, 28.390171, 44.516571>,  <36.577522, 28.301769, 44.488407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356182, 28.390171, 44.516571>,  <35.987282, 28.537508, 44.563511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356182, 28.390171, 44.516571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008293, 0.322341, -0.946588,
		0.386495, 0.872021, 0.300334,
		0.922254, -0.368342, -0.117352,
		36.632858, 28.279669, 44.481365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372257, 29.070566, 44.122681>,  <35.987282, 28.537508, 44.563511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372257, 29.070566, 44.122681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570694, 28.724876, 44.089184>,  <36.689754, 28.517462, 44.069084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570694, 28.724876, 44.089184>,  <36.372257, 29.070566, 44.122681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570694, 28.724876, 44.089184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076062, 0.139334, -0.987320,
		0.864934, 0.483428, 0.134856,
		0.496089, -0.864224, -0.083744,
		36.719521, 28.465609, 44.064060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101181, 29.180780, 43.765903>,  <36.372257, 29.070566, 44.122681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101181, 29.180780, 43.765903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970364, 28.805227, 43.722927>,  <36.891872, 28.579895, 43.697140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970364, 28.805227, 43.722927>,  <37.101181, 29.180780, 43.765903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970364, 28.805227, 43.722927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239216, 0.027744, -0.970570,
		0.914232, -0.343118, 0.215522,
		-0.327040, -0.938882, -0.107443,
		36.872253, 28.523563, 43.690693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594910, 28.995890, 43.209953>,  <37.101181, 29.180780, 43.765903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594910, 28.995890, 43.209953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300419, 28.725256, 43.215733>,  <37.123726, 28.562876, 43.219200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300419, 28.725256, 43.215733>,  <37.594910, 28.995890, 43.209953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300419, 28.725256, 43.215733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107570, 0.095926, -0.989559,
		0.668133, -0.730092, -0.143403,
		-0.736225, -0.676583, 0.014445,
		37.079552, 28.522282, 43.220066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735996, 28.641237, 42.648785>,  <37.594910, 28.995890, 43.209953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735996, 28.641237, 42.648785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356434, 28.530819, 42.709946>,  <37.128696, 28.464567, 42.746643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356434, 28.530819, 42.709946>,  <37.735996, 28.641237, 42.648785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356434, 28.530819, 42.709946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203507, 0.165005, -0.965069,
		0.241178, -0.946874, -0.212752,
		-0.948904, -0.276050, 0.152900,
		37.071762, 28.448006, 42.755817>
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
