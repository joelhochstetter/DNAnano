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
	<24.043957, 35.147209, 34.648949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214869, 34.944458, 34.948418>,  <24.317415, 34.822807, 35.128098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214869, 34.944458, 34.948418>,  <24.043957, 35.147209, 34.648949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214869, 34.944458, 34.948418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256275, -0.726207, -0.637924,
		0.867039, 0.464437, -0.180393,
		0.427279, -0.506875, 0.748673,
		24.343052, 34.792397, 35.173019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734755, 34.940456, 34.507736>,  <24.043957, 35.147209, 34.648949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734755, 34.940456, 34.507736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609421, 34.665836, 34.770180>,  <24.534222, 34.501064, 34.927647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609421, 34.665836, 34.770180>,  <24.734755, 34.940456, 34.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609421, 34.665836, 34.770180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118058, -0.713700, -0.690431,
		0.942277, -0.138875, 0.304678,
		-0.313332, -0.686547, 0.656107,
		24.515421, 34.459873, 34.967010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093832, 34.267612, 34.410881>,  <24.734755, 34.940456, 34.507736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093832, 34.267612, 34.410881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764498, 34.166042, 34.613914>,  <24.566896, 34.105103, 34.735733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764498, 34.166042, 34.613914>,  <25.093832, 34.267612, 34.410881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764498, 34.166042, 34.613914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050102, -0.858325, -0.510655,
		0.565337, -0.445872, 0.693969,
		-0.823337, -0.253923, 0.507581,
		24.517496, 34.089867, 34.766190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263474, 33.632545, 34.637157>,  <25.093832, 34.267612, 34.410881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263474, 33.632545, 34.637157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871418, 33.655231, 34.561142>,  <24.636185, 33.668842, 34.515533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871418, 33.655231, 34.561142>,  <25.263474, 33.632545, 34.637157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871418, 33.655231, 34.561142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080608, -0.761574, -0.643046,
		-0.181195, -0.645592, 0.741875,
		-0.980138, 0.056716, -0.190034,
		24.577377, 33.672245, 34.504131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066780, 33.711777, 35.276344>,  <25.263474, 33.632545, 34.637157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066780, 33.711777, 35.276344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830935, 33.426003, 35.125648>,  <24.689426, 33.254536, 35.035233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830935, 33.426003, 35.125648>,  <25.066780, 33.711777, 35.276344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830935, 33.426003, 35.125648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640808, -0.129857, -0.756639,
		0.491649, -0.687544, 0.534383,
		-0.589616, -0.714437, -0.376739,
		24.654049, 33.211670, 35.012627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489939, 33.130417, 35.159031>,  <25.066780, 33.711777, 35.276344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489939, 33.130417, 35.159031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187500, 33.127209, 34.897266>,  <25.006037, 33.125286, 34.740208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187500, 33.127209, 34.897266>,  <25.489939, 33.130417, 35.159031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187500, 33.127209, 34.897266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652194, -0.092350, -0.752406,
		-0.054400, -0.995694, 0.075057,
		-0.756098, -0.008021, -0.654410,
		24.960670, 33.124802, 34.700943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155592, 33.020958, 34.852219>,  <25.489939, 33.130417, 35.159031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155592, 33.020958, 34.852219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346605, 33.010620, 35.203514>,  <26.461212, 33.004417, 35.414291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346605, 33.010620, 35.203514>,  <26.155592, 33.020958, 34.852219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346605, 33.010620, 35.203514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774687, -0.483967, 0.406985,
		0.414517, -0.874705, -0.251133,
		0.477531, -0.025847, 0.878234,
		26.489864, 33.002865, 35.466984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520452, 33.685139, 34.982944>,  <26.155592, 33.020958, 34.852219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520452, 33.685139, 34.982944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829956, 33.770271, 34.744282>,  <27.015657, 33.821350, 34.601082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829956, 33.770271, 34.744282>,  <26.520452, 33.685139, 34.982944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829956, 33.770271, 34.744282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404145, -0.559448, -0.723661,
		-0.487819, 0.801075, -0.346861,
		0.773757, 0.212833, -0.596659,
		27.062082, 33.834122, 34.565285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298937, 34.072292, 34.257446>,  <26.520452, 33.685139, 34.982944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298937, 34.072292, 34.257446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643791, 33.873199, 34.219532>,  <26.850704, 33.753742, 34.196781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643791, 33.873199, 34.219532>,  <26.298937, 34.072292, 34.257446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643791, 33.873199, 34.219532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347973, -0.445658, -0.824805,
		0.368289, 0.744078, -0.557415,
		0.862136, -0.497732, -0.094788,
		26.902431, 33.723881, 34.191097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647402, 34.232891, 33.624191>,  <26.298937, 34.072292, 34.257446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647402, 34.232891, 33.624191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763628, 33.861179, 33.715420>,  <26.833364, 33.638153, 33.770157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763628, 33.861179, 33.715420>,  <26.647402, 34.232891, 33.624191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763628, 33.861179, 33.715420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353644, -0.325775, -0.876816,
		0.889105, 0.174118, -0.423292,
		0.290567, -0.929276, 0.228072,
		26.850798, 33.582397, 33.783840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735100, 33.960617, 32.962910>,  <26.647402, 34.232891, 33.624191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735100, 33.960617, 32.962910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742361, 33.647682, 33.211948>,  <26.746717, 33.459923, 33.361370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742361, 33.647682, 33.211948>,  <26.735100, 33.960617, 32.962910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742361, 33.647682, 33.211948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475706, -0.554457, -0.682848,
		0.879417, -0.283777, -0.382226,
		0.018151, -0.782335, 0.622593,
		26.747807, 33.412983, 33.398727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690874, 33.536091, 32.350739>,  <26.735100, 33.960617, 32.962910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690874, 33.536091, 32.350739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448490, 33.613327, 32.659420>,  <26.303061, 33.659668, 32.844627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448490, 33.613327, 32.659420>,  <26.690874, 33.536091, 32.350739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448490, 33.613327, 32.659420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607256, 0.514366, -0.605531,
		-0.513860, -0.835550, -0.194431,
		-0.605960, 0.193089, 0.771705,
		26.266703, 33.671253, 32.890930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037275, 33.162613, 32.401699>,  <26.690874, 33.536091, 32.350739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037275, 33.162613, 32.401699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001230, 33.542503, 32.521633>,  <25.979603, 33.770439, 32.593594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001230, 33.542503, 32.521633>,  <26.037275, 33.162613, 32.401699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001230, 33.542503, 32.521633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698807, 0.154213, -0.698490,
		-0.709612, -0.272469, 0.649778,
		-0.090112, 0.949725, 0.299835,
		25.974197, 33.827419, 32.611584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891264, 32.947166, 33.165970>,  <26.037275, 33.162613, 32.401699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891264, 32.947166, 33.165970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263357, 32.811359, 33.110268>,  <26.486614, 32.729874, 33.076847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263357, 32.811359, 33.110268>,  <25.891264, 32.947166, 33.165970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263357, 32.811359, 33.110268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205867, 0.168676, 0.963933,
		-0.303782, -0.925352, 0.226804,
		0.930234, -0.339517, -0.139259,
		26.542427, 32.709503, 33.068489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157845, 32.575428, 33.815639>,  <25.891264, 32.947166, 33.165970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157845, 32.575428, 33.815639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452431, 32.713959, 33.583199>,  <26.629183, 32.797077, 33.443733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452431, 32.713959, 33.583199>,  <26.157845, 32.575428, 33.815639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452431, 32.713959, 33.583199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456801, 0.378985, 0.804800,
		0.498951, -0.858155, 0.120908,
		0.736465, 0.346325, -0.581101,
		26.673370, 32.817856, 33.408867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786976, 32.369160, 34.136261>,  <26.157845, 32.575428, 33.815639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786976, 32.369160, 34.136261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822800, 32.683418, 33.891399>,  <26.844294, 32.871975, 33.744484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822800, 32.683418, 33.891399>,  <26.786976, 32.369160, 34.136261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822800, 32.683418, 33.891399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617530, 0.438423, 0.653024,
		0.781432, -0.436508, -0.445898,
		0.089558, 0.785650, -0.612155,
		26.849667, 32.919113, 33.707752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469915, 32.518936, 34.123253>,  <26.786976, 32.369160, 34.136261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469915, 32.518936, 34.123253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307941, 32.865105, 34.005215>,  <27.210756, 33.072803, 33.934391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307941, 32.865105, 34.005215>,  <27.469915, 32.518936, 34.123253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307941, 32.865105, 34.005215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617613, 0.496868, 0.609653,
		0.674226, 0.064616, -0.735693,
		-0.404936, 0.865417, -0.295094,
		27.186460, 33.124729, 33.916687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000048, 33.090389, 34.053005>,  <27.469915, 32.518936, 34.123253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000048, 33.090389, 34.053005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662066, 33.300819, 34.091576>,  <27.459276, 33.427078, 34.114719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662066, 33.300819, 34.091576>,  <28.000048, 33.090389, 34.053005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662066, 33.300819, 34.091576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426623, 0.554215, 0.714730,
		0.322562, 0.645050, -0.692722,
		-0.844953, 0.526076, 0.096425,
		27.408579, 33.458641, 34.120502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229961, 33.749180, 33.990562>,  <28.000048, 33.090389, 34.053005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229961, 33.749180, 33.990562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888840, 33.729767, 34.198551>,  <27.684166, 33.718121, 34.323345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888840, 33.729767, 34.198551>,  <28.229961, 33.749180, 33.990562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888840, 33.729767, 34.198551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322906, 0.733524, 0.598059,
		-0.410435, 0.677929, -0.609881,
		-0.852804, -0.048530, 0.519971,
		27.632999, 33.715206, 34.354542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050016, 34.439137, 34.149921>,  <28.229961, 33.749180, 33.990562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050016, 34.439137, 34.149921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854771, 34.222019, 34.423306>,  <27.737623, 34.091751, 34.587337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854771, 34.222019, 34.423306>,  <28.050016, 34.439137, 34.149921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854771, 34.222019, 34.423306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369308, 0.581078, 0.725231,
		-0.790793, 0.606406, -0.083177,
		-0.488117, -0.542790, 0.683463,
		27.708336, 34.059181, 34.628345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697931, 34.869583, 34.541931>,  <28.050016, 34.439137, 34.149921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697931, 34.869583, 34.541931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796335, 34.542847, 34.750641>,  <27.855377, 34.346806, 34.875866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796335, 34.542847, 34.750641>,  <27.697931, 34.869583, 34.541931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796335, 34.542847, 34.750641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389026, 0.576266, 0.718732,
		-0.887771, 0.026168, 0.459541,
		0.246010, -0.816843, 0.521772,
		27.870138, 34.297794, 34.907173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404051, 34.880093, 35.297070>,  <27.697931, 34.869583, 34.541931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404051, 34.880093, 35.297070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771435, 34.740238, 35.223118>,  <27.991865, 34.656326, 35.178745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771435, 34.740238, 35.223118>,  <27.404051, 34.880093, 35.297070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771435, 34.740238, 35.223118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364251, 0.565623, 0.739859,
		-0.154108, -0.746876, 0.646859,
		0.918462, -0.349637, -0.184883,
		28.046974, 34.635345, 35.167652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822857, 34.566822, 35.939552>,  <27.404051, 34.880093, 35.297070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822857, 34.566822, 35.939552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981699, 34.794067, 35.651230>,  <28.077005, 34.930412, 35.478237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981699, 34.794067, 35.651230>,  <27.822857, 34.566822, 35.939552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981699, 34.794067, 35.651230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035845, 0.775184, 0.630717,
		0.917072, -0.276299, 0.287467,
		0.397106, 0.568109, -0.720804,
		28.100832, 34.964500, 35.434990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487661, 34.673992, 36.034393>,  <27.822857, 34.566822, 35.939552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487661, 34.673992, 36.034393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331568, 34.980495, 35.830208>,  <28.237911, 35.164398, 35.707699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331568, 34.980495, 35.830208>,  <28.487661, 34.673992, 36.034393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331568, 34.980495, 35.830208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271900, 0.625598, 0.731230,
		0.879652, 0.146557, -0.452475,
		-0.390234, 0.766256, -0.510460,
		28.214497, 35.210373, 35.677071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621677, 35.173302, 36.557625>,  <28.487661, 34.673992, 36.034393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621677, 35.173302, 36.557625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436073, 35.350327, 36.250683>,  <28.324711, 35.456543, 36.066517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436073, 35.350327, 36.250683>,  <28.621677, 35.173302, 36.557625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436073, 35.350327, 36.250683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176989, 0.895104, 0.409223,
		0.867969, 0.054071, -0.493666,
		-0.464009, 0.442567, -0.767353,
		28.296871, 35.483097, 36.020477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165239, 34.682510, 36.728237>,  <28.621677, 35.173302, 36.557625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165239, 34.682510, 36.728237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424603, 34.635567, 36.427361>,  <29.580219, 34.607399, 36.246834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424603, 34.635567, 36.427361>,  <29.165239, 34.682510, 36.728237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424603, 34.635567, 36.427361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332239, -0.845368, 0.418294,
		-0.684972, -0.521133, -0.509150,
		0.648406, -0.117360, -0.752195,
		29.619123, 34.600357, 36.201702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320053, 33.955425, 36.290909>,  <29.165239, 34.682510, 36.728237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320053, 33.955425, 36.290909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610723, 34.126423, 36.506012>,  <29.785126, 34.229023, 36.635075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610723, 34.126423, 36.506012>,  <29.320053, 33.955425, 36.290909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610723, 34.126423, 36.506012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023028, -0.767192, 0.641004,
		0.686593, -0.478186, -0.547656,
		0.726677, 0.427498, 0.537760,
		29.828726, 34.254673, 36.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340593, 33.529346, 36.844902>,  <29.320053, 33.955425, 36.290909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340593, 33.529346, 36.844902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653215, 33.761913, 36.935341>,  <29.840790, 33.901455, 36.989605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653215, 33.761913, 36.935341>,  <29.340593, 33.529346, 36.844902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653215, 33.761913, 36.935341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159145, -0.536264, 0.828911,
		0.603192, -0.611860, -0.511651,
		0.781557, 0.581420, 0.226096,
		29.887682, 33.936340, 37.003170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659567, 33.485355, 37.158470>,  <29.340593, 33.529346, 36.844902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659567, 33.485355, 37.158470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627489, 33.844112, 36.984505>,  <28.608242, 34.059368, 36.880123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627489, 33.844112, 36.984505>,  <28.659567, 33.485355, 37.158470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627489, 33.844112, 36.984505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860987, 0.157529, 0.483618,
		0.502265, 0.413242, 0.759579,
		-0.080196, 0.896892, -0.434918,
		28.603430, 34.113178, 36.854031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557426, 33.924362, 37.669758>,  <28.659567, 33.485355, 37.158470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557426, 33.924362, 37.669758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409809, 34.070133, 37.327763>,  <28.321239, 34.157597, 37.122566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409809, 34.070133, 37.327763>,  <28.557426, 33.924362, 37.669758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409809, 34.070133, 37.327763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895684, 0.106120, 0.431843,
		0.248108, 0.925164, 0.287252,
		-0.369043, 0.364431, -0.854984,
		28.299097, 34.179462, 37.071266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289598, 33.664852, 37.783405>,  <28.557426, 33.924362, 37.669758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289598, 33.664852, 37.783405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922682, 33.526836, 37.862926>,  <28.702532, 33.444027, 37.910637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922682, 33.526836, 37.862926>,  <29.289598, 33.664852, 37.783405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922682, 33.526836, 37.862926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388310, -0.664410, 0.638572,
		-0.088246, 0.662955, 0.743440,
		-0.917294, -0.345037, 0.198801,
		28.647493, 33.423325, 37.922565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468060, 34.425537, 38.005589>,  <29.289598, 33.664852, 37.783405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468060, 34.425537, 38.005589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506962, 34.823505, 38.016003>,  <29.530302, 35.062286, 38.022251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506962, 34.823505, 38.016003>,  <29.468060, 34.425537, 38.005589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506962, 34.823505, 38.016003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606090, -0.079956, 0.791367,
		0.789428, -0.061183, -0.610787,
		0.097255, 0.994919, 0.026037,
		29.536139, 35.121983, 38.023815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175192, 34.589249, 38.077766>,  <29.468060, 34.425537, 38.005589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175192, 34.589249, 38.077766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998442, 34.931789, 38.184654>,  <29.892391, 35.137314, 38.248787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998442, 34.931789, 38.184654>,  <30.175192, 34.589249, 38.077766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998442, 34.931789, 38.184654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668081, 0.115349, 0.735094,
		0.598676, 0.503344, -0.623083,
		-0.441876, 0.856353, 0.267218,
		29.865879, 35.188694, 38.264820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723345, 35.055668, 38.053761>,  <30.175192, 34.589249, 38.077766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723345, 35.055668, 38.053761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426075, 35.224720, 38.261250>,  <30.247713, 35.326153, 38.385742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426075, 35.224720, 38.261250>,  <30.723345, 35.055668, 38.053761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426075, 35.224720, 38.261250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659013, 0.328259, 0.676718,
		0.115727, 0.844765, -0.522474,
		-0.743175, 0.422632, 0.518723,
		30.203123, 35.351509, 38.416866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925299, 35.664719, 38.252155>,  <30.723345, 35.055668, 38.053761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925299, 35.664719, 38.252155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658154, 35.538403, 38.521744>,  <30.497868, 35.462612, 38.683498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658154, 35.538403, 38.521744>,  <30.925299, 35.664719, 38.252155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658154, 35.538403, 38.521744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569572, 0.366062, 0.735925,
		-0.479112, 0.875372, -0.064615,
		-0.667862, -0.315788, 0.673972,
		30.457794, 35.443665, 38.723934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778112, 36.187344, 38.666367>,  <30.925299, 35.664719, 38.252155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778112, 36.187344, 38.666367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695625, 35.860817, 38.882183>,  <30.646133, 35.664902, 39.011673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695625, 35.860817, 38.882183>,  <30.778112, 36.187344, 38.666367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695625, 35.860817, 38.882183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590764, 0.335694, 0.733695,
		-0.780046, 0.470042, 0.413023,
		-0.206218, -0.816315, 0.539541,
		30.633760, 35.615921, 39.044044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551043, 36.417946, 39.317120>,  <30.778112, 36.187344, 38.666367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551043, 36.417946, 39.317120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766840, 36.082832, 39.283489>,  <30.896318, 35.881763, 39.263313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766840, 36.082832, 39.283489>,  <30.551043, 36.417946, 39.317120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766840, 36.082832, 39.283489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708109, 0.397421, 0.583642,
		-0.455553, -0.374404, 0.807647,
		0.539494, -0.837781, -0.084073,
		30.928688, 35.831497, 39.258266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628250, 36.005322, 39.933826>,  <30.551043, 36.417946, 39.317120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628250, 36.005322, 39.933826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934521, 36.001484, 39.676563>,  <31.118282, 35.999180, 39.522205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934521, 36.001484, 39.676563>,  <30.628250, 36.005322, 39.933826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934521, 36.001484, 39.676563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580869, 0.439796, 0.684960,
		0.276283, -0.898046, 0.342317,
		0.765676, -0.009598, -0.643155,
		31.164223, 35.998604, 39.483616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230276, 35.729141, 40.294727>,  <30.628250, 36.005322, 39.933826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230276, 35.729141, 40.294727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332726, 35.972080, 39.993919>,  <31.394196, 36.117844, 39.813435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332726, 35.972080, 39.993919>,  <31.230276, 35.729141, 40.294727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332726, 35.972080, 39.993919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425726, 0.627578, 0.651846,
		0.867846, -0.487107, -0.097825,
		0.256126, 0.607348, -0.752016,
		31.409563, 36.154285, 39.768314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936781, 35.862736, 40.322460>,  <31.230276, 35.729141, 40.294727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936781, 35.862736, 40.322460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785877, 36.185547, 40.140739>,  <31.695335, 36.379234, 40.031708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785877, 36.185547, 40.140739>,  <31.936781, 35.862736, 40.322460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785877, 36.185547, 40.140739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373723, 0.581496, 0.722630,
		0.847353, 0.102836, -0.520978,
		-0.377259, 0.807023, -0.454300,
		31.672699, 36.427654, 40.004448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909237, 35.197056, 40.241920>,  <31.936781, 35.862736, 40.322460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909237, 35.197056, 40.241920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551888, 35.036842, 40.323364>,  <31.337479, 34.940712, 40.372231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551888, 35.036842, 40.323364>,  <31.909237, 35.197056, 40.241920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551888, 35.036842, 40.323364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387543, 0.457592, -0.800262,
		0.227367, -0.793838, -0.564026,
		-0.893373, -0.400538, 0.203605,
		31.283876, 34.916679, 40.384445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624220, 35.012592, 39.549889>,  <31.909237, 35.197056, 40.241920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624220, 35.012592, 39.549889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351748, 35.069374, 39.837177>,  <31.188265, 35.103443, 40.009552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351748, 35.069374, 39.837177>,  <31.624220, 35.012592, 39.549889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351748, 35.069374, 39.837177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535235, 0.572784, -0.620840,
		-0.499519, -0.807321, -0.314188,
		-0.681179, 0.141957, 0.718222,
		31.147394, 35.111961, 40.052643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993017, 34.858715, 39.312378>,  <31.624220, 35.012592, 39.549889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993017, 34.858715, 39.312378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971378, 35.130066, 39.605469>,  <30.958395, 35.292877, 39.781322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971378, 35.130066, 39.605469>,  <30.993017, 34.858715, 39.312378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971378, 35.130066, 39.605469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733848, 0.470615, -0.489886,
		-0.677156, -0.564209, 0.472364,
		-0.054096, 0.678373, 0.732723,
		30.955149, 35.333576, 39.825287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491125, 34.814796, 39.893082>,  <30.993017, 34.858715, 39.312378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491125, 34.814796, 39.893082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575130, 35.171261, 39.732224>,  <30.625534, 35.385139, 39.635708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575130, 35.171261, 39.732224>,  <30.491125, 34.814796, 39.893082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575130, 35.171261, 39.732224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825641, -0.058647, -0.561139,
		-0.523651, 0.449875, 0.723465,
		0.210014, 0.891164, -0.402146,
		30.638134, 35.438610, 39.611580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001965, 34.861534, 39.472557>,  <30.491125, 34.814796, 39.893082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001965, 34.861534, 39.472557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165733, 35.217915, 39.393986>,  <30.263994, 35.431744, 39.346844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165733, 35.217915, 39.393986>,  <30.001965, 34.861534, 39.472557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165733, 35.217915, 39.393986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678306, 0.153271, -0.718616,
		-0.610144, 0.427454, 0.667089,
		0.409420, 0.890950, -0.196427,
		30.288559, 35.485199, 39.335056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547543, 35.493176, 39.578617>,  <30.001965, 34.861534, 39.472557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547543, 35.493176, 39.578617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824873, 35.522171, 39.291832>,  <29.991272, 35.539566, 39.119759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824873, 35.522171, 39.291832>,  <29.547543, 35.493176, 39.578617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824873, 35.522171, 39.291832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718766, 0.140927, -0.680820,
		0.051691, 0.987363, 0.149808,
		0.693328, 0.072485, -0.716967,
		30.032871, 35.543915, 39.076740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284504, 35.946625, 39.163383>,  <29.547543, 35.493176, 39.578617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284504, 35.946625, 39.163383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576117, 35.782944, 38.943905>,  <29.751085, 35.684734, 38.812218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576117, 35.782944, 38.943905>,  <29.284504, 35.946625, 39.163383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576117, 35.782944, 38.943905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571511, 0.077236, -0.816951,
		0.376676, 0.909169, -0.177555,
		0.729034, -0.409201, -0.548693,
		29.794827, 35.660183, 38.779297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231030, 36.249363, 38.624844>,  <29.284504, 35.946625, 39.163383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231030, 36.249363, 38.624844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436874, 35.922203, 38.521915>,  <29.560381, 35.725906, 38.460159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436874, 35.922203, 38.521915>,  <29.231030, 36.249363, 38.624844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436874, 35.922203, 38.521915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371917, 0.057480, -0.926485,
		0.772561, 0.572485, -0.274610,
		0.514614, -0.817898, -0.257323,
		29.591259, 35.676834, 38.444717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514219, 36.453606, 38.102654>,  <29.231030, 36.249363, 38.624844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514219, 36.453606, 38.102654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496529, 36.054634, 38.080120>,  <29.485914, 35.815250, 38.066601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496529, 36.054634, 38.080120>,  <29.514219, 36.453606, 38.102654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496529, 36.054634, 38.080120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429742, 0.069903, -0.900242,
		0.901868, -0.015604, -0.431730,
		-0.044226, -0.997432, -0.056338,
		29.483261, 35.755405, 38.063217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801800, 36.207520, 37.522636>,  <29.514219, 36.453606, 38.102654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801800, 36.207520, 37.522636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517086, 35.955872, 37.647587>,  <29.346258, 35.804882, 37.722557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517086, 35.955872, 37.647587>,  <29.801800, 36.207520, 37.522636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517086, 35.955872, 37.647587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486873, 0.121354, -0.865001,
		0.506280, -0.767779, -0.392678,
		-0.711783, -0.629118, 0.312372,
		29.303551, 35.767136, 37.741299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417248, 35.748894, 37.126213>,  <29.801800, 36.207520, 37.522636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417248, 35.748894, 37.126213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802229, 35.824089, 37.204536>,  <30.033218, 35.869205, 37.251530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802229, 35.824089, 37.204536>,  <29.417248, 35.748894, 37.126213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802229, 35.824089, 37.204536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243963, -0.282821, -0.927628,
		-0.119006, 0.940570, -0.318065,
		0.962455, 0.187990, 0.195807,
		30.090965, 35.880486, 37.263279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643312, 36.094917, 36.538513>,  <29.417248, 35.748894, 37.126213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643312, 36.094917, 36.538513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942282, 35.896713, 36.715523>,  <30.121662, 35.777790, 36.821728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942282, 35.896713, 36.715523>,  <29.643312, 36.094917, 36.538513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942282, 35.896713, 36.715523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386138, -0.218019, -0.896306,
		0.540609, 0.840795, 0.028384,
		0.747421, -0.495512, 0.442526,
		30.166508, 35.748058, 36.848282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366386, 36.179092, 36.205685>,  <29.643312, 36.094917, 36.538513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366386, 36.179092, 36.205685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351095, 35.820797, 36.382862>,  <30.341921, 35.605820, 36.489166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351095, 35.820797, 36.382862>,  <30.366386, 36.179092, 36.205685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351095, 35.820797, 36.382862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409869, -0.418317, -0.810567,
		0.911343, 0.150560, 0.383126,
		-0.038229, -0.895736, 0.442940,
		30.339626, 35.552074, 36.515743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060560, 35.953484, 36.399487>,  <30.366386, 36.179092, 36.205685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060560, 35.953484, 36.399487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792530, 35.674480, 36.297909>,  <30.631712, 35.507080, 36.236961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792530, 35.674480, 36.297909>,  <31.060560, 35.953484, 36.399487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792530, 35.674480, 36.297909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601971, -0.310453, -0.735697,
		0.434316, -0.645837, 0.627905,
		-0.670075, -0.697505, -0.253940,
		30.591507, 35.465229, 36.221725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508780, 35.317150, 36.186977>,  <31.060560, 35.953484, 36.399487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508780, 35.317150, 36.186977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139297, 35.258877, 36.045246>,  <30.917608, 35.223915, 35.960205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139297, 35.258877, 36.045246>,  <31.508780, 35.317150, 36.186977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139297, 35.258877, 36.045246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377842, -0.499243, -0.779738,
		-0.063306, -0.854128, 0.516196,
		-0.923704, -0.145679, -0.354330,
		30.862186, 35.215172, 35.938946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673559, 34.825600, 35.750362>,  <31.508780, 35.317150, 36.186977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673559, 34.825600, 35.750362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019077, 34.735668, 35.570004>,  <32.226387, 34.681709, 35.461788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019077, 34.735668, 35.570004>,  <31.673559, 34.825600, 35.750362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019077, 34.735668, 35.570004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275298, 0.960126, 0.048662,
		0.421977, -0.166166, 0.891248,
		0.863797, -0.224824, -0.450897,
		32.278217, 34.668221, 35.434734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252918, 34.971088, 35.195110>,  <31.673559, 34.825600, 35.750362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252918, 34.971088, 35.195110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456596, 34.726433, 34.952911>,  <31.578804, 34.579639, 34.807594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456596, 34.726433, 34.952911>,  <31.252918, 34.971088, 35.195110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456596, 34.726433, 34.952911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343294, 0.500798, -0.794576,
		0.789221, 0.612456, 0.045033,
		0.509195, -0.611636, -0.605493,
		31.609354, 34.542942, 34.771263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793343, 35.279198, 34.751995>,  <31.252918, 34.971088, 35.195110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793343, 35.279198, 34.751995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635738, 34.949627, 34.589073>,  <31.541176, 34.751884, 34.491318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635738, 34.949627, 34.589073>,  <31.793343, 35.279198, 34.751995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635738, 34.949627, 34.589073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295907, 0.533279, -0.792498,
		0.870169, -0.191728, -0.453923,
		-0.394011, -0.823926, -0.407309,
		31.517534, 34.702450, 34.466881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567871, 35.301128, 34.685143>,  <31.793343, 35.279198, 34.751995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567871, 35.301128, 34.685143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921860, 35.287800, 34.499363>,  <33.134254, 35.279804, 34.387897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921860, 35.287800, 34.499363>,  <32.567871, 35.301128, 34.685143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921860, 35.287800, 34.499363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464353, -0.137227, -0.874954,
		-0.034579, 0.989979, -0.136915,
		0.884975, -0.033322, -0.464445,
		33.187351, 35.277802, 34.360031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534515, 35.765278, 34.103363>,  <32.567871, 35.301128, 34.685143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534515, 35.765278, 34.103363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828930, 35.517326, 33.994549>,  <33.005577, 35.368557, 33.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828930, 35.517326, 33.994549>,  <32.534515, 35.765278, 34.103363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828930, 35.517326, 33.994549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267541, 0.102774, -0.958050,
		0.621829, 0.777941, -0.090197,
		0.736037, -0.619875, -0.272039,
		33.049740, 35.331364, 33.912937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786480, 36.038132, 33.410889>,  <32.534515, 35.765278, 34.103363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786480, 36.038132, 33.410889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923702, 35.664871, 33.453873>,  <33.006035, 35.440914, 33.479664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923702, 35.664871, 33.453873>,  <32.786480, 36.038132, 33.410889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923702, 35.664871, 33.453873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196619, -0.183209, -0.963211,
		0.918506, 0.309306, -0.246326,
		0.343056, -0.933147, 0.107463,
		33.026619, 35.384926, 33.486111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274330, 35.895416, 32.871605>,  <32.786480, 36.038132, 33.410889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274330, 35.895416, 32.871605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107552, 35.556198, 33.002434>,  <33.007484, 35.352669, 33.080929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107552, 35.556198, 33.002434>,  <33.274330, 35.895416, 32.871605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107552, 35.556198, 33.002434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307129, -0.207225, -0.928833,
		0.855470, -0.487724, -0.174058,
		-0.416945, -0.848047, 0.327069,
		32.982468, 35.301785, 33.100555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599716, 35.412807, 32.535973>,  <33.274330, 35.895416, 32.871605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599716, 35.412807, 32.535973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229870, 35.296940, 32.634899>,  <33.007961, 35.227417, 32.694256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229870, 35.296940, 32.634899>,  <33.599716, 35.412807, 32.535973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229870, 35.296940, 32.634899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270041, 0.040614, -0.961992,
		0.268618, -0.956264, -0.115776,
		-0.924620, -0.289673, 0.247320,
		32.952484, 35.210037, 32.709095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450954, 34.865639, 32.088776>,  <33.599716, 35.412807, 32.535973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450954, 34.865639, 32.088776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116730, 35.043980, 32.217182>,  <32.916195, 35.150982, 32.294224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116730, 35.043980, 32.217182>,  <33.450954, 34.865639, 32.088776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116730, 35.043980, 32.217182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347485, 0.023702, -0.937386,
		-0.425541, -0.894794, 0.135122,
		-0.835565, 0.445849, 0.321014,
		32.866058, 35.177734, 32.313488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814014, 34.554546, 31.705078>,  <33.450954, 34.865639, 32.088776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814014, 34.554546, 31.705078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748917, 34.928497, 31.831264>,  <32.709858, 35.152866, 31.906977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748917, 34.928497, 31.831264>,  <32.814014, 34.554546, 31.705078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748917, 34.928497, 31.831264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073510, 0.307351, -0.948753,
		-0.983926, -0.177597, 0.018702,
		-0.162747, 0.934877, 0.315466,
		32.700092, 35.208961, 31.925903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203991, 34.969234, 31.356178>,  <32.814014, 34.554546, 31.705078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203991, 34.969234, 31.356178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509533, 35.212303, 31.443148>,  <32.692856, 35.358143, 31.495329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509533, 35.212303, 31.443148>,  <32.203991, 34.969234, 31.356178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509533, 35.212303, 31.443148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052282, 0.277515, -0.959297,
		-0.643272, 0.744127, 0.180210,
		0.763850, 0.607668, 0.217423,
		32.738689, 35.394604, 31.508375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856222, 35.110096, 30.817507>,  <32.203991, 34.969234, 31.356178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856222, 35.110096, 30.817507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474785, 35.174232, 30.715569>,  <31.245922, 35.212715, 30.654406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474785, 35.174232, 30.715569>,  <31.856222, 35.110096, 30.817507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474785, 35.174232, 30.715569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113913, -0.591374, -0.798311,
		-0.278711, -0.790296, 0.545667,
		-0.953595, 0.160340, -0.254847,
		31.188705, 35.222336, 30.639114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574558, 34.443344, 30.460312>,  <31.856222, 35.110096, 30.817507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574558, 34.443344, 30.460312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339239, 34.742115, 30.336370>,  <31.198048, 34.921375, 30.262007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339239, 34.742115, 30.336370>,  <31.574558, 34.443344, 30.460312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339239, 34.742115, 30.336370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014087, -0.373650, -0.927462,
		-0.808521, -0.549989, 0.209296,
		-0.588298, 0.746925, -0.309852,
		31.162750, 34.966194, 30.243416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929905, 34.162579, 30.217215>,  <31.574558, 34.443344, 30.460312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929905, 34.162579, 30.217215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001217, 34.511646, 30.035376>,  <31.044004, 34.721088, 29.926271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001217, 34.511646, 30.035376>,  <30.929905, 34.162579, 30.217215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001217, 34.511646, 30.035376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101023, -0.443324, -0.890651,
		-0.978780, 0.204710, 0.009125,
		0.178280, 0.872673, -0.454597,
		31.054701, 34.773449, 29.898996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764648, 34.000252, 29.578362>,  <30.929905, 34.162579, 30.217215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764648, 34.000252, 29.578362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855183, 34.374584, 29.470295>,  <30.909502, 34.599186, 29.405455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855183, 34.374584, 29.470295>,  <30.764648, 34.000252, 29.578362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855183, 34.374584, 29.470295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068334, -0.261424, -0.962802,
		-0.971650, 0.236375, 0.004780,
		0.226333, 0.935833, -0.270165,
		30.923082, 34.655334, 29.389246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229597, 34.292500, 29.078568>,  <30.764648, 34.000252, 29.578362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229597, 34.292500, 29.078568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574348, 34.482967, 29.008791>,  <30.781199, 34.597248, 28.966925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574348, 34.482967, 29.008791>,  <30.229597, 34.292500, 29.078568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574348, 34.482967, 29.008791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098076, -0.180980, -0.978584,
		-0.497542, 0.860529, -0.109282,
		0.861878, 0.476169, -0.174442,
		30.832912, 34.625816, 28.956459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163288, 34.828812, 28.568600>,  <30.229597, 34.292500, 29.078568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163288, 34.828812, 28.568600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552336, 34.736282, 28.559692>,  <30.785765, 34.680763, 28.554348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552336, 34.736282, 28.559692>,  <30.163288, 34.828812, 28.568600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552336, 34.736282, 28.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027841, -0.020853, -0.999395,
		0.230723, 0.972652, -0.026723,
		0.972621, -0.231327, -0.022269,
		30.844122, 34.666885, 28.553011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428335, 35.284184, 28.167191>,  <30.163288, 34.828812, 28.568600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428335, 35.284184, 28.167191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690876, 34.982960, 28.148842>,  <30.848400, 34.802227, 28.137833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690876, 34.982960, 28.148842>,  <30.428335, 35.284184, 28.167191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690876, 34.982960, 28.148842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094360, 0.142266, -0.985320,
		0.748530, 0.642389, 0.164435,
		0.656353, -0.753058, -0.045874,
		30.887781, 34.757042, 28.135080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858534, 35.470730, 27.607733>,  <30.428335, 35.284184, 28.167191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858534, 35.470730, 27.607733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982016, 35.096214, 27.674740>,  <31.056105, 34.871506, 27.714943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982016, 35.096214, 27.674740>,  <30.858534, 35.470730, 27.607733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982016, 35.096214, 27.674740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221809, -0.100398, -0.969908,
		0.924934, 0.336572, 0.176684,
		0.308705, -0.936290, 0.167516,
		31.074627, 34.815327, 27.724995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653994, 35.386406, 27.325899>,  <30.858534, 35.470730, 27.607733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653994, 35.386406, 27.325899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480883, 35.026073, 27.311998>,  <31.377016, 34.809875, 27.303658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480883, 35.026073, 27.311998>,  <31.653994, 35.386406, 27.325899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480883, 35.026073, 27.311998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079949, 0.000043, -0.996799,
		0.897949, -0.434170, 0.072002,
		-0.432778, -0.900831, -0.034750,
		31.351049, 34.755825, 27.301573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081245, 35.096897, 26.848455>,  <31.653994, 35.386406, 27.325899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081245, 35.096897, 26.848455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753439, 34.868073, 26.861973>,  <31.556755, 34.730778, 26.870083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753439, 34.868073, 26.861973>,  <32.081245, 35.096897, 26.848455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753439, 34.868073, 26.861973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060713, -0.145312, -0.987521,
		0.569835, -0.807235, 0.153816,
		-0.819513, -0.572063, 0.033795,
		31.507586, 34.696453, 26.872110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215771, 34.478954, 26.399258>,  <32.081245, 35.096897, 26.848455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215771, 34.478954, 26.399258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818403, 34.508781, 26.434040>,  <31.579983, 34.526676, 26.454910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818403, 34.508781, 26.434040>,  <32.215771, 34.478954, 26.399258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818403, 34.508781, 26.434040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089617, -0.033098, -0.995426,
		-0.071354, -0.996666, 0.039563,
		-0.993417, 0.074574, 0.086956,
		31.520378, 34.531151, 26.460127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869370, 33.886963, 26.241463>,  <32.215771, 34.478954, 26.399258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869370, 33.886963, 26.241463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627377, 34.194515, 26.158699>,  <31.482180, 34.379047, 26.109041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627377, 34.194515, 26.158699>,  <31.869370, 33.886963, 26.241463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627377, 34.194515, 26.158699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043852, -0.291640, -0.955522,
		-0.795029, -0.569003, 0.210155,
		-0.604984, 0.768884, -0.206910,
		31.445881, 34.425179, 26.096626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674599, 33.695747, 25.586164>,  <31.869370, 33.886963, 26.241463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674599, 33.695747, 25.586164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491068, 34.050945, 25.598503>,  <31.380949, 34.264065, 25.605907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491068, 34.050945, 25.598503>,  <31.674599, 33.695747, 25.586164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491068, 34.050945, 25.598503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281756, -0.112481, -0.952870,
		-0.842669, -0.445894, 0.301806,
		-0.458826, 0.887990, 0.030849,
		31.353420, 34.317341, 25.607758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957567, 33.577698, 25.284920>,  <31.674599, 33.695747, 25.586164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957567, 33.577698, 25.284920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057728, 33.964275, 25.261963>,  <31.117825, 34.196220, 25.248188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057728, 33.964275, 25.261963>,  <30.957567, 33.577698, 25.284920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057728, 33.964275, 25.261963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318623, 0.026285, -0.947517,
		-0.914209, 0.255546, 0.314511,
		0.250401, 0.966439, -0.057393,
		31.132849, 34.254208, 25.244745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470901, 33.918903, 24.868572>,  <30.957567, 33.577698, 25.284920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470901, 33.918903, 24.868572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784639, 34.166000, 24.845957>,  <30.972881, 34.314259, 24.832388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784639, 34.166000, 24.845957>,  <30.470901, 33.918903, 24.868572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784639, 34.166000, 24.845957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110139, 0.048988, -0.992708,
		-0.610472, 0.784850, 0.106461,
		0.784342, 0.617746, -0.056537,
		31.019941, 34.351326, 24.828997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225964, 34.419403, 24.514603>,  <30.470901, 33.918903, 24.868572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225964, 34.419403, 24.514603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621752, 34.463802, 24.477444>,  <30.859224, 34.490440, 24.455149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621752, 34.463802, 24.477444>,  <30.225964, 34.419403, 24.514603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621752, 34.463802, 24.477444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106082, 0.119454, -0.987156,
		-0.098473, 0.986616, 0.129971,
		0.989469, 0.110996, -0.092900,
		30.918592, 34.497101, 24.449574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287886, 34.974903, 23.973255>,  <30.225964, 34.419403, 24.514603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287886, 34.974903, 23.973255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630072, 34.767776, 23.976063>,  <30.835382, 34.643501, 23.977747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630072, 34.767776, 23.976063>,  <30.287886, 34.974903, 23.973255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630072, 34.767776, 23.976063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018249, 0.016596, -0.999696,
		0.517542, 0.855331, 0.023647,
		0.855463, -0.517816, 0.007020,
		30.886711, 34.612431, 23.978168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740757, 35.401276, 23.628157>,  <30.287886, 34.974903, 23.973255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740757, 35.401276, 23.628157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882906, 35.027939, 23.607790>,  <30.968195, 34.803936, 23.595570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882906, 35.027939, 23.607790>,  <30.740757, 35.401276, 23.628157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882906, 35.027939, 23.607790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024073, 0.063595, -0.997686,
		0.934415, 0.353323, 0.045068,
		0.355372, -0.933337, -0.050918,
		30.989517, 34.747936, 23.592514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101490, 35.485321, 22.998247>,  <30.740757, 35.401276, 23.628157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101490, 35.485321, 22.998247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087231, 35.092091, 23.070124>,  <31.078676, 34.856152, 23.113249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087231, 35.092091, 23.070124>,  <31.101490, 35.485321, 22.998247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087231, 35.092091, 23.070124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150241, -0.172491, -0.973486,
		0.988007, -0.061699, -0.141549,
		-0.035647, -0.983077, 0.179691,
		31.076536, 34.797169, 23.124031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665783, 35.159096, 22.669359>,  <31.101490, 35.485321, 22.998247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665783, 35.159096, 22.669359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382065, 34.880798, 22.714680>,  <31.211834, 34.713818, 22.741873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382065, 34.880798, 22.714680>,  <31.665783, 35.159096, 22.669359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382065, 34.880798, 22.714680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060190, -0.219921, -0.973659,
		0.702338, -0.683792, 0.197866,
		-0.709295, -0.695747, 0.113302,
		31.169277, 34.672073, 22.748671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814764, 34.650406, 22.218225>,  <31.665783, 35.159096, 22.669359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814764, 34.650406, 22.218225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443928, 34.530621, 22.308403>,  <31.221426, 34.458748, 22.362511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443928, 34.530621, 22.308403>,  <31.814764, 34.650406, 22.218225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443928, 34.530621, 22.308403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088685, -0.409133, -0.908155,
		0.364196, -0.861935, 0.352746,
		-0.927090, -0.299463, 0.225445,
		31.165800, 34.440781, 22.376036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832483, 34.028004, 21.939718>,  <31.814764, 34.650406, 22.218225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832483, 34.028004, 21.939718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443258, 34.113827, 21.973461>,  <31.209724, 34.165321, 21.993708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443258, 34.113827, 21.973461>,  <31.832483, 34.028004, 21.939718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443258, 34.113827, 21.973461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147132, -0.296224, -0.943718,
		-0.177494, -0.930707, 0.319813,
		-0.973061, 0.214559, 0.084359,
		31.151340, 34.178196, 21.998768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465128, 33.477612, 21.562761>,  <31.832483, 34.028004, 21.939718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465128, 33.477612, 21.562761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205765, 33.781975, 21.572399>,  <31.050148, 33.964592, 21.578182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205765, 33.781975, 21.572399>,  <31.465128, 33.477612, 21.562761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205765, 33.781975, 21.572399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313042, -0.237638, -0.919529,
		-0.693955, -0.603772, 0.392283,
		-0.648407, 0.760913, 0.024096,
		31.011242, 34.010250, 21.579628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946865, 33.278862, 21.107679>,  <31.465128, 33.477612, 21.562761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946865, 33.278862, 21.107679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859098, 33.668583, 21.128073>,  <30.806438, 33.902416, 21.140308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859098, 33.668583, 21.128073>,  <30.946865, 33.278862, 21.107679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859098, 33.668583, 21.128073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405995, -0.043664, -0.912832,
		-0.887144, -0.220989, 0.405140,
		-0.219416, 0.974298, 0.050984,
		30.793274, 33.960873, 21.143368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301630, 33.282749, 20.824377>,  <30.946865, 33.278862, 21.107679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301630, 33.282749, 20.824377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417591, 33.665531, 20.829884>,  <30.487167, 33.895203, 20.833187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417591, 33.665531, 20.829884>,  <30.301630, 33.282749, 20.824377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417591, 33.665531, 20.829884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432910, 0.143950, -0.889870,
		-0.853548, 0.252017, 0.456007,
		0.289905, 0.956956, 0.013767,
		30.504562, 33.952618, 20.834013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719952, 33.611637, 20.533894>,  <30.301630, 33.282749, 20.824377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719952, 33.611637, 20.533894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044630, 33.843609, 20.506071>,  <30.239437, 33.982792, 20.489378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044630, 33.843609, 20.506071>,  <29.719952, 33.611637, 20.533894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044630, 33.843609, 20.506071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320764, 0.343070, -0.882844,
		-0.488120, 0.738912, 0.464487,
		0.811695, 0.579925, -0.069557,
		30.288139, 34.017586, 20.485205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437592, 34.316746, 20.330904>,  <29.719952, 33.611637, 20.533894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437592, 34.316746, 20.330904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817327, 34.286926, 20.208792>,  <30.045170, 34.269035, 20.135525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817327, 34.286926, 20.208792>,  <29.437592, 34.316746, 20.330904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817327, 34.286926, 20.208792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264206, 0.336629, -0.903812,
		0.170143, 0.938682, 0.299879,
		0.949340, -0.074547, -0.305280,
		30.102129, 34.264561, 20.117208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609602, 34.886150, 19.907621>,  <29.437592, 34.316746, 20.330904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609602, 34.886150, 19.907621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939299, 34.696175, 19.784296>,  <30.137115, 34.582188, 19.710300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939299, 34.696175, 19.784296>,  <29.609602, 34.886150, 19.907621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939299, 34.696175, 19.784296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213968, 0.242882, -0.946164,
		0.524258, 0.845836, 0.098570,
		0.824240, -0.474943, -0.308314,
		30.186571, 34.553692, 19.691801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008047, 35.313232, 19.541651>,  <29.609602, 34.886150, 19.907621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008047, 35.313232, 19.541651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090425, 34.943439, 19.413324>,  <30.139853, 34.721565, 19.336329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090425, 34.943439, 19.413324>,  <30.008047, 35.313232, 19.541651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090425, 34.943439, 19.413324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153386, 0.293294, -0.943637,
		0.966467, 0.243547, -0.081400,
		0.205946, -0.924480, -0.320816,
		30.152210, 34.666096, 19.317080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663275, 35.449142, 18.992540>,  <30.008047, 35.313232, 19.541651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663275, 35.449142, 18.992540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471928, 35.102333, 18.936775>,  <30.357121, 34.894249, 18.903316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471928, 35.102333, 18.936775>,  <30.663275, 35.449142, 18.992540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471928, 35.102333, 18.936775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273852, 0.298125, -0.914400,
		0.834368, -0.399239, -0.380049,
		-0.478366, -0.867023, -0.139413,
		30.328417, 34.842228, 18.894951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685656, 35.453564, 18.345207>,  <30.663275, 35.449142, 18.992540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685656, 35.453564, 18.345207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431103, 35.147190, 18.381773>,  <30.278370, 34.963364, 18.403713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431103, 35.147190, 18.381773>,  <30.685656, 35.453564, 18.345207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431103, 35.147190, 18.381773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383608, 0.211430, -0.898967,
		0.669224, -0.607156, -0.428370,
		-0.636383, -0.765936, 0.091416,
		30.240189, 34.917408, 18.409197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737288, 35.139229, 17.796947>,  <30.685656, 35.453564, 18.345207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737288, 35.139229, 17.796947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375277, 35.035595, 17.931883>,  <30.158070, 34.973415, 18.012844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375277, 35.035595, 17.931883>,  <30.737288, 35.139229, 17.796947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375277, 35.035595, 17.931883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399006, 0.242329, -0.884348,
		0.147377, -0.934960, -0.322692,
		-0.905027, -0.259088, 0.337341,
		30.103769, 34.957867, 18.033085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499212, 34.640415, 17.304613>,  <30.737288, 35.139229, 17.796947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499212, 34.640415, 17.304613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147224, 34.745613, 17.462847>,  <29.936031, 34.808731, 17.557787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147224, 34.745613, 17.462847>,  <30.499212, 34.640415, 17.304613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147224, 34.745613, 17.462847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332134, 0.254739, -0.908182,
		-0.339618, -0.930560, -0.136813,
		-0.879969, 0.262995, 0.395584,
		29.883234, 34.824512, 17.581522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930685, 34.173496, 16.993364>,  <30.499212, 34.640415, 17.304613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930685, 34.173496, 16.993364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775707, 34.512665, 17.138092>,  <29.682720, 34.716167, 17.224928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775707, 34.512665, 17.138092>,  <29.930685, 34.173496, 16.993364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775707, 34.512665, 17.138092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465198, 0.159019, -0.870806,
		-0.795914, -0.505705, 0.332841,
		-0.387443, 0.847924, 0.361819,
		29.659473, 34.767040, 17.246637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361761, 34.263329, 16.550722>,  <29.930685, 34.173496, 16.993364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361761, 34.263329, 16.550722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374767, 34.615051, 16.740782>,  <29.382570, 34.826084, 16.854818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374767, 34.615051, 16.740782>,  <29.361761, 34.263329, 16.550722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374767, 34.615051, 16.740782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470434, 0.432912, -0.768947,
		-0.881836, -0.198526, 0.427730,
		0.032514, 0.879304, 0.475151,
		29.384521, 34.878841, 16.883327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723635, 34.507786, 16.362495>,  <29.361761, 34.263329, 16.550722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723635, 34.507786, 16.362495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928278, 34.828621, 16.485723>,  <29.051064, 35.021122, 16.559660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928278, 34.828621, 16.485723>,  <28.723635, 34.507786, 16.362495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928278, 34.828621, 16.485723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509808, 0.571989, -0.642592,
		-0.691629, 0.171700, 0.701547,
		0.511610, 0.802090, 0.308070,
		29.081760, 35.069248, 16.578144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211643, 35.088985, 16.481199>,  <28.723635, 34.507786, 16.362495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211643, 35.088985, 16.481199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567802, 35.259232, 16.416645>,  <28.781498, 35.361378, 16.377913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567802, 35.259232, 16.416645>,  <28.211643, 35.088985, 16.481199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567802, 35.259232, 16.416645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415565, 0.615410, -0.669759,
		-0.185740, 0.663418, 0.724830,
		0.890397, 0.425615, -0.161387,
		28.834921, 35.386917, 16.368229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154999, 35.696396, 16.704065>,  <28.211643, 35.088985, 16.481199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154999, 35.696396, 16.704065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452705, 35.706326, 16.437098>,  <28.631330, 35.712284, 16.276917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452705, 35.706326, 16.437098>,  <28.154999, 35.696396, 16.704065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452705, 35.706326, 16.437098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465418, 0.735989, -0.491636,
		0.479009, 0.676538, 0.559326,
		0.744269, 0.024822, -0.667419,
		28.675985, 35.713772, 16.236872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313332, 36.389683, 16.526201>,  <28.154999, 35.696396, 16.704065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313332, 36.389683, 16.526201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432322, 36.161827, 16.219732>,  <28.503716, 36.025112, 16.035851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432322, 36.161827, 16.219732>,  <28.313332, 36.389683, 16.526201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432322, 36.161827, 16.219732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380152, 0.665470, -0.642366,
		0.875782, 0.482349, -0.018590,
		0.297473, -0.569640, -0.766172,
		28.521564, 35.990936, 15.989881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151114, 36.812958, 16.100809>,  <28.313332, 36.389683, 16.526201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151114, 36.812958, 16.100809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256929, 36.529613, 15.839048>,  <28.320419, 36.359608, 15.681993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256929, 36.529613, 15.839048>,  <28.151114, 36.812958, 16.100809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256929, 36.529613, 15.839048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347180, 0.563124, -0.749905,
		0.899714, 0.425574, -0.096962,
		0.264538, -0.708363, -0.654401,
		28.336290, 36.317104, 15.642728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584936, 37.169987, 15.588778>,  <28.151114, 36.812958, 16.100809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584936, 37.169987, 15.588778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455473, 36.828503, 15.425599>,  <28.377796, 36.623611, 15.327692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455473, 36.828503, 15.425599>,  <28.584936, 37.169987, 15.588778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455473, 36.828503, 15.425599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147461, 0.471398, -0.869505,
		0.934613, -0.221265, -0.278460,
		-0.323657, -0.853713, -0.407946,
		28.358376, 36.572388, 15.303215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817404, 37.249306, 14.860544>,  <28.584936, 37.169987, 15.588778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817404, 37.249306, 14.860544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562925, 36.941608, 14.836806>,  <28.410238, 36.756992, 14.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562925, 36.941608, 14.836806>,  <28.817404, 37.249306, 14.860544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562925, 36.941608, 14.836806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255064, 0.282296, -0.924798,
		0.728146, -0.573216, -0.375801,
		-0.636196, -0.769241, -0.059346,
		28.372066, 36.710835, 14.819002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946762, 36.870544, 14.219811>,  <28.817404, 37.249306, 14.860544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946762, 36.870544, 14.219811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571585, 36.786995, 14.330544>,  <28.346479, 36.736866, 14.396984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571585, 36.786995, 14.330544>,  <28.946762, 36.870544, 14.219811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571585, 36.786995, 14.330544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329307, 0.286170, -0.899813,
		0.108727, -0.935135, -0.337195,
		-0.937942, -0.208874, 0.276832,
		28.290201, 36.724331, 14.413594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572941, 36.289497, 13.752966>,  <28.946762, 36.870544, 14.219811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572941, 36.289497, 13.752966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338217, 36.563335, 13.925930>,  <28.197382, 36.727638, 14.029708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338217, 36.563335, 13.925930>,  <28.572941, 36.289497, 13.752966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338217, 36.563335, 13.925930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346100, 0.270719, -0.898291,
		-0.732029, -0.676785, 0.078078,
		-0.586812, 0.684597, 0.432409,
		28.162172, 36.768715, 14.055653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928312, 36.157776, 13.454415>,  <28.572941, 36.289497, 13.752966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928312, 36.157776, 13.454415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985241, 36.547676, 13.523241>,  <28.019398, 36.781616, 13.564536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985241, 36.547676, 13.523241>,  <27.928312, 36.157776, 13.454415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985241, 36.547676, 13.523241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250119, 0.203607, -0.946565,
		-0.957698, 0.091678, 0.272781,
		0.142319, 0.974751, 0.172064,
		28.027937, 36.840103, 13.574861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257183, 36.537674, 13.485271>,  <27.928312, 36.157776, 13.454415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257183, 36.537674, 13.485271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597021, 36.709793, 13.363263>,  <27.800924, 36.813065, 13.290058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597021, 36.709793, 13.363263>,  <27.257183, 36.537674, 13.485271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597021, 36.709793, 13.363263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380506, 0.099558, -0.919404,
		-0.365249, 0.897181, 0.248314,
		0.849593, 0.430296, -0.305020,
		27.851898, 36.838882, 13.271757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557882, 36.723309, 12.771689>,  <27.257183, 36.537674, 13.485271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557882, 36.723309, 12.771689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441198, 37.015511, 13.018675>,  <27.371187, 37.190834, 13.166866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441198, 37.015511, 13.018675>,  <27.557882, 36.723309, 12.771689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441198, 37.015511, 13.018675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933449, 0.076531, 0.350451,
		0.208752, 0.678601, -0.704218,
		-0.291711, 0.730509, 0.617464,
		27.353685, 37.234665, 13.203914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989960, 37.362892, 12.752323>,  <27.557882, 36.723309, 12.771689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989960, 37.362892, 12.752323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830038, 37.290440, 13.111733>,  <27.734085, 37.246967, 13.327379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830038, 37.290440, 13.111733>,  <27.989960, 37.362892, 12.752323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830038, 37.290440, 13.111733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904358, 0.081726, 0.418877,
		-0.149304, 0.980058, 0.131132,
		-0.399806, -0.181130, 0.898525,
		27.710096, 37.236099, 13.381290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323381, 37.809437, 13.187605>,  <27.989960, 37.362892, 12.752323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323381, 37.809437, 13.187605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146254, 37.590664, 13.471795>,  <28.039976, 37.459400, 13.642309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146254, 37.590664, 13.471795>,  <28.323381, 37.809437, 13.187605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146254, 37.590664, 13.471795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744206, 0.217742, 0.631463,
		-0.500068, 0.808365, 0.310610,
		-0.442819, -0.546932, 0.710476,
		28.013409, 37.426586, 13.684937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150984, 38.127956, 13.890898>,  <28.323381, 37.809437, 13.187605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150984, 38.127956, 13.890898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210918, 37.735668, 13.941076>,  <28.246880, 37.500294, 13.971184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210918, 37.735668, 13.941076>,  <28.150984, 38.127956, 13.890898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210918, 37.735668, 13.941076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629740, 0.192477, 0.752582,
		-0.762218, -0.033765, 0.646439,
		0.149835, -0.980721, 0.125446,
		28.255869, 37.441452, 13.978710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896173, 38.376545, 13.224473>,  <28.150984, 38.127956, 13.890898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896173, 38.376545, 13.224473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497240, 38.359196, 13.200994>,  <27.257879, 38.348785, 13.186906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497240, 38.359196, 13.200994>,  <27.896173, 38.376545, 13.224473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497240, 38.359196, 13.200994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063513, 0.119540, 0.990796,
		-0.035954, 0.991882, -0.121975,
		-0.997333, -0.043370, -0.058699,
		27.198040, 38.346184, 13.183384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581398, 38.765659, 13.674653>,  <27.896173, 38.376545, 13.224473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581398, 38.765659, 13.674653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243910, 38.564388, 13.599882>,  <27.041416, 38.443626, 13.555019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243910, 38.564388, 13.599882>,  <27.581398, 38.765659, 13.674653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243910, 38.564388, 13.599882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246981, 0.054722, 0.967474,
		-0.476584, 0.862448, -0.170446,
		-0.843723, -0.503180, -0.186928,
		26.990793, 38.413433, 13.543803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850670, 39.109520, 13.865312>,  <27.581398, 38.765659, 13.674653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850670, 39.109520, 13.865312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915766, 38.716263, 13.898654>,  <26.954824, 38.480309, 13.918659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915766, 38.716263, 13.898654>,  <26.850670, 39.109520, 13.865312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915766, 38.716263, 13.898654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203207, 0.049273, 0.977895,
		-0.965516, -0.176082, -0.191763,
		0.162741, -0.983141, 0.083355,
		26.964588, 38.421322, 13.923660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464966, 38.961708, 14.365846>,  <26.850670, 39.109520, 13.865312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464966, 38.961708, 14.365846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689245, 38.632343, 14.330944>,  <26.823812, 38.434723, 14.310003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689245, 38.632343, 14.330944>,  <26.464966, 38.961708, 14.365846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689245, 38.632343, 14.330944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316876, -0.310733, 0.896122,
		-0.764990, -0.474804, -0.435146,
		0.560697, -0.823411, -0.087254,
		26.857454, 38.385319, 14.304768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097759, 38.341862, 14.485991>,  <26.464966, 38.961708, 14.365846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097759, 38.341862, 14.485991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465389, 38.203548, 14.561602>,  <26.685966, 38.120560, 14.606968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465389, 38.203548, 14.561602>,  <26.097759, 38.341862, 14.485991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465389, 38.203548, 14.561602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328851, -0.408643, 0.851391,
		-0.217154, -0.844656, -0.489286,
		0.919076, -0.345786, 0.189028,
		26.741112, 38.099812, 14.618310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978046, 37.631004, 14.582107>,  <26.097759, 38.341862, 14.485991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978046, 37.631004, 14.582107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327505, 37.711113, 14.759478>,  <26.537180, 37.759178, 14.865900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327505, 37.711113, 14.759478>,  <25.978046, 37.631004, 14.582107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327505, 37.711113, 14.759478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398257, -0.229206, 0.888175,
		0.279516, -0.952551, -0.120484,
		0.873648, 0.200276, 0.443427,
		26.589600, 37.771194, 14.892506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064001, 37.069962, 15.048238>,  <25.978046, 37.631004, 14.582107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064001, 37.069962, 15.048238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323797, 37.337486, 15.192929>,  <26.479675, 37.498001, 15.279744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323797, 37.337486, 15.192929>,  <26.064001, 37.069962, 15.048238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323797, 37.337486, 15.192929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159588, -0.345229, 0.924851,
		0.743433, -0.658410, -0.117489,
		0.649492, 0.668815, 0.361729,
		26.518644, 37.538132, 15.301448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462296, 36.735260, 15.617179>,  <26.064001, 37.069962, 15.048238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462296, 36.735260, 15.617179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497469, 37.132088, 15.653111>,  <26.518574, 37.370186, 15.674669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497469, 37.132088, 15.653111>,  <26.462296, 36.735260, 15.617179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497469, 37.132088, 15.653111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002997, -0.089915, 0.995945,
		0.996122, -0.087845, -0.004933,
		0.087933, 0.992068, 0.089830,
		26.523849, 37.429707, 15.680059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791925, 36.808380, 16.215660>,  <26.462296, 36.735260, 15.617179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791925, 36.808380, 16.215660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636631, 37.175323, 16.180492>,  <26.543455, 37.395489, 16.159391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636631, 37.175323, 16.180492>,  <26.791925, 36.808380, 16.215660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636631, 37.175323, 16.180492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009692, 0.091334, 0.995773,
		0.921510, 0.387446, -0.026568,
		-0.388235, 0.917357, -0.087920,
		26.520161, 37.450531, 16.154116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106415, 37.222553, 16.798538>,  <26.791925, 36.808380, 16.215660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106415, 37.222553, 16.798538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776320, 37.425941, 16.700201>,  <26.578262, 37.547974, 16.641199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776320, 37.425941, 16.700201>,  <27.106415, 37.222553, 16.798538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776320, 37.425941, 16.700201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223182, 0.106269, 0.968967,
		0.518817, 0.854497, 0.025785,
		-0.825239, 0.508471, -0.245842,
		26.528748, 37.578484, 16.626448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144590, 37.948452, 17.075287>,  <27.106415, 37.222553, 16.798538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144590, 37.948452, 17.075287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752806, 37.893944, 17.015842>,  <26.517735, 37.861240, 16.980175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752806, 37.893944, 17.015842>,  <27.144590, 37.948452, 17.075287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752806, 37.893944, 17.015842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185697, 0.322474, 0.928185,
		-0.078561, 0.936718, -0.341155,
		-0.979461, -0.136270, -0.148612,
		26.458967, 37.853062, 16.971258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806973, 38.573212, 17.420486>,  <27.144590, 37.948452, 17.075287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806973, 38.573212, 17.420486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501394, 38.318443, 17.379087>,  <26.318047, 38.165581, 17.354248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501394, 38.318443, 17.379087>,  <26.806973, 38.573212, 17.420486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501394, 38.318443, 17.379087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282500, 0.185919, 0.941078,
		-0.580154, 0.748172, -0.321963,
		-0.763947, -0.636925, -0.103497,
		26.272211, 38.127365, 17.348038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237392, 38.916466, 17.718491>,  <26.806973, 38.573212, 17.420486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237392, 38.916466, 17.718491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172518, 38.521877, 17.708866>,  <26.133593, 38.285126, 17.703091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172518, 38.521877, 17.708866>,  <26.237392, 38.916466, 17.718491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172518, 38.521877, 17.708866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266501, 0.020312, 0.963621,
		-0.950091, 0.162699, -0.266188,
		-0.162187, -0.986467, -0.024061,
		26.123861, 38.225937, 17.701649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541109, 38.803688, 18.185963>,  <26.237392, 38.916466, 17.718491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541109, 38.803688, 18.185963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727865, 38.451679, 18.151152>,  <25.839918, 38.240475, 18.130264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727865, 38.451679, 18.151152>,  <25.541109, 38.803688, 18.185963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.727865, 38.451679, 18.151152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112998, -0.156975, 0.981117,
		-0.877066, -0.448240, -0.172731,
		0.466890, -0.880023, -0.087027,
		25.867931, 38.187672, 18.125044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109966, 38.265675, 18.496674>,  <25.541109, 38.803688, 18.185963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109966, 38.265675, 18.496674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497610, 38.167027, 18.495743>,  <25.730196, 38.107838, 18.495184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497610, 38.167027, 18.495743>,  <25.109966, 38.265675, 18.496674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497610, 38.167027, 18.495743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096553, -0.388056, 0.916564,
		-0.226943, -0.888027, -0.399881,
		0.969110, -0.246617, -0.002325,
		25.788343, 38.093040, 18.495045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164772, 37.645279, 18.972033>,  <25.109966, 38.265675, 18.496674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164772, 37.645279, 18.972033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552729, 37.717964, 18.907179>,  <25.785503, 37.761574, 18.868267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552729, 37.717964, 18.907179>,  <25.164772, 37.645279, 18.972033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552729, 37.717964, 18.907179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201709, -0.226376, 0.952926,
		0.136455, -0.956940, -0.256214,
		0.969894, 0.181712, -0.162133,
		25.843697, 37.772476, 18.858540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526791, 37.128941, 19.318283>,  <25.164772, 37.645279, 18.972033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526791, 37.128941, 19.318283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802805, 37.415558, 19.277443>,  <25.968412, 37.587528, 19.252939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802805, 37.415558, 19.277443>,  <25.526791, 37.128941, 19.318283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802805, 37.415558, 19.277443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320634, -0.176160, 0.930678,
		0.648881, -0.674937, -0.351303,
		0.690034, 0.716539, -0.102100,
		26.009815, 37.630520, 19.246813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201450, 36.851078, 19.432659>,  <25.526791, 37.128941, 19.318283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201450, 36.851078, 19.432659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224957, 37.242485, 19.511698>,  <26.239059, 37.477329, 19.559120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224957, 37.242485, 19.511698>,  <26.201450, 36.851078, 19.432659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224957, 37.242485, 19.511698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525630, -0.198607, 0.827205,
		0.848681, 0.055253, -0.526011,
		0.058764, 0.978521, 0.197597,
		26.242586, 37.536041, 19.570976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875105, 36.903542, 19.659847>,  <26.201450, 36.851078, 19.432659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875105, 36.903542, 19.659847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670555, 37.223328, 19.785929>,  <26.547825, 37.415199, 19.861578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670555, 37.223328, 19.785929>,  <26.875105, 36.903542, 19.659847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670555, 37.223328, 19.785929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536152, 0.010162, 0.844060,
		0.671593, 0.600627, -0.433831,
		-0.511374, 0.799464, 0.315203,
		26.517143, 37.463165, 19.880489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358070, 37.355038, 20.016596>,  <26.875105, 36.903542, 19.659847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358070, 37.355038, 20.016596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006401, 37.489956, 20.151226>,  <26.795399, 37.570908, 20.232004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006401, 37.489956, 20.151226>,  <27.358070, 37.355038, 20.016596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006401, 37.489956, 20.151226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334777, -0.065408, 0.940024,
		0.339079, 0.939125, -0.055413,
		-0.879176, 0.337293, 0.336576,
		26.742649, 37.591145, 20.252199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447454, 37.921936, 20.605415>,  <27.358070, 37.355038, 20.016596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447454, 37.921936, 20.605415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085754, 37.753895, 20.635998>,  <26.868734, 37.653072, 20.654348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085754, 37.753895, 20.635998>,  <27.447454, 37.921936, 20.605415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085754, 37.753895, 20.635998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197637, -0.253045, 0.947052,
		-0.378509, 0.871484, 0.311844,
		-0.904252, -0.420099, 0.076458,
		26.814480, 37.627865, 20.658936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191183, 38.180611, 21.280056>,  <27.447454, 37.921936, 20.605415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191183, 38.180611, 21.280056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969425, 37.858967, 21.194208>,  <26.836370, 37.665981, 21.142698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969425, 37.858967, 21.194208>,  <27.191183, 38.180611, 21.280056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969425, 37.858967, 21.194208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077104, -0.306395, 0.948776,
		-0.828675, 0.509447, 0.231863,
		-0.554393, -0.804105, -0.214622,
		26.803106, 37.617737, 21.129822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600712, 38.190041, 21.764620>,  <27.191183, 38.180611, 21.280056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600712, 38.190041, 21.764620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648996, 37.815742, 21.632067>,  <26.677967, 37.591164, 21.552534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648996, 37.815742, 21.632067>,  <26.600712, 38.190041, 21.764620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648996, 37.815742, 21.632067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006937, -0.333021, 0.942894,
		-0.992663, -0.116117, -0.033709,
		0.120712, -0.935742, -0.331383,
		26.685209, 37.535019, 21.532652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142826, 37.806629, 22.195375>,  <26.600712, 38.190041, 21.764620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142826, 37.806629, 22.195375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378677, 37.523464, 22.039839>,  <26.520187, 37.353565, 21.946518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378677, 37.523464, 22.039839>,  <26.142826, 37.806629, 22.195375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378677, 37.523464, 22.039839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030531, -0.461551, 0.886588,
		-0.807099, -0.534628, -0.250529,
		0.589626, -0.707915, -0.388840,
		26.555565, 37.311089, 21.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910004, 37.212971, 22.438065>,  <26.142826, 37.806629, 22.195375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910004, 37.212971, 22.438065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288759, 37.115379, 22.354277>,  <26.516012, 37.056824, 22.304005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288759, 37.115379, 22.354277>,  <25.910004, 37.212971, 22.438065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288759, 37.115379, 22.354277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048885, -0.534618, 0.843679,
		-0.317828, -0.809109, -0.494296,
		0.946887, -0.243981, -0.209470,
		26.572824, 37.042183, 22.291435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934736, 36.514908, 22.442789>,  <25.910004, 37.212971, 22.438065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934736, 36.514908, 22.442789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315762, 36.626888, 22.490543>,  <26.544376, 36.694077, 22.519196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315762, 36.626888, 22.490543>,  <25.934736, 36.514908, 22.442789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315762, 36.626888, 22.490543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052985, -0.538830, 0.840747,
		0.299694, -0.794539, -0.528103,
		0.952563, 0.279948, 0.119385,
		26.601530, 36.710873, 22.526360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264164, 36.062992, 22.796638>,  <25.934736, 36.514908, 22.442789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264164, 36.062992, 22.796638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568068, 36.322086, 22.819263>,  <26.750410, 36.477543, 22.832838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568068, 36.322086, 22.819263>,  <26.264164, 36.062992, 22.796638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568068, 36.322086, 22.819263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342192, -0.472304, 0.812301,
		0.552872, -0.597800, -0.580489,
		0.759761, 0.647737, 0.056561,
		26.795996, 36.516407, 22.836231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886570, 35.677883, 22.772085>,  <26.264164, 36.062992, 22.796638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886570, 35.677883, 22.772085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957623, 36.027905, 22.952188>,  <27.000254, 36.237915, 23.060251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957623, 36.027905, 22.952188>,  <26.886570, 35.677883, 22.772085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957623, 36.027905, 22.952188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452586, -0.478919, 0.752198,
		0.873849, 0.070166, -0.481107,
		0.177633, 0.875050, 0.450260,
		27.010912, 36.290421, 23.087267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539364, 35.505310, 23.014849>,  <26.886570, 35.677883, 22.772085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539364, 35.505310, 23.014849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416992, 35.814335, 23.237396>,  <27.343569, 35.999752, 23.370926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416992, 35.814335, 23.237396>,  <27.539364, 35.505310, 23.014849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416992, 35.814335, 23.237396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547906, -0.335047, 0.766514,
		0.778593, 0.539338, -0.320793,
		-0.305929, 0.772566, 0.556371,
		27.325214, 36.046104, 23.404308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169382, 35.677551, 23.449631>,  <27.539364, 35.505310, 23.014849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169382, 35.677551, 23.449631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861204, 35.858891, 23.628914>,  <27.676296, 35.967693, 23.736485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861204, 35.858891, 23.628914>,  <28.169382, 35.677551, 23.449631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861204, 35.858891, 23.628914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510169, 0.016848, 0.859909,
		0.382284, 0.891176, -0.244263,
		-0.770446, 0.453345, 0.448210,
		27.630070, 35.994892, 23.763376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566738, 36.109516, 23.815596>,  <28.169382, 35.677551, 23.449631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566738, 36.109516, 23.815596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205177, 36.089970, 23.985573>,  <27.988241, 36.078243, 24.087559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205177, 36.089970, 23.985573>,  <28.566738, 36.109516, 23.815596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205177, 36.089970, 23.985573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422771, 0.048995, 0.904911,
		-0.065035, 0.997603, -0.023629,
		-0.903900, -0.048862, 0.424944,
		27.934008, 36.075310, 24.113056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621309, 36.556877, 24.356838>,  <28.566738, 36.109516, 23.815596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621309, 36.556877, 24.356838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298330, 36.341843, 24.454021>,  <28.104542, 36.212822, 24.512331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298330, 36.341843, 24.454021>,  <28.621309, 36.556877, 24.356838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298330, 36.341843, 24.454021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287753, 0.000622, 0.957705,
		-0.515000, 0.843208, 0.154189,
		-0.807449, -0.537587, 0.242956,
		28.056095, 36.180565, 24.526909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271282, 36.826832, 24.899473>,  <28.621309, 36.556877, 24.356838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271282, 36.826832, 24.899473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136078, 36.450474, 24.908062>,  <28.054955, 36.224659, 24.913216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136078, 36.450474, 24.908062>,  <28.271282, 36.826832, 24.899473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136078, 36.450474, 24.908062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135107, -0.025932, 0.990492,
		-0.931393, 0.337700, 0.135887,
		-0.338013, -0.940897, 0.021473,
		28.034674, 36.168205, 24.914503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931112, 36.794769, 25.512516>,  <28.271282, 36.826832, 24.899473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931112, 36.794769, 25.512516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994137, 36.406349, 25.440693>,  <28.031952, 36.173298, 25.397598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994137, 36.406349, 25.440693>,  <27.931112, 36.794769, 25.512516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994137, 36.406349, 25.440693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333365, -0.118854, 0.935276,
		-0.929539, -0.207221, 0.304987,
		0.157560, -0.971048, -0.179560,
		28.041405, 36.115036, 25.386826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521889, 36.394245, 26.046295>,  <27.931112, 36.794769, 25.512516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521889, 36.394245, 26.046295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824099, 36.173248, 25.905478>,  <28.005424, 36.040649, 25.820988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824099, 36.173248, 25.905478>,  <27.521889, 36.394245, 26.046295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824099, 36.173248, 25.905478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238006, -0.269168, 0.933221,
		-0.610359, -0.788858, -0.071866,
		0.755523, -0.552496, -0.352042,
		28.050755, 36.007500, 25.799866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594355, 35.756947, 26.453314>,  <27.521889, 36.394245, 26.046295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594355, 35.756947, 26.453314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954533, 35.778599, 26.280678>,  <28.170639, 35.791588, 26.177095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954533, 35.778599, 26.280678>,  <27.594355, 35.756947, 26.453314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954533, 35.778599, 26.280678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434493, -0.065414, 0.898297,
		0.020391, -0.996389, -0.082420,
		0.900444, 0.054128, -0.431590,
		28.224667, 35.794838, 26.151201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951456, 35.317017, 26.855444>,  <27.594355, 35.756947, 26.453314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951456, 35.317017, 26.855444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236750, 35.525478, 26.667959>,  <28.407927, 35.650555, 26.555468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236750, 35.525478, 26.667959>,  <27.951456, 35.317017, 26.855444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236750, 35.525478, 26.667959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525147, 0.045580, 0.849790,
		0.464240, -0.852242, -0.241176,
		0.713234, 0.521159, -0.468712,
		28.450720, 35.681828, 26.527346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694729, 34.983845, 27.105433>,  <27.951456, 35.317017, 26.855444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694729, 34.983845, 27.105433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770109, 35.352039, 26.968502>,  <28.815338, 35.572956, 26.886343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770109, 35.352039, 26.968502>,  <28.694729, 34.983845, 27.105433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770109, 35.352039, 26.968502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441736, 0.231871, 0.866663,
		0.877129, -0.314541, -0.362916,
		0.188451, 0.920489, -0.342325,
		28.826645, 35.628185, 26.865805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423887, 35.024788, 27.175520>,  <28.694729, 34.983845, 27.105433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423887, 35.024788, 27.175520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260420, 35.389809, 27.181782>,  <29.162340, 35.608822, 27.185539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260420, 35.389809, 27.181782>,  <29.423887, 35.024788, 27.175520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260420, 35.389809, 27.181782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598406, 0.254954, 0.759545,
		0.689131, 0.319769, -0.650266,
		-0.408667, 0.912549, 0.015655,
		29.137819, 35.663574, 27.186478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929516, 35.359783, 27.424431>,  <29.423887, 35.024788, 27.175520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929516, 35.359783, 27.424431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635172, 35.628334, 27.459684>,  <29.458565, 35.789463, 27.480837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635172, 35.628334, 27.459684>,  <29.929516, 35.359783, 27.424431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635172, 35.628334, 27.459684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357625, 0.274815, 0.892514,
		0.574990, 0.688284, -0.442325,
		-0.735861, 0.671373, 0.088132,
		29.414413, 35.829746, 27.486124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247066, 35.976196, 27.505955>,  <29.929516, 35.359783, 27.424431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247066, 35.976196, 27.505955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873882, 36.001400, 27.647722>,  <29.649971, 36.016521, 27.732782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873882, 36.001400, 27.647722>,  <30.247066, 35.976196, 27.505955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873882, 36.001400, 27.647722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358959, 0.236840, 0.902804,
		-0.027056, 0.969503, -0.243580,
		-0.932961, 0.063009, 0.354420,
		29.593994, 36.020302, 27.754047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218559, 36.597622, 27.771830>,  <30.247066, 35.976196, 27.505955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218559, 36.597622, 27.771830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921751, 36.413353, 27.966639>,  <29.743666, 36.302792, 28.083525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921751, 36.413353, 27.966639>,  <30.218559, 36.597622, 27.771830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921751, 36.413353, 27.966639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415784, 0.253624, 0.873383,
		-0.525861, 0.850564, 0.003345,
		-0.742020, -0.460669, 0.487022,
		29.699144, 36.275154, 28.112745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979593, 37.025455, 28.311054>,  <30.218559, 36.597622, 27.771830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979593, 37.025455, 28.311054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852837, 36.672932, 28.451263>,  <29.776783, 36.461418, 28.535389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852837, 36.672932, 28.451263>,  <29.979593, 37.025455, 28.311054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852837, 36.672932, 28.451263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333809, 0.242294, 0.910970,
		-0.887779, 0.405687, 0.217409,
		-0.316892, -0.881313, 0.350525,
		29.757769, 36.408539, 28.556421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320116, 37.290642, 28.269827>,  <29.979593, 37.025455, 28.311054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320116, 37.290642, 28.269827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451181, 37.652279, 28.379559>,  <29.529819, 37.869259, 28.445398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451181, 37.652279, 28.379559>,  <29.320116, 37.290642, 28.269827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451181, 37.652279, 28.379559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554610, 0.419124, -0.718848,
		-0.764883, 0.083392, 0.638749,
		0.327661, 0.904091, 0.274331,
		29.549480, 37.923508, 28.461859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776131, 37.804173, 28.459290>,  <29.320116, 37.290642, 28.269827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776131, 37.804173, 28.459290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078779, 38.006302, 28.293316>,  <29.260368, 38.127579, 28.193731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078779, 38.006302, 28.293316>,  <28.776131, 37.804173, 28.459290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078779, 38.006302, 28.293316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647306, 0.489308, -0.584442,
		-0.092304, 0.710789, 0.697322,
		0.756621, 0.505328, -0.414933,
		29.305765, 38.157902, 28.168837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540642, 38.591831, 28.462385>,  <28.776131, 37.804173, 28.459290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540642, 38.591831, 28.462385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827538, 38.525352, 28.191698>,  <28.999674, 38.485466, 28.029285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827538, 38.525352, 28.191698>,  <28.540642, 38.591831, 28.462385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827538, 38.525352, 28.191698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487070, 0.574933, -0.657431,
		0.498330, 0.801144, 0.331415,
		0.717238, -0.166195, -0.676719,
		29.042709, 38.475494, 27.988682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649914, 39.236603, 28.177700>,  <28.540642, 38.591831, 28.462385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649914, 39.236603, 28.177700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831100, 38.999031, 27.911747>,  <28.939812, 38.856487, 27.752174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831100, 38.999031, 27.911747>,  <28.649914, 39.236603, 28.177700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831100, 38.999031, 27.911747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526349, 0.423773, -0.737138,
		0.719568, 0.683859, -0.120660,
		0.452966, -0.593930, -0.664882,
		28.966990, 38.820850, 27.712282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563951, 39.635021, 27.652937>,  <28.649914, 39.236603, 28.177700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563951, 39.635021, 27.652937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685436, 39.308334, 27.456676>,  <28.758327, 39.112324, 27.338921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685436, 39.308334, 27.456676>,  <28.563951, 39.635021, 27.652937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685436, 39.308334, 27.456676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495812, 0.304271, -0.813381,
		0.813591, 0.490303, -0.312526,
		0.303711, -0.816714, -0.490651,
		28.776550, 39.063320, 27.309481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031712, 39.757294, 27.009529>,  <28.563951, 39.635021, 27.652937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031712, 39.757294, 27.009529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860664, 39.401638, 26.944330>,  <28.758036, 39.188244, 26.905210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860664, 39.401638, 26.944330>,  <29.031712, 39.757294, 27.009529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860664, 39.401638, 26.944330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329203, 0.321112, -0.887982,
		0.841883, -0.326059, -0.430022,
		-0.427620, -0.889142, -0.162999,
		28.732378, 39.134895, 26.895432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307957, 39.540707, 26.438549>,  <29.031712, 39.757294, 27.009529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307957, 39.540707, 26.438549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964739, 39.338379, 26.474115>,  <28.758808, 39.216984, 26.495455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964739, 39.338379, 26.474115>,  <29.307957, 39.540707, 26.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964739, 39.338379, 26.474115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241884, 0.245292, -0.938789,
		0.453048, -0.827030, -0.332821,
		-0.858044, -0.505820, 0.088916,
		28.707325, 39.186634, 26.500790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195620, 39.170998, 25.891996>,  <29.307957, 39.540707, 26.438549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195620, 39.170998, 25.891996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820967, 39.200760, 26.028927>,  <28.596176, 39.218616, 26.111084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820967, 39.200760, 26.028927>,  <29.195620, 39.170998, 25.891996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820967, 39.200760, 26.028927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330673, 0.134852, -0.934061,
		-0.115664, -0.988068, -0.101702,
		-0.936630, 0.074407, 0.342325,
		28.539978, 39.223083, 26.131624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723600, 38.868069, 25.391842>,  <29.195620, 39.170998, 25.891996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723600, 38.868069, 25.391842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480312, 39.097565, 25.611256>,  <28.334339, 39.235264, 25.742903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480312, 39.097565, 25.611256>,  <28.723600, 38.868069, 25.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480312, 39.097565, 25.611256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370818, 0.405630, -0.835439,
		-0.701828, -0.711537, -0.033959,
		-0.608221, 0.573741, 0.548533,
		28.297846, 39.269688, 25.775816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094538, 38.767193, 25.041599>,  <28.723600, 38.868069, 25.391842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094538, 38.767193, 25.041599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078499, 39.113041, 25.241928>,  <28.068874, 39.320549, 25.362125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078499, 39.113041, 25.241928>,  <28.094538, 38.767193, 25.041599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078499, 39.113041, 25.241928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529705, 0.406602, -0.744371,
		-0.847234, -0.295137, 0.441689,
		-0.040099, 0.864621, 0.500822,
		28.066469, 39.372429, 25.392176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551456, 39.031467, 24.788862>,  <28.094538, 38.767193, 25.041599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551456, 39.031467, 24.788862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697485, 39.348434, 24.984333>,  <27.785101, 39.538612, 25.101616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697485, 39.348434, 24.984333>,  <27.551456, 39.031467, 24.788862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697485, 39.348434, 24.984333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317541, 0.599413, -0.734760,
		-0.875152, 0.113064, 0.470452,
		0.365069, 0.792414, 0.488675,
		27.807005, 39.586159, 25.130936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968388, 39.551762, 24.825787>,  <27.551456, 39.031467, 24.788862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968388, 39.551762, 24.825787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309906, 39.753685, 24.876701>,  <27.514816, 39.874840, 24.907249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309906, 39.753685, 24.876701>,  <26.968388, 39.551762, 24.825787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309906, 39.753685, 24.876701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239318, 0.597701, -0.765167,
		-0.462342, 0.622834, 0.631124,
		0.853795, 0.504808, 0.127287,
		27.566044, 39.905128, 24.914888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716200, 40.326027, 24.812698>,  <26.968388, 39.551762, 24.825787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716200, 40.326027, 24.812698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104980, 40.283031, 24.729025>,  <27.338249, 40.257236, 24.678822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104980, 40.283031, 24.729025>,  <26.716200, 40.326027, 24.812698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104980, 40.283031, 24.729025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134787, 0.474295, -0.869987,
		0.192725, 0.873780, 0.446504,
		0.971951, -0.107485, -0.209183,
		27.396566, 40.250786, 24.666269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932894, 40.952797, 24.565748>,  <26.716200, 40.326027, 24.812698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932894, 40.952797, 24.565748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210823, 40.710838, 24.410151>,  <27.377581, 40.565662, 24.316792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.210823, 40.710838, 24.410151>,  <26.932894, 40.952797, 24.565748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210823, 40.710838, 24.410151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070323, 0.481146, -0.873815,
		0.715732, 0.634504, 0.291775,
		0.694826, -0.604899, -0.388992,
		27.419271, 40.529369, 24.293453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433844, 41.400455, 24.315861>,  <26.932894, 40.952797, 24.565748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433844, 41.400455, 24.315861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446117, 41.048042, 24.127035>,  <27.453482, 40.836594, 24.013739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446117, 41.048042, 24.127035>,  <27.433844, 41.400455, 24.315861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446117, 41.048042, 24.127035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214253, 0.455513, -0.864062,
		0.976296, 0.127654, -0.174787,
		0.030683, -0.881029, -0.472066,
		27.455322, 40.783733, 23.985415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731743, 41.442974, 23.675037>,  <27.433844, 41.400455, 24.315861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731743, 41.442974, 23.675037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580339, 41.074413, 23.639826>,  <27.489498, 40.853275, 23.618698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580339, 41.074413, 23.639826>,  <27.731743, 41.442974, 23.675037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580339, 41.074413, 23.639826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087172, 0.130169, -0.987652,
		0.921484, -0.366159, -0.129591,
		-0.378507, -0.921403, -0.088030,
		27.466787, 40.797993, 23.613417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098328, 41.046764, 23.162666>,  <27.731743, 41.442974, 23.675037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098328, 41.046764, 23.162666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746244, 40.859699, 23.194973>,  <27.534994, 40.747459, 23.214357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746244, 40.859699, 23.194973>,  <28.098328, 41.046764, 23.162666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746244, 40.859699, 23.194973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078693, -0.024002, -0.996610,
		0.468016, -0.883581, -0.015675,
		-0.880209, -0.467663, 0.080765,
		27.482182, 40.719402, 23.219202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156582, 40.418552, 22.800819>,  <28.098328, 41.046764, 23.162666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156582, 40.418552, 22.800819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761330, 40.479965, 22.798899>,  <27.524178, 40.516815, 22.797747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761330, 40.479965, 22.798899>,  <28.156582, 40.418552, 22.800819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761330, 40.479965, 22.798899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001197, -0.023556, -0.999722,
		-0.153608, -0.987862, 0.023092,
		-0.988131, 0.153538, -0.004801,
		27.464890, 40.526028, 22.797459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817045, 40.011658, 22.200588>,  <28.156582, 40.418552, 22.800819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817045, 40.011658, 22.200588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518810, 40.264885, 22.283850>,  <27.339869, 40.416821, 22.333807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518810, 40.264885, 22.283850>,  <27.817045, 40.011658, 22.200588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518810, 40.264885, 22.283850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331530, -0.081410, -0.939926,
		-0.578088, -0.769807, 0.270578,
		-0.745589, 0.633065, 0.208152,
		27.295134, 40.454803, 22.346294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298376, 39.663406, 21.997149>,  <27.817045, 40.011658, 22.200588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298376, 39.663406, 21.997149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251493, 40.060528, 21.987274>,  <27.223364, 40.298801, 21.981350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251493, 40.060528, 21.987274>,  <27.298376, 39.663406, 21.997149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251493, 40.060528, 21.987274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172028, -0.044778, -0.984074,
		-0.978094, -0.111094, 0.176038,
		-0.117207, 0.992800, -0.024686,
		27.216331, 40.358368, 21.979868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735157, 39.724464, 21.645924>,  <27.298376, 39.663406, 21.997149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735157, 39.724464, 21.645924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882280, 40.095852, 21.625265>,  <26.970554, 40.318684, 21.612871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882280, 40.095852, 21.625265>,  <26.735157, 39.724464, 21.645924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882280, 40.095852, 21.625265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028184, -0.044381, -0.998617,
		-0.929475, 0.368754, 0.009844,
		0.367807, 0.928467, -0.051644,
		26.992622, 40.374393, 21.609772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322956, 40.057648, 21.140802>,  <26.735157, 39.724464, 21.645924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322956, 40.057648, 21.140802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665045, 40.264832, 21.147877>,  <26.870298, 40.389141, 21.152121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665045, 40.264832, 21.147877>,  <26.322956, 40.057648, 21.140802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665045, 40.264832, 21.147877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054997, -0.056767, -0.996871,
		-0.515338, 0.853517, -0.077035,
		0.855220, 0.517963, 0.017686,
		26.921612, 40.420219, 21.153183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237553, 40.536514, 20.598488>,  <26.322956, 40.057648, 21.140802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237553, 40.536514, 20.598488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628937, 40.510475, 20.676849>,  <26.863768, 40.494850, 20.723866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628937, 40.510475, 20.676849>,  <26.237553, 40.536514, 20.598488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628937, 40.510475, 20.676849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182929, -0.166380, -0.968945,
		0.095673, 0.983910, -0.150887,
		0.978460, -0.065100, 0.195904,
		26.922474, 40.490944, 20.735620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592577, 41.018044, 20.144224>,  <26.237553, 40.536514, 20.598488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592577, 41.018044, 20.144224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864901, 40.747997, 20.257866>,  <27.028296, 40.585968, 20.326050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864901, 40.747997, 20.257866>,  <26.592577, 41.018044, 20.144224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864901, 40.747997, 20.257866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220506, -0.180969, -0.958450,
		0.698481, 0.715168, 0.025662,
		0.680809, -0.675118, 0.284102,
		27.069143, 40.545464, 20.343096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096037, 41.068207, 19.646606>,  <26.592577, 41.018044, 20.144224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096037, 41.068207, 19.646606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214411, 40.728477, 19.821455>,  <27.285435, 40.524639, 19.926365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214411, 40.728477, 19.821455>,  <27.096037, 41.068207, 19.646606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214411, 40.728477, 19.821455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165018, -0.405281, -0.899175,
		0.940846, 0.338232, 0.020216,
		0.295936, -0.849321, 0.437121,
		27.303192, 40.473682, 19.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870388, 40.937119, 19.533445>,  <27.096037, 41.068207, 19.646606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870388, 40.937119, 19.533445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690714, 40.588089, 19.610231>,  <27.582909, 40.378674, 19.656303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690714, 40.588089, 19.610231>,  <27.870388, 40.937119, 19.533445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690714, 40.588089, 19.610231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315210, -0.355818, -0.879793,
		0.835988, -0.334681, 0.434871,
		-0.449186, -0.872572, 0.191965,
		27.555958, 40.326317, 19.667820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393497, 40.414528, 19.380070>,  <27.870388, 40.937119, 19.533445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393497, 40.414528, 19.380070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048866, 40.211479, 19.381302>,  <27.842089, 40.089649, 19.382040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048866, 40.211479, 19.381302>,  <28.393497, 40.414528, 19.380070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048866, 40.211479, 19.381302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201377, -0.347350, -0.915858,
		0.465977, -0.788461, 0.401492,
		-0.861576, -0.507619, 0.003079,
		27.790394, 40.059193, 19.382225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517673, 39.835064, 19.019110>,  <28.393497, 40.414528, 19.380070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517673, 39.835064, 19.019110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124731, 39.898449, 18.979387>,  <27.888966, 39.936481, 18.955553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124731, 39.898449, 18.979387>,  <28.517673, 39.835064, 19.019110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124731, 39.898449, 18.979387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066052, -0.202791, -0.976992,
		-0.174950, -0.966316, 0.188747,
		-0.982359, 0.158457, -0.099306,
		27.830023, 39.945988, 18.949594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379704, 39.433224, 18.514019>,  <28.517673, 39.835064, 19.019110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379704, 39.433224, 18.514019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045544, 39.653080, 18.514830>,  <27.845049, 39.784996, 18.515316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045544, 39.653080, 18.514830>,  <28.379704, 39.433224, 18.514019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045544, 39.653080, 18.514830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079220, -0.116759, -0.989996,
		-0.543908, -0.827200, 0.141083,
		-0.835397, 0.549643, 0.002025,
		27.794924, 39.817974, 18.515436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037474, 39.096886, 18.025843>,  <28.379704, 39.433224, 18.514019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037474, 39.096886, 18.025843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871933, 39.459084, 18.063389>,  <27.772608, 39.676403, 18.085917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871933, 39.459084, 18.063389>,  <28.037474, 39.096886, 18.025843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871933, 39.459084, 18.063389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202506, 0.008953, -0.979240,
		-0.887534, -0.424270, 0.179662,
		-0.413854, 0.905491, 0.093864,
		27.747776, 39.730732, 18.091547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553356, 39.076958, 17.533211>,  <28.037474, 39.096886, 18.025843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553356, 39.076958, 17.533211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568348, 39.470749, 17.601786>,  <27.577343, 39.707024, 17.642931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568348, 39.470749, 17.601786>,  <27.553356, 39.076958, 17.533211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568348, 39.470749, 17.601786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063554, 0.173557, -0.982771,
		-0.997274, 0.025937, 0.069073,
		0.037479, 0.984482, 0.171435,
		27.579592, 39.766094, 17.653215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974236, 39.413490, 17.208511>,  <27.553356, 39.076958, 17.533211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974236, 39.413490, 17.208511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225277, 39.721718, 17.252937>,  <27.375902, 39.906654, 17.279593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225277, 39.721718, 17.252937>,  <26.974236, 39.413490, 17.208511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225277, 39.721718, 17.252937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222793, 0.314460, -0.922756,
		-0.745973, 0.554380, 0.369034,
		0.627604, 0.770569, 0.111066,
		27.413559, 39.952888, 17.286257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670401, 39.974289, 16.857510>,  <26.974236, 39.413490, 17.208511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670401, 39.974289, 16.857510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053873, 40.085312, 16.882471>,  <27.283957, 40.151924, 16.897448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053873, 40.085312, 16.882471>,  <26.670401, 39.974289, 16.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053873, 40.085312, 16.882471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028907, 0.313259, -0.949228,
		-0.283010, 0.908203, 0.308338,
		0.958681, 0.277554, 0.062402,
		27.341478, 40.168579, 16.901192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608536, 40.490612, 16.430313>,  <26.670401, 39.974289, 16.857510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608536, 40.490612, 16.430313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999407, 40.417385, 16.473412>,  <27.233931, 40.373451, 16.499271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999407, 40.417385, 16.473412>,  <26.608536, 40.490612, 16.430313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999407, 40.417385, 16.473412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169385, 0.365434, -0.915296,
		0.128183, 0.912658, 0.388102,
		0.977179, -0.183064, 0.107748,
		27.292561, 40.362465, 16.505735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024523, 41.118652, 16.162897>,  <26.608536, 40.490612, 16.430313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024523, 41.118652, 16.162897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266310, 40.801319, 16.133915>,  <27.411381, 40.610920, 16.116526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266310, 40.801319, 16.133915>,  <27.024523, 41.118652, 16.162897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266310, 40.801319, 16.133915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215970, 0.250742, -0.943655,
		0.766797, 0.554759, 0.322900,
		0.604466, -0.793329, -0.072457,
		27.447649, 40.563320, 16.112179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664490, 41.371136, 15.870318>,  <27.024523, 41.118652, 16.162897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664490, 41.371136, 15.870318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667908, 40.975967, 15.808422>,  <27.669958, 40.738869, 15.771284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667908, 40.975967, 15.808422>,  <27.664490, 41.371136, 15.870318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667908, 40.975967, 15.808422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345652, 0.148126, -0.926598,
		0.938324, -0.045569, 0.342741,
		0.008545, -0.987918, -0.154742,
		27.670471, 40.679592, 15.761999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272287, 41.226345, 15.435567>,  <27.664490, 41.371136, 15.870318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272287, 41.226345, 15.435567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046999, 40.901852, 15.372726>,  <27.911825, 40.707153, 15.335022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046999, 40.901852, 15.372726>,  <28.272287, 41.226345, 15.435567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046999, 40.901852, 15.372726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249102, 0.014585, -0.968367,
		0.787865, -0.584538, 0.193866,
		-0.563220, -0.811235, -0.157101,
		27.878033, 40.658482, 15.325596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723923, 40.618057, 15.123515>,  <28.272287, 41.226345, 15.435567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723923, 40.618057, 15.123515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335396, 40.646130, 15.032639>,  <28.102280, 40.662971, 14.978112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335396, 40.646130, 15.032639>,  <28.723923, 40.618057, 15.123515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335396, 40.646130, 15.032639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222698, -0.066427, -0.972622,
		-0.083364, -0.995319, 0.048889,
		-0.971317, 0.070194, -0.227193,
		28.044001, 40.667183, 14.964480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297386, 41.058289, 14.995632>,  <28.723923, 40.618057, 15.123515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297386, 41.058289, 14.995632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602983, 41.193089, 14.775544>,  <29.786343, 41.273968, 14.643491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602983, 41.193089, 14.775544>,  <29.297386, 41.058289, 14.995632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602983, 41.193089, 14.775544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527602, 0.164588, 0.833395,
		0.371414, -0.927006, -0.052058,
		0.763994, 0.337001, -0.550221,
		29.832182, 41.294189, 14.610477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828320, 40.668884, 15.107432>,  <29.297386, 41.058289, 14.995632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828320, 40.668884, 15.107432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016752, 41.005047, 15.000253>,  <30.129812, 41.206745, 14.935946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016752, 41.005047, 15.000253>,  <29.828320, 40.668884, 15.107432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016752, 41.005047, 15.000253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536215, -0.031639, 0.843488,
		0.700397, -0.541030, -0.465544,
		0.471082, 0.840408, -0.267948,
		30.158077, 41.257168, 14.919868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530796, 40.545216, 15.261306>,  <29.828320, 40.668884, 15.107432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530796, 40.545216, 15.261306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436480, 40.933205, 15.237473>,  <30.379890, 41.166000, 15.223172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436480, 40.933205, 15.237473>,  <30.530796, 40.545216, 15.261306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436480, 40.933205, 15.237473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261607, 0.122403, 0.957382,
		0.935930, 0.210155, -0.282613,
		-0.235791, 0.969976, -0.059583,
		30.365742, 41.224197, 15.219598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912348, 40.904961, 15.780490>,  <30.530796, 40.545216, 15.261306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912348, 40.904961, 15.780490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626503, 41.180149, 15.729849>,  <30.454996, 41.345261, 15.699465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626503, 41.180149, 15.729849>,  <30.912348, 40.904961, 15.780490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626503, 41.180149, 15.729849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009533, 0.171389, 0.985157,
		0.699455, 0.705214, -0.115919,
		-0.714613, 0.687968, -0.126602,
		30.412119, 41.386539, 15.691869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137100, 41.358177, 16.205181>,  <30.912348, 40.904961, 15.780490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137100, 41.358177, 16.205181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752501, 41.454983, 16.153103>,  <30.521742, 41.513065, 16.121857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752501, 41.454983, 16.153103>,  <31.137100, 41.358177, 16.205181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752501, 41.454983, 16.153103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111100, 0.090999, 0.989634,
		0.251354, 0.965996, -0.060607,
		-0.961498, 0.242015, -0.130196,
		30.464050, 41.527588, 16.114044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054419, 41.905735, 16.706501>,  <31.137100, 41.358177, 16.205181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054419, 41.905735, 16.706501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677563, 41.806587, 16.616224>,  <30.451450, 41.747097, 16.562057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677563, 41.806587, 16.616224>,  <31.054419, 41.905735, 16.706501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677563, 41.806587, 16.616224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306032, 0.361171, 0.880852,
		-0.136822, 0.898953, -0.416128,
		-0.942138, -0.247869, -0.225692,
		30.394920, 41.732227, 16.548517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625441, 42.450089, 16.886557>,  <31.054419, 41.905735, 16.706501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625441, 42.450089, 16.886557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387619, 42.128510, 16.881279>,  <30.244926, 41.935562, 16.878113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387619, 42.128510, 16.881279>,  <30.625441, 42.450089, 16.886557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387619, 42.128510, 16.881279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368076, 0.257547, 0.893414,
		-0.714859, 0.536041, -0.449039,
		-0.594556, -0.803946, -0.013194,
		30.209251, 41.887325, 16.877321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112448, 42.728416, 17.166597>,  <30.625441, 42.450089, 16.886557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112448, 42.728416, 17.166597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021753, 42.339703, 17.192568>,  <29.967337, 42.106472, 17.208151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021753, 42.339703, 17.192568>,  <30.112448, 42.728416, 17.166597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021753, 42.339703, 17.192568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595710, 0.191114, 0.780132,
		-0.770532, 0.138208, -0.622237,
		-0.226738, -0.971789, 0.064928,
		29.953732, 42.048164, 17.212046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419062, 42.729229, 17.448889>,  <30.112448, 42.728416, 17.166597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419062, 42.729229, 17.448889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550640, 42.358093, 17.519213>,  <29.629587, 42.135410, 17.561407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550640, 42.358093, 17.519213>,  <29.419062, 42.729229, 17.448889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550640, 42.358093, 17.519213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356988, 0.050179, 0.932760,
		-0.874273, -0.369589, -0.314721,
		0.328946, -0.927839, 0.175809,
		29.649324, 42.079742, 17.571955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857626, 42.300751, 17.796413>,  <29.419062, 42.729229, 17.448889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857626, 42.300751, 17.796413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208977, 42.132221, 17.886692>,  <29.419786, 42.031101, 17.940859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208977, 42.132221, 17.886692>,  <28.857626, 42.300751, 17.796413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208977, 42.132221, 17.886692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289750, -0.093829, 0.952492,
		-0.380134, -0.902042, -0.204497,
		0.878375, -0.421328, 0.225698,
		29.472488, 42.005821, 17.954401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690855, 41.645615, 18.092838>,  <28.857626, 42.300751, 17.796413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690855, 41.645615, 18.092838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062910, 41.725842, 18.215876>,  <29.286142, 41.773979, 18.289698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062910, 41.725842, 18.215876>,  <28.690855, 41.645615, 18.092838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062910, 41.725842, 18.215876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249578, -0.269145, 0.930200,
		0.269358, -0.941983, -0.200284,
		0.930138, 0.200570, 0.307595,
		29.341951, 41.786011, 18.308153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987080, 41.048668, 18.209375>,  <28.690855, 41.645615, 18.092838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987080, 41.048668, 18.209375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183706, 41.310677, 18.438917>,  <29.301682, 41.467880, 18.576643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183706, 41.310677, 18.438917>,  <28.987080, 41.048668, 18.209375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183706, 41.310677, 18.438917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238890, -0.532261, 0.812176,
		0.837434, -0.536325, -0.105163,
		0.491565, 0.655022, 0.573856,
		29.331175, 41.507183, 18.611074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100208, 40.642849, 18.685625>,  <28.987080, 41.048668, 18.209375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100208, 40.642849, 18.685625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187750, 40.996239, 18.851316>,  <29.240274, 41.208271, 18.950731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187750, 40.996239, 18.851316>,  <29.100208, 40.642849, 18.685625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187750, 40.996239, 18.851316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261810, -0.462120, 0.847290,
		0.939978, -0.076982, -0.332437,
		0.218852, 0.883470, 0.414228,
		29.253405, 41.261280, 18.975584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730776, 40.561749, 18.964167>,  <29.100208, 40.642849, 18.685625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730776, 40.561749, 18.964167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565750, 40.875477, 19.149479>,  <29.466734, 41.063713, 19.260666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565750, 40.875477, 19.149479>,  <29.730776, 40.561749, 18.964167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565750, 40.875477, 19.149479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353539, -0.330851, 0.874956,
		0.839524, 0.524764, -0.140791,
		-0.412564, 0.784322, 0.463282,
		29.441980, 41.110775, 19.288464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260721, 40.831226, 19.367777>,  <29.730776, 40.561749, 18.964167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260721, 40.831226, 19.367777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918211, 40.951374, 19.535860>,  <29.712706, 41.023460, 19.636711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918211, 40.951374, 19.535860>,  <30.260721, 40.831226, 19.367777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918211, 40.951374, 19.535860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394948, -0.143563, 0.907417,
		0.332884, 0.942958, 0.004300,
		-0.856274, 0.300366, 0.420209,
		29.661329, 41.041485, 19.661922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536350, 41.145931, 19.926073>,  <30.260721, 40.831226, 19.367777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536350, 41.145931, 19.926073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144651, 41.105877, 19.996555>,  <29.909632, 41.081844, 20.038845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144651, 41.105877, 19.996555>,  <30.536350, 41.145931, 19.926073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144651, 41.105877, 19.996555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180097, -0.031184, 0.983154,
		-0.092959, 0.994484, 0.048572,
		-0.979247, -0.100140, 0.176205,
		29.850878, 41.075836, 20.049417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232731, 41.680996, 20.409988>,  <30.536350, 41.145931, 19.926073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232731, 41.680996, 20.409988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969265, 41.381405, 20.438829>,  <29.811186, 41.201653, 20.456133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969265, 41.381405, 20.438829>,  <30.232731, 41.680996, 20.409988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969265, 41.381405, 20.438829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010423, 0.104895, 0.994429,
		-0.752366, 0.654242, -0.076897,
		-0.658663, -0.748976, 0.072100,
		29.771666, 41.156712, 20.460459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695660, 41.959759, 20.834852>,  <30.232731, 41.680996, 20.409988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695660, 41.959759, 20.834852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646370, 41.564400, 20.870390>,  <29.616796, 41.327187, 20.891712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646370, 41.564400, 20.870390>,  <29.695660, 41.959759, 20.834852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646370, 41.564400, 20.870390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011114, 0.088149, 0.996046,
		-0.992317, 0.123724, 0.000123,
		-0.123223, -0.988394, 0.088846,
		29.609404, 41.267883, 20.897043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133183, 41.853523, 21.351372>,  <29.695660, 41.959759, 20.834852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133183, 41.853523, 21.351372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354397, 41.520325, 21.344707>,  <29.487125, 41.320408, 21.340710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354397, 41.520325, 21.344707>,  <29.133183, 41.853523, 21.351372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354397, 41.520325, 21.344707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044309, -0.049374, 0.997797,
		-0.831980, -0.551077, -0.064215,
		0.553033, -0.832993, -0.016661,
		29.520308, 41.270428, 21.339710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916460, 41.526577, 21.944088>,  <29.133183, 41.853523, 21.351372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916460, 41.526577, 21.944088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222132, 41.278873, 21.871918>,  <29.405535, 41.130253, 21.828615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222132, 41.278873, 21.871918>,  <28.916460, 41.526577, 21.944088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222132, 41.278873, 21.871918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045768, -0.226964, 0.972827,
		-0.643380, -0.751671, -0.145099,
		0.764178, -0.619256, -0.180427,
		29.451385, 41.093098, 21.817789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801260, 40.872150, 22.350994>,  <28.916460, 41.526577, 21.944088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801260, 40.872150, 22.350994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193714, 40.879177, 22.273983>,  <29.429186, 40.883392, 22.227777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193714, 40.879177, 22.273983>,  <28.801260, 40.872150, 22.350994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193714, 40.879177, 22.273983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192249, -0.193654, 0.962049,
		-0.020384, -0.980913, -0.193378,
		0.981135, 0.017567, -0.192527,
		29.488054, 40.884445, 22.216225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015814, 40.218281, 22.597843>,  <28.801260, 40.872150, 22.350994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015814, 40.218281, 22.597843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327450, 40.468979, 22.592113>,  <29.514431, 40.619400, 22.588676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327450, 40.468979, 22.592113>,  <29.015814, 40.218281, 22.597843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327450, 40.468979, 22.592113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253130, -0.293591, 0.921808,
		0.573537, -0.721797, -0.387383,
		0.779090, 0.626749, -0.014323,
		29.561176, 40.657005, 22.587816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616941, 39.794765, 22.810347>,  <29.015814, 40.218281, 22.597843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616941, 39.794765, 22.810347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688232, 40.181831, 22.881742>,  <29.731007, 40.414070, 22.924580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688232, 40.181831, 22.881742>,  <29.616941, 39.794765, 22.810347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688232, 40.181831, 22.881742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274415, -0.223078, 0.935378,
		0.944951, -0.117730, -0.305300,
		0.178228, 0.967665, 0.178491,
		29.741701, 40.472130, 22.935289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213886, 39.756721, 23.317593>,  <29.616941, 39.794765, 22.810347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213886, 39.756721, 23.317593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068302, 40.123455, 23.383251>,  <29.980951, 40.343494, 23.422646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068302, 40.123455, 23.383251>,  <30.213886, 39.756721, 23.317593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068302, 40.123455, 23.383251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232572, -0.081194, 0.969184,
		0.901911, 0.390921, -0.183679,
		-0.363961, 0.916836, 0.164147,
		29.959114, 40.398506, 23.432495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743750, 40.080574, 23.809147>,  <30.213886, 39.756721, 23.317593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743750, 40.080574, 23.809147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431818, 40.329674, 23.834583>,  <30.244659, 40.479134, 23.849846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431818, 40.329674, 23.834583>,  <30.743750, 40.080574, 23.809147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431818, 40.329674, 23.834583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181252, 0.127394, 0.975150,
		0.599177, 0.771977, -0.212221,
		-0.779829, 0.622754, 0.063591,
		30.197868, 40.516499, 23.853661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950880, 40.686157, 24.223150>,  <30.743750, 40.080574, 23.809147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950880, 40.686157, 24.223150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553150, 40.658054, 24.255095>,  <30.314512, 40.641193, 24.274261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553150, 40.658054, 24.255095>,  <30.950880, 40.686157, 24.223150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553150, 40.658054, 24.255095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080783, -0.010417, 0.996677,
		-0.069194, 0.997474, 0.016034,
		-0.994327, -0.070259, 0.079859,
		30.254852, 40.636978, 24.279053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835899, 41.228966, 24.670582>,  <30.950880, 40.686157, 24.223150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835899, 41.228966, 24.670582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508385, 40.999825, 24.685694>,  <30.311876, 40.862339, 24.694761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508385, 40.999825, 24.685694>,  <30.835899, 41.228966, 24.670582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508385, 40.999825, 24.685694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027356, 0.104666, 0.994131,
		-0.573447, 0.812947, -0.101370,
		-0.818786, -0.572855, 0.037781,
		30.262749, 40.827969, 24.697029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495790, 41.622917, 25.063021>,  <30.835899, 41.228966, 24.670582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495790, 41.622917, 25.063021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346348, 41.253105, 25.093122>,  <30.256681, 41.031219, 25.111183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346348, 41.253105, 25.093122>,  <30.495790, 41.622917, 25.063021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346348, 41.253105, 25.093122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046589, 0.099731, 0.993923,
		-0.926416, 0.367832, -0.080333,
		-0.373608, -0.924529, 0.075255,
		30.234264, 40.975746, 25.115700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087975, 41.659954, 25.711065>,  <30.495790, 41.622917, 25.063021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087975, 41.659954, 25.711065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125370, 41.269650, 25.631920>,  <30.147808, 41.035465, 25.584433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125370, 41.269650, 25.631920>,  <30.087975, 41.659954, 25.711065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125370, 41.269650, 25.631920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018675, -0.200418, 0.979532,
		-0.995445, -0.087881, -0.036960,
		0.093490, -0.975761, -0.197864,
		30.153418, 40.976921, 25.572561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736364, 41.421288, 26.221174>,  <30.087975, 41.659954, 25.711065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736364, 41.421288, 26.221174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000446, 41.152065, 26.087831>,  <30.158895, 40.990532, 26.007826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000446, 41.152065, 26.087831>,  <29.736364, 41.421288, 26.221174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000446, 41.152065, 26.087831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131358, -0.333522, 0.933546,
		-0.739508, -0.660122, -0.131783,
		0.660206, -0.673054, -0.333355,
		30.198509, 40.950150, 25.987825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580303, 40.779121, 26.562017>,  <29.736364, 41.421288, 26.221174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580303, 40.779121, 26.562017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959326, 40.740780, 26.440065>,  <30.186739, 40.717773, 26.366894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959326, 40.740780, 26.440065>,  <29.580303, 40.779121, 26.562017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959326, 40.740780, 26.440065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263704, -0.304439, 0.915302,
		-0.180549, -0.947697, -0.263197,
		0.947556, -0.095851, -0.304878,
		30.243593, 40.712025, 26.348602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755125, 40.212383, 26.996178>,  <29.580303, 40.779121, 26.562017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755125, 40.212383, 26.996178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105516, 40.362282, 26.874701>,  <30.315752, 40.452221, 26.801815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105516, 40.362282, 26.874701>,  <29.755125, 40.212383, 26.996178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105516, 40.362282, 26.874701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416091, -0.268602, 0.868747,
		0.243984, -0.887367, -0.391217,
		0.875979, 0.374743, -0.303691,
		30.368311, 40.474705, 26.783592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307034, 39.772655, 27.357626>,  <29.755125, 40.212383, 26.996178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307034, 39.772655, 27.357626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491808, 40.103867, 27.230513>,  <30.602673, 40.302593, 27.154245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491808, 40.103867, 27.230513>,  <30.307034, 39.772655, 27.357626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491808, 40.103867, 27.230513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603842, -0.031186, 0.796494,
		0.649609, -0.559818, -0.514404,
		0.461934, 0.828029, -0.317783,
		30.630388, 40.352276, 27.135178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006639, 39.545166, 27.270748>,  <30.307034, 39.772655, 27.357626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006639, 39.545166, 27.270748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992441, 39.939781, 27.334591>,  <30.983921, 40.176552, 27.372896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992441, 39.939781, 27.334591>,  <31.006639, 39.545166, 27.270748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992441, 39.939781, 27.334591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487432, -0.122332, 0.864549,
		0.872439, 0.108488, -0.476529,
		-0.035498, 0.986542, 0.159607,
		30.981792, 40.235744, 27.382473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647734, 39.735901, 27.445024>,  <31.006639, 39.545166, 27.270748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647734, 39.735901, 27.445024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423443, 40.041473, 27.572767>,  <31.288868, 40.224819, 27.649414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423443, 40.041473, 27.572767>,  <31.647734, 39.735901, 27.445024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423443, 40.041473, 27.572767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482878, -0.011611, 0.875611,
		0.672616, 0.645190, -0.362376,
		-0.560728, 0.763933, 0.319358,
		31.255224, 40.270653, 27.668575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133415, 40.290848, 27.609529>,  <31.647734, 39.735901, 27.445024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133415, 40.290848, 27.609529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789509, 40.321587, 27.811481>,  <31.583166, 40.340031, 27.932652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789509, 40.321587, 27.811481>,  <32.133415, 40.290848, 27.609529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789509, 40.321587, 27.811481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510058, 0.079950, 0.856416,
		0.025445, 0.993832, -0.107933,
		-0.859764, 0.076844, 0.504878,
		31.531580, 40.344639, 27.962944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247509, 40.806576, 28.111208>,  <32.133415, 40.290848, 27.609529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247509, 40.806576, 28.111208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925524, 40.615715, 28.252270>,  <31.732334, 40.501198, 28.336906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925524, 40.615715, 28.252270>,  <32.247509, 40.806576, 28.111208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925524, 40.615715, 28.252270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350703, 0.096794, 0.931471,
		-0.478588, 0.873474, 0.089424,
		-0.804960, -0.477152, 0.352654,
		31.684036, 40.472569, 28.358067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196220, 41.142174, 28.864794>,  <32.247509, 40.806576, 28.111208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196220, 41.142174, 28.864794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986124, 40.802418, 28.844141>,  <31.860067, 40.598564, 28.831749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986124, 40.802418, 28.844141>,  <32.196220, 41.142174, 28.864794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986124, 40.802418, 28.844141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233141, -0.201988, 0.951234,
		-0.818395, 0.487587, 0.304119,
		-0.525238, -0.849388, -0.051630,
		31.828552, 40.547600, 28.828651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742918, 41.125854, 29.460316>,  <32.196220, 41.142174, 28.864794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742918, 41.125854, 29.460316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785685, 40.748856, 29.333651>,  <31.811344, 40.522655, 29.257652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785685, 40.748856, 29.333651>,  <31.742918, 41.125854, 29.460316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785685, 40.748856, 29.333651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275717, -0.277891, 0.920194,
		-0.955274, -0.185692, 0.230150,
		0.106916, -0.942494, -0.316661,
		31.817759, 40.466106, 29.238653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468166, 40.750244, 30.075523>,  <31.742918, 41.125854, 29.460316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468166, 40.750244, 30.075523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657284, 40.470688, 29.860853>,  <31.770754, 40.302956, 29.732052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657284, 40.470688, 29.860853>,  <31.468166, 40.750244, 30.075523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657284, 40.470688, 29.860853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437184, -0.342751, 0.831499,
		-0.765074, -0.627751, 0.143495,
		0.472792, -0.698892, -0.536673,
		31.799122, 40.261021, 29.699852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637123, 40.192669, 30.557987>,  <31.468166, 40.750244, 30.075523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637123, 40.192669, 30.557987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872040, 40.076645, 30.255741>,  <32.012989, 40.007030, 30.074392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872040, 40.076645, 30.255741>,  <31.637123, 40.192669, 30.557987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872040, 40.076645, 30.255741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563318, -0.523873, 0.638929,
		-0.581175, -0.800888, -0.144268,
		0.587289, -0.290061, -0.755616,
		32.048225, 39.989628, 30.029057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731159, 39.361149, 30.425383>,  <31.637123, 40.192669, 30.557987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731159, 39.361149, 30.425383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041336, 39.543568, 30.250700>,  <32.227444, 39.653019, 30.145889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041336, 39.543568, 30.250700>,  <31.731159, 39.361149, 30.425383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041336, 39.543568, 30.250700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624620, -0.452814, 0.636247,
		0.092409, -0.766149, -0.635985,
		0.775442, 0.456044, -0.436708,
		32.273968, 39.680382, 30.119688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031544, 38.813976, 30.249147>,  <31.731159, 39.361149, 30.425383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031544, 38.813976, 30.249147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266174, 39.133503, 30.302528>,  <32.406952, 39.325218, 30.334557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266174, 39.133503, 30.302528>,  <32.031544, 38.813976, 30.249147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266174, 39.133503, 30.302528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637855, -0.557203, 0.531663,
		0.499063, -0.226739, -0.836376,
		0.586580, 0.798820, 0.133453,
		32.442150, 39.373150, 30.342564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712708, 38.650013, 29.970940>,  <32.031544, 38.813976, 30.249147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712708, 38.650013, 29.970940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759525, 38.931690, 30.251059>,  <32.787617, 39.100697, 30.419130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759525, 38.931690, 30.251059>,  <32.712708, 38.650013, 29.970940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759525, 38.931690, 30.251059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619797, -0.602760, 0.502525,
		0.775984, 0.375224, -0.507006,
		0.117044, 0.704193, 0.700295,
		32.794640, 39.142948, 30.461147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270000, 38.162651, 29.768894>,  <32.712708, 38.650013, 29.970940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270000, 38.162651, 29.768894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633293, 38.305508, 29.856125>,  <33.851269, 38.391220, 29.908464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633293, 38.305508, 29.856125>,  <33.270000, 38.162651, 29.768894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633293, 38.305508, 29.856125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382063, -0.920309, -0.084020,
		0.170692, 0.159629, -0.972308,
		0.908236, 0.357141, 0.218078,
		33.905766, 38.412651, 29.921549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773735, 38.124676, 29.240511>,  <33.270000, 38.162651, 29.768894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773735, 38.124676, 29.240511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935463, 38.087414, 29.604454>,  <34.032501, 38.065056, 29.822821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935463, 38.087414, 29.604454>,  <33.773735, 38.124676, 29.240511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935463, 38.087414, 29.604454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002488, -0.994908, -0.100760,
		0.914612, 0.038476, -0.402497,
		0.404324, -0.093158, 0.909859,
		34.056759, 38.059467, 29.877411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344692, 37.705765, 29.113176>,  <33.773735, 38.124676, 29.240511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344692, 37.705765, 29.113176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159695, 37.705349, 29.467825>,  <34.048698, 37.705101, 29.680614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159695, 37.705349, 29.467825>,  <34.344692, 37.705765, 29.113176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159695, 37.705349, 29.467825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143926, -0.986648, -0.076230,
		0.874864, -0.162864, 0.456167,
		-0.462491, -0.001037, 0.886624,
		34.020947, 37.705036, 29.733812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524780, 37.056137, 29.528793>,  <34.344692, 37.705765, 29.113176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524780, 37.056137, 29.528793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181854, 37.211960, 29.663404>,  <33.976097, 37.305454, 29.744171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181854, 37.211960, 29.663404>,  <34.524780, 37.056137, 29.528793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181854, 37.211960, 29.663404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386054, -0.918974, 0.080310,
		0.340545, -0.061067, 0.938243,
		-0.857317, 0.389561, 0.336527,
		33.924660, 37.328827, 29.764362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195339, 36.684242, 30.047947>,  <34.524780, 37.056137, 29.528793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195339, 36.684242, 30.047947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876812, 36.867496, 29.889967>,  <33.685696, 36.977448, 29.795179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876812, 36.867496, 29.889967>,  <34.195339, 36.684242, 30.047947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876812, 36.867496, 29.889967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503458, -0.863923, 0.012966,
		-0.335267, 0.209166, 0.918610,
		-0.796320, 0.458135, -0.394951,
		33.637917, 37.004936, 29.771481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531872, 36.546097, 30.376762>,  <34.195339, 36.684242, 30.047947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531872, 36.546097, 30.376762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442371, 36.637550, 29.997782>,  <33.388672, 36.692421, 29.770393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442371, 36.637550, 29.997782>,  <33.531872, 36.546097, 30.376762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442371, 36.637550, 29.997782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713319, -0.700839, -0.000661,
		-0.664161, 0.675686, 0.319903,
		-0.223754, 0.228632, -0.947450,
		33.375244, 36.706139, 29.713547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048069, 35.909584, 30.157503>,  <33.531872, 36.546097, 30.376762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048069, 35.909584, 30.157503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978500, 36.113880, 29.820719>,  <32.936760, 36.236458, 29.618649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978500, 36.113880, 29.820719>,  <33.048069, 35.909584, 30.157503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978500, 36.113880, 29.820719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653617, -0.699378, -0.289233,
		-0.736572, 0.500018, 0.455460,
		-0.173916, 0.510737, -0.841962,
		32.926327, 36.267101, 29.568130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436333, 35.434650, 30.398743>,  <33.048069, 35.909584, 30.157503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436333, 35.434650, 30.398743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535225, 35.812836, 30.483570>,  <32.594559, 36.039749, 30.534468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535225, 35.812836, 30.483570>,  <32.436333, 35.434650, 30.398743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535225, 35.812836, 30.483570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086827, -0.239600, 0.966982,
		0.965060, -0.220651, -0.141327,
		0.247227, 0.945466, 0.212069,
		32.609394, 36.096474, 30.547192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988827, 35.491005, 30.927895>,  <32.436333, 35.434650, 30.398743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988827, 35.491005, 30.927895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777058, 35.830101, 30.940838>,  <32.649998, 36.033558, 30.948605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777058, 35.830101, 30.940838>,  <32.988827, 35.491005, 30.927895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777058, 35.830101, 30.940838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095847, -0.097667, 0.990593,
		0.842929, 0.521337, 0.132961,
		-0.529419, 0.847743, 0.032358,
		32.618233, 36.084423, 30.950544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308918, 36.127556, 31.365847>,  <32.988827, 35.491005, 30.927895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308918, 36.127556, 31.365847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915585, 36.054943, 31.361729>,  <32.679585, 36.011375, 31.359259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915585, 36.054943, 31.361729>,  <33.308918, 36.127556, 31.365847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915585, 36.054943, 31.361729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048755, -0.317802, 0.946903,
		-0.175165, 0.930617, 0.321355,
		-0.983331, -0.181531, -0.010296,
		32.620586, 36.000484, 31.358641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120117, 36.433392, 31.970016>,  <33.308918, 36.127556, 31.365847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120117, 36.433392, 31.970016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869160, 36.146187, 31.849463>,  <32.718586, 35.973866, 31.777130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869160, 36.146187, 31.849463>,  <33.120117, 36.433392, 31.970016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869160, 36.146187, 31.849463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066548, -0.336183, 0.939443,
		-0.775852, 0.609458, 0.163138,
		-0.627395, -0.718012, -0.301387,
		32.680943, 35.930782, 31.759047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409397, 36.390987, 32.357700>,  <33.120117, 36.433392, 31.970016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409397, 36.390987, 32.357700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480358, 36.024761, 32.213333>,  <32.522934, 35.805023, 32.126713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480358, 36.024761, 32.213333>,  <32.409397, 36.390987, 32.357700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480358, 36.024761, 32.213333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096573, -0.381160, 0.919451,
		-0.979388, -0.128260, -0.156039,
		0.177405, -0.915569, -0.360917,
		32.533581, 35.750092, 32.105057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994642, 36.004791, 32.789806>,  <32.409397, 36.390987, 32.357700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994642, 36.004791, 32.789806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250881, 35.742027, 32.630756>,  <32.404625, 35.584370, 32.535324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250881, 35.742027, 32.630756>,  <31.994642, 36.004791, 32.789806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250881, 35.742027, 32.630756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117871, -0.427569, 0.896265,
		-0.758778, -0.621012, -0.196468,
		0.640595, -0.656908, -0.397629,
		32.443058, 35.544956, 32.511467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081261, 35.240124, 32.869835>,  <31.994642, 36.004791, 32.789806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081261, 35.240124, 32.869835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907614, 35.022404, 32.582703>,  <31.803427, 34.891773, 32.410423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907614, 35.022404, 32.582703>,  <32.081261, 35.240124, 32.869835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907614, 35.022404, 32.582703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753647, -0.217099, 0.620390,
		-0.493517, 0.810314, -0.315961,
		-0.434116, -0.544297, -0.717833,
		31.777378, 34.859116, 32.367352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162926, 34.561737, 33.210949>,  <32.081261, 35.240124, 32.869835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162926, 34.561737, 33.210949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492039, 34.679077, 33.016228>,  <32.689507, 34.749481, 32.899395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492039, 34.679077, 33.016228>,  <32.162926, 34.561737, 33.210949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492039, 34.679077, 33.016228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497499, 0.042420, 0.866427,
		0.274817, -0.955063, -0.111039,
		0.822782, 0.293351, -0.486801,
		32.738873, 34.767082, 32.870186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804283, 34.148083, 33.442654>,  <32.162926, 34.561737, 33.210949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804283, 34.148083, 33.442654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930374, 34.491428, 33.280746>,  <33.006027, 34.697437, 33.183601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930374, 34.491428, 33.280746>,  <32.804283, 34.148083, 33.442654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930374, 34.491428, 33.280746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486972, 0.219779, 0.845314,
		0.814549, -0.463577, -0.348721,
		0.315226, 0.858367, -0.404770,
		33.024940, 34.748940, 33.159317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494236, 34.211472, 33.706478>,  <32.804283, 34.148083, 33.442654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494236, 34.211472, 33.706478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360966, 34.578392, 33.619251>,  <33.281006, 34.798546, 33.566917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360966, 34.578392, 33.619251>,  <33.494236, 34.211472, 33.706478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360966, 34.578392, 33.619251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540137, 0.375255, 0.753284,
		0.772819, 0.133189, -0.620493,
		-0.333172, 0.917303, -0.218064,
		33.261013, 34.853584, 33.553833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057541, 34.614277, 33.667999>,  <33.494236, 34.211472, 33.706478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057541, 34.614277, 33.667999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731724, 34.835129, 33.739182>,  <33.536232, 34.967640, 33.781891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731724, 34.835129, 33.739182>,  <34.057541, 34.614277, 33.667999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731724, 34.835129, 33.739182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394949, 0.303129, 0.867253,
		0.424895, 0.776699, -0.464976,
		-0.814543, 0.552133, 0.177958,
		33.487362, 35.000771, 33.792568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352352, 35.403736, 33.852322>,  <34.057541, 34.614277, 33.667999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352352, 35.403736, 33.852322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985378, 35.339115, 33.997768>,  <33.765194, 35.300343, 34.085037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985378, 35.339115, 33.997768>,  <34.352352, 35.403736, 33.852322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985378, 35.339115, 33.997768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302683, 0.309803, 0.901335,
		-0.258262, 0.936975, -0.235325,
		-0.917433, -0.161552, 0.363617,
		33.710148, 35.290649, 34.106853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840565, 35.958637, 34.227852>,  <34.352352, 35.403736, 33.852322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840565, 35.958637, 34.227852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777958, 35.592567, 34.376423>,  <33.740395, 35.372925, 34.465565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777958, 35.592567, 34.376423>,  <33.840565, 35.958637, 34.227852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777958, 35.592567, 34.376423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449278, 0.268928, 0.851955,
		-0.879574, 0.300220, 0.369075,
		-0.156520, -0.915175, 0.371425,
		33.731003, 35.318016, 34.487850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523609, 36.003899, 34.805996>,  <33.840565, 35.958637, 34.227852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523609, 36.003899, 34.805996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730007, 35.661442, 34.817158>,  <33.853844, 35.455967, 34.823856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730007, 35.661442, 34.817158>,  <33.523609, 36.003899, 34.805996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730007, 35.661442, 34.817158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380637, 0.258351, 0.887902,
		-0.767377, -0.447528, 0.459185,
		0.515992, -0.856139, 0.027907,
		33.884804, 35.404598, 34.825531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125729, 35.894508, 35.122761>,  <33.523609, 36.003899, 34.805996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125729, 35.894508, 35.122761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065849, 35.936661, 35.515999>,  <34.029922, 35.961952, 35.751942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065849, 35.936661, 35.515999>,  <34.125729, 35.894508, 35.122761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065849, 35.936661, 35.515999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657576, -0.731916, 0.178589,
		0.738366, 0.673197, 0.040272,
		-0.149701, 0.105382, 0.983099,
		34.020939, 35.968277, 35.810928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740005, 36.036163, 35.477772>,  <34.125729, 35.894508, 35.122761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740005, 36.036163, 35.477772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487858, 35.815125, 35.695862>,  <34.336571, 35.682503, 35.826714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487858, 35.815125, 35.695862>,  <34.740005, 36.036163, 35.477772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487858, 35.815125, 35.695862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730788, -0.659354, 0.176641,
		0.261884, 0.509791, 0.819469,
		-0.630370, -0.552599, 0.545223,
		34.298748, 35.649345, 35.859428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993698, 36.055595, 36.128304>,  <34.740005, 36.036163, 35.477772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993698, 36.055595, 36.128304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781689, 35.725163, 36.051716>,  <34.654484, 35.526901, 36.005764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781689, 35.725163, 36.051716>,  <34.993698, 36.055595, 36.128304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781689, 35.725163, 36.051716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751632, -0.562200, 0.344935,
		-0.392588, 0.038912, 0.918891,
		-0.530023, -0.826085, -0.191465,
		34.622681, 35.477337, 35.994278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072353, 35.683140, 36.791630>,  <34.993698, 36.055595, 36.128304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072353, 35.683140, 36.791630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982162, 35.443184, 36.484570>,  <34.928047, 35.299210, 36.300331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982162, 35.443184, 36.484570>,  <35.072353, 35.683140, 36.791630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982162, 35.443184, 36.484570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839648, -0.519282, 0.159178,
		-0.494118, -0.608669, 0.620781,
		-0.225473, -0.599891, -0.767654,
		34.914520, 35.263218, 36.254272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440384, 35.209332, 37.059135>,  <35.072353, 35.683140, 36.791630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440384, 35.209332, 37.059135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397701, 35.142498, 36.667076>,  <35.372089, 35.102398, 36.431839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397701, 35.142498, 36.667076>,  <35.440384, 35.209332, 37.059135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397701, 35.142498, 36.667076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864552, -0.502473, -0.008471,
		-0.491084, -0.848295, 0.198071,
		-0.106711, -0.167082, -0.980151,
		35.365688, 35.092373, 36.373032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458168, 34.436207, 37.052605>,  <35.440384, 35.209332, 37.059135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458168, 34.436207, 37.052605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571064, 34.624229, 36.718086>,  <35.638802, 34.737045, 36.517376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571064, 34.624229, 36.718086>,  <35.458168, 34.436207, 37.052605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571064, 34.624229, 36.718086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922297, -0.372867, 0.101682,
		-0.264030, -0.800008, -0.538772,
		0.282237, 0.470061, -0.836293,
		35.655735, 34.765247, 36.467197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837223, 33.920353, 36.594280>,  <35.458168, 34.436207, 37.052605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837223, 33.920353, 36.594280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925827, 34.307846, 36.549572>,  <35.978989, 34.540340, 36.522747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925827, 34.307846, 36.549572>,  <35.837223, 33.920353, 36.594280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925827, 34.307846, 36.549572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970882, -0.208369, 0.118193,
		0.091208, -0.134695, -0.986680,
		0.221514, 0.968731, -0.111768,
		35.992283, 34.598465, 36.516041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243248, 33.958401, 36.099262>,  <35.837223, 33.920353, 36.594280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243248, 33.958401, 36.099262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327080, 34.259689, 36.348656>,  <36.377380, 34.440464, 36.498291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327080, 34.259689, 36.348656>,  <36.243248, 33.958401, 36.099262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327080, 34.259689, 36.348656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969315, -0.243827, -0.031267,
		0.128470, 0.610902, -0.781213,
		0.209582, 0.753225, 0.623481,
		36.389954, 34.485657, 36.535702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823456, 34.491791, 35.851418>,  <36.243248, 33.958401, 36.099262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823456, 34.491791, 35.851418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822395, 34.473457, 36.250996>,  <36.821758, 34.462456, 36.490742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822395, 34.473457, 36.250996>,  <36.823456, 34.491791, 35.851418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822395, 34.473457, 36.250996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996681, 0.081161, 0.006372,
		-0.081368, 0.995647, 0.045465,
		-0.002654, -0.045833, 0.998946,
		36.821598, 34.459709, 36.550678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177109, 35.020264, 36.166039>,  <36.823456, 34.491791, 35.851418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177109, 35.020264, 36.166039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201004, 34.687927, 36.387356>,  <37.215343, 34.488525, 36.520145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201004, 34.687927, 36.387356>,  <37.177109, 35.020264, 36.166039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201004, 34.687927, 36.387356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998170, 0.044527, -0.040915,
		0.009358, 0.554721, 0.831984,
		0.059742, -0.830844, 0.553289,
		37.218925, 34.438675, 36.553341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649605, 35.141315, 36.696526>,  <37.177109, 35.020264, 36.166039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649605, 35.141315, 36.696526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643028, 34.759762, 36.576633>,  <37.639080, 34.530830, 36.504700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643028, 34.759762, 36.576633>,  <37.649605, 35.141315, 36.696526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643028, 34.759762, 36.576633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999849, -0.014030, -0.010212,
		0.005536, -0.299851, 0.953970,
		-0.016446, -0.953883, -0.299729,
		37.638096, 34.473598, 36.486713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976246, 34.665413, 37.218533>,  <37.649605, 35.141315, 36.696526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976246, 34.665413, 37.218533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982838, 34.511230, 36.849503>,  <37.986794, 34.418720, 36.628082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982838, 34.511230, 36.849503>,  <37.976246, 34.665413, 37.218533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982838, 34.511230, 36.849503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996492, 0.082048, -0.016480,
		0.082048, -0.919069, 0.385461,
		0.016480, -0.385461, -0.922577,
		37.987782, 34.395592, 36.572731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503399, 34.097408, 37.261066>,  <37.976246, 34.665413, 37.218533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503399, 34.097408, 37.261066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453300, 34.256313, 36.897419>,  <38.423241, 34.351654, 36.679230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453300, 34.256313, 36.897419>,  <38.503399, 34.097408, 37.261066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453300, 34.256313, 36.897419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992119, 0.053665, -0.113225,
		0.003808, -0.916136, -0.400849,
		-0.125241, 0.397258, -0.909121,
		38.415730, 34.375492, 36.624683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035065, 33.649578, 36.865086>,  <38.503399, 34.097408, 37.261066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035065, 33.649578, 36.865086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943707, 34.004303, 36.704388>,  <38.888893, 34.217140, 36.607971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943707, 34.004303, 36.704388>,  <39.035065, 33.649578, 36.865086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943707, 34.004303, 36.704388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952162, 0.117410, -0.282138,
		-0.203036, -0.446961, -0.871207,
		-0.228393, 0.886815, -0.401741,
		38.875187, 34.270348, 36.583866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950397, 33.677059, 36.051884>,  <39.035065, 33.649578, 36.865086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950397, 33.677059, 36.051884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084522, 33.997387, 36.250381>,  <39.164997, 34.189583, 36.369480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084522, 33.997387, 36.250381>,  <38.950397, 33.677059, 36.051884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084522, 33.997387, 36.250381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865367, -0.053578, -0.498267,
		-0.372433, 0.596506, -0.710967,
		0.335311, 0.800818, 0.496242,
		39.185116, 34.237633, 36.399254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238129, 34.241280, 35.625576>,  <38.950397, 33.677059, 36.051884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238129, 34.241280, 35.625576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433182, 34.234062, 35.974720>,  <39.550213, 34.229733, 36.184208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433182, 34.234062, 35.974720>,  <39.238129, 34.241280, 35.625576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433182, 34.234062, 35.974720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872540, 0.044194, -0.486540,
		-0.029797, 0.998860, 0.037294,
		0.487634, -0.018043, 0.872862,
		39.579472, 34.228649, 36.236580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677197, 34.875465, 35.674450>,  <39.238129, 34.241280, 35.625576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677197, 34.875465, 35.674450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808537, 34.575619, 35.904324>,  <39.887341, 34.395710, 36.042248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808537, 34.575619, 35.904324>,  <39.677197, 34.875465, 35.674450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808537, 34.575619, 35.904324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926728, 0.138008, -0.349470,
		0.182659, 0.647320, 0.740009,
		0.328346, -0.749620, 0.574681,
		39.907040, 34.350731, 36.076729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218746, 35.170624, 35.051868>,  <39.677197, 34.875465, 35.674450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218746, 35.170624, 35.051868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924381, 35.294136, 35.292896>,  <38.747765, 35.368244, 35.437515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924381, 35.294136, 35.292896>,  <39.218746, 35.170624, 35.051868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924381, 35.294136, 35.292896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218480, 0.950645, -0.220320,
		-0.640862, -0.030485, -0.767051,
		-0.735909, 0.308780, 0.602572,
		38.703609, 35.386768, 35.473667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491299, 35.041821, 34.398472>,  <39.218746, 35.170624, 35.051868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491299, 35.041821, 34.398472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469479, 34.968662, 34.005825>,  <39.456387, 34.924767, 33.770237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469479, 34.968662, 34.005825>,  <39.491299, 35.041821, 34.398472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469479, 34.968662, 34.005825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921160, 0.388605, -0.021218,
		0.385343, 0.903070, -0.189673,
		-0.054546, -0.182895, -0.981618,
		39.453114, 34.913792, 33.711338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364929, 35.688065, 34.015472>,  <39.491299, 35.041821, 34.398472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364929, 35.688065, 34.015472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213062, 35.342209, 33.883865>,  <39.121941, 35.134697, 33.804901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213062, 35.342209, 33.883865>,  <39.364929, 35.688065, 34.015472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213062, 35.342209, 33.883865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924888, 0.346770, 0.155991,
		-0.020783, 0.363528, -0.931352,
		-0.379671, -0.864638, -0.329015,
		39.099159, 35.082817, 33.785160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873745, 35.900192, 33.466480>,  <39.364929, 35.688065, 34.015472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873745, 35.900192, 33.466480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799324, 35.566044, 33.673378>,  <38.754673, 35.365555, 33.797516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799324, 35.566044, 33.673378>,  <38.873745, 35.900192, 33.466480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799324, 35.566044, 33.673378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869069, 0.385503, 0.310011,
		-0.458373, -0.391841, -0.797719,
		-0.186048, -0.835373, 0.517241,
		38.743511, 35.315434, 33.828548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924507, 36.652138, 33.216232>,  <38.873745, 35.900192, 33.466480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924507, 36.652138, 33.216232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034218, 36.597359, 33.596973>,  <39.100044, 36.564491, 33.825417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034218, 36.597359, 33.596973>,  <38.924507, 36.652138, 33.216232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034218, 36.597359, 33.596973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945914, -0.139911, -0.292697,
		0.173258, 0.980648, 0.091165,
		0.274278, -0.136946, 0.951849,
		39.116501, 36.556274, 33.882526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471889, 37.065105, 33.368244>,  <38.924507, 36.652138, 33.216232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471889, 37.065105, 33.368244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538906, 36.784145, 33.644958>,  <39.579117, 36.615570, 33.810986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538906, 36.784145, 33.644958>,  <39.471889, 37.065105, 33.368244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538906, 36.784145, 33.644958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985484, 0.099810, -0.137328,
		0.027413, 0.704748, 0.708928,
		0.167540, -0.702402, 0.691782,
		39.589169, 36.573425, 33.852493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053207, 37.273106, 33.837776>,  <39.471889, 37.065105, 33.368244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053207, 37.273106, 33.837776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020329, 36.874695, 33.824127>,  <40.000599, 36.635647, 33.815937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020329, 36.874695, 33.824127>,  <40.053207, 37.273106, 33.837776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020329, 36.874695, 33.824127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994266, -0.079608, -0.071400,
		0.068400, -0.039795, 0.996864,
		-0.082200, -0.996031, -0.034122,
		39.995670, 36.575886, 33.813892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431988, 36.962055, 34.474197>,  <40.053207, 37.273106, 33.837776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431988, 36.962055, 34.474197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398548, 36.747162, 34.138485>,  <40.378487, 36.618225, 33.937057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398548, 36.747162, 34.138485>,  <40.431988, 36.962055, 34.474197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398548, 36.747162, 34.138485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995610, -0.009459, -0.093113,
		0.042084, -0.843381, 0.535665,
		-0.083597, -0.537232, -0.839281,
		40.373470, 36.585991, 33.886700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785889, 36.335667, 34.486946>,  <40.431988, 36.962055, 34.474197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785889, 36.335667, 34.486946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802822, 36.437248, 34.100430>,  <40.812981, 36.498199, 33.868519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802822, 36.437248, 34.100430>,  <40.785889, 36.335667, 34.486946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802822, 36.437248, 34.100430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998986, -0.025600, 0.037036,
		-0.015331, -0.966876, -0.254784,
		0.042331, 0.253958, -0.966289,
		40.815521, 36.513435, 33.810543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254211, 35.893021, 34.186565>,  <40.785889, 36.335667, 34.486946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254211, 35.893021, 34.186565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237873, 36.234177, 33.978367>,  <41.228069, 36.438869, 33.853447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237873, 36.234177, 33.978367>,  <41.254211, 35.893021, 34.186565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237873, 36.234177, 33.978367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998590, 0.052527, 0.007713,
		0.033919, -0.519443, -0.853831,
		-0.040842, 0.852889, -0.520492,
		41.225620, 36.490044, 33.822220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537872, 35.944889, 33.595596>,  <41.254211, 35.893021, 34.186565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537872, 35.944889, 33.595596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585705, 36.329781, 33.693428>,  <41.614403, 36.560715, 33.752129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585705, 36.329781, 33.693428>,  <41.537872, 35.944889, 33.595596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585705, 36.329781, 33.693428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956360, -0.045482, -0.288631,
		-0.266604, 0.268424, -0.925673,
		0.119577, 0.962227, 0.244584,
		41.621578, 36.618450, 33.766804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765411, 36.347778, 32.964355>,  <41.537872, 35.944889, 33.595596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765411, 36.347778, 32.964355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892757, 36.546818, 33.287106>,  <41.969166, 36.666241, 33.480755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892757, 36.546818, 33.287106>,  <41.765411, 36.347778, 32.964355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892757, 36.546818, 33.287106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947907, -0.157336, -0.276979,
		-0.010874, 0.853020, -0.521765,
		0.318361, 0.497597, 0.806873,
		41.988266, 36.696098, 33.529167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218895, 36.960697, 32.741562>,  <41.765411, 36.347778, 32.964355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218895, 36.960697, 32.741562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293736, 36.798290, 33.099365>,  <42.338638, 36.700844, 33.314045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293736, 36.798290, 33.099365>,  <42.218895, 36.960697, 32.741562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293736, 36.798290, 33.099365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879209, -0.336942, -0.336842,
		0.438161, 0.849480, 0.293936,
		0.187101, -0.406022, 0.894505,
		42.349865, 36.676483, 33.367718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860832, 37.273582, 33.064873>,  <42.218895, 36.960697, 32.741562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860832, 37.273582, 33.064873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792114, 36.910099, 33.217049>,  <42.750885, 36.692009, 33.308353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792114, 36.910099, 33.217049>,  <42.860832, 37.273582, 33.064873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792114, 36.910099, 33.217049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881694, -0.314088, -0.352084,
		0.439434, 0.274943, 0.855163,
		-0.171793, -0.908710, 0.380437,
		42.740578, 36.637486, 33.331181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291206, 37.048038, 33.519943>,  <42.860832, 37.273582, 33.064873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291206, 37.048038, 33.519943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198376, 36.690357, 33.366821>,  <43.142677, 36.475750, 33.274948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198376, 36.690357, 33.366821>,  <43.291206, 37.048038, 33.519943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198376, 36.690357, 33.366821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972643, -0.209154, -0.101093,
		0.010332, -0.395795, 0.918281,
		-0.232074, -0.894204, -0.382807,
		43.128754, 36.422096, 33.251980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885876, 36.728367, 33.366245>,  <43.291206, 37.048038, 33.519943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885876, 36.728367, 33.366245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673588, 36.408604, 33.253616>,  <43.546215, 36.216747, 33.186039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673588, 36.408604, 33.253616>,  <43.885876, 36.728367, 33.366245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673588, 36.408604, 33.253616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766787, -0.311346, -0.561340,
		0.361074, -0.513818, 0.778214,
		-0.530720, -0.799409, -0.281570,
		43.514370, 36.168781, 33.169144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283287, 36.013687, 33.499264>,  <43.885876, 36.728367, 33.366245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283287, 36.013687, 33.499264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040173, 36.098412, 33.193134>,  <43.894302, 36.149246, 33.009457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040173, 36.098412, 33.193134>,  <44.283287, 36.013687, 33.499264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040173, 36.098412, 33.193134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768164, -0.087467, -0.634250,
		-0.201281, -0.973389, -0.109542,
		-0.607791, 0.211808, -0.765328,
		43.857834, 36.161953, 32.963535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495281, 36.248543, 34.078274>,  <44.283287, 36.013687, 33.499264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495281, 36.248543, 34.078274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801491, 35.998318, 34.138451>,  <44.985218, 35.848183, 34.174557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801491, 35.998318, 34.138451>,  <44.495281, 36.248543, 34.078274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801491, 35.998318, 34.138451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640264, 0.763743, -0.082209,
		-0.063471, 0.159255, 0.985195,
		0.765528, -0.625567, 0.150440,
		45.031151, 35.810646, 34.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875572, 36.364140, 34.775501>,  <44.495281, 36.248543, 34.078274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875572, 36.364140, 34.775501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085552, 36.245354, 34.456444>,  <45.211540, 36.174084, 34.265011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085552, 36.245354, 34.456444>,  <44.875572, 36.364140, 34.775501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085552, 36.245354, 34.456444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661230, 0.732369, 0.162512,
		0.535910, -0.612737, 0.580822,
		0.524953, -0.296965, -0.797644,
		45.243038, 36.156265, 34.217152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611164, 36.252346, 34.984409>,  <44.875572, 36.364140, 34.775501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611164, 36.252346, 34.984409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587776, 36.323151, 34.591419>,  <45.573742, 36.365631, 34.355625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.587776, 36.323151, 34.591419>,  <45.611164, 36.252346, 34.984409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587776, 36.323151, 34.591419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690895, 0.717559, 0.088162,
		0.720587, -0.673630, -0.164249,
		-0.058470, 0.177007, -0.982471,
		45.570236, 36.376251, 34.296677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288830, 36.362415, 34.651134>,  <45.611164, 36.252346, 34.984409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288830, 36.362415, 34.651134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994606, 36.555134, 34.460629>,  <45.818073, 36.670765, 34.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994606, 36.555134, 34.460629>,  <46.288830, 36.362415, 34.651134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994606, 36.555134, 34.460629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470828, 0.869037, 0.151971,
		0.487112, -0.112456, -0.866069,
		-0.735556, 0.481797, -0.476266,
		45.773941, 36.699673, 34.317749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872211, 36.437450, 34.233051>,  <46.288830, 36.362415, 34.651134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872211, 36.437450, 34.233051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172329, 36.295513, 34.456173>,  <47.352398, 36.210350, 34.590046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172329, 36.295513, 34.456173>,  <46.872211, 36.437450, 34.233051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172329, 36.295513, 34.456173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160061, -0.916147, -0.367499,
		0.641436, 0.186450, -0.744175,
		0.750294, -0.354840, 0.557806,
		47.397419, 36.189060, 34.623516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426792, 35.888504, 33.923798>,  <46.872211, 36.437450, 34.233051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426792, 35.888504, 33.923798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.412254, 35.833511, 34.319733>,  <47.403530, 35.800514, 34.557293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.412254, 35.833511, 34.319733>,  <47.426792, 35.888504, 33.923798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.412254, 35.833511, 34.319733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339383, -0.929926, -0.141623,
		0.939946, -0.341082, -0.012857,
		-0.036349, -0.137482, 0.989837,
		47.401348, 35.792267, 34.616684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904755, 35.266712, 34.263004>,  <47.426792, 35.888504, 33.923798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904755, 35.266712, 34.263004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612179, 35.323090, 34.529877>,  <47.436634, 35.356915, 34.689999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612179, 35.323090, 34.529877>,  <47.904755, 35.266712, 34.263004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612179, 35.323090, 34.529877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321654, -0.934031, -0.155320,
		0.601275, -0.328209, 0.728524,
		-0.731441, 0.140942, 0.667180,
		47.392746, 35.365372, 34.730030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.850971, 34.759811, 34.659813>,  <47.904755, 35.266712, 34.263004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.850971, 34.759811, 34.659813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482674, 34.915802, 34.654919>,  <47.261696, 35.009396, 34.651981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482674, 34.915802, 34.654919>,  <47.850971, 34.759811, 34.659813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482674, 34.915802, 34.654919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384336, -0.911939, -0.143714,
		-0.067202, -0.127621, 0.989544,
		-0.920744, 0.389975, -0.012235,
		47.206451, 35.032795, 34.651249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.668785, 36.891621, 20.732475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452530, 36.569454, 20.635300>,  <33.322777, 36.376156, 20.576994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452530, 36.569454, 20.635300>,  <33.668785, 36.891621, 20.732475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452530, 36.569454, 20.635300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057677, -0.323590, 0.944438,
		-0.839278, 0.496583, 0.221397,
		-0.540634, -0.805416, -0.242941,
		33.290340, 36.327831, 20.562418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154224, 36.812328, 21.183407>,  <33.668785, 36.891621, 20.732475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154224, 36.812328, 21.183407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199612, 36.437256, 21.052029>,  <33.226845, 36.212212, 20.973202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199612, 36.437256, 21.052029>,  <33.154224, 36.812328, 21.183407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199612, 36.437256, 21.052029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038272, -0.334462, 0.941632,
		-0.992804, -0.094277, -0.073839,
		0.113471, -0.937682, -0.328447,
		33.233654, 36.155952, 20.953495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668018, 36.405094, 21.653471>,  <33.154224, 36.812328, 21.183407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668018, 36.405094, 21.653471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.929024, 36.162033, 21.472368>,  <33.085625, 36.016197, 21.363707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.929024, 36.162033, 21.472368>,  <32.668018, 36.405094, 21.653471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929024, 36.162033, 21.472368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142993, -0.488012, 0.861044,
		-0.744166, -0.626582, -0.231543,
		0.652511, -0.607651, -0.452759,
		33.124779, 35.979736, 21.336540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478039, 35.760715, 21.884443>,  <32.668018, 36.405094, 21.653471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478039, 35.760715, 21.884443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.854721, 35.724487, 21.754839>,  <33.080730, 35.702751, 21.677076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.854721, 35.724487, 21.754839>,  <32.478039, 35.760715, 21.884443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854721, 35.724487, 21.754839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244348, -0.477873, 0.843760,
		-0.231254, -0.873748, -0.427886,
		0.941709, -0.090570, -0.324009,
		33.137234, 35.697315, 21.657637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705856, 35.037868, 21.840195>,  <32.478039, 35.760715, 21.884443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705856, 35.037868, 21.840195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.035328, 35.256664, 21.900007>,  <33.233009, 35.387939, 21.935894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.035328, 35.256664, 21.900007>,  <32.705856, 35.037868, 21.840195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035328, 35.256664, 21.900007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034058, -0.310939, 0.949820,
		0.566034, -0.777253, -0.274743,
		0.823678, 0.546987, 0.149530,
		33.282433, 35.420761, 21.944866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057766, 34.675251, 22.348881>,  <32.705856, 35.037868, 21.840195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057766, 34.675251, 22.348881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269779, 35.014439, 22.347572>,  <33.396988, 35.217953, 22.346786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.269779, 35.014439, 22.347572>,  <33.057766, 34.675251, 22.348881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269779, 35.014439, 22.347572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074643, -0.042810, 0.996291,
		0.844687, -0.528309, -0.085986,
		0.530030, 0.847972, -0.003273,
		33.428787, 35.268829, 22.346590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557026, 34.587059, 22.848249>,  <33.057766, 34.675251, 22.348881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557026, 34.587059, 22.848249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535309, 34.984230, 22.806005>,  <33.522278, 35.222530, 22.780659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535309, 34.984230, 22.806005>,  <33.557026, 34.587059, 22.848249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535309, 34.984230, 22.806005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004680, 0.105512, 0.994407,
		0.998514, 0.054482, -0.001081,
		-0.054291, 0.992924, -0.105610,
		33.519020, 35.282108, 22.774323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056831, 34.876919, 23.347593>,  <33.557026, 34.587059, 22.848249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056831, 34.876919, 23.347593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798996, 35.168266, 23.254658>,  <33.644295, 35.343075, 23.198896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.798996, 35.168266, 23.254658>,  <34.056831, 34.876919, 23.347593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798996, 35.168266, 23.254658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122134, 0.201892, 0.971763,
		0.754713, 0.654762, -0.041178,
		-0.644587, 0.728372, -0.232339,
		33.605621, 35.386780, 23.184956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344936, 35.459789, 23.498960>,  <34.056831, 34.876919, 23.347593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344936, 35.459789, 23.498960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.958134, 35.561512, 23.492922>,  <33.726051, 35.622543, 23.489298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.958134, 35.561512, 23.492922>,  <34.344936, 35.459789, 23.498960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958134, 35.561512, 23.492922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042938, 0.221119, 0.974301,
		0.251106, 0.941508, -0.224743,
		-0.967007, 0.254303, -0.015098,
		33.668030, 35.637802, 23.488392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328663, 35.999546, 23.920805>,  <34.344936, 35.459789, 23.498960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328663, 35.999546, 23.920805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954971, 35.859272, 23.894793>,  <33.730755, 35.775108, 23.879185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954971, 35.859272, 23.894793>,  <34.328663, 35.999546, 23.920805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954971, 35.859272, 23.894793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176495, 0.296114, 0.938704,
		-0.309938, 0.888444, -0.338534,
		-0.934231, -0.350690, -0.065029,
		33.674702, 35.754066, 23.875284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860249, 36.472054, 24.113853>,  <34.328663, 35.999546, 23.920805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860249, 36.472054, 24.113853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686138, 36.124317, 24.207476>,  <33.581673, 35.915676, 24.263649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686138, 36.124317, 24.207476>,  <33.860249, 36.472054, 24.113853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686138, 36.124317, 24.207476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289558, 0.381345, 0.877913,
		-0.852459, 0.314367, -0.417716,
		-0.435281, -0.869338, 0.234053,
		33.555553, 35.863514, 24.277691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168892, 36.698849, 24.372158>,  <33.860249, 36.472054, 24.113853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168892, 36.698849, 24.372158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206039, 36.316639, 24.484127>,  <33.228329, 36.087315, 24.551308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.206039, 36.316639, 24.484127>,  <33.168892, 36.698849, 24.372158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206039, 36.316639, 24.484127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200387, 0.257448, 0.945286,
		-0.975306, -0.143876, -0.167567,
		0.092864, -0.955521, 0.279922,
		33.233898, 36.029984, 24.568104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603081, 36.528450, 24.722790>,  <33.168892, 36.698849, 24.372158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603081, 36.528450, 24.722790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856907, 36.253155, 24.863455>,  <33.009201, 36.087978, 24.947853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.856907, 36.253155, 24.863455>,  <32.603081, 36.528450, 24.722790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856907, 36.253155, 24.863455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322820, 0.177390, 0.929688,
		-0.702225, -0.703467, -0.109612,
		0.634561, -0.688235, 0.351661,
		33.047276, 36.046684, 24.968952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301056, 36.298389, 25.319454>,  <32.603081, 36.528450, 24.722790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301056, 36.298389, 25.319454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679775, 36.185131, 25.380648>,  <32.907005, 36.117176, 25.417364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679775, 36.185131, 25.380648>,  <32.301056, 36.298389, 25.319454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679775, 36.185131, 25.380648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125182, 0.113908, 0.985573,
		-0.296490, -0.952287, 0.072402,
		0.946796, -0.283149, 0.152982,
		32.963814, 36.100185, 25.426542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395660, 35.898903, 26.009388>,  <32.301056, 36.298389, 25.319454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395660, 35.898903, 26.009388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.768921, 36.016754, 25.927008>,  <32.992878, 36.087467, 25.877579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.768921, 36.016754, 25.927008>,  <32.395660, 35.898903, 26.009388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768921, 36.016754, 25.927008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214179, 0.004441, 0.976784,
		0.288707, -0.955600, -0.058960,
		0.933154, 0.294632, -0.205951,
		33.048866, 36.105145, 25.865223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890667, 35.581596, 26.380291>,  <32.395660, 35.898903, 26.009388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890667, 35.581596, 26.380291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.105724, 35.905895, 26.287657>,  <33.234760, 36.100475, 26.232077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.105724, 35.905895, 26.287657>,  <32.890667, 35.581596, 26.380291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105724, 35.905895, 26.287657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340180, 0.042745, 0.939388,
		0.771503, -0.583838, -0.252818,
		0.537644, 0.810744, -0.231588,
		33.267017, 36.149120, 26.218180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493454, 35.679977, 26.904070>,  <32.890667, 35.581596, 26.380291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493454, 35.679977, 26.904070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522560, 36.031868, 26.716122>,  <33.540024, 36.243004, 26.603354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522560, 36.031868, 26.716122>,  <33.493454, 35.679977, 26.904070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522560, 36.031868, 26.716122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386256, 0.409497, 0.826510,
		0.919517, -0.241631, -0.310004,
		0.072765, 0.879731, -0.469871,
		33.544388, 36.295788, 26.575161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163525, 35.892971, 26.846006>,  <33.493454, 35.679977, 26.904070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163525, 35.892971, 26.846006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955437, 36.234547, 26.840954>,  <33.830582, 36.439491, 26.837923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.955437, 36.234547, 26.840954>,  <34.163525, 35.892971, 26.846006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955437, 36.234547, 26.840954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404033, 0.259114, 0.877279,
		0.752414, 0.451277, -0.479816,
		-0.520222, 0.853937, -0.012630,
		33.799370, 36.490726, 26.837164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565449, 36.440647, 27.250048>,  <34.163525, 35.892971, 26.846006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565449, 36.440647, 27.250048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219231, 36.640488, 27.236015>,  <34.011501, 36.760391, 27.227596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219231, 36.640488, 27.236015>,  <34.565449, 36.440647, 27.250048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219231, 36.640488, 27.236015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264721, 0.515840, 0.814759,
		0.425150, 0.695924, -0.578737,
		-0.865546, 0.499599, -0.035083,
		33.959568, 36.790367, 27.225491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724888, 37.115982, 27.575708>,  <34.565449, 36.440647, 27.250048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724888, 37.115982, 27.575708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325298, 37.118603, 27.557802>,  <34.085545, 37.120174, 27.547058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325298, 37.118603, 27.557802>,  <34.724888, 37.115982, 27.575708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325298, 37.118603, 27.557802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029722, 0.651010, 0.758487,
		0.034111, 0.759040, -0.650149,
		-0.998976, 0.006549, -0.044767,
		34.025604, 37.120567, 27.544373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447990, 37.836319, 27.427774>,  <34.724888, 37.115982, 27.575708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447990, 37.836319, 27.427774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186558, 37.629684, 27.649033>,  <34.029697, 37.505703, 27.781788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186558, 37.629684, 27.649033>,  <34.447990, 37.836319, 27.427774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186558, 37.629684, 27.649033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079034, 0.680268, 0.728690,
		-0.752716, 0.519977, -0.403784,
		-0.653584, -0.516584, 0.553145,
		33.990482, 37.474709, 27.814976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074860, 38.305233, 27.699194>,  <34.447990, 37.836319, 27.427774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074860, 38.305233, 27.699194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.007401, 37.981285, 27.923931>,  <33.966927, 37.786915, 28.058773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.007401, 37.981285, 27.923931>,  <34.074860, 38.305233, 27.699194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007401, 37.981285, 27.923931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140273, 0.544485, 0.826958,
		-0.975644, 0.218276, 0.021777,
		-0.168648, -0.809871, 0.561842,
		33.956806, 37.738323, 28.092484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152020, 38.441906, 28.400181>,  <34.074860, 38.305233, 27.699194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152020, 38.441906, 28.400181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041332, 38.776443, 28.589478>,  <33.974922, 38.977165, 28.703056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041332, 38.776443, 28.589478>,  <34.152020, 38.441906, 28.400181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041332, 38.776443, 28.589478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446234, 0.324319, -0.834082,
		-0.851061, -0.441979, 0.283461,
		-0.276715, 0.836344, 0.473241,
		33.958317, 39.027348, 28.731449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401051, 38.545696, 28.381397>,  <34.152020, 38.441906, 28.400181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401051, 38.545696, 28.381397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585735, 38.898220, 28.421623>,  <33.696545, 39.109734, 28.445759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.585735, 38.898220, 28.421623>,  <33.401051, 38.545696, 28.381397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585735, 38.898220, 28.421623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462970, 0.336132, -0.820167,
		-0.756627, 0.332119, 0.563216,
		0.461707, 0.881313, 0.100565,
		33.724247, 39.162613, 28.451794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899368, 39.116055, 28.300270>,  <33.401051, 38.545696, 28.381397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899368, 39.116055, 28.300270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.254265, 39.277538, 28.210983>,  <33.467201, 39.374428, 28.157412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.254265, 39.277538, 28.210983>,  <32.899368, 39.116055, 28.300270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254265, 39.277538, 28.210983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382093, 0.371998, -0.845945,
		-0.258482, 0.835844, 0.484306,
		0.887238, 0.403712, -0.223215,
		33.520435, 39.398651, 28.144018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738350, 39.540428, 27.774796>,  <32.899368, 39.116055, 28.300270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738350, 39.540428, 27.774796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137268, 39.537094, 27.745605>,  <33.376621, 39.535095, 27.728092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137268, 39.537094, 27.745605>,  <32.738350, 39.540428, 27.774796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137268, 39.537094, 27.745605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068782, 0.242513, -0.967707,
		0.025760, 0.970112, 0.241285,
		0.997299, -0.008332, -0.072973,
		33.436459, 39.534595, 27.723713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975571, 40.245968, 27.604042>,  <32.738350, 39.540428, 27.774796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975571, 40.245968, 27.604042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.270161, 39.995247, 27.502277>,  <33.446915, 39.844814, 27.441219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.270161, 39.995247, 27.502277>,  <32.975571, 40.245968, 27.604042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270161, 39.995247, 27.502277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041296, 0.417046, -0.907946,
		0.675201, 0.658175, 0.333029,
		0.736477, -0.626799, -0.254410,
		33.491104, 39.807205, 27.425955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423248, 40.542610, 27.228710>,  <32.975571, 40.245968, 27.604042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423248, 40.542610, 27.228710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.488335, 40.163898, 27.117615>,  <33.527386, 39.936672, 27.050959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.488335, 40.163898, 27.117615>,  <33.423248, 40.542610, 27.228710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488335, 40.163898, 27.117615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045528, 0.273984, -0.960656,
		0.985622, 0.168956, 0.001475,
		0.162713, -0.946777, -0.277737,
		33.537148, 39.879864, 27.034294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796944, 40.662762, 26.588352>,  <33.423248, 40.542610, 27.228710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796944, 40.662762, 26.588352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698650, 40.276196, 26.558245>,  <33.639675, 40.044258, 26.540180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698650, 40.276196, 26.558245>,  <33.796944, 40.662762, 26.588352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698650, 40.276196, 26.558245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066917, 0.094376, -0.993285,
		0.967026, -0.239044, -0.087860,
		-0.245731, -0.966412, -0.075268,
		33.624931, 39.986271, 26.535664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177742, 40.327106, 26.074957>,  <33.796944, 40.662762, 26.588352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177742, 40.327106, 26.074957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.860222, 40.085857, 26.106253>,  <33.669708, 39.941109, 26.125031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.860222, 40.085857, 26.106253>,  <34.177742, 40.327106, 26.074957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860222, 40.085857, 26.106253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116661, 0.024743, -0.992864,
		0.596884, -0.797263, -0.090002,
		-0.793801, -0.603124, 0.078241,
		33.622082, 39.904919, 26.129725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273056, 39.805676, 25.552359>,  <34.177742, 40.327106, 26.074957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273056, 39.805676, 25.552359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880814, 39.785919, 25.628223>,  <33.645470, 39.774063, 25.673742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880814, 39.785919, 25.628223>,  <34.273056, 39.805676, 25.552359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880814, 39.785919, 25.628223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183013, -0.115480, -0.976305,
		0.070129, -0.992081, 0.104201,
		-0.980606, -0.049397, 0.189662,
		33.586632, 39.771099, 25.685122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017021, 39.161743, 25.093309>,  <34.273056, 39.805676, 25.552359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017021, 39.161743, 25.093309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.711037, 39.401386, 25.187893>,  <33.527447, 39.545170, 25.244642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.711037, 39.401386, 25.187893>,  <34.017021, 39.161743, 25.093309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711037, 39.401386, 25.187893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358117, -0.090485, -0.929282,
		-0.535341, -0.795542, 0.283767,
		-0.764959, 0.599104, 0.236457,
		33.481548, 39.581116, 25.258829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461922, 38.825062, 24.803823>,  <34.017021, 39.161743, 25.093309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461922, 38.825062, 24.803823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331173, 39.201504, 24.838404>,  <33.252724, 39.427368, 24.859152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.331173, 39.201504, 24.838404>,  <33.461922, 38.825062, 24.803823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331173, 39.201504, 24.838404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175075, 0.029593, -0.984110,
		-0.928711, -0.336811, 0.155091,
		-0.326870, 0.941107, 0.086450,
		33.233112, 39.483837, 24.864338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923721, 38.876659, 24.371464>,  <33.461922, 38.825062, 24.803823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923721, 38.876659, 24.371464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016796, 39.262417, 24.421761>,  <33.072639, 39.493870, 24.451939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.016796, 39.262417, 24.421761>,  <32.923721, 38.876659, 24.371464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016796, 39.262417, 24.421761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256360, 0.185537, -0.948607,
		-0.938156, 0.188493, 0.290402,
		0.232686, 0.964389, 0.125740,
		33.086601, 39.551735, 24.459482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417271, 39.199932, 24.156900>,  <32.923721, 38.876659, 24.371464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417271, 39.199932, 24.156900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.736343, 39.439007, 24.124723>,  <32.927788, 39.582451, 24.105417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.736343, 39.439007, 24.124723>,  <32.417271, 39.199932, 24.156900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736343, 39.439007, 24.124723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227835, 0.175160, -0.957815,
		-0.558386, 0.782359, 0.275896,
		0.797682, 0.597689, -0.080442,
		32.975647, 39.618313, 24.100592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108356, 39.854000, 23.811247>,  <32.417271, 39.199932, 24.156900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108356, 39.854000, 23.811247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.501602, 39.828918, 23.742481>,  <32.737549, 39.813869, 23.701221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.501602, 39.828918, 23.742481>,  <32.108356, 39.854000, 23.811247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501602, 39.828918, 23.742481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146682, 0.291681, -0.945202,
		0.109413, 0.954458, 0.277558,
		0.983114, -0.062704, -0.171916,
		32.796535, 39.810108, 23.690907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292236, 40.386997, 23.420063>,  <32.108356, 39.854000, 23.811247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292236, 40.386997, 23.420063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.597378, 40.132999, 23.371340>,  <32.780464, 39.980602, 23.342106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.597378, 40.132999, 23.371340>,  <32.292236, 40.386997, 23.420063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597378, 40.132999, 23.371340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030013, 0.222964, -0.974365,
		0.645875, 0.739642, 0.189147,
		0.762853, -0.634994, -0.121808,
		32.826233, 39.942501, 23.334797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735531, 40.696941, 22.795685>,  <32.292236, 40.386997, 23.420063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735531, 40.696941, 22.795685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846184, 40.313004, 22.814335>,  <32.912575, 40.082642, 22.825525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846184, 40.313004, 22.814335>,  <32.735531, 40.696941, 22.795685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846184, 40.313004, 22.814335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006189, -0.046740, -0.998888,
		0.960955, 0.276615, -0.006990,
		0.276635, -0.959843, 0.046627,
		32.929173, 40.025051, 22.828323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131496, 40.636379, 22.308907>,  <32.735531, 40.696941, 22.795685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131496, 40.636379, 22.308907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110195, 40.244694, 22.387192>,  <33.097416, 40.009682, 22.434162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.110195, 40.244694, 22.387192>,  <33.131496, 40.636379, 22.308907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110195, 40.244694, 22.387192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309081, -0.202528, -0.929221,
		0.949544, 0.011009, 0.313441,
		-0.053251, -0.979215, 0.195712,
		33.094219, 39.950928, 22.445906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800457, 40.311535, 22.082047>,  <33.131496, 40.636379, 22.308907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800457, 40.311535, 22.082047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501499, 40.045818, 22.077621>,  <33.322124, 39.886387, 22.074966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501499, 40.045818, 22.077621>,  <33.800457, 40.311535, 22.082047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501499, 40.045818, 22.077621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250159, -0.265950, -0.930962,
		0.615490, -0.698559, 0.364948,
		-0.747390, -0.664293, -0.011061,
		33.277283, 39.846531, 22.074303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.030788, 38.931091, 21.455870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.665108, 39.063793, 21.548973>,  <33.445698, 39.143414, 21.604836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.665108, 39.063793, 21.548973>,  <34.030788, 38.931091, 21.455870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665108, 39.063793, 21.548973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277130, -0.092706, -0.956350,
		-0.295693, -0.938800, 0.176691,
		-0.914202, 0.331752, 0.232757,
		33.390846, 39.163319, 21.618799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590927, 38.438877, 21.118132>,  <34.030788, 38.931091, 21.455870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590927, 38.438877, 21.118132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378101, 38.772545, 21.176184>,  <33.250408, 38.972748, 21.211016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378101, 38.772545, 21.176184>,  <33.590927, 38.438877, 21.118132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378101, 38.772545, 21.176184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316244, -0.036780, -0.947965,
		-0.785429, -0.550274, 0.283372,
		-0.532063, 0.834174, 0.145132,
		33.218483, 39.022797, 21.219723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776382, 38.423798, 20.864769>,  <33.590927, 38.438877, 21.118132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776382, 38.423798, 20.864769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873096, 38.811893, 20.859562>,  <32.931126, 39.044750, 20.856438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873096, 38.811893, 20.859562>,  <32.776382, 38.423798, 20.864769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873096, 38.811893, 20.859562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198610, 0.036355, -0.979404,
		-0.949786, 0.239391, 0.201490,
		0.241785, 0.970242, -0.013016,
		32.945633, 39.102966, 20.855658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252899, 38.725746, 20.571114>,  <32.776382, 38.423798, 20.864769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252899, 38.725746, 20.571114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551323, 38.979370, 20.489767>,  <32.730377, 39.131546, 20.440958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551323, 38.979370, 20.489767>,  <32.252899, 38.725746, 20.571114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551323, 38.979370, 20.489767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318698, 0.071855, -0.945129,
		-0.584654, 0.769939, 0.255681,
		0.746064, 0.634059, -0.203368,
		32.775143, 39.169586, 20.428757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965597, 39.055828, 20.077118>,  <32.252899, 38.725746, 20.571114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965597, 39.055828, 20.077118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344154, 39.185009, 20.079756>,  <32.571289, 39.262516, 20.081339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344154, 39.185009, 20.079756>,  <31.965597, 39.055828, 20.077118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344154, 39.185009, 20.079756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038012, 0.131623, -0.990571,
		-0.320773, 0.937219, 0.136843,
		0.946393, 0.322949, 0.006596,
		32.628071, 39.281895, 20.081734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028362, 39.632587, 19.744352>,  <31.965597, 39.055828, 20.077118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028362, 39.632587, 19.744352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394981, 39.476952, 19.707350>,  <32.614952, 39.383572, 19.685148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394981, 39.476952, 19.707350>,  <32.028362, 39.632587, 19.744352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394981, 39.476952, 19.707350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018213, 0.190453, -0.981527,
		0.399520, 0.901297, 0.167472,
		0.916543, -0.389090, -0.092505,
		32.669945, 39.360226, 19.679598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281216, 40.102390, 19.324791>,  <32.028362, 39.632587, 19.744352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281216, 40.102390, 19.324791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534481, 39.792862, 19.317907>,  <32.686440, 39.607143, 19.313776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534481, 39.792862, 19.317907>,  <32.281216, 40.102390, 19.324791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534481, 39.792862, 19.317907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064795, -0.030833, -0.997422,
		0.771298, 0.632650, -0.069663,
		0.633167, -0.773824, -0.017211,
		32.724430, 39.560715, 19.312744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775963, 40.189873, 18.741232>,  <32.281216, 40.102390, 19.324791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775963, 40.189873, 18.741232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807037, 39.796913, 18.809170>,  <32.825684, 39.561138, 18.849934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807037, 39.796913, 18.809170>,  <32.775963, 40.189873, 18.741232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807037, 39.796913, 18.809170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036767, -0.167422, -0.985199,
		0.996299, 0.082785, 0.023113,
		0.077690, -0.982403, 0.169846,
		32.830345, 39.502193, 18.860125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337631, 39.985104, 18.370405>,  <32.775963, 40.189873, 18.741232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337631, 39.985104, 18.370405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124901, 39.650532, 18.423389>,  <32.997261, 39.449787, 18.455179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124901, 39.650532, 18.423389>,  <33.337631, 39.985104, 18.370405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124901, 39.650532, 18.423389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066706, -0.197304, -0.978070,
		0.844222, -0.511328, 0.160726,
		-0.531827, -0.836430, 0.132460,
		32.965351, 39.399601, 18.463127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608044, 39.561344, 17.940191>,  <33.337631, 39.985104, 18.370405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608044, 39.561344, 17.940191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268024, 39.359501, 18.000574>,  <33.064014, 39.238396, 18.036804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268024, 39.359501, 18.000574>,  <33.608044, 39.561344, 17.940191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268024, 39.359501, 18.000574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012013, -0.267963, -0.963354,
		0.526566, -0.820712, 0.221720,
		-0.850049, -0.504606, 0.150959,
		33.013008, 39.208118, 18.045862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702225, 38.850628, 17.681902>,  <33.608044, 39.561344, 17.940191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702225, 38.850628, 17.681902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.329357, 38.994751, 17.667818>,  <33.105637, 39.081226, 17.659369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.329357, 38.994751, 17.667818>,  <33.702225, 38.850628, 17.681902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329357, 38.994751, 17.667818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029985, -0.173763, -0.984331,
		-0.360783, -0.916505, 0.172780,
		-0.932167, 0.360311, -0.035209,
		33.049706, 39.102844, 17.657255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419029, 38.528389, 17.130415>,  <33.702225, 38.850628, 17.681902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419029, 38.528389, 17.130415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125069, 38.790260, 17.201208>,  <32.948692, 38.947384, 17.243683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.125069, 38.790260, 17.201208>,  <33.419029, 38.528389, 17.130415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125069, 38.790260, 17.201208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332438, -0.120299, -0.935421,
		-0.591106, -0.746277, 0.306047,
		-0.734900, 0.654675, 0.176981,
		32.904598, 38.986664, 17.254303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869152, 38.299278, 16.696283>,  <33.419029, 38.528389, 17.130415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869152, 38.299278, 16.696283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724670, 38.648724, 16.826717>,  <32.637981, 38.858391, 16.904978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.724670, 38.648724, 16.826717>,  <32.869152, 38.299278, 16.696283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724670, 38.648724, 16.826717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408944, 0.165867, -0.897359,
		-0.838030, -0.457483, 0.297346,
		-0.361206, 0.873612, 0.326087,
		32.616310, 38.910809, 16.924543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149502, 38.301540, 16.539690>,  <32.869152, 38.299278, 16.696283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149502, 38.301540, 16.539690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283474, 38.678429, 16.542082>,  <32.363857, 38.904564, 16.543516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283474, 38.678429, 16.542082>,  <32.149502, 38.301540, 16.539690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283474, 38.678429, 16.542082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280029, 0.105597, -0.954166,
		-0.899670, 0.317904, 0.299218,
		0.334929, 0.942224, 0.005980,
		32.383953, 38.961098, 16.543877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608114, 38.700619, 16.272549>,  <32.149502, 38.301540, 16.539690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608114, 38.700619, 16.272549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.947018, 38.908844, 16.230272>,  <32.150360, 39.033779, 16.204906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.947018, 38.908844, 16.230272>,  <31.608114, 38.700619, 16.272549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947018, 38.908844, 16.230272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187204, 0.106418, -0.976540,
		-0.497100, 0.847167, 0.187614,
		0.847258, 0.520560, -0.105692,
		32.201195, 39.065014, 16.198565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336643, 39.443371, 16.069332>,  <31.608114, 38.700619, 16.272549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336643, 39.443371, 16.069332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709412, 39.382671, 15.937578>,  <31.933073, 39.346252, 15.858525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709412, 39.382671, 15.937578>,  <31.336643, 39.443371, 16.069332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709412, 39.382671, 15.937578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244624, 0.407492, -0.879835,
		0.267734, 0.900513, 0.342630,
		0.931921, -0.151746, -0.329387,
		31.988989, 39.337147, 15.838762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571270, 40.101917, 15.668036>,  <31.336643, 39.443371, 16.069332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571270, 40.101917, 15.668036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848366, 39.836063, 15.556058>,  <32.014622, 39.676552, 15.488872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848366, 39.836063, 15.556058>,  <31.571270, 40.101917, 15.668036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848366, 39.836063, 15.556058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405682, -0.038191, -0.913216,
		0.596266, 0.746190, -0.296087,
		0.692740, -0.664637, -0.279944,
		32.056187, 39.636673, 15.472075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821354, 40.286980, 15.035799>,  <31.571270, 40.101917, 15.668036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821354, 40.286980, 15.035799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930649, 39.902710, 15.016051>,  <31.996225, 39.672146, 15.004203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930649, 39.902710, 15.016051>,  <31.821354, 40.286980, 15.035799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930649, 39.902710, 15.016051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281690, -0.030834, -0.959010,
		0.919778, 0.275945, -0.279038,
		0.273237, -0.960679, -0.049370,
		32.012619, 39.614506, 15.001240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208317, 40.209427, 14.407528>,  <31.821354, 40.286980, 15.035799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208317, 40.209427, 14.407528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083626, 39.846867, 14.521553>,  <32.008812, 39.629330, 14.589969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083626, 39.846867, 14.521553>,  <32.208317, 40.209427, 14.407528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083626, 39.846867, 14.521553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162052, -0.244902, -0.955909,
		0.936252, -0.344175, -0.070542,
		-0.311725, -0.906403, 0.285064,
		31.990108, 39.574947, 14.607072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608913, 39.857563, 14.070684>,  <32.208317, 40.209427, 14.407528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608913, 39.857563, 14.070684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292511, 39.628754, 14.157491>,  <32.102669, 39.491467, 14.209575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292511, 39.628754, 14.157491>,  <32.608913, 39.857563, 14.070684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292511, 39.628754, 14.157491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130806, -0.188387, -0.973345,
		0.597660, -0.798310, 0.074191,
		-0.791007, -0.572024, 0.217015,
		32.055210, 39.457146, 14.222595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485329, 39.337048, 13.539585>,  <32.608913, 39.857563, 14.070684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485329, 39.337048, 13.539585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119640, 39.262737, 13.683634>,  <31.900227, 39.218151, 13.770062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.119640, 39.262737, 13.683634>,  <32.485329, 39.337048, 13.539585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119640, 39.262737, 13.683634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354880, -0.061921, -0.932859,
		0.195601, -0.980639, -0.009319,
		-0.914221, -0.185775, 0.360121,
		31.845373, 39.207005, 13.791670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206795, 38.805504, 13.155964>,  <32.485329, 39.337048, 13.539585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206795, 38.805504, 13.155964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878897, 38.986977, 13.295786>,  <31.682158, 39.095860, 13.379679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878897, 38.986977, 13.295786>,  <32.206795, 38.805504, 13.155964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878897, 38.986977, 13.295786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505046, -0.284811, -0.814746,
		-0.270058, -0.844438, 0.462595,
		-0.819754, 0.453660, 0.349565,
		31.632973, 39.123081, 13.400653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600567, 38.536549, 12.894046>,  <32.206795, 38.805504, 13.155964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600567, 38.536549, 12.894046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420425, 38.867374, 13.028591>,  <31.312340, 39.065872, 13.109319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.420425, 38.867374, 13.028591>,  <31.600567, 38.536549, 12.894046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420425, 38.867374, 13.028591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722126, -0.115852, -0.681991,
		-0.525084, -0.550035, 0.649421,
		-0.450356, 0.827067, 0.336363,
		31.285318, 39.115494, 13.129500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861917, 38.435547, 13.146268>,  <31.600567, 38.536549, 12.894046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861917, 38.435547, 13.146268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924938, 38.809662, 13.019517>,  <30.962751, 39.034130, 12.943466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924938, 38.809662, 13.019517>,  <30.861917, 38.435547, 13.146268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924938, 38.809662, 13.019517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703042, -0.119105, -0.701103,
		-0.693476, 0.333238, 0.638783,
		0.157552, 0.935290, -0.316877,
		30.972204, 39.090248, 12.924454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543518, 37.778023, 12.978743>,  <30.861917, 38.435547, 13.146268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543518, 37.778023, 12.978743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450901, 37.389507, 12.956897>,  <30.395330, 37.156399, 12.943789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450901, 37.389507, 12.956897>,  <30.543518, 37.778023, 12.978743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450901, 37.389507, 12.956897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420518, -0.150554, 0.894705,
		-0.877241, 0.184196, 0.443305,
		-0.231543, -0.971291, -0.054614,
		30.381439, 37.098122, 12.940513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073227, 37.646214, 13.591692>,  <30.543518, 37.778023, 12.978743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073227, 37.646214, 13.591692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251120, 37.310749, 13.465922>,  <30.357855, 37.109470, 13.390461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251120, 37.310749, 13.465922>,  <30.073227, 37.646214, 13.591692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251120, 37.310749, 13.465922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110823, -0.296828, 0.948479,
		-0.888782, -0.456662, -0.039065,
		0.444730, -0.838662, -0.314424,
		30.384539, 37.059151, 13.371595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719854, 37.101734, 13.949248>,  <30.073227, 37.646214, 13.591692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719854, 37.101734, 13.949248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.087450, 36.977936, 13.851540>,  <30.308008, 36.903656, 13.792914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.087450, 36.977936, 13.851540>,  <29.719854, 37.101734, 13.949248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087450, 36.977936, 13.851540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174247, -0.236950, 0.955768,
		-0.353688, -0.920905, -0.163826,
		0.918990, -0.309498, -0.244271,
		30.363148, 36.885086, 13.778258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899305, 36.532913, 14.379555>,  <29.719854, 37.101734, 13.949248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899305, 36.532913, 14.379555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255167, 36.671234, 14.260264>,  <30.468683, 36.754227, 14.188690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.255167, 36.671234, 14.260264>,  <29.899305, 36.532913, 14.379555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255167, 36.671234, 14.260264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376553, -0.186123, 0.907505,
		0.258308, -0.919664, -0.295797,
		0.889654, 0.345799, -0.298226,
		30.522064, 36.774975, 14.170796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300179, 35.979126, 14.583691>,  <29.899305, 36.532913, 14.379555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300179, 35.979126, 14.583691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547297, 36.293079, 14.564591>,  <30.695568, 36.481453, 14.553132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547297, 36.293079, 14.564591>,  <30.300179, 35.979126, 14.583691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547297, 36.293079, 14.564591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283569, -0.165742, 0.944520,
		0.733428, -0.597061, -0.324965,
		0.617796, 0.784887, -0.047749,
		30.732635, 36.528545, 14.550267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810329, 35.766621, 15.016525>,  <30.300179, 35.979126, 14.583691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810329, 35.766621, 15.016525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900185, 36.153439, 14.968577>,  <30.954098, 36.385529, 14.939809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.900185, 36.153439, 14.968577>,  <30.810329, 35.766621, 15.016525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900185, 36.153439, 14.968577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576708, -0.032782, 0.816292,
		0.785459, -0.252498, -0.565065,
		0.224637, 0.967042, -0.119869,
		30.967575, 36.443550, 14.932617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475788, 35.767788, 15.103907>,  <30.810329, 35.766621, 15.016525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475788, 35.767788, 15.103907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356909, 36.144394, 15.167439>,  <31.285582, 36.370358, 15.205558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.356909, 36.144394, 15.167439>,  <31.475788, 35.767788, 15.103907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356909, 36.144394, 15.167439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331051, -0.054421, 0.942042,
		0.895589, 0.332554, -0.295515,
		-0.297197, 0.941513, 0.158831,
		31.267750, 36.426849, 15.215088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992256, 36.164444, 15.496099>,  <31.475788, 35.767788, 15.103907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992256, 36.164444, 15.496099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651789, 36.361580, 15.568344>,  <31.447508, 36.479862, 15.611691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651789, 36.361580, 15.568344>,  <31.992256, 36.164444, 15.496099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651789, 36.361580, 15.568344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206006, -0.002824, 0.978547,
		0.482776, 0.870116, -0.099124,
		-0.851169, 0.492839, 0.180612,
		31.396439, 36.509430, 15.622528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256927, 36.786240, 15.951028>,  <31.992256, 36.164444, 15.496099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256927, 36.786240, 15.951028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863625, 36.735920, 16.003765>,  <31.627644, 36.705727, 16.035408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.863625, 36.735920, 16.003765>,  <32.256927, 36.786240, 15.951028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863625, 36.735920, 16.003765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108060, 0.180073, 0.977700,
		-0.146736, 0.975576, -0.163464,
		-0.983256, -0.125799, 0.131844,
		31.568647, 36.698181, 16.043318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011703, 37.372372, 16.375221>,  <32.256927, 36.786240, 15.951028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011703, 37.372372, 16.375221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.734636, 37.093433, 16.448883>,  <31.568396, 36.926071, 16.493080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.734636, 37.093433, 16.448883>,  <32.011703, 37.372372, 16.375221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734636, 37.093433, 16.448883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224995, 0.033670, 0.973778,
		-0.685261, 0.715943, 0.133577,
		-0.692672, -0.697347, 0.184156,
		31.526834, 36.884228, 16.504129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539248, 37.629330, 16.934736>,  <32.011703, 37.372372, 16.375221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539248, 37.629330, 16.934736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448074, 37.239902, 16.940491>,  <31.393372, 37.006245, 16.943943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448074, 37.239902, 16.940491>,  <31.539248, 37.629330, 16.934736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448074, 37.239902, 16.940491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246331, -0.043365, 0.968215,
		-0.942002, 0.224230, 0.249705,
		-0.227932, -0.973571, 0.014385,
		31.379694, 36.947830, 16.944807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974508, 37.484879, 17.438461>,  <31.539248, 37.629330, 16.934736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974508, 37.484879, 17.438461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190084, 37.151237, 17.391451>,  <31.319431, 36.951054, 17.363245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190084, 37.151237, 17.391451>,  <30.974508, 37.484879, 17.438461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190084, 37.151237, 17.391451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286311, 0.050176, 0.956822,
		-0.792192, -0.549321, 0.265855,
		0.538942, -0.834104, -0.117528,
		31.351767, 36.901005, 17.356192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969616, 37.180107, 18.059811>,  <30.974508, 37.484879, 17.438461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969616, 37.180107, 18.059811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243876, 36.940594, 17.894234>,  <31.408432, 36.796886, 17.794888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243876, 36.940594, 17.894234>,  <30.969616, 37.180107, 18.059811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243876, 36.940594, 17.894234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387538, -0.181105, 0.903889,
		-0.616198, -0.780168, 0.107876,
		0.685649, -0.598781, -0.413942,
		31.449570, 36.760960, 17.770052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099409, 36.590797, 18.453224>,  <30.969616, 37.180107, 18.059811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099409, 36.590797, 18.453224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436613, 36.607555, 18.238718>,  <31.638935, 36.617611, 18.110014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436613, 36.607555, 18.238718>,  <31.099409, 36.590797, 18.453224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436613, 36.607555, 18.238718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531277, -0.220790, 0.817922,
		-0.084138, -0.974421, -0.208384,
		0.843010, 0.041891, -0.536264,
		31.689516, 36.620125, 18.077839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504595, 35.986309, 18.670891>,  <31.099409, 36.590797, 18.453224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504595, 35.986309, 18.670891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775236, 36.246849, 18.533516>,  <31.937620, 36.403172, 18.451090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775236, 36.246849, 18.533516>,  <31.504595, 35.986309, 18.670891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775236, 36.246849, 18.533516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631289, -0.273015, 0.725904,
		0.379054, -0.707958, -0.595914,
		0.676603, 0.651351, -0.343439,
		31.978216, 36.442253, 18.430485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160633, 35.727100, 18.587200>,  <31.504595, 35.986309, 18.670891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160633, 35.727100, 18.587200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263573, 36.113129, 18.606813>,  <32.325336, 36.344746, 18.618582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263573, 36.113129, 18.606813>,  <32.160633, 35.727100, 18.587200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263573, 36.113129, 18.606813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506786, -0.177995, 0.843497,
		0.822764, -0.192224, -0.534892,
		0.257348, 0.965074, 0.049031,
		32.340778, 36.402653, 18.621523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859707, 35.687695, 18.701454>,  <32.160633, 35.727100, 18.587200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859707, 35.687695, 18.701454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765411, 36.051567, 18.838224>,  <32.708832, 36.269890, 18.920286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.765411, 36.051567, 18.838224>,  <32.859707, 35.687695, 18.701454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765411, 36.051567, 18.838224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667248, -0.104291, 0.737498,
		0.706545, 0.402009, -0.582394,
		-0.235743, 0.909677, 0.341926,
		32.694687, 36.324471, 18.940802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513245, 36.024803, 18.808142>,  <32.859707, 35.687695, 18.701454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513245, 36.024803, 18.808142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.246208, 36.212540, 19.039324>,  <33.085987, 36.325184, 19.178034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.246208, 36.212540, 19.039324>,  <33.513245, 36.024803, 18.808142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246208, 36.212540, 19.039324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615233, -0.089408, 0.783259,
		0.419291, 0.878478, -0.229067,
		-0.667595, 0.469343, 0.577957,
		33.045929, 36.353344, 19.212711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941990, 36.314346, 19.338047>,  <33.513245, 36.024803, 18.808142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941990, 36.314346, 19.338047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573963, 36.329628, 19.494003>,  <33.353146, 36.338799, 19.587578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573963, 36.329628, 19.494003>,  <33.941990, 36.314346, 19.338047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573963, 36.329628, 19.494003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369044, -0.249443, 0.895313,
		0.131464, 0.967635, 0.215404,
		-0.920067, 0.038208, 0.389893,
		33.297943, 36.341091, 19.610971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033073, 36.734776, 19.986654>,  <33.941990, 36.314346, 19.338047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033073, 36.734776, 19.986654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687035, 36.536266, 20.015833>,  <33.479412, 36.417160, 20.033340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687035, 36.536266, 20.015833>,  <34.033073, 36.734776, 19.986654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687035, 36.536266, 20.015833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210192, -0.226618, 0.951033,
		-0.455438, 0.838070, 0.300359,
		-0.865098, -0.496270, 0.072945,
		33.427505, 36.387386, 20.037716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.298374, 40.776264, 24.610687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.229794, 40.383945, 24.573490>,  <33.188644, 40.148556, 24.551172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.229794, 40.383945, 24.573490>,  <33.298374, 40.776264, 24.610687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229794, 40.383945, 24.573490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046192, -0.102292, 0.993682,
		-0.984109, 0.166077, 0.062844,
		-0.171456, -0.980793, -0.092995,
		33.178356, 40.089706, 24.545591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702324, 40.679111, 24.981339>,  <33.298374, 40.776264, 24.610687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702324, 40.679111, 24.981339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.866665, 40.315643, 24.951624>,  <32.965271, 40.097561, 24.933794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.866665, 40.315643, 24.951624>,  <32.702324, 40.679111, 24.981339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866665, 40.315643, 24.951624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076438, -0.115528, 0.990359,
		-0.908491, -0.401215, -0.116922,
		0.410854, -0.908670, -0.074288,
		32.989922, 40.043041, 24.929337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436329, 40.326786, 25.553530>,  <32.702324, 40.679111, 24.981339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436329, 40.326786, 25.553530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.751156, 40.097054, 25.463491>,  <32.940052, 39.959213, 25.409468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.751156, 40.097054, 25.463491>,  <32.436329, 40.326786, 25.553530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751156, 40.097054, 25.463491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059867, -0.292064, 0.954523,
		-0.613955, -0.764750, -0.195491,
		0.787068, -0.574331, -0.225097,
		32.987278, 39.924755, 25.395962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331383, 39.661404, 25.802401>,  <32.436329, 40.326786, 25.553530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331383, 39.661404, 25.802401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.727699, 39.704933, 25.770176>,  <32.965488, 39.731052, 25.750841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.727699, 39.704933, 25.770176>,  <32.331383, 39.661404, 25.802401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727699, 39.704933, 25.770176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118893, -0.414536, 0.902233,
		0.064792, -0.903502, -0.423657,
		0.990790, 0.108827, -0.080562,
		33.024937, 39.737579, 25.746008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648018, 39.116669, 26.119892>,  <32.331383, 39.661404, 25.802401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648018, 39.116669, 26.119892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.933041, 39.397175, 26.128685>,  <33.104053, 39.565479, 26.133961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.933041, 39.397175, 26.128685>,  <32.648018, 39.116669, 26.119892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933041, 39.397175, 26.128685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236962, -0.270032, 0.933237,
		0.660385, -0.659778, -0.358588,
		0.712559, 0.701267, 0.021983,
		33.146809, 39.607555, 26.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218544, 38.760143, 26.596386>,  <32.648018, 39.116669, 26.119892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218544, 38.760143, 26.596386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.352608, 39.136299, 26.573265>,  <33.433044, 39.361992, 26.559393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.352608, 39.136299, 26.573265>,  <33.218544, 38.760143, 26.596386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352608, 39.136299, 26.573265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509275, -0.129211, 0.850848,
		0.792658, -0.314607, -0.522222,
		0.335160, 0.940386, -0.057801,
		33.453156, 39.418415, 26.555925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971928, 38.713001, 26.657658>,  <33.218544, 38.760143, 26.596386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971928, 38.713001, 26.657658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.844990, 39.068748, 26.789305>,  <33.768826, 39.282196, 26.868294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.844990, 39.068748, 26.789305>,  <33.971928, 38.713001, 26.657658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844990, 39.068748, 26.789305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428367, -0.175192, 0.886459,
		0.846046, 0.422298, -0.325379,
		-0.317346, 0.889366, 0.329119,
		33.749786, 39.335560, 26.888041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482235, 38.951504, 27.119129>,  <33.971928, 38.713001, 26.657658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482235, 38.951504, 27.119129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207233, 39.231110, 27.197840>,  <34.042233, 39.398872, 27.245066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207233, 39.231110, 27.197840>,  <34.482235, 38.951504, 27.119129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207233, 39.231110, 27.197840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221743, -0.055957, 0.973498,
		0.691501, 0.712914, -0.116531,
		-0.687500, 0.699015, 0.196778,
		34.000984, 39.440815, 27.256874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676571, 39.417267, 27.571774>,  <34.482235, 38.951504, 27.119129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676571, 39.417267, 27.571774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282776, 39.447884, 27.634914>,  <34.046497, 39.466255, 27.672798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282776, 39.447884, 27.634914>,  <34.676571, 39.417267, 27.571774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282776, 39.447884, 27.634914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159086, 0.010289, 0.987211,
		0.073939, 0.997013, -0.022306,
		-0.984492, 0.076542, 0.157850,
		33.987427, 39.470848, 27.682270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530708, 40.117714, 28.002745>,  <34.676571, 39.417267, 27.571774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530708, 40.117714, 28.002745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.216999, 39.872494, 28.040888>,  <34.028774, 39.725361, 28.063774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.216999, 39.872494, 28.040888>,  <34.530708, 40.117714, 28.002745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216999, 39.872494, 28.040888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144463, -0.030969, 0.989025,
		-0.603366, 0.789439, 0.112851,
		-0.784270, -0.613047, 0.095359,
		33.981716, 39.688580, 28.069496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254623, 40.381432, 28.601015>,  <34.530708, 40.117714, 28.002745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254623, 40.381432, 28.601015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.093521, 40.020592, 28.539036>,  <33.996861, 39.804089, 28.501848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.093521, 40.020592, 28.539036>,  <34.254623, 40.381432, 28.601015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093521, 40.020592, 28.539036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017792, -0.161535, 0.986707,
		-0.915136, 0.400155, 0.049008,
		-0.402752, -0.902099, -0.154946,
		33.972694, 39.749962, 28.492552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915363, 40.255325, 29.241426>,  <34.254623, 40.381432, 28.601015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915363, 40.255325, 29.241426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.941704, 39.892750, 29.074560>,  <33.957508, 39.675205, 28.974442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.941704, 39.892750, 29.074560>,  <33.915363, 40.255325, 29.241426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941704, 39.892750, 29.074560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086669, -0.411296, 0.907372,
		-0.994058, -0.095908, 0.051475,
		0.065853, -0.906442, -0.417165,
		33.961460, 39.620815, 28.949411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268616, 40.216137, 29.542610>,  <33.915363, 40.255325, 29.241426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268616, 40.216137, 29.542610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.967319, 40.046696, 29.743885>,  <32.786541, 39.945030, 29.864651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.967319, 40.046696, 29.743885>,  <33.268616, 40.216137, 29.542610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967319, 40.046696, 29.743885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614089, 0.178821, -0.768712,
		0.235645, -0.888024, -0.394822,
		-0.753237, -0.423599, 0.503187,
		32.741348, 39.919617, 29.894842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787354, 40.050705, 29.023540>,  <33.268616, 40.216137, 29.542610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787354, 40.050705, 29.023540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.561306, 39.969467, 29.343388>,  <32.425678, 39.920723, 29.535295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.561306, 39.969467, 29.343388>,  <32.787354, 40.050705, 29.023540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561306, 39.969467, 29.343388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808040, -0.059298, -0.586136,
		0.166459, -0.977361, -0.130600,
		-0.565123, -0.203097, 0.799618,
		32.391769, 39.908539, 29.583273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341476, 39.363232, 28.979057>,  <32.787354, 40.050705, 29.023540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341476, 39.363232, 28.979057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.172302, 39.644291, 29.207935>,  <32.070797, 39.812927, 29.345263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.172302, 39.644291, 29.207935>,  <32.341476, 39.363232, 28.979057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172302, 39.644291, 29.207935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696595, 0.151754, -0.701232,
		-0.579555, -0.695163, 0.425282,
		-0.422932, 0.702652, 0.572196,
		32.045422, 39.855087, 29.379595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661804, 39.222443, 28.845631>,  <32.341476, 39.363232, 28.979057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661804, 39.222443, 28.845631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690592, 39.602531, 28.966888>,  <31.707865, 39.830585, 29.039642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.690592, 39.602531, 28.966888>,  <31.661804, 39.222443, 28.845631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690592, 39.602531, 28.966888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624074, 0.279988, -0.729478,
		-0.778044, -0.136685, 0.613159,
		0.071968, 0.950223, 0.303145,
		31.712183, 39.887600, 29.057833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010065, 39.559639, 28.822569>,  <31.661804, 39.222443, 28.845631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010065, 39.559639, 28.822569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.258785, 39.872875, 28.818039>,  <31.408018, 40.060818, 28.815321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.258785, 39.872875, 28.818039>,  <31.010065, 39.559639, 28.822569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258785, 39.872875, 28.818039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541104, 0.419110, -0.729077,
		-0.566187, 0.459471, 0.684338,
		0.621803, 0.783092, -0.011327,
		31.445326, 40.107803, 28.814640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492386, 40.189865, 28.858944>,  <31.010065, 39.559639, 28.822569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492386, 40.189865, 28.858944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.858530, 40.262756, 28.715326>,  <31.078217, 40.306492, 28.629156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.858530, 40.262756, 28.715326>,  <30.492386, 40.189865, 28.858944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858530, 40.262756, 28.715326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402293, 0.450869, -0.796792,
		0.016684, 0.873791, 0.486016,
		0.915359, 0.182227, -0.359042,
		31.133139, 40.317425, 28.607615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480099, 40.802567, 28.613806>,  <30.492386, 40.189865, 28.858944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480099, 40.802567, 28.613806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.793196, 40.668289, 28.404188>,  <30.981054, 40.587723, 28.278418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.793196, 40.668289, 28.404188>,  <30.480099, 40.802567, 28.613806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793196, 40.668289, 28.404188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402939, 0.368365, -0.837823,
		0.474295, 0.866957, 0.153069,
		0.782742, -0.335697, -0.524044,
		31.028019, 40.567581, 28.246975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573305, 41.285080, 28.083103>,  <30.480099, 40.802567, 28.613806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573305, 41.285080, 28.083103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.799709, 40.983894, 27.948837>,  <30.935553, 40.803181, 27.868277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.799709, 40.983894, 27.948837>,  <30.573305, 41.285080, 28.083103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799709, 40.983894, 27.948837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305288, 0.186777, -0.933763,
		0.765786, 0.630997, -0.124154,
		0.566013, -0.752966, -0.335667,
		30.969513, 40.758003, 27.848137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925484, 41.538143, 27.491341>,  <30.573305, 41.285080, 28.083103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925484, 41.538143, 27.491341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.939360, 41.139423, 27.462543>,  <30.947685, 40.900192, 27.445265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.939360, 41.139423, 27.462543>,  <30.925484, 41.538143, 27.491341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939360, 41.139423, 27.462543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181356, 0.064563, -0.981296,
		0.982806, 0.047095, -0.178536,
		0.034688, -0.996802, -0.071994,
		30.949766, 40.840382, 27.440945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183270, 41.463043, 26.764595>,  <30.925484, 41.538143, 27.491341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183270, 41.463043, 26.764595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.036572, 41.114372, 26.894632>,  <30.948553, 40.905170, 26.972654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.036572, 41.114372, 26.894632>,  <31.183270, 41.463043, 26.764595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036572, 41.114372, 26.894632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223910, -0.256464, -0.940261,
		0.902975, -0.417626, -0.101120,
		-0.366744, -0.871674, 0.325091,
		30.926548, 40.852871, 26.992159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508886, 41.004562, 26.422623>,  <31.183270, 41.463043, 26.764595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508886, 41.004562, 26.422623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.159637, 40.838089, 26.524168>,  <30.950089, 40.738205, 26.585094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.159637, 40.838089, 26.524168>,  <31.508886, 41.004562, 26.422623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159637, 40.838089, 26.524168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200524, -0.168047, -0.965169,
		0.444352, -0.893615, 0.063270,
		-0.873122, -0.416187, 0.253863,
		30.897701, 40.713234, 26.600327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427603, 40.427372, 25.977234>,  <31.508886, 41.004562, 26.422623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427603, 40.427372, 25.977234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.054243, 40.505829, 26.097425>,  <30.830227, 40.552902, 26.169540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.054243, 40.505829, 26.097425>,  <31.427603, 40.427372, 25.977234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054243, 40.505829, 26.097425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332831, -0.160282, -0.929265,
		-0.134094, -0.967390, 0.214886,
		-0.933404, 0.196130, 0.300484,
		30.774223, 40.564671, 26.187571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034842, 40.036217, 25.627722>,  <31.427603, 40.427372, 25.977234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034842, 40.036217, 25.627722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.755432, 40.296391, 25.747057>,  <30.587788, 40.452496, 25.818659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.755432, 40.296391, 25.747057>,  <31.034842, 40.036217, 25.627722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755432, 40.296391, 25.747057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406263, -0.017256, -0.913593,
		-0.589083, -0.759368, 0.276300,
		-0.698522, 0.650433, 0.298338,
		30.545876, 40.491520, 25.836557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450554, 39.683441, 25.474453>,  <31.034842, 40.036217, 25.627722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450554, 39.683441, 25.474453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.367769, 40.074543, 25.488125>,  <30.318098, 40.309204, 25.496328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.367769, 40.074543, 25.488125>,  <30.450554, 39.683441, 25.474453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367769, 40.074543, 25.488125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433457, -0.060317, -0.899153,
		-0.877087, -0.200908, 0.436297,
		-0.206963, 0.977752, 0.034181,
		30.305681, 40.367870, 25.498379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746487, 39.764629, 25.321056>,  <30.450554, 39.683441, 25.474453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746487, 39.764629, 25.321056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.902262, 40.123779, 25.238926>,  <29.995728, 40.339268, 25.189648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.902262, 40.123779, 25.238926>,  <29.746487, 39.764629, 25.321056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902262, 40.123779, 25.238926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389273, -0.041585, -0.920183,
		-0.834748, 0.438281, 0.333324,
		0.389438, 0.897875, -0.205324,
		30.019093, 40.393143, 25.177328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273533, 39.921463, 24.841009>,  <29.746487, 39.764629, 25.321056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273533, 39.921463, 24.841009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.553122, 40.201729, 24.783726>,  <29.720875, 40.369888, 24.749355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.553122, 40.201729, 24.783726>,  <29.273533, 39.921463, 24.841009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553122, 40.201729, 24.783726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297287, 0.102546, -0.949266,
		-0.650432, 0.706083, 0.279975,
		0.698970, 0.700665, -0.143210,
		29.762812, 40.411930, 24.740763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707832, 40.544872, 24.985750>,  <29.273533, 39.921463, 24.841009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707832, 40.544872, 24.985750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.357283, 40.354046, 24.959278>,  <28.146954, 40.239552, 24.943396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.357283, 40.354046, 24.959278>,  <28.707832, 40.544872, 24.985750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357283, 40.354046, 24.959278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090055, -0.297290, 0.950531,
		-0.473141, 0.827058, 0.303499,
		-0.876372, -0.477067, -0.066180,
		28.094372, 40.210926, 24.939425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387939, 40.651276, 25.630342>,  <28.707832, 40.544872, 24.985750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387939, 40.651276, 25.630342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.193962, 40.337456, 25.475780>,  <28.077576, 40.149162, 25.383043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.193962, 40.337456, 25.475780>,  <28.387939, 40.651276, 25.630342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193962, 40.337456, 25.475780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010232, -0.436713, 0.899543,
		-0.874486, 0.440180, 0.203753,
		-0.484942, -0.784553, -0.386404,
		28.048479, 40.102089, 25.359859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856030, 40.467918, 26.079460>,  <28.387939, 40.651276, 25.630342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856030, 40.467918, 26.079460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.923012, 40.132622, 25.871878>,  <27.963202, 39.931446, 25.747328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.923012, 40.132622, 25.871878>,  <27.856030, 40.467918, 26.079460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923012, 40.132622, 25.871878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001003, -0.526532, 0.850155,
		-0.985879, -0.141844, -0.089013,
		0.167457, -0.838239, -0.518955,
		27.973249, 39.881149, 25.716190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436563, 39.937210, 26.482498>,  <27.856030, 40.467918, 26.079460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436563, 39.937210, 26.482498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.687103, 39.731129, 26.248487>,  <27.837427, 39.607479, 26.108082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.687103, 39.731129, 26.248487>,  <27.436563, 39.937210, 26.482498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687103, 39.731129, 26.248487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358073, -0.476471, 0.802969,
		-0.692437, -0.712421, -0.113958,
		0.626350, -0.515201, -0.585025,
		27.875008, 39.576569, 26.072981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309700, 39.326477, 26.539526>,  <27.436563, 39.937210, 26.482498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309700, 39.326477, 26.539526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.689423, 39.291019, 26.418888>,  <27.917257, 39.269745, 26.346506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.689423, 39.291019, 26.418888>,  <27.309700, 39.326477, 26.539526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689423, 39.291019, 26.418888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210435, -0.533531, 0.819183,
		-0.233521, -0.841123, -0.487832,
		0.949308, -0.088640, -0.301593,
		27.974215, 39.264427, 26.328409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494793, 38.624584, 26.756771>,  <27.309700, 39.326477, 26.539526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494793, 38.624584, 26.756771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.856165, 38.778969, 26.682102>,  <28.072989, 38.871601, 26.637300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.856165, 38.778969, 26.682102>,  <27.494793, 38.624584, 26.756771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856165, 38.778969, 26.682102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398304, -0.594464, 0.698546,
		0.158640, -0.705441, -0.690787,
		0.903430, 0.385961, -0.186674,
		28.127193, 38.894756, 26.626101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089434, 38.032215, 26.690010>,  <27.494793, 38.624584, 26.756771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089434, 38.032215, 26.690010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.291861, 38.368263, 26.768076>,  <28.413317, 38.569893, 26.814917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.291861, 38.368263, 26.768076>,  <28.089434, 38.032215, 26.690010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291861, 38.368263, 26.768076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562380, -0.492980, 0.663852,
		0.653930, -0.226196, -0.721950,
		0.506068, 0.840122, 0.195166,
		28.443682, 38.620300, 26.826626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808546, 37.854294, 26.855236>,  <28.089434, 38.032215, 26.690010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808546, 37.854294, 26.855236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.829987, 38.231167, 26.987555>,  <28.842852, 38.457291, 27.066946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.829987, 38.231167, 26.987555>,  <28.808546, 37.854294, 26.855236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829987, 38.231167, 26.987555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760007, -0.253368, 0.598494,
		0.647701, 0.219326, -0.729643,
		0.053603, 0.942179, 0.330796,
		28.846067, 38.513821, 27.086794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510958, 37.997219, 26.842913>,  <28.808546, 37.854294, 26.855236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510958, 37.997219, 26.842913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.347559, 38.243130, 27.112780>,  <29.249519, 38.390675, 27.274700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.347559, 38.243130, 27.112780>,  <29.510958, 37.997219, 26.842913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347559, 38.243130, 27.112780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783664, -0.142742, 0.604563,
		0.467975, 0.775677, -0.423467,
		-0.408499, 0.614776, 0.674670,
		29.225010, 38.427563, 27.315180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062492, 38.322922, 27.130703>,  <29.510958, 37.997219, 26.842913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062492, 38.322922, 27.130703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.749781, 38.349030, 27.378756>,  <29.562153, 38.364693, 27.527586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.749781, 38.349030, 27.378756>,  <30.062492, 38.322922, 27.130703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749781, 38.349030, 27.378756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573411, -0.315486, 0.756088,
		0.244992, 0.946683, 0.209214,
		-0.781779, 0.065270, 0.620130,
		29.515247, 38.368610, 27.564795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326929, 38.782303, 27.660975>,  <30.062492, 38.322922, 27.130703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326929, 38.782303, 27.660975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.020134, 38.556446, 27.782900>,  <29.836058, 38.420933, 27.856054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.020134, 38.556446, 27.782900>,  <30.326929, 38.782303, 27.660975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020134, 38.556446, 27.782900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555682, -0.346951, 0.755541,
		-0.320854, 0.748870, 0.579867,
		-0.766988, -0.564640, 0.304813,
		29.790037, 38.387054, 27.874344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935005, 39.031757, 28.305105>,  <30.326929, 38.782303, 27.660975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935005, 39.031757, 28.305105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.916889, 38.635826, 28.251160>,  <29.906019, 38.398266, 28.218792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.916889, 38.635826, 28.251160>,  <29.935005, 39.031757, 28.305105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916889, 38.635826, 28.251160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586072, -0.135656, 0.798822,
		-0.808992, -0.042863, 0.586255,
		-0.045289, -0.989828, -0.134865,
		29.903303, 38.338879, 28.210701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.335608, 41.648945, 21.506535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230909, 41.264492, 21.541656>,  <27.168091, 41.033821, 21.562729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230909, 41.264492, 21.541656>,  <27.335608, 41.648945, 21.506535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230909, 41.264492, 21.541656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015234, 0.086849, 0.996105,
		-0.965017, 0.262063, -0.008090,
		-0.261745, -0.961135, 0.087803,
		27.152386, 40.976151, 21.567997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758980, 41.618950, 21.927261>,  <27.335608, 41.648945, 21.506535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758980, 41.618950, 21.927261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924067, 41.255222, 21.948475>,  <27.023119, 41.036987, 21.961203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924067, 41.255222, 21.948475>,  <26.758980, 41.618950, 21.927261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924067, 41.255222, 21.948475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070232, 0.026282, 0.997184,
		-0.908148, -0.415279, -0.053016,
		0.412716, -0.909314, 0.053034,
		27.047882, 40.982430, 21.964386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379807, 41.322445, 22.464788>,  <26.758980, 41.618950, 21.927261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379807, 41.322445, 22.464788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689325, 41.070084, 22.442188>,  <26.875038, 40.918667, 22.428629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689325, 41.070084, 22.442188>,  <26.379807, 41.322445, 22.464788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689325, 41.070084, 22.442188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044669, -0.143324, 0.988667,
		-0.631854, -0.762506, -0.139086,
		0.773799, -0.630906, -0.056499,
		26.921465, 40.880814, 22.425238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170546, 40.734882, 22.833794>,  <26.379807, 41.322445, 22.464788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170546, 40.734882, 22.833794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569868, 40.712650, 22.826885>,  <26.809462, 40.699310, 22.822741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569868, 40.712650, 22.826885>,  <26.170546, 40.734882, 22.833794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569868, 40.712650, 22.826885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008882, -0.147747, 0.988985,
		-0.057522, -0.987462, -0.147003,
		0.998305, -0.055583, -0.017269,
		26.869360, 40.695976, 22.821705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346889, 40.196533, 23.321978>,  <26.170546, 40.734882, 22.833794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346889, 40.196533, 23.321978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710623, 40.351475, 23.261221>,  <26.928862, 40.444439, 23.224768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710623, 40.351475, 23.261221>,  <26.346889, 40.196533, 23.321978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710623, 40.351475, 23.261221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249136, -0.214532, 0.944408,
		0.333236, -0.896622, -0.291585,
		0.909332, 0.387355, -0.151891,
		26.983423, 40.467682, 23.215654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942486, 39.646038, 23.279125>,  <26.346889, 40.196533, 23.321978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942486, 39.646038, 23.279125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042906, 40.010761, 23.409101>,  <27.103157, 40.229595, 23.487087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042906, 40.010761, 23.409101>,  <26.942486, 39.646038, 23.279125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042906, 40.010761, 23.409101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334493, -0.396730, 0.854822,
		0.908344, -0.105911, -0.404591,
		0.251048, 0.911805, 0.324941,
		27.118221, 40.284302, 23.506584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688574, 39.525291, 23.590147>,  <26.942486, 39.646038, 23.279125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688574, 39.525291, 23.590147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625095, 39.904148, 23.701675>,  <27.587008, 40.131462, 23.768593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625095, 39.904148, 23.701675>,  <27.688574, 39.525291, 23.590147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625095, 39.904148, 23.701675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575819, -0.140614, 0.805395,
		0.802028, 0.288365, -0.523065,
		-0.158698, 0.947139, 0.278823,
		27.577486, 40.188290, 23.785322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337212, 39.791008, 23.822329>,  <27.688574, 39.525291, 23.590147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337212, 39.791008, 23.822329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062086, 40.021973, 23.998287>,  <27.897011, 40.160553, 24.103863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062086, 40.021973, 23.998287>,  <28.337212, 39.791008, 23.822329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062086, 40.021973, 23.998287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472357, -0.104118, 0.875236,
		0.551175, 0.809785, -0.201132,
		-0.687812, 0.577415, 0.439895,
		27.855743, 40.195198, 24.130255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689169, 40.068150, 24.436172>,  <28.337212, 39.791008, 23.822329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689169, 40.068150, 24.436172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298193, 40.127274, 24.496527>,  <28.063608, 40.162746, 24.532740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298193, 40.127274, 24.496527>,  <28.689169, 40.068150, 24.436172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298193, 40.127274, 24.496527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136563, -0.102729, 0.985290,
		0.161132, 0.983667, 0.080227,
		-0.977439, 0.147806, 0.150886,
		28.004961, 40.171616, 24.541792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952606, 40.654087, 24.246151>,  <28.689169, 40.068150, 24.436172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952606, 40.654087, 24.246151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351971, 40.653858, 24.268675>,  <29.591589, 40.653721, 24.282190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351971, 40.653858, 24.268675>,  <28.952606, 40.654087, 24.246151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351971, 40.653858, 24.268675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052801, 0.357204, -0.932533,
		-0.019577, 0.934026, 0.356668,
		0.998413, -0.000576, 0.056311,
		29.651495, 40.653687, 24.285568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088665, 41.204956, 23.914885>,  <28.952606, 40.654087, 24.246151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088665, 41.204956, 23.914885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419525, 40.980679, 23.899654>,  <29.618040, 40.846111, 23.890516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419525, 40.980679, 23.899654>,  <29.088665, 41.204956, 23.914885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419525, 40.980679, 23.899654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103468, 0.218534, -0.970328,
		0.552377, 0.798665, 0.238774,
		0.827148, -0.560693, -0.038077,
		29.667669, 40.812469, 23.888231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549749, 41.633106, 23.614286>,  <29.088665, 41.204956, 23.914885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549749, 41.633106, 23.614286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664560, 41.252499, 23.570061>,  <29.733446, 41.024136, 23.543526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664560, 41.252499, 23.570061>,  <29.549749, 41.633106, 23.614286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664560, 41.252499, 23.570061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019100, 0.109714, -0.993780,
		0.957732, 0.287353, 0.013317,
		0.287027, -0.951520, -0.110565,
		29.750668, 40.967041, 23.536892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109760, 41.691166, 23.148352>,  <29.549749, 41.633106, 23.614286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109760, 41.691166, 23.148352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972569, 41.321407, 23.081596>,  <29.890253, 41.099552, 23.041544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972569, 41.321407, 23.081596>,  <30.109760, 41.691166, 23.148352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972569, 41.321407, 23.081596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202331, 0.100791, -0.974117,
		0.917293, -0.367869, 0.152465,
		-0.342980, -0.924399, -0.166886,
		29.869675, 41.044086, 23.031530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631292, 41.409744, 22.707195>,  <30.109760, 41.691166, 23.148352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631292, 41.409744, 22.707195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284868, 41.217197, 22.653193>,  <30.077013, 41.101669, 22.620790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284868, 41.217197, 22.653193>,  <30.631292, 41.409744, 22.707195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284868, 41.217197, 22.653193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100101, 0.097613, -0.990178,
		0.489817, -0.871067, -0.036353,
		-0.866059, -0.481367, -0.135007,
		30.025051, 41.072788, 22.612690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745113, 40.942234, 22.087334>,  <30.631292, 41.409744, 22.707195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745113, 40.942234, 22.087334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346672, 40.942646, 22.122604>,  <30.107607, 40.942894, 22.143766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346672, 40.942646, 22.122604>,  <30.745113, 40.942234, 22.087334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346672, 40.942646, 22.122604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088135, 0.021494, -0.995877,
		-0.002935, -0.999768, -0.021318,
		-0.996104, 0.001044, 0.088178,
		30.047840, 40.942955, 22.149057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612143, 40.532917, 21.557369>,  <30.745113, 40.942234, 22.087334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612143, 40.532917, 21.557369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255980, 40.700420, 21.628714>,  <30.042282, 40.800922, 21.671520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255980, 40.700420, 21.628714>,  <30.612143, 40.532917, 21.557369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255980, 40.700420, 21.628714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153319, 0.093020, -0.983789,
		-0.428561, -0.903321, -0.018622,
		-0.890410, 0.418758, 0.178361,
		29.988857, 40.826046, 21.682222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016829, 40.085667, 21.306192>,  <30.612143, 40.532917, 21.557369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016829, 40.085667, 21.306192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914112, 40.472233, 21.302067>,  <29.852482, 40.704170, 21.299591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914112, 40.472233, 21.302067>,  <30.016829, 40.085667, 21.306192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914112, 40.472233, 21.302067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235427, -0.072899, -0.969154,
		-0.937353, -0.246444, 0.246239,
		-0.256793, 0.966411, -0.010313,
		29.837074, 40.762157, 21.298973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445065, 39.991421, 20.914593>,  <30.016829, 40.085667, 21.306192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445065, 39.991421, 20.914593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517008, 40.384895, 20.912796>,  <29.560173, 40.620979, 20.911718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517008, 40.384895, 20.912796>,  <29.445065, 39.991421, 20.914593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517008, 40.384895, 20.912796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343686, 0.058559, -0.937257,
		-0.921700, 0.170118, 0.348610,
		0.179859, 0.983682, -0.004493,
		29.570965, 40.680000, 20.911448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845493, 40.202293, 20.470566>,  <29.445065, 39.991421, 20.914593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845493, 40.202293, 20.470566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090805, 40.517513, 20.491953>,  <29.237993, 40.706646, 20.504786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090805, 40.517513, 20.491953>,  <28.845493, 40.202293, 20.470566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090805, 40.517513, 20.491953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201185, 0.221307, -0.954226,
		-0.763814, 0.574452, 0.294268,
		0.613281, 0.788053, 0.053466,
		29.274790, 40.753929, 20.507994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575243, 40.749897, 20.229120>,  <28.845493, 40.202293, 20.470566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575243, 40.749897, 20.229120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960197, 40.854362, 20.199162>,  <29.191170, 40.917042, 20.181187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960197, 40.854362, 20.199162>,  <28.575243, 40.749897, 20.229120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960197, 40.854362, 20.199162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181426, 0.412542, -0.892689,
		-0.202239, 0.872698, 0.444406,
		0.962384, 0.261164, -0.074898,
		29.248913, 40.932713, 20.176693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567562, 41.423401, 20.188795>,  <28.575243, 40.749897, 20.229120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567562, 41.423401, 20.188795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915598, 41.317696, 20.022371>,  <29.124420, 41.254272, 19.922518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915598, 41.317696, 20.022371>,  <28.567562, 41.423401, 20.188795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915598, 41.317696, 20.022371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183449, 0.609846, -0.770996,
		0.457479, 0.747162, 0.482143,
		0.870092, -0.264266, -0.416057,
		29.176626, 41.238415, 19.897554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860933, 42.068928, 19.934248>,  <28.567562, 41.423401, 20.188795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860933, 42.068928, 19.934248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059431, 41.782997, 19.737162>,  <29.178530, 41.611439, 19.618910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059431, 41.782997, 19.737162>,  <28.860933, 42.068928, 19.934248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059431, 41.782997, 19.737162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057823, 0.539052, -0.840285,
		0.866254, 0.445479, 0.226170,
		0.496247, -0.714823, -0.492714,
		29.208305, 41.568550, 19.589348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500977, 42.361191, 19.646429>,  <28.860933, 42.068928, 19.934248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500977, 42.361191, 19.646429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393318, 42.040119, 19.433540>,  <29.328724, 41.847477, 19.305807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393318, 42.040119, 19.433540>,  <29.500977, 42.361191, 19.646429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393318, 42.040119, 19.433540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038885, 0.543106, -0.838764,
		0.962314, -0.246446, -0.114963,
		-0.269147, -0.802683, -0.532221,
		29.312574, 41.799313, 19.273874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.716400, 33.603737, 18.808323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554256, 33.922039, 18.988308>,  <30.456970, 34.113018, 19.096298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554256, 33.922039, 18.988308>,  <30.716400, 33.603737, 18.808323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554256, 33.922039, 18.988308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387305, -0.296359, 0.873021,
		0.828057, 0.528159, -0.188066,
		-0.405359, 0.795751, 0.449961,
		30.432650, 34.160763, 19.123297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010056, 33.679043, 19.388824>,  <30.716400, 33.603737, 18.808323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010056, 33.679043, 19.388824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.737942, 33.954880, 19.488165>,  <30.574673, 34.120380, 19.547770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.737942, 33.954880, 19.488165>,  <31.010056, 33.679043, 19.388824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737942, 33.954880, 19.488165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320728, -0.024603, 0.946852,
		0.659047, 0.723784, -0.204433,
		-0.680287, 0.689588, 0.248352,
		30.533855, 34.161755, 19.562670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306293, 34.187141, 19.701355>,  <31.010056, 33.679043, 19.388824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306293, 34.187141, 19.701355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.932362, 34.198990, 19.842897>,  <30.708002, 34.206100, 19.927822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.932362, 34.198990, 19.842897>,  <31.306293, 34.187141, 19.701355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932362, 34.198990, 19.842897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351179, -0.070396, 0.933658,
		0.052569, 0.997079, 0.055405,
		-0.934831, 0.029624, 0.353854,
		30.651913, 34.207878, 19.949053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428467, 34.577629, 20.338976>,  <31.306293, 34.187141, 19.701355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428467, 34.577629, 20.338976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.047634, 34.463894, 20.384039>,  <30.819136, 34.395653, 20.411077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.047634, 34.463894, 20.384039>,  <31.428467, 34.577629, 20.338976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047634, 34.463894, 20.384039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122322, -0.016399, 0.992355,
		-0.280321, 0.958583, 0.050395,
		-0.952081, -0.284342, 0.112659,
		30.762011, 34.378590, 20.417837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077337, 35.082718, 20.728582>,  <31.428467, 34.577629, 20.338976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077337, 35.082718, 20.728582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.895153, 34.729767, 20.775835>,  <30.785843, 34.517994, 20.804188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.895153, 34.729767, 20.775835>,  <31.077337, 35.082718, 20.728582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895153, 34.729767, 20.775835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237193, 0.007623, 0.971433,
		-0.858075, 0.470472, 0.205823,
		-0.455463, -0.882382, 0.118134,
		30.758514, 34.465054, 20.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712858, 35.240513, 21.254366>,  <31.077337, 35.082718, 20.728582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712858, 35.240513, 21.254366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.703596, 34.842316, 21.217598>,  <30.698040, 34.603397, 21.195538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.703596, 34.842316, 21.217598>,  <30.712858, 35.240513, 21.254366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703596, 34.842316, 21.217598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237302, -0.094787, 0.966801,
		-0.971160, 0.000572, 0.238428,
		-0.023153, -0.995497, -0.091918,
		30.696650, 34.543667, 21.190023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131063, 34.947773, 21.638205>,  <30.712858, 35.240513, 21.254366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131063, 34.947773, 21.638205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.416872, 34.668259, 21.624592>,  <30.588356, 34.500549, 21.616425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.416872, 34.668259, 21.624592>,  <30.131063, 34.947773, 21.638205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416872, 34.668259, 21.624592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031325, -0.016640, 0.999371,
		-0.698914, -0.715136, 0.010000,
		0.714520, -0.698787, -0.034031,
		30.631227, 34.458622, 21.614382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869751, 34.498447, 22.006138>,  <30.131063, 34.947773, 21.638205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869751, 34.498447, 22.006138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.261486, 34.417854, 22.013071>,  <30.496527, 34.369499, 22.017231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.261486, 34.417854, 22.013071>,  <29.869751, 34.498447, 22.006138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261486, 34.417854, 22.013071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016791, 0.004389, 0.999849,
		-0.201530, -0.979482, 0.000915,
		0.979338, -0.201484, 0.017331,
		30.555288, 34.357410, 22.018270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935272, 34.084885, 22.567991>,  <29.869751, 34.498447, 22.006138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935272, 34.084885, 22.567991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.309500, 34.210777, 22.503922>,  <30.534037, 34.286312, 22.465479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.309500, 34.210777, 22.503922>,  <29.935272, 34.084885, 22.567991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309500, 34.210777, 22.503922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181547, -0.039596, 0.982585,
		0.302908, -0.948354, -0.094183,
		0.935568, 0.314732, -0.160177,
		30.590170, 34.305195, 22.455868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416927, 33.666042, 22.952652>,  <29.935272, 34.084885, 22.567991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416927, 33.666042, 22.952652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.667105, 33.971027, 22.886360>,  <30.817211, 34.154018, 22.846584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.667105, 33.971027, 22.886360>,  <30.416927, 33.666042, 22.952652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667105, 33.971027, 22.886360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159463, 0.083012, 0.983708,
		0.763800, -0.641683, -0.069666,
		0.625445, 0.762465, -0.165729,
		30.854738, 34.199768, 22.836641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928717, 33.511833, 23.494776>,  <30.416927, 33.666042, 22.952652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928717, 33.511833, 23.494776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.989532, 33.887390, 23.371250>,  <31.026022, 34.112724, 23.297134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.989532, 33.887390, 23.371250>,  <30.928717, 33.511833, 23.494776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989532, 33.887390, 23.371250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405812, 0.225595, 0.885677,
		0.901222, -0.259976, -0.346715,
		0.152037, 0.938893, -0.308812,
		31.035143, 34.169060, 23.278606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687923, 33.654308, 23.500116>,  <30.928717, 33.511833, 23.494776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687923, 33.654308, 23.500116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.454823, 33.977798, 23.532034>,  <31.314962, 34.171890, 23.551186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.454823, 33.977798, 23.532034>,  <31.687923, 33.654308, 23.500116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454823, 33.977798, 23.532034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185984, 0.037138, 0.981851,
		0.791082, 0.587015, -0.172052,
		-0.582751, 0.808724, 0.079796,
		31.279997, 34.220417, 23.555973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015514, 33.994694, 23.960064>,  <31.687923, 33.654308, 23.500116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015514, 33.994694, 23.960064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.673943, 34.200634, 23.990366>,  <31.469000, 34.324196, 24.008547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.673943, 34.200634, 23.990366>,  <32.015514, 33.994694, 23.960064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673943, 34.200634, 23.990366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172291, 0.142340, 0.974708,
		0.491041, 0.845383, -0.210252,
		-0.853929, 0.514846, 0.075757,
		31.417765, 34.355087, 24.013092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163780, 34.602371, 24.365334>,  <32.015514, 33.994694, 23.960064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163780, 34.602371, 24.365334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.766430, 34.561218, 24.385845>,  <31.528021, 34.536526, 24.398151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.766430, 34.561218, 24.385845>,  <32.163780, 34.602371, 24.365334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766430, 34.561218, 24.385845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040998, 0.099672, 0.994175,
		-0.107393, 0.989687, -0.094794,
		-0.993371, -0.102881, 0.051279,
		31.468418, 34.530354, 24.401230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557758, 35.099342, 23.930735>,  <32.163780, 34.602371, 24.365334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557758, 35.099342, 23.930735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.887165, 35.326084, 23.921848>,  <33.084808, 35.462128, 23.916517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.887165, 35.326084, 23.921848>,  <32.557758, 35.099342, 23.930735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887165, 35.326084, 23.921848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064668, 0.054901, -0.996396,
		-0.563592, 0.821986, 0.081869,
		0.823518, 0.566855, -0.022214,
		33.134220, 35.496140, 23.915184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391346, 35.793941, 23.549452>,  <32.557758, 35.099342, 23.930735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391346, 35.793941, 23.549452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.787560, 35.742245, 23.530968>,  <33.025288, 35.711227, 23.519876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.787560, 35.742245, 23.530968>,  <32.391346, 35.793941, 23.549452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787560, 35.742245, 23.530968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033512, 0.098761, -0.994547,
		0.133102, 0.986683, 0.093495,
		0.990536, -0.129243, -0.046211,
		33.084721, 35.703472, 23.517105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744446, 36.353165, 23.112194>,  <32.391346, 35.793941, 23.549452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744446, 36.353165, 23.112194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.002003, 36.047150, 23.116432>,  <33.156536, 35.863541, 23.118975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.002003, 36.047150, 23.116432>,  <32.744446, 36.353165, 23.112194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002003, 36.047150, 23.116432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156526, 0.118160, -0.980580,
		0.748932, 0.633049, 0.195831,
		0.643894, -0.765041, 0.010595,
		33.195171, 35.817638, 23.119610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365200, 36.566269, 22.716288>,  <32.744446, 36.353165, 23.112194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365200, 36.566269, 22.716288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.419155, 36.170479, 22.737226>,  <33.451527, 35.933002, 22.749790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.419155, 36.170479, 22.737226>,  <33.365200, 36.566269, 22.716288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419155, 36.170479, 22.737226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342549, -0.003005, -0.939495,
		0.929767, 0.144654, 0.338540,
		0.134884, -0.989478, 0.052345,
		33.459621, 35.873634, 22.752930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112877, 36.438957, 22.548800>,  <33.365200, 36.566269, 22.716288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112877, 36.438957, 22.548800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901649, 36.107773, 22.473295>,  <33.774914, 35.909061, 22.427994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.901649, 36.107773, 22.473295>,  <34.112877, 36.438957, 22.548800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901649, 36.107773, 22.473295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257813, 0.055480, -0.964600,
		0.809123, -0.558037, 0.184162,
		-0.528065, -0.827960, -0.188760,
		33.743229, 35.859386, 22.416668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449974, 36.034161, 21.967760>,  <34.112877, 36.438957, 22.548800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449974, 36.034161, 21.967760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090302, 35.859447, 21.957222>,  <33.874496, 35.754620, 21.950899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090302, 35.859447, 21.957222>,  <34.449974, 36.034161, 21.967760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090302, 35.859447, 21.957222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007000, 0.074562, -0.997192,
		0.437522, -0.896471, -0.070102,
		-0.899180, -0.436784, -0.026347,
		33.820549, 35.728413, 21.949318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398010, 35.654800, 21.329103>,  <34.449974, 36.034161, 21.967760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398010, 35.654800, 21.329103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.008904, 35.655746, 21.421808>,  <33.775440, 35.656315, 21.477430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.008904, 35.655746, 21.421808>,  <34.398010, 35.654800, 21.329103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008904, 35.655746, 21.421808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223044, 0.262260, -0.938867,
		-0.063005, -0.964994, -0.254591,
		-0.972770, 0.002368, 0.231760,
		33.717072, 35.656456, 21.491337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048874, 35.176971, 20.868483>,  <34.398010, 35.654800, 21.329103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048874, 35.176971, 20.868483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752777, 35.418697, 20.986368>,  <33.575119, 35.563732, 21.057100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752777, 35.418697, 20.986368>,  <34.048874, 35.176971, 20.868483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752777, 35.418697, 20.986368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242056, 0.169412, -0.955358,
		-0.627261, -0.778530, 0.020871,
		-0.740238, 0.604310, 0.294714,
		33.530704, 35.599991, 21.074781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500854, 34.987118, 20.423813>,  <34.048874, 35.176971, 20.868483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500854, 34.987118, 20.423813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.380905, 35.338322, 20.573036>,  <33.308937, 35.549046, 20.662571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.380905, 35.338322, 20.573036>,  <33.500854, 34.987118, 20.423813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380905, 35.338322, 20.573036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251334, 0.304529, -0.918746,
		-0.920277, -0.369266, 0.129355,
		-0.299869, 0.878012, 0.373060,
		33.290943, 35.601727, 20.684954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937229, 35.242062, 19.991428>,  <33.500854, 34.987118, 20.423813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937229, 35.242062, 19.991428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045837, 35.581722, 20.172636>,  <33.111000, 35.785519, 20.281361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.045837, 35.581722, 20.172636>,  <32.937229, 35.242062, 19.991428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045837, 35.581722, 20.172636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207253, 0.511244, -0.834072,
		-0.939853, 0.132576, 0.314801,
		0.271518, 0.849148, 0.453018,
		33.127293, 35.836468, 20.308542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290543, 35.688152, 20.142046>,  <32.937229, 35.242062, 19.991428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290543, 35.688152, 20.142046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.627697, 35.899422, 20.100903>,  <32.829990, 36.026184, 20.076216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.627697, 35.899422, 20.100903>,  <32.290543, 35.688152, 20.142046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627697, 35.899422, 20.100903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383990, 0.456488, -0.802602,
		-0.376960, 0.715996, 0.587580,
		0.842883, 0.528174, -0.102858,
		32.880562, 36.057873, 20.070045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096245, 36.350742, 20.017357>,  <32.290543, 35.688152, 20.142046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096245, 36.350742, 20.017357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.471695, 36.328705, 19.881153>,  <32.696964, 36.315483, 19.799431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.471695, 36.328705, 19.881153>,  <32.096245, 36.350742, 20.017357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471695, 36.328705, 19.881153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262425, 0.526597, -0.808597,
		0.223862, 0.848328, 0.479819,
		0.938626, -0.055098, -0.340507,
		32.753284, 36.312176, 19.779001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250252, 37.061924, 19.892981>,  <32.096245, 36.350742, 20.017357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250252, 37.061924, 19.892981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.478062, 36.813538, 19.677557>,  <32.614746, 36.664505, 19.548302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.478062, 36.813538, 19.677557>,  <32.250252, 37.061924, 19.892981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478062, 36.813538, 19.677557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308160, 0.446114, -0.840250,
		0.762025, 0.644503, 0.062715,
		0.569521, -0.620965, -0.538560,
		32.648918, 36.627247, 19.515989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447453, 37.531303, 19.376282>,  <32.250252, 37.061924, 19.892981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447453, 37.531303, 19.376282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.544849, 37.174316, 19.224382>,  <32.603287, 36.960125, 19.133242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.544849, 37.174316, 19.224382>,  <32.447453, 37.531303, 19.376282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544849, 37.174316, 19.224382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412243, 0.259179, -0.873432,
		0.877935, 0.369219, -0.304807,
		0.243488, -0.892471, -0.379750,
		32.617897, 36.906574, 19.110458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881836, 38.189060, 19.005373>,  <32.447453, 37.531303, 19.376282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881836, 38.189060, 19.005373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.885769, 38.588150, 18.978710>,  <32.888126, 38.827606, 18.962713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.885769, 38.588150, 18.978710>,  <32.881836, 38.189060, 19.005373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885769, 38.588150, 18.978710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219811, 0.062873, 0.973514,
		0.975493, -0.024219, -0.218694,
		0.009828, 0.997728, -0.066656,
		32.888718, 38.887466, 18.958714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501251, 38.505123, 19.391626>,  <32.881836, 38.189060, 19.005373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501251, 38.505123, 19.391626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.267216, 38.825478, 19.340643>,  <33.126793, 39.017693, 19.310053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.267216, 38.825478, 19.340643>,  <33.501251, 38.505123, 19.391626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267216, 38.825478, 19.340643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206730, 0.299274, 0.931503,
		0.784177, 0.518663, -0.340669,
		-0.585089, 0.800890, -0.127461,
		33.091690, 39.065746, 19.302404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902939, 39.217014, 19.454329>,  <33.501251, 38.505123, 19.391626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902939, 39.217014, 19.454329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.518158, 39.252731, 19.557610>,  <33.287289, 39.274162, 19.619577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.518158, 39.252731, 19.557610>,  <33.902939, 39.217014, 19.454329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518158, 39.252731, 19.557610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270248, 0.172302, 0.947248,
		0.040094, 0.980989, -0.189878,
		-0.961956, 0.089293, 0.258202,
		33.229572, 39.279518, 19.635071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906563, 39.535904, 20.007887>,  <33.902939, 39.217014, 19.454329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906563, 39.535904, 20.007887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.516911, 39.450275, 20.036865>,  <33.283119, 39.398899, 20.054253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.516911, 39.450275, 20.036865>,  <33.906563, 39.535904, 20.007887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516911, 39.450275, 20.036865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051976, 0.099747, 0.993654,
		-0.219939, 0.971712, -0.086040,
		-0.974128, -0.214072, 0.072444,
		33.224670, 39.386055, 20.058598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644920, 40.087257, 20.372452>,  <33.906563, 39.535904, 20.007887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644920, 40.087257, 20.372452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.376743, 39.792084, 20.403316>,  <33.215836, 39.614979, 20.421835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.376743, 39.792084, 20.403316>,  <33.644920, 40.087257, 20.372452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376743, 39.792084, 20.403316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067819, 0.164511, 0.984041,
		-0.738853, 0.654512, -0.160342,
		-0.670445, -0.737936, 0.077161,
		33.175610, 39.570702, 20.426464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228271, 40.346367, 20.916687>,  <33.644920, 40.087257, 20.372452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228271, 40.346367, 20.916687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.102531, 39.966858, 20.903927>,  <33.027088, 39.739155, 20.896271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.102531, 39.966858, 20.903927>,  <33.228271, 40.346367, 20.916687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102531, 39.966858, 20.903927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019253, -0.027225, 0.999444,
		-0.949111, 0.314792, -0.009708,
		-0.314352, -0.948770, -0.031900,
		33.008224, 39.682228, 20.894358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727535, 40.226570, 21.394186>,  <33.228271, 40.346367, 20.916687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727535, 40.226570, 21.394186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.905025, 39.870686, 21.351254>,  <33.011520, 39.657154, 21.325493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.905025, 39.870686, 21.351254>,  <32.727535, 40.226570, 21.394186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905025, 39.870686, 21.351254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219382, -0.223968, 0.949584,
		-0.868895, -0.397809, -0.294567,
		0.443727, -0.889711, -0.107332,
		33.038143, 39.603771, 21.319054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237888, 39.733627, 21.638950>,  <32.727535, 40.226570, 21.394186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237888, 39.733627, 21.638950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.606861, 39.581009, 21.662771>,  <32.828243, 39.489437, 21.677063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.606861, 39.581009, 21.662771>,  <32.237888, 39.733627, 21.638950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606861, 39.581009, 21.662771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120480, -0.137829, 0.983101,
		-0.366889, -0.914017, -0.173106,
		0.922430, -0.381545, 0.059552,
		32.883591, 39.466545, 21.680637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329548, 39.071968, 21.987411>,  <32.237888, 39.733627, 21.638950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329548, 39.071968, 21.987411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.670753, 39.278820, 22.015541>,  <32.875477, 39.402931, 22.032419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.670753, 39.278820, 22.015541>,  <32.329548, 39.071968, 21.987411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670753, 39.278820, 22.015541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048219, -0.056082, 0.997261,
		0.519659, -0.854067, -0.022903,
		0.853012, 0.517132, 0.070326,
		32.926659, 39.433960, 22.036638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752785, 38.743988, 22.581728>,  <32.329548, 39.071968, 21.987411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752785, 38.743988, 22.581728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.889709, 39.118183, 22.546665>,  <32.971867, 39.342701, 22.525627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.889709, 39.118183, 22.546665>,  <32.752785, 38.743988, 22.581728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889709, 39.118183, 22.546665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099801, 0.056561, 0.993398,
		0.934270, -0.348802, -0.074001,
		0.342314, 0.935488, -0.087655,
		32.992405, 39.398830, 22.520369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445274, 38.826920, 22.864708>,  <32.752785, 38.743988, 22.581728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445274, 38.826920, 22.864708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.294388, 39.197369, 22.864670>,  <33.203857, 39.419640, 22.864647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.294388, 39.197369, 22.864670>,  <33.445274, 38.826920, 22.864708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294388, 39.197369, 22.864670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245006, 0.099890, 0.964362,
		0.893130, 0.363749, -0.264587,
		-0.377216, 0.926125, -0.000094,
		33.181225, 39.475204, 22.864641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936714, 39.341007, 23.080647>,  <33.445274, 38.826920, 22.864708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936714, 39.341007, 23.080647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589878, 39.526188, 23.154209>,  <33.381775, 39.637295, 23.198347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.589878, 39.526188, 23.154209>,  <33.936714, 39.341007, 23.080647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589878, 39.526188, 23.154209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305321, 0.202203, 0.930534,
		0.393606, 0.863012, -0.316678,
		-0.867095, 0.462952, 0.183907,
		33.329750, 39.665073, 23.209381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091297, 39.870445, 23.503904>,  <33.936714, 39.341007, 23.080647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091297, 39.870445, 23.503904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699821, 39.882393, 23.585176>,  <33.464935, 39.889561, 23.633940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699821, 39.882393, 23.585176>,  <34.091297, 39.870445, 23.503904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699821, 39.882393, 23.585176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203206, -0.002228, 0.979133,
		0.029695, 0.999551, -0.003889,
		-0.978686, 0.029865, 0.203181,
		33.406216, 39.891354, 23.646132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909985, 40.487885, 24.063484>,  <34.091297, 39.870445, 23.503904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909985, 40.487885, 24.063484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.601795, 40.233246, 24.076916>,  <33.416882, 40.080463, 24.084974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.601795, 40.233246, 24.076916>,  <33.909985, 40.487885, 24.063484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601795, 40.233246, 24.076916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051954, -0.010207, 0.998597,
		-0.635357, 0.771133, 0.040938,
		-0.770469, -0.636593, 0.033579,
		33.370655, 40.042267, 24.086988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.108936, 42.426216, 19.155085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.848751, 42.167240, 18.996233>,  <29.692640, 42.011852, 18.900921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.848751, 42.167240, 18.996233>,  <30.108936, 42.426216, 19.155085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848751, 42.167240, 18.996233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528443, -0.010203, -0.848908,
		0.545568, -0.762045, 0.348773,
		-0.650465, -0.647444, -0.397131,
		29.653612, 41.973007, 18.877094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515841, 42.102673, 18.726227>,  <30.108936, 42.426216, 19.155085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515841, 42.102673, 18.726227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.158014, 41.970886, 18.605427>,  <29.943317, 41.891815, 18.532946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.158014, 41.970886, 18.605427>,  <30.515841, 42.102673, 18.726227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158014, 41.970886, 18.605427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335780, -0.049481, -0.940640,
		0.294962, -0.942871, 0.154891,
		-0.894566, -0.329463, -0.302002,
		29.889645, 41.872047, 18.514826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629684, 41.539604, 18.217371>,  <30.515841, 42.102673, 18.726227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629684, 41.539604, 18.217371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.250267, 41.641953, 18.142757>,  <30.022617, 41.703362, 18.097988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.250267, 41.641953, 18.142757>,  <30.629684, 41.539604, 18.217371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250267, 41.641953, 18.142757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149880, -0.156123, -0.976300,
		-0.278931, -0.954020, 0.109739,
		-0.948543, 0.255873, -0.186536,
		29.965704, 41.718716, 18.086796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325518, 40.944515, 17.910696>,  <30.629684, 41.539604, 18.217371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325518, 40.944515, 17.910696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.144985, 41.283302, 17.798304>,  <30.036667, 41.486572, 17.730867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.144985, 41.283302, 17.798304>,  <30.325518, 40.944515, 17.910696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144985, 41.283302, 17.798304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071757, -0.279408, -0.957487,
		-0.889468, -0.452304, 0.065329,
		-0.451329, 0.846966, -0.280981,
		30.009586, 41.537392, 17.714010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756222, 40.747665, 17.428894>,  <30.325518, 40.944515, 17.910696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756222, 40.747665, 17.428894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815260, 41.133080, 17.339617>,  <29.850683, 41.364326, 17.286049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815260, 41.133080, 17.339617>,  <29.756222, 40.747665, 17.428894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815260, 41.133080, 17.339617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037016, -0.220128, -0.974769,
		-0.988355, 0.152135, 0.003176,
		0.147597, 0.963535, -0.223196,
		29.859539, 41.422138, 17.272657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339272, 40.946205, 16.847084>,  <29.756222, 40.747665, 17.428894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339272, 40.946205, 16.847084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631084, 41.219620, 16.856522>,  <29.806171, 41.383671, 16.862185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631084, 41.219620, 16.856522>,  <29.339272, 40.946205, 16.847084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631084, 41.219620, 16.856522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049512, -0.018377, -0.998604,
		-0.682153, 0.729681, -0.047250,
		0.729531, 0.683541, 0.023592,
		29.849943, 41.424683, 16.863600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176119, 41.348587, 16.338722>,  <29.339272, 40.946205, 16.847084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176119, 41.348587, 16.338722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.552824, 41.465233, 16.405706>,  <29.778847, 41.535221, 16.445896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.552824, 41.465233, 16.405706>,  <29.176119, 41.348587, 16.338722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552824, 41.465233, 16.405706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159109, 0.052297, -0.985875,
		-0.296249, 0.955106, 0.002853,
		0.941765, 0.291610, 0.167459,
		29.835354, 41.552715, 16.455944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256880, 41.904598, 15.858132>,  <29.176119, 41.348587, 16.338722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256880, 41.904598, 15.858132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621271, 41.762974, 15.942756>,  <29.839907, 41.677998, 15.993530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621271, 41.762974, 15.942756>,  <29.256880, 41.904598, 15.858132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621271, 41.762974, 15.942756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279973, 0.154175, -0.947547,
		0.302874, 0.922426, 0.239578,
		0.910979, -0.354063, 0.211559,
		29.894566, 41.656754, 16.006224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691231, 42.455029, 15.571305>,  <29.256880, 41.904598, 15.858132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691231, 42.455029, 15.571305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.900963, 42.115955, 15.603609>,  <30.026802, 41.912514, 15.622992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.900963, 42.115955, 15.603609>,  <29.691231, 42.455029, 15.571305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900963, 42.115955, 15.603609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330573, 0.115233, -0.936719,
		0.784730, 0.517844, 0.340639,
		0.524328, -0.847678, 0.080758,
		30.058262, 41.861652, 15.627836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201937, 42.574444, 15.050396>,  <29.691231, 42.455029, 15.571305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201937, 42.574444, 15.050396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.227688, 42.179279, 15.106794>,  <30.243139, 41.942181, 15.140634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.227688, 42.179279, 15.106794>,  <30.201937, 42.574444, 15.050396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227688, 42.179279, 15.106794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245910, -0.121226, -0.961682,
		0.967152, 0.096583, 0.235134,
		0.064378, -0.987915, 0.140995,
		30.247002, 41.882904, 15.149093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511690, 42.401745, 14.475184>,  <30.201937, 42.574444, 15.050396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511690, 42.401745, 14.475184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406435, 42.041153, 14.612638>,  <30.343281, 41.824799, 14.695109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406435, 42.041153, 14.612638>,  <30.511690, 42.401745, 14.475184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406435, 42.041153, 14.612638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033425, -0.347454, -0.937101,
		0.964179, -0.258074, 0.061296,
		-0.263139, -0.901484, 0.343634,
		30.327494, 41.770706, 14.715728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954124, 41.763340, 14.160768>,  <30.511690, 42.401745, 14.475184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954124, 41.763340, 14.160768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.593365, 41.633537, 14.274803>,  <30.376909, 41.555656, 14.343225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.593365, 41.633537, 14.274803>,  <30.954124, 41.763340, 14.160768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593365, 41.633537, 14.274803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148815, -0.386167, -0.910345,
		0.405507, -0.863464, 0.299991,
		-0.901897, -0.324508, 0.285090,
		30.322796, 41.536186, 14.360331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878654, 41.125332, 13.985359>,  <30.954124, 41.763340, 14.160768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878654, 41.125332, 13.985359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491270, 41.217491, 14.023314>,  <30.258841, 41.272785, 14.046086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491270, 41.217491, 14.023314>,  <30.878654, 41.125332, 13.985359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491270, 41.217491, 14.023314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209909, -0.549201, -0.808899,
		-0.134257, -0.803303, 0.580241,
		-0.968459, 0.230397, 0.094887,
		30.200733, 41.286610, 14.051780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395138, 40.508572, 14.057720>,  <30.878654, 41.125332, 13.985359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395138, 40.508572, 14.057720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.170300, 40.792187, 13.887394>,  <30.035397, 40.962357, 13.785198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.170300, 40.792187, 13.887394>,  <30.395138, 40.508572, 14.057720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170300, 40.792187, 13.887394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064593, -0.550906, -0.832064,
		-0.824548, -0.440193, 0.355460,
		-0.562093, 0.709036, -0.425815,
		30.001671, 41.004898, 13.759649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631992, 39.779129, 13.802990>,  <30.395138, 40.508572, 14.057720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631992, 39.779129, 13.802990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931885, 39.545006, 13.679496>,  <31.111820, 39.404530, 13.605399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931885, 39.545006, 13.679496>,  <30.631992, 39.779129, 13.802990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931885, 39.545006, 13.679496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366411, -0.021323, 0.930209,
		-0.551044, -0.810529, 0.198478,
		0.749729, -0.585310, -0.308736,
		31.156803, 39.369411, 13.586875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696461, 39.293926, 14.289667>,  <30.631992, 39.779129, 13.802990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696461, 39.293926, 14.289667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048435, 39.229347, 14.110941>,  <31.259621, 39.190601, 14.003705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048435, 39.229347, 14.110941>,  <30.696461, 39.293926, 14.289667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048435, 39.229347, 14.110941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417155, -0.187514, 0.889281,
		-0.227360, -0.968903, -0.097650,
		0.879937, -0.161452, -0.446816,
		31.312416, 39.180912, 13.976896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991732, 38.731926, 14.616728>,  <30.696461, 39.293926, 14.289667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991732, 38.731926, 14.616728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.324020, 38.905796, 14.477609>,  <31.523394, 39.010117, 14.394137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.324020, 38.905796, 14.477609>,  <30.991732, 38.731926, 14.616728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324020, 38.905796, 14.477609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441678, -0.134340, 0.887059,
		0.338859, -0.890512, -0.303585,
		0.830720, 0.434674, -0.347797,
		31.573236, 39.036198, 14.373270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600101, 38.347160, 14.881857>,  <30.991732, 38.731926, 14.616728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600101, 38.347160, 14.881857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729326, 38.717972, 14.805707>,  <31.806862, 38.940460, 14.760016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729326, 38.717972, 14.805707>,  <31.600101, 38.347160, 14.881857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729326, 38.717972, 14.805707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610836, -0.050609, 0.790139,
		0.722848, -0.371553, -0.582614,
		0.323064, 0.927031, -0.190376,
		31.826246, 38.996082, 14.748594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416813, 38.370049, 14.819567>,  <31.600101, 38.347160, 14.881857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416813, 38.370049, 14.819567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286594, 38.740528, 14.895642>,  <32.208466, 38.962818, 14.941288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286594, 38.740528, 14.895642>,  <32.416813, 38.370049, 14.819567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286594, 38.740528, 14.895642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603084, 0.048478, 0.796203,
		0.728225, 0.373900, -0.574359,
		-0.325544, 0.926201, 0.190190,
		32.188931, 39.018387, 14.952700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832767, 38.655743, 15.219999>,  <32.416813, 38.370049, 14.819567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832767, 38.655743, 15.219999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575668, 38.956951, 15.276334>,  <32.421410, 39.137676, 15.310134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575668, 38.956951, 15.276334>,  <32.832767, 38.655743, 15.219999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575668, 38.956951, 15.276334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489732, 0.262518, 0.831412,
		0.589099, 0.603360, -0.537512,
		-0.642748, 0.753021, 0.140836,
		32.382843, 39.182858, 15.318584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252087, 39.231831, 15.386779>,  <32.832767, 38.655743, 15.219999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252087, 39.231831, 15.386779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878506, 39.262905, 15.526321>,  <32.654358, 39.281551, 15.610047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878506, 39.262905, 15.526321>,  <33.252087, 39.231831, 15.386779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878506, 39.262905, 15.526321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347260, -0.033630, 0.937166,
		0.084537, 0.996410, 0.004432,
		-0.933951, 0.077687, 0.348856,
		32.598320, 39.286213, 15.630979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268112, 39.767361, 16.009163>,  <33.252087, 39.231831, 15.386779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268112, 39.767361, 16.009163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937664, 39.551552, 16.074207>,  <32.739395, 39.422066, 16.113234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937664, 39.551552, 16.074207>,  <33.268112, 39.767361, 16.009163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937664, 39.551552, 16.074207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091899, 0.155718, 0.983517,
		-0.555954, 0.827445, -0.079060,
		-0.826117, -0.539525, 0.162613,
		32.689831, 39.389694, 16.122992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932354, 40.117558, 16.480141>,  <33.268112, 39.767361, 16.009163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932354, 40.117558, 16.480141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738075, 39.767963, 16.486492>,  <32.621510, 39.558208, 16.490303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738075, 39.767963, 16.486492>,  <32.932354, 40.117558, 16.480141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738075, 39.767963, 16.486492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056812, 0.049690, 0.997148,
		-0.872280, 0.483408, -0.073787,
		-0.485696, -0.873984, 0.015880,
		32.592365, 39.505768, 16.491257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427673, 40.191456, 17.034279>,  <32.932354, 40.117558, 16.480141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427673, 40.191456, 17.034279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488476, 39.799595, 16.981848>,  <32.524960, 39.564480, 16.950390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488476, 39.799595, 16.981848>,  <32.427673, 40.191456, 17.034279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488476, 39.799595, 16.981848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107665, -0.115416, 0.987465,
		-0.982498, -0.164215, 0.087930,
		0.152008, -0.979649, -0.131076,
		32.534077, 39.505699, 16.942524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069695, 39.928974, 17.582994>,  <32.427673, 40.191456, 17.034279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069695, 39.928974, 17.582994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285358, 39.621380, 17.445604>,  <32.414757, 39.436825, 17.363171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285358, 39.621380, 17.445604>,  <32.069695, 39.928974, 17.582994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285358, 39.621380, 17.445604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060544, -0.371387, 0.926502,
		-0.840027, -0.520324, -0.153678,
		0.539155, -0.768983, -0.343477,
		32.447105, 39.390686, 17.342562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730373, 39.313568, 17.773432>,  <32.069695, 39.928974, 17.582994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730373, 39.313568, 17.773432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123405, 39.257942, 17.724125>,  <32.359226, 39.224567, 17.694542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.123405, 39.257942, 17.724125>,  <31.730373, 39.313568, 17.773432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123405, 39.257942, 17.724125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080964, -0.276697, 0.957540,
		-0.167265, -0.950842, -0.260618,
		0.982582, -0.139063, -0.123266,
		32.418179, 39.216225, 17.687145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841469, 38.769592, 18.213570>,  <31.730373, 39.313568, 17.773432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841469, 38.769592, 18.213570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214878, 38.895905, 18.145662>,  <32.438923, 38.971691, 18.104918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.214878, 38.895905, 18.145662>,  <31.841469, 38.769592, 18.213570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214878, 38.895905, 18.145662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231072, -0.167888, 0.958342,
		0.274124, -0.933861, -0.229695,
		0.933521, 0.315781, -0.169767,
		32.494934, 38.990639, 18.094732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235119, 38.317329, 18.592484>,  <31.841469, 38.769592, 18.213570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235119, 38.317329, 18.592484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438412, 38.660671, 18.564407>,  <32.560387, 38.866676, 18.547562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438412, 38.660671, 18.564407>,  <32.235119, 38.317329, 18.592484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438412, 38.660671, 18.564407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212983, -0.046299, 0.975958,
		0.834468, -0.510965, -0.206345,
		0.508234, 0.858354, -0.070192,
		32.590881, 38.918179, 18.543350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619827, 37.593277, 18.545938>,  <32.235119, 38.317329, 18.592484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619827, 37.593277, 18.545938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565514, 37.198105, 18.575756>,  <32.532925, 36.961002, 18.593647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565514, 37.198105, 18.575756>,  <32.619827, 37.593277, 18.545938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565514, 37.198105, 18.575756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481819, 0.000103, -0.876271,
		0.865687, -0.154898, -0.476018,
		-0.135781, -0.987930, 0.074544,
		32.524780, 36.901726, 18.598120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767754, 37.412529, 17.899055>,  <32.619827, 37.593277, 18.545938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767754, 37.412529, 17.899055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554783, 37.108589, 18.048267>,  <32.427002, 36.926224, 18.137794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554783, 37.108589, 18.048267>,  <32.767754, 37.412529, 17.899055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554783, 37.108589, 18.048267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481440, -0.090632, -0.871780,
		0.696229, -0.643752, -0.317566,
		-0.532429, -0.759848, 0.373029,
		32.395054, 36.880634, 18.160175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761196, 36.881821, 17.349188>,  <32.767754, 37.412529, 17.899055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761196, 36.881821, 17.349188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443829, 36.792530, 17.575691>,  <32.253407, 36.738956, 17.711594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443829, 36.792530, 17.575691>,  <32.761196, 36.881821, 17.349188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443829, 36.792530, 17.575691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586519, 0.031702, -0.809315,
		0.162712, -0.974250, -0.156082,
		-0.793423, -0.223230, 0.566258,
		32.205803, 36.725563, 17.745569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422989, 36.270885, 17.051119>,  <32.761196, 36.881821, 17.349188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422989, 36.270885, 17.051119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126347, 36.415066, 17.277424>,  <31.948360, 36.501575, 17.413208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.126347, 36.415066, 17.277424>,  <32.422989, 36.270885, 17.051119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126347, 36.415066, 17.277424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630694, -0.087293, -0.771106,
		-0.228558, -0.928685, 0.292071,
		-0.741611, 0.360451, 0.565764,
		31.903864, 36.523201, 17.447153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980658, 35.778942, 17.078892>,  <32.422989, 36.270885, 17.051119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980658, 35.778942, 17.078892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772306, 36.109455, 17.164623>,  <31.647295, 36.307762, 17.216063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.772306, 36.109455, 17.164623>,  <31.980658, 35.778942, 17.078892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772306, 36.109455, 17.164623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619023, -0.192737, -0.761356,
		-0.587789, -0.529248, 0.611883,
		-0.520879, 0.826287, 0.214328,
		31.616043, 36.357342, 17.228922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338562, 35.641102, 16.888531>,  <31.980658, 35.778942, 17.078892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338562, 35.641102, 16.888531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.339321, 36.040989, 16.897980>,  <31.339777, 36.280922, 16.903648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.339321, 36.040989, 16.897980>,  <31.338562, 35.641102, 16.888531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339321, 36.040989, 16.897980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334793, 0.022892, -0.942014,
		-0.942290, -0.006122, 0.334742,
		0.001896, 0.999719, 0.023621,
		31.339890, 36.340904, 16.905066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646837, 35.934010, 16.654661>,  <31.338562, 35.641102, 16.888531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646837, 35.934010, 16.654661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.916101, 36.226578, 16.611073>,  <31.077660, 36.402119, 16.584919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.916101, 36.226578, 16.611073>,  <30.646837, 35.934010, 16.654661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916101, 36.226578, 16.611073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316260, 0.151545, -0.936490,
		-0.668457, 0.664872, 0.333333,
		0.673161, 0.731423, -0.108971,
		31.118050, 36.446003, 16.578381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936615, 36.000084, 16.844913>,  <30.646837, 35.934010, 16.654661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936615, 36.000084, 16.844913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644299, 35.737518, 16.770008>,  <29.468908, 35.579979, 16.725065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644299, 35.737518, 16.770008>,  <29.936615, 36.000084, 16.844913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644299, 35.737518, 16.770008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215749, -0.482395, 0.848968,
		-0.647608, 0.580016, 0.494150,
		-0.730791, -0.656411, -0.187265,
		29.425060, 35.540596, 16.713829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474541, 36.035622, 17.464523>,  <29.936615, 36.000084, 16.844913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474541, 36.035622, 17.464523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434307, 35.685219, 17.275848>,  <29.410166, 35.474976, 17.162643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434307, 35.685219, 17.275848>,  <29.474541, 36.035622, 17.464523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434307, 35.685219, 17.275848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211738, -0.482079, 0.850157,
		-0.972136, -0.014360, 0.233975,
		-0.100586, -0.876010, -0.471687,
		29.404131, 35.422417, 17.134342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970795, 35.738949, 17.820593>,  <29.474541, 36.035622, 17.464523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970795, 35.738949, 17.820593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198267, 35.467499, 17.634661>,  <29.334751, 35.304630, 17.523102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.198267, 35.467499, 17.634661>,  <28.970795, 35.738949, 17.820593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198267, 35.467499, 17.634661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123001, -0.488594, 0.863798,
		-0.813310, -0.548400, -0.194383,
		0.568681, -0.678626, -0.464832,
		29.368872, 35.263912, 17.495211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886309, 35.167530, 18.300245>,  <28.970795, 35.738949, 17.820593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886309, 35.167530, 18.300245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.201084, 35.077187, 18.070560>,  <29.389950, 35.022980, 17.932751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.201084, 35.077187, 18.070560>,  <28.886309, 35.167530, 18.300245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201084, 35.077187, 18.070560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361875, -0.584821, 0.725969,
		-0.499776, -0.779084, -0.378486,
		0.786938, -0.225857, -0.574211,
		29.437166, 35.009430, 17.898296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976095, 34.432850, 18.302900>,  <28.886309, 35.167530, 18.300245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976095, 34.432850, 18.302900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.330429, 34.596661, 18.215647>,  <29.543030, 34.694946, 18.163294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.330429, 34.596661, 18.215647>,  <28.976095, 34.432850, 18.302900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330429, 34.596661, 18.215647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410046, -0.470911, 0.781092,
		0.217156, -0.781365, -0.585075,
		0.885836, 0.409526, -0.218134,
		29.596180, 34.719517, 18.150206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376493, 33.972984, 18.597891>,  <28.976095, 34.432850, 18.302900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376493, 33.972984, 18.597891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.656216, 34.252731, 18.538752>,  <29.824049, 34.420578, 18.503269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.656216, 34.252731, 18.538752>,  <29.376493, 33.972984, 18.597891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656216, 34.252731, 18.538752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536633, -0.376996, 0.754916,
		0.472227, -0.607255, -0.638939,
		0.699304, 0.699367, -0.147846,
		29.866007, 34.462543, 18.494398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903444, 33.615913, 18.759407>,  <29.376493, 33.972984, 18.597891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903444, 33.615913, 18.759407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037558, 33.990753, 18.798256>,  <30.118025, 34.215656, 18.821566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.037558, 33.990753, 18.798256>,  <29.903444, 33.615913, 18.759407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037558, 33.990753, 18.798256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319249, -0.209997, 0.924111,
		0.886378, -0.278832, -0.369576,
		0.335282, 0.937099, 0.097120,
		30.138142, 34.271881, 18.827393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.806601, 40.095528, 14.879311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198280, 40.176319, 14.871540>,  <27.433289, 40.224792, 14.866878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198280, 40.176319, 14.871540>,  <26.806601, 40.095528, 14.879311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198280, 40.176319, 14.871540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104840, -0.421648, 0.900678,
		0.173724, -0.883979, -0.434052,
		0.979198, 0.201975, -0.019426,
		27.492041, 40.236912, 14.865712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238348, 39.562279, 15.101448>,  <26.806601, 40.095528, 14.879311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238348, 39.562279, 15.101448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428074, 39.906277, 15.176748>,  <27.541910, 40.112675, 15.221929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428074, 39.906277, 15.176748>,  <27.238348, 39.562279, 15.101448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428074, 39.906277, 15.176748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018219, -0.223379, 0.974561,
		0.880166, -0.458820, -0.121621,
		0.474316, 0.859992, 0.188251,
		27.570368, 40.164276, 15.233224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631821, 39.376850, 15.600825>,  <27.238348, 39.562279, 15.101448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631821, 39.376850, 15.600825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659830, 39.773090, 15.647817>,  <27.676636, 40.010834, 15.676011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659830, 39.773090, 15.647817>,  <27.631821, 39.376850, 15.600825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659830, 39.773090, 15.647817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019889, -0.119130, 0.992680,
		0.997347, -0.067173, -0.028043,
		0.070022, 0.990604, 0.117477,
		27.680838, 40.070271, 15.683060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263784, 39.497452, 15.955174>,  <27.631821, 39.376850, 15.600825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263784, 39.497452, 15.955174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011831, 39.800724, 16.022598>,  <27.860661, 39.982689, 16.063053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011831, 39.800724, 16.022598>,  <28.263784, 39.497452, 15.955174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011831, 39.800724, 16.022598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203185, -0.048612, 0.977933,
		0.749643, 0.650231, -0.123431,
		-0.629882, 0.758180, 0.168559,
		27.822866, 40.028179, 16.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413372, 39.755260, 16.581072>,  <28.263784, 39.497452, 15.955174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413372, 39.755260, 16.581072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079784, 39.973087, 16.545425>,  <27.879631, 40.103783, 16.524038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079784, 39.973087, 16.545425>,  <28.413372, 39.755260, 16.581072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079784, 39.973087, 16.545425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072619, 0.051778, 0.996015,
		0.547012, 0.837117, -0.003635,
		-0.833969, 0.544568, -0.089114,
		27.829594, 40.136459, 16.518692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585503, 40.429703, 16.948196>,  <28.413372, 39.755260, 16.581072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585503, 40.429703, 16.948196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200804, 40.321377, 16.931696>,  <27.969984, 40.256382, 16.921795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200804, 40.321377, 16.931696>,  <28.585503, 40.429703, 16.948196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200804, 40.321377, 16.931696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066912, 0.086212, 0.994027,
		-0.265643, 0.958763, -0.101035,
		-0.961747, -0.270817, -0.041252,
		27.912279, 40.240131, 16.919321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344090, 40.782299, 17.414968>,  <28.585503, 40.429703, 16.948196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344090, 40.782299, 17.414968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041456, 40.523891, 17.374487>,  <27.859877, 40.368847, 17.350197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041456, 40.523891, 17.374487>,  <28.344090, 40.782299, 17.414968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041456, 40.523891, 17.374487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149440, 0.020147, 0.988565,
		-0.636594, 0.763055, -0.111784,
		-0.756582, -0.646020, -0.101206,
		27.814482, 40.330086, 17.344126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875866, 41.003208, 17.926800>,  <28.344090, 40.782299, 17.414968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875866, 41.003208, 17.926800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764641, 40.626312, 17.852102>,  <27.697905, 40.400177, 17.807283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764641, 40.626312, 17.852102>,  <27.875866, 41.003208, 17.926800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764641, 40.626312, 17.852102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213231, -0.129010, 0.968447,
		-0.936596, 0.309110, -0.165040,
		-0.278065, -0.942235, -0.186742,
		27.681221, 40.343643, 17.796080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083454, 40.855095, 18.029352>,  <27.875866, 41.003208, 17.926800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083454, 40.855095, 18.029352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.297962, 40.520176, 18.071953>,  <27.426666, 40.319225, 18.097513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.297962, 40.520176, 18.071953>,  <27.083454, 40.855095, 18.029352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297962, 40.520176, 18.071953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233836, -0.026142, 0.971924,
		-0.811010, -0.546115, -0.209811,
		0.536268, -0.837302, 0.106500,
		27.458843, 40.268986, 18.103903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694403, 40.563576, 18.519476>,  <27.083454, 40.855095, 18.029352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694403, 40.563576, 18.519476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013391, 40.322273, 18.523973>,  <27.204784, 40.177494, 18.526672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013391, 40.322273, 18.523973>,  <26.694403, 40.563576, 18.519476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013391, 40.322273, 18.523973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136958, -0.162836, 0.977101,
		-0.587608, -0.780750, -0.212477,
		0.797471, -0.603253, 0.011246,
		27.252632, 40.141296, 18.527348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576925, 40.033657, 18.976658>,  <26.694403, 40.563576, 18.519476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576925, 40.033657, 18.976658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972326, 39.978668, 18.951487>,  <27.209568, 39.945675, 18.936384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972326, 39.978668, 18.951487>,  <26.576925, 40.033657, 18.976658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972326, 39.978668, 18.951487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037937, -0.177369, 0.983413,
		-0.146346, -0.974497, -0.170115,
		0.988506, -0.137465, -0.062927,
		27.268877, 39.937428, 18.932608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697607, 39.362831, 19.218140>,  <26.576925, 40.033657, 18.976658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697607, 39.362831, 19.218140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016516, 39.599648, 19.265209>,  <27.207861, 39.741737, 19.293451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016516, 39.599648, 19.265209>,  <26.697607, 39.362831, 19.218140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016516, 39.599648, 19.265209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128100, -0.024553, 0.991457,
		0.589869, -0.805536, 0.056265,
		0.797273, 0.592037, 0.117673,
		27.255697, 39.777260, 19.300510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810385, 38.641552, 19.069782>,  <26.697607, 39.362831, 19.218140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810385, 38.641552, 19.069782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596088, 38.308277, 19.124601>,  <26.467510, 38.108315, 19.157494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596088, 38.308277, 19.124601>,  <26.810385, 38.641552, 19.069782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596088, 38.308277, 19.124601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114370, -0.089209, -0.989425,
		0.836600, -0.545752, -0.047498,
		-0.535743, -0.833184, 0.137050,
		26.435366, 38.058323, 19.165716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084667, 38.142365, 18.713530>,  <26.810385, 38.641552, 19.069782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084667, 38.142365, 18.713530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.703640, 38.025688, 18.748257>,  <26.475023, 37.955685, 18.769093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.703640, 38.025688, 18.748257>,  <27.084667, 38.142365, 18.713530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703640, 38.025688, 18.748257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036313, -0.174292, -0.984024,
		0.302158, -0.940501, 0.155432,
		-0.952566, -0.291687, 0.086816,
		26.417870, 37.938183, 18.774302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931772, 37.531311, 18.249063>,  <27.084667, 38.142365, 18.713530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931772, 37.531311, 18.249063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.588198, 37.716019, 18.337606>,  <26.382053, 37.826843, 18.390732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.588198, 37.716019, 18.337606>,  <26.931772, 37.531311, 18.249063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588198, 37.716019, 18.337606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272672, -0.046537, -0.960981,
		-0.433449, -0.885779, 0.165884,
		-0.858937, 0.461768, 0.221356,
		26.330517, 37.854549, 18.404013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559399, 37.114983, 17.856024>,  <26.931772, 37.531311, 18.249063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559399, 37.114983, 17.856024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334518, 37.433117, 17.946682>,  <26.199591, 37.623997, 18.001076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334518, 37.433117, 17.946682>,  <26.559399, 37.114983, 17.856024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334518, 37.433117, 17.946682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322758, 0.041309, -0.945580,
		-0.761419, -0.604755, 0.233478,
		-0.562199, 0.795340, 0.226643,
		26.165859, 37.671719, 18.014675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844099, 36.946354, 17.590191>,  <26.559399, 37.114983, 17.856024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844099, 36.946354, 17.590191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919161, 37.337742, 17.624573>,  <25.964197, 37.572575, 17.645203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919161, 37.337742, 17.624573>,  <25.844099, 36.946354, 17.590191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919161, 37.337742, 17.624573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017155, 0.084230, -0.996299,
		-0.982085, 0.188434, -0.000980,
		0.187654, 0.978467, 0.085954,
		25.975456, 37.631283, 17.650358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327017, 37.261631, 17.179642>,  <25.844099, 36.946354, 17.590191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327017, 37.261631, 17.179642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.637079, 37.510094, 17.225765>,  <25.823116, 37.659172, 17.253439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.637079, 37.510094, 17.225765>,  <25.327017, 37.261631, 17.179642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637079, 37.510094, 17.225765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154050, -0.008830, -0.988024,
		-0.612703, 0.783634, -0.102534,
		0.775154, 0.621160, 0.115309,
		25.869625, 37.696442, 17.260357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210232, 37.780029, 16.718243>,  <25.327017, 37.261631, 17.179642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210232, 37.780029, 16.718243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603144, 37.816772, 16.783587>,  <25.838890, 37.838818, 16.822792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.603144, 37.816772, 16.783587>,  <25.210232, 37.780029, 16.718243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603144, 37.816772, 16.783587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152134, 0.118229, -0.981263,
		-0.109455, 0.988728, 0.102158,
		0.982280, 0.091862, 0.163360,
		25.897827, 37.844330, 16.832594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487787, 38.123150, 16.192940>,  <25.210232, 37.780029, 16.718243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487787, 38.123150, 16.192940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820284, 37.958176, 16.342037>,  <26.019781, 37.859192, 16.431496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820284, 37.958176, 16.342037>,  <25.487787, 38.123150, 16.192940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820284, 37.958176, 16.342037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431216, 0.055201, -0.900559,
		0.350845, 0.909314, 0.223733,
		0.831241, -0.412433, 0.372744,
		26.069656, 37.834446, 16.453861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038172, 38.604694, 15.996543>,  <25.487787, 38.123150, 16.192940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038172, 38.604694, 15.996543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.179693, 38.235222, 16.055380>,  <26.264606, 38.013538, 16.090683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.179693, 38.235222, 16.055380>,  <26.038172, 38.604694, 15.996543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179693, 38.235222, 16.055380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636141, 0.122348, -0.761810,
		0.685674, 0.363102, 0.630879,
		0.353802, -0.923682, 0.147093,
		26.285833, 37.958118, 16.099508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764271, 38.705791, 15.816901>,  <26.038172, 38.604694, 15.996543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764271, 38.705791, 15.816901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684307, 38.314705, 15.791244>,  <26.636330, 38.080055, 15.775849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684307, 38.314705, 15.791244>,  <26.764271, 38.705791, 15.816901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684307, 38.314705, 15.791244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619304, -0.075353, -0.781527,
		0.759275, -0.195958, 0.620565,
		-0.199908, -0.977713, -0.064144,
		26.624334, 38.021393, 15.772000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374838, 38.506939, 15.624048>,  <26.764271, 38.705791, 15.816901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374838, 38.506939, 15.624048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099228, 38.229412, 15.540271>,  <26.933863, 38.062897, 15.490005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099228, 38.229412, 15.540271>,  <27.374838, 38.506939, 15.624048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099228, 38.229412, 15.540271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486315, -0.228351, -0.843418,
		0.537349, -0.682991, 0.494752,
		-0.689023, -0.693815, -0.209445,
		26.892521, 38.021267, 15.477437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727505, 37.996902, 15.441364>,  <27.374838, 38.506939, 15.624048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727505, 37.996902, 15.441364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375484, 37.923691, 15.266087>,  <27.164272, 37.879765, 15.160920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375484, 37.923691, 15.266087>,  <27.727505, 37.996902, 15.441364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375484, 37.923691, 15.266087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461796, -0.114703, -0.879538,
		0.110721, -0.976393, 0.185467,
		-0.880048, -0.183032, -0.438194,
		27.111469, 37.868782, 15.134628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927307, 37.560246, 14.965047>,  <27.727505, 37.996902, 15.441364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927307, 37.560246, 14.965047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.579763, 37.726631, 14.857676>,  <27.371237, 37.826462, 14.793253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.579763, 37.726631, 14.857676>,  <27.927307, 37.560246, 14.965047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579763, 37.726631, 14.857676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261227, -0.075360, -0.962331,
		-0.420528, -0.906251, -0.043185,
		-0.868860, 0.415968, -0.268428,
		27.319105, 37.851421, 14.777147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366726, 37.114571, 14.624373>,  <27.927307, 37.560246, 14.965047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366726, 37.114571, 14.624373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.305559, 37.488419, 14.495931>,  <27.268858, 37.712727, 14.418865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.305559, 37.488419, 14.495931>,  <27.366726, 37.114571, 14.624373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305559, 37.488419, 14.495931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113861, -0.306102, -0.945165,
		-0.981658, -0.181094, -0.059608,
		-0.152918, 0.934616, -0.321107,
		27.259684, 37.768803, 14.399598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066893, 36.411797, 14.743003>,  <27.366726, 37.114571, 14.624373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066893, 36.411797, 14.743003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441399, 36.501740, 14.635042>,  <27.666101, 36.555706, 14.570266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441399, 36.501740, 14.635042>,  <27.066893, 36.411797, 14.743003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441399, 36.501740, 14.635042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350837, -0.637815, 0.685643,
		-0.017972, -0.736634, -0.676053,
		0.936264, 0.224862, -0.269902,
		27.722279, 36.569199, 14.554071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394421, 35.844566, 14.721683>,  <27.066893, 36.411797, 14.743003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394421, 35.844566, 14.721683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697920, 36.103451, 14.751111>,  <27.880020, 36.258781, 14.768768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697920, 36.103451, 14.751111>,  <27.394421, 35.844566, 14.721683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697920, 36.103451, 14.751111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426705, -0.579196, 0.694590,
		0.492160, -0.495628, -0.715634,
		0.758750, 0.647213, 0.073570,
		27.925545, 36.297615, 14.773182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985853, 35.472237, 14.740617>,  <27.394421, 35.844566, 14.721683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985853, 35.472237, 14.740617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.102631, 35.817966, 14.904430>,  <28.172697, 36.025402, 15.002719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.102631, 35.817966, 14.904430>,  <27.985853, 35.472237, 14.740617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102631, 35.817966, 14.904430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511780, -0.502903, 0.696541,
		0.807991, 0.006239, -0.589162,
		0.291946, 0.864320, 0.409534,
		28.190214, 36.077263, 15.027290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733194, 35.540443, 14.658056>,  <27.985853, 35.472237, 14.740617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733194, 35.540443, 14.658056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625799, 35.764454, 14.971560>,  <28.561361, 35.898861, 15.159662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625799, 35.764454, 14.971560>,  <28.733194, 35.540443, 14.658056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625799, 35.764454, 14.971560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591347, -0.546453, 0.593041,
		0.760409, 0.622700, -0.184455,
		-0.268490, 0.560031, 0.783759,
		28.545252, 35.932465, 15.206687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175011, 35.326862, 15.122794>,  <28.733194, 35.540443, 14.658056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175011, 35.326862, 15.122794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968224, 35.541077, 15.389911>,  <28.844152, 35.669605, 15.550180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968224, 35.541077, 15.389911>,  <29.175011, 35.326862, 15.122794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968224, 35.541077, 15.389911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455441, -0.488460, 0.744298,
		0.724789, 0.688917, 0.008611,
		-0.516966, 0.535538, 0.667792,
		28.813133, 35.701736, 15.590248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704422, 35.789165, 15.504510>,  <29.175011, 35.326862, 15.122794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704422, 35.789165, 15.504510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375149, 35.762569, 15.730057>,  <29.177586, 35.746613, 15.865385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375149, 35.762569, 15.730057>,  <29.704422, 35.789165, 15.504510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375149, 35.762569, 15.730057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552796, -0.320473, 0.769229,
		0.129555, 0.944921, 0.300566,
		-0.823184, -0.066494, 0.563868,
		29.128193, 35.742622, 15.899218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926287, 36.040192, 16.096870>,  <29.704422, 35.789165, 15.504510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926287, 36.040192, 16.096870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599981, 35.823421, 16.177708>,  <29.404198, 35.693359, 16.226210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599981, 35.823421, 16.177708>,  <29.926287, 36.040192, 16.096870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599981, 35.823421, 16.177708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476359, -0.431343, 0.766176,
		-0.328042, 0.721288, 0.610027,
		-0.815764, -0.541929, 0.202093,
		29.355251, 35.660843, 16.238337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245409, 36.671917, 16.171259>,  <29.926287, 36.040192, 16.096870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245409, 36.671917, 16.171259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643057, 36.693756, 16.133852>,  <30.881645, 36.706860, 16.111408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643057, 36.693756, 16.133852>,  <30.245409, 36.671917, 16.171259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643057, 36.693756, 16.133852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106351, 0.329693, -0.938079,
		-0.020386, 0.942508, 0.333561,
		0.994120, 0.054598, -0.093515,
		30.941292, 36.710136, 16.105797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344248, 37.200031, 15.796171>,  <30.245409, 36.671917, 16.171259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344248, 37.200031, 15.796171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674194, 36.980965, 15.740092>,  <30.872162, 36.849525, 15.706445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674194, 36.980965, 15.740092>,  <30.344248, 37.200031, 15.796171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674194, 36.980965, 15.740092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041826, 0.188189, -0.981242,
		0.563780, 0.815255, 0.132324,
		0.824865, -0.547670, -0.140196,
		30.921654, 36.816662, 15.698033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842756, 37.625366, 15.503242>,  <30.344248, 37.200031, 15.796171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842756, 37.625366, 15.503242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.926661, 37.241722, 15.427227>,  <30.977003, 37.011536, 15.381618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.926661, 37.241722, 15.427227>,  <30.842756, 37.625366, 15.503242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926661, 37.241722, 15.427227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065795, 0.180076, -0.981450,
		0.975536, 0.218375, -0.025331,
		0.209763, -0.959106, -0.190038,
		30.989590, 36.953991, 15.370215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165787, 37.704849, 14.842934>,  <30.842756, 37.625366, 15.503242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165787, 37.704849, 14.842934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.109695, 37.309456, 14.865690>,  <31.076040, 37.072220, 14.879344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.109695, 37.309456, 14.865690>,  <31.165787, 37.704849, 14.842934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109695, 37.309456, 14.865690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097264, -0.070934, -0.992728,
		0.985331, -0.133674, 0.106090,
		-0.140227, -0.988483, 0.056892,
		31.067627, 37.012909, 14.882758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624983, 37.447388, 14.337435>,  <31.165787, 37.704849, 14.842934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624983, 37.447388, 14.337435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349741, 37.168625, 14.418264>,  <31.184597, 37.001366, 14.466762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349741, 37.168625, 14.418264>,  <31.624983, 37.447388, 14.337435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349741, 37.168625, 14.418264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054151, -0.228390, -0.972063,
		0.723589, -0.679822, 0.119418,
		-0.688104, -0.696908, 0.202074,
		31.143311, 36.959553, 14.478887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744860, 36.888378, 13.927112>,  <31.624983, 37.447388, 14.337435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744860, 36.888378, 13.927112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352190, 36.837086, 13.983501>,  <31.116589, 36.806313, 14.017335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352190, 36.837086, 13.983501>,  <31.744860, 36.888378, 13.927112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352190, 36.837086, 13.983501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158361, 0.137395, -0.977775,
		0.105998, -0.982183, -0.155182,
		-0.981675, -0.128217, 0.140976,
		31.057688, 36.798618, 14.025794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572201, 36.485752, 13.422133>,  <31.744860, 36.888378, 13.927112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572201, 36.485752, 13.422133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204021, 36.602482, 13.526148>,  <30.983114, 36.672520, 13.588556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204021, 36.602482, 13.526148>,  <31.572201, 36.485752, 13.422133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204021, 36.602482, 13.526148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312260, -0.148846, -0.938264,
		-0.235100, -0.944820, 0.228129,
		-0.920446, 0.291822, 0.260036,
		30.927887, 36.690029, 13.604158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145426, 36.017921, 13.056613>,  <31.572201, 36.485752, 13.422133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145426, 36.017921, 13.056613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.881969, 36.301201, 13.158313>,  <30.723896, 36.471169, 13.219333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.881969, 36.301201, 13.158313>,  <31.145426, 36.017921, 13.056613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881969, 36.301201, 13.158313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429077, -0.075919, -0.900072,
		-0.618130, -0.701917, 0.353876,
		-0.658641, 0.708201, 0.254249,
		30.684378, 36.513660, 13.234588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499409, 35.765156, 12.902830>,  <31.145426, 36.017921, 13.056613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499409, 35.765156, 12.902830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474846, 36.164360, 12.908545>,  <30.460108, 36.403881, 12.911973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474846, 36.164360, 12.908545>,  <30.499409, 35.765156, 12.902830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474846, 36.164360, 12.908545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505488, -0.018754, -0.862630,
		-0.860646, -0.060194, 0.505634,
		-0.061408, 0.998011, 0.014287,
		30.456423, 36.463764, 12.912830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.718399, 36.769241, 28.835594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745171, 37.087132, 28.594288>,  <33.761234, 37.277866, 28.449503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745171, 37.087132, 28.594288>,  <33.718399, 36.769241, 28.835594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745171, 37.087132, 28.594288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301637, -0.560215, -0.771475,
		-0.951071, 0.233600, 0.202225,
		0.066927, 0.794726, -0.603267,
		33.765247, 37.325550, 28.413307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105797, 36.794418, 28.508944>,  <33.718399, 36.769241, 28.835594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105797, 36.794418, 28.508944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372227, 37.002705, 28.295328>,  <33.532085, 37.127678, 28.167160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372227, 37.002705, 28.295328>,  <33.105797, 36.794418, 28.508944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372227, 37.002705, 28.295328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231823, -0.535995, -0.811768,
		-0.708944, 0.664500, -0.236299,
		0.666075, 0.520719, -0.534037,
		33.572048, 37.158920, 28.135117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780403, 36.945248, 27.837530>,  <33.105797, 36.794418, 28.508944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780403, 36.945248, 27.837530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166054, 36.988419, 27.740530>,  <33.397446, 37.014320, 27.682331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166054, 36.988419, 27.740530>,  <32.780403, 36.945248, 27.837530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166054, 36.988419, 27.740530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213250, -0.229024, -0.949775,
		-0.158044, 0.967419, -0.197794,
		0.964130, 0.107926, -0.242498,
		33.455292, 37.020798, 27.667780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827541, 37.333679, 27.257141>,  <32.780403, 36.945248, 27.837530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827541, 37.333679, 27.257141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189365, 37.166187, 27.225039>,  <33.406460, 37.065693, 27.205778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189365, 37.166187, 27.225039>,  <32.827541, 37.333679, 27.257141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189365, 37.166187, 27.225039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075632, 0.027655, -0.996752,
		0.419592, 0.907689, -0.006654,
		0.904557, -0.418732, -0.080254,
		33.460732, 37.040569, 27.200962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163864, 37.608253, 26.751617>,  <32.827541, 37.333679, 27.257141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163864, 37.608253, 26.751617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372169, 37.268200, 26.782787>,  <33.497154, 37.064167, 26.801489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372169, 37.268200, 26.782787>,  <33.163864, 37.608253, 26.751617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372169, 37.268200, 26.782787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233262, -0.229503, -0.944943,
		0.821212, 0.473920, -0.317822,
		0.520768, -0.850134, 0.077923,
		33.528400, 37.013161, 26.806164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481415, 37.523842, 26.118113>,  <33.163864, 37.608253, 26.751617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481415, 37.523842, 26.118113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479504, 37.154675, 26.272102>,  <33.478355, 36.933174, 26.364496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479504, 37.154675, 26.272102>,  <33.481415, 37.523842, 26.118113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479504, 37.154675, 26.272102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271776, -0.369290, -0.888686,
		0.962349, -0.108876, -0.249060,
		-0.004781, -0.922915, 0.384976,
		33.478069, 36.877800, 26.387594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949509, 37.133091, 25.771957>,  <33.481415, 37.523842, 26.118113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949509, 37.133091, 25.771957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722572, 36.842499, 25.927059>,  <33.586411, 36.668144, 26.020121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722572, 36.842499, 25.927059>,  <33.949509, 37.133091, 25.771957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722572, 36.842499, 25.927059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095749, -0.525872, -0.845157,
		0.817897, -0.442366, 0.367909,
		-0.567341, -0.726479, 0.387753,
		33.552368, 36.624554, 26.043385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202366, 36.553928, 25.564548>,  <33.949509, 37.133091, 25.771957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202366, 36.553928, 25.564548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838234, 36.426006, 25.669638>,  <33.619755, 36.349255, 25.732691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838234, 36.426006, 25.669638>,  <34.202366, 36.553928, 25.564548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838234, 36.426006, 25.669638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059494, -0.527080, -0.847731,
		0.409582, -0.787346, 0.460791,
		-0.910331, -0.319801, 0.262725,
		33.565136, 36.330067, 25.748455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208050, 35.785278, 25.662691>,  <34.202366, 36.553928, 25.564548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208050, 35.785278, 25.662691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830627, 35.883690, 25.573988>,  <33.604176, 35.942738, 25.520767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830627, 35.883690, 25.573988>,  <34.208050, 35.785278, 25.662691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830627, 35.883690, 25.573988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073845, -0.496404, -0.864945,
		-0.322883, -0.832498, 0.450216,
		-0.943554, 0.246030, -0.221757,
		33.547562, 35.957500, 25.507462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890644, 35.156586, 25.417465>,  <34.208050, 35.785278, 25.662691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890644, 35.156586, 25.417465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635426, 35.432098, 25.279783>,  <33.482292, 35.597404, 25.197174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.635426, 35.432098, 25.279783>,  <33.890644, 35.156586, 25.417465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635426, 35.432098, 25.279783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015883, -0.458698, -0.888450,
		-0.769832, -0.561407, 0.303612,
		-0.638049, 0.688780, -0.344204,
		33.444012, 35.638733, 25.176521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379475, 34.855637, 25.042555>,  <33.890644, 35.156586, 25.417465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379475, 34.855637, 25.042555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362984, 35.231224, 24.905945>,  <33.353088, 35.456577, 24.823978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362984, 35.231224, 24.905945>,  <33.379475, 34.855637, 25.042555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362984, 35.231224, 24.905945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195519, -0.327626, -0.924356,
		-0.979833, -0.104881, -0.170080,
		-0.041225, 0.938968, -0.341525,
		33.350616, 35.512913, 24.803488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744823, 35.000706, 24.690693>,  <33.379475, 34.855637, 25.042555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744823, 35.000706, 24.690693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032818, 35.229481, 24.533464>,  <33.205616, 35.366745, 24.439127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.032818, 35.229481, 24.533464>,  <32.744823, 35.000706, 24.690693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032818, 35.229481, 24.533464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131391, -0.443809, -0.886437,
		-0.681439, 0.689867, -0.244388,
		0.719985, 0.571942, -0.393070,
		33.248814, 35.401062, 24.415543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989237, 35.177773, 24.772045>,  <32.744823, 35.000706, 24.690693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989237, 35.177773, 24.772045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687796, 34.915257, 24.786810>,  <31.506931, 34.757748, 24.795668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.687796, 34.915257, 24.786810>,  <31.989237, 35.177773, 24.772045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687796, 34.915257, 24.786810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059299, 0.123801, 0.990533,
		-0.654647, 0.744282, -0.132215,
		-0.753605, -0.656290, 0.036911,
		31.461714, 34.718369, 24.797884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423906, 35.587067, 25.125406>,  <31.989237, 35.177773, 24.772045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423906, 35.587067, 25.125406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381296, 35.190777, 25.159170>,  <31.355730, 34.953003, 25.179428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381296, 35.190777, 25.159170>,  <31.423906, 35.587067, 25.125406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381296, 35.190777, 25.159170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151044, 0.100033, 0.983452,
		-0.982771, 0.092011, -0.160298,
		-0.106524, -0.990720, 0.084412,
		31.349339, 34.893562, 25.184494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873486, 35.521652, 25.609880>,  <31.423906, 35.587067, 25.125406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873486, 35.521652, 25.609880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030880, 35.154293, 25.593298>,  <31.125317, 34.933880, 25.583349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030880, 35.154293, 25.593298>,  <30.873486, 35.521652, 25.609880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030880, 35.154293, 25.593298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069180, -0.074544, 0.994815,
		-0.916723, -0.388579, -0.092866,
		0.393487, -0.918395, -0.041454,
		31.148926, 34.878773, 25.580862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600191, 35.247944, 26.187332>,  <30.873486, 35.521652, 25.609880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600191, 35.247944, 26.187332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826664, 34.920616, 26.147762>,  <30.962547, 34.724220, 26.124020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826664, 34.920616, 26.147762>,  <30.600191, 35.247944, 26.187332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826664, 34.920616, 26.147762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135204, -0.210587, 0.968180,
		-0.813116, -0.534791, -0.229871,
		0.566182, -0.818323, -0.098925,
		30.996519, 34.675117, 26.118084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227587, 34.727783, 26.530933>,  <30.600191, 35.247944, 26.187332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227587, 34.727783, 26.530933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621037, 34.656601, 26.519541>,  <30.857107, 34.613892, 26.512705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621037, 34.656601, 26.519541>,  <30.227587, 34.727783, 26.530933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621037, 34.656601, 26.519541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008522, -0.111941, 0.993678,
		-0.180022, -0.977650, -0.108591,
		0.983626, -0.177958, -0.028484,
		30.916124, 34.603214, 26.510996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384897, 34.051235, 26.896490>,  <30.227587, 34.727783, 26.530933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384897, 34.051235, 26.896490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723366, 34.264359, 26.892307>,  <30.926447, 34.392231, 26.889797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723366, 34.264359, 26.892307>,  <30.384897, 34.051235, 26.896490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723366, 34.264359, 26.892307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071264, -0.093686, 0.993048,
		0.528123, -0.841035, -0.117244,
		0.846173, 0.532807, -0.010458,
		30.977217, 34.424202, 26.889170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656176, 33.641426, 27.350353>,  <30.384897, 34.051235, 26.896490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656176, 33.641426, 27.350353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.859581, 33.985359, 27.331997>,  <30.981625, 34.191719, 27.320982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.859581, 33.985359, 27.331997>,  <30.656176, 33.641426, 27.350353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859581, 33.985359, 27.331997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173909, -0.050360, 0.983473,
		0.843310, -0.508088, -0.175141,
		0.508511, 0.859831, -0.045892,
		31.012135, 34.243309, 27.318230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277254, 33.569832, 27.718731>,  <30.656176, 33.641426, 27.350353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277254, 33.569832, 27.718731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222593, 33.966080, 27.719044>,  <31.189796, 34.203827, 27.719231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222593, 33.966080, 27.719044>,  <31.277254, 33.569832, 27.718731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222593, 33.966080, 27.719044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197158, 0.026425, 0.980016,
		0.970801, 0.134075, -0.198920,
		-0.136652, 0.990619, 0.000781,
		31.181597, 34.263264, 27.719278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791471, 33.830463, 28.072664>,  <31.277254, 33.569832, 27.718731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791471, 33.830463, 28.072664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519691, 34.123798, 28.082130>,  <31.356623, 34.299801, 28.087811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.519691, 34.123798, 28.082130>,  <31.791471, 33.830463, 28.072664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519691, 34.123798, 28.082130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198458, 0.152635, 0.968151,
		0.706371, 0.662508, -0.249245,
		-0.679451, 0.733339, 0.023663,
		31.315857, 34.343800, 28.089230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094463, 34.409729, 28.461720>,  <31.791471, 33.830463, 28.072664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094463, 34.409729, 28.461720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703037, 34.483974, 28.497421>,  <31.468182, 34.528522, 28.518843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703037, 34.483974, 28.497421>,  <32.094463, 34.409729, 28.461720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703037, 34.483974, 28.497421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168655, 0.473449, 0.864524,
		0.118207, 0.861043, -0.494603,
		-0.978561, 0.185610, 0.089255,
		31.409470, 34.539658, 28.524199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004223, 35.150200, 28.694260>,  <32.094463, 34.409729, 28.461720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004223, 35.150200, 28.694260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640575, 35.016811, 28.794098>,  <31.422386, 34.936779, 28.854000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.640575, 35.016811, 28.794098>,  <32.004223, 35.150200, 28.694260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640575, 35.016811, 28.794098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034993, 0.535961, 0.843517,
		-0.415058, 0.775594, -0.475585,
		-0.909122, -0.333467, 0.249596,
		31.367840, 34.916771, 28.868977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619556, 35.677002, 29.021736>,  <32.004223, 35.150200, 28.694260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619556, 35.677002, 29.021736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418064, 35.358860, 29.156597>,  <31.297169, 35.167976, 29.237514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418064, 35.358860, 29.156597>,  <31.619556, 35.677002, 29.021736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418064, 35.358860, 29.156597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111391, 0.446831, 0.887657,
		-0.856648, 0.409585, -0.313678,
		-0.503732, -0.795350, 0.337153,
		31.266945, 35.120255, 29.257744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083698, 35.950943, 29.319492>,  <31.619556, 35.677002, 29.021736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083698, 35.950943, 29.319492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112225, 35.584892, 29.478210>,  <31.129341, 35.365261, 29.573442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.112225, 35.584892, 29.478210>,  <31.083698, 35.950943, 29.319492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112225, 35.584892, 29.478210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193794, 0.377517, 0.905497,
		-0.978447, -0.141475, -0.150423,
		0.071318, -0.915132, 0.396797,
		31.133619, 35.310352, 29.597250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492105, 35.910732, 29.624382>,  <31.083698, 35.950943, 29.319492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492105, 35.910732, 29.624382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704319, 35.629612, 29.813953>,  <30.831648, 35.460941, 29.927696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704319, 35.629612, 29.813953>,  <30.492105, 35.910732, 29.624382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704319, 35.629612, 29.813953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273975, 0.386921, 0.880471,
		-0.802167, -0.596964, 0.012725,
		0.530533, -0.702799, 0.473929,
		30.863480, 35.418774, 29.956133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059698, 35.484478, 30.155302>,  <30.492105, 35.910732, 29.624382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059698, 35.484478, 30.155302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443380, 35.525703, 30.260605>,  <30.673590, 35.550438, 30.323786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443380, 35.525703, 30.260605>,  <30.059698, 35.484478, 30.155302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443380, 35.525703, 30.260605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278479, 0.183920, 0.942668,
		0.048735, -0.977523, 0.205118,
		0.959205, 0.103063, 0.263257,
		30.731142, 35.556622, 30.339582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961679, 35.339180, 29.337456>,  <30.059698, 35.484478, 30.155302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961679, 35.339180, 29.337456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.801762, 35.688274, 29.225382>,  <29.705811, 35.897732, 29.158138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.801762, 35.688274, 29.225382>,  <29.961679, 35.339180, 29.337456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801762, 35.688274, 29.225382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290432, -0.410540, -0.864353,
		-0.869375, -0.264189, 0.417601,
		-0.399794, 0.872732, -0.280185,
		29.681824, 35.950092, 29.141327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337757, 35.265648, 28.956228>,  <29.961679, 35.339180, 29.337456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337757, 35.265648, 28.956228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.461380, 35.626144, 28.834740>,  <29.535553, 35.842442, 28.761847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.461380, 35.626144, 28.834740>,  <29.337757, 35.265648, 28.956228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461380, 35.626144, 28.834740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446863, -0.144295, -0.882889,
		-0.839523, 0.408583, 0.358137,
		0.309056, 0.901243, -0.303719,
		29.554096, 35.896519, 28.743624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718029, 35.707298, 28.733755>,  <29.337757, 35.265648, 28.956228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718029, 35.707298, 28.733755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.028803, 35.870979, 28.542370>,  <29.215267, 35.969189, 28.427538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.028803, 35.870979, 28.542370>,  <28.718029, 35.707298, 28.733755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028803, 35.870979, 28.542370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543063, 0.051091, -0.838136,
		-0.318522, 0.911012, 0.261917,
		0.776934, 0.409203, -0.478463,
		29.261883, 35.993740, 28.398830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418711, 36.133709, 28.273682>,  <28.718029, 35.707298, 28.733755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418711, 36.133709, 28.273682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.792797, 36.134476, 28.132050>,  <29.017248, 36.134937, 28.047071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.792797, 36.134476, 28.132050>,  <28.418711, 36.133709, 28.273682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792797, 36.134476, 28.132050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352966, -0.074357, -0.932677,
		-0.028117, 0.997230, -0.068863,
		0.935214, 0.001918, -0.354078,
		29.073360, 36.135052, 28.025826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404472, 36.568264, 27.684946>,  <28.418711, 36.133709, 28.273682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404472, 36.568264, 27.684946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.724129, 36.333797, 27.631607>,  <28.915922, 36.193115, 27.599604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.724129, 36.333797, 27.631607>,  <28.404472, 36.568264, 27.684946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724129, 36.333797, 27.631607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164647, -0.000087, -0.986353,
		0.578158, 0.810189, -0.096580,
		0.799140, -0.586169, -0.133345,
		28.963871, 36.157948, 27.591604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731674, 36.944477, 27.035841>,  <28.404472, 36.568264, 27.684946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731674, 36.944477, 27.035841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843262, 36.563736, 27.086676>,  <28.910213, 36.335293, 27.117176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.843262, 36.563736, 27.086676>,  <28.731674, 36.944477, 27.035841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843262, 36.563736, 27.086676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131017, -0.168827, -0.976899,
		0.951321, 0.255873, -0.171806,
		0.278967, -0.951854, 0.127085,
		28.926952, 36.278179, 27.124802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039570, 36.862564, 26.393084>,  <28.731674, 36.944477, 27.035841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039570, 36.862564, 26.393084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971313, 36.496433, 26.538994>,  <28.930361, 36.276756, 26.626539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.971313, 36.496433, 26.538994>,  <29.039570, 36.862564, 26.393084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971313, 36.496433, 26.538994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268945, -0.312881, -0.910919,
		0.947919, -0.253544, -0.192782,
		-0.170640, -0.915326, 0.364775,
		28.920122, 36.221836, 26.648426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303173, 36.439114, 25.947123>,  <29.039570, 36.862564, 26.393084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303173, 36.439114, 25.947123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.059004, 36.187225, 26.139305>,  <28.912502, 36.036095, 26.254616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.059004, 36.187225, 26.139305>,  <29.303173, 36.439114, 25.947123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059004, 36.187225, 26.139305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315031, -0.363522, -0.876702,
		0.726733, -0.686517, 0.023521,
		-0.610422, -0.629719, 0.480458,
		28.875877, 35.998310, 26.283442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298105, 35.847664, 25.518839>,  <29.303173, 36.439114, 25.947123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298105, 35.847664, 25.518839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.960039, 35.826172, 25.731560>,  <28.757200, 35.813278, 25.859192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.960039, 35.826172, 25.731560>,  <29.298105, 35.847664, 25.518839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960039, 35.826172, 25.731560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502820, -0.257561, -0.825127,
		0.181301, -0.964767, 0.190667,
		-0.845163, -0.053724, 0.531801,
		28.706490, 35.810055, 25.891100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944492, 35.191322, 25.343000>,  <29.298105, 35.847664, 25.518839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944492, 35.191322, 25.343000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.668385, 35.444927, 25.482464>,  <28.502720, 35.597088, 25.566141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.668385, 35.444927, 25.482464>,  <28.944492, 35.191322, 25.343000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668385, 35.444927, 25.482464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533216, -0.120010, -0.837424,
		-0.489092, -0.763957, 0.420903,
		-0.690268, 0.634009, 0.348657,
		28.461304, 35.635128, 25.587061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360971, 34.893536, 25.105526>,  <28.944492, 35.191322, 25.343000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360971, 34.893536, 25.105526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.277868, 35.274353, 25.195377>,  <28.228006, 35.502842, 25.249289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.277868, 35.274353, 25.195377>,  <28.360971, 34.893536, 25.105526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277868, 35.274353, 25.195377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558888, 0.072937, -0.826029,
		-0.802796, -0.297156, 0.516931,
		-0.207756, 0.952039, 0.224630,
		28.215542, 35.559963, 25.262766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627769, 34.966171, 24.961151>,  <28.360971, 34.893536, 25.105526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627769, 34.966171, 24.961151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.781279, 35.334957, 24.940353>,  <27.873384, 35.556229, 24.927876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.781279, 35.334957, 24.940353>,  <27.627769, 34.966171, 24.961151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781279, 35.334957, 24.940353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413305, 0.121144, -0.902498,
		-0.825771, 0.367844, 0.427544,
		0.383773, 0.921963, -0.051994,
		27.896410, 35.611546, 24.924755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069511, 35.450306, 24.891054>,  <27.627769, 34.966171, 24.961151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069511, 35.450306, 24.891054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.380533, 35.675713, 24.779442>,  <27.567146, 35.810955, 24.712475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.380533, 35.675713, 24.779442>,  <27.069511, 35.450306, 24.891054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380533, 35.675713, 24.779442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530097, 0.348731, -0.772906,
		-0.338235, 0.748893, 0.569874,
		0.777556, 0.563513, -0.279033,
		27.613800, 35.844765, 24.695732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818510, 36.078815, 24.742579>,  <27.069511, 35.450306, 24.891054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818510, 36.078815, 24.742579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.163446, 36.048172, 24.542377>,  <27.370407, 36.029785, 24.422256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.163446, 36.048172, 24.542377>,  <26.818510, 36.078815, 24.742579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163446, 36.048172, 24.542377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486910, 0.145672, -0.861219,
		0.138885, 0.986362, 0.088318,
		0.862340, -0.076607, -0.500502,
		27.422148, 36.025188, 24.392227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620325, 36.562031, 24.279030>,  <26.818510, 36.078815, 24.742579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620325, 36.562031, 24.279030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.959291, 36.406902, 24.133987>,  <27.162672, 36.313824, 24.046963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.959291, 36.406902, 24.133987>,  <26.620325, 36.562031, 24.279030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959291, 36.406902, 24.133987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333880, 0.141751, -0.931896,
		0.412808, 0.910770, -0.009364,
		0.847416, -0.387820, -0.362604,
		27.213516, 36.290558, 24.025206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996794, 37.075020, 24.086199>,  <26.620325, 36.562031, 24.279030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996794, 37.075020, 24.086199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.055492, 36.740086, 23.875547>,  <27.090712, 36.539124, 23.749157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.055492, 36.740086, 23.875547>,  <26.996794, 37.075020, 24.086199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055492, 36.740086, 23.875547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423440, 0.427971, -0.798461,
		0.893960, 0.340166, -0.291758,
		0.146745, -0.837334, -0.526628,
		27.099516, 36.488884, 23.717560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375555, 37.365185, 23.642534>,  <26.996794, 37.075020, 24.086199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375555, 37.365185, 23.642534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.241291, 37.032948, 23.464792>,  <27.160732, 36.833607, 23.358147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.241291, 37.032948, 23.464792>,  <27.375555, 37.365185, 23.642534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241291, 37.032948, 23.464792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168906, 0.517150, -0.839063,
		0.926716, -0.206586, -0.313878,
		-0.335660, -0.830590, -0.444357,
		27.140593, 36.783772, 23.331486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770319, 37.378723, 23.027018>,  <27.375555, 37.365185, 23.642534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770319, 37.378723, 23.027018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.469694, 37.119621, 22.977106>,  <27.289320, 36.964161, 22.947159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.469694, 37.119621, 22.977106>,  <27.770319, 37.378723, 23.027018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469694, 37.119621, 22.977106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109005, 0.308501, -0.944958,
		0.650595, -0.696592, -0.302466,
		-0.751561, -0.647755, -0.124777,
		27.244226, 36.925293, 22.939672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800215, 37.084179, 22.425135>,  <27.770319, 37.378723, 23.027018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800215, 37.084179, 22.425135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.420839, 36.966503, 22.472324>,  <27.193214, 36.895897, 22.500639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.420839, 36.966503, 22.472324>,  <27.800215, 37.084179, 22.425135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420839, 36.966503, 22.472324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138156, 0.048713, -0.989212,
		0.285267, -0.954505, -0.086845,
		-0.948438, -0.294188, 0.117974,
		27.136309, 36.878246, 22.507717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735073, 36.641193, 21.958874>,  <27.800215, 37.084179, 22.425135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735073, 36.641193, 21.958874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.363005, 36.758476, 22.047251>,  <27.139765, 36.828846, 22.100277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.363005, 36.758476, 22.047251>,  <27.735073, 36.641193, 21.958874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363005, 36.758476, 22.047251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199990, 0.100019, -0.974680,
		-0.307879, -0.950804, -0.034397,
		-0.930169, 0.293204, 0.220945,
		27.083954, 36.846436, 22.113535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287153, 36.314919, 21.485165>,  <27.735073, 36.641193, 21.958874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287153, 36.314919, 21.485165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.071701, 36.628399, 21.608898>,  <26.942430, 36.816486, 21.683138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.071701, 36.628399, 21.608898>,  <27.287153, 36.314919, 21.485165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071701, 36.628399, 21.608898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306638, 0.159624, -0.938346,
		-0.784761, -0.600275, 0.154335,
		-0.538630, 0.783702, 0.309334,
		26.910112, 36.863510, 21.701698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578100, 36.295067, 21.164196>,  <27.287153, 36.314919, 21.485165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578100, 36.295067, 21.164196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.628586, 36.676838, 21.272367>,  <26.658876, 36.905903, 21.337271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.628586, 36.676838, 21.272367>,  <26.578100, 36.295067, 21.164196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628586, 36.676838, 21.272367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593023, 0.291128, -0.750711,
		-0.795232, -0.065621, 0.602744,
		0.126213, 0.954431, 0.270429,
		26.666451, 36.963165, 21.353497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004414, 36.621895, 20.862709>,  <26.578100, 36.295067, 21.164196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004414, 36.621895, 20.862709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.241852, 36.931393, 20.951218>,  <26.384314, 37.117092, 21.004324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.241852, 36.931393, 20.951218>,  <26.004414, 36.621895, 20.862709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241852, 36.931393, 20.951218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375018, 0.509227, -0.774628,
		-0.712045, 0.376833, 0.592444,
		0.593594, 0.773747, 0.221273,
		26.419930, 37.163517, 21.017599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587473, 37.266346, 20.865786>,  <26.004414, 36.621895, 20.862709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587473, 37.266346, 20.865786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.965832, 37.377193, 20.798281>,  <26.192846, 37.443703, 20.757778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.965832, 37.377193, 20.798281>,  <25.587473, 37.266346, 20.865786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965832, 37.377193, 20.798281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307736, 0.601370, -0.737328,
		-0.102839, 0.749372, 0.654114,
		0.945898, 0.277121, -0.168764,
		26.249601, 37.460331, 20.747652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593851, 38.028507, 20.664312>,  <25.587473, 37.266346, 20.865786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593851, 38.028507, 20.664312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.947729, 37.897755, 20.531364>,  <26.160055, 37.819305, 20.451595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.947729, 37.897755, 20.531364>,  <25.593851, 38.028507, 20.664312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947729, 37.897755, 20.531364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163136, 0.450805, -0.877589,
		0.436697, 0.830618, 0.345498,
		0.884693, -0.326877, -0.332369,
		26.213137, 37.799690, 20.431654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927502, 38.532150, 20.299854>,  <25.593851, 38.028507, 20.664312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927502, 38.532150, 20.299854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.088343, 38.194221, 20.158669>,  <26.184847, 37.991463, 20.073957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.088343, 38.194221, 20.158669>,  <25.927502, 38.532150, 20.299854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088343, 38.194221, 20.158669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159693, 0.314880, -0.935601,
		0.901561, 0.432573, -0.008299,
		0.402102, -0.844826, -0.352962,
		26.208973, 37.940773, 20.052780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328487, 38.796291, 19.791073>,  <25.927502, 38.532150, 20.299854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328487, 38.796291, 19.791073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.303377, 38.403824, 19.718016>,  <26.288311, 38.168343, 19.674181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.303377, 38.403824, 19.718016>,  <26.328487, 38.796291, 19.791073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303377, 38.403824, 19.718016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057700, 0.179129, -0.982132,
		0.996358, -0.072193, 0.045369,
		-0.062776, -0.981173, -0.182643,
		26.284544, 38.109470, 19.663223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002270, 39.144169, 19.842941>,  <26.328487, 38.796291, 19.791073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002270, 39.144169, 19.842941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.168669, 39.505009, 19.797050>,  <27.268507, 39.721512, 19.769516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.168669, 39.505009, 19.797050>,  <27.002270, 39.144169, 19.842941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168669, 39.505009, 19.797050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072223, 0.158539, 0.984708,
		0.906494, -0.401349, 0.131104,
		0.415996, 0.902100, -0.114728,
		27.293468, 39.775639, 19.762632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484785, 39.299641, 20.443037>,  <27.002270, 39.144169, 19.842941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484785, 39.299641, 20.443037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.409624, 39.659363, 20.285080>,  <27.364529, 39.875198, 20.190306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.409624, 39.659363, 20.285080>,  <27.484785, 39.299641, 20.443037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409624, 39.659363, 20.285080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042310, 0.409092, 0.911511,
		0.981276, 0.154566, -0.114918,
		-0.187901, 0.899307, -0.394893,
		27.353254, 39.929153, 20.166613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968897, 39.668011, 20.730715>,  <27.484785, 39.299641, 20.443037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968897, 39.668011, 20.730715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.691658, 39.936504, 20.625595>,  <27.525314, 40.097599, 20.562523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.691658, 39.936504, 20.625595>,  <27.968897, 39.668011, 20.730715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691658, 39.936504, 20.625595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004342, 0.368453, 0.929636,
		0.720832, 0.643186, -0.258288,
		-0.693096, 0.671233, -0.262800,
		27.483728, 40.137875, 20.546755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128349, 40.203781, 21.174286>,  <27.968897, 39.668011, 20.730715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128349, 40.203781, 21.174286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.772615, 40.299999, 21.018738>,  <27.559175, 40.357731, 20.925409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.772615, 40.299999, 21.018738>,  <28.128349, 40.203781, 21.174286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772615, 40.299999, 21.018738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249633, 0.457111, 0.853659,
		0.383098, 0.856265, -0.346478,
		-0.889336, 0.240543, -0.388870,
		27.505814, 40.372162, 20.902077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104670, 40.952312, 21.191343>,  <28.128349, 40.203781, 21.174286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104670, 40.952312, 21.191343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.739712, 40.788662, 21.186310>,  <27.520737, 40.690472, 21.183290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.739712, 40.788662, 21.186310>,  <28.104670, 40.952312, 21.191343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739712, 40.788662, 21.186310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213724, 0.449959, 0.867098,
		-0.349088, 0.793823, -0.497979,
		-0.912392, -0.409123, -0.012584,
		27.465994, 40.665924, 21.182535>
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
