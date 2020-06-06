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
	<24.083328, 35.384438, 34.857487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186138, 34.997879, 34.855991>,  <24.247824, 34.765945, 34.855095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186138, 34.997879, 34.855991>,  <24.083328, 35.384438, 34.857487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186138, 34.997879, 34.855991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919095, 0.245636, -0.308105,
		0.298670, 0.075756, 0.951345,
		0.257025, -0.966398, -0.003737,
		24.263247, 34.707958, 34.854870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647886, 35.073921, 35.383533>,  <24.083328, 35.384438, 34.857487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647886, 35.073921, 35.383533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647121, 34.904446, 35.021210>,  <24.646662, 34.802761, 34.803818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647121, 34.904446, 35.021210>,  <24.647886, 35.073921, 35.383533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647121, 34.904446, 35.021210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951485, 0.277937, -0.132014,
		0.307690, -0.862112, 0.402603,
		-0.001913, -0.423690, -0.905805,
		24.646547, 34.777340, 34.749470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257675, 34.549816, 35.321285>,  <24.647886, 35.073921, 35.383533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257675, 34.549816, 35.321285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130600, 34.761658, 35.006683>,  <25.054354, 34.888763, 34.817921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130600, 34.761658, 35.006683>,  <25.257675, 34.549816, 35.321285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130600, 34.761658, 35.006683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941419, 0.275160, -0.194980,
		0.113153, -0.802374, -0.585996,
		-0.317690, 0.529606, -0.786506,
		25.035294, 34.920540, 34.770733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938086, 34.798195, 35.106335>,  <25.257675, 34.549816, 35.321285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938086, 34.798195, 35.106335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110914, 34.900303, 35.452316>,  <26.214611, 34.961567, 35.659904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110914, 34.900303, 35.452316>,  <25.938086, 34.798195, 35.106335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110914, 34.900303, 35.452316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787288, -0.574574, -0.223703,
		0.439876, 0.777626, -0.449229,
		0.432072, 0.255271, 0.864957,
		26.240536, 34.976883, 35.711803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642344, 35.057777, 34.995861>,  <25.938086, 34.798195, 35.106335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642344, 35.057777, 34.995861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618473, 34.866547, 35.346378>,  <26.604151, 34.751808, 35.556686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618473, 34.866547, 35.346378>,  <26.642344, 35.057777, 34.995861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618473, 34.866547, 35.346378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822122, -0.521445, -0.228494,
		0.566174, 0.706782, 0.424153,
		-0.059678, -0.478073, 0.876290,
		26.600571, 34.723125, 35.609264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302551, 34.974842, 35.159462>,  <26.642344, 35.057777, 34.995861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302551, 34.974842, 35.159462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073589, 34.724892, 35.371834>,  <26.936213, 34.574921, 35.499256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073589, 34.724892, 35.371834>,  <27.302551, 34.974842, 35.159462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073589, 34.724892, 35.371834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627467, -0.750633, -0.206967,
		0.527864, 0.214675, 0.821751,
		-0.572403, -0.624871, 0.530933,
		26.901869, 34.537430, 35.531113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884912, 34.612514, 34.842316>,  <27.302551, 34.974842, 35.159462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884912, 34.612514, 34.842316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987936, 34.989052, 34.929531>,  <28.049749, 35.214973, 34.981861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987936, 34.989052, 34.929531>,  <27.884912, 34.612514, 34.842316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987936, 34.989052, 34.929531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858566, 0.326473, -0.395322,
		-0.443316, -0.085379, 0.892290,
		0.257557, 0.941343, 0.218034,
		28.065203, 35.271454, 34.994942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063801, 34.062229, 35.168552>,  <27.884912, 34.612514, 34.842316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063801, 34.062229, 35.168552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421648, 33.903713, 35.251122>,  <28.636356, 33.808605, 35.300663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421648, 33.903713, 35.251122>,  <28.063801, 34.062229, 35.168552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421648, 33.903713, 35.251122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364491, 0.380011, -0.850140,
		0.258459, 0.835791, 0.484410,
		0.894620, -0.396289, 0.206420,
		28.690035, 33.784828, 35.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564854, 34.562088, 35.205883>,  <28.063801, 34.062229, 35.168552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564854, 34.562088, 35.205883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787664, 34.243378, 35.112183>,  <28.921350, 34.052151, 35.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.787664, 34.243378, 35.112183>,  <28.564854, 34.562088, 35.205883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787664, 34.243378, 35.112183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328425, 0.470402, -0.819060,
		0.762796, 0.379305, 0.523707,
		0.557027, -0.796774, -0.234248,
		28.954773, 34.004345, 35.041908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184027, 34.853683, 34.911472>,  <28.564854, 34.562088, 35.205883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184027, 34.853683, 34.911472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166294, 34.473614, 34.788055>,  <29.155655, 34.245571, 34.714005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166294, 34.473614, 34.788055>,  <29.184027, 34.853683, 34.911472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166294, 34.473614, 34.788055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298118, 0.282189, -0.911864,
		0.953499, -0.132407, 0.270755,
		-0.044334, -0.950178, -0.308539,
		29.152994, 34.188560, 34.695492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799892, 34.794518, 34.610748>,  <29.184027, 34.853683, 34.911472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799892, 34.794518, 34.610748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573147, 34.494175, 34.475170>,  <29.437099, 34.313969, 34.393826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573147, 34.494175, 34.475170>,  <29.799892, 34.794518, 34.610748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573147, 34.494175, 34.475170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326081, 0.173325, -0.929317,
		0.756528, -0.637320, 0.146587,
		-0.566865, -0.750854, -0.338944,
		29.403088, 34.268917, 34.373486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245356, 34.436886, 34.161228>,  <29.799892, 34.794518, 34.610748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245356, 34.436886, 34.161228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873032, 34.359398, 34.037251>,  <29.649637, 34.312904, 33.962864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873032, 34.359398, 34.037251>,  <30.245356, 34.436886, 34.161228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873032, 34.359398, 34.037251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274522, 0.189325, -0.942759,
		0.241317, -0.962614, -0.123044,
		-0.930808, -0.193725, -0.309946,
		29.593788, 34.301281, 33.944267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755886, 34.663696, 33.657932>,  <30.245356, 34.436886, 34.161228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755886, 34.663696, 33.657932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992073, 34.725330, 33.341045>,  <30.133785, 34.762310, 33.150913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992073, 34.725330, 33.341045>,  <29.755886, 34.663696, 33.657932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992073, 34.725330, 33.341045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351274, -0.932816, 0.080382,
		-0.726604, -0.325747, -0.604926,
		0.590469, 0.154089, -0.792214,
		30.169214, 34.771557, 33.103382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120785, 34.998589, 33.196583>,  <29.755886, 34.663696, 33.657932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120785, 34.998589, 33.196583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049425, 34.610249, 33.132545>,  <29.006609, 34.377247, 33.094124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049425, 34.610249, 33.132545>,  <29.120785, 34.998589, 33.196583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049425, 34.610249, 33.132545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380919, -0.218157, 0.898503,
		-0.907234, 0.099312, 0.408734,
		-0.178400, -0.970847, -0.160089,
		28.995905, 34.318993, 33.084518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725243, 34.671162, 33.788097>,  <29.120785, 34.998589, 33.196583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725243, 34.671162, 33.788097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947351, 34.401321, 33.593536>,  <29.080618, 34.239418, 33.476799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947351, 34.401321, 33.593536>,  <28.725243, 34.671162, 33.788097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947351, 34.401321, 33.593536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370794, -0.322700, 0.870848,
		-0.744435, -0.663915, 0.070950,
		0.555273, -0.674598, -0.486404,
		29.113934, 34.198944, 33.447617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400232, 34.051823, 33.906960>,  <28.725243, 34.671162, 33.788097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400232, 34.051823, 33.906960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792383, 34.001537, 33.846222>,  <29.027674, 33.971367, 33.809780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792383, 34.001537, 33.846222>,  <28.400232, 34.051823, 33.906960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792383, 34.001537, 33.846222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062695, -0.531451, 0.844766,
		-0.186893, -0.837709, -0.513141,
		0.980378, -0.125710, -0.151844,
		29.086496, 33.963825, 33.800667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583714, 33.353294, 33.911800>,  <28.400232, 34.051823, 33.906960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583714, 33.353294, 33.911800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857016, 33.612209, 34.046963>,  <29.020998, 33.767559, 34.128059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857016, 33.612209, 34.046963>,  <28.583714, 33.353294, 33.911800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857016, 33.612209, 34.046963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121722, -0.355325, 0.926784,
		0.719962, -0.674361, -0.163989,
		0.683256, 0.647288, 0.337905,
		29.061993, 33.806396, 34.148335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107023, 32.939716, 34.214417>,  <28.583714, 33.353294, 33.911800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107023, 32.939716, 34.214417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112783, 33.300266, 34.387539>,  <29.116240, 33.516594, 34.491413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112783, 33.300266, 34.387539>,  <29.107023, 32.939716, 34.214417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112783, 33.300266, 34.387539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138323, -0.426894, 0.893660,
		0.990282, -0.072734, 0.118534,
		0.014398, 0.901372, 0.432806,
		29.117104, 33.570679, 34.517380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631060, 32.937756, 34.719177>,  <29.107023, 32.939716, 34.214417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631060, 32.937756, 34.719177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402433, 33.250332, 34.819309>,  <29.265257, 33.437878, 34.879387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402433, 33.250332, 34.819309>,  <29.631060, 32.937756, 34.719177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402433, 33.250332, 34.819309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157862, -0.404095, 0.900992,
		0.805228, 0.475459, 0.354327,
		-0.571567, 0.781439, 0.250332,
		29.230963, 33.484764, 34.894409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786747, 33.122818, 35.337959>,  <29.631060, 32.937756, 34.719177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786747, 33.122818, 35.337959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425646, 33.290817, 35.300785>,  <29.208984, 33.391617, 35.278481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425646, 33.290817, 35.300785>,  <29.786747, 33.122818, 35.337959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425646, 33.290817, 35.300785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257345, -0.354201, 0.899063,
		0.344687, 0.835549, 0.427841,
		-0.902754, 0.419999, -0.092936,
		29.154819, 33.416817, 35.272903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507143, 33.048477, 35.230976>,  <29.786747, 33.122818, 35.337959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507143, 33.048477, 35.230976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691133, 32.694901, 35.264614>,  <30.801527, 32.482754, 35.284798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691133, 32.694901, 35.264614>,  <30.507143, 33.048477, 35.230976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691133, 32.694901, 35.264614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886668, 0.452203, -0.096604,
		0.047365, 0.118997, 0.991764,
		0.459974, -0.883942, 0.084092,
		30.829126, 32.429718, 35.289841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991953, 33.003113, 35.758385>,  <30.507143, 33.048477, 35.230976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991953, 33.003113, 35.758385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084856, 32.768829, 35.447773>,  <31.140598, 32.628258, 35.261406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084856, 32.768829, 35.447773>,  <30.991953, 33.003113, 35.758385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084856, 32.768829, 35.447773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868476, 0.484358, -0.105578,
		0.437956, -0.649876, 0.621174,
		0.232258, -0.585713, -0.776529,
		31.154533, 32.593117, 35.214813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746214, 32.611835, 35.796211>,  <30.991953, 33.003113, 35.758385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746214, 32.611835, 35.796211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609051, 32.693832, 35.429520>,  <31.526752, 32.743031, 35.209503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609051, 32.693832, 35.429520>,  <31.746214, 32.611835, 35.796211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609051, 32.693832, 35.429520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900806, 0.348504, -0.259023,
		0.266386, -0.914616, -0.304164,
		-0.342909, 0.204993, -0.916729,
		31.506178, 32.755329, 35.154503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271481, 32.836941, 35.474392>,  <31.746214, 32.611835, 35.796211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271481, 32.836941, 35.474392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034203, 32.895966, 35.157825>,  <31.891836, 32.931381, 34.967884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034203, 32.895966, 35.157825>,  <32.271481, 32.836941, 35.474392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034203, 32.895966, 35.157825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792160, 0.282256, -0.541123,
		0.143534, -0.947922, -0.284326,
		-0.593195, 0.147562, -0.791420,
		31.856243, 32.940235, 34.920399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418644, 32.327385, 34.911659>,  <32.271481, 32.836941, 35.474392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418644, 32.327385, 34.911659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268963, 32.682495, 34.804462>,  <32.179153, 32.895561, 34.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268963, 32.682495, 34.804462>,  <32.418644, 32.327385, 34.911659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268963, 32.682495, 34.804462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756541, 0.125132, -0.641863,
		-0.536298, -0.442935, -0.718466,
		-0.374207, 0.887779, -0.267990,
		32.156700, 32.948830, 34.724064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491322, 32.374554, 34.182037>,  <32.418644, 32.327385, 34.911659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491322, 32.374554, 34.182037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485893, 32.747295, 34.327065>,  <32.482635, 32.970940, 34.414082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485893, 32.747295, 34.327065>,  <32.491322, 32.374554, 34.182037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485893, 32.747295, 34.327065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583967, 0.301723, -0.753622,
		-0.811664, 0.201503, -0.548268,
		-0.013568, 0.931858, 0.362568,
		32.481823, 33.026852, 34.435837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181698, 32.862492, 33.691387>,  <32.491322, 32.374554, 34.182037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181698, 32.862492, 33.691387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453899, 33.045876, 33.920029>,  <32.617222, 33.155907, 34.057213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453899, 33.045876, 33.920029>,  <32.181698, 32.862492, 33.691387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453899, 33.045876, 33.920029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480064, 0.310397, -0.820483,
		-0.553584, 0.832746, -0.008866,
		0.680502, 0.458462, 0.571602,
		32.658051, 33.183414, 34.091511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257084, 33.568020, 33.576317>,  <32.181698, 32.862492, 33.691387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257084, 33.568020, 33.576317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599586, 33.381088, 33.664349>,  <32.805088, 33.268929, 33.717167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599586, 33.381088, 33.664349>,  <32.257084, 33.568020, 33.576317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599586, 33.381088, 33.664349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327314, 0.161260, -0.931054,
		0.399619, 0.869252, 0.291043,
		0.856254, -0.467329, 0.220075,
		32.856464, 33.240891, 33.730370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953712, 33.788609, 33.256641>,  <32.257084, 33.568020, 33.576317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953712, 33.788609, 33.256641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071449, 33.411766, 33.320881>,  <33.142094, 33.185661, 33.359425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071449, 33.411766, 33.320881>,  <32.953712, 33.788609, 33.256641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071449, 33.411766, 33.320881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389676, -0.035135, -0.920281,
		0.872647, 0.333464, 0.356775,
		0.294346, -0.942108, 0.160603,
		33.159752, 33.129135, 33.369061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568554, 33.699329, 32.837242>,  <32.953712, 33.788609, 33.256641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568554, 33.699329, 32.837242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447193, 33.329575, 32.929722>,  <33.374374, 33.107723, 32.985210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447193, 33.329575, 32.929722>,  <33.568554, 33.699329, 32.837242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447193, 33.329575, 32.929722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454285, -0.353613, -0.817670,
		0.837598, -0.143055, 0.527223,
		-0.303405, -0.924388, 0.231197,
		33.356171, 33.052258, 32.999081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134319, 33.343941, 33.011463>,  <33.568554, 33.699329, 32.837242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134319, 33.343941, 33.011463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824356, 33.154652, 32.843857>,  <33.638378, 33.041080, 32.743294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824356, 33.154652, 32.843857>,  <34.134319, 33.343941, 33.011463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824356, 33.154652, 32.843857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548532, -0.174108, -0.817801,
		0.314047, -0.863567, 0.394495,
		-0.774911, -0.473221, -0.419016,
		33.591881, 33.012684, 32.718151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398220, 32.743382, 32.718731>,  <34.134319, 33.343941, 33.011463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398220, 32.743382, 32.718731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071758, 32.886959, 32.537601>,  <33.875881, 32.973106, 32.428925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071758, 32.886959, 32.537601>,  <34.398220, 32.743382, 32.718731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071758, 32.886959, 32.537601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352401, -0.311851, -0.882362,
		-0.457933, -0.879719, 0.128027,
		-0.816156, 0.358946, -0.452821,
		33.826912, 32.994644, 32.401756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207275, 32.222023, 32.145111>,  <34.398220, 32.743382, 32.718731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207275, 32.222023, 32.145111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020313, 32.565723, 32.061954>,  <33.908134, 32.771942, 32.012062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020313, 32.565723, 32.061954>,  <34.207275, 32.222023, 32.145111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020313, 32.565723, 32.061954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180527, -0.137434, -0.973921,
		-0.865413, -0.492748, -0.090880,
		-0.467408, 0.859250, -0.207892,
		33.880093, 32.823498, 31.999586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554337, 32.121552, 31.882395>,  <34.207275, 32.222023, 32.145111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554337, 32.121552, 31.882395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679226, 32.461292, 31.712166>,  <33.754162, 32.665138, 31.610029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679226, 32.461292, 31.712166>,  <33.554337, 32.121552, 31.882395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679226, 32.461292, 31.712166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314219, -0.330424, -0.889992,
		-0.896538, 0.411603, 0.163715,
		0.312228, 0.849354, -0.425571,
		33.772896, 32.716099, 31.584494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026482, 31.542807, 32.118771>,  <33.554337, 32.121552, 31.882395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026482, 31.542807, 32.118771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841702, 31.198835, 32.031940>,  <32.730831, 30.992453, 31.979841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841702, 31.198835, 32.031940>,  <33.026482, 31.542807, 32.118771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841702, 31.198835, 32.031940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775911, 0.273290, 0.568573,
		-0.429608, 0.431086, -0.793475,
		-0.461953, -0.859929, -0.217076,
		32.703117, 30.940857, 31.966818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393097, 31.802164, 31.966045>,  <33.026482, 31.542807, 32.118771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393097, 31.802164, 31.966045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376038, 31.413719, 32.059959>,  <32.365803, 31.180653, 32.116310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376038, 31.413719, 32.059959>,  <32.393097, 31.802164, 31.966045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376038, 31.413719, 32.059959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907481, 0.135956, 0.397485,
		-0.417923, -0.196112, -0.887063,
		-0.042650, -0.971111, 0.234787,
		32.363243, 31.122387, 32.130394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799042, 31.524464, 31.622902>,  <32.393097, 31.802164, 31.966045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799042, 31.524464, 31.622902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883217, 31.303478, 31.945517>,  <31.933722, 31.170887, 32.139084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883217, 31.303478, 31.945517>,  <31.799042, 31.524464, 31.622902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883217, 31.303478, 31.945517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893337, 0.226418, 0.388180,
		-0.397069, -0.802197, -0.445887,
		0.210440, -0.552462, 0.806536,
		31.946348, 31.137739, 32.187477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258783, 31.099218, 31.663525>,  <31.799042, 31.524464, 31.622902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258783, 31.099218, 31.663525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444632, 31.150816, 32.013950>,  <31.556141, 31.181774, 32.224205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444632, 31.150816, 32.013950>,  <31.258783, 31.099218, 31.663525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444632, 31.150816, 32.013950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836356, 0.388961, 0.386288,
		-0.290926, -0.912179, 0.288603,
		0.464619, 0.128994, 0.876065,
		31.584017, 31.189514, 32.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814436, 30.764791, 32.115330>,  <31.258783, 31.099218, 31.663525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814436, 30.764791, 32.115330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044434, 31.000843, 32.342003>,  <31.182432, 31.142473, 32.478008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044434, 31.000843, 32.342003>,  <30.814436, 30.764791, 32.115330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044434, 31.000843, 32.342003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799833, 0.551218, 0.237541,
		-0.172188, -0.589839, 0.788949,
		0.574994, 0.590126, 0.566686,
		31.216932, 31.177881, 32.512009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441103, 30.804041, 32.709496>,  <30.814436, 30.764791, 32.115330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441103, 30.804041, 32.709496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686390, 31.112589, 32.641430>,  <30.833561, 31.297718, 32.600590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686390, 31.112589, 32.641430>,  <30.441103, 30.804041, 32.709496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686390, 31.112589, 32.641430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724502, 0.635064, 0.267939,
		0.314744, -0.041021, 0.948290,
		0.613216, 0.771370, -0.170163,
		30.870354, 31.344000, 32.590382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359056, 31.658808, 32.640923>,  <30.441103, 30.804041, 32.709496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359056, 31.658808, 32.640923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485487, 31.807417, 32.990108>,  <30.561346, 31.896582, 33.199619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485487, 31.807417, 32.990108>,  <30.359056, 31.658808, 32.640923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485487, 31.807417, 32.990108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873868, -0.472266, -0.115412,
		0.369393, 0.799334, -0.473934,
		0.316076, 0.371523, 0.872964,
		30.580309, 31.918873, 33.251999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875742, 32.260735, 32.622555>,  <30.359056, 31.658808, 32.640923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875742, 32.260735, 32.622555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892252, 31.983145, 32.910080>,  <30.902157, 31.816591, 33.082596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892252, 31.983145, 32.910080>,  <30.875742, 32.260735, 32.622555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892252, 31.983145, 32.910080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794993, -0.412969, -0.444345,
		0.605212, 0.589793, 0.534661,
		0.041273, -0.693975, 0.718816,
		30.904634, 31.774952, 33.125725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449781, 32.331932, 32.997105>,  <30.875742, 32.260735, 32.622555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449781, 32.331932, 32.997105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314032, 31.955740, 32.989868>,  <31.232582, 31.730026, 32.985527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314032, 31.955740, 32.989868>,  <31.449781, 32.331932, 32.997105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314032, 31.955740, 32.989868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889796, -0.314730, -0.330465,
		0.305102, -0.128247, 0.943645,
		-0.339375, -0.940477, -0.018089,
		31.212219, 31.673597, 32.984440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932308, 31.935272, 33.285324>,  <31.449781, 32.331932, 32.997105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932308, 31.935272, 33.285324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705164, 31.674805, 33.083923>,  <31.568876, 31.518524, 32.963081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705164, 31.674805, 33.083923>,  <31.932308, 31.935272, 33.285324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705164, 31.674805, 33.083923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818401, -0.512086, -0.260743,
		-0.088048, -0.560131, 0.823711,
		-0.567861, -0.651169, -0.503500,
		31.534805, 31.479454, 32.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197891, 31.244423, 33.486740>,  <31.932308, 31.935272, 33.285324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197891, 31.244423, 33.486740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014389, 31.235931, 33.131416>,  <31.904287, 31.230837, 32.918221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014389, 31.235931, 33.131416>,  <32.197891, 31.244423, 33.486740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014389, 31.235931, 33.131416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757855, -0.531272, -0.378690,
		-0.463894, -0.846935, 0.259813,
		-0.458757, -0.021228, -0.888308,
		31.876762, 31.229563, 32.864925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293781, 30.605669, 33.291092>,  <32.197891, 31.244423, 33.486740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293781, 30.605669, 33.291092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201191, 30.786715, 32.946636>,  <32.145638, 30.895342, 32.739964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201191, 30.786715, 32.946636>,  <32.293781, 30.605669, 33.291092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201191, 30.786715, 32.946636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762706, -0.465055, -0.449448,
		-0.603904, -0.760831, -0.237564,
		-0.231474, 0.452615, -0.861139,
		32.131748, 30.922499, 32.688293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244865, 30.089743, 32.830471>,  <32.293781, 30.605669, 33.291092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244865, 30.089743, 32.830471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358803, 30.435432, 32.664593>,  <32.427166, 30.642847, 32.565063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358803, 30.435432, 32.664593>,  <32.244865, 30.089743, 32.830471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358803, 30.435432, 32.664593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706799, -0.481602, -0.518165,
		-0.647532, -0.145512, -0.748017,
		0.284847, 0.864226, -0.414700,
		32.444256, 30.694700, 32.540184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394203, 29.992552, 32.104816>,  <32.244865, 30.089743, 32.830471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394203, 29.992552, 32.104816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600140, 30.328436, 32.173893>,  <32.723701, 30.529966, 32.215340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600140, 30.328436, 32.173893>,  <32.394203, 29.992552, 32.104816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600140, 30.328436, 32.173893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746890, -0.340466, -0.571173,
		-0.420824, 0.423047, -0.802458,
		0.514842, 0.839711, 0.172694,
		32.754593, 30.580349, 32.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897243, 30.205084, 32.496414>,  <32.394203, 29.992552, 32.104816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897243, 30.205084, 32.496414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197174, 30.039120, 32.290268>,  <33.377132, 29.939541, 32.166580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197174, 30.039120, 32.290268>,  <32.897243, 30.205084, 32.496414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197174, 30.039120, 32.290268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383622, 0.361999, -0.849583,
		0.539065, 0.834749, 0.112268,
		0.749829, -0.414912, -0.515368,
		33.422123, 29.914646, 32.135658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462955, 29.738308, 32.938374>,  <32.897243, 30.205084, 32.496414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462955, 29.738308, 32.938374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735718, 30.011398, 32.833385>,  <33.899376, 30.175253, 32.770393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735718, 30.011398, 32.833385>,  <33.462955, 29.738308, 32.938374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735718, 30.011398, 32.833385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291497, 0.075453, 0.953591,
		0.670847, -0.726767, -0.147561,
		0.681905, 0.682728, -0.262468,
		33.940289, 30.216217, 32.754646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087353, 29.510363, 33.106358>,  <33.462955, 29.738308, 32.938374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087353, 29.510363, 33.106358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151699, 29.903347, 33.068626>,  <34.190308, 30.139137, 33.045990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151699, 29.903347, 33.068626>,  <34.087353, 29.510363, 33.106358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151699, 29.903347, 33.068626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450547, 0.011933, 0.892673,
		0.878140, -0.186097, -0.440724,
		0.160865, 0.982459, -0.094325,
		34.199959, 30.198084, 33.040329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817375, 29.711658, 33.250164>,  <34.087353, 29.510363, 33.106358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817375, 29.711658, 33.250164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626560, 30.054384, 33.328457>,  <34.512074, 30.260019, 33.375431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626560, 30.054384, 33.328457>,  <34.817375, 29.711658, 33.250164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626560, 30.054384, 33.328457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243192, -0.085326, 0.966218,
		0.844569, 0.508519, -0.167667,
		-0.477034, 0.856813, 0.195731,
		34.483452, 30.311428, 33.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141464, 29.970116, 33.765148>,  <34.817375, 29.711658, 33.250164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141464, 29.970116, 33.765148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802639, 30.181864, 33.784153>,  <34.599346, 30.308912, 33.795555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802639, 30.181864, 33.784153>,  <35.141464, 29.970116, 33.765148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802639, 30.181864, 33.784153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013093, -0.068576, 0.997560,
		0.531336, 0.845615, 0.051157,
		-0.847060, 0.529369, 0.047508,
		34.548519, 30.340675, 33.798405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251488, 30.651056, 34.084755>,  <35.141464, 29.970116, 33.765148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251488, 30.651056, 34.084755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895386, 30.480854, 34.149731>,  <34.681725, 30.378733, 34.188717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895386, 30.480854, 34.149731>,  <35.251488, 30.651056, 34.084755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895386, 30.480854, 34.149731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207824, -0.062147, 0.976190,
		-0.405277, 0.902820, 0.143757,
		-0.890258, -0.425503, 0.162441,
		34.628307, 30.353203, 34.198463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077381, 31.000242, 34.694340>,  <35.251488, 30.651056, 34.084755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077381, 31.000242, 34.694340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813473, 31.086288, 34.406330>,  <34.655128, 31.137917, 34.233524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813473, 31.086288, 34.406330>,  <35.077381, 31.000242, 34.694340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813473, 31.086288, 34.406330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541508, -0.800433, 0.257054,
		-0.521035, 0.559494, 0.644585,
		-0.659767, 0.215114, -0.720024,
		34.615543, 31.150822, 34.190323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777683, 31.319822, 35.221546>,  <35.077381, 31.000242, 34.694340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777683, 31.319822, 35.221546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982372, 31.286531, 35.563591>,  <35.105186, 31.266558, 35.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982372, 31.286531, 35.563591>,  <34.777683, 31.319822, 35.221546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982372, 31.286531, 35.563591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237215, 0.942921, 0.233729,
		-0.825751, -0.322450, 0.462775,
		0.511726, -0.083225, 0.855108,
		35.135891, 31.261564, 35.820122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241020, 31.361015, 35.690296>,  <34.777683, 31.319822, 35.221546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241020, 31.361015, 35.690296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601032, 31.450174, 35.840099>,  <34.817039, 31.503670, 35.929981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601032, 31.450174, 35.840099>,  <34.241020, 31.361015, 35.690296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601032, 31.450174, 35.840099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379199, 0.824075, 0.420842,
		-0.214815, -0.520784, 0.826220,
		0.900035, 0.222899, 0.374504,
		34.871044, 31.517044, 35.952450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380077, 30.703327, 35.719322>,  <34.241020, 31.361015, 35.690296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380077, 30.703327, 35.719322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022186, 30.625967, 35.558296>,  <33.807453, 30.579550, 35.461681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022186, 30.625967, 35.558296>,  <34.380077, 30.703327, 35.719322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022186, 30.625967, 35.558296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421723, -0.069124, -0.904086,
		0.147025, -0.978681, 0.143409,
		-0.894725, -0.193403, -0.402570,
		33.753769, 30.567947, 35.437527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378216, 30.132298, 35.236725>,  <34.380077, 30.703327, 35.719322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378216, 30.132298, 35.236725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125252, 30.427315, 35.141994>,  <33.973473, 30.604324, 35.085155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125252, 30.427315, 35.141994>,  <34.378216, 30.132298, 35.236725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125252, 30.427315, 35.141994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267675, -0.078826, -0.960280,
		-0.726914, -0.670686, -0.147571,
		-0.632414, 0.737541, -0.236825,
		33.935528, 30.648577, 35.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867191, 29.951164, 34.673977>,  <34.378216, 30.132298, 35.236725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867191, 29.951164, 34.673977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898670, 30.349823, 34.682968>,  <33.917557, 30.589018, 34.688362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898670, 30.349823, 34.682968>,  <33.867191, 29.951164, 34.673977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898670, 30.349823, 34.682968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213053, 0.005210, -0.977027,
		-0.973866, 0.081680, -0.211928,
		0.078699, 0.996645, 0.022476,
		33.922279, 30.648817, 34.689713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379177, 30.241570, 34.180576>,  <33.867191, 29.951164, 34.673977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379177, 30.241570, 34.180576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688557, 30.492151, 34.219219>,  <33.874184, 30.642500, 34.242405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688557, 30.492151, 34.219219>,  <33.379177, 30.241570, 34.180576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688557, 30.492151, 34.219219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056897, 0.083182, -0.994909,
		-0.631300, 0.775008, 0.028694,
		0.773449, 0.626453, 0.096608,
		33.920589, 30.680088, 34.248203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406803, 30.957926, 33.845272>,  <33.379177, 30.241570, 34.180576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406803, 30.957926, 33.845272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771038, 30.792604, 33.846924>,  <33.989578, 30.693411, 33.847916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771038, 30.792604, 33.846924>,  <33.406803, 30.957926, 33.845272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771038, 30.792604, 33.846924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102902, 0.217023, -0.970728,
		0.400312, 0.884353, 0.240147,
		0.910583, -0.413305, 0.004125,
		34.044212, 30.668613, 33.848160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895054, 31.404797, 33.447750>,  <33.406803, 30.957926, 33.845272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895054, 31.404797, 33.447750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053799, 31.037840, 33.459709>,  <34.149044, 30.817665, 33.466885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053799, 31.037840, 33.459709>,  <33.895054, 31.404797, 33.447750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053799, 31.037840, 33.459709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061914, -0.005744, -0.998065,
		0.915788, 0.397944, 0.054520,
		0.396861, -0.917392, 0.029899,
		34.172855, 30.762623, 33.468678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430222, 31.458462, 33.009197>,  <33.895054, 31.404797, 33.447750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430222, 31.458462, 33.009197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383083, 31.061262, 33.012352>,  <34.354801, 30.822943, 33.014244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383083, 31.061262, 33.012352>,  <34.430222, 31.458462, 33.009197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383083, 31.061262, 33.012352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020944, -0.005455, -0.999766,
		0.992812, -0.117979, -0.020154,
		-0.117842, -0.993001, 0.007887,
		34.347733, 30.763361, 33.014717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781925, 31.171762, 32.448032>,  <34.430222, 31.458462, 33.009197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781925, 31.171762, 32.448032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527367, 30.877821, 32.541832>,  <34.374630, 30.701456, 32.598110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527367, 30.877821, 32.541832>,  <34.781925, 31.171762, 32.448032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527367, 30.877821, 32.541832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192021, -0.143511, -0.970841,
		0.747079, -0.662869, -0.049777,
		-0.636397, -0.734853, 0.234499,
		34.336449, 30.657366, 32.612183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955318, 30.457954, 32.083878>,  <34.781925, 31.171762, 32.448032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955318, 30.457954, 32.083878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559715, 30.455290, 32.142963>,  <34.322353, 30.453691, 32.178417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559715, 30.455290, 32.142963>,  <34.955318, 30.457954, 32.083878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559715, 30.455290, 32.142963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143105, -0.208421, -0.967513,
		0.037233, -0.978017, 0.205176,
		-0.989007, -0.006662, 0.147720,
		34.263012, 30.453291, 32.187279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602192, 29.730656, 31.879999>,  <34.955318, 30.457954, 32.083878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602192, 29.730656, 31.879999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387871, 30.057186, 31.793713>,  <34.259277, 30.253103, 31.741940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387871, 30.057186, 31.793713>,  <34.602192, 29.730656, 31.879999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387871, 30.057186, 31.793713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020603, -0.268048, -0.963185,
		-0.844095, -0.511629, 0.160438,
		-0.535798, 0.816325, -0.215717,
		34.227131, 30.302084, 31.728998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122799, 29.389698, 31.506502>,  <34.602192, 29.730656, 31.879999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122799, 29.389698, 31.506502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134262, 29.776707, 31.406036>,  <34.141140, 30.008911, 31.345757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134262, 29.776707, 31.406036>,  <34.122799, 29.389698, 31.506502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134262, 29.776707, 31.406036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086026, -0.252722, -0.963707,
		-0.995881, 0.006009, -0.090474,
		0.028656, 0.967520, -0.251164,
		34.142860, 30.066963, 31.330687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633389, 29.495085, 30.910746>,  <34.122799, 29.389698, 31.506502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633389, 29.495085, 30.910746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914711, 29.779243, 30.900171>,  <34.083504, 29.949738, 30.893827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914711, 29.779243, 30.900171>,  <33.633389, 29.495085, 30.910746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914711, 29.779243, 30.900171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005481, -0.042605, -0.999077,
		-0.710865, 0.702513, -0.033858,
		0.703307, 0.710395, -0.026436,
		34.125702, 29.992361, 30.892241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312702, 29.976963, 30.444777>,  <33.633389, 29.495085, 30.910746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312702, 29.976963, 30.444777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697311, 30.085480, 30.462095>,  <33.928078, 30.150591, 30.472486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697311, 30.085480, 30.462095>,  <33.312702, 29.976963, 30.444777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697311, 30.085480, 30.462095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021741, 0.232251, -0.972413,
		-0.273865, 0.934055, 0.229212,
		0.961522, 0.271293, 0.043299,
		33.985767, 30.166868, 30.475084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295597, 30.620344, 30.346321>,  <33.312702, 29.976963, 30.444777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295597, 30.620344, 30.346321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666962, 30.513653, 30.242851>,  <33.889778, 30.449638, 30.180769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666962, 30.513653, 30.242851>,  <33.295597, 30.620344, 30.346321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666962, 30.513653, 30.242851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189494, 0.258947, -0.947121,
		0.319607, 0.928333, 0.189865,
		0.928409, -0.266728, -0.258674,
		33.945484, 30.433634, 30.165249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598354, 31.178318, 29.875027>,  <33.295597, 30.620344, 30.346321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598354, 31.178318, 29.875027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801056, 30.840366, 29.806467>,  <33.922676, 30.637596, 29.765331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801056, 30.840366, 29.806467>,  <33.598354, 31.178318, 29.875027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801056, 30.840366, 29.806467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089410, 0.249254, -0.964302,
		0.857441, 0.473340, 0.201851,
		0.506755, -0.844880, -0.171399,
		33.953083, 30.586903, 29.755047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261677, 31.435545, 29.441170>,  <33.598354, 31.178318, 29.875027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261677, 31.435545, 29.441170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215843, 31.040241, 29.400743>,  <34.188343, 30.803059, 29.376488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215843, 31.040241, 29.400743>,  <34.261677, 31.435545, 29.441170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215843, 31.040241, 29.400743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163872, 0.081541, -0.983106,
		0.979804, -0.129209, 0.152605,
		-0.114583, -0.988259, -0.101068,
		34.181469, 30.743763, 29.370422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829823, 31.231728, 29.069590>,  <34.261677, 31.435545, 29.441170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829823, 31.231728, 29.069590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552814, 30.947906, 29.017515>,  <34.386608, 30.777613, 28.986271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552814, 30.947906, 29.017515>,  <34.829823, 31.231728, 29.069590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552814, 30.947906, 29.017515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121013, 0.063645, -0.990608,
		0.711177, -0.701770, 0.041790,
		-0.692519, -0.709555, -0.130187,
		34.345058, 30.735041, 28.978458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997658, 30.898590, 28.433828>,  <34.829823, 31.231728, 29.069590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997658, 30.898590, 28.433828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611977, 30.819151, 28.504114>,  <34.380569, 30.771488, 28.546286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611977, 30.819151, 28.504114>,  <34.997658, 30.898590, 28.433828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611977, 30.819151, 28.504114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166730, -0.061234, -0.984099,
		0.206199, -0.978166, 0.025930,
		-0.964201, -0.198597, 0.175716,
		34.322716, 30.759571, 28.556829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875557, 30.282763, 28.023499>,  <34.997658, 30.898590, 28.433828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875557, 30.282763, 28.023499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529293, 30.474369, 28.081713>,  <34.321537, 30.589333, 28.116642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529293, 30.474369, 28.081713>,  <34.875557, 30.282763, 28.023499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529293, 30.474369, 28.081713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054101, 0.199496, -0.978404,
		-0.497705, -0.854836, -0.146780,
		-0.865657, 0.479016, 0.145538,
		34.269596, 30.618074, 28.125374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364697, 29.918684, 27.626591>,  <34.875557, 30.282763, 28.023499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364697, 29.918684, 27.626591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193733, 30.278652, 27.661150>,  <34.091156, 30.494633, 27.681885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193733, 30.278652, 27.661150>,  <34.364697, 29.918684, 27.626591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193733, 30.278652, 27.661150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047942, 0.072870, -0.996188,
		-0.902785, -0.429924, 0.011999,
		-0.427411, 0.899919, 0.086398,
		34.065510, 30.548628, 27.687069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723400, 29.942896, 27.125759>,  <34.364697, 29.918684, 27.626591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723400, 29.942896, 27.125759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820221, 30.319206, 27.220715>,  <33.878311, 30.544992, 27.277689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820221, 30.319206, 27.220715>,  <33.723400, 29.942896, 27.125759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820221, 30.319206, 27.220715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153435, 0.278701, -0.948042,
		-0.958055, 0.193049, 0.211807,
		0.242049, 0.940775, 0.237390,
		33.892838, 30.601439, 27.291931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408821, 30.334913, 26.684200>,  <33.723400, 29.942896, 27.125759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408821, 30.334913, 26.684200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652191, 30.634064, 26.790409>,  <33.798214, 30.813553, 26.854134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652191, 30.634064, 26.790409>,  <33.408821, 30.334913, 26.684200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652191, 30.634064, 26.790409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006965, 0.339595, -0.940546,
		-0.793580, 0.570403, 0.211827,
		0.608426, 0.747874, 0.265523,
		33.834721, 30.858425, 26.870066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058239, 30.946608, 26.355003>,  <33.408821, 30.334913, 26.684200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058239, 30.946608, 26.355003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445030, 31.007521, 26.436747>,  <33.677105, 31.044069, 26.485792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445030, 31.007521, 26.436747>,  <33.058239, 30.946608, 26.355003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445030, 31.007521, 26.436747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120149, 0.434752, -0.892499,
		-0.224758, 0.887581, 0.402100,
		0.966979, 0.152284, 0.204356,
		33.735123, 31.053205, 26.498053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129452, 31.617441, 26.080498>,  <33.058239, 30.946608, 26.355003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129452, 31.617441, 26.080498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514290, 31.518820, 26.127113>,  <33.745193, 31.459646, 26.155083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514290, 31.518820, 26.127113>,  <33.129452, 31.617441, 26.080498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514290, 31.518820, 26.127113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190758, 0.303043, -0.933690,
		0.194889, 0.920530, 0.338589,
		0.962097, -0.246554, 0.116539,
		33.802917, 31.444853, 26.162075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579956, 32.212955, 26.144791>,  <33.129452, 31.617441, 26.080498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579956, 32.212955, 26.144791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807667, 31.912039, 26.012138>,  <33.944294, 31.731487, 25.932547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807667, 31.912039, 26.012138>,  <33.579956, 32.212955, 26.144791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807667, 31.912039, 26.012138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205786, 0.520916, -0.828431,
		0.795975, 0.403361, 0.451357,
		0.569276, -0.752294, -0.331630,
		33.978451, 31.686350, 25.912649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262699, 32.524048, 25.981026>,  <33.579956, 32.212955, 26.144791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262699, 32.524048, 25.981026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261917, 32.178146, 25.780151>,  <34.261448, 31.970604, 25.659626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261917, 32.178146, 25.780151>,  <34.262699, 32.524048, 25.981026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261917, 32.178146, 25.780151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260029, 0.484471, -0.835268,
		0.965599, -0.132218, 0.223914,
		-0.001957, -0.864758, -0.502185,
		34.261330, 31.918718, 25.629496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885544, 32.534756, 25.513342>,  <34.262699, 32.524048, 25.981026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885544, 32.534756, 25.513342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601318, 32.307327, 25.347534>,  <34.430782, 32.170872, 25.248049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601318, 32.307327, 25.347534>,  <34.885544, 32.534756, 25.513342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601318, 32.307327, 25.347534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216655, 0.383701, -0.897683,
		0.669448, -0.727668, -0.149460,
		-0.710563, -0.568571, -0.414520,
		34.388149, 32.136757, 25.223179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171516, 32.522881, 24.916180>,  <34.885544, 32.534756, 25.513342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171516, 32.522881, 24.916180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802799, 32.380539, 24.854647>,  <34.581570, 32.295135, 24.817726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802799, 32.380539, 24.854647>,  <35.171516, 32.522881, 24.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802799, 32.380539, 24.854647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040365, 0.306552, -0.950998,
		0.385571, -0.882834, -0.268214,
		-0.921795, -0.355851, -0.153833,
		34.526260, 32.273785, 24.808496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136654, 31.928848, 24.490677>,  <35.171516, 32.522881, 24.916180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136654, 31.928848, 24.490677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769653, 32.086609, 24.470095>,  <34.549454, 32.181263, 24.457745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769653, 32.086609, 24.470095>,  <35.136654, 31.928848, 24.490677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769653, 32.086609, 24.470095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066987, 0.025697, -0.997423,
		-0.392061, -0.918580, -0.049996,
		-0.917497, 0.394400, -0.051458,
		34.494404, 32.204929, 24.454657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879787, 31.562492, 23.988033>,  <35.136654, 31.928848, 24.490677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879787, 31.562492, 23.988033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602375, 31.850424, 23.999777>,  <34.435928, 32.023182, 24.006823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602375, 31.850424, 23.999777>,  <34.879787, 31.562492, 23.988033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602375, 31.850424, 23.999777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048027, -0.005533, -0.998831,
		-0.718825, -0.694129, 0.038409,
		-0.693530, 0.719829, 0.029359,
		34.394318, 32.066372, 24.008585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658894, 31.542789, 23.303171>,  <34.879787, 31.562492, 23.988033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658894, 31.542789, 23.303171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516342, 31.891670, 23.437191>,  <34.430813, 32.100998, 23.517603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516342, 31.891670, 23.437191>,  <34.658894, 31.542789, 23.303171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516342, 31.891670, 23.437191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087329, 0.325930, -0.941352,
		-0.930252, -0.364736, -0.039986,
		-0.356378, 0.872203, 0.335049,
		34.409428, 32.153332, 23.537706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026737, 31.742580, 22.928175>,  <34.658894, 31.542789, 23.303171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026737, 31.742580, 22.928175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168045, 32.085209, 23.078634>,  <34.252831, 32.290787, 23.168909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168045, 32.085209, 23.078634>,  <34.026737, 31.742580, 22.928175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168045, 32.085209, 23.078634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055275, 0.382258, -0.922401,
		-0.933886, 0.346650, 0.087694,
		0.353272, 0.856570, 0.376147,
		34.274025, 32.342178, 23.191479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669960, 32.255394, 22.551809>,  <34.026737, 31.742580, 22.928175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669960, 32.255394, 22.551809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012379, 32.416458, 22.681454>,  <34.217831, 32.513096, 22.759239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012379, 32.416458, 22.681454>,  <33.669960, 32.255394, 22.551809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012379, 32.416458, 22.681454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087010, 0.505832, -0.858233,
		-0.509519, 0.762890, 0.397982,
		0.856049, 0.402657, 0.324110,
		34.269192, 32.537254, 22.778687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656097, 32.958031, 22.496367>,  <33.669960, 32.255394, 22.551809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656097, 32.958031, 22.496367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047497, 32.876266, 22.485348>,  <34.282337, 32.827206, 22.478737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047497, 32.876266, 22.485348>,  <33.656097, 32.958031, 22.496367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047497, 32.876266, 22.485348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079498, 0.496994, -0.864105,
		0.190327, 0.843334, 0.502557,
		0.978497, -0.204415, -0.027548,
		34.341045, 32.814941, 22.477083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988438, 33.533527, 22.298910>,  <33.656097, 32.958031, 22.496367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988438, 33.533527, 22.298910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280514, 33.274330, 22.212265>,  <34.455761, 33.118813, 22.160278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280514, 33.274330, 22.212265>,  <33.988438, 33.533527, 22.298910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280514, 33.274330, 22.212265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138822, 0.451135, -0.881593,
		0.668988, 0.613663, 0.419372,
		0.730194, -0.647993, -0.216614,
		34.499573, 33.079933, 22.147282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464642, 33.895809, 22.061792>,  <33.988438, 33.533527, 22.298910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464642, 33.895809, 22.061792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630074, 33.567883, 21.903376>,  <34.729332, 33.371128, 21.808325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630074, 33.567883, 21.903376>,  <34.464642, 33.895809, 22.061792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630074, 33.567883, 21.903376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161897, 0.494277, -0.854096,
		0.895958, 0.289119, 0.337150,
		0.413581, -0.819817, -0.396044,
		34.754147, 33.321938, 21.784563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981674, 34.141174, 21.616917>,  <34.464642, 33.895809, 22.061792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981674, 34.141174, 21.616917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930462, 33.764626, 21.492060>,  <34.899734, 33.538696, 21.417145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930462, 33.764626, 21.492060>,  <34.981674, 34.141174, 21.616917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930462, 33.764626, 21.492060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178372, 0.287744, -0.940950,
		0.975598, -0.176149, 0.131074,
		-0.128032, -0.941369, -0.312142,
		34.892052, 33.482216, 21.398417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578751, 33.982254, 21.191887>,  <34.981674, 34.141174, 21.616917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578751, 33.982254, 21.191887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310596, 33.701588, 21.095337>,  <35.149704, 33.533188, 21.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310596, 33.701588, 21.095337>,  <35.578751, 33.982254, 21.191887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310596, 33.701588, 21.095337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074902, 0.259641, -0.962796,
		0.738227, -0.663519, -0.121502,
		-0.670381, -0.701661, -0.241373,
		35.109482, 33.491089, 21.022924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876595, 33.443321, 20.750896>,  <35.578751, 33.982254, 21.191887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876595, 33.443321, 20.750896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485207, 33.455967, 20.669313>,  <35.250374, 33.463554, 20.620363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485207, 33.455967, 20.669313>,  <35.876595, 33.443321, 20.750896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485207, 33.455967, 20.669313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203818, 0.303568, -0.930755,
		0.032491, -0.952285, -0.303475,
		-0.978469, 0.031613, -0.203956,
		35.191666, 33.465450, 20.608128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833832, 33.548214, 19.993980>,  <35.876595, 33.443321, 20.750896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833832, 33.548214, 19.993980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453117, 33.621120, 20.092684>,  <35.224689, 33.664864, 20.151905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453117, 33.621120, 20.092684>,  <35.833832, 33.548214, 19.993980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453117, 33.621120, 20.092684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170095, 0.355856, -0.918931,
		-0.255304, -0.916594, -0.307694,
		-0.951781, 0.182269, 0.246759,
		35.167583, 33.675800, 20.166712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511230, 33.383945, 19.351265>,  <35.833832, 33.548214, 19.993980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511230, 33.383945, 19.351265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259670, 33.627495, 19.544659>,  <35.108734, 33.773624, 19.660696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259670, 33.627495, 19.544659>,  <35.511230, 33.383945, 19.351265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259670, 33.627495, 19.544659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067206, 0.662103, -0.746393,
		-0.774576, -0.436914, -0.457317,
		-0.628901, 0.608873, 0.483486,
		35.070999, 33.810158, 19.689705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034435, 33.560932, 18.878918>,  <35.511230, 33.383945, 19.351265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034435, 33.560932, 18.878918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990639, 33.850052, 19.151848>,  <34.964359, 34.023525, 19.315607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990639, 33.850052, 19.151848>,  <35.034435, 33.560932, 18.878918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990639, 33.850052, 19.151848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054005, 0.689766, -0.722015,
		-0.992519, -0.042208, -0.114560,
		-0.109495, 0.722801, 0.682327,
		34.957790, 34.066891, 19.356546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881470, 34.136555, 18.474453>,  <35.034435, 33.560932, 18.878918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881470, 34.136555, 18.474453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965714, 34.309883, 18.824968>,  <35.016262, 34.413879, 19.035276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965714, 34.309883, 18.824968>,  <34.881470, 34.136555, 18.474453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965714, 34.309883, 18.824968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154183, 0.870449, -0.467489,
		-0.965334, 0.233568, 0.116518,
		0.210614, 0.433317, 0.876287,
		35.028896, 34.439877, 19.087854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466007, 34.821041, 18.515676>,  <34.881470, 34.136555, 18.474453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466007, 34.821041, 18.515676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797794, 34.823017, 18.739090>,  <34.996868, 34.824203, 18.873138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797794, 34.823017, 18.739090>,  <34.466007, 34.821041, 18.515676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797794, 34.823017, 18.739090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332450, 0.799185, -0.500780,
		-0.448843, 0.601065, 0.661256,
		0.829468, 0.004937, 0.558533,
		35.046635, 34.824497, 18.906651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537212, 35.453995, 18.764359>,  <34.466007, 34.821041, 18.515676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537212, 35.453995, 18.764359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893959, 35.273499, 18.751951>,  <35.108006, 35.165199, 18.744507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893959, 35.273499, 18.751951>,  <34.537212, 35.453995, 18.764359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893959, 35.273499, 18.751951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311626, 0.662724, -0.680945,
		0.327827, 0.597644, 0.731677,
		0.891862, -0.451242, -0.031018,
		35.161518, 35.138126, 18.742645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988438, 36.063854, 18.822866>,  <34.537212, 35.453995, 18.764359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988438, 36.063854, 18.822866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171749, 35.737427, 18.682003>,  <35.281734, 35.541569, 18.597485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171749, 35.737427, 18.682003>,  <34.988438, 36.063854, 18.822866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171749, 35.737427, 18.682003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252297, 0.499357, -0.828848,
		0.852250, 0.290991, 0.434734,
		0.458275, -0.816068, -0.352160,
		35.309231, 35.492607, 18.576355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653572, 36.258656, 18.677868>,  <34.988438, 36.063854, 18.822866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653572, 36.258656, 18.677868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590405, 35.929615, 18.459368>,  <35.552502, 35.732189, 18.328268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590405, 35.929615, 18.459368>,  <35.653572, 36.258656, 18.677868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590405, 35.929615, 18.459368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229864, 0.507368, -0.830506,
		0.960324, -0.256719, 0.108961,
		-0.157923, -0.822601, -0.546249,
		35.543026, 35.682835, 18.295494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211502, 36.302265, 18.289827>,  <35.653572, 36.258656, 18.677868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211502, 36.302265, 18.289827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936398, 36.078133, 18.105213>,  <35.771336, 35.943653, 17.994444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936398, 36.078133, 18.105213>,  <36.211502, 36.302265, 18.289827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936398, 36.078133, 18.105213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224675, 0.440261, -0.869305,
		0.690298, -0.701566, -0.176900,
		-0.687757, -0.560334, -0.461536,
		35.730072, 35.910034, 17.966753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534008, 36.072853, 17.722614>,  <36.211502, 36.302265, 18.289827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534008, 36.072853, 17.722614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150436, 36.026066, 17.619255>,  <35.920292, 35.997993, 17.557240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150436, 36.026066, 17.619255>,  <36.534008, 36.072853, 17.722614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150436, 36.026066, 17.619255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217118, 0.283507, -0.934068,
		0.182517, -0.951810, -0.246466,
		-0.958930, -0.116971, -0.258400,
		35.862759, 35.990974, 17.541735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570511, 35.767807, 17.041918>,  <36.534008, 36.072853, 17.722614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570511, 35.767807, 17.041918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216831, 35.950241, 17.082273>,  <36.004623, 36.059704, 17.106487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216831, 35.950241, 17.082273>,  <36.570511, 35.767807, 17.041918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216831, 35.950241, 17.082273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112013, 0.416711, -0.902112,
		-0.453484, -0.786344, -0.419542,
		-0.884198, 0.456087, 0.100891,
		35.951572, 36.087067, 17.112541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300068, 35.733883, 16.407164>,  <36.570511, 35.767807, 17.041918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300068, 35.733883, 16.407164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043705, 36.005318, 16.550692>,  <35.889889, 36.168179, 16.636808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043705, 36.005318, 16.550692>,  <36.300068, 35.733883, 16.407164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043705, 36.005318, 16.550692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051154, 0.428651, -0.902021,
		-0.765912, -0.596467, -0.240013,
		-0.640908, 0.678590, 0.358821,
		35.851433, 36.208897, 16.658339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680004, 35.681057, 15.970499>,  <36.300068, 35.733883, 16.407164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680004, 35.681057, 15.970499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692963, 36.040585, 16.145350>,  <35.700737, 36.256302, 16.250259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692963, 36.040585, 16.145350>,  <35.680004, 35.681057, 15.970499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692963, 36.040585, 16.145350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175866, 0.435657, -0.882765,
		-0.983881, -0.048280, 0.172184,
		0.032393, 0.898817, 0.437126,
		35.702679, 36.310230, 16.276487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218750, 36.104130, 15.612274>,  <35.680004, 35.681057, 15.970499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218750, 36.104130, 15.612274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466137, 36.364639, 15.788157>,  <35.614571, 36.520943, 15.893685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466137, 36.364639, 15.788157>,  <35.218750, 36.104130, 15.612274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466137, 36.364639, 15.788157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004476, 0.562468, -0.826807,
		-0.785795, 0.509388, 0.350786,
		0.618471, 0.651271, 0.439705,
		35.651680, 36.560020, 15.920068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915745, 36.772285, 15.747136>,  <35.218750, 36.104130, 15.612274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915745, 36.772285, 15.747136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309856, 36.807938, 15.688796>,  <35.546326, 36.829330, 15.653792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309856, 36.807938, 15.688796>,  <34.915745, 36.772285, 15.747136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309856, 36.807938, 15.688796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170668, 0.560260, -0.810543,
		0.009466, 0.823507, 0.567228,
		0.985283, 0.089135, -0.145850,
		35.605442, 36.834679, 15.645041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214725, 37.524818, 15.810273>,  <34.915745, 36.772285, 15.747136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214725, 37.524818, 15.810273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398247, 37.284389, 15.548520>,  <35.508358, 37.140133, 15.391468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398247, 37.284389, 15.548520>,  <35.214725, 37.524818, 15.810273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398247, 37.284389, 15.548520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162199, 0.667440, -0.726784,
		0.873610, 0.439589, 0.208728,
		0.458800, -0.601070, -0.654383,
		35.535885, 37.104069, 15.352205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802586, 37.791481, 15.588890>,  <35.214725, 37.524818, 15.810273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802586, 37.791481, 15.588890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641544, 37.593529, 15.280865>,  <35.544918, 37.474758, 15.096049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641544, 37.593529, 15.280865>,  <35.802586, 37.791481, 15.588890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641544, 37.593529, 15.280865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074805, 0.820655, -0.566506,
		0.912314, -0.285681, -0.293377,
		-0.402602, -0.494886, -0.770065,
		35.520763, 37.445065, 15.049846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424030, 38.210091, 15.815558>,  <35.802586, 37.791481, 15.588890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424030, 38.210091, 15.815558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278439, 38.314842, 15.458025>,  <36.191082, 38.377693, 15.243505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278439, 38.314842, 15.458025>,  <36.424030, 38.210091, 15.815558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278439, 38.314842, 15.458025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923833, 0.020620, 0.382241,
		0.118530, 0.964881, 0.234425,
		-0.363983, 0.261877, -0.893833,
		36.169243, 38.393406, 15.189875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787418, 38.623688, 15.343637>,  <36.424030, 38.210091, 15.815558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787418, 38.623688, 15.343637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182682, 38.662239, 15.295877>,  <37.419838, 38.685368, 15.267220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182682, 38.662239, 15.295877>,  <36.787418, 38.623688, 15.343637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182682, 38.662239, 15.295877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138285, 0.896566, -0.420769,
		0.066497, 0.432297, 0.899276,
		0.988158, 0.096377, -0.119399,
		37.479130, 38.691151, 15.260056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019348, 39.261570, 15.615191>,  <36.787418, 38.623688, 15.343637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019348, 39.261570, 15.615191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294754, 39.172894, 15.338989>,  <37.459999, 39.119686, 15.173268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294754, 39.172894, 15.338989>,  <37.019348, 39.261570, 15.615191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294754, 39.172894, 15.338989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215764, 0.846398, -0.486885,
		0.692380, 0.484215, 0.534926,
		0.688517, -0.221692, -0.690505,
		37.501308, 39.106384, 15.131838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494205, 39.768669, 15.539720>,  <37.019348, 39.261570, 15.615191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494205, 39.768669, 15.539720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428497, 39.634850, 15.168539>,  <37.389072, 39.554558, 14.945831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428497, 39.634850, 15.168539>,  <37.494205, 39.768669, 15.539720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428497, 39.634850, 15.168539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126803, 0.925764, -0.356206,
		0.978231, -0.176182, -0.109656,
		-0.164273, -0.334547, -0.927951,
		37.379215, 39.534485, 14.890154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630661, 39.242699, 16.099613>,  <37.494205, 39.768669, 15.539720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630661, 39.242699, 16.099613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376312, 39.500851, 16.268919>,  <37.223705, 39.655743, 16.370502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376312, 39.500851, 16.268919>,  <37.630661, 39.242699, 16.099613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376312, 39.500851, 16.268919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354484, -0.731363, 0.582623,
		0.685575, 0.220431, 0.693828,
		-0.635868, 0.645383, 0.423265,
		37.185551, 39.694466, 16.395899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513016, 39.237522, 16.940844>,  <37.630661, 39.242699, 16.099613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513016, 39.237522, 16.940844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172165, 39.371696, 16.780161>,  <36.967655, 39.452202, 16.683752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172165, 39.371696, 16.780161>,  <37.513016, 39.237522, 16.940844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172165, 39.371696, 16.780161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519091, -0.639371, 0.567230,
		-0.066569, 0.691871, 0.718946,
		-0.852123, 0.335438, -0.401707,
		36.916527, 39.472328, 16.659649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138618, 39.684162, 17.295172>,  <37.513016, 39.237522, 16.940844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138618, 39.684162, 17.295172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887630, 39.466915, 17.071993>,  <36.737038, 39.336567, 16.938086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887630, 39.466915, 17.071993>,  <37.138618, 39.684162, 17.295172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887630, 39.466915, 17.071993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262112, -0.527411, 0.808168,
		-0.733195, 0.653347, 0.188579,
		-0.627473, -0.543116, -0.557945,
		36.699390, 39.303982, 16.904610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436443, 39.625362, 17.615032>,  <37.138618, 39.684162, 17.295172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436443, 39.625362, 17.615032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504940, 39.302620, 17.388880>,  <36.546036, 39.108974, 17.253189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504940, 39.302620, 17.388880>,  <36.436443, 39.625362, 17.615032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504940, 39.302620, 17.388880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166366, -0.589296, 0.790602,
		-0.971082, -0.041320, -0.235144,
		0.171237, -0.806860, -0.565381,
		36.556313, 39.060562, 17.219265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914623, 39.106258, 17.796936>,  <36.436443, 39.625362, 17.615032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914623, 39.106258, 17.796936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227871, 38.920742, 17.631229>,  <36.415821, 38.809433, 17.531805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227871, 38.920742, 17.631229>,  <35.914623, 39.106258, 17.796936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227871, 38.920742, 17.631229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067391, -0.725539, 0.684873,
		-0.618203, -0.508423, -0.599442,
		0.783124, -0.463788, -0.414267,
		36.462807, 38.781605, 17.506948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739922, 38.400177, 17.751396>,  <35.914623, 39.106258, 17.796936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739922, 38.400177, 17.751396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139019, 38.422989, 17.737228>,  <36.378479, 38.436676, 17.728727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139019, 38.422989, 17.737228>,  <35.739922, 38.400177, 17.751396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139019, 38.422989, 17.737228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061906, -0.577439, 0.814083,
		0.025974, -0.814439, -0.579667,
		0.997744, 0.057030, -0.035420,
		36.438343, 38.440098, 17.726603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916798, 37.787125, 17.987144>,  <35.739922, 38.400177, 17.751396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916798, 37.787125, 17.987144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263306, 37.985699, 18.009489>,  <36.471210, 38.104843, 18.022896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263306, 37.985699, 18.009489>,  <35.916798, 37.787125, 17.987144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263306, 37.985699, 18.009489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313532, -0.627323, 0.712856,
		0.388931, -0.600014, -0.699082,
		0.866274, 0.496436, 0.055861,
		36.523190, 38.134628, 18.026247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482719, 37.232979, 17.961632>,  <35.916798, 37.787125, 17.987144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482719, 37.232979, 17.961632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648079, 37.549858, 18.141199>,  <36.747295, 37.739986, 18.248940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648079, 37.549858, 18.141199>,  <36.482719, 37.232979, 17.961632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648079, 37.549858, 18.141199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227312, -0.567198, 0.791591,
		0.881721, -0.225198, -0.414554,
		0.413399, 0.792195, 0.448920,
		36.772099, 37.787518, 18.275875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995064, 36.908867, 18.337091>,  <36.482719, 37.232979, 17.961632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995064, 36.908867, 18.337091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948315, 37.262802, 18.517490>,  <36.920265, 37.475163, 18.625729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948315, 37.262802, 18.517490>,  <36.995064, 36.908867, 18.337091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948315, 37.262802, 18.517490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112498, -0.439390, 0.891224,
		0.986755, 0.154894, -0.048191,
		-0.116870, 0.884841, 0.450996,
		36.913254, 37.528255, 18.652790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521725, 36.958599, 18.812933>,  <36.995064, 36.908867, 18.337091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521725, 36.958599, 18.812933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228909, 37.199196, 18.940887>,  <37.053219, 37.343555, 19.017660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228909, 37.199196, 18.940887>,  <37.521725, 36.958599, 18.812933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228909, 37.199196, 18.940887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058366, -0.412448, 0.909110,
		0.678760, 0.684172, 0.266820,
		-0.732037, 0.601494, 0.319886,
		37.009296, 37.379642, 19.036854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713112, 37.226734, 19.358145>,  <37.521725, 36.958599, 18.812933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713112, 37.226734, 19.358145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320381, 37.293556, 19.394152>,  <37.084743, 37.333649, 19.415756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320381, 37.293556, 19.394152>,  <37.713112, 37.226734, 19.358145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320381, 37.293556, 19.394152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027242, -0.345361, 0.938074,
		0.187797, 0.923481, 0.334535,
		-0.981830, 0.167055, 0.090015,
		37.025833, 37.343674, 19.421156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591572, 37.457031, 20.053213>,  <37.713112, 37.226734, 19.358145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591572, 37.457031, 20.053213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246971, 37.297443, 19.927582>,  <37.040211, 37.201691, 19.852203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246971, 37.297443, 19.927582>,  <37.591572, 37.457031, 20.053213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246971, 37.297443, 19.927582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069702, -0.519778, 0.851453,
		-0.502953, 0.755418, 0.419979,
		-0.861499, -0.398967, -0.314078,
		36.988522, 37.177753, 19.833359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234791, 37.353992, 20.625410>,  <37.591572, 37.457031, 20.053213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234791, 37.353992, 20.625410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012527, 37.115063, 20.394085>,  <36.879169, 36.971706, 20.255289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012527, 37.115063, 20.394085>,  <37.234791, 37.353992, 20.625410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012527, 37.115063, 20.394085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112598, -0.635106, 0.764174,
		-0.823750, 0.489738, 0.285645,
		-0.555659, -0.597325, -0.578312,
		36.845829, 36.935863, 20.220591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549683, 37.174728, 21.008345>,  <37.234791, 37.353992, 20.625410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549683, 37.174728, 21.008345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675240, 36.888008, 20.759295>,  <36.750576, 36.715977, 20.609865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675240, 36.888008, 20.759295>,  <36.549683, 37.174728, 21.008345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675240, 36.888008, 20.759295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068721, -0.671201, 0.738083,
		-0.946968, -0.188893, -0.259946,
		0.313894, -0.716804, -0.622625,
		36.769409, 36.672966, 20.572508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235020, 36.689270, 21.296818>,  <36.549683, 37.174728, 21.008345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235020, 36.689270, 21.296818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435802, 36.487350, 21.015900>,  <36.556271, 36.366199, 20.847349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435802, 36.487350, 21.015900>,  <36.235020, 36.689270, 21.296818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435802, 36.487350, 21.015900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081013, -0.835871, 0.542915,
		-0.861095, -0.215621, -0.460461,
		0.501949, -0.504804, -0.702296,
		36.586388, 36.335911, 20.805212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808159, 36.181026, 21.047945>,  <36.235020, 36.689270, 21.296818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808159, 36.181026, 21.047945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198063, 36.096508, 21.019115>,  <36.432007, 36.045795, 21.001818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198063, 36.096508, 21.019115>,  <35.808159, 36.181026, 21.047945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198063, 36.096508, 21.019115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105864, -0.721703, 0.684060,
		-0.196555, -0.659165, -0.725857,
		0.974761, -0.211298, -0.072073,
		36.490490, 36.033119, 20.997494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801685, 35.404961, 20.849312>,  <35.808159, 36.181026, 21.047945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801685, 35.404961, 20.849312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134937, 35.547157, 21.018791>,  <36.334888, 35.632477, 21.120478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134937, 35.547157, 21.018791>,  <35.801685, 35.404961, 20.849312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134937, 35.547157, 21.018791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064003, -0.698954, 0.712297,
		0.549364, -0.620552, -0.559566,
		0.833128, 0.355496, 0.423697,
		36.384876, 35.653805, 21.145901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018726, 34.800571, 21.181175>,  <35.801685, 35.404961, 20.849312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018726, 34.800571, 21.181175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231361, 35.083138, 21.368101>,  <36.358944, 35.252678, 21.480257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231361, 35.083138, 21.368101>,  <36.018726, 34.800571, 21.181175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231361, 35.083138, 21.368101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141883, -0.618201, 0.773108,
		0.835033, -0.344673, -0.428859,
		0.531591, 0.706419, 0.467315,
		36.390839, 35.295063, 21.508295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424744, 34.395042, 21.500191>,  <36.018726, 34.800571, 21.181175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424744, 34.395042, 21.500191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490952, 34.729149, 21.709925>,  <36.530678, 34.929615, 21.835766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490952, 34.729149, 21.709925>,  <36.424744, 34.395042, 21.500191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490952, 34.729149, 21.709925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035279, -0.526312, 0.849559,
		0.985575, -0.159116, -0.057647,
		0.165519, 0.835271, 0.524334,
		36.540607, 34.979729, 21.867226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064240, 34.250443, 21.947695>,  <36.424744, 34.395042, 21.500191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064240, 34.250443, 21.947695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858749, 34.550331, 22.114548>,  <36.735455, 34.730267, 22.214661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858749, 34.550331, 22.114548>,  <37.064240, 34.250443, 21.947695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858749, 34.550331, 22.114548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122460, -0.417140, 0.900554,
		0.849172, 0.513717, 0.122483,
		-0.513723, 0.749726, 0.417133,
		36.704632, 34.775249, 22.239687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430767, 34.315582, 22.603600>,  <37.064240, 34.250443, 21.947695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430767, 34.315582, 22.603600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081120, 34.503010, 22.654749>,  <36.871330, 34.615467, 22.685438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081120, 34.503010, 22.654749>,  <37.430767, 34.315582, 22.603600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081120, 34.503010, 22.654749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097901, -0.427843, 0.898535,
		0.475737, 0.772911, 0.419861,
		-0.874123, 0.468571, 0.127872,
		36.818882, 34.643581, 22.693111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500961, 34.728539, 23.195053>,  <37.430767, 34.315582, 22.603600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500961, 34.728539, 23.195053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104908, 34.707291, 23.143183>,  <36.867275, 34.694542, 23.112061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104908, 34.707291, 23.143183>,  <37.500961, 34.728539, 23.195053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104908, 34.707291, 23.143183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118213, -0.180360, 0.976471,
		-0.075256, 0.982165, 0.172301,
		-0.990132, -0.053117, -0.129678,
		36.807869, 34.691357, 23.104279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102425, 35.068169, 23.718302>,  <37.500961, 34.728539, 23.195053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102425, 35.068169, 23.718302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807774, 34.829044, 23.591805>,  <36.630985, 34.685570, 23.515907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807774, 34.829044, 23.591805>,  <37.102425, 35.068169, 23.718302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807774, 34.829044, 23.591805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143656, -0.318624, 0.936932,
		-0.660869, 0.735596, 0.148827,
		-0.736624, -0.597810, -0.316242,
		36.586788, 34.649700, 23.496931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423908, 35.295799, 24.126869>,  <37.102425, 35.068169, 23.718302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423908, 35.295799, 24.126869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344429, 34.934608, 23.974476>,  <36.296741, 34.717892, 23.883039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344429, 34.934608, 23.974476>,  <36.423908, 35.295799, 24.126869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344429, 34.934608, 23.974476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365944, -0.292262, 0.883554,
		-0.909178, 0.314976, -0.272370,
		-0.198695, -0.902980, -0.380982,
		36.284821, 34.663715, 23.860182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694485, 35.157692, 24.345388>,  <36.423908, 35.295799, 24.126869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694485, 35.157692, 24.345388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880474, 34.810680, 24.274748>,  <35.992069, 34.602474, 24.232365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880474, 34.810680, 24.274748>,  <35.694485, 35.157692, 24.345388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880474, 34.810680, 24.274748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369178, -0.371303, 0.851963,
		-0.804676, -0.330946, -0.492921,
		0.464977, -0.867530, -0.176600,
		36.019966, 34.550423, 24.221767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158882, 34.563831, 24.455740>,  <35.694485, 35.157692, 24.345388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158882, 34.563831, 24.455740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531704, 34.436382, 24.524734>,  <35.755398, 34.359913, 24.566132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531704, 34.436382, 24.524734>,  <35.158882, 34.563831, 24.455740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531704, 34.436382, 24.524734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322626, -0.513209, 0.795317,
		-0.164886, -0.796928, -0.581136,
		0.932054, -0.318626, 0.172488,
		35.811321, 34.340794, 24.576481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036697, 33.898071, 24.663471>,  <35.158882, 34.563831, 24.455740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036697, 33.898071, 24.663471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405891, 33.986053, 24.789782>,  <35.627407, 34.038841, 24.865568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405891, 33.986053, 24.789782>,  <35.036697, 33.898071, 24.663471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405891, 33.986053, 24.789782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225124, -0.356898, 0.906611,
		0.312113, -0.907879, -0.279895,
		0.922987, 0.219954, 0.315778,
		35.682789, 34.052040, 24.884516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216408, 33.288532, 24.962154>,  <35.036697, 33.898071, 24.663471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216408, 33.288532, 24.962154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462837, 33.567650, 25.108324>,  <35.610695, 33.735123, 25.196026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462837, 33.567650, 25.108324>,  <35.216408, 33.288532, 24.962154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462837, 33.567650, 25.108324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172415, -0.333208, 0.926955,
		0.768589, -0.634075, -0.084970,
		0.616072, 0.697798, 0.365424,
		35.647659, 33.776989, 25.217951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724922, 32.967659, 25.368210>,  <35.216408, 33.288532, 24.962154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724922, 32.967659, 25.368210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753662, 33.337540, 25.517746>,  <35.770908, 33.559467, 25.607468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753662, 33.337540, 25.517746>,  <35.724922, 32.967659, 25.368210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753662, 33.337540, 25.517746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070310, -0.369182, 0.926694,
		0.994934, -0.092869, 0.038490,
		0.071852, 0.924706, 0.373841,
		35.775219, 33.614952, 25.629898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383339, 33.041035, 25.863586>,  <35.724922, 32.967659, 25.368210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383339, 33.041035, 25.863586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110802, 33.314960, 25.966976>,  <35.947281, 33.479317, 26.029009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110802, 33.314960, 25.966976>,  <36.383339, 33.041035, 25.863586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110802, 33.314960, 25.966976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067874, -0.292491, 0.953857,
		0.728812, 0.667445, 0.152805,
		-0.681341, 0.684811, 0.258473,
		35.906399, 33.520405, 26.044518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629829, 33.261921, 26.518383>,  <36.383339, 33.041035, 25.863586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629829, 33.261921, 26.518383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258907, 33.410755, 26.502089>,  <36.036354, 33.500057, 26.492311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258907, 33.410755, 26.502089>,  <36.629829, 33.261921, 26.518383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258907, 33.410755, 26.502089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077376, -0.084073, 0.993451,
		0.366223, 0.924384, 0.106752,
		-0.927305, 0.372084, -0.040736,
		35.980717, 33.522381, 26.489868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579346, 33.802422, 26.961142>,  <36.629829, 33.261921, 26.518383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579346, 33.802422, 26.961142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208145, 33.654434, 26.943497>,  <35.985424, 33.565643, 26.932911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208145, 33.654434, 26.943497>,  <36.579346, 33.802422, 26.961142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208145, 33.654434, 26.943497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031496, -0.040074, 0.998700,
		-0.371255, 0.928180, 0.025536,
		-0.927997, -0.369968, -0.044111,
		35.929745, 33.543446, 26.930264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260761, 34.094170, 27.504736>,  <36.579346, 33.802422, 26.961142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260761, 34.094170, 27.504736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000675, 33.806908, 27.405556>,  <35.844624, 33.634552, 27.346046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000675, 33.806908, 27.405556>,  <36.260761, 34.094170, 27.504736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000675, 33.806908, 27.405556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163314, -0.186615, 0.968764,
		-0.741993, 0.670395, 0.004055,
		-0.650211, -0.718154, -0.247952,
		35.805611, 33.591461, 27.331169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613487, 34.197487, 27.869366>,  <36.260761, 34.094170, 27.504736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613487, 34.197487, 27.869366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620750, 33.812141, 27.762331>,  <35.625107, 33.580933, 27.698111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620750, 33.812141, 27.762331>,  <35.613487, 34.197487, 27.869366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620750, 33.812141, 27.762331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410219, -0.251245, 0.876697,
		-0.911807, 0.093854, -0.399750,
		0.018154, -0.963363, -0.267587,
		35.626198, 33.523132, 27.682055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904099, 34.001122, 27.974319>,  <35.613487, 34.197487, 27.869366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904099, 34.001122, 27.974319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147522, 33.683773, 27.980253>,  <35.293575, 33.493362, 27.983812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147522, 33.683773, 27.980253>,  <34.904099, 34.001122, 27.974319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147522, 33.683773, 27.980253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337240, -0.241670, 0.909871,
		-0.718281, -0.558710, -0.414627,
		0.608557, -0.793371, 0.014832,
		35.330090, 33.445763, 27.984703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732708, 33.729103, 28.584574>,  <34.904099, 34.001122, 27.974319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732708, 33.729103, 28.584574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029827, 33.482498, 28.480141>,  <35.208099, 33.334538, 28.417480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029827, 33.482498, 28.480141>,  <34.732708, 33.729103, 28.584574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029827, 33.482498, 28.480141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039809, -0.429941, 0.901979,
		-0.668330, -0.659595, -0.343902,
		0.742799, -0.616510, -0.261085,
		35.252666, 33.297546, 28.401815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484249, 33.056889, 28.698450>,  <34.732708, 33.729103, 28.584574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484249, 33.056889, 28.698450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881973, 33.082619, 28.732433>,  <35.120605, 33.098057, 28.752823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881973, 33.082619, 28.732433>,  <34.484249, 33.056889, 28.698450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881973, 33.082619, 28.732433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039294, -0.519761, 0.853408,
		0.099054, -0.851887, -0.514273,
		0.994306, 0.064325, 0.084958,
		35.180264, 33.101917, 28.757921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673378, 32.447147, 28.964945>,  <34.484249, 33.056889, 28.698450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673378, 32.447147, 28.964945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023048, 32.620094, 29.053377>,  <35.232849, 32.723862, 29.106438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023048, 32.620094, 29.053377>,  <34.673378, 32.447147, 28.964945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023048, 32.620094, 29.053377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018354, -0.425521, 0.904763,
		0.485269, -0.794976, -0.364043,
		0.874172, 0.432371, 0.221083,
		35.285301, 32.749805, 29.119701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170048, 31.955612, 29.314802>,  <34.673378, 32.447147, 28.964945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170048, 31.955612, 29.314802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225224, 32.337124, 29.421593>,  <35.258327, 32.566032, 29.485666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225224, 32.337124, 29.421593>,  <35.170048, 31.955612, 29.314802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225224, 32.337124, 29.421593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095853, -0.255432, 0.962064,
		0.985792, -0.158295, 0.056189,
		0.137937, 0.953780, 0.266976,
		35.266605, 32.623257, 29.501686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565891, 31.973951, 29.853186>,  <35.170048, 31.955612, 29.314802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565891, 31.973951, 29.853186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412819, 32.342945, 29.873508>,  <35.320976, 32.564342, 29.885702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412819, 32.342945, 29.873508>,  <35.565891, 31.973951, 29.853186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412819, 32.342945, 29.873508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162402, -0.121303, 0.979240,
		0.909497, 0.366481, 0.196233,
		-0.382676, 0.922484, 0.050807,
		35.298016, 32.619690, 29.888750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063099, 32.315994, 30.270117>,  <35.565891, 31.973951, 29.853186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063099, 32.315994, 30.270117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721485, 32.523460, 30.286180>,  <35.516518, 32.647938, 30.295818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721485, 32.523460, 30.286180>,  <36.063099, 32.315994, 30.270117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721485, 32.523460, 30.286180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032531, -0.023801, 0.999187,
		0.519196, 0.854648, 0.003454,
		-0.854036, 0.518661, 0.040160,
		35.465275, 32.679058, 30.298229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152328, 32.919926, 30.682186>,  <36.063099, 32.315994, 30.270117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152328, 32.919926, 30.682186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760059, 32.841724, 30.685383>,  <35.524700, 32.794804, 30.687300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760059, 32.841724, 30.685383>,  <36.152328, 32.919926, 30.682186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760059, 32.841724, 30.685383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003266, 0.024477, 0.999695,
		-0.195642, 0.980397, -0.023366,
		-0.980670, -0.195506, 0.007991,
		35.465858, 32.783073, 30.687780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842693, 32.960938, 30.158413>,  <36.152328, 32.919926, 30.682186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842693, 32.960938, 30.158413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199219, 32.884384, 30.322817>,  <37.413136, 32.838451, 30.421459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199219, 32.884384, 30.322817>,  <36.842693, 32.960938, 30.158413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199219, 32.884384, 30.322817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442133, 0.166184, -0.881420,
		0.100388, 0.967344, 0.232741,
		0.891314, -0.191387, 0.411011,
		37.466614, 32.826969, 30.446119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226948, 33.516441, 29.935974>,  <36.842693, 32.960938, 30.158413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226948, 33.516441, 29.935974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487465, 33.232105, 30.042192>,  <37.643776, 33.061504, 30.105923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487465, 33.232105, 30.042192>,  <37.226948, 33.516441, 29.935974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487465, 33.232105, 30.042192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546932, 0.197175, -0.813626,
		0.526002, 0.675146, 0.517203,
		0.651296, -0.710844, 0.265545,
		37.682854, 33.018852, 30.121857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904045, 33.845695, 29.884968>,  <37.226948, 33.516441, 29.935974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904045, 33.845695, 29.884968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987980, 33.455788, 29.915388>,  <38.038342, 33.221844, 29.933640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987980, 33.455788, 29.915388>,  <37.904045, 33.845695, 29.884968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987980, 33.455788, 29.915388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707712, 0.097761, -0.699705,
		0.674619, 0.200648, 0.710373,
		0.209842, -0.974773, 0.076049,
		38.050934, 33.163357, 29.938204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544125, 33.785385, 30.167021>,  <37.904045, 33.845695, 29.884968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544125, 33.785385, 30.167021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487461, 33.452530, 29.952549>,  <38.453465, 33.252819, 29.823866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487461, 33.452530, 29.952549>,  <38.544125, 33.785385, 30.167021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487461, 33.452530, 29.952549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730149, 0.277916, -0.624216,
		0.668444, -0.479913, 0.568213,
		-0.141654, -0.832133, -0.536179,
		38.444965, 33.202888, 29.791695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208050, 33.492725, 30.086861>,  <38.544125, 33.785385, 30.167021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208050, 33.492725, 30.086861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976402, 33.352600, 29.792404>,  <38.837414, 33.268524, 29.615730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976402, 33.352600, 29.792404>,  <39.208050, 33.492725, 30.086861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976402, 33.352600, 29.792404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631185, 0.378828, -0.676827,
		0.515974, -0.856602, 0.001730,
		-0.579117, -0.350317, -0.736140,
		38.802666, 33.247505, 29.571562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692959, 33.140072, 29.577345>,  <39.208050, 33.492725, 30.086861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692959, 33.140072, 29.577345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356743, 33.184917, 29.365335>,  <39.155014, 33.211823, 29.238129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356743, 33.184917, 29.365335>,  <39.692959, 33.140072, 29.577345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356743, 33.184917, 29.365335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541206, 0.217662, -0.812231,
		0.024307, -0.969564, -0.243629,
		-0.840539, 0.112110, -0.530025,
		39.104580, 33.218552, 29.206327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827126, 32.777885, 28.966898>,  <39.692959, 33.140072, 29.577345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827126, 32.777885, 28.966898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517998, 33.012733, 28.870523>,  <39.332523, 33.153641, 28.812698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517998, 33.012733, 28.870523>,  <39.827126, 32.777885, 28.966898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517998, 33.012733, 28.870523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427153, 0.200439, -0.881682,
		-0.469358, -0.784294, -0.405692,
		-0.772815, 0.587117, -0.240936,
		39.286152, 33.188869, 28.798243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643970, 32.546497, 28.235306>,  <39.827126, 32.777885, 28.966898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643970, 32.546497, 28.235306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498909, 32.914684, 28.293573>,  <39.411873, 33.135597, 28.328535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498909, 32.914684, 28.293573>,  <39.643970, 32.546497, 28.235306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498909, 32.914684, 28.293573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489975, 0.321291, -0.810368,
		-0.792722, -0.222507, -0.567523,
		-0.362653, 0.920469, 0.145671,
		39.390114, 33.190826, 28.337275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503510, 32.698284, 27.545839>,  <39.643970, 32.546497, 28.235306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503510, 32.698284, 27.545839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505161, 33.050014, 27.736320>,  <39.506153, 33.261051, 27.850609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505161, 33.050014, 27.736320>,  <39.503510, 32.698284, 27.545839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505161, 33.050014, 27.736320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356404, 0.443640, -0.822289,
		-0.934323, 0.173117, -0.311563,
		0.004130, 0.879326, 0.476202,
		39.506401, 33.313812, 27.879181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090923, 33.200462, 27.135962>,  <39.503510, 32.698284, 27.545839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090923, 33.200462, 27.135962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318825, 33.454395, 27.344719>,  <39.455566, 33.606754, 27.469973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318825, 33.454395, 27.344719>,  <39.090923, 33.200462, 27.135962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318825, 33.454395, 27.344719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241322, 0.477812, -0.844665,
		-0.785584, 0.607197, 0.119037,
		0.569755, 0.634830, 0.521891,
		39.489750, 33.644844, 27.501286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951412, 33.750599, 26.809086>,  <39.090923, 33.200462, 27.135962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951412, 33.750599, 26.809086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305061, 33.826569, 26.979855>,  <39.517250, 33.872150, 27.082315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305061, 33.826569, 26.979855>,  <38.951412, 33.750599, 26.809086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305061, 33.826569, 26.979855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317810, 0.425359, -0.847389,
		-0.342532, 0.884873, 0.315709,
		0.884120, 0.189923, 0.426920,
		39.570297, 33.883545, 27.107931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049488, 34.436745, 26.659939>,  <38.951412, 33.750599, 26.809086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049488, 34.436745, 26.659939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412693, 34.317142, 26.777311>,  <39.630615, 34.245380, 26.847734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412693, 34.317142, 26.777311>,  <39.049488, 34.436745, 26.659939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412693, 34.317142, 26.777311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411881, 0.509179, -0.755705,
		0.076553, 0.807051, 0.585498,
		0.908016, -0.299007, 0.293430,
		39.685097, 34.227440, 26.865341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427040, 35.043766, 26.815144>,  <39.049488, 34.436745, 26.659939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427040, 35.043766, 26.815144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674156, 34.741993, 26.726450>,  <39.822426, 34.560928, 26.673233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674156, 34.741993, 26.726450>,  <39.427040, 35.043766, 26.815144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674156, 34.741993, 26.726450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395664, 0.541920, -0.741467,
		0.679551, 0.370335, 0.633294,
		0.617786, -0.754437, -0.221734,
		39.859493, 34.515663, 26.659929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027145, 35.346024, 26.600914>,  <39.427040, 35.043766, 26.815144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027145, 35.346024, 26.600914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989716, 34.981709, 26.440058>,  <39.967258, 34.763119, 26.343544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989716, 34.981709, 26.440058>,  <40.027145, 35.346024, 26.600914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989716, 34.981709, 26.440058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404621, 0.334264, -0.851205,
		0.909685, -0.242362, 0.337246,
		-0.093570, -0.910785, -0.402140,
		39.961643, 34.708473, 26.319416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508015, 35.324783, 26.143311>,  <40.027145, 35.346024, 26.600914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508015, 35.324783, 26.143311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264210, 35.040024, 26.003769>,  <40.117928, 34.869167, 25.920044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264210, 35.040024, 26.003769>,  <40.508015, 35.324783, 26.143311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264210, 35.040024, 26.003769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226682, 0.265169, -0.937177,
		0.759680, -0.650297, -0.000248,
		-0.609509, -0.711898, -0.348854,
		40.081356, 34.826454, 25.899113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776184, 35.072342, 25.546598>,  <40.508015, 35.324783, 26.143311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776184, 35.072342, 25.546598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408413, 34.927494, 25.485250>,  <40.187748, 34.840588, 25.448442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408413, 34.927494, 25.485250>,  <40.776184, 35.072342, 25.546598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408413, 34.927494, 25.485250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065741, 0.242978, -0.967802,
		0.387722, -0.899908, -0.199595,
		-0.919429, -0.362117, -0.153368,
		40.132584, 34.818859, 25.439240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775135, 34.738140, 24.908394>,  <40.776184, 35.072342, 25.546598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775135, 34.738140, 24.908394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390465, 34.816788, 24.984842>,  <40.159664, 34.863976, 25.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390465, 34.816788, 24.984842>,  <40.775135, 34.738140, 24.908394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390465, 34.816788, 24.984842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129244, 0.289703, -0.948350,
		-0.241834, -0.936703, -0.253188,
		-0.961671, 0.196621, 0.191123,
		40.101963, 34.875774, 25.042179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322384, 34.328121, 24.442417>,  <40.775135, 34.738140, 24.908394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322384, 34.328121, 24.442417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096405, 34.635178, 24.563457>,  <39.960819, 34.819412, 24.636082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096405, 34.635178, 24.563457>,  <40.322384, 34.328121, 24.442417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096405, 34.635178, 24.563457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232199, 0.204008, -0.951033,
		-0.791784, -0.607545, 0.062992,
		-0.564944, 0.767639, 0.302601,
		39.926922, 34.865471, 24.654238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730347, 34.241383, 23.948322>,  <40.322384, 34.328121, 24.442417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730347, 34.241383, 23.948322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743282, 34.616405, 24.086849>,  <39.751045, 34.841419, 24.169966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743282, 34.616405, 24.086849>,  <39.730347, 34.241383, 23.948322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743282, 34.616405, 24.086849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347319, 0.335446, -0.875697,
		-0.937189, -0.091963, 0.336480,
		0.032339, 0.937560, 0.346317,
		39.752983, 34.897675, 24.190744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201473, 34.518566, 23.609161>,  <39.730347, 34.241383, 23.948322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201473, 34.518566, 23.609161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355164, 34.861004, 23.747425>,  <39.447380, 35.066467, 23.830383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355164, 34.861004, 23.747425>,  <39.201473, 34.518566, 23.609161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355164, 34.861004, 23.747425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334048, 0.477941, -0.812394,
		-0.860686, 0.196678, 0.469613,
		0.384228, 0.856090, 0.345658,
		39.470432, 35.117832, 23.851122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617153, 35.110828, 23.628380>,  <39.201473, 34.518566, 23.609161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617153, 35.110828, 23.628380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982937, 35.271706, 23.610430>,  <39.202408, 35.368233, 23.599659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982937, 35.271706, 23.610430>,  <38.617153, 35.110828, 23.628380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982937, 35.271706, 23.610430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189928, 0.328605, -0.925174,
		-0.357349, 0.854554, 0.376882,
		0.914456, 0.402190, -0.044877,
		39.257275, 35.392365, 23.596966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571095, 35.812351, 23.419376>,  <38.617153, 35.110828, 23.628380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571095, 35.812351, 23.419376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911140, 35.636719, 23.303089>,  <39.115166, 35.531338, 23.233316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911140, 35.636719, 23.303089>,  <38.571095, 35.812351, 23.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911140, 35.636719, 23.303089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141986, 0.340501, -0.929462,
		0.507101, 0.831424, 0.227119,
		0.850111, -0.439083, -0.290719,
		39.166172, 35.504993, 23.215874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017551, 36.263725, 23.014061>,  <38.571095, 35.812351, 23.419376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017551, 36.263725, 23.014061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113499, 35.891506, 22.903391>,  <39.171066, 35.668175, 22.836988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113499, 35.891506, 22.903391>,  <39.017551, 36.263725, 23.014061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113499, 35.891506, 22.903391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114454, 0.255901, -0.959904,
		0.964036, 0.261914, -0.045123,
		0.239865, -0.930546, -0.276675,
		39.185459, 35.612343, 22.820389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338428, 36.518810, 22.352629>,  <39.017551, 36.263725, 23.014061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338428, 36.518810, 22.352629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298164, 36.120857, 22.348997>,  <39.274006, 35.882088, 22.346819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298164, 36.120857, 22.348997>,  <39.338428, 36.518810, 22.352629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298164, 36.120857, 22.348997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023884, 0.011537, -0.999648,
		0.994634, -0.100410, -0.024923,
		-0.100662, -0.994879, -0.009077,
		39.267967, 35.822395, 22.346273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838280, 36.215080, 21.836508>,  <39.338428, 36.518810, 22.352629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838280, 36.215080, 21.836508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550652, 35.939304, 21.871403>,  <39.378075, 35.773838, 21.892340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550652, 35.939304, 21.871403>,  <39.838280, 36.215080, 21.836508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550652, 35.939304, 21.871403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084257, -0.038117, -0.995715,
		0.689815, -0.723335, -0.030682,
		-0.719066, -0.689444, 0.087240,
		39.334930, 35.732471, 21.897575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062214, 35.546890, 21.534317>,  <39.838280, 36.215080, 21.836508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062214, 35.546890, 21.534317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662216, 35.547066, 21.535471>,  <39.422218, 35.547169, 21.536163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662216, 35.547066, 21.535471>,  <40.062214, 35.546890, 21.534317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662216, 35.547066, 21.535471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002915, -0.121644, -0.992570,
		-0.000080, -0.992574, 0.121645,
		-0.999996, 0.000434, 0.002884,
		39.362217, 35.547195, 21.536337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977673, 35.122063, 21.053240>,  <40.062214, 35.546890, 21.534317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977673, 35.122063, 21.053240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623966, 35.307716, 21.073814>,  <39.411743, 35.419109, 21.086159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623966, 35.307716, 21.073814>,  <39.977673, 35.122063, 21.053240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623966, 35.307716, 21.073814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111869, -0.103610, -0.988307,
		-0.453382, -0.879682, 0.143542,
		-0.884268, 0.464138, 0.051435,
		39.358685, 35.446957, 21.089245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511581, 34.645561, 20.729223>,  <39.977673, 35.122063, 21.053240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511581, 34.645561, 20.729223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338158, 35.005276, 20.706215>,  <39.234104, 35.221104, 20.692410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338158, 35.005276, 20.706215>,  <39.511581, 34.645561, 20.729223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338158, 35.005276, 20.706215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164090, -0.141554, -0.976236,
		-0.886060, -0.413816, 0.208936,
		-0.433558, 0.899288, -0.057523,
		39.208092, 35.275063, 20.688957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972965, 34.537838, 20.232204>,  <39.511581, 34.645561, 20.729223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972965, 34.537838, 20.232204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029667, 34.932972, 20.257803>,  <39.063686, 35.170052, 20.273163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029667, 34.932972, 20.257803>,  <38.972965, 34.537838, 20.232204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029667, 34.932972, 20.257803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216119, 0.093974, -0.971834,
		-0.966022, 0.123931, 0.226810,
		0.141755, 0.987831, 0.063998,
		39.072193, 35.229321, 20.277002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369915, 34.848156, 19.865185>,  <38.972965, 34.537838, 20.232204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369915, 34.848156, 19.865185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639866, 35.142792, 19.882917>,  <38.801838, 35.319572, 19.893557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639866, 35.142792, 19.882917>,  <38.369915, 34.848156, 19.865185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639866, 35.142792, 19.882917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094608, 0.145949, -0.984758,
		-0.731836, 0.660401, 0.168185,
		0.674881, 0.736593, 0.044331,
		38.842331, 35.363770, 19.896217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084606, 35.579929, 19.647696>,  <38.369915, 34.848156, 19.865185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084606, 35.579929, 19.647696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476498, 35.545284, 19.575432>,  <38.711632, 35.524498, 19.532074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476498, 35.545284, 19.575432>,  <38.084606, 35.579929, 19.647696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476498, 35.545284, 19.575432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158724, 0.214693, -0.963698,
		0.122256, 0.972833, 0.196593,
		0.979724, -0.086614, -0.180660,
		38.770416, 35.519299, 19.521235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217426, 36.210857, 19.297300>,  <38.084606, 35.579929, 19.647696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217426, 36.210857, 19.297300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540298, 35.987003, 19.222174>,  <38.734020, 35.852692, 19.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540298, 35.987003, 19.222174>,  <38.217426, 36.210857, 19.297300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540298, 35.987003, 19.222174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125211, 0.148617, -0.980936,
		0.576876, 0.815307, 0.049889,
		0.807178, -0.559632, -0.187819,
		38.782452, 35.819115, 19.165829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753994, 36.662697, 18.870598>,  <38.217426, 36.210857, 19.297300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753994, 36.662697, 18.870598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821522, 36.273750, 18.806095>,  <38.862038, 36.040382, 18.767393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821522, 36.273750, 18.806095>,  <38.753994, 36.662697, 18.870598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821522, 36.273750, 18.806095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045954, 0.171191, -0.984165,
		0.984575, 0.158738, 0.073585,
		0.168821, -0.972366, -0.161256,
		38.872169, 35.982040, 18.757719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223740, 36.665733, 18.407125>,  <38.753994, 36.662697, 18.870598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223740, 36.665733, 18.407125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054867, 36.304085, 18.380821>,  <38.953541, 36.087097, 18.365038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054867, 36.304085, 18.380821>,  <39.223740, 36.665733, 18.407125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054867, 36.304085, 18.380821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192466, 0.160289, -0.968124,
		0.885842, -0.396072, -0.241685,
		-0.422186, -0.904121, -0.065760,
		38.928211, 36.032848, 18.361094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422241, 36.426723, 17.685011>,  <39.223740, 36.665733, 18.407125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422241, 36.426723, 17.685011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160843, 36.156628, 17.821825>,  <39.004002, 35.994568, 17.903913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160843, 36.156628, 17.821825>,  <39.422241, 36.426723, 17.685011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160843, 36.156628, 17.821825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195150, -0.286292, -0.938058,
		0.731337, -0.679769, 0.055319,
		-0.653500, -0.675242, 0.342033,
		38.964794, 35.954056, 17.924435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596664, 35.740170, 17.304171>,  <39.422241, 36.426723, 17.685011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596664, 35.740170, 17.304171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211559, 35.712624, 17.408737>,  <38.980495, 35.696098, 17.471478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211559, 35.712624, 17.408737>,  <39.596664, 35.740170, 17.304171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211559, 35.712624, 17.408737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222853, -0.345221, -0.911679,
		0.153028, -0.935992, 0.317020,
		-0.962767, -0.068863, 0.261417,
		38.922729, 35.691963, 17.487162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317131, 35.127640, 17.164730>,  <39.596664, 35.740170, 17.304171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317131, 35.127640, 17.164730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979858, 35.342487, 17.155306>,  <38.777496, 35.471397, 17.149651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979858, 35.342487, 17.155306>,  <39.317131, 35.127640, 17.164730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979858, 35.342487, 17.155306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223398, -0.389880, -0.893357,
		-0.489029, -0.747993, 0.448730,
		-0.843175, 0.537122, -0.023563,
		38.726906, 35.503624, 17.148237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944805, 34.423000, 17.019081>,  <39.317131, 35.127640, 17.164730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944805, 34.423000, 17.019081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250652, 34.242695, 16.834829>,  <39.434158, 34.134514, 16.724279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250652, 34.242695, 16.834829>,  <38.944805, 34.423000, 17.019081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250652, 34.242695, 16.834829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224283, -0.483942, 0.845871,
		-0.604203, -0.750076, -0.268931,
		0.764615, -0.450761, -0.460629,
		39.480038, 34.107468, 16.696640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950584, 33.806259, 17.310579>,  <38.944805, 34.423000, 17.019081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950584, 33.806259, 17.310579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316746, 33.797119, 17.149822>,  <39.536442, 33.791637, 17.053368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316746, 33.797119, 17.149822>,  <38.950584, 33.806259, 17.310579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316746, 33.797119, 17.149822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357749, -0.411520, 0.838252,
		-0.184537, -0.911115, -0.368534,
		0.915403, -0.022846, -0.401891,
		39.591366, 33.790264, 17.029255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270809, 33.075127, 17.416471>,  <38.950584, 33.806259, 17.310579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270809, 33.075127, 17.416471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575989, 33.322296, 17.340492>,  <39.759094, 33.470596, 17.294905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575989, 33.322296, 17.340492>,  <39.270809, 33.075127, 17.416471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575989, 33.322296, 17.340492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437532, -0.277274, 0.855386,
		0.475896, -0.735723, -0.481908,
		0.762947, 0.617925, -0.189948,
		39.804874, 33.507675, 17.283508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847363, 32.666027, 17.452877>,  <39.270809, 33.075127, 17.416471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847363, 32.666027, 17.452877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951515, 33.047928, 17.510368>,  <40.014008, 33.277069, 17.544863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951515, 33.047928, 17.510368>,  <39.847363, 32.666027, 17.452877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951515, 33.047928, 17.510368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531098, -0.265951, 0.804490,
		0.806309, -0.133145, -0.576314,
		0.260385, 0.954747, 0.143726,
		40.029633, 33.334351, 17.553486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537140, 32.639706, 17.533752>,  <39.847363, 32.666027, 17.452877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537140, 32.639706, 17.533752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414192, 32.980461, 17.703365>,  <40.340424, 33.184914, 17.805134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414192, 32.980461, 17.703365>,  <40.537140, 32.639706, 17.533752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414192, 32.980461, 17.703365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378779, -0.299252, 0.875771,
		0.872953, 0.429804, -0.230696,
		-0.307374, 0.851890, 0.424034,
		40.321980, 33.236027, 17.830576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036705, 32.795891, 18.021793>,  <40.537140, 32.639706, 17.533752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036705, 32.795891, 18.021793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747150, 33.056286, 18.113188>,  <40.573418, 33.212524, 18.168024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747150, 33.056286, 18.113188>,  <41.036705, 32.795891, 18.021793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747150, 33.056286, 18.113188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323579, 0.027855, 0.945791,
		0.609334, 0.758577, -0.230809,
		-0.723884, 0.650988, 0.228486,
		40.529984, 33.251583, 18.181734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374493, 33.433128, 18.269297>,  <41.036705, 32.795891, 18.021793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374493, 33.433128, 18.269297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002712, 33.440735, 18.416676>,  <40.779644, 33.445301, 18.505102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002712, 33.440735, 18.416676>,  <41.374493, 33.433128, 18.269297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002712, 33.440735, 18.416676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368924, 0.040137, 0.928592,
		0.002872, 0.999013, -0.044322,
		-0.929455, 0.019018, 0.368445,
		40.723877, 33.446442, 18.527208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391682, 33.874214, 18.808374>,  <41.374493, 33.433128, 18.269297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391682, 33.874214, 18.808374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057003, 33.672226, 18.893179>,  <40.856197, 33.551033, 18.944061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057003, 33.672226, 18.893179>,  <41.391682, 33.874214, 18.808374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057003, 33.672226, 18.893179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291495, -0.082881, 0.952975,
		-0.463654, 0.859147, 0.216543,
		-0.836693, -0.504972, 0.212009,
		40.805996, 33.520733, 18.956781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172375, 34.132687, 19.442554>,  <41.391682, 33.874214, 18.808374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172375, 34.132687, 19.442554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981350, 33.782223, 19.416370>,  <40.866737, 33.571945, 19.400660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981350, 33.782223, 19.416370>,  <41.172375, 34.132687, 19.442554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981350, 33.782223, 19.416370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109910, -0.133497, 0.984936,
		-0.871698, 0.463169, 0.160051,
		-0.477558, -0.876158, -0.065462,
		40.838081, 33.519375, 19.396732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634979, 34.177631, 20.042675>,  <41.172375, 34.132687, 19.442554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634979, 34.177631, 20.042675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700726, 33.791191, 19.963041>,  <40.740173, 33.559326, 19.915262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700726, 33.791191, 19.963041>,  <40.634979, 34.177631, 20.042675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700726, 33.791191, 19.963041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254586, -0.153441, 0.954799,
		-0.952980, -0.207619, 0.220735,
		0.164365, -0.966100, -0.199083,
		40.750034, 33.501362, 19.903316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369057, 33.823868, 20.641825>,  <40.634979, 34.177631, 20.042675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369057, 33.823868, 20.641825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570946, 33.519390, 20.478931>,  <40.692078, 33.336704, 20.381195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570946, 33.519390, 20.478931>,  <40.369057, 33.823868, 20.641825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570946, 33.519390, 20.478931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103114, -0.415192, 0.903871,
		-0.857102, -0.498194, -0.131067,
		0.504721, -0.761195, -0.407233,
		40.722363, 33.291031, 20.356762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084171, 33.098976, 20.925964>,  <40.369057, 33.823868, 20.641825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084171, 33.098976, 20.925964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450012, 33.020802, 20.784369>,  <40.669518, 32.973896, 20.699411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450012, 33.020802, 20.784369>,  <40.084171, 33.098976, 20.925964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450012, 33.020802, 20.784369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261848, -0.380826, 0.886796,
		-0.308119, -0.903757, -0.297130,
		0.914603, -0.195436, -0.353987,
		40.724392, 32.962170, 20.678173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281475, 32.420288, 21.096653>,  <40.084171, 33.098976, 20.925964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281475, 32.420288, 21.096653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632690, 32.606239, 21.051140>,  <40.843418, 32.717808, 21.023832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632690, 32.606239, 21.051140>,  <40.281475, 32.420288, 21.096653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632690, 32.606239, 21.051140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296759, -0.342298, 0.891497,
		0.375487, -0.816531, -0.438505,
		0.878034, 0.464876, -0.113784,
		40.896099, 32.745701, 21.017004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784203, 31.858431, 21.205368>,  <40.281475, 32.420288, 21.096653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784203, 31.858431, 21.205368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935230, 32.221287, 21.279709>,  <41.025848, 32.438999, 21.324312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935230, 32.221287, 21.279709>,  <40.784203, 31.858431, 21.205368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935230, 32.221287, 21.279709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271269, -0.300261, 0.914471,
		0.885355, -0.294860, -0.359448,
		0.377569, 0.907139, 0.185851,
		41.048500, 32.493427, 21.335464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321640, 31.692371, 21.649750>,  <40.784203, 31.858431, 21.205368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321640, 31.692371, 21.649750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278637, 32.088051, 21.689606>,  <41.252834, 32.325459, 21.713518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278637, 32.088051, 21.689606>,  <41.321640, 31.692371, 21.649750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278637, 32.088051, 21.689606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196129, -0.077147, 0.977538,
		0.974667, 0.124636, -0.185717,
		-0.107509, 0.989199, 0.099638,
		41.246384, 32.384811, 21.719498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958378, 31.968861, 21.969154>,  <41.321640, 31.692371, 21.649750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958378, 31.968861, 21.969154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645840, 32.212219, 22.024815>,  <41.458317, 32.358234, 22.058210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645840, 32.212219, 22.024815>,  <41.958378, 31.968861, 21.969154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645840, 32.212219, 22.024815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158095, -0.022746, 0.987162,
		0.603749, 0.793309, -0.078412,
		-0.781341, 0.608394, 0.139151,
		41.411438, 32.394737, 22.066559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284393, 32.422096, 22.389954>,  <41.958378, 31.968861, 21.969154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284393, 32.422096, 22.389954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900261, 32.512985, 22.454624>,  <41.669781, 32.567516, 22.493425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900261, 32.512985, 22.454624>,  <42.284393, 32.422096, 22.389954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900261, 32.512985, 22.454624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182021, 0.071509, 0.980691,
		0.211269, 0.971215, -0.110030,
		-0.960330, 0.227218, 0.161674,
		41.612164, 32.581150, 22.503126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319069, 32.981144, 22.811857>,  <42.284393, 32.422096, 22.389954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319069, 32.981144, 22.811857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939495, 32.872517, 22.876080>,  <41.711750, 32.807343, 22.914614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939495, 32.872517, 22.876080>,  <42.319069, 32.981144, 22.811857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939495, 32.872517, 22.876080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083942, 0.273235, 0.958278,
		-0.304105, 0.922819, -0.236486,
		-0.948933, -0.271566, 0.160556,
		41.654816, 32.791046, 22.924246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999760, 33.507240, 23.108862>,  <42.319069, 32.981144, 22.811857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999760, 33.507240, 23.108862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781223, 33.186462, 23.205523>,  <41.650101, 32.993996, 23.263519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781223, 33.186462, 23.205523>,  <41.999760, 33.507240, 23.108862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781223, 33.186462, 23.205523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107228, 0.219171, 0.969777,
		-0.830672, 0.555739, -0.033750,
		-0.546339, -0.801947, 0.241649,
		41.617321, 32.945877, 23.278017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645504, 33.745300, 23.651520>,  <41.999760, 33.507240, 23.108862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645504, 33.745300, 23.651520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571648, 33.353325, 23.681526>,  <41.527332, 33.118141, 23.699530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571648, 33.353325, 23.681526>,  <41.645504, 33.745300, 23.651520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571648, 33.353325, 23.681526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141496, 0.049029, 0.988724,
		-0.972566, 0.193178, 0.129604,
		-0.184645, -0.979938, 0.075018,
		41.516254, 33.059345, 23.704031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225990, 33.665756, 24.162199>,  <41.645504, 33.745300, 23.651520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225990, 33.665756, 24.162199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369190, 33.292915, 24.140223>,  <41.455112, 33.069210, 24.127037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369190, 33.292915, 24.140223>,  <41.225990, 33.665756, 24.162199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369190, 33.292915, 24.140223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037168, -0.073022, 0.996638,
		-0.932980, -0.354758, -0.060786,
		0.358004, -0.932102, -0.054942,
		41.476593, 33.013287, 24.123739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880009, 33.337170, 24.700405>,  <41.225990, 33.665756, 24.162199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880009, 33.337170, 24.700405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213474, 33.122349, 24.648914>,  <41.413555, 32.993454, 24.618019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213474, 33.122349, 24.648914>,  <40.880009, 33.337170, 24.700405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213474, 33.122349, 24.648914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105380, -0.074112, 0.991666,
		-0.542121, -0.840284, -0.005189,
		0.833666, -0.537056, -0.128727,
		41.463573, 32.961231, 24.610296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797913, 32.735241, 25.050489>,  <40.880009, 33.337170, 24.700405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797913, 32.735241, 25.050489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196674, 32.759789, 25.030798>,  <41.435932, 32.774517, 25.018984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196674, 32.759789, 25.030798>,  <40.797913, 32.735241, 25.050489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196674, 32.759789, 25.030798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062246, -0.232596, 0.970579,
		0.048113, -0.970635, -0.235695,
		0.996900, 0.061369, -0.049227,
		41.495743, 32.778198, 25.016029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968945, 32.293457, 25.560978>,  <40.797913, 32.735241, 25.050489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968945, 32.293457, 25.560978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332226, 32.445301, 25.490484>,  <41.550194, 32.536407, 25.448189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332226, 32.445301, 25.490484>,  <40.968945, 32.293457, 25.560978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332226, 32.445301, 25.490484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252801, -0.161992, 0.953861,
		0.333549, -0.910853, -0.243088,
		0.908205, 0.379612, -0.176232,
		41.604687, 32.559185, 25.437614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452396, 31.806831, 25.739605>,  <40.968945, 32.293457, 25.560978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452396, 31.806831, 25.739605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602779, 32.175919, 25.773653>,  <41.693008, 32.397369, 25.794083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602779, 32.175919, 25.773653>,  <41.452396, 31.806831, 25.739605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602779, 32.175919, 25.773653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216868, -0.176925, 0.960034,
		0.900900, -0.342477, -0.266625,
		0.375962, 0.922717, 0.085120,
		41.715569, 32.452732, 25.799189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955841, 31.749983, 26.223263>,  <41.452396, 31.806831, 25.739605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955841, 31.749983, 26.223263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889557, 32.144196, 26.208998>,  <41.849789, 32.380722, 26.200439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889557, 32.144196, 26.208998>,  <41.955841, 31.749983, 26.223263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889557, 32.144196, 26.208998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154557, 0.061667, 0.986058,
		0.973988, 0.157886, -0.162539,
		-0.165708, 0.985530, -0.035660,
		41.839844, 32.439854, 26.198299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447922, 32.100048, 26.619112>,  <41.955841, 31.749983, 26.223263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447922, 32.100048, 26.619112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153946, 32.371193, 26.611475>,  <41.977562, 32.533882, 26.606892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153946, 32.371193, 26.611475>,  <42.447922, 32.100048, 26.619112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153946, 32.371193, 26.611475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206820, 0.250870, 0.945669,
		0.645827, 0.691058, -0.324569,
		-0.734937, 0.677866, -0.019094,
		41.933464, 32.574554, 26.605747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821575, 32.647861, 26.884991>,  <42.447922, 32.100048, 26.619112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821575, 32.647861, 26.884991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426052, 32.686039, 26.930866>,  <42.188740, 32.708946, 26.958391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426052, 32.686039, 26.930866>,  <42.821575, 32.647861, 26.884991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426052, 32.686039, 26.930866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133327, 0.220140, 0.966314,
		0.066980, 0.970788, -0.230401,
		-0.988806, 0.095442, 0.114687,
		42.129410, 32.714672, 26.965273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732624, 32.955605, 27.538279>,  <42.821575, 32.647861, 26.884991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732624, 32.955605, 27.538279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363659, 32.829285, 27.449354>,  <42.142281, 32.753490, 27.396000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363659, 32.829285, 27.449354>,  <42.732624, 32.955605, 27.538279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363659, 32.829285, 27.449354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189597, -0.131209, 0.973056,
		-0.336464, 0.939709, 0.061154,
		-0.922413, -0.315804, -0.222313,
		42.086937, 32.734543, 27.382660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300316, 33.319378, 27.919579>,  <42.732624, 32.955605, 27.538279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300316, 33.319378, 27.919579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081539, 32.991978, 27.849249>,  <41.950272, 32.795540, 27.807051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081539, 32.991978, 27.849249>,  <42.300316, 33.319378, 27.919579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081539, 32.991978, 27.849249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274234, -0.023266, 0.961381,
		-0.790979, 0.574038, -0.211735,
		-0.546944, -0.818498, -0.175824,
		41.917458, 32.746429, 27.796501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825195, 33.314911, 28.408155>,  <42.300316, 33.319378, 27.919579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825195, 33.314911, 28.408155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762310, 32.938766, 28.287489>,  <41.724579, 32.713081, 28.215090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762310, 32.938766, 28.287489>,  <41.825195, 33.314911, 28.408155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762310, 32.938766, 28.287489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454929, -0.202162, 0.867278,
		-0.876540, 0.273586, -0.396015,
		-0.157216, -0.940362, -0.301665,
		41.715145, 32.656658, 28.196989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153656, 33.100449, 28.513985>,  <41.825195, 33.314911, 28.408155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153656, 33.100449, 28.513985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368591, 32.764217, 28.541391>,  <41.497551, 32.562477, 28.557837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368591, 32.764217, 28.541391>,  <41.153656, 33.100449, 28.513985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368591, 32.764217, 28.541391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440634, -0.210539, 0.872648,
		-0.719105, -0.499096, -0.483519,
		0.537335, -0.840581, 0.068518,
		41.529793, 32.512043, 28.561947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762581, 32.645626, 28.888931>,  <41.153656, 33.100449, 28.513985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762581, 32.645626, 28.888931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105774, 32.441063, 28.908245>,  <41.311687, 32.318325, 28.919834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105774, 32.441063, 28.908245>,  <40.762581, 32.645626, 28.888931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105774, 32.441063, 28.908245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246868, -0.328072, 0.911825,
		-0.450478, -0.794246, -0.407730,
		0.857978, -0.511412, 0.048285,
		41.363167, 32.287640, 28.922731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646473, 32.013287, 29.003599>,  <40.762581, 32.645626, 28.888931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646473, 32.013287, 29.003599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022350, 32.065708, 29.129963>,  <41.247879, 32.097160, 29.205780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022350, 32.065708, 29.129963>,  <40.646473, 32.013287, 29.003599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022350, 32.065708, 29.129963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223333, -0.464423, 0.856991,
		0.259029, -0.875863, -0.407147,
		0.939695, 0.131056, 0.315908,
		41.304260, 32.105026, 29.224735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854271, 31.280174, 29.205795>,  <40.646473, 32.013287, 29.003599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854271, 31.280174, 29.205795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063473, 31.569483, 29.386171>,  <41.188995, 31.743067, 29.494398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063473, 31.569483, 29.386171>,  <40.854271, 31.280174, 29.205795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063473, 31.569483, 29.386171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238314, -0.383877, 0.892102,
		0.818336, -0.574038, -0.028404,
		0.523004, 0.723270, 0.450941,
		41.220375, 31.786463, 29.521454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162300, 30.962889, 29.733097>,  <40.854271, 31.280174, 29.205795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162300, 30.962889, 29.733097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154194, 31.350307, 29.832298>,  <41.149330, 31.582758, 29.891819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154194, 31.350307, 29.832298>,  <41.162300, 30.962889, 29.733097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154194, 31.350307, 29.832298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272572, -0.244013, 0.930678,
		0.961922, -0.048734, 0.268945,
		-0.020270, 0.968547, 0.248005,
		41.148113, 31.640871, 29.906700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430813, 31.019348, 30.372295>,  <41.162300, 30.962889, 29.733097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430813, 31.019348, 30.372295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281631, 31.390173, 30.357014>,  <41.192123, 31.612667, 30.347845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281631, 31.390173, 30.357014>,  <41.430813, 31.019348, 30.372295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281631, 31.390173, 30.357014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277694, -0.072239, 0.957950,
		0.885319, 0.367883, 0.284381,
		-0.372957, 0.927062, -0.038205,
		41.169743, 31.668291, 30.345552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773022, 31.476500, 30.946980>,  <41.430813, 31.019348, 30.372295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773022, 31.476500, 30.946980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421955, 31.635715, 30.840200>,  <41.211315, 31.731245, 30.776133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421955, 31.635715, 30.840200>,  <41.773022, 31.476500, 30.946980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421955, 31.635715, 30.840200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304451, -0.032866, 0.951961,
		0.370145, 0.916779, 0.150029,
		-0.877668, 0.398040, -0.266949,
		41.158653, 31.755127, 30.760117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629848, 31.979862, 31.477150>,  <41.773022, 31.476500, 30.946980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629848, 31.979862, 31.477150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272270, 31.923515, 31.306961>,  <41.057724, 31.889708, 31.204847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272270, 31.923515, 31.306961>,  <41.629848, 31.979862, 31.477150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272270, 31.923515, 31.306961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443765, 0.145235, 0.884296,
		-0.062775, 0.979318, -0.192343,
		-0.893942, -0.140867, -0.425470,
		41.004089, 31.881256, 31.179319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188137, 32.520660, 31.773994>,  <41.629848, 31.979862, 31.477150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188137, 32.520660, 31.773994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942177, 32.254322, 31.604975>,  <40.794601, 32.094517, 31.503563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942177, 32.254322, 31.604975>,  <41.188137, 32.520660, 31.773994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942177, 32.254322, 31.604975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535063, -0.041354, 0.843800,
		-0.579317, 0.744940, -0.330842,
		-0.614899, -0.665848, -0.422547,
		40.757706, 32.054569, 31.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506443, 32.824692, 31.871843>,  <41.188137, 32.520660, 31.773994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506443, 32.824692, 31.871843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466434, 32.432999, 31.801311>,  <40.442429, 32.197983, 31.758991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466434, 32.432999, 31.801311>,  <40.506443, 32.824692, 31.871843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466434, 32.432999, 31.801311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419415, -0.119213, 0.899933,
		-0.902268, 0.163966, -0.398783,
		-0.100019, -0.979236, -0.176332,
		40.436428, 32.139229, 31.748411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964386, 32.674667, 32.304012>,  <40.506443, 32.824692, 31.871843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964386, 32.674667, 32.304012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099384, 32.311211, 32.205658>,  <40.180382, 32.093136, 32.146645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099384, 32.311211, 32.205658>,  <39.964386, 32.674667, 32.304012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099384, 32.311211, 32.205658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522871, -0.398166, 0.753704,
		-0.782753, -0.125805, -0.609484,
		0.337495, -0.908646, -0.245886,
		40.200634, 32.038616, 32.131893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409229, 32.176250, 32.336670>,  <39.964386, 32.674667, 32.304012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409229, 32.176250, 32.336670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754887, 31.982983, 32.392956>,  <39.962280, 31.867023, 32.426727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754887, 31.982983, 32.392956>,  <39.409229, 32.176250, 32.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754887, 31.982983, 32.392956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375025, -0.431847, 0.820283,
		-0.335563, -0.761618, -0.554378,
		0.864149, -0.483163, 0.140714,
		40.014130, 31.838034, 32.435169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176846, 31.486845, 32.468044>,  <39.409229, 32.176250, 32.336670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176846, 31.486845, 32.468044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555180, 31.472786, 32.597141>,  <39.782181, 31.464350, 32.674599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555180, 31.472786, 32.597141>,  <39.176846, 31.486845, 32.468044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555180, 31.472786, 32.597141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299204, -0.480196, 0.824554,
		0.125999, -0.876457, -0.464702,
		0.945834, -0.035148, 0.322743,
		39.838928, 31.462242, 32.693966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491669, 30.797020, 32.632198>,  <39.176846, 31.486845, 32.468044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491669, 30.797020, 32.632198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676590, 31.070181, 32.858444>,  <39.787540, 31.234077, 32.994190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676590, 31.070181, 32.858444>,  <39.491669, 30.797020, 32.632198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676590, 31.070181, 32.858444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418778, -0.394102, 0.818113,
		0.781603, -0.615081, 0.103792,
		0.462301, 0.682905, 0.565614,
		39.815281, 31.275053, 33.028130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552998, 30.539480, 33.212963>,  <39.491669, 30.797020, 32.632198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552998, 30.539480, 33.212963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672565, 30.890829, 33.362152>,  <39.744305, 31.101639, 33.451664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672565, 30.890829, 33.362152>,  <39.552998, 30.539480, 33.212963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672565, 30.890829, 33.362152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266668, -0.298386, 0.916435,
		0.916263, -0.373396, 0.145042,
		0.298915, 0.878374, 0.372973,
		39.762241, 31.154341, 33.474045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848087, 30.358032, 33.914597>,  <39.552998, 30.539480, 33.212963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848087, 30.358032, 33.914597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824730, 30.757187, 33.925976>,  <39.810715, 30.996679, 33.932804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824730, 30.757187, 33.925976>,  <39.848087, 30.358032, 33.914597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824730, 30.757187, 33.925976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154685, -0.037195, 0.987264,
		0.986237, 0.053252, 0.156530,
		-0.058396, 0.997888, 0.028446,
		39.807213, 31.056553, 33.934509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365582, 30.657843, 34.374638>,  <39.848087, 30.358032, 33.914597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365582, 30.657843, 34.374638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057045, 30.911875, 34.391186>,  <39.871925, 31.064293, 34.401115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057045, 30.911875, 34.391186>,  <40.365582, 30.657843, 34.374638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057045, 30.911875, 34.391186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082977, -0.164797, 0.982831,
		0.630993, 0.754663, 0.179811,
		-0.771338, 0.635079, 0.041366,
		39.825642, 31.102398, 34.403595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416122, 31.098347, 34.949352>,  <40.365582, 30.657843, 34.374638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416122, 31.098347, 34.949352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026161, 31.116777, 34.862236>,  <39.792183, 31.127836, 34.809967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026161, 31.116777, 34.862236>,  <40.416122, 31.098347, 34.949352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026161, 31.116777, 34.862236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221234, -0.091775, 0.970893,
		0.024750, 0.994713, 0.099666,
		-0.974907, 0.046079, -0.217793,
		39.733688, 31.130602, 34.796898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138744, 31.751165, 35.287022>,  <40.416122, 31.098347, 34.949352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138744, 31.751165, 35.287022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842804, 31.485228, 35.245838>,  <39.665237, 31.325665, 35.221127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842804, 31.485228, 35.245838>,  <40.138744, 31.751165, 35.287022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842804, 31.485228, 35.245838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238027, 0.115534, 0.964363,
		-0.629254, 0.737994, -0.243729,
		-0.739853, -0.664843, -0.102963,
		39.620850, 31.285774, 35.214951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598621, 32.086693, 35.648174>,  <40.138744, 31.751165, 35.287022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598621, 32.086693, 35.648174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528202, 31.694561, 35.612484>,  <39.485950, 31.459282, 35.591072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528202, 31.694561, 35.612484>,  <39.598621, 32.086693, 35.648174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528202, 31.694561, 35.612484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277836, -0.037469, 0.959897,
		-0.944359, 0.193775, -0.265775,
		-0.176045, -0.980330, -0.089222,
		39.475388, 31.400461, 35.585716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875748, 31.916960, 35.808434>,  <39.598621, 32.086693, 35.648174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875748, 31.916960, 35.808434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144611, 31.629499, 35.879704>,  <39.305927, 31.457024, 35.922466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144611, 31.629499, 35.879704>,  <38.875748, 31.916960, 35.808434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144611, 31.629499, 35.879704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296805, -0.041064, 0.954055,
		-0.678318, -0.694155, -0.240901,
		0.672154, -0.718653, 0.178174,
		39.346256, 31.413904, 35.933155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439114, 31.383244, 36.166222>,  <38.875748, 31.916960, 35.808434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439114, 31.383244, 36.166222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826569, 31.370270, 36.264755>,  <39.059044, 31.362486, 36.323875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826569, 31.370270, 36.264755>,  <38.439114, 31.383244, 36.166222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826569, 31.370270, 36.264755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248459, -0.119562, 0.961235,
		-0.001724, -0.992297, -0.123871,
		0.968641, -0.032434, 0.246339,
		39.117161, 31.360540, 36.338657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760384, 30.691465, 36.550285>,  <38.439114, 31.383244, 36.166222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760384, 30.691465, 36.550285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944221, 31.036329, 36.635563>,  <39.054523, 31.243248, 36.686729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944221, 31.036329, 36.635563>,  <38.760384, 30.691465, 36.550285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944221, 31.036329, 36.635563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226767, -0.118172, 0.966753,
		0.858688, -0.492664, 0.141197,
		0.459599, 0.862159, 0.213193,
		39.082100, 31.294977, 36.699520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538147, 30.760839, 37.257534>,  <38.760384, 30.691465, 36.550285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538147, 30.760839, 37.257534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830822, 31.010593, 37.148159>,  <39.006428, 31.160446, 37.082535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830822, 31.010593, 37.148159>,  <38.538147, 30.760839, 37.257534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830822, 31.010593, 37.148159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175360, 0.215223, 0.960691,
		0.658694, -0.750880, 0.047984,
		0.731691, 0.624387, -0.273440,
		39.050331, 31.197910, 37.066128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138626, 30.683702, 37.681061>,  <38.538147, 30.760839, 37.257534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138626, 30.683702, 37.681061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140209, 31.058039, 37.540104>,  <39.141159, 31.282640, 37.455528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140209, 31.058039, 37.540104>,  <39.138626, 30.683702, 37.681061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140209, 31.058039, 37.540104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281843, 0.337069, 0.898304,
		0.959452, -0.102873, -0.262428,
		0.003955, 0.935843, -0.352395,
		39.141396, 31.338791, 37.434387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707676, 31.047094, 37.969006>,  <39.138626, 30.683702, 37.681061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707676, 31.047094, 37.969006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488964, 31.348284, 37.822548>,  <39.357735, 31.528997, 37.734673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488964, 31.348284, 37.822548>,  <39.707676, 31.047094, 37.969006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488964, 31.348284, 37.822548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412199, 0.622723, 0.665062,
		0.728781, 0.212718, -0.650868,
		-0.546781, 0.752972, -0.366147,
		39.324928, 31.574175, 37.712704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215866, 31.436050, 37.967255>,  <39.707676, 31.047094, 37.969006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215866, 31.436050, 37.967255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884300, 31.659714, 37.960953>,  <39.685360, 31.793911, 37.957172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884300, 31.659714, 37.960953>,  <40.215866, 31.436050, 37.967255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884300, 31.659714, 37.960953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443731, 0.674423, 0.590132,
		0.340599, 0.482179, -0.807153,
		-0.828912, 0.559157, -0.015750,
		39.635628, 31.827461, 37.956226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465576, 32.057438, 37.972115>,  <40.215866, 31.436050, 37.967255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465576, 32.057438, 37.972115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083305, 32.100906, 38.081562>,  <39.853943, 32.126987, 38.147228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083305, 32.100906, 38.081562>,  <40.465576, 32.057438, 37.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083305, 32.100906, 38.081562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284224, 0.582882, 0.761226,
		-0.076762, 0.805257, -0.587936,
		-0.955680, 0.108673, 0.273617,
		39.796600, 32.133507, 38.163647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326008, 32.798885, 38.165310>,  <40.465576, 32.057438, 37.972115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326008, 32.798885, 38.165310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054119, 32.577019, 38.357277>,  <39.890984, 32.443901, 38.472458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054119, 32.577019, 38.357277>,  <40.326008, 32.798885, 38.165310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054119, 32.577019, 38.357277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257014, 0.432712, 0.864120,
		-0.686964, 0.710709, -0.151568,
		-0.679724, -0.554664, 0.479920,
		39.850201, 32.410618, 38.501251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900169, 33.331757, 38.514465>,  <40.326008, 32.798885, 38.165310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900169, 33.331757, 38.514465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942715, 32.984688, 38.708714>,  <39.968243, 32.776447, 38.825264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942715, 32.984688, 38.708714>,  <39.900169, 33.331757, 38.514465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942715, 32.984688, 38.708714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265637, 0.495436, 0.827031,
		-0.958188, 0.041034, 0.283182,
		0.106362, -0.867675, 0.485621,
		39.974625, 32.724384, 38.854401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497021, 33.190636, 39.134960>,  <39.900169, 33.331757, 38.514465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497021, 33.190636, 39.134960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846001, 32.997444, 39.164814>,  <40.055389, 32.881531, 39.182728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846001, 32.997444, 39.164814>,  <39.497021, 33.190636, 39.134960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846001, 32.997444, 39.164814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315017, 0.672538, 0.669669,
		-0.373631, -0.560738, 0.738900,
		0.872447, -0.482975, 0.074639,
		40.107735, 32.852551, 39.187206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797852, 33.178135, 39.828403>,  <39.497021, 33.190636, 39.134960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797852, 33.178135, 39.828403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157719, 33.112343, 39.666641>,  <40.373638, 33.072868, 39.569584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157719, 33.112343, 39.666641>,  <39.797852, 33.178135, 39.828403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157719, 33.112343, 39.666641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422893, 0.558418, 0.713674,
		0.108442, -0.813090, 0.571948,
		0.899667, -0.164481, -0.404406,
		40.427620, 33.063000, 39.545319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333786, 32.875847, 40.183437>,  <39.797852, 33.178135, 39.828403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333786, 32.875847, 40.183437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047020, 32.604370, 40.247185>,  <39.874958, 32.441483, 40.285435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047020, 32.604370, 40.247185>,  <40.333786, 32.875847, 40.183437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047020, 32.604370, 40.247185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062018, -0.289779, -0.955082,
		0.694393, -0.674833, 0.249839,
		-0.716919, -0.678697, 0.159369,
		39.831944, 32.400761, 40.294994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534889, 32.348427, 39.753899>,  <40.333786, 32.875847, 40.183437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534889, 32.348427, 39.753899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143093, 32.321079, 39.829704>,  <39.908016, 32.304672, 39.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143093, 32.321079, 39.829704>,  <40.534889, 32.348427, 39.753899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143093, 32.321079, 39.829704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156041, -0.337586, -0.928271,
		0.127440, -0.938809, 0.319995,
		-0.979495, -0.068367, 0.189515,
		39.849243, 32.300568, 39.886559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142666, 31.766476, 39.501793>,  <40.534889, 32.348427, 39.753899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142666, 31.766476, 39.501793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888454, 32.075211, 39.509541>,  <39.735928, 32.260452, 39.514191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888454, 32.075211, 39.509541>,  <40.142666, 31.766476, 39.501793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888454, 32.075211, 39.509541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228763, -0.164281, -0.959520,
		-0.737411, -0.614230, 0.280972,
		-0.635525, 0.771838, 0.019371,
		39.697796, 32.306763, 39.515350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449440, 31.609007, 39.273907>,  <40.142666, 31.766476, 39.501793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449440, 31.609007, 39.273907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492977, 31.998848, 39.195621>,  <39.519100, 32.232754, 39.148651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492977, 31.998848, 39.195621>,  <39.449440, 31.609007, 39.273907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492977, 31.998848, 39.195621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390669, -0.139105, -0.909960,
		-0.914074, 0.175501, 0.365607,
		0.108842, 0.974602, -0.195715,
		39.525631, 32.291229, 39.136906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780788, 31.812761, 38.958675>,  <39.449440, 31.609007, 39.273907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780788, 31.812761, 38.958675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098614, 32.022236, 38.835766>,  <39.289310, 32.147923, 38.762020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098614, 32.022236, 38.835766>,  <38.780788, 31.812761, 38.958675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098614, 32.022236, 38.835766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314786, -0.077456, -0.945997,
		-0.519207, 0.848382, 0.103305,
		0.794565, 0.523688, -0.307274,
		39.336983, 32.179340, 38.743584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623772, 32.296429, 38.574203>,  <38.780788, 31.812761, 38.958675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623772, 32.296429, 38.574203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993992, 32.233334, 38.436520>,  <39.216122, 32.195477, 38.353909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993992, 32.233334, 38.436520>,  <38.623772, 32.296429, 38.574203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993992, 32.233334, 38.436520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374088, -0.240585, -0.895644,
		0.058465, 0.957726, -0.281680,
		0.925549, -0.157737, -0.344208,
		39.271656, 32.186012, 38.333256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605000, 32.638718, 37.896736>,  <38.623772, 32.296429, 38.574203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605000, 32.638718, 37.896736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912086, 32.382908, 37.912838>,  <39.096336, 32.229420, 37.922497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912086, 32.382908, 37.912838>,  <38.605000, 32.638718, 37.896736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912086, 32.382908, 37.912838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208875, -0.309138, -0.927796,
		0.605794, 0.703874, -0.370911,
		0.767714, -0.639528, 0.040252,
		39.142399, 32.191051, 37.924915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640511, 32.520409, 37.266426>,  <38.605000, 32.638718, 37.896736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640511, 32.520409, 37.266426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871609, 32.238777, 37.431580>,  <39.010269, 32.069798, 37.530670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871609, 32.238777, 37.431580>,  <38.640511, 32.520409, 37.266426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871609, 32.238777, 37.431580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028866, -0.487911, -0.872416,
		0.815705, 0.515955, -0.261566,
		0.577748, -0.704083, 0.412885,
		39.044933, 32.027554, 37.555447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208229, 32.509861, 36.858459>,  <38.640511, 32.520409, 37.266426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208229, 32.509861, 36.858459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172653, 32.150448, 37.030380>,  <39.151306, 31.934799, 37.133533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172653, 32.150448, 37.030380>,  <39.208229, 32.509861, 36.858459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172653, 32.150448, 37.030380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142781, -0.438557, -0.887289,
		0.985750, -0.017549, 0.167299,
		-0.088941, -0.898532, 0.429802,
		39.145969, 31.880888, 37.159321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844620, 32.123634, 36.578407>,  <39.208229, 32.509861, 36.858459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844620, 32.123634, 36.578407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594101, 31.855856, 36.738205>,  <39.443790, 31.695190, 36.834084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594101, 31.855856, 36.738205>,  <39.844620, 32.123634, 36.578407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594101, 31.855856, 36.738205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064663, -0.555293, -0.829137,
		0.776897, -0.493454, 0.391068,
		-0.626298, -0.669442, 0.399498,
		39.406212, 31.655024, 36.858055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410725, 31.515247, 36.671337>,  <39.844620, 32.123634, 36.578407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410725, 31.515247, 36.671337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023586, 31.462841, 36.585449>,  <39.791302, 31.431398, 36.533916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023586, 31.462841, 36.585449>,  <40.410725, 31.515247, 36.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023586, 31.462841, 36.585449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226288, -0.080765, -0.970706,
		0.109835, -0.988085, 0.107815,
		-0.967848, -0.131014, -0.214721,
		39.733231, 31.423536, 36.521034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146820, 30.861347, 36.512920>,  <40.410725, 31.515247, 36.671337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146820, 30.861347, 36.512920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754097, 30.907999, 36.452991>,  <39.518463, 30.935989, 36.417034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754097, 30.907999, 36.452991>,  <40.146820, 30.861347, 36.512920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754097, 30.907999, 36.452991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132358, -0.145348, -0.980487,
		-0.136099, -0.982486, 0.127272,
		-0.981814, 0.116598, -0.149821,
		39.459553, 30.942987, 36.408043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709919, 30.336103, 36.096756>,  <40.146820, 30.861347, 36.512920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709919, 30.336103, 36.096756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502140, 30.673033, 36.039246>,  <39.377472, 30.875191, 36.004738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502140, 30.673033, 36.039246>,  <39.709919, 30.336103, 36.096756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502140, 30.673033, 36.039246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056792, -0.201919, -0.977755,
		-0.852616, -0.499722, 0.152722,
		-0.519443, 0.842322, -0.143779,
		39.346306, 30.925730, 35.996113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147060, 30.087017, 35.710789>,  <39.709919, 30.336103, 36.096756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147060, 30.087017, 35.710789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219063, 30.478666, 35.673019>,  <39.262264, 30.713655, 35.650360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219063, 30.478666, 35.673019>,  <39.147060, 30.087017, 35.710789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219063, 30.478666, 35.673019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087700, -0.111580, -0.989878,
		-0.979748, 0.169905, -0.105954,
		0.180007, 0.979123, -0.094419,
		39.273064, 30.772404, 35.644695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752213, 30.285154, 35.183212>,  <39.147060, 30.087017, 35.710789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752213, 30.285154, 35.183212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024548, 30.577562, 35.201408>,  <39.187950, 30.753008, 35.212326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024548, 30.577562, 35.201408>,  <38.752213, 30.285154, 35.183212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024548, 30.577562, 35.201408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154985, -0.083082, -0.984417,
		-0.715849, 0.677279, -0.169862,
		0.680838, 0.731020, 0.045494,
		39.228798, 30.796869, 35.215057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608620, 30.761831, 34.625278>,  <38.752213, 30.285154, 35.183212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608620, 30.761831, 34.625278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997887, 30.800816, 34.708660>,  <39.231445, 30.824205, 34.758690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997887, 30.800816, 34.708660>,  <38.608620, 30.761831, 34.625278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997887, 30.800816, 34.708660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206601, 0.028820, -0.978001,
		-0.101323, 0.994822, 0.007912,
		0.973165, 0.097459, 0.208452,
		39.289837, 30.830053, 34.771194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499126, 31.394123, 34.565067>,  <38.608620, 30.761831, 34.625278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499126, 31.394123, 34.565067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885025, 31.311836, 34.630730>,  <39.116562, 31.262465, 34.670128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885025, 31.311836, 34.630730>,  <38.499126, 31.394123, 34.565067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885025, 31.311836, 34.630730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215267, 0.257920, -0.941880,
		0.151421, 0.944012, 0.293111,
		0.964745, -0.205717, 0.164160,
		39.174450, 31.250120, 34.679977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871956, 31.976377, 34.260876>,  <38.499126, 31.394123, 34.565067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871956, 31.976377, 34.260876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143414, 31.687006, 34.311626>,  <39.306286, 31.513384, 34.342079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143414, 31.687006, 34.311626>,  <38.871956, 31.976377, 34.260876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143414, 31.687006, 34.311626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253214, 0.068291, -0.964997,
		0.689442, 0.687013, 0.229528,
		0.678640, -0.723429, 0.126878,
		39.347004, 31.469976, 34.349689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571815, 32.323677, 34.199375>,  <38.871956, 31.976377, 34.260876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571815, 32.323677, 34.199375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626492, 31.941944, 34.093117>,  <39.659298, 31.712904, 34.029362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626492, 31.941944, 34.093117>,  <39.571815, 32.323677, 34.199375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626492, 31.941944, 34.093117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478991, 0.298406, -0.825543,
		0.867112, -0.014398, 0.497906,
		0.136692, -0.954330, -0.265648,
		39.667500, 31.655645, 34.013424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201359, 32.235813, 34.019211>,  <39.571815, 32.323677, 34.199375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201359, 32.235813, 34.019211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046894, 31.916334, 33.834621>,  <39.954216, 31.724648, 33.723866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046894, 31.916334, 33.834621>,  <40.201359, 32.235813, 34.019211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046894, 31.916334, 33.834621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618970, 0.146564, -0.771619,
		0.683926, -0.583610, 0.437772,
		-0.386163, -0.798698, -0.461476,
		39.931046, 31.676725, 33.696178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474133, 32.300545, 33.290874>,  <40.201359, 32.235813, 34.019211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474133, 32.300545, 33.290874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327885, 31.928623, 33.274017>,  <40.240135, 31.705469, 33.263905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327885, 31.928623, 33.274017>,  <40.474133, 32.300545, 33.290874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327885, 31.928623, 33.274017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333688, -0.088678, -0.938504,
		0.868891, -0.357201, 0.342689,
		-0.365623, -0.929809, -0.042142,
		40.218197, 31.649681, 33.261375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961121, 31.875711, 33.015194>,  <40.474133, 32.300545, 33.290874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961121, 31.875711, 33.015194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620934, 31.682764, 32.931259>,  <40.416821, 31.566996, 32.880898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620934, 31.682764, 32.931259>,  <40.961121, 31.875711, 33.015194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620934, 31.682764, 32.931259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299599, -0.116295, -0.946951,
		0.432378, -0.868214, 0.243423,
		-0.850465, -0.482369, -0.209832,
		40.365795, 31.538054, 32.868309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073944, 31.129276, 32.608578>,  <40.961121, 31.875711, 33.015194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073944, 31.129276, 32.608578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738235, 31.331249, 32.527920>,  <40.536808, 31.452433, 32.479527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738235, 31.331249, 32.527920>,  <41.073944, 31.129276, 32.608578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738235, 31.331249, 32.527920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160979, -0.123471, -0.979204,
		-0.519329, -0.854282, 0.022343,
		-0.839275, 0.504932, -0.201644,
		40.486454, 31.482729, 32.467426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906078, 30.893061, 32.031879>,  <41.073944, 31.129276, 32.608578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906078, 30.893061, 32.031879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668732, 31.214840, 32.043053>,  <40.526325, 31.407907, 32.049755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668732, 31.214840, 32.043053>,  <40.906078, 30.893061, 32.031879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668732, 31.214840, 32.043053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151916, 0.145995, -0.977551,
		-0.790469, -0.575801, -0.208837,
		-0.593364, 0.804449, 0.027931,
		40.490723, 31.456175, 32.051434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621635, 30.967346, 31.877144>,  <40.906078, 30.893061, 32.031879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621635, 30.967346, 31.877144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486591, 31.140106, 31.542604>,  <41.405567, 31.243763, 31.341881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.486591, 31.140106, 31.542604>,  <41.621635, 30.967346, 31.877144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486591, 31.140106, 31.542604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534146, -0.643699, -0.548032,
		-0.775054, -0.631753, -0.013380,
		-0.337608, 0.431902, -0.836350,
		41.385307, 31.269676, 31.291698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812668, 30.605858, 32.568672>,  <41.621635, 30.967346, 31.877144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812668, 30.605858, 32.568672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007824, 30.890131, 32.365932>,  <42.124916, 31.060696, 32.244289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007824, 30.890131, 32.365932>,  <41.812668, 30.605858, 32.568672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007824, 30.890131, 32.365932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468849, 0.276432, 0.838908,
		0.736306, -0.646928, -0.198335,
		0.487887, 0.710682, -0.506850,
		42.154190, 31.103336, 32.213879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545403, 30.461979, 32.420525>,  <41.812668, 30.605858, 32.568672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545403, 30.461979, 32.420525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429344, 30.838261, 32.490822>,  <42.359707, 31.064030, 32.533001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429344, 30.838261, 32.490822>,  <42.545403, 30.461979, 32.420525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429344, 30.838261, 32.490822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709974, 0.088460, 0.698650,
		0.641678, 0.327487, -0.693543,
		-0.290149, 0.940706, 0.175745,
		42.342300, 31.120472, 32.543545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996040, 30.792507, 32.754719>,  <42.545403, 30.461979, 32.420525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996040, 30.792507, 32.754719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699558, 31.036842, 32.866062>,  <42.521667, 31.183443, 32.932869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699558, 31.036842, 32.866062>,  <42.996040, 30.792507, 32.754719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699558, 31.036842, 32.866062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540597, 0.297345, 0.786982,
		0.397949, 0.733800, -0.550612,
		-0.741210, 0.610838, 0.278361,
		42.477196, 31.220095, 32.949570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100822, 31.476591, 32.606274>,  <42.996040, 30.792507, 32.754719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100822, 31.476591, 32.606274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876957, 31.506197, 32.936436>,  <42.742638, 31.523960, 33.134533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876957, 31.506197, 32.936436>,  <43.100822, 31.476591, 32.606274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876957, 31.506197, 32.936436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710289, 0.555942, 0.431761,
		-0.426921, 0.827919, -0.363714,
		-0.559667, 0.074015, 0.825405,
		42.709057, 31.528400, 33.184059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984745, 32.245777, 32.724369>,  <43.100822, 31.476591, 32.606274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984745, 32.245777, 32.724369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993626, 32.014587, 33.050671>,  <42.998955, 31.875874, 33.246452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993626, 32.014587, 33.050671>,  <42.984745, 32.245777, 32.724369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993626, 32.014587, 33.050671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598581, 0.661224, 0.452199,
		-0.800755, 0.478257, 0.360641,
		0.022197, -0.577973, 0.815754,
		43.000286, 31.841196, 33.295395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713821, 32.634605, 33.333920>,  <42.984745, 32.245777, 32.724369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713821, 32.634605, 33.333920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944279, 32.345943, 33.487423>,  <43.082554, 32.172745, 33.579525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944279, 32.345943, 33.487423>,  <42.713821, 32.634605, 33.333920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944279, 32.345943, 33.487423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447720, 0.671458, 0.590501,
		-0.683814, -0.168400, 0.709958,
		0.576147, -0.721655, 0.383756,
		43.117123, 32.129448, 33.602551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672684, 32.756222, 34.021545>,  <42.713821, 32.634605, 33.333920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672684, 32.756222, 34.021545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003456, 32.536243, 33.974651>,  <43.201920, 32.404255, 33.946514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003456, 32.536243, 33.974651>,  <42.672684, 32.756222, 34.021545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003456, 32.536243, 33.974651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484971, 0.592015, 0.643678,
		-0.284584, -0.589133, 0.756263,
		0.826931, -0.549947, -0.117234,
		43.251537, 32.371258, 33.939480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050880, 32.716114, 34.738979>,  <42.672684, 32.756222, 34.021545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050880, 32.716114, 34.738979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298664, 32.632317, 34.436356>,  <43.447334, 32.582039, 34.254780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298664, 32.632317, 34.436356>,  <43.050880, 32.716114, 34.738979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298664, 32.632317, 34.436356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729016, 0.511025, 0.455401,
		0.291221, -0.833647, 0.469279,
		0.619457, -0.209489, -0.756563,
		43.484501, 32.569469, 34.209385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797935, 32.324104, 34.935711>,  <43.050880, 32.716114, 34.738979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797935, 32.324104, 34.935711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858562, 32.595932, 34.648598>,  <43.894939, 32.759029, 34.476330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858562, 32.595932, 34.648598>,  <43.797935, 32.324104, 34.935711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858562, 32.595932, 34.648598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912618, 0.182721, 0.365706,
		0.379677, -0.710491, -0.592493,
		0.151570, 0.679571, -0.717782,
		43.904034, 32.799805, 34.433262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455219, 32.190765, 34.696156>,  <43.797935, 32.324104, 34.935711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455219, 32.190765, 34.696156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384281, 32.576740, 34.618759>,  <44.341717, 32.808327, 34.572323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384281, 32.576740, 34.618759>,  <44.455219, 32.190765, 34.696156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384281, 32.576740, 34.618759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973098, 0.201311, 0.112041,
		0.147064, -0.168416, -0.974684,
		-0.177345, 0.964940, -0.193491,
		44.331078, 32.866222, 34.560711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099960, 32.511673, 34.507908>,  <44.455219, 32.190765, 34.696156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099960, 32.511673, 34.507908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881836, 32.846050, 34.532646>,  <44.750961, 33.046677, 34.547489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.881836, 32.846050, 34.532646>,  <45.099960, 32.511673, 34.507908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881836, 32.846050, 34.532646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838095, 0.542410, 0.058201,
		0.015107, 0.083570, -0.996387,
		-0.545314, 0.835947, 0.061846,
		44.718243, 33.096836, 34.551201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257812, 32.915012, 33.878311>,  <45.099960, 32.511673, 34.507908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257812, 32.915012, 33.878311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152206, 33.109035, 34.211781>,  <45.088840, 33.225449, 34.411861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.152206, 33.109035, 34.211781>,  <45.257812, 32.915012, 33.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152206, 33.109035, 34.211781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917944, 0.391709, 0.062796,
		-0.296097, 0.781843, -0.548678,
		-0.264019, 0.485061, 0.833672,
		45.073002, 33.254555, 34.461884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854156, 33.159119, 34.057163>,  <45.257812, 32.915012, 33.878311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854156, 33.159119, 34.057163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632839, 33.291176, 34.363071>,  <45.500050, 33.370411, 34.546616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632839, 33.291176, 34.363071>,  <45.854156, 33.159119, 34.057163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632839, 33.291176, 34.363071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785074, 0.513565, 0.346278,
		-0.278436, 0.791994, -0.543341,
		-0.553291, 0.330147, 0.764769,
		45.466850, 33.390221, 34.592503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942242, 33.944241, 34.159325>,  <45.854156, 33.159119, 34.057163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942242, 33.944241, 34.159325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847450, 33.761703, 34.502392>,  <45.790577, 33.652180, 34.708233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847450, 33.761703, 34.502392>,  <45.942242, 33.944241, 34.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847450, 33.761703, 34.502392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739716, 0.487553, 0.463801,
		-0.629811, 0.744341, 0.222025,
		-0.236977, -0.456342, 0.857667,
		45.776356, 33.624802, 34.759693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693073, 34.389923, 34.684330>,  <45.942242, 33.944241, 34.159325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693073, 34.389923, 34.684330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882587, 34.069168, 34.829933>,  <45.996296, 33.876717, 34.917297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882587, 34.069168, 34.829933>,  <45.693073, 34.389923, 34.684330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882587, 34.069168, 34.829933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759592, 0.581261, 0.291814,
		-0.445588, 0.138244, 0.884500,
		0.473784, -0.801888, 0.364012,
		46.024723, 33.828602, 34.939137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938625, 34.479530, 35.338577>,  <45.693073, 34.389923, 34.684330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938625, 34.479530, 35.338577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233894, 34.280373, 35.156502>,  <46.411057, 34.160877, 35.047256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233894, 34.280373, 35.156502>,  <45.938625, 34.479530, 35.338577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233894, 34.280373, 35.156502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626344, 0.756461, 0.188306,
		0.250577, -0.424108, 0.870255,
		0.738177, -0.497894, -0.455189,
		46.455349, 34.131004, 35.019943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.503620, 34.403328, 35.904552>,  <45.938625, 34.479530, 35.338577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.503620, 34.403328, 35.904552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.561493, 34.416145, 35.508968>,  <46.596218, 34.423836, 35.271618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.561493, 34.416145, 35.508968>,  <46.503620, 34.403328, 35.904552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561493, 34.416145, 35.508968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527740, 0.842951, 0.104523,
		0.836993, -0.537035, 0.105048,
		0.144683, 0.032047, -0.988959,
		46.604897, 34.425758, 35.212280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214222, 34.445915, 35.816700>,  <46.503620, 34.403328, 35.904552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214222, 34.445915, 35.816700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029667, 34.582916, 35.489330>,  <46.918934, 34.665115, 35.292908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029667, 34.582916, 35.489330>,  <47.214222, 34.445915, 35.816700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029667, 34.582916, 35.489330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718197, 0.685780, -0.117891,
		0.520881, -0.642182, -0.562392,
		-0.461385, 0.342501, -0.818423,
		46.891251, 34.685665, 35.243805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721611, 34.467937, 35.292290>,  <47.214222, 34.445915, 35.816700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721611, 34.467937, 35.292290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418865, 34.727661, 35.262478>,  <47.237217, 34.883495, 35.244591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418865, 34.727661, 35.262478>,  <47.721611, 34.467937, 35.292290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418865, 34.727661, 35.262478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651754, 0.758336, -0.011943,
		0.048765, -0.057614, -0.997147,
		-0.756861, 0.649312, -0.074530,
		47.191807, 34.922455, 35.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.806126, 34.954823, 34.742088>,  <47.721611, 34.467937, 35.292290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.806126, 34.954823, 34.742088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551922, 35.132778, 34.994499>,  <47.399399, 35.239552, 35.145947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551922, 35.132778, 34.994499>,  <47.806126, 34.954823, 34.742088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.551922, 35.132778, 34.994499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569654, 0.821864, -0.005731,
		-0.521168, 0.355825, -0.775740,
		-0.635513, 0.444891, 0.631027,
		47.361267, 35.266247, 35.183807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.185722, 30.533146, 22.261421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803776, 30.635929, 22.201822>,  <36.574608, 30.697599, 22.166063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803776, 30.635929, 22.201822>,  <37.185722, 30.533146, 22.261421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803776, 30.635929, 22.201822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228849, -0.316650, 0.920522,
		0.189356, 0.913074, 0.361164,
		-0.954868, 0.256959, -0.148997,
		36.517315, 30.713017, 22.157124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002274, 30.908943, 22.881880>,  <37.185722, 30.533146, 22.261421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002274, 30.908943, 22.881880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656712, 30.813261, 22.704590>,  <36.449375, 30.755852, 22.598217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656712, 30.813261, 22.704590>,  <37.002274, 30.908943, 22.881880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656712, 30.813261, 22.704590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373827, -0.285199, 0.882562,
		-0.337520, 0.928139, 0.156964,
		-0.863906, -0.239205, -0.443224,
		36.397541, 30.741499, 22.571623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277576, 31.156393, 23.309700>,  <37.002274, 30.908943, 22.881880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277576, 31.156393, 23.309700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156021, 30.869015, 23.059425>,  <36.083088, 30.696587, 22.909260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.156021, 30.869015, 23.059425>,  <36.277576, 31.156393, 23.309700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156021, 30.869015, 23.059425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477970, -0.453141, 0.752468,
		-0.824132, 0.527729, -0.205690,
		-0.303893, -0.718447, -0.625687,
		36.064854, 30.653481, 22.871719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625534, 31.124399, 23.377399>,  <36.277576, 31.156393, 23.309700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625534, 31.124399, 23.377399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748184, 30.765402, 23.250599>,  <35.821774, 30.550003, 23.174519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.748184, 30.765402, 23.250599>,  <35.625534, 31.124399, 23.377399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748184, 30.765402, 23.250599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203874, -0.387242, 0.899155,
		-0.929741, -0.211072, -0.301712,
		0.306622, -0.897492, -0.317002,
		35.840172, 30.496155, 23.155499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151577, 30.614307, 23.614264>,  <35.625534, 31.124399, 23.377399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151577, 30.614307, 23.614264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463783, 30.380383, 23.525909>,  <35.651108, 30.240028, 23.472897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.463783, 30.380383, 23.525909>,  <35.151577, 30.614307, 23.614264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463783, 30.380383, 23.525909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038240, -0.308011, 0.950614,
		-0.623963, -0.750418, -0.218044,
		0.780518, -0.584810, -0.220883,
		35.697937, 30.204939, 23.459644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985306, 29.993774, 23.876331>,  <35.151577, 30.614307, 23.614264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985306, 29.993774, 23.876331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380344, 30.021835, 23.820131>,  <35.617367, 30.038671, 23.786411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380344, 30.021835, 23.820131>,  <34.985306, 29.993774, 23.876331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380344, 30.021835, 23.820131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155043, -0.293251, 0.943380,
		0.024979, -0.953458, -0.300489,
		0.987591, 0.070154, -0.140502,
		35.676620, 30.042881, 23.777981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211613, 29.309227, 24.069294>,  <34.985306, 29.993774, 23.876331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211613, 29.309227, 24.069294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506447, 29.578888, 24.088171>,  <35.683346, 29.740685, 24.099497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506447, 29.578888, 24.088171>,  <35.211613, 29.309227, 24.069294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506447, 29.578888, 24.088171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155958, -0.237632, 0.958753,
		0.657560, -0.699321, -0.280294,
		0.737084, 0.674152, 0.047193,
		35.727573, 29.781134, 24.102329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586727, 29.034103, 24.552250>,  <35.211613, 29.309227, 24.069294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586727, 29.034103, 24.552250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734177, 29.405155, 24.528191>,  <35.822647, 29.627787, 24.513754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734177, 29.405155, 24.528191>,  <35.586727, 29.034103, 24.552250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734177, 29.405155, 24.528191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243367, -0.033855, 0.969343,
		0.897156, -0.371963, -0.238234,
		0.368625, 0.927630, -0.060150,
		35.844765, 29.683445, 24.510145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121025, 28.993443, 24.972864>,  <35.586727, 29.034103, 24.552250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121025, 28.993443, 24.972864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107761, 29.393095, 24.962782>,  <36.099804, 29.632887, 24.956732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107761, 29.393095, 24.962782>,  <36.121025, 28.993443, 24.972864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107761, 29.393095, 24.962782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375422, 0.035824, 0.926161,
		0.926261, 0.021245, -0.376284,
		-0.033156, 0.999132, -0.025206,
		36.097816, 29.692835, 24.955219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751167, 29.287603, 25.236992>,  <36.121025, 28.993443, 24.972864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751167, 29.287603, 25.236992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507507, 29.601564, 25.282360>,  <36.361313, 29.789942, 25.309582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.507507, 29.601564, 25.282360>,  <36.751167, 29.287603, 25.236992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507507, 29.601564, 25.282360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283194, 0.081698, 0.955577,
		0.740769, 0.614209, -0.272047,
		-0.609149, 0.784903, 0.113421,
		36.324764, 29.837036, 25.316387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174084, 29.821329, 25.533052>,  <36.751167, 29.287603, 25.236992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174084, 29.821329, 25.533052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801121, 29.934620, 25.622843>,  <36.577343, 30.002594, 25.676718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801121, 29.934620, 25.622843>,  <37.174084, 29.821329, 25.533052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801121, 29.934620, 25.622843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226711, -0.025315, 0.973633,
		0.281443, 0.958718, -0.040607,
		-0.932412, 0.283228, 0.224477,
		36.521397, 30.019588, 25.690186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257107, 30.398985, 26.044291>,  <37.174084, 29.821329, 25.533052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257107, 30.398985, 26.044291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894146, 30.235897, 26.085047>,  <36.676369, 30.138044, 26.109501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894146, 30.235897, 26.085047>,  <37.257107, 30.398985, 26.044291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894146, 30.235897, 26.085047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065380, 0.102542, 0.992578,
		-0.415141, 0.907331, -0.066390,
		-0.907405, -0.407720, 0.101890,
		36.621925, 30.113581, 26.115614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997612, 30.756407, 26.660343>,  <37.257107, 30.398985, 26.044291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997612, 30.756407, 26.660343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760414, 30.437780, 26.613291>,  <36.618095, 30.246605, 26.585058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.760414, 30.437780, 26.613291>,  <36.997612, 30.756407, 26.660343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760414, 30.437780, 26.613291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074468, -0.091211, 0.993043,
		-0.801755, 0.597630, -0.005231,
		-0.592995, -0.796567, -0.117633,
		36.582516, 30.198811, 26.578001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559692, 30.955492, 27.153656>,  <36.997612, 30.756407, 26.660343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559692, 30.955492, 27.153656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536160, 30.564150, 27.074303>,  <36.522041, 30.329344, 27.026691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536160, 30.564150, 27.074303>,  <36.559692, 30.955492, 27.153656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536160, 30.564150, 27.074303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103157, -0.191706, 0.976016,
		-0.992924, 0.077884, -0.089646,
		-0.058831, -0.978357, -0.198383,
		36.518509, 30.270643, 27.014788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173088, 30.716503, 27.685484>,  <36.559692, 30.955492, 27.153656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173088, 30.716503, 27.685484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343586, 30.388147, 27.533455>,  <36.445885, 30.191133, 27.442238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.343586, 30.388147, 27.533455>,  <36.173088, 30.716503, 27.685484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343586, 30.388147, 27.533455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171998, -0.338944, 0.924950,
		-0.888108, -0.459623, -0.003280,
		0.426240, -0.820891, -0.380074,
		36.471458, 30.141880, 27.419434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820156, 29.997213, 27.936703>,  <36.173088, 30.716503, 27.685484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820156, 29.997213, 27.936703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210377, 29.977371, 27.851063>,  <36.444508, 29.965466, 27.799679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210377, 29.977371, 27.851063>,  <35.820156, 29.997213, 27.936703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210377, 29.977371, 27.851063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159433, -0.510780, 0.844799,
		-0.151263, -0.858279, -0.490384,
		0.975551, -0.049603, -0.214101,
		36.503040, 29.962490, 27.786833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062538, 29.670340, 28.490700>,  <35.820156, 29.997213, 27.936703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062538, 29.670340, 28.490700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419426, 29.720488, 28.317156>,  <36.633556, 29.750576, 28.213030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419426, 29.720488, 28.317156>,  <36.062538, 29.670340, 28.490700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419426, 29.720488, 28.317156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446611, -0.387470, 0.806477,
		-0.067000, -0.913318, -0.401698,
		0.892216, 0.125369, -0.433858,
		36.687092, 29.758099, 28.186998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462486, 29.047298, 28.520580>,  <36.062538, 29.670340, 28.490700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462486, 29.047298, 28.520580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718666, 29.352755, 28.487907>,  <36.872375, 29.536028, 28.468304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718666, 29.352755, 28.487907>,  <36.462486, 29.047298, 28.520580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718666, 29.352755, 28.487907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444342, -0.281697, 0.850416,
		0.626402, -0.580947, -0.519732,
		0.640453, 0.763641, -0.081684,
		36.910801, 29.581846, 28.463402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064781, 28.845581, 28.645306>,  <36.462486, 29.047298, 28.520580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064781, 28.845581, 28.645306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120689, 29.234419, 28.720663>,  <37.154236, 29.467722, 28.765877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.120689, 29.234419, 28.720663>,  <37.064781, 28.845581, 28.645306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120689, 29.234419, 28.720663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491947, -0.233292, 0.838787,
		0.859332, -0.024560, -0.510827,
		0.139772, 0.972096, 0.188393,
		37.162621, 29.526049, 28.777182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723236, 28.896673, 29.015276>,  <37.064781, 28.845581, 28.645306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723236, 28.896673, 29.015276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561653, 29.260145, 29.057459>,  <37.464703, 29.478228, 29.082769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561653, 29.260145, 29.057459>,  <37.723236, 28.896673, 29.015276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561653, 29.260145, 29.057459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431415, 0.087583, 0.897892,
		0.806659, 0.408208, -0.427397,
		-0.403960, 0.908678, 0.105457,
		37.440464, 29.532749, 29.089096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289070, 29.331875, 29.091038>,  <37.723236, 28.896673, 29.015276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289070, 29.331875, 29.091038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955208, 29.486279, 29.248190>,  <37.754890, 29.578920, 29.342482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955208, 29.486279, 29.248190>,  <38.289070, 29.331875, 29.091038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955208, 29.486279, 29.248190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400325, -0.064742, 0.914083,
		0.378280, 0.920220, -0.100492,
		-0.834652, 0.386009, 0.392878,
		37.704811, 29.602081, 29.366053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513241, 29.687847, 29.619171>,  <38.289070, 29.331875, 29.091038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513241, 29.687847, 29.619171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130848, 29.697565, 29.736143>,  <37.901413, 29.703396, 29.806326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130848, 29.697565, 29.736143>,  <38.513241, 29.687847, 29.619171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130848, 29.697565, 29.736143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285677, -0.150622, 0.946415,
		0.067040, 0.988293, 0.137050,
		-0.955978, 0.024295, 0.292430,
		37.844055, 29.704853, 29.823872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425411, 29.653360, 30.384911>,  <38.513241, 29.687847, 29.619171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425411, 29.653360, 30.384911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806091, 29.534000, 30.413807>,  <39.034500, 29.462385, 30.431145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806091, 29.534000, 30.413807>,  <38.425411, 29.653360, 30.384911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806091, 29.534000, 30.413807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233185, 0.549482, -0.802305,
		0.199713, 0.780402, 0.592527,
		0.951703, -0.298399, 0.072240,
		39.091602, 29.444481, 30.435478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755409, 30.231749, 30.195059>,  <38.425411, 29.653360, 30.384911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755409, 30.231749, 30.195059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040806, 29.958710, 30.131823>,  <39.212044, 29.794888, 30.093880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040806, 29.958710, 30.131823>,  <38.755409, 30.231749, 30.195059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040806, 29.958710, 30.131823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327378, 0.524263, -0.786112,
		0.619478, 0.509129, 0.597524,
		0.713492, -0.682595, -0.158092,
		39.254852, 29.753931, 30.084394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313583, 30.565907, 29.925447>,  <38.755409, 30.231749, 30.195059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313583, 30.565907, 29.925447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.383179, 30.189844, 29.808254>,  <39.424934, 29.964207, 29.737938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.383179, 30.189844, 29.808254>,  <39.313583, 30.565907, 29.925447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383179, 30.189844, 29.808254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403298, 0.339454, -0.849778,
		0.898376, 0.029688, 0.438222,
		0.173985, -0.940154, -0.292984,
		39.435375, 29.907799, 29.720360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967621, 30.487936, 29.587603>,  <39.313583, 30.565907, 29.925447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967621, 30.487936, 29.587603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765186, 30.169922, 29.453856>,  <39.643726, 29.979115, 29.373608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.765186, 30.169922, 29.453856>,  <39.967621, 30.487936, 29.587603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765186, 30.169922, 29.453856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323621, 0.184311, -0.928062,
		0.799468, -0.577885, 0.164013,
		-0.506084, -0.795034, -0.334366,
		39.613361, 29.931412, 29.353546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505440, 30.081522, 29.206789>,  <39.967621, 30.487936, 29.587603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505440, 30.081522, 29.206789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.149307, 29.973082, 29.060463>,  <39.935627, 29.908018, 28.972668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.149307, 29.973082, 29.060463>,  <40.505440, 30.081522, 29.206789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149307, 29.973082, 29.060463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363051, 0.062189, -0.929692,
		0.274789, -0.960540, 0.043054,
		-0.890329, -0.271100, -0.365813,
		39.882210, 29.891752, 28.950718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761333, 29.823139, 28.483774>,  <40.505440, 30.081522, 29.206789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761333, 29.823139, 28.483774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361992, 29.845758, 28.487406>,  <40.122387, 29.859329, 28.489586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.361992, 29.845758, 28.487406>,  <40.761333, 29.823139, 28.483774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361992, 29.845758, 28.487406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002429, 0.200208, -0.979751,
		-0.057223, -0.978120, -0.200016,
		-0.998359, 0.056550, 0.009080,
		40.062485, 29.862722, 28.490129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508583, 29.342571, 28.009418>,  <40.761333, 29.823139, 28.483774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508583, 29.342571, 28.009418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222233, 29.620260, 28.039295>,  <40.050423, 29.786873, 28.057222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222233, 29.620260, 28.039295>,  <40.508583, 29.342571, 28.009418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222233, 29.620260, 28.039295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047848, 0.155499, -0.986677,
		-0.696588, -0.702762, -0.144535,
		-0.715874, 0.694223, 0.074693,
		40.007469, 29.828527, 28.061703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112312, 29.239889, 27.422821>,  <40.508583, 29.342571, 28.009418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112312, 29.239889, 27.422821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060799, 29.620852, 27.533339>,  <40.029892, 29.849428, 27.599649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060799, 29.620852, 27.533339>,  <40.112312, 29.239889, 27.422821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060799, 29.620852, 27.533339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029381, 0.282157, -0.958918,
		-0.991237, -0.115376, -0.064320,
		-0.128784, 0.952405, 0.276295,
		40.022163, 29.906572, 27.616226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898621, 29.522825, 26.834427>,  <40.112312, 29.239889, 27.422821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898621, 29.522825, 26.834427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980164, 29.872545, 27.010628>,  <40.029091, 30.082376, 27.116348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.980164, 29.872545, 27.010628>,  <39.898621, 29.522825, 26.834427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980164, 29.872545, 27.010628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012911, 0.452314, -0.891765,
		-0.978915, 0.176107, 0.103497,
		0.203859, 0.874299, 0.440503,
		40.041321, 30.134834, 27.142778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395195, 29.864651, 26.561464>,  <39.898621, 29.522825, 26.834427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395195, 29.864651, 26.561464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681911, 30.110746, 26.692728>,  <39.853943, 30.258404, 26.771486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681911, 30.110746, 26.692728>,  <39.395195, 29.864651, 26.561464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681911, 30.110746, 26.692728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020512, 0.451813, -0.891877,
		-0.696982, 0.646024, 0.311237,
		0.716795, 0.615238, 0.328157,
		39.896950, 30.295319, 26.791176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122841, 30.490061, 26.438887>,  <39.395195, 29.864651, 26.561464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122841, 30.490061, 26.438887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.519829, 30.524715, 26.473532>,  <39.758022, 30.545507, 26.494318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.519829, 30.524715, 26.473532>,  <39.122841, 30.490061, 26.438887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519829, 30.524715, 26.473532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027461, 0.531685, -0.846497,
		-0.119389, 0.842499, 0.525301,
		0.992468, 0.086637, 0.086613,
		39.817570, 30.550707, 26.499516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165901, 31.125656, 26.178764>,  <39.122841, 30.490061, 26.438887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165901, 31.125656, 26.178764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.514343, 30.929689, 26.165138>,  <39.723408, 30.812109, 26.156961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.514343, 30.929689, 26.165138>,  <39.165901, 31.125656, 26.178764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514343, 30.929689, 26.165138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136252, 0.307746, -0.941662,
		0.471819, 0.815644, 0.334831,
		0.871104, -0.489916, -0.034067,
		39.775673, 30.782715, 26.154919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539249, 31.416067, 25.703625>,  <39.165901, 31.125656, 26.178764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539249, 31.416067, 25.703625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736225, 31.068727, 25.727198>,  <39.854408, 30.860323, 25.741343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.736225, 31.068727, 25.727198>,  <39.539249, 31.416067, 25.703625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736225, 31.068727, 25.727198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088536, -0.017384, -0.995921,
		0.865834, 0.495645, 0.068320,
		0.492436, -0.868351, 0.058934,
		39.883957, 30.808222, 25.744879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083916, 31.471733, 25.220989>,  <39.539249, 31.416067, 25.703625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083916, 31.471733, 25.220989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036900, 31.076118, 25.256739>,  <40.008690, 30.838749, 25.278189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036900, 31.076118, 25.256739>,  <40.083916, 31.471733, 25.220989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036900, 31.076118, 25.256739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031385, -0.093652, -0.995110,
		0.992572, -0.114163, 0.042049,
		-0.117542, -0.989038, 0.089373,
		40.001637, 30.779408, 25.283550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635334, 31.171024, 24.845734>,  <40.083916, 31.471733, 25.220989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635334, 31.171024, 24.845734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.359631, 30.882767, 24.875660>,  <40.194210, 30.709812, 24.893616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.359631, 30.882767, 24.875660>,  <40.635334, 31.171024, 24.845734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359631, 30.882767, 24.875660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025340, -0.079224, -0.996535,
		0.724075, -0.688762, 0.036345,
		-0.689255, -0.720645, 0.074817,
		40.152855, 30.666573, 24.898106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849655, 30.634773, 24.310251>,  <40.635334, 31.171024, 24.845734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849655, 30.634773, 24.310251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461784, 30.551897, 24.362099>,  <40.229061, 30.502171, 24.393208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461784, 30.551897, 24.362099>,  <40.849655, 30.634773, 24.310251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461784, 30.551897, 24.362099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125474, -0.033084, -0.991545,
		0.209729, -0.977741, 0.006083,
		-0.969675, -0.207193, 0.129620,
		40.170883, 30.489740, 24.400984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764263, 29.965015, 23.927740>,  <40.849655, 30.634773, 24.310251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764263, 29.965015, 23.927740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.398281, 30.122873, 23.961462>,  <40.178692, 30.217588, 23.981695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.398281, 30.122873, 23.961462>,  <40.764263, 29.965015, 23.927740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398281, 30.122873, 23.961462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248907, -0.387456, -0.887650,
		-0.317641, -0.833147, 0.452736,
		-0.914959, 0.394644, 0.084305,
		40.123795, 30.241266, 23.986753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275307, 29.409130, 23.739990>,  <40.764263, 29.965015, 23.927740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275307, 29.409130, 23.739990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128712, 29.774519, 23.669275>,  <40.040756, 29.993753, 23.626846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128712, 29.774519, 23.669275>,  <40.275307, 29.409130, 23.739990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128712, 29.774519, 23.669275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458821, -0.342731, -0.819767,
		-0.809428, -0.219317, 0.544727,
		-0.366483, 0.913475, -0.176789,
		40.018768, 30.048561, 23.616238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.789555, 29.547287, 22.946375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012863, 29.869841, 23.024435>,  <39.146847, 30.063374, 23.071272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012863, 29.869841, 23.024435>,  <38.789555, 29.547287, 22.946375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012863, 29.869841, 23.024435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263927, 0.395609, -0.879679,
		-0.786563, 0.439590, 0.433682,
		0.558267, 0.806383, 0.195152,
		39.180344, 30.111755, 23.082981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344936, 30.179590, 22.665377>,  <38.789555, 29.547287, 22.946375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344936, 30.179590, 22.665377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732090, 30.276546, 22.692070>,  <38.964382, 30.334721, 22.708086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732090, 30.276546, 22.692070>,  <38.344936, 30.179590, 22.665377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732090, 30.276546, 22.692070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028695, 0.370206, -0.928506,
		-0.249766, 0.896769, 0.365271,
		0.967881, 0.242391, 0.066732,
		39.022453, 30.349264, 22.712090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412441, 30.930029, 22.481831>,  <38.344936, 30.179590, 22.665377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412441, 30.930029, 22.481831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773296, 30.762163, 22.441786>,  <38.989811, 30.661444, 22.417759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773296, 30.762163, 22.441786>,  <38.412441, 30.930029, 22.481831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773296, 30.762163, 22.441786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089181, 0.408422, -0.908426,
		0.422124, 0.810600, 0.405880,
		0.902141, -0.419665, -0.100114,
		39.043938, 30.636263, 22.411751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786087, 31.404608, 22.135464>,  <38.412441, 30.930029, 22.481831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786087, 31.404608, 22.135464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.996353, 31.068977, 22.079418>,  <39.122513, 30.867599, 22.045792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.996353, 31.068977, 22.079418>,  <38.786087, 31.404608, 22.135464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996353, 31.068977, 22.079418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068835, 0.122210, -0.990114,
		0.847904, 0.530110, 0.006483,
		0.525661, -0.839076, -0.140113,
		39.154053, 30.817255, 22.037384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372604, 31.659416, 21.789227>,  <38.786087, 31.404608, 22.135464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372604, 31.659416, 21.789227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320354, 31.267401, 21.729280>,  <39.289005, 31.032192, 21.693312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.320354, 31.267401, 21.729280>,  <39.372604, 31.659416, 21.789227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320354, 31.267401, 21.729280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085184, 0.161698, -0.983157,
		0.987765, -0.115661, -0.104606,
		-0.130627, -0.980039, -0.149867,
		39.281166, 30.973389, 21.684320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690254, 31.522417, 21.160355>,  <39.372604, 31.659416, 21.789227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690254, 31.522417, 21.160355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.448418, 31.205858, 21.196468>,  <39.303314, 31.015923, 21.218136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.448418, 31.205858, 21.196468>,  <39.690254, 31.522417, 21.160355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448418, 31.205858, 21.196468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206288, 0.046093, -0.977405,
		0.769356, -0.609560, -0.191123,
		-0.604596, -0.791399, 0.090283,
		39.267040, 30.968439, 21.223553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850891, 30.997301, 20.570574>,  <39.690254, 31.522417, 21.160355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850891, 30.997301, 20.570574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490814, 30.888554, 20.706652>,  <39.274765, 30.823305, 20.788298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.490814, 30.888554, 20.706652>,  <39.850891, 30.997301, 20.570574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490814, 30.888554, 20.706652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305207, -0.163365, -0.938169,
		0.310635, -0.948367, 0.064085,
		-0.900197, -0.271869, 0.340195,
		39.220757, 30.806993, 20.808710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669064, 30.431826, 20.240534>,  <39.850891, 30.997301, 20.570574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669064, 30.431826, 20.240534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326702, 30.605692, 20.352594>,  <39.121284, 30.710012, 20.419830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326702, 30.605692, 20.352594>,  <39.669064, 30.431826, 20.240534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326702, 30.605692, 20.352594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311947, -0.001898, -0.950098,
		-0.412444, -0.900589, 0.137217,
		-0.855908, 0.434667, 0.280153,
		39.069931, 30.736092, 20.436640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162861, 30.065983, 19.859613>,  <39.669064, 30.431826, 20.240534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162861, 30.065983, 19.859613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971210, 30.396513, 19.978018>,  <38.856220, 30.594831, 20.049061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971210, 30.396513, 19.978018>,  <39.162861, 30.065983, 19.859613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971210, 30.396513, 19.978018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348820, 0.130213, -0.928100,
		-0.805459, -0.547930, 0.225851,
		-0.479125, 0.826328, 0.296010,
		38.827473, 30.644411, 20.066820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474972, 30.011410, 19.852816>,  <39.162861, 30.065983, 19.859613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474972, 30.011410, 19.852816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534359, 30.404669, 19.810144>,  <38.569992, 30.640623, 19.784542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.534359, 30.404669, 19.810144>,  <38.474972, 30.011410, 19.852816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534359, 30.404669, 19.810144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402077, -0.038543, -0.914794,
		-0.903488, 0.178711, 0.389578,
		0.148468, 0.983146, -0.106678,
		38.578899, 30.699614, 19.778141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864067, 30.220451, 19.497894>,  <38.474972, 30.011410, 19.852816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864067, 30.220451, 19.497894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134880, 30.510347, 19.446701>,  <38.297367, 30.684284, 19.415985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.134880, 30.510347, 19.446701>,  <37.864067, 30.220451, 19.497894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134880, 30.510347, 19.446701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183693, -0.001988, -0.982982,
		-0.712660, 0.689020, 0.131783,
		0.677032, 0.724740, -0.127985,
		38.337990, 30.727770, 19.408306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481155, 30.680069, 19.189791>,  <37.864067, 30.220451, 19.497894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481155, 30.680069, 19.189791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870163, 30.743549, 19.121658>,  <38.103569, 30.781637, 19.080778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.870163, 30.743549, 19.121658>,  <37.481155, 30.680069, 19.189791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870163, 30.743549, 19.121658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203036, 0.220200, -0.954090,
		-0.113910, 0.962458, 0.246372,
		0.972523, 0.158703, -0.170331,
		38.161919, 30.791161, 19.070559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538433, 31.128887, 18.592083>,  <37.481155, 30.680069, 19.189791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538433, 31.128887, 18.592083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922340, 31.016644, 18.587967>,  <38.152683, 30.949297, 18.585497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922340, 31.016644, 18.587967>,  <37.538433, 31.128887, 18.592083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922340, 31.016644, 18.587967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041621, 0.178411, -0.983075,
		0.277698, 0.943094, 0.182913,
		0.959767, -0.280611, -0.010292,
		38.210270, 30.932461, 18.584879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859566, 31.651680, 18.296797>,  <37.538433, 31.128887, 18.592083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859566, 31.651680, 18.296797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109867, 31.342312, 18.256302>,  <38.260048, 31.156691, 18.232006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109867, 31.342312, 18.256302>,  <37.859566, 31.651680, 18.296797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109867, 31.342312, 18.256302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110802, 0.216607, -0.969951,
		0.772110, 0.595735, 0.221239,
		0.625755, -0.773422, -0.101236,
		38.297592, 31.110285, 18.225931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343761, 31.980438, 18.020468>,  <37.859566, 31.651680, 18.296797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343761, 31.980438, 18.020468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391151, 31.592686, 17.934435>,  <38.419586, 31.360033, 17.882816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.391151, 31.592686, 17.934435>,  <38.343761, 31.980438, 18.020468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391151, 31.592686, 17.934435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244602, 0.238423, -0.939854,
		0.962359, 0.058738, 0.265359,
		0.118473, -0.969384, -0.215081,
		38.426693, 31.301870, 17.869911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933022, 32.031059, 17.727995>,  <38.343761, 31.980438, 18.020468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933022, 32.031059, 17.727995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770699, 31.688232, 17.601028>,  <38.673306, 31.482536, 17.524849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770699, 31.688232, 17.601028>,  <38.933022, 32.031059, 17.727995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770699, 31.688232, 17.601028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197190, 0.257013, -0.946076,
		0.892433, -0.446517, 0.064707,
		-0.405808, -0.857069, -0.317415,
		38.648956, 31.431112, 17.505804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492729, 31.771049, 17.289898>,  <38.933022, 32.031059, 17.727995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492729, 31.771049, 17.289898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187172, 31.534769, 17.185949>,  <39.003838, 31.393002, 17.123581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187172, 31.534769, 17.185949>,  <39.492729, 31.771049, 17.289898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187172, 31.534769, 17.185949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120942, 0.264515, -0.956768,
		0.633905, -0.762301, -0.130621,
		-0.763896, -0.590702, -0.259871,
		38.958004, 31.357559, 17.107988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668346, 31.550728, 16.546825>,  <39.492729, 31.771049, 17.289898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668346, 31.550728, 16.546825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275959, 31.473324, 16.540514>,  <39.040527, 31.426882, 16.536726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275959, 31.473324, 16.540514>,  <39.668346, 31.550728, 16.546825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275959, 31.473324, 16.540514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026043, 0.211688, -0.976990,
		0.192385, -0.957991, -0.212700,
		-0.980974, -0.193497, -0.015777,
		38.981667, 31.415272, 16.535780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451408, 31.078993, 16.069504>,  <39.668346, 31.550728, 16.546825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451408, 31.078993, 16.069504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128620, 31.307648, 16.128876>,  <38.934948, 31.444841, 16.164499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128620, 31.307648, 16.128876>,  <39.451408, 31.078993, 16.069504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128620, 31.307648, 16.128876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025554, 0.217296, -0.975771,
		-0.590043, -0.791208, -0.160743,
		-0.806967, 0.571640, 0.148432,
		38.886528, 31.479139, 16.173405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023426, 30.920069, 15.472679>,  <39.451408, 31.078993, 16.069504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023426, 30.920069, 15.472679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885521, 31.269867, 15.609146>,  <38.802776, 31.479746, 15.691027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.885521, 31.269867, 15.609146>,  <39.023426, 30.920069, 15.472679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885521, 31.269867, 15.609146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036893, 0.375794, -0.925969,
		-0.937964, -0.306655, -0.161823,
		-0.344765, 0.874495, 0.341168,
		38.782093, 31.532215, 15.711496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494934, 31.180014, 14.985894>,  <39.023426, 30.920069, 15.472679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494934, 31.180014, 14.985894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574341, 31.504030, 15.206593>,  <38.621986, 31.698441, 15.339011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574341, 31.504030, 15.206593>,  <38.494934, 31.180014, 14.985894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574341, 31.504030, 15.206593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076003, 0.548531, -0.832668,
		-0.977146, 0.207233, 0.047327,
		0.198517, 0.810042, 0.551746,
		38.633896, 31.747044, 15.372116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936600, 31.651022, 15.019852>,  <38.494934, 31.180014, 14.985894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936600, 31.651022, 15.019852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269531, 31.866690, 15.071279>,  <38.469292, 31.996090, 15.102135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269531, 31.866690, 15.071279>,  <37.936600, 31.651022, 15.019852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269531, 31.866690, 15.071279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233193, 0.551043, -0.801232,
		-0.502844, 0.636907, 0.584378,
		0.832327, 0.539167, 0.128567,
		38.519230, 32.028439, 15.109849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831806, 32.408836, 15.044319>,  <37.936600, 31.651022, 15.019852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831806, 32.408836, 15.044319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201469, 32.316895, 14.922271>,  <38.423267, 32.261730, 14.849042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201469, 32.316895, 14.922271>,  <37.831806, 32.408836, 15.044319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201469, 32.316895, 14.922271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068446, 0.686165, -0.724218,
		0.375830, 0.690176, 0.618392,
		0.924157, -0.229857, -0.305122,
		38.478718, 32.247936, 14.830734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320652, 32.991539, 14.991969>,  <37.831806, 32.408836, 15.044319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320652, 32.991539, 14.991969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400581, 32.712021, 14.717234>,  <38.448540, 32.544308, 14.552392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400581, 32.712021, 14.717234>,  <38.320652, 32.991539, 14.991969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400581, 32.712021, 14.717234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194391, 0.658770, -0.726798,
		0.960355, 0.278749, -0.004201,
		0.199827, -0.698800, -0.686839,
		38.460529, 32.502380, 14.511182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001968, 33.224983, 15.661667>,  <38.320652, 32.991539, 14.991969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001968, 33.224983, 15.661667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807480, 33.514240, 15.857892>,  <37.690788, 33.687794, 15.975627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.807480, 33.514240, 15.857892>,  <38.001968, 33.224983, 15.661667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807480, 33.514240, 15.857892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656587, 0.672776, -0.340978,
		-0.576616, 0.156307, -0.801924,
		-0.486218, 0.723146, 0.490563,
		37.661613, 33.731186, 16.005060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506439, 33.506798, 15.298752>,  <38.001968, 33.224983, 15.661667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506439, 33.506798, 15.298752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121468, 33.414124, 15.242120>,  <36.890484, 33.358517, 15.208140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121468, 33.414124, 15.242120>,  <37.506439, 33.506798, 15.298752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121468, 33.414124, 15.242120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208630, 0.297293, 0.931714,
		-0.173777, 0.926249, -0.334461,
		-0.962432, -0.231689, -0.141580,
		36.832737, 33.344616, 15.199646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021442, 34.064476, 15.672178>,  <37.506439, 33.506798, 15.298752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021442, 34.064476, 15.672178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795345, 33.736832, 15.633082>,  <36.659687, 33.540245, 15.609625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795345, 33.736832, 15.633082>,  <37.021442, 34.064476, 15.672178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795345, 33.736832, 15.633082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309342, 0.100633, 0.945611,
		-0.764728, 0.564734, -0.310268,
		-0.565242, -0.819115, -0.097739,
		36.625774, 33.491096, 15.603761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373833, 34.245682, 16.043566>,  <37.021442, 34.064476, 15.672178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373833, 34.245682, 16.043566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426689, 33.850529, 16.011005>,  <36.458405, 33.613438, 15.991469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.426689, 33.850529, 16.011005>,  <36.373833, 34.245682, 16.043566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426689, 33.850529, 16.011005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371878, -0.125530, 0.919755,
		-0.918828, -0.091265, -0.383960,
		0.132140, -0.987883, -0.081401,
		36.466331, 33.554165, 15.986585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851521, 33.950310, 16.428194>,  <36.373833, 34.245682, 16.043566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851521, 33.950310, 16.428194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128979, 33.664722, 16.390003>,  <36.295452, 33.493370, 16.367088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128979, 33.664722, 16.390003>,  <35.851521, 33.950310, 16.428194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128979, 33.664722, 16.390003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198978, -0.317306, 0.927213,
		-0.692293, -0.624156, -0.362160,
		0.693641, -0.713965, -0.095476,
		36.337070, 33.450535, 16.361361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604164, 33.408718, 16.811808>,  <35.851521, 33.950310, 16.428194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604164, 33.408718, 16.811808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995235, 33.325886, 16.797544>,  <36.229877, 33.276188, 16.788986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995235, 33.325886, 16.797544>,  <35.604164, 33.408718, 16.811808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995235, 33.325886, 16.797544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035820, -0.331466, 0.942787,
		-0.207052, -0.920461, -0.331484,
		0.977674, -0.207080, -0.035660,
		36.288536, 33.263763, 16.786846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636829, 32.709858, 17.080839>,  <35.604164, 33.408718, 16.811808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636829, 32.709858, 17.080839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994907, 32.886356, 17.105911>,  <36.209755, 32.992256, 17.120955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994907, 32.886356, 17.105911>,  <35.636829, 32.709858, 17.080839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994907, 32.886356, 17.105911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127989, -0.389237, 0.912202,
		0.426907, -0.808574, -0.404917,
		0.895192, 0.441251, 0.062679,
		36.263466, 33.018730, 17.124716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071922, 32.211418, 17.406693>,  <35.636829, 32.709858, 17.080839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071922, 32.211418, 17.406693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287689, 32.543648, 17.462070>,  <36.417149, 32.742985, 17.495296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287689, 32.543648, 17.462070>,  <36.071922, 32.211418, 17.406693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287689, 32.543648, 17.462070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274692, -0.329000, 0.903495,
		0.795971, -0.449335, -0.405622,
		0.539421, 0.830577, 0.138445,
		36.449516, 32.792820, 17.503605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684761, 32.007755, 17.866358>,  <36.071922, 32.211418, 17.406693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684761, 32.007755, 17.866358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.687111, 32.406654, 17.895901>,  <36.688522, 32.645996, 17.913626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.687111, 32.406654, 17.895901>,  <36.684761, 32.007755, 17.866358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687111, 32.406654, 17.895901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300736, -0.072200, 0.950971,
		0.953689, 0.016624, -0.300334,
		0.005875, 0.997252, 0.073856,
		36.688873, 32.705830, 17.918056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408669, 32.222122, 18.163639>,  <36.684761, 32.007755, 17.866358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408669, 32.222122, 18.163639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159374, 32.522568, 18.250734>,  <37.009800, 32.702835, 18.302992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.159374, 32.522568, 18.250734>,  <37.408669, 32.222122, 18.163639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159374, 32.522568, 18.250734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220403, -0.098433, 0.970429,
		0.750336, 0.652792, -0.104201,
		-0.623232, 0.751114, 0.217736,
		36.972404, 32.747902, 18.316055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695465, 32.679195, 18.636902>,  <37.408669, 32.222122, 18.163639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695465, 32.679195, 18.636902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311321, 32.783745, 18.675655>,  <37.080833, 32.846474, 18.698908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311321, 32.783745, 18.675655>,  <37.695465, 32.679195, 18.636902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311321, 32.783745, 18.675655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023155, -0.271566, 0.962141,
		0.277792, 0.926247, 0.254750,
		-0.960362, 0.261376, 0.096886,
		37.023212, 32.862156, 18.704721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644337, 32.894539, 19.316080>,  <37.695465, 32.679195, 18.636902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644337, 32.894539, 19.316080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255386, 32.855263, 19.231371>,  <37.022018, 32.831699, 19.180546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255386, 32.855263, 19.231371>,  <37.644337, 32.894539, 19.316080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255386, 32.855263, 19.231371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171289, -0.316207, 0.933099,
		-0.158583, 0.943595, 0.290653,
		-0.972374, -0.098188, -0.211772,
		36.963673, 32.825806, 19.167839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244911, 33.239609, 19.803246>,  <37.644337, 32.894539, 19.316080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244911, 33.239609, 19.803246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027050, 32.940117, 19.652113>,  <36.896332, 32.760422, 19.561434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027050, 32.940117, 19.652113>,  <37.244911, 33.239609, 19.803246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027050, 32.940117, 19.652113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165492, -0.345706, 0.923634,
		-0.822170, 0.565589, 0.064382,
		-0.544654, -0.748730, -0.377830,
		36.863655, 32.715496, 19.538763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776337, 33.146675, 20.265825>,  <37.244911, 33.239609, 19.803246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776337, 33.146675, 20.265825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745777, 32.805992, 20.058458>,  <36.727440, 32.601582, 19.934038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745777, 32.805992, 20.058458>,  <36.776337, 33.146675, 20.265825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745777, 32.805992, 20.058458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181108, -0.499432, 0.847212,
		-0.980491, 0.158615, -0.116096,
		-0.076398, -0.851710, -0.518415,
		36.722858, 32.550480, 19.902933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248596, 32.776829, 20.618694>,  <36.776337, 33.146675, 20.265825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248596, 32.776829, 20.618694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416611, 32.491165, 20.394714>,  <36.517418, 32.319767, 20.260326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416611, 32.491165, 20.394714>,  <36.248596, 32.776829, 20.618694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416611, 32.491165, 20.394714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115362, -0.654034, 0.747617,
		-0.900145, -0.249429, -0.357105,
		0.420036, -0.714160, -0.559952,
		36.542622, 32.276917, 20.226728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698235, 32.304386, 20.572588>,  <36.248596, 32.776829, 20.618694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698235, 32.304386, 20.572588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048946, 32.128193, 20.495417>,  <36.259373, 32.022476, 20.449114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048946, 32.128193, 20.495417>,  <35.698235, 32.304386, 20.572588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048946, 32.128193, 20.495417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112671, -0.578200, 0.808078,
		-0.467498, -0.686772, -0.556587,
		0.876784, -0.440486, -0.192928,
		36.311981, 31.996046, 20.437538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562603, 31.560486, 20.456898>,  <35.698235, 32.304386, 20.572588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562603, 31.560486, 20.456898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938755, 31.634941, 20.570772>,  <36.164444, 31.679615, 20.639097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938755, 31.634941, 20.570772>,  <35.562603, 31.560486, 20.456898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938755, 31.634941, 20.570772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046405, -0.758935, 0.649511,
		0.336958, -0.623995, -0.705046,
		0.940376, 0.186140, 0.284686,
		36.220867, 31.690783, 20.656178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822701, 30.938688, 20.459202>,  <35.562603, 31.560486, 20.456898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822701, 30.938688, 20.459202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053291, 31.152693, 20.706245>,  <36.191647, 31.281096, 20.854471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053291, 31.152693, 20.706245>,  <35.822701, 30.938688, 20.459202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053291, 31.152693, 20.706245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026120, -0.743389, 0.668349,
		0.816699, -0.401417, -0.414569,
		0.576472, 0.535012, 0.617610,
		36.226234, 31.313196, 20.891529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310417, 30.463123, 20.700359>,  <35.822701, 30.938688, 20.459202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310417, 30.463123, 20.700359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287971, 30.749529, 20.978689>,  <36.274506, 30.921373, 21.145687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.287971, 30.749529, 20.978689>,  <36.310417, 30.463123, 20.700359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287971, 30.749529, 20.978689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052930, -0.698077, 0.714063,
		0.997020, 0.003238, 0.077069,
		-0.056113, 0.716015, 0.695826,
		36.271137, 30.964333, 21.187437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858082, 30.329014, 21.152302>,  <36.310417, 30.463123, 20.700359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858082, 30.329014, 21.152302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573597, 30.541101, 21.336927>,  <36.402905, 30.668354, 21.447702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573597, 30.541101, 21.336927>,  <36.858082, 30.329014, 21.152302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573597, 30.541101, 21.336927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181502, -0.772826, 0.608109,
		0.679141, 0.348720, 0.645880,
		-0.711213, 0.530220, 0.461565,
		36.360233, 30.700167, 21.475397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.899017, 30.111870, 25.963377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.577183, 30.340483, 26.027872>,  <40.384083, 30.477650, 26.066570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.577183, 30.340483, 26.027872>,  <40.899017, 30.111870, 25.963377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577183, 30.340483, 26.027872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121234, -0.107716, 0.986762,
		0.581333, 0.813480, 0.017377,
		-0.804583, 0.571531, 0.161240,
		40.335808, 30.511942, 26.076244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062607, 30.688444, 26.442505>,  <40.899017, 30.111870, 25.963377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062607, 30.688444, 26.442505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667122, 30.646355, 26.485161>,  <40.429829, 30.621101, 26.510756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667122, 30.646355, 26.485161>,  <41.062607, 30.688444, 26.442505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667122, 30.646355, 26.485161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116648, -0.094012, 0.988714,
		-0.094012, 0.989995, 0.105225,
		-0.988714, -0.105225, 0.106642,
		40.370506, 30.614788, 26.517153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848667, 31.111023, 27.070200>,  <41.062607, 30.688444, 26.442505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848667, 31.111023, 27.070200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533421, 30.872993, 27.007256>,  <40.344273, 30.730175, 26.969488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.533421, 30.872993, 27.007256>,  <40.848667, 31.111023, 27.070200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533421, 30.872993, 27.007256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051298, -0.191265, 0.980197,
		-0.613387, 0.780581, 0.120212,
		-0.788115, -0.595073, -0.157361,
		40.296986, 30.694471, 26.960047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428093, 31.204288, 27.712578>,  <40.848667, 31.111023, 27.070200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428093, 31.204288, 27.712578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291477, 30.870930, 27.538773>,  <40.209507, 30.670914, 27.434490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291477, 30.870930, 27.538773>,  <40.428093, 31.204288, 27.712578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291477, 30.870930, 27.538773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313863, -0.334636, 0.888543,
		-0.885912, 0.439851, -0.147280,
		-0.341541, -0.833396, -0.434511,
		40.189014, 30.620911, 27.408419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734264, 31.123966, 27.937443>,  <40.428093, 31.204288, 27.712578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734264, 31.123966, 27.937443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833920, 30.752319, 27.828136>,  <39.893711, 30.529331, 27.762552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833920, 30.752319, 27.828136>,  <39.734264, 31.123966, 27.937443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833920, 30.752319, 27.828136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414054, -0.357261, 0.837212,
		-0.875494, -0.095436, -0.473711,
		0.249139, -0.929116, -0.273264,
		39.908661, 30.473585, 27.746157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136597, 30.797119, 28.076513>,  <39.734264, 31.123966, 27.937443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136597, 30.797119, 28.076513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426144, 30.521170, 28.080339>,  <39.599873, 30.355600, 28.082636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426144, 30.521170, 28.080339>,  <39.136597, 30.797119, 28.076513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426144, 30.521170, 28.080339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379608, -0.386657, 0.840473,
		-0.576121, -0.612021, -0.541770,
		0.723866, -0.689874, 0.009567,
		39.643303, 30.314207, 28.083210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850956, 30.104605, 28.232237>,  <39.136597, 30.797119, 28.076513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850956, 30.104605, 28.232237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228390, 30.035120, 28.344994>,  <39.454849, 29.993429, 28.412647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228390, 30.035120, 28.344994>,  <38.850956, 30.104605, 28.232237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228390, 30.035120, 28.344994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330594, -0.542155, 0.772512,
		0.018637, -0.822127, -0.568999,
		0.943589, -0.173710, 0.281894,
		39.511467, 29.983007, 28.429562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853436, 29.363665, 28.424988>,  <38.850956, 30.104605, 28.232237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853436, 29.363665, 28.424988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156639, 29.559568, 28.597296>,  <39.338562, 29.677111, 28.700680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156639, 29.559568, 28.597296>,  <38.853436, 29.363665, 28.424988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156639, 29.559568, 28.597296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086356, -0.579269, 0.810549,
		0.646505, -0.651601, -0.396796,
		0.758006, 0.489758, 0.430770,
		39.384041, 29.706495, 28.726526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949734, 28.924902, 28.928032>,  <38.853436, 29.363665, 28.424988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949734, 28.924902, 28.928032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174088, 29.231607, 29.052921>,  <39.308701, 29.415630, 29.127855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174088, 29.231607, 29.052921>,  <38.949734, 28.924902, 28.928032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174088, 29.231607, 29.052921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064878, -0.335263, 0.939888,
		0.825351, -0.547421, -0.138297,
		0.560880, 0.766765, 0.312225,
		39.342350, 29.461637, 29.146589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547768, 28.668180, 29.315565>,  <38.949734, 28.924902, 28.928032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547768, 28.668180, 29.315565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494762, 29.046406, 29.434458>,  <39.462959, 29.273342, 29.505793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.494762, 29.046406, 29.434458>,  <39.547768, 28.668180, 29.315565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494762, 29.046406, 29.434458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147167, -0.315321, 0.937504,
		0.980195, 0.080487, 0.180940,
		-0.132512, 0.945566, 0.297231,
		39.455009, 29.330076, 29.523626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094463, 28.803709, 29.841299>,  <39.547768, 28.668180, 29.315565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094463, 28.803709, 29.841299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831493, 29.099226, 29.900589>,  <39.673710, 29.276537, 29.936163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831493, 29.099226, 29.900589>,  <40.094463, 28.803709, 29.841299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831493, 29.099226, 29.900589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027786, -0.220346, 0.975026,
		0.753004, 0.636891, 0.165390,
		-0.657429, 0.738794, 0.148225,
		39.634266, 29.320864, 29.945057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303345, 29.134348, 30.376562>,  <40.094463, 28.803709, 29.841299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303345, 29.134348, 30.376562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917656, 29.235491, 30.408428>,  <39.686245, 29.296177, 30.427547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917656, 29.235491, 30.408428>,  <40.303345, 29.134348, 30.376562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917656, 29.235491, 30.408428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041965, -0.151136, 0.987622,
		0.261769, 0.955626, 0.135117,
		-0.964218, 0.252858, 0.079665,
		39.628391, 29.311348, 30.432327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131836, 29.686262, 30.972712>,  <40.303345, 29.134348, 30.376562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131836, 29.686262, 30.972712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833862, 29.425997, 30.913778>,  <39.655079, 29.269838, 30.878418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.833862, 29.425997, 30.913778>,  <40.131836, 29.686262, 30.972712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833862, 29.425997, 30.913778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001960, -0.218707, 0.975789,
		-0.667133, 0.727189, 0.161647,
		-0.744937, -0.650664, -0.147331,
		39.610382, 29.230797, 30.869579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079285, 30.160688, 31.561140>,  <40.131836, 29.686262, 30.972712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079285, 30.160688, 31.561140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875469, 30.288841, 31.880571>,  <39.753178, 30.365732, 32.072231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875469, 30.288841, 31.880571>,  <40.079285, 30.160688, 31.561140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875469, 30.288841, 31.880571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247047, 0.943492, -0.220888,
		-0.824218, 0.084734, -0.559897,
		-0.509542, 0.320380, 0.798576,
		39.722607, 30.384954, 32.120144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419746, 30.857798, 31.472908>,  <40.079285, 30.160688, 31.561140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419746, 30.857798, 31.472908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.408333, 31.245451, 31.570860>,  <40.401485, 31.478043, 31.629631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.408333, 31.245451, 31.570860>,  <40.419746, 30.857798, 31.472908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408333, 31.245451, 31.570860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249939, 0.244115, -0.936984,
		-0.967841, 0.034470, -0.249189,
		-0.028533, 0.969133, 0.244880,
		40.399773, 31.536192, 31.644323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879776, 31.113501, 31.018696>,  <40.419746, 30.857798, 31.472908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879776, 31.113501, 31.018696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.140411, 31.388371, 31.147211>,  <40.296791, 31.553293, 31.224319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.140411, 31.388371, 31.147211>,  <39.879776, 31.113501, 31.018696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140411, 31.388371, 31.147211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283298, 0.172458, -0.943398,
		-0.703688, 0.705726, -0.082304,
		0.651587, 0.687174, 0.321287,
		40.335888, 31.594522, 31.243597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854332, 31.712126, 30.637730>,  <39.879776, 31.113501, 31.018696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854332, 31.712126, 30.637730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207687, 31.774908, 30.814362>,  <40.419701, 31.812578, 30.920341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207687, 31.774908, 30.814362>,  <39.854332, 31.712126, 30.637730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207687, 31.774908, 30.814362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386981, 0.287165, -0.876232,
		-0.264335, 0.944935, 0.192939,
		0.883387, 0.156955, 0.441580,
		40.472702, 31.821995, 30.946835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073650, 32.413765, 30.497305>,  <39.854332, 31.712126, 30.637730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073650, 32.413765, 30.497305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411861, 32.218464, 30.583738>,  <40.614788, 32.101284, 30.635597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411861, 32.218464, 30.583738>,  <40.073650, 32.413765, 30.497305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411861, 32.218464, 30.583738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424648, 0.369614, -0.826474,
		0.323662, 0.790565, 0.519855,
		0.845527, -0.488254, 0.216082,
		40.665520, 32.071987, 30.648563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660336, 32.825291, 30.354652>,  <40.073650, 32.413765, 30.497305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660336, 32.825291, 30.354652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820053, 32.458614, 30.360971>,  <40.915882, 32.238609, 30.364763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.820053, 32.458614, 30.360971>,  <40.660336, 32.825291, 30.354652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820053, 32.458614, 30.360971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552894, 0.227017, -0.801730,
		0.731349, 0.328861, 0.597477,
		0.399296, -0.916686, 0.015797,
		40.939842, 32.183609, 30.365711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418232, 32.861526, 30.356541>,  <40.660336, 32.825291, 30.354652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418232, 32.861526, 30.356541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340569, 32.497700, 30.209572>,  <41.293968, 32.279404, 30.121391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340569, 32.497700, 30.209572>,  <41.418232, 32.861526, 30.356541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340569, 32.497700, 30.209572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598270, 0.187034, -0.779160,
		0.777415, -0.371099, 0.507850,
		-0.194160, -0.909562, -0.367421,
		41.282322, 32.224831, 30.099346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026459, 32.664089, 29.986776>,  <41.418232, 32.861526, 30.356541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026459, 32.664089, 29.986776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782009, 32.386478, 29.834538>,  <41.635338, 32.219913, 29.743195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782009, 32.386478, 29.834538>,  <42.026459, 32.664089, 29.986776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782009, 32.386478, 29.834538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372296, 0.172298, -0.911981,
		0.698516, -0.699028, 0.153088,
		-0.611123, -0.694027, -0.380598,
		41.598671, 32.178268, 29.720358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517643, 32.242676, 29.545284>,  <42.026459, 32.664089, 29.986776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517643, 32.242676, 29.545284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132076, 32.207867, 29.444656>,  <41.900734, 32.186981, 29.384279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132076, 32.207867, 29.444656>,  <42.517643, 32.242676, 29.545284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132076, 32.207867, 29.444656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254604, -0.025543, -0.966708,
		0.077698, -0.995879, 0.046778,
		-0.963919, -0.087021, -0.251570,
		41.842899, 32.181763, 29.369184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520119, 31.640934, 29.009268>,  <42.517643, 32.242676, 29.545284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520119, 31.640934, 29.009268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183472, 31.853697, 28.971828>,  <41.981483, 31.981354, 28.949366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183472, 31.853697, 28.971828>,  <42.520119, 31.640934, 29.009268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183472, 31.853697, 28.971828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129684, 0.030797, -0.991077,
		-0.524279, -0.846242, -0.094899,
		-0.841614, 0.531907, -0.093598,
		41.930988, 32.013268, 28.943748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245331, 31.404795, 28.317131>,  <42.520119, 31.640934, 29.009268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245331, 31.404795, 28.317131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001759, 31.706797, 28.414434>,  <41.855618, 31.887999, 28.472816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.001759, 31.706797, 28.414434>,  <42.245331, 31.404795, 28.317131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001759, 31.706797, 28.414434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079820, 0.246789, -0.965776,
		-0.789200, -0.607504, -0.090012,
		-0.608928, 0.755006, 0.243257,
		41.819080, 31.933298, 28.487411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687275, 31.404951, 27.949516>,  <42.245331, 31.404795, 28.317131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687275, 31.404951, 27.949516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670296, 31.799305, 28.014299>,  <41.660107, 32.035915, 28.053169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670296, 31.799305, 28.014299>,  <41.687275, 31.404951, 27.949516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670296, 31.799305, 28.014299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085333, 0.157934, -0.983756,
		-0.995448, -0.055583, 0.077423,
		-0.042452, 0.985884, 0.161959,
		41.657558, 32.095070, 28.062887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149193, 31.729750, 27.533604>,  <41.687275, 31.404951, 27.949516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149193, 31.729750, 27.533604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.380718, 32.046051, 27.613283>,  <41.519634, 32.235832, 27.661091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.380718, 32.046051, 27.613283>,  <41.149193, 31.729750, 27.533604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380718, 32.046051, 27.613283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037103, 0.218486, -0.975134,
		-0.814615, 0.571813, 0.097123,
		0.578814, 0.790756, 0.199198,
		41.554363, 32.283279, 27.673042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852093, 32.263485, 27.201248>,  <41.149193, 31.729750, 27.533604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852093, 32.263485, 27.201248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221840, 32.407845, 27.250717>,  <41.443687, 32.494461, 27.280399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.221840, 32.407845, 27.250717>,  <40.852093, 32.263485, 27.201248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221840, 32.407845, 27.250717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017469, 0.363882, -0.931281,
		-0.381099, 0.858687, 0.342666,
		0.924369, 0.360897, 0.123675,
		41.499149, 32.516113, 27.287819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824596, 32.957123, 27.012892>,  <40.852093, 32.263485, 27.201248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824596, 32.957123, 27.012892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212765, 32.862934, 26.991596>,  <41.445667, 32.806423, 26.978819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212765, 32.862934, 26.991596>,  <40.824596, 32.957123, 27.012892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212765, 32.862934, 26.991596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013133, 0.271692, -0.962295,
		0.241056, 0.933133, 0.266748,
		0.970422, -0.235470, -0.053238,
		41.503891, 32.792294, 26.975624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820141, 33.717972, 27.082602>,  <40.824596, 32.957123, 27.012892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820141, 33.717972, 27.082602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.462856, 33.892204, 27.037979>,  <40.248486, 33.996742, 27.011206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.462856, 33.892204, 27.037979>,  <40.820141, 33.717972, 27.082602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462856, 33.892204, 27.037979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342133, -0.497419, 0.797194,
		0.291750, 0.750230, 0.593326,
		-0.893211, 0.435578, -0.111556,
		40.194893, 34.022877, 27.004513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695396, 34.094448, 27.710075>,  <40.820141, 33.717972, 27.082602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695396, 34.094448, 27.710075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.345592, 34.039650, 27.523970>,  <40.135712, 34.006771, 27.412306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.345592, 34.039650, 27.523970>,  <40.695396, 34.094448, 27.710075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345592, 34.039650, 27.523970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389552, -0.373084, 0.842056,
		-0.288941, 0.917628, 0.272898,
		-0.874507, -0.136997, -0.465263,
		40.083241, 33.998550, 27.384390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167442, 34.479824, 28.209311>,  <40.695396, 34.094448, 27.710075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167442, 34.479824, 28.209311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954460, 34.222721, 27.988998>,  <39.826672, 34.068459, 27.856812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954460, 34.222721, 27.988998>,  <40.167442, 34.479824, 28.209311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954460, 34.222721, 27.988998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548343, -0.233774, 0.802913,
		-0.644837, 0.729528, -0.227978,
		-0.532452, -0.642758, -0.550778,
		39.794724, 34.029892, 27.823765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498985, 34.595352, 28.399605>,  <40.167442, 34.479824, 28.209311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498985, 34.595352, 28.399605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478363, 34.220741, 28.260887>,  <39.465992, 33.995975, 28.177656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478363, 34.220741, 28.260887>,  <39.498985, 34.595352, 28.399605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478363, 34.220741, 28.260887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465483, -0.284695, 0.838018,
		-0.883554, 0.204630, -0.421259,
		-0.051553, -0.936523, -0.346795,
		39.462898, 33.939785, 28.156849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801334, 34.311569, 28.501459>,  <39.498985, 34.595352, 28.399605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801334, 34.311569, 28.501459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968102, 33.956264, 28.424337>,  <39.068161, 33.743080, 28.378063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.968102, 33.956264, 28.424337>,  <38.801334, 34.311569, 28.501459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968102, 33.956264, 28.424337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669135, -0.443497, 0.596296,
		-0.615176, -0.119590, -0.779267,
		0.416913, -0.888262, -0.192807,
		39.093174, 33.689785, 28.366495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315483, 33.888382, 28.304663>,  <38.801334, 34.311569, 28.501459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315483, 33.888382, 28.304663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.613113, 33.672951, 28.462795>,  <38.791691, 33.543690, 28.557674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.613113, 33.672951, 28.462795>,  <38.315483, 33.888382, 28.304663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613113, 33.672951, 28.462795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613427, -0.316305, 0.723642,
		-0.264690, -0.780952, -0.565732,
		0.744074, -0.538576, 0.395335,
		38.836334, 33.511375, 28.581394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030834, 33.349663, 28.558182>,  <38.315483, 33.888382, 28.304663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030834, 33.349663, 28.558182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374367, 33.327808, 28.761915>,  <38.580486, 33.314693, 28.884155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374367, 33.327808, 28.761915>,  <38.030834, 33.349663, 28.558182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374367, 33.327808, 28.761915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470834, -0.475877, 0.742870,
		0.201790, -0.877813, -0.434425,
		0.858834, -0.054639, 0.509332,
		38.632015, 33.311417, 28.914715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103195, 32.638008, 28.707392>,  <38.030834, 33.349663, 28.558182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103195, 32.638008, 28.707392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316643, 32.829891, 28.985998>,  <38.444710, 32.945023, 29.153162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.316643, 32.829891, 28.985998>,  <38.103195, 32.638008, 28.707392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316643, 32.829891, 28.985998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524491, -0.458355, 0.717509,
		0.663448, -0.748189, 0.007019,
		0.533615, 0.479711, 0.696514,
		38.476727, 32.973804, 29.194952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280926, 32.082520, 29.183889>,  <38.103195, 32.638008, 28.707392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280926, 32.082520, 29.183889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.307110, 32.449417, 29.341049>,  <38.322819, 32.669556, 29.435345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.307110, 32.449417, 29.341049>,  <38.280926, 32.082520, 29.183889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307110, 32.449417, 29.341049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509601, -0.307799, 0.803472,
		0.857917, -0.252815, 0.447284,
		0.065456, 0.917248, 0.392901,
		38.326748, 32.724590, 29.458920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471340, 31.921555, 29.785528>,  <38.280926, 32.082520, 29.183889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471340, 31.921555, 29.785528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325741, 32.292419, 29.821018>,  <38.238380, 32.514938, 29.842312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325741, 32.292419, 29.821018>,  <38.471340, 31.921555, 29.785528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325741, 32.292419, 29.821018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309109, -0.210113, 0.927526,
		0.878611, 0.310191, 0.363076,
		-0.363997, 0.927164, 0.088725,
		38.216541, 32.570568, 29.847635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599968, 32.152832, 30.391464>,  <38.471340, 31.921555, 29.785528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599968, 32.152832, 30.391464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.309624, 32.415863, 30.310759>,  <38.135418, 32.573681, 30.262335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.309624, 32.415863, 30.310759>,  <38.599968, 32.152832, 30.391464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309624, 32.415863, 30.310759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340930, -0.089187, 0.935848,
		0.597402, 0.748086, 0.288927,
		-0.725863, 0.657581, -0.201764,
		38.091866, 32.613136, 30.250229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654438, 32.638462, 30.948849>,  <38.599968, 32.152832, 30.391464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654438, 32.638462, 30.948849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.287056, 32.675583, 30.795059>,  <38.066628, 32.697857, 30.702785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.287056, 32.675583, 30.795059>,  <38.654438, 32.638462, 30.948849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287056, 32.675583, 30.795059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389637, -0.045303, 0.919854,
		0.067950, 0.994653, 0.077769,
		-0.918458, 0.092806, -0.384475,
		38.011517, 32.703426, 30.679716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.390903, 36.020260, 23.543966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020706, 35.873451, 23.581419>,  <39.798588, 35.785366, 23.603891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020706, 35.873451, 23.581419>,  <40.390903, 36.020260, 23.543966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020706, 35.873451, 23.581419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199873, -0.263225, 0.943803,
		-0.321748, 0.892193, 0.316969,
		-0.925489, -0.367020, 0.093633,
		39.743061, 35.763344, 23.609509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064064, 36.252220, 24.127811>,  <40.390903, 36.020260, 23.543966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064064, 36.252220, 24.127811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876862, 35.907688, 24.048742>,  <39.764542, 35.700970, 24.001301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876862, 35.907688, 24.048742>,  <40.064064, 36.252220, 24.127811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876862, 35.907688, 24.048742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027414, -0.237725, 0.970945,
		-0.883300, 0.448988, 0.134869,
		-0.468005, -0.861334, -0.197674,
		39.736462, 35.649288, 23.989441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830357, 36.131653, 24.691355>,  <40.064064, 36.252220, 24.127811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830357, 36.131653, 24.691355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775646, 35.768528, 24.532776>,  <39.742821, 35.550652, 24.437628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775646, 35.768528, 24.532776>,  <39.830357, 36.131653, 24.691355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775646, 35.768528, 24.532776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127387, -0.380768, 0.915854,
		-0.982377, 0.175768, -0.063563,
		-0.136775, -0.907811, -0.396449,
		39.734615, 35.496185, 24.413841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125134, 35.863903, 24.924511>,  <39.830357, 36.131653, 24.691355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125134, 35.863903, 24.924511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368000, 35.556198, 24.844933>,  <39.513721, 35.371574, 24.797186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368000, 35.556198, 24.844933>,  <39.125134, 35.863903, 24.924511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368000, 35.556198, 24.844933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103884, -0.325085, 0.939962,
		-0.787755, -0.550045, -0.277295,
		0.607166, -0.769266, -0.198946,
		39.550148, 35.325417, 24.785248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915833, 35.299526, 25.365658>,  <39.125134, 35.863903, 24.924511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915833, 35.299526, 25.365658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276340, 35.157475, 25.266388>,  <39.492645, 35.072243, 25.206825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276340, 35.157475, 25.266388>,  <38.915833, 35.299526, 25.365658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276340, 35.157475, 25.266388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071037, -0.443942, 0.893235,
		-0.427379, -0.822682, -0.374888,
		0.901277, -0.355120, -0.248172,
		39.546722, 35.050934, 25.191935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919830, 34.557228, 25.385275>,  <38.915833, 35.299526, 25.365658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919830, 34.557228, 25.385275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312344, 34.630085, 25.410252>,  <39.547852, 34.673801, 25.425238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312344, 34.630085, 25.410252>,  <38.919830, 34.557228, 25.385275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312344, 34.630085, 25.410252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058710, -0.591879, 0.803886,
		0.183382, -0.785177, -0.591497,
		0.981287, 0.182145, 0.062442,
		39.606731, 34.684727, 25.428984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346207, 33.921795, 25.372597>,  <38.919830, 34.557228, 25.385275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346207, 33.921795, 25.372597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585636, 34.190254, 25.547531>,  <39.729294, 34.351330, 25.652493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585636, 34.190254, 25.547531>,  <39.346207, 33.921795, 25.372597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585636, 34.190254, 25.547531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100658, -0.604634, 0.790118,
		0.794716, -0.428924, -0.429476,
		0.598576, 0.671150, 0.437337,
		39.765209, 34.391598, 25.678732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899807, 33.515041, 25.787197>,  <39.346207, 33.921795, 25.372597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899807, 33.515041, 25.787197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971214, 33.865101, 25.967089>,  <40.014057, 34.075134, 26.075024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971214, 33.865101, 25.967089>,  <39.899807, 33.515041, 25.787197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971214, 33.865101, 25.967089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030149, -0.451989, 0.891514,
		0.983475, -0.172706, -0.054302,
		0.178514, 0.875145, 0.449727,
		40.024769, 34.127644, 26.102007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430626, 33.393608, 26.290945>,  <39.899807, 33.515041, 25.787197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430626, 33.393608, 26.290945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235748, 33.724277, 26.403553>,  <40.118820, 33.922680, 26.471119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235748, 33.724277, 26.403553>,  <40.430626, 33.393608, 26.290945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235748, 33.724277, 26.403553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032449, -0.305010, 0.951796,
		0.872689, 0.472847, 0.121775,
		-0.487197, 0.826671, 0.281522,
		40.089588, 33.972279, 26.488010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101078, 33.443127, 26.484417>,  <40.430626, 33.393608, 26.290945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101078, 33.443127, 26.484417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410725, 33.192276, 26.518953>,  <41.596512, 33.041767, 26.539675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410725, 33.192276, 26.518953>,  <41.101078, 33.443127, 26.484417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410725, 33.192276, 26.518953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159772, 0.061574, -0.985232,
		0.612546, 0.776482, 0.147862,
		0.774119, -0.627124, 0.086343,
		41.642960, 33.004139, 26.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520977, 33.638451, 25.913267>,  <41.101078, 33.443127, 26.484417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520977, 33.638451, 25.913267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652924, 33.276974, 26.022470>,  <41.732094, 33.060089, 26.087994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652924, 33.276974, 26.022470>,  <41.520977, 33.638451, 25.913267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652924, 33.276974, 26.022470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106495, -0.251728, -0.961921,
		0.938001, 0.346382, 0.013201,
		0.329869, -0.903688, 0.273009,
		41.751884, 33.005867, 26.104374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341347, 33.640388, 25.697159>,  <41.520977, 33.638451, 25.913267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341347, 33.640388, 25.697159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169220, 33.280128, 25.721350>,  <42.065945, 33.063972, 25.735865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169220, 33.280128, 25.721350>,  <42.341347, 33.640388, 25.697159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169220, 33.280128, 25.721350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031516, -0.081946, -0.996138,
		0.902127, -0.426750, 0.063648,
		-0.430317, -0.900650, 0.060476,
		42.040123, 33.009933, 25.739492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763775, 33.235493, 25.361366>,  <42.341347, 33.640388, 25.697159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763775, 33.235493, 25.361366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410107, 33.048836, 25.370245>,  <42.197906, 32.936840, 25.375572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410107, 33.048836, 25.370245>,  <42.763775, 33.235493, 25.361366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410107, 33.048836, 25.370245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059746, -0.160072, -0.985296,
		0.463336, -0.869839, 0.169410,
		-0.884166, -0.466644, 0.022197,
		42.144855, 32.908844, 25.376904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733177, 32.592018, 24.969519>,  <42.763775, 33.235493, 25.361366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733177, 32.592018, 24.969519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338261, 32.655575, 24.970047>,  <42.101311, 32.693710, 24.970364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338261, 32.655575, 24.970047>,  <42.733177, 32.592018, 24.969519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338261, 32.655575, 24.970047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006715, 0.050022, -0.998726,
		-0.158761, -0.986027, -0.050453,
		-0.987294, 0.158897, 0.001321,
		42.042072, 32.703243, 24.970444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576229, 32.316055, 24.353409>,  <42.733177, 32.592018, 24.969519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576229, 32.316055, 24.353409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224709, 32.493954, 24.422590>,  <42.013798, 32.600693, 24.464100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224709, 32.493954, 24.422590>,  <42.576229, 32.316055, 24.353409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224709, 32.493954, 24.422590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255850, -0.133191, -0.957497,
		-0.402812, -0.885696, 0.230837,
		-0.878797, 0.444751, 0.172954,
		41.961071, 32.627380, 24.474476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076126, 31.896591, 24.054651>,  <42.576229, 32.316055, 24.353409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076126, 31.896591, 24.054651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885223, 32.247105, 24.081032>,  <41.770679, 32.457413, 24.096859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885223, 32.247105, 24.081032>,  <42.076126, 31.896591, 24.054651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885223, 32.247105, 24.081032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379279, -0.137709, -0.914977,
		-0.792699, -0.461695, 0.398079,
		-0.477259, 0.876284, 0.065950,
		41.742046, 32.509991, 24.100817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526836, 31.778564, 23.653534>,  <42.076126, 31.896591, 24.054651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526836, 31.778564, 23.653534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495525, 32.176136, 23.684473>,  <41.476738, 32.414677, 23.703035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495525, 32.176136, 23.684473>,  <41.526836, 31.778564, 23.653534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495525, 32.176136, 23.684473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377378, 0.042269, -0.925094,
		-0.922745, -0.101604, 0.371777,
		-0.078278, 0.993927, 0.077346,
		41.472042, 32.474316, 23.707678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804996, 32.001125, 23.649384>,  <41.526836, 31.778564, 23.653534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804996, 32.001125, 23.649384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045574, 32.292622, 23.518410>,  <41.189919, 32.467518, 23.439825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045574, 32.292622, 23.518410>,  <40.804996, 32.001125, 23.649384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045574, 32.292622, 23.518410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463240, -0.015816, -0.886092,
		-0.650906, 0.684612, 0.328068,
		0.601440, 0.728736, -0.327435,
		41.226006, 32.511242, 23.420179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441608, 32.377224, 23.111334>,  <40.804996, 32.001125, 23.649384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441608, 32.377224, 23.111334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812775, 32.514713, 23.053606>,  <41.035473, 32.597206, 23.018969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812775, 32.514713, 23.053606>,  <40.441608, 32.377224, 23.111334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812775, 32.514713, 23.053606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228174, 0.217516, -0.949012,
		-0.294803, 0.913533, 0.280265,
		0.927916, 0.343721, -0.144320,
		41.091148, 32.617828, 23.010309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353443, 32.974884, 22.783409>,  <40.441608, 32.377224, 23.111334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353443, 32.974884, 22.783409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728920, 32.866169, 22.698574>,  <40.954208, 32.800938, 22.647673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728920, 32.866169, 22.698574>,  <40.353443, 32.974884, 22.783409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728920, 32.866169, 22.698574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184291, 0.124321, -0.974978,
		0.291356, 0.954293, 0.066611,
		0.938695, -0.271789, -0.212089,
		41.010529, 32.784634, 22.634947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551338, 33.428497, 22.314741>,  <40.353443, 32.974884, 22.783409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551338, 33.428497, 22.314741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829712, 33.146255, 22.261366>,  <40.996735, 32.976910, 22.229342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829712, 33.146255, 22.261366>,  <40.551338, 33.428497, 22.314741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829712, 33.146255, 22.261366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101203, 0.087595, -0.991002,
		0.710940, 0.703174, -0.010449,
		0.695932, -0.705601, -0.133438,
		41.038490, 32.934574, 22.221334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995945, 33.662479, 21.787445>,  <40.551338, 33.428497, 22.314741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995945, 33.662479, 21.787445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085529, 33.272835, 21.775097>,  <41.139278, 33.039047, 21.767689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085529, 33.272835, 21.775097>,  <40.995945, 33.662479, 21.787445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085529, 33.272835, 21.775097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126847, 0.060538, -0.990073,
		0.966308, 0.217821, 0.137121,
		0.223960, -0.974109, -0.030869,
		41.152718, 32.980602, 21.765837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721684, 33.581676, 21.443958>,  <40.995945, 33.662479, 21.787445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721684, 33.581676, 21.443958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505901, 33.246891, 21.407106>,  <41.376434, 33.046021, 21.384995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505901, 33.246891, 21.407106>,  <41.721684, 33.581676, 21.443958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505901, 33.246891, 21.407106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091168, 0.166830, -0.981762,
		0.837065, -0.521216, -0.166301,
		-0.539453, -0.836960, -0.092130,
		41.344067, 32.995804, 21.379467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.158466, 32.677395, 20.684864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.436893, 32.943336, 20.793274>,  <34.603951, 33.102901, 20.858320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.436893, 32.943336, 20.793274>,  <34.158466, 32.677395, 20.684864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436893, 32.943336, 20.793274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172938, -0.521627, 0.835463,
		0.696836, -0.534669, -0.478067,
		0.696069, 0.664857, 0.271024,
		34.645714, 33.142792, 20.874580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605602, 32.255222, 21.054855>,  <34.158466, 32.677395, 20.684864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605602, 32.255222, 21.054855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716446, 32.628738, 21.145405>,  <34.782951, 32.852848, 21.199734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716446, 32.628738, 21.145405>,  <34.605602, 32.255222, 21.054855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716446, 32.628738, 21.145405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193762, -0.285067, 0.938719,
		0.941099, -0.216266, -0.259928,
		0.277110, 0.933791, 0.226372,
		34.799580, 32.908875, 21.213316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228535, 32.200447, 21.432184>,  <34.605602, 32.255222, 21.054855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228535, 32.200447, 21.432184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079205, 32.557365, 21.533728>,  <34.989605, 32.771515, 21.594654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.079205, 32.557365, 21.533728>,  <35.228535, 32.200447, 21.432184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079205, 32.557365, 21.533728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085606, -0.239342, 0.967154,
		0.923743, 0.382794, 0.012966,
		-0.373324, 0.892291, 0.253860,
		34.967209, 32.825054, 21.609886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631317, 32.396191, 21.950447>,  <35.228535, 32.200447, 21.432184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631317, 32.396191, 21.950447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.299702, 32.611370, 22.011520>,  <35.100735, 32.740479, 22.048164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.299702, 32.611370, 22.011520>,  <35.631317, 32.396191, 21.950447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299702, 32.611370, 22.011520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021533, -0.303551, 0.952572,
		0.558780, 0.786429, 0.263238,
		-0.829036, 0.537947, 0.152684,
		35.050991, 32.772755, 22.057325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598911, 32.737644, 22.688381>,  <35.631317, 32.396191, 21.950447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598911, 32.737644, 22.688381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.207935, 32.745537, 22.604258>,  <34.973351, 32.750275, 22.553783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.207935, 32.745537, 22.604258>,  <35.598911, 32.737644, 22.688381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207935, 32.745537, 22.604258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207219, -0.282790, 0.936531,
		-0.040993, 0.958979, 0.280498,
		-0.977435, 0.019733, -0.210311,
		34.914703, 32.751457, 22.541164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302643, 32.943760, 23.348249>,  <35.598911, 32.737644, 22.688381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302643, 32.943760, 23.348249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981178, 32.813278, 23.149164>,  <34.788300, 32.734989, 23.029713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981178, 32.813278, 23.149164>,  <35.302643, 32.943760, 23.348249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981178, 32.813278, 23.149164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495207, -0.097205, 0.863320,
		-0.330003, 0.940287, -0.083421,
		-0.803659, -0.326209, -0.497714,
		34.740082, 32.715416, 22.999849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750477, 33.429840, 23.631018>,  <35.302643, 32.943760, 23.348249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750477, 33.429840, 23.631018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.607735, 33.086071, 23.484564>,  <34.522087, 32.879810, 23.396692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.607735, 33.086071, 23.484564>,  <34.750477, 33.429840, 23.631018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607735, 33.086071, 23.484564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350529, -0.240107, 0.905250,
		-0.865899, 0.451386, -0.215567,
		-0.356858, -0.859418, -0.366132,
		34.500679, 32.828247, 23.374723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138397, 33.345028, 23.974928>,  <34.750477, 33.429840, 23.631018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138397, 33.345028, 23.974928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217316, 32.970181, 23.859764>,  <34.264668, 32.745274, 23.790665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.217316, 32.970181, 23.859764>,  <34.138397, 33.345028, 23.974928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217316, 32.970181, 23.859764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333358, -0.340312, 0.879238,
		-0.921926, -0.077491, -0.379536,
		0.197294, -0.937114, -0.287910,
		34.276505, 32.689045, 23.773392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560921, 33.059498, 23.997534>,  <34.138397, 33.345028, 23.974928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560921, 33.059498, 23.997534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818966, 32.754246, 24.012793>,  <33.973793, 32.571095, 24.021948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818966, 32.754246, 24.012793>,  <33.560921, 33.059498, 23.997534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818966, 32.754246, 24.012793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329057, -0.232421, 0.915261,
		-0.689599, -0.603001, -0.401052,
		0.645116, -0.763131, 0.038145,
		34.012501, 32.525307, 24.024237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289886, 32.643597, 24.561605>,  <33.560921, 33.059498, 23.997534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289886, 32.643597, 24.561605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.650455, 32.480484, 24.503431>,  <33.866798, 32.382614, 24.468527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.650455, 32.480484, 24.503431>,  <33.289886, 32.643597, 24.561605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650455, 32.480484, 24.503431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095115, -0.514248, 0.852351,
		-0.422364, -0.754494, -0.502341,
		0.901422, -0.407783, -0.145436,
		33.920883, 32.358150, 24.459801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292412, 31.861101, 24.607075>,  <33.289886, 32.643597, 24.561605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292412, 31.861101, 24.607075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672394, 31.967751, 24.672180>,  <33.900383, 32.031742, 24.711243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672394, 31.967751, 24.672180>,  <33.292412, 31.861101, 24.607075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672394, 31.967751, 24.672180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047483, -0.638233, 0.768377,
		0.308750, -0.722197, -0.618954,
		0.949957, 0.266626, 0.162763,
		33.957382, 32.047737, 24.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650284, 31.187103, 24.688063>,  <33.292412, 31.861101, 24.607075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650284, 31.187103, 24.688063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864731, 31.488829, 24.839636>,  <33.993397, 31.669865, 24.930580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.864731, 31.488829, 24.839636>,  <33.650284, 31.187103, 24.688063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864731, 31.488829, 24.839636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241333, -0.567120, 0.787486,
		0.808912, -0.330734, -0.486082,
		0.536115, 0.754315, 0.378933,
		34.025566, 31.715122, 24.953316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149986, 30.791433, 24.976269>,  <33.650284, 31.187103, 24.688063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149986, 30.791433, 24.976269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.185341, 31.143534, 25.162752>,  <34.206554, 31.354794, 25.274641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.185341, 31.143534, 25.162752>,  <34.149986, 30.791433, 24.976269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185341, 31.143534, 25.162752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078195, -0.472725, 0.877734,
		0.993012, -0.041125, -0.110614,
		0.088386, 0.880250, 0.466206,
		34.211857, 31.407608, 25.302614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827843, 30.730227, 25.498701>,  <34.149986, 30.791433, 24.976269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827843, 30.730227, 25.498701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.589859, 31.027775, 25.620476>,  <34.447067, 31.206303, 25.693541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.589859, 31.027775, 25.620476>,  <34.827843, 30.730227, 25.498701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589859, 31.027775, 25.620476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077872, -0.323638, 0.942971,
		0.799975, 0.584736, 0.134625,
		-0.594959, 0.743870, 0.304437,
		34.411373, 31.250937, 25.711807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573029, 30.907328, 25.475723>,  <34.827843, 30.730227, 25.498701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573029, 30.907328, 25.475723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799610, 30.583445, 25.414391>,  <35.935558, 30.389114, 25.377590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799610, 30.583445, 25.414391>,  <35.573029, 30.907328, 25.475723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799610, 30.583445, 25.414391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131622, 0.094782, -0.986758,
		0.813517, 0.579132, -0.052885,
		0.566450, -0.809705, -0.153333,
		35.969543, 30.340532, 25.368391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905415, 30.946720, 24.845545>,  <35.573029, 30.907328, 25.475723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905415, 30.946720, 24.845545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980511, 30.555283, 24.879271>,  <36.025566, 30.320419, 24.899506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.980511, 30.555283, 24.879271>,  <35.905415, 30.946720, 24.845545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980511, 30.555283, 24.879271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023462, -0.081350, -0.996409,
		0.981939, 0.189041, 0.007687,
		0.187737, -0.978594, 0.084316,
		36.036831, 30.261705, 24.904566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414440, 30.823837, 24.427217>,  <35.905415, 30.946720, 24.845545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414440, 30.823837, 24.427217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.260712, 30.455776, 24.457180>,  <36.168472, 30.234940, 24.475159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.260712, 30.455776, 24.457180>,  <36.414440, 30.823837, 24.427217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260712, 30.455776, 24.457180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017563, -0.088412, -0.995929,
		0.923031, -0.381443, 0.050139,
		-0.384323, -0.920154, 0.074908,
		36.145416, 30.179729, 24.479652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878941, 30.460052, 24.024668>,  <36.414440, 30.823837, 24.427217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878941, 30.460052, 24.024668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529442, 30.267715, 24.053930>,  <36.319740, 30.152313, 24.071487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.529442, 30.267715, 24.053930>,  <36.878941, 30.460052, 24.024668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529442, 30.267715, 24.053930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011368, -0.130179, -0.991425,
		0.486242, -0.867090, 0.108277,
		-0.873750, -0.480842, 0.073156,
		36.267315, 30.123463, 24.075876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967411, 29.871061, 23.642660>,  <36.878941, 30.460052, 24.024668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967411, 29.871061, 23.642660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.570805, 29.908791, 23.678442>,  <36.332840, 29.931429, 23.699911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.570805, 29.908791, 23.678442>,  <36.967411, 29.871061, 23.642660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570805, 29.908791, 23.678442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093799, -0.042662, -0.994677,
		-0.090011, -0.994626, 0.051148,
		-0.991514, 0.094329, 0.089455,
		36.273350, 29.937088, 23.705278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733074, 29.460615, 23.204067>,  <36.967411, 29.871061, 23.642660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733074, 29.460615, 23.204067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407486, 29.682140, 23.274204>,  <36.212132, 29.815056, 23.316286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.407486, 29.682140, 23.274204>,  <36.733074, 29.460615, 23.204067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407486, 29.682140, 23.274204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141263, 0.104072, -0.984487,
		-0.563470, -0.826111, -0.006478,
		-0.813970, 0.553814, 0.175341,
		36.163296, 29.848284, 23.326807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304245, 29.390169, 22.657629>,  <36.733074, 29.460615, 23.204067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304245, 29.390169, 22.657629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.143494, 29.720501, 22.815872>,  <36.047043, 29.918699, 22.910818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.143494, 29.720501, 22.815872>,  <36.304245, 29.390169, 22.657629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143494, 29.720501, 22.815872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014856, 0.426092, -0.904558,
		-0.915574, -0.369397, -0.158968,
		-0.401876, 0.825828, 0.395606,
		36.022930, 29.968250, 22.934553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725224, 29.635002, 22.195250>,  <36.304245, 29.390169, 22.657629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725224, 29.635002, 22.195250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833096, 29.954802, 22.409939>,  <35.897820, 30.146681, 22.538752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.833096, 29.954802, 22.409939>,  <35.725224, 29.635002, 22.195250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833096, 29.954802, 22.409939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017024, 0.553329, -0.832789,
		-0.962798, 0.233727, 0.135614,
		0.269684, 0.799499, 0.536723,
		35.914001, 30.194651, 22.570955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365997, 30.285650, 21.908548>,  <35.725224, 29.635002, 22.195250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365997, 30.285650, 21.908548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676437, 30.448080, 22.101534>,  <35.862701, 30.545538, 22.217325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.676437, 30.448080, 22.101534>,  <35.365997, 30.285650, 21.908548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676437, 30.448080, 22.101534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159538, 0.613748, -0.773215,
		-0.610094, 0.677064, 0.411545,
		0.776101, 0.406077, 0.482462,
		35.909267, 30.569902, 22.246273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237137, 30.967968, 21.844856>,  <35.365997, 30.285650, 21.908548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237137, 30.967968, 21.844856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621082, 30.906994, 21.939028>,  <35.851448, 30.870409, 21.995531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.621082, 30.906994, 21.939028>,  <35.237137, 30.967968, 21.844856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621082, 30.906994, 21.939028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280334, 0.547587, -0.788392,
		-0.008738, 0.822747, 0.568341,
		0.959863, -0.152436, 0.235428,
		35.909042, 30.861263, 22.009657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556984, 31.607790, 21.994066>,  <35.237137, 30.967968, 21.844856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556984, 31.607790, 21.994066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813911, 31.337929, 21.848595>,  <35.968067, 31.176012, 21.761312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813911, 31.337929, 21.848595>,  <35.556984, 31.607790, 21.994066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813911, 31.337929, 21.848595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257452, 0.636862, -0.726723,
		0.721900, 0.373161, 0.582762,
		0.642323, -0.674654, -0.363679,
		36.006607, 31.135532, 21.739491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263638, 31.956869, 22.037264>,  <35.556984, 31.607790, 21.994066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263638, 31.956869, 22.037264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252720, 31.655878, 21.774042>,  <36.246170, 31.475283, 21.616110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.252720, 31.655878, 21.774042>,  <36.263638, 31.956869, 22.037264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252720, 31.655878, 21.774042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440360, 0.581931, -0.683695,
		0.897406, -0.308438, 0.315480,
		-0.027290, -0.752478, -0.658052,
		36.244534, 31.430134, 21.576626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940208, 32.028183, 21.769100>,  <36.263638, 31.956869, 22.037264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940208, 32.028183, 21.769100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730774, 31.812796, 21.505007>,  <36.605114, 31.683563, 21.346552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730774, 31.812796, 21.505007>,  <36.940208, 32.028183, 21.769100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730774, 31.812796, 21.505007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409499, 0.520504, -0.749257,
		0.747105, -0.662666, -0.052027,
		-0.523588, -0.538469, -0.660233,
		36.573696, 31.651255, 21.306936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427479, 31.860153, 21.114975>,  <36.940208, 32.028183, 21.769100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427479, 31.860153, 21.114975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056942, 31.801956, 20.975990>,  <36.834621, 31.767038, 20.892599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.056942, 31.801956, 20.975990>,  <37.427479, 31.860153, 21.114975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056942, 31.801956, 20.975990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224776, 0.526686, -0.819803,
		0.302277, -0.837516, -0.455187,
		-0.926339, -0.145493, -0.347459,
		36.779041, 31.758308, 20.871752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960674, 31.253523, 20.862364>,  <37.427479, 31.860153, 21.114975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960674, 31.253523, 20.862364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302090, 31.089245, 20.734108>,  <38.506939, 30.990679, 20.657154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302090, 31.089245, 20.734108>,  <37.960674, 31.253523, 20.862364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302090, 31.089245, 20.734108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250966, -0.215238, 0.943763,
		-0.456612, -0.886004, -0.080643,
		0.853535, -0.410695, -0.320637,
		38.558151, 30.966036, 20.637917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049084, 30.581039, 21.243488>,  <37.960674, 31.253523, 20.862364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049084, 30.581039, 21.243488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415062, 30.642508, 21.094213>,  <38.634647, 30.679388, 21.004648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.415062, 30.642508, 21.094213>,  <38.049084, 30.581039, 21.243488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415062, 30.642508, 21.094213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402975, -0.296930, 0.865704,
		0.022221, -0.942454, -0.333598,
		0.914941, 0.153669, -0.373187,
		38.689545, 30.688608, 20.982258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498062, 29.992725, 21.500980>,  <38.049084, 30.581039, 21.243488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498062, 29.992725, 21.500980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.740993, 30.296225, 21.406780>,  <38.886753, 30.478323, 21.350260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.740993, 30.296225, 21.406780>,  <38.498062, 29.992725, 21.500980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740993, 30.296225, 21.406780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511155, -0.146269, 0.846951,
		0.608175, -0.634751, -0.476670,
		0.607325, 0.758747, -0.235499,
		38.923191, 30.523849, 21.336130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132435, 29.684465, 21.578003>,  <38.498062, 29.992725, 21.500980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132435, 29.684465, 21.578003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164200, 30.082396, 21.603348>,  <39.183258, 30.321154, 21.618555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.164200, 30.082396, 21.603348>,  <39.132435, 29.684465, 21.578003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164200, 30.082396, 21.603348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257674, -0.081891, 0.962755,
		0.962963, -0.060130, -0.262844,
		0.079415, 0.994826, 0.063364,
		39.188023, 30.380844, 21.622356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824577, 29.784470, 21.748478>,  <39.132435, 29.684465, 21.578003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824577, 29.784470, 21.748478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587746, 30.085072, 21.864874>,  <39.445644, 30.265434, 21.934711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587746, 30.085072, 21.864874>,  <39.824577, 29.784470, 21.748478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587746, 30.085072, 21.864874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363931, -0.072823, 0.928575,
		0.719021, 0.655693, -0.230379,
		-0.592083, 0.751507, 0.290989,
		39.410122, 30.310524, 21.952171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236393, 30.086090, 22.244459>,  <39.824577, 29.784470, 21.748478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236393, 30.086090, 22.244459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.868378, 30.236221, 22.289476>,  <39.647568, 30.326300, 22.316486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.868378, 30.236221, 22.289476>,  <40.236393, 30.086090, 22.244459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868378, 30.236221, 22.289476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097888, -0.057958, 0.993508,
		0.379414, 0.925078, 0.016583,
		-0.920034, 0.375328, 0.112544,
		39.592369, 30.348820, 22.323240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290260, 30.571764, 22.778811>,  <40.236393, 30.086090, 22.244459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290260, 30.571764, 22.778811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892902, 30.528299, 22.764101>,  <39.654488, 30.502220, 22.755276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892902, 30.528299, 22.764101>,  <40.290260, 30.571764, 22.778811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892902, 30.528299, 22.764101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032886, -0.037373, 0.998760,
		-0.109900, 0.993376, 0.033553,
		-0.993398, -0.108660, -0.036776,
		39.594883, 30.495701, 22.753069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954899, 31.086527, 23.312143>,  <40.290260, 30.571764, 22.778811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954899, 31.086527, 23.312143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752796, 30.755247, 23.215151>,  <39.631535, 30.556479, 23.156956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752796, 30.755247, 23.215151>,  <39.954899, 31.086527, 23.312143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752796, 30.755247, 23.215151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116610, -0.212883, 0.970094,
		-0.855052, 0.518425, 0.010985,
		-0.505260, -0.828200, -0.242480,
		39.601219, 30.506786, 23.142406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269394, 31.148973, 23.581135>,  <39.954899, 31.086527, 23.312143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269394, 31.148973, 23.581135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441761, 30.789927, 23.544054>,  <39.545181, 30.574499, 23.521805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441761, 30.789927, 23.544054>,  <39.269394, 31.148973, 23.581135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441761, 30.789927, 23.544054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040668, -0.083308, 0.995694,
		-0.901475, -0.432830, 0.000605,
		0.430916, -0.897618, -0.092703,
		39.571037, 30.520641, 23.516243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933872, 30.651543, 24.075012>,  <39.269394, 31.148973, 23.581135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933872, 30.651543, 24.075012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308235, 30.511551, 24.059059>,  <39.532852, 30.427557, 24.049486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308235, 30.511551, 24.059059>,  <38.933872, 30.651543, 24.075012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308235, 30.511551, 24.059059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036574, -0.016063, 0.999202,
		-0.350340, -0.936620, -0.002233,
		0.935908, -0.349979, -0.039884,
		39.589008, 30.406557, 24.047094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963528, 30.041191, 24.535906>,  <38.933872, 30.651543, 24.075012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963528, 30.041191, 24.535906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334675, 30.185158, 24.496868>,  <39.557362, 30.271538, 24.473446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.334675, 30.185158, 24.496868>,  <38.963528, 30.041191, 24.535906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334675, 30.185158, 24.496868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124613, -0.052584, 0.990811,
		0.351479, -0.931501, -0.093641,
		0.927865, 0.359918, -0.097595,
		39.613033, 30.293133, 24.467590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301090, 29.671486, 24.956463>,  <38.963528, 30.041191, 24.535906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301090, 29.671486, 24.956463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559242, 29.976372, 24.936424>,  <39.714134, 30.159304, 24.924400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559242, 29.976372, 24.936424>,  <39.301090, 29.671486, 24.956463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559242, 29.976372, 24.936424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188436, -0.095309, 0.977450,
		0.740254, -0.640267, -0.205139,
		0.645381, 0.762216, -0.050097,
		39.752857, 30.205036, 24.921396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753624, 29.493414, 25.453489>,  <39.301090, 29.671486, 24.956463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753624, 29.493414, 25.453489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848625, 29.876274, 25.387203>,  <39.905624, 30.105989, 25.347431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848625, 29.876274, 25.387203>,  <39.753624, 29.493414, 25.453489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848625, 29.876274, 25.387203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229737, 0.110411, 0.966969,
		0.943830, -0.267725, -0.193669,
		0.237499, 0.957148, -0.165715,
		39.919876, 30.163418, 25.337488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400917, 29.664028, 25.719688>,  <39.753624, 29.493414, 25.453489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400917, 29.664028, 25.719688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.256027, 30.036863, 25.718861>,  <40.169094, 30.260565, 25.718365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.256027, 30.036863, 25.718861>,  <40.400917, 29.664028, 25.719688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256027, 30.036863, 25.718861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198385, 0.079262, 0.976914,
		0.910736, 0.353448, -0.213623,
		-0.362221, 0.932090, -0.002068,
		40.147362, 30.316490, 25.718241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.994587, 33.331158, 20.767939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.649868, 33.152065, 20.863302>,  <41.443035, 33.044609, 20.920521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.649868, 33.152065, 20.863302>,  <41.994587, 33.331158, 20.767939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649868, 33.152065, 20.863302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282167, 0.032570, -0.958812,
		0.421530, -0.893573, -0.154404,
		-0.861797, -0.447735, 0.238407,
		41.391327, 33.017746, 20.934824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936684, 32.787846, 20.290041>,  <41.994587, 33.331158, 20.767939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936684, 32.787846, 20.290041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.562305, 32.855808, 20.413414>,  <41.337677, 32.896584, 20.487438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.562305, 32.855808, 20.413414>,  <41.936684, 32.787846, 20.290041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562305, 32.855808, 20.413414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301876, 0.063832, -0.951208,
		-0.181304, -0.983391, -0.008453,
		-0.935949, 0.169907, 0.308435,
		41.281521, 32.906780, 20.505945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506298, 32.298031, 19.990427>,  <41.936684, 32.787846, 20.290041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506298, 32.298031, 19.990427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.256618, 32.594540, 20.089132>,  <41.106812, 32.772446, 20.148355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.256618, 32.594540, 20.089132>,  <41.506298, 32.298031, 19.990427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256618, 32.594540, 20.089132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366701, 0.000913, -0.930338,
		-0.689855, -0.671208, 0.271254,
		-0.624203, 0.741268, 0.246762,
		41.069359, 32.816921, 20.163160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875923, 32.219395, 19.571512>,  <41.506298, 32.298031, 19.990427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875923, 32.219395, 19.571512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847588, 32.604950, 19.674194>,  <40.830585, 32.836285, 19.735804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.847588, 32.604950, 19.674194>,  <40.875923, 32.219395, 19.571512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847588, 32.604950, 19.674194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281864, 0.227522, -0.932087,
		-0.956836, -0.138388, 0.255567,
		-0.070842, 0.963889, 0.256707,
		40.826336, 32.894115, 19.751207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241169, 32.434292, 19.556484>,  <40.875923, 32.219395, 19.571512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241169, 32.434292, 19.556484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.432304, 32.782825, 19.511850>,  <40.546986, 32.991943, 19.485069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.432304, 32.782825, 19.511850>,  <40.241169, 32.434292, 19.556484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432304, 32.782825, 19.511850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458002, 0.138722, -0.878060,
		-0.749603, 0.470676, 0.465359,
		0.477838, 0.871332, -0.111584,
		40.575657, 33.044224, 19.478374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849022, 32.657276, 19.048334>,  <40.241169, 32.434292, 19.556484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849022, 32.657276, 19.048334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145279, 32.925732, 19.061144>,  <40.323032, 33.086807, 19.068830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.145279, 32.925732, 19.061144>,  <39.849022, 32.657276, 19.048334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145279, 32.925732, 19.061144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232852, 0.301089, -0.924730,
		-0.630266, 0.677433, 0.379274,
		0.740638, 0.671141, 0.032024,
		40.367470, 33.127075, 19.070751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560177, 33.411266, 18.972563>,  <39.849022, 32.657276, 19.048334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560177, 33.411266, 18.972563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.934547, 33.450932, 18.837389>,  <40.159172, 33.474731, 18.756285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.934547, 33.450932, 18.837389>,  <39.560177, 33.411266, 18.972563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934547, 33.450932, 18.837389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350611, 0.171733, -0.920641,
		-0.033263, 0.980140, 0.195499,
		0.935930, 0.099167, -0.337935,
		40.215328, 33.480682, 18.736008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560406, 34.010181, 18.593235>,  <39.560177, 33.411266, 18.972563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560406, 34.010181, 18.593235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861851, 33.778786, 18.468390>,  <40.042717, 33.639950, 18.393482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.861851, 33.778786, 18.468390>,  <39.560406, 34.010181, 18.593235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861851, 33.778786, 18.468390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213791, 0.233299, -0.948612,
		0.621575, 0.781617, 0.052143,
		0.753617, -0.578485, -0.312116,
		40.087936, 33.605240, 18.374754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003727, 34.431667, 18.307272>,  <39.560406, 34.010181, 18.593235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003727, 34.431667, 18.307272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113693, 34.077881, 18.156466>,  <40.179672, 33.865608, 18.065983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113693, 34.077881, 18.156466>,  <40.003727, 34.431667, 18.307272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113693, 34.077881, 18.156466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170559, 0.341042, -0.924446,
		0.946220, 0.318444, -0.057097,
		0.274912, -0.884468, -0.377015,
		40.196167, 33.812542, 18.043362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608349, 34.463982, 17.779348>,  <40.003727, 34.431667, 18.307272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608349, 34.463982, 17.779348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.413738, 34.126747, 17.687696>,  <40.296970, 33.924408, 17.632706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.413738, 34.126747, 17.687696>,  <40.608349, 34.463982, 17.779348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413738, 34.126747, 17.687696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050233, 0.288822, -0.956064,
		0.872219, -0.453644, -0.182871,
		-0.486529, -0.843083, -0.229128,
		40.267780, 33.873821, 17.618958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800301, 34.307922, 17.073446>,  <40.608349, 34.463982, 17.779348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800301, 34.307922, 17.073446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502995, 34.050751, 17.147419>,  <40.324612, 33.896446, 17.191803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.502995, 34.050751, 17.147419>,  <40.800301, 34.307922, 17.073446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502995, 34.050751, 17.147419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250431, 0.011058, -0.968071,
		0.620360, -0.765843, -0.169229,
		-0.743262, -0.642934, 0.184931,
		40.280018, 33.857872, 17.202898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760952, 33.949318, 16.504370>,  <40.800301, 34.307922, 17.073446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760952, 33.949318, 16.504370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405922, 33.877319, 16.673986>,  <40.192905, 33.834122, 16.775757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405922, 33.877319, 16.673986>,  <40.760952, 33.949318, 16.504370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405922, 33.877319, 16.673986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452429, 0.167358, -0.875956,
		0.086694, -0.969328, -0.229974,
		-0.887576, -0.179987, 0.424043,
		40.139648, 33.823322, 16.801199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457466, 33.622047, 16.020489>,  <40.760952, 33.949318, 16.504370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457466, 33.622047, 16.020489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162201, 33.767471, 16.247803>,  <39.985043, 33.854725, 16.384192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.162201, 33.767471, 16.247803>,  <40.457466, 33.622047, 16.020489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162201, 33.767471, 16.247803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536916, 0.193429, -0.821162,
		-0.408461, -0.911270, 0.052417,
		-0.738161, 0.363556, 0.568283,
		39.940754, 33.876537, 16.418287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859909, 33.354584, 15.799938>,  <40.457466, 33.622047, 16.020489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859909, 33.354584, 15.799938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739925, 33.696930, 15.968469>,  <39.667934, 33.902340, 16.069588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.739925, 33.696930, 15.968469>,  <39.859909, 33.354584, 15.799938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739925, 33.696930, 15.968469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561825, 0.198446, -0.803101,
		-0.770959, -0.477608, 0.421322,
		-0.299957, 0.855868, 0.421326,
		39.649937, 33.953690, 16.094866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353523, 32.919514, 15.466449>,  <39.859909, 33.354584, 15.799938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353523, 32.919514, 15.466449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104256, 32.635006, 15.336369>,  <38.954697, 32.464302, 15.258321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104256, 32.635006, 15.336369>,  <39.353523, 32.919514, 15.466449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104256, 32.635006, 15.336369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061192, -0.370193, 0.926937,
		-0.779689, 0.597539, 0.187169,
		-0.623170, -0.711269, -0.325200,
		38.917305, 32.421627, 15.238809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994781, 32.738064, 16.062460>,  <39.353523, 32.919514, 15.466449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994781, 32.738064, 16.062460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850666, 32.438984, 15.839343>,  <38.764198, 32.259537, 15.705473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.850666, 32.438984, 15.839343>,  <38.994781, 32.738064, 16.062460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850666, 32.438984, 15.839343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268367, -0.489591, 0.829627,
		-0.893404, 0.448599, -0.024265,
		-0.360290, -0.747703, -0.557791,
		38.742580, 32.214672, 15.672006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295769, 32.563866, 16.277628>,  <38.994781, 32.738064, 16.062460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295769, 32.563866, 16.277628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.417919, 32.228085, 16.097824>,  <38.491211, 32.026615, 15.989942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.417919, 32.228085, 16.097824>,  <38.295769, 32.563866, 16.277628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417919, 32.228085, 16.097824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326082, -0.535706, 0.778903,
		-0.894660, -0.091281, -0.437323,
		0.305376, -0.839456, -0.449510,
		38.509533, 31.976248, 15.962972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776917, 32.092144, 16.424288>,  <38.295769, 32.563866, 16.277628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776917, 32.092144, 16.424288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115150, 31.900473, 16.330158>,  <38.318092, 31.785469, 16.273682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115150, 31.900473, 16.330158>,  <37.776917, 32.092144, 16.424288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115150, 31.900473, 16.330158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096124, -0.570267, 0.815816,
		-0.525117, -0.667221, -0.528270,
		0.845585, -0.479178, -0.235321,
		38.368824, 31.756720, 16.259562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678902, 31.302473, 16.482714>,  <37.776917, 32.092144, 16.424288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678902, 31.302473, 16.482714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.076054, 31.330406, 16.521307>,  <38.314346, 31.347166, 16.544464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.076054, 31.330406, 16.521307>,  <37.678902, 31.302473, 16.482714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076054, 31.330406, 16.521307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046064, -0.521895, 0.851765,
		0.109837, -0.850146, -0.514963,
		0.992881, 0.069834, 0.096485,
		38.373917, 31.351357, 16.550253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821968, 30.657204, 16.784805>,  <37.678902, 31.302473, 16.482714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821968, 30.657204, 16.784805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166756, 30.838572, 16.875509>,  <38.373627, 30.947393, 16.929932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166756, 30.838572, 16.875509>,  <37.821968, 30.657204, 16.784805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166756, 30.838572, 16.875509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082907, -0.315190, 0.945400,
		0.500137, -0.833705, -0.234092,
		0.861968, 0.453422, 0.226758,
		38.425346, 30.974598, 16.943537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116646, 30.249508, 17.238295>,  <37.821968, 30.657204, 16.784805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116646, 30.249508, 17.238295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313801, 30.590599, 17.307484>,  <38.432095, 30.795254, 17.348997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313801, 30.590599, 17.307484>,  <38.116646, 30.249508, 17.238295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313801, 30.590599, 17.307484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133084, -0.270342, 0.953522,
		0.859856, -0.446957, -0.246732,
		0.492886, 0.852727, 0.172973,
		38.461666, 30.846416, 17.359375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747063, 30.026983, 17.570005>,  <38.116646, 30.249508, 17.238295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747063, 30.026983, 17.570005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671738, 30.408140, 17.665110>,  <38.626541, 30.636835, 17.722172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.671738, 30.408140, 17.665110>,  <38.747063, 30.026983, 17.570005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671738, 30.408140, 17.665110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030126, -0.236372, 0.971195,
		0.981646, 0.190055, 0.015806,
		-0.188317, 0.952894, 0.237759,
		38.615242, 30.694008, 17.736437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213364, 30.214100, 18.100996>,  <38.747063, 30.026983, 17.570005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213364, 30.214100, 18.100996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909836, 30.470526, 18.146988>,  <38.727718, 30.624382, 18.174583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.909836, 30.470526, 18.146988>,  <39.213364, 30.214100, 18.100996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909836, 30.470526, 18.146988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038462, -0.132124, 0.990487,
		0.650159, 0.756028, 0.075602,
		-0.758824, 0.641066, 0.114980,
		38.682190, 30.662846, 18.181482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490112, 30.653187, 18.651199>,  <39.213364, 30.214100, 18.100996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490112, 30.653187, 18.651199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.097248, 30.721466, 18.619650>,  <38.861530, 30.762434, 18.600719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.097248, 30.721466, 18.619650>,  <39.490112, 30.653187, 18.651199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097248, 30.721466, 18.619650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060463, 0.110495, 0.992036,
		0.178053, 0.979108, -0.098203,
		-0.982162, 0.170697, -0.078874,
		38.802601, 30.772675, 18.595987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469650, 31.266090, 18.994583>,  <39.490112, 30.653187, 18.651199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469650, 31.266090, 18.994583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.091648, 31.138281, 18.966677>,  <38.864845, 31.061596, 18.949934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.091648, 31.138281, 18.966677>,  <39.469650, 31.266090, 18.994583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091648, 31.138281, 18.966677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142676, 0.210826, 0.967055,
		-0.294288, 0.923828, -0.244821,
		-0.945007, -0.319522, -0.069765,
		38.808147, 31.042423, 18.945747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078026, 31.770679, 19.330265>,  <39.469650, 31.266090, 18.994583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078026, 31.770679, 19.330265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853378, 31.442274, 19.371286>,  <38.718590, 31.245232, 19.395899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.853378, 31.442274, 19.371286>,  <39.078026, 31.770679, 19.330265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853378, 31.442274, 19.371286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044214, 0.093991, 0.994591,
		-0.826212, 0.563118, -0.016487,
		-0.561621, -0.821014, 0.102554,
		38.684891, 31.195971, 19.402052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583961, 31.976629, 19.848354>,  <39.078026, 31.770679, 19.330265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583961, 31.976629, 19.848354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588539, 31.577152, 19.828415>,  <38.591286, 31.337467, 19.816452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588539, 31.577152, 19.828415>,  <38.583961, 31.976629, 19.848354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588539, 31.577152, 19.828415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064583, -0.049010, 0.996708,
		-0.997847, -0.014624, 0.063938,
		0.011442, -0.998691, -0.049849,
		38.591972, 31.277544, 19.813459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199867, 31.765081, 20.385828>,  <38.583961, 31.976629, 19.848354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199867, 31.765081, 20.385828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.399975, 31.431429, 20.292917>,  <38.520039, 31.231237, 20.237171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.399975, 31.431429, 20.292917>,  <38.199867, 31.765081, 20.385828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399975, 31.431429, 20.292917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185842, -0.158569, 0.969700,
		-0.845689, -0.528281, 0.075689,
		0.500272, -0.834131, -0.232277,
		38.550056, 31.181189, 20.223234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483719, 31.440950, 20.306448>,  <38.199867, 31.765081, 20.385828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483719, 31.440950, 20.306448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113983, 31.591707, 20.330301>,  <36.892143, 31.682161, 20.344612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.113983, 31.591707, 20.330301>,  <37.483719, 31.440950, 20.306448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113983, 31.591707, 20.330301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089210, 0.365391, -0.926570,
		-0.371005, -0.851142, -0.371366,
		-0.924336, 0.376892, 0.059632,
		36.836681, 31.704775, 20.348190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206074, 31.311563, 19.595594>,  <37.483719, 31.440950, 20.306448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206074, 31.311563, 19.595594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008472, 31.599726, 19.790316>,  <36.889912, 31.772623, 19.907148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008472, 31.599726, 19.790316>,  <37.206074, 31.311563, 19.595594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008472, 31.599726, 19.790316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035688, 0.542619, -0.839221,
		-0.868729, -0.431949, -0.242345,
		-0.494001, 0.720406, 0.486804,
		36.860271, 31.815847, 19.936357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523907, 31.472866, 19.216377>,  <37.206074, 31.311563, 19.595594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523907, 31.472866, 19.216377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602547, 31.807383, 19.421106>,  <36.649731, 32.008091, 19.543943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602547, 31.807383, 19.421106>,  <36.523907, 31.472866, 19.216377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602547, 31.807383, 19.421106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116264, 0.538212, -0.834752,
		-0.973566, 0.104606, 0.203044,
		0.196601, 0.836293, 0.511823,
		36.661526, 32.058270, 19.574654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025169, 31.892641, 18.908794>,  <36.523907, 31.472866, 19.216377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025169, 31.892641, 18.908794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.259922, 32.145950, 19.110603>,  <36.400772, 32.297935, 19.231688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.259922, 32.145950, 19.110603>,  <36.025169, 31.892641, 18.908794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259922, 32.145950, 19.110603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083791, 0.667271, -0.740087,
		-0.805329, 0.392066, 0.444668,
		0.586877, 0.633273, 0.504520,
		36.435986, 32.335934, 19.261959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713478, 32.496952, 18.867424>,  <36.025169, 31.892641, 18.908794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713478, 32.496952, 18.867424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096577, 32.590485, 18.934410>,  <36.326435, 32.646603, 18.974602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096577, 32.590485, 18.934410>,  <35.713478, 32.496952, 18.867424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096577, 32.590485, 18.934410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004615, 0.594683, -0.803947,
		-0.287575, 0.769205, 0.570635,
		0.957747, 0.233829, 0.167467,
		36.383900, 32.660633, 18.984650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787540, 33.176212, 18.680946>,  <35.713478, 32.496952, 18.867424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787540, 33.176212, 18.680946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.178112, 33.090992, 18.694769>,  <36.412457, 33.039860, 18.703062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.178112, 33.090992, 18.694769>,  <35.787540, 33.176212, 18.680946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178112, 33.090992, 18.694769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127550, 0.440444, -0.888673,
		0.174110, 0.872135, 0.457237,
		0.976430, -0.213048, 0.034555,
		36.471043, 33.027077, 18.705135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155231, 33.758232, 18.464268>,  <35.787540, 33.176212, 18.680946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155231, 33.758232, 18.464268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411205, 33.456131, 18.407604>,  <36.564789, 33.274868, 18.373606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411205, 33.456131, 18.407604>,  <36.155231, 33.758232, 18.464268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411205, 33.456131, 18.407604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107315, 0.270380, -0.956754,
		0.760897, 0.597060, 0.254076,
		0.639937, -0.755257, -0.141657,
		36.603188, 33.229553, 18.365107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276478, 34.456249, 18.879942>,  <36.155231, 33.758232, 18.464268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276478, 34.456249, 18.879942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.947208, 34.675587, 18.821018>,  <35.749645, 34.807190, 18.785664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.947208, 34.675587, 18.821018>,  <36.276478, 34.456249, 18.879942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947208, 34.675587, 18.821018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336185, -0.261634, 0.904725,
		0.457562, 0.794270, 0.399716,
		-0.823175, 0.548346, -0.147308,
		35.700256, 34.840092, 18.776825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169636, 34.712269, 19.534386>,  <36.276478, 34.456249, 18.879942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169636, 34.712269, 19.534386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.823051, 34.749432, 19.338175>,  <35.615101, 34.771729, 19.220449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.823051, 34.749432, 19.338175>,  <36.169636, 34.712269, 19.534386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823051, 34.749432, 19.338175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488892, -0.356979, 0.795959,
		-0.101155, 0.929481, 0.354730,
		-0.866459, 0.092909, -0.490526,
		35.563114, 34.777306, 19.191017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658451, 34.957199, 20.096287>,  <36.169636, 34.712269, 19.534386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658451, 34.957199, 20.096287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435471, 34.819618, 19.794043>,  <35.301682, 34.737072, 19.612696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.435471, 34.819618, 19.794043>,  <35.658451, 34.957199, 20.096287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435471, 34.819618, 19.794043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645800, -0.392302, 0.655013,
		-0.521718, 0.853111, -0.003432,
		-0.557452, -0.343949, -0.755610,
		35.268234, 34.716434, 19.567360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884159, 35.030594, 20.289392>,  <35.658451, 34.957199, 20.096287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884159, 35.030594, 20.289392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915710, 34.750999, 20.005085>,  <34.934639, 34.583241, 19.834499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915710, 34.750999, 20.005085>,  <34.884159, 35.030594, 20.289392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915710, 34.750999, 20.005085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557562, -0.621976, 0.549791,
		-0.826379, 0.352934, -0.438788,
		0.078876, -0.698988, -0.710770,
		34.939373, 34.541302, 19.791853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393738, 34.672947, 20.428623>,  <34.884159, 35.030594, 20.289392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393738, 34.672947, 20.428623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589622, 34.416569, 20.192192>,  <34.707153, 34.262741, 20.050333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589622, 34.416569, 20.192192>,  <34.393738, 34.672947, 20.428623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589622, 34.416569, 20.192192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374777, -0.766846, 0.521047,
		-0.787231, -0.033636, -0.615740,
		0.489703, -0.640949, -0.591079,
		34.736534, 34.224285, 20.014870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990231, 34.112282, 20.340910>,  <34.393738, 34.672947, 20.428623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990231, 34.112282, 20.340910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363155, 33.972809, 20.302500>,  <34.586910, 33.889126, 20.279453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.363155, 33.972809, 20.302500>,  <33.990231, 34.112282, 20.340910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363155, 33.972809, 20.302500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197688, -0.713649, 0.672030,
		-0.302855, -0.607556, -0.734272,
		0.932308, -0.348684, -0.096026,
		34.642849, 33.868202, 20.273693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899044, 33.314968, 20.472637>,  <33.990231, 34.112282, 20.340910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899044, 33.314968, 20.472637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291363, 33.378246, 20.518251>,  <34.526756, 33.416214, 20.545620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291363, 33.378246, 20.518251>,  <33.899044, 33.314968, 20.472637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291363, 33.378246, 20.518251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036191, -0.426944, 0.903554,
		0.191623, -0.890334, -0.413022,
		0.980801, 0.158194, 0.114034,
		34.585602, 33.425705, 20.552462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.739605, 36.725418, 17.079468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631409, 36.453297, 16.806992>,  <37.566490, 36.290024, 16.643505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631409, 36.453297, 16.806992>,  <37.739605, 36.725418, 17.079468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631409, 36.453297, 16.806992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204756, 0.732033, -0.649772,
		0.940697, -0.036278, -0.337302,
		-0.270488, -0.680303, -0.681193,
		37.550262, 36.249207, 16.602634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706093, 36.202854, 17.553011>,  <37.739605, 36.725418, 17.079468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706093, 36.202854, 17.553011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.986214, 35.956215, 17.409130>,  <38.154285, 35.808231, 17.322802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.986214, 35.956215, 17.409130>,  <37.706093, 36.202854, 17.553011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986214, 35.956215, 17.409130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415547, -0.057588, 0.907747,
		-0.580431, -0.785168, 0.215897,
		0.700301, -0.616599, -0.359700,
		38.196304, 35.771236, 17.301220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692829, 35.747334, 18.022036>,  <37.706093, 36.202854, 17.553011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692829, 35.747334, 18.022036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057728, 35.731945, 17.858902>,  <38.276665, 35.722713, 17.761021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.057728, 35.731945, 17.858902>,  <37.692829, 35.747334, 18.022036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057728, 35.731945, 17.858902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400833, -0.121574, 0.908049,
		-0.084514, -0.991837, -0.095486,
		0.912245, -0.038469, -0.407835,
		38.331402, 35.720402, 17.736551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994072, 35.138599, 18.277567>,  <37.692829, 35.747334, 18.022036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994072, 35.138599, 18.277567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284599, 35.386997, 18.159695>,  <38.458916, 35.536034, 18.088972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284599, 35.386997, 18.159695>,  <37.994072, 35.138599, 18.277567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284599, 35.386997, 18.159695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482865, -0.155853, 0.861714,
		0.489190, -0.768167, -0.413053,
		0.726316, 0.620990, -0.294679,
		38.502495, 35.573296, 18.071291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601021, 34.812870, 18.416759>,  <37.994072, 35.138599, 18.277567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601021, 34.812870, 18.416759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.690601, 35.202194, 18.396727>,  <38.744350, 35.435791, 18.384706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.690601, 35.202194, 18.396727>,  <38.601021, 34.812870, 18.416759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690601, 35.202194, 18.396727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449627, -0.057588, 0.891358,
		0.864686, -0.222138, -0.450525,
		0.223949, 0.973313, -0.050084,
		38.757786, 35.494186, 18.381701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369743, 34.766853, 18.539404>,  <38.601021, 34.812870, 18.416759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369743, 34.766853, 18.539404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.217205, 35.129391, 18.612204>,  <39.125683, 35.346912, 18.655884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.217205, 35.129391, 18.612204>,  <39.369743, 34.766853, 18.539404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217205, 35.129391, 18.612204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513155, 0.043787, 0.857179,
		0.768926, 0.420276, -0.481791,
		-0.381347, 0.906339, 0.181997,
		39.102802, 35.401291, 18.666803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874203, 35.070202, 18.921663>,  <39.369743, 34.766853, 18.539404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874203, 35.070202, 18.921663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563335, 35.312756, 18.988964>,  <39.376816, 35.458286, 19.029345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563335, 35.312756, 18.988964>,  <39.874203, 35.070202, 18.921663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563335, 35.312756, 18.988964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265431, 0.073449, 0.961328,
		0.570573, 0.791775, -0.218035,
		-0.777169, 0.606381, 0.168254,
		39.330185, 35.494671, 19.039440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068386, 35.600349, 19.413164>,  <39.874203, 35.070202, 18.921663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068386, 35.600349, 19.413164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669636, 35.583607, 19.439959>,  <39.430386, 35.573559, 19.456036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669636, 35.583607, 19.439959>,  <40.068386, 35.600349, 19.413164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669636, 35.583607, 19.439959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064202, 0.064598, 0.995844,
		-0.046013, 0.997033, -0.061709,
		-0.996876, -0.041860, 0.066984,
		39.370575, 35.571049, 19.460054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798996, 36.260880, 19.796148>,  <40.068386, 35.600349, 19.413164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798996, 36.260880, 19.796148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511349, 35.984962, 19.829752>,  <39.338760, 35.819412, 19.849915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.511349, 35.984962, 19.829752>,  <39.798996, 36.260880, 19.796148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511349, 35.984962, 19.829752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066762, 0.188916, 0.979721,
		-0.691677, 0.698923, -0.181904,
		-0.719115, -0.689795, 0.084008,
		39.295616, 35.778023, 19.854954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232281, 36.559196, 20.219450>,  <39.798996, 36.260880, 19.796148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232281, 36.559196, 20.219450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.192535, 36.161640, 20.238638>,  <39.168690, 35.923107, 20.250151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.192535, 36.161640, 20.238638>,  <39.232281, 36.559196, 20.219450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192535, 36.161640, 20.238638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113571, 0.059219, 0.991764,
		-0.988549, 0.093098, -0.118762,
		-0.099364, -0.993894, 0.047968,
		39.162727, 35.863472, 20.253029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612228, 36.445225, 20.633022>,  <39.232281, 36.559196, 20.219450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612228, 36.445225, 20.633022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788559, 36.086353, 20.643875>,  <38.894356, 35.871029, 20.650387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.788559, 36.086353, 20.643875>,  <38.612228, 36.445225, 20.633022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788559, 36.086353, 20.643875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235362, -0.086370, 0.968063,
		-0.866186, -0.433132, -0.249237,
		0.440825, -0.897183, 0.027130,
		38.920807, 35.817200, 20.652014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201633, 36.023094, 21.031328>,  <38.612228, 36.445225, 20.633022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201633, 36.023094, 21.031328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555260, 35.836758, 21.046417>,  <38.767433, 35.724957, 21.055470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555260, 35.836758, 21.046417>,  <38.201633, 36.023094, 21.031328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555260, 35.836758, 21.046417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120133, -0.148501, 0.981588,
		-0.451668, -0.872316, -0.187247,
		0.884061, -0.465846, 0.037721,
		38.820477, 35.697002, 21.057734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660313, 35.670601, 20.807121>,  <38.201633, 36.023094, 21.031328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660313, 35.670601, 20.807121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292610, 35.816425, 20.866543>,  <37.071987, 35.903919, 20.902195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.292610, 35.816425, 20.866543>,  <37.660313, 35.670601, 20.807121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292610, 35.816425, 20.866543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013129, 0.405539, -0.913984,
		-0.393445, -0.838233, -0.377580,
		-0.919255, 0.364559, 0.148552,
		37.016834, 35.925793, 20.911108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320671, 35.540741, 20.162518>,  <37.660313, 35.670601, 20.807121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320671, 35.540741, 20.162518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.120869, 35.823845, 20.362341>,  <37.000988, 35.993710, 20.482235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.120869, 35.823845, 20.362341>,  <37.320671, 35.540741, 20.162518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120869, 35.823845, 20.362341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120249, 0.514427, -0.849061,
		-0.857922, -0.484186, -0.171854,
		-0.499510, 0.707763, 0.499561,
		36.971016, 36.036175, 20.512209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787323, 35.711468, 19.751085>,  <37.320671, 35.540741, 20.162518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787323, 35.711468, 19.751085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833225, 36.023151, 19.997555>,  <36.860767, 36.210159, 20.145437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.833225, 36.023151, 19.997555>,  <36.787323, 35.711468, 19.751085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833225, 36.023151, 19.997555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199830, 0.625700, -0.754034,
		-0.973087, -0.036597, 0.227514,
		0.114759, 0.779205, 0.616173,
		36.867653, 36.256912, 20.182407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436230, 36.178078, 19.354919>,  <36.787323, 35.711468, 19.751085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436230, 36.178078, 19.354919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594296, 36.401150, 19.646904>,  <36.689133, 36.534992, 19.822094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594296, 36.401150, 19.646904>,  <36.436230, 36.178078, 19.354919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594296, 36.401150, 19.646904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251227, 0.829949, -0.498066,
		-0.883590, 0.013431, 0.468069,
		0.395162, 0.557678, 0.729961,
		36.712845, 36.568455, 19.865892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840378, 36.712505, 19.412743>,  <36.436230, 36.178078, 19.354919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840378, 36.712505, 19.412743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186287, 36.859859, 19.549246>,  <36.393833, 36.948273, 19.631147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.186287, 36.859859, 19.549246>,  <35.840378, 36.712505, 19.412743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186287, 36.859859, 19.549246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081760, 0.773804, -0.628127,
		-0.495461, 0.515286, 0.699284,
		0.864774, 0.368386, 0.341260,
		36.445721, 36.970375, 19.651623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748470, 37.417072, 19.569849>,  <35.840378, 36.712505, 19.412743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748470, 37.417072, 19.569849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.141369, 37.391960, 19.499140>,  <36.377110, 37.376892, 19.456715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.141369, 37.391960, 19.499140>,  <35.748470, 37.417072, 19.569849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141369, 37.391960, 19.499140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065216, 0.769277, -0.635578,
		0.175886, 0.635824, 0.751527,
		0.982248, -0.062778, -0.176771,
		36.436043, 37.373127, 19.446108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055237, 38.182735, 19.467999>,  <35.748470, 37.417072, 19.569849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055237, 38.182735, 19.467999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.338463, 37.927132, 19.347790>,  <36.508396, 37.773769, 19.275663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.338463, 37.927132, 19.347790>,  <36.055237, 38.182735, 19.467999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338463, 37.927132, 19.347790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190506, 0.582659, -0.790074,
		0.679968, 0.502169, 0.534293,
		0.708061, -0.639011, -0.300523,
		36.550880, 37.735428, 19.257633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679585, 38.645729, 19.384186>,  <36.055237, 38.182735, 19.467999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679585, 38.645729, 19.384186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.738670, 38.317539, 19.163277>,  <36.774120, 38.120625, 19.030731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.738670, 38.317539, 19.163277>,  <36.679585, 38.645729, 19.384186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738670, 38.317539, 19.163277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287603, 0.569901, -0.769738,
		0.946290, -0.045133, 0.320153,
		0.147715, -0.820473, -0.552272,
		36.782986, 38.071396, 18.997595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208729, 38.881413, 18.832664>,  <36.679585, 38.645729, 19.384186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208729, 38.881413, 18.832664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057751, 38.553314, 18.660746>,  <36.967163, 38.356453, 18.557594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.057751, 38.553314, 18.660746>,  <37.208729, 38.881413, 18.832664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057751, 38.553314, 18.660746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027642, 0.473901, -0.880144,
		0.925620, -0.320324, -0.201544,
		-0.377443, -0.820250, -0.429798,
		36.944519, 38.307240, 18.531807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657070, 38.759068, 18.260597>,  <37.208729, 38.881413, 18.832664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657070, 38.759068, 18.260597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325436, 38.554184, 18.170921>,  <37.126453, 38.431255, 18.117115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325436, 38.554184, 18.170921>,  <37.657070, 38.759068, 18.260597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325436, 38.554184, 18.170921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019575, 0.427316, -0.903890,
		0.558779, -0.745014, -0.364308,
		-0.829086, -0.512206, -0.224192,
		37.076710, 38.400520, 18.103664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713619, 38.398155, 17.544245>,  <37.657070, 38.759068, 18.260597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713619, 38.398155, 17.544245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320801, 38.425064, 17.614748>,  <37.085110, 38.441208, 17.657049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320801, 38.425064, 17.614748>,  <37.713619, 38.398155, 17.544245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320801, 38.425064, 17.614748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139891, 0.367198, -0.919563,
		-0.126579, -0.927707, -0.351194,
		-0.982043, 0.067268, 0.176257,
		37.026188, 38.445244, 17.667625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465286, 38.229660, 16.937300>,  <37.713619, 38.398155, 17.544245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465286, 38.229660, 16.937300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.158951, 38.405434, 17.125086>,  <36.975151, 38.510899, 17.237757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.158951, 38.405434, 17.125086>,  <37.465286, 38.229660, 16.937300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158951, 38.405434, 17.125086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279689, 0.429766, -0.858531,
		-0.579024, -0.788797, -0.206226,
		-0.765836, 0.439431, 0.469463,
		36.929199, 38.537262, 17.265924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851089, 37.929367, 16.640631>,  <37.465286, 38.229660, 16.937300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851089, 37.929367, 16.640631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.810089, 38.299156, 16.787518>,  <36.785488, 38.521030, 16.875650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.810089, 38.299156, 16.787518>,  <36.851089, 37.929367, 16.640631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810089, 38.299156, 16.787518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114983, 0.355676, -0.927509,
		-0.988065, -0.137291, 0.069842,
		-0.102497, 0.924470, 0.367217,
		36.779339, 38.576496, 16.897682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234722, 37.585701, 16.518789>,  <36.851089, 37.929367, 16.640631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234722, 37.585701, 16.518789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037163, 37.279396, 16.354021>,  <35.918629, 37.095615, 16.255159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.037163, 37.279396, 16.354021>,  <36.234722, 37.585701, 16.518789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037163, 37.279396, 16.354021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188674, -0.368067, 0.910455,
		-0.848803, 0.527391, 0.037309,
		-0.493898, -0.765758, -0.411921,
		35.888992, 37.049667, 16.230444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623302, 37.482655, 16.852057>,  <36.234722, 37.585701, 16.518789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623302, 37.482655, 16.852057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.661869, 37.125572, 16.675974>,  <35.685009, 36.911324, 16.570324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.661869, 37.125572, 16.675974>,  <35.623302, 37.482655, 16.852057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661869, 37.125572, 16.675974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289454, -0.448298, 0.845721,
		-0.952324, 0.045882, -0.301618,
		0.096411, -0.892706, -0.440206,
		35.690792, 36.857761, 16.543913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023445, 37.078186, 17.117500>,  <35.623302, 37.482655, 16.852057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023445, 37.078186, 17.117500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.271866, 36.797977, 16.976900>,  <35.420918, 36.629852, 16.892540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.271866, 36.797977, 16.976900>,  <35.023445, 37.078186, 17.117500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271866, 36.797977, 16.976900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203661, -0.577314, 0.790715,
		-0.756844, -0.419490, -0.501214,
		0.621055, -0.700525, -0.351503,
		35.458183, 36.587818, 16.871449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672459, 36.448612, 17.170534>,  <35.023445, 37.078186, 17.117500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672459, 36.448612, 17.170534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056511, 36.341705, 17.137733>,  <35.286942, 36.277561, 17.118053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056511, 36.341705, 17.137733>,  <34.672459, 36.448612, 17.170534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056511, 36.341705, 17.137733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100160, -0.602698, 0.791658,
		-0.261006, -0.751879, -0.605436,
		0.960127, -0.267268, -0.082000,
		35.344547, 36.261524, 17.113134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659626, 35.735699, 17.150509>,  <34.672459, 36.448612, 17.170534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659626, 35.735699, 17.150509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.036392, 35.808697, 17.263290>,  <35.262451, 35.852497, 17.330959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.036392, 35.808697, 17.263290>,  <34.659626, 35.735699, 17.150509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036392, 35.808697, 17.263290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120808, -0.599210, 0.791425,
		0.313383, -0.779514, -0.542355,
		0.941911, 0.182498, 0.281954,
		35.318966, 35.863445, 17.347876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928017, 35.075096, 17.420137>,  <34.659626, 35.735699, 17.150509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928017, 35.075096, 17.420137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.177361, 35.347904, 17.573120>,  <35.326965, 35.511589, 17.664909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.177361, 35.347904, 17.573120>,  <34.928017, 35.075096, 17.420137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177361, 35.347904, 17.573120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064118, -0.442886, 0.894282,
		0.779305, -0.581979, -0.232346,
		0.623357, 0.682021, 0.382459,
		35.364368, 35.552509, 17.687859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485310, 34.604248, 17.550074>,  <34.928017, 35.075096, 17.420137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485310, 34.604248, 17.550074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.495182, 34.924339, 17.789751>,  <35.501106, 35.116394, 17.933558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.495182, 34.924339, 17.789751>,  <35.485310, 34.604248, 17.550074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495182, 34.924339, 17.789751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037004, -0.599695, 0.799373,
		0.999010, 0.002443, -0.044412,
		0.024681, 0.800225, 0.599192,
		35.502586, 35.164406, 17.969509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924782, 34.401901, 18.127043>,  <35.485310, 34.604248, 17.550074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924782, 34.401901, 18.127043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.731831, 34.722961, 18.267365>,  <35.616058, 34.915596, 18.351557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.731831, 34.722961, 18.267365>,  <35.924782, 34.401901, 18.127043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731831, 34.722961, 18.267365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063424, -0.367424, 0.927888,
		0.873662, 0.469845, 0.126331,
		-0.482381, 0.802649, 0.350804,
		35.587116, 34.963757, 18.372606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642330, 34.013081, 17.965233>,  <35.924782, 34.401901, 18.127043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642330, 34.013081, 17.965233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.634762, 33.613171, 17.969120>,  <36.630219, 33.373226, 17.971453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.634762, 33.613171, 17.969120>,  <36.642330, 34.013081, 17.965233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634762, 33.613171, 17.969120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121635, -0.011951, -0.992503,
		0.992395, -0.017600, 0.121834,
		-0.018924, -0.999774, 0.009720,
		36.629086, 33.313240, 17.972036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201809, 33.817650, 17.575346>,  <36.642330, 34.013081, 17.965233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201809, 33.817650, 17.575346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969769, 33.492195, 17.559965>,  <36.830544, 33.296925, 17.550737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969769, 33.492195, 17.559965>,  <37.201809, 33.817650, 17.575346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969769, 33.492195, 17.559965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185729, 0.178087, -0.966328,
		0.793085, -0.553430, -0.254425,
		-0.580105, -0.813634, -0.038450,
		36.795738, 33.248104, 17.548429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473576, 33.506653, 17.115612>,  <37.201809, 33.817650, 17.575346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473576, 33.506653, 17.115612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098465, 33.367828, 17.119991>,  <36.873398, 33.284534, 17.122620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.098465, 33.367828, 17.119991>,  <37.473576, 33.506653, 17.115612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098465, 33.367828, 17.119991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017113, 0.014698, -0.999746,
		0.346808, -0.937729, -0.019723,
		-0.937780, -0.347057, 0.010950,
		36.817131, 33.263710, 17.123276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523468, 33.040783, 16.559082>,  <37.473576, 33.506653, 17.115612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523468, 33.040783, 16.559082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.133877, 33.087685, 16.636654>,  <36.900120, 33.115826, 16.683197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.133877, 33.087685, 16.636654>,  <37.523468, 33.040783, 16.559082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133877, 33.087685, 16.636654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193017, 0.019204, -0.981007,
		-0.118755, -0.992916, 0.003928,
		-0.973982, 0.117258, 0.193930,
		36.841682, 33.122860, 16.694834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163929, 32.502205, 16.214388>,  <37.523468, 33.040783, 16.559082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163929, 32.502205, 16.214388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899014, 32.797432, 16.265957>,  <36.740063, 32.974567, 16.296898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.899014, 32.797432, 16.265957>,  <37.163929, 32.502205, 16.214388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899014, 32.797432, 16.265957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187938, 0.002921, -0.982177,
		-0.725293, -0.674716, 0.136777,
		-0.662291, 0.738072, 0.128923,
		36.700325, 33.018852, 16.304634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541676, 32.294415, 15.907073>,  <37.163929, 32.502205, 16.214388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541676, 32.294415, 15.907073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.563793, 32.693531, 15.921812>,  <36.577065, 32.933002, 15.930655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.563793, 32.693531, 15.921812>,  <36.541676, 32.294415, 15.907073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563793, 32.693531, 15.921812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104494, 0.042484, -0.993618,
		-0.992987, 0.051089, 0.106612,
		0.055292, 0.997790, 0.036847,
		36.580379, 32.992867, 15.932866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915226, 32.416218, 15.603561>,  <36.541676, 32.294415, 15.907073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915226, 32.416218, 15.603561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.141346, 32.745163, 15.577782>,  <36.277020, 32.942528, 15.562314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.141346, 32.745163, 15.577782>,  <35.915226, 32.416218, 15.603561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141346, 32.745163, 15.577782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201549, 0.061940, -0.977518,
		-0.799881, 0.565585, 0.200761,
		0.565304, 0.822361, -0.064448,
		36.310936, 32.991871, 15.558447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564205, 33.003777, 15.222224>,  <35.915226, 32.416218, 15.603561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564205, 33.003777, 15.222224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.957470, 33.069809, 15.190867>,  <36.193428, 33.109428, 15.172053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.957470, 33.069809, 15.190867>,  <35.564205, 33.003777, 15.222224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957470, 33.069809, 15.190867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072355, -0.042278, -0.996482,
		-0.167818, 0.985373, -0.029622,
		0.983159, 0.165085, -0.078392,
		36.252419, 33.119335, 15.167350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691963, 33.483360, 14.627756>,  <35.564205, 33.003777, 15.222224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691963, 33.483360, 14.627756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.028057, 33.278027, 14.697613>,  <36.229713, 33.154827, 14.739527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.028057, 33.278027, 14.697613>,  <35.691963, 33.483360, 14.627756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028057, 33.278027, 14.697613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090486, -0.184823, -0.978597,
		0.534621, 0.838053, -0.108845,
		0.840234, -0.513330, 0.174643,
		36.280128, 33.124027, 14.750006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.592991, 29.598438, 30.026810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987453, 29.651152, 29.986565>,  <37.224133, 29.682779, 29.962418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987453, 29.651152, 29.986565>,  <36.592991, 29.598438, 30.026810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987453, 29.651152, 29.986565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137552, 0.311491, -0.940241,
		-0.092568, 0.941067, 0.325307,
		0.986159, 0.131783, -0.100611,
		37.283302, 29.690687, 29.956381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748440, 30.288868, 29.939102>,  <36.592991, 29.598438, 30.026810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748440, 30.288868, 29.939102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025124, 30.064030, 29.757736>,  <37.191135, 29.929127, 29.648916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025124, 30.064030, 29.757736>,  <36.748440, 30.288868, 29.939102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025124, 30.064030, 29.757736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291652, 0.356943, -0.887429,
		0.660662, 0.746085, 0.082966,
		0.691712, -0.562093, -0.453416,
		37.232635, 29.895401, 29.621712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762901, 30.688799, 29.296164>,  <36.748440, 30.288868, 29.939102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762901, 30.688799, 29.296164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983093, 30.359177, 29.242632>,  <37.115208, 30.161404, 29.210512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.983093, 30.359177, 29.242632>,  <36.762901, 30.688799, 29.296164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983093, 30.359177, 29.242632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156207, 0.055805, -0.986147,
		0.820106, 0.563756, -0.098004,
		0.550477, -0.824054, -0.133829,
		37.148235, 30.111961, 29.202484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284168, 30.753902, 28.711756>,  <36.762901, 30.688799, 29.296164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284168, 30.753902, 28.711756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266266, 30.357498, 28.762180>,  <37.255524, 30.119656, 28.792435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266266, 30.357498, 28.762180>,  <37.284168, 30.753902, 28.711756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266266, 30.357498, 28.762180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024038, -0.125084, -0.991855,
		0.998709, -0.047419, -0.018224,
		-0.044754, -0.991012, 0.126062,
		37.252838, 30.060194, 28.799999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769463, 30.474756, 28.275915>,  <37.284168, 30.753902, 28.711756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769463, 30.474756, 28.275915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486824, 30.202135, 28.352024>,  <37.317242, 30.038563, 28.397690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486824, 30.202135, 28.352024>,  <37.769463, 30.474756, 28.275915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486824, 30.202135, 28.352024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033790, -0.301083, -0.952999,
		0.706806, -0.666960, 0.235775,
		-0.706600, -0.681552, 0.190271,
		37.274845, 29.997669, 28.409105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890987, 30.001186, 27.767683>,  <37.769463, 30.474756, 28.275915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890987, 30.001186, 27.767683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518658, 29.925291, 27.892622>,  <37.295258, 29.879755, 27.967587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518658, 29.925291, 27.892622>,  <37.890987, 30.001186, 27.767683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518658, 29.925291, 27.892622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286039, -0.153729, -0.945806,
		0.227471, -0.969725, 0.088823,
		-0.930827, -0.189737, 0.312349,
		37.239410, 29.868370, 27.986326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654610, 29.570681, 27.285887>,  <37.890987, 30.001186, 27.767683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654610, 29.570681, 27.285887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.310890, 29.702780, 27.442116>,  <37.104660, 29.782040, 27.535852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.310890, 29.702780, 27.442116>,  <37.654610, 29.570681, 27.285887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310890, 29.702780, 27.442116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433579, -0.065239, -0.898751,
		-0.271331, -0.941637, 0.199248,
		-0.859295, 0.330248, 0.390573,
		37.053101, 29.801855, 27.559288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184753, 29.101416, 27.073439>,  <37.654610, 29.570681, 27.285887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184753, 29.101416, 27.073439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967281, 29.424046, 27.166256>,  <36.836796, 29.617624, 27.221947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967281, 29.424046, 27.166256>,  <37.184753, 29.101416, 27.073439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967281, 29.424046, 27.166256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408239, -0.012577, -0.912789,
		-0.733315, -0.590997, 0.336113,
		-0.543682, 0.806576, 0.232045,
		36.804176, 29.666018, 27.235870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500816, 28.943497, 26.837431>,  <37.184753, 29.101416, 27.073439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500816, 28.943497, 26.837431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502815, 29.339190, 26.895941>,  <36.504013, 29.576605, 26.931047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502815, 29.339190, 26.895941>,  <36.500816, 28.943497, 26.837431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502815, 29.339190, 26.895941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433327, 0.133970, -0.891224,
		-0.901223, -0.058934, 0.429330,
		0.004993, 0.989232, 0.146275,
		36.504314, 29.635960, 26.939823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808235, 29.227724, 26.621014>,  <36.500816, 28.943497, 26.837431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808235, 29.227724, 26.621014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043404, 29.549608, 26.588051>,  <36.184505, 29.742739, 26.568274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043404, 29.549608, 26.588051>,  <35.808235, 29.227724, 26.621014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043404, 29.549608, 26.588051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272634, 0.101207, -0.956780,
		-0.761591, 0.584976, 0.278893,
		0.587919, 0.804711, -0.082406,
		36.219780, 29.791021, 26.563330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462303, 29.582937, 26.143225>,  <35.808235, 29.227724, 26.621014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462303, 29.582937, 26.143225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804340, 29.790226, 26.149588>,  <36.009563, 29.914600, 26.153406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.804340, 29.790226, 26.149588>,  <35.462303, 29.582937, 26.143225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804340, 29.790226, 26.149588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038420, 0.093934, -0.994837,
		-0.517042, 0.850071, 0.100233,
		0.855097, 0.518223, 0.015908,
		36.060871, 29.945692, 26.154360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293991, 30.336031, 26.022711>,  <35.462303, 29.582937, 26.143225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293991, 30.336031, 26.022711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664970, 30.231737, 25.915489>,  <35.887558, 30.169161, 25.851156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664970, 30.231737, 25.915489>,  <35.293991, 30.336031, 26.022711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664970, 30.231737, 25.915489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200966, 0.256974, -0.945292,
		0.315353, 0.930582, 0.185932,
		0.927451, -0.260735, -0.268053,
		35.943207, 30.153517, 25.835073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098541, 30.966539, 26.157438>,  <35.293991, 30.336031, 26.022711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098541, 30.966539, 26.157438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719353, 31.093798, 26.152695>,  <34.491840, 31.170153, 26.149849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719353, 31.093798, 26.152695>,  <35.098541, 30.966539, 26.157438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719353, 31.093798, 26.152695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091402, -0.236284, 0.967375,
		0.304964, 0.918125, 0.253069,
		-0.947968, 0.318146, -0.011860,
		34.434963, 31.189241, 26.149137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986729, 31.353615, 26.783678>,  <35.098541, 30.966539, 26.157438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986729, 31.353615, 26.783678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620247, 31.239355, 26.671263>,  <34.400360, 31.170799, 26.603813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620247, 31.239355, 26.671263>,  <34.986729, 31.353615, 26.783678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620247, 31.239355, 26.671263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242276, -0.163760, 0.956287,
		-0.319183, 0.944239, 0.080832,
		-0.916201, -0.285647, -0.281036,
		34.345387, 31.153662, 26.586952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646782, 31.741093, 27.245853>,  <34.986729, 31.353615, 26.783678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646782, 31.741093, 27.245853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372948, 31.471741, 27.134207>,  <34.208649, 31.310129, 27.067219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372948, 31.471741, 27.134207>,  <34.646782, 31.741093, 27.245853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372948, 31.471741, 27.134207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163961, -0.230851, 0.959075,
		-0.710255, 0.702331, 0.047629,
		-0.684583, -0.673379, -0.279118,
		34.167572, 31.269728, 27.050472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124325, 31.834013, 27.695265>,  <34.646782, 31.741093, 27.245853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124325, 31.834013, 27.695265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067432, 31.469187, 27.541431>,  <34.033295, 31.250290, 27.449131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067432, 31.469187, 27.541431>,  <34.124325, 31.834013, 27.695265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067432, 31.469187, 27.541431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250334, -0.342756, 0.905456,
		-0.957655, 0.225060, -0.179570,
		-0.142233, -0.912067, -0.384582,
		34.024761, 31.195566, 27.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532860, 31.731697, 27.973392>,  <34.124325, 31.834013, 27.695265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532860, 31.731697, 27.973392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681000, 31.367104, 27.901800>,  <33.769882, 31.148346, 27.858845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681000, 31.367104, 27.901800>,  <33.532860, 31.731697, 27.973392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681000, 31.367104, 27.901800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187486, -0.262068, 0.946662,
		-0.909775, -0.317038, -0.267948,
		0.370348, -0.911486, -0.178983,
		33.792103, 31.093658, 27.848104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180115, 31.245556, 28.374590>,  <33.532860, 31.731697, 27.973392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180115, 31.245556, 28.374590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502209, 31.026575, 28.283466>,  <33.695465, 30.895187, 28.228792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502209, 31.026575, 28.283466>,  <33.180115, 31.245556, 28.374590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502209, 31.026575, 28.283466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032787, -0.424710, 0.904735,
		-0.592051, -0.721054, -0.359940,
		0.805233, -0.547451, -0.227809,
		33.743778, 30.862339, 28.215124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043613, 30.525522, 28.684299>,  <33.180115, 31.245556, 28.374590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043613, 30.525522, 28.684299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439732, 30.566130, 28.646341>,  <33.677402, 30.590494, 28.623568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439732, 30.566130, 28.646341>,  <33.043613, 30.525522, 28.684299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439732, 30.566130, 28.646341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124862, -0.350322, 0.928270,
		0.060993, -0.931112, -0.359599,
		0.990298, 0.101518, -0.094893,
		33.736820, 30.596584, 28.617874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436802, 29.831047, 28.864149>,  <33.043613, 30.525522, 28.684299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436802, 29.831047, 28.864149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709072, 30.123537, 28.881983>,  <33.872437, 30.299030, 28.892683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709072, 30.123537, 28.881983>,  <33.436802, 29.831047, 28.864149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709072, 30.123537, 28.881983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187328, -0.232568, 0.954369,
		0.708227, -0.641266, -0.295283,
		0.680678, 0.731225, 0.044584,
		33.913277, 30.342905, 28.895357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024593, 29.494400, 29.185568>,  <33.436802, 29.831047, 28.864149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024593, 29.494400, 29.185568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088200, 29.885403, 29.240990>,  <34.126366, 30.120005, 29.274242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088200, 29.885403, 29.240990>,  <34.024593, 29.494400, 29.185568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088200, 29.885403, 29.240990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176986, -0.166293, 0.970063,
		0.971282, -0.129735, -0.199448,
		0.159018, 0.977505, 0.138556,
		34.135906, 30.178654, 29.282557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644253, 29.525372, 29.593416>,  <34.024593, 29.494400, 29.185568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644253, 29.525372, 29.593416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446522, 29.870481, 29.635872>,  <34.327885, 30.077547, 29.661345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446522, 29.870481, 29.635872>,  <34.644253, 29.525372, 29.593416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446522, 29.870481, 29.635872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178923, -0.018499, 0.983689,
		0.850664, 0.505253, -0.145225,
		-0.494326, 0.862773, 0.106138,
		34.298225, 30.129313, 29.667713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086048, 29.889204, 29.958832>,  <34.644253, 29.525372, 29.593416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086048, 29.889204, 29.958832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756695, 30.105383, 30.028057>,  <34.559082, 30.235090, 30.069592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756695, 30.105383, 30.028057>,  <35.086048, 29.889204, 29.958832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756695, 30.105383, 30.028057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120638, -0.131297, 0.983975,
		0.554508, 0.831072, 0.042910,
		-0.823388, 0.540445, 0.173064,
		34.509678, 30.267517, 30.079977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289925, 30.432869, 30.440876>,  <35.086048, 29.889204, 29.958832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289925, 30.432869, 30.440876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904327, 30.330635, 30.470274>,  <34.672970, 30.269295, 30.487913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.904327, 30.330635, 30.470274>,  <35.289925, 30.432869, 30.440876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904327, 30.330635, 30.470274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036111, 0.148000, 0.988328,
		-0.263477, 0.955392, -0.133441,
		-0.963990, -0.255583, 0.073494,
		34.615131, 30.253960, 30.492323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013554, 30.936386, 30.750751>,  <35.289925, 30.432869, 30.440876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013554, 30.936386, 30.750751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746128, 30.645739, 30.814056>,  <34.585670, 30.471350, 30.852039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746128, 30.645739, 30.814056>,  <35.013554, 30.936386, 30.750751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746128, 30.645739, 30.814056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239502, 0.411865, 0.879208,
		-0.704031, 0.549904, -0.449385,
		-0.668566, -0.726618, 0.158263,
		34.545559, 30.427753, 30.861536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400394, 31.227030, 30.885168>,  <35.013554, 30.936386, 30.750751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400394, 31.227030, 30.885168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353302, 30.857040, 31.029703>,  <34.325047, 30.635046, 31.116425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353302, 30.857040, 31.029703>,  <34.400394, 31.227030, 30.885168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353302, 30.857040, 31.029703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365470, 0.378687, 0.850311,
		-0.923347, -0.031948, -0.382634,
		-0.117732, -0.924973, 0.361336,
		34.317982, 30.579548, 31.138103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996696, 31.748186, 30.895731>,  <34.400394, 31.227030, 30.885168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996696, 31.748186, 30.895731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869869, 32.032852, 31.146490>,  <34.793774, 32.203651, 31.296946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.869869, 32.032852, 31.146490>,  <34.996696, 31.748186, 30.895731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869869, 32.032852, 31.146490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197161, 0.696023, -0.690420,
		-0.927681, -0.095314, -0.361002,
		-0.317073, 0.711665, 0.626895,
		34.774746, 32.246353, 31.334558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317165, 32.040539, 30.705416>,  <34.996696, 31.748186, 30.895731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317165, 32.040539, 30.705416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615028, 32.238422, 30.884636>,  <34.793747, 32.357151, 30.992168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615028, 32.238422, 30.884636>,  <34.317165, 32.040539, 30.705416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615028, 32.238422, 30.884636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180231, 0.497313, -0.848644,
		-0.642649, 0.712704, 0.281168,
		0.744661, 0.494704, 0.448049,
		34.838425, 32.386833, 31.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189758, 32.683979, 30.627598>,  <34.317165, 32.040539, 30.705416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189758, 32.683979, 30.627598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589050, 32.700356, 30.644882>,  <34.828625, 32.710182, 30.655252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589050, 32.700356, 30.644882>,  <34.189758, 32.683979, 30.627598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589050, 32.700356, 30.644882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027134, 0.333214, -0.942461,
		-0.052981, 0.941962, 0.331512,
		0.998227, 0.040938, 0.043213,
		34.888519, 32.712635, 30.657846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316200, 33.289803, 30.224869>,  <34.189758, 32.683979, 30.627598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316200, 33.289803, 30.224869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673367, 33.110962, 30.246027>,  <34.887669, 33.003658, 30.258722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673367, 33.110962, 30.246027>,  <34.316200, 33.289803, 30.224869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673367, 33.110962, 30.246027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203158, 0.295286, -0.933559,
		0.401777, 0.844338, 0.354499,
		0.892918, -0.447102, 0.052895,
		34.941242, 32.976830, 30.261896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784851, 33.794952, 29.934286>,  <34.316200, 33.289803, 30.224869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784851, 33.794952, 29.934286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941826, 33.427135, 29.925909>,  <35.036011, 33.206448, 29.920883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941826, 33.427135, 29.925909>,  <34.784851, 33.794952, 29.934286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941826, 33.427135, 29.925909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390183, 0.187055, -0.901536,
		0.832915, 0.345628, 0.432196,
		0.392441, -0.919539, -0.020943,
		35.059559, 33.151276, 29.919626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525536, 33.890327, 29.698425>,  <34.784851, 33.794952, 29.934286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525536, 33.890327, 29.698425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432278, 33.505936, 29.638870>,  <35.376324, 33.275303, 29.603138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432278, 33.505936, 29.638870>,  <35.525536, 33.890327, 29.698425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432278, 33.505936, 29.638870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331543, 0.065380, -0.941172,
		0.914178, -0.268795, 0.303361,
		-0.233149, -0.960976, -0.148886,
		35.362331, 33.217644, 29.594204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166203, 33.605957, 29.368603>,  <35.525536, 33.890327, 29.698425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166203, 33.605957, 29.368603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880714, 33.337719, 29.287693>,  <35.709423, 33.176777, 29.239147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880714, 33.337719, 29.287693>,  <36.166203, 33.605957, 29.368603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880714, 33.337719, 29.287693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243737, 0.032959, -0.969281,
		0.656659, -0.741093, 0.139924,
		-0.713716, -0.670593, -0.202275,
		35.666599, 33.136539, 29.227011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472065, 33.168678, 28.943773>,  <36.166203, 33.605957, 29.368603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472065, 33.168678, 28.943773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.076214, 33.162361, 28.886663>,  <35.838703, 33.158569, 28.852398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.076214, 33.162361, 28.886663>,  <36.472065, 33.168678, 28.943773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076214, 33.162361, 28.886663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142139, 0.035816, -0.989199,
		0.020729, -0.999234, -0.033201,
		-0.989630, -0.015786, -0.142772,
		35.779324, 33.157623, 28.843832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491966, 32.789467, 28.337164>,  <36.472065, 33.168678, 28.943773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491966, 32.789467, 28.337164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114540, 32.920593, 28.355980>,  <35.888084, 32.999268, 28.367270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114540, 32.920593, 28.355980>,  <36.491966, 32.789467, 28.337164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114540, 32.920593, 28.355980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024423, 0.210536, -0.977281,
		-0.330272, -0.920984, -0.206662,
		-0.943570, 0.327816, 0.047041,
		35.831470, 33.018936, 28.370092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091019, 32.398987, 28.039314>,  <36.491966, 32.789467, 28.337164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091019, 32.398987, 28.039314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872684, 32.733955, 28.028057>,  <35.741684, 32.934937, 28.021303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872684, 32.733955, 28.028057>,  <36.091019, 32.398987, 28.039314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872684, 32.733955, 28.028057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059415, 0.005177, -0.998220,
		-0.835786, -0.546531, -0.052581,
		-0.545831, 0.837422, -0.028145,
		35.708935, 32.985184, 28.019613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578083, 32.272194, 27.413227>,  <36.091019, 32.398987, 28.039314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578083, 32.272194, 27.413227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621552, 32.661160, 27.495781>,  <35.647633, 32.894539, 27.545313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621552, 32.661160, 27.495781>,  <35.578083, 32.272194, 27.413227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621552, 32.661160, 27.495781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172894, 0.185960, -0.967226,
		-0.978927, 0.140795, -0.147916,
		0.108675, 0.972418, 0.206384,
		35.654156, 32.952885, 27.557695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028545, 32.599602, 27.028807>,  <35.578083, 32.272194, 27.413227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028545, 32.599602, 27.028807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274784, 32.896278, 27.135340>,  <35.422527, 33.074284, 27.199261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274784, 32.896278, 27.135340>,  <35.028545, 32.599602, 27.028807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274784, 32.896278, 27.135340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062218, 0.382648, -0.921797,
		-0.785602, 0.550883, 0.281703,
		0.615596, 0.741693, 0.266334,
		35.459461, 33.118786, 27.215240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739388, 33.178474, 26.705528>,  <35.028545, 32.599602, 27.028807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739388, 33.178474, 26.705528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108528, 33.303783, 26.795162>,  <35.330013, 33.378967, 26.848942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108528, 33.303783, 26.795162>,  <34.739388, 33.178474, 26.705528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108528, 33.303783, 26.795162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054844, 0.468986, -0.881501,
		-0.381239, 0.825782, 0.415622,
		0.922848, 0.313268, 0.224084,
		35.385384, 33.397762, 26.862387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659782, 33.884636, 26.526363>,  <34.739388, 33.178474, 26.705528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659782, 33.884636, 26.526363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038010, 33.755810, 26.507681>,  <35.264946, 33.678513, 26.496471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038010, 33.755810, 26.507681>,  <34.659782, 33.884636, 26.526363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038010, 33.755810, 26.507681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103666, 0.434123, -0.894869,
		0.308485, 0.841314, 0.443879,
		0.945564, -0.322068, -0.046705,
		35.321678, 33.659191, 26.493670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072681, 34.535782, 26.254171>,  <34.659782, 33.884636, 26.526363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072681, 34.535782, 26.254171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307873, 34.217865, 26.194052>,  <35.448990, 34.027115, 26.157980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307873, 34.217865, 26.194052>,  <35.072681, 34.535782, 26.254171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307873, 34.217865, 26.194052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344330, 0.414074, -0.842603,
		0.731927, 0.443681, 0.517137,
		0.587980, -0.794789, -0.150299,
		35.484268, 33.979427, 26.148962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725765, 34.843170, 26.078392>,  <35.072681, 34.535782, 26.254171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725765, 34.843170, 26.078392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.720840, 34.469677, 25.935289>,  <35.717888, 34.245583, 25.849428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.720840, 34.469677, 25.935289>,  <35.725765, 34.843170, 26.078392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720840, 34.469677, 25.935289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271438, 0.341229, -0.899936,
		0.962377, -0.108186, 0.249250,
		-0.012310, -0.933734, -0.357757,
		35.717148, 34.189556, 25.827963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385281, 34.749477, 25.685091>,  <35.725765, 34.843170, 26.078392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385281, 34.749477, 25.685091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182365, 34.432266, 25.550173>,  <36.060616, 34.241940, 25.469223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182365, 34.432266, 25.550173>,  <36.385281, 34.749477, 25.685091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182365, 34.432266, 25.550173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419998, 0.114255, -0.900304,
		0.752503, -0.598376, 0.275109,
		-0.507288, -0.793027, -0.337294,
		36.030178, 34.194359, 25.448984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831985, 34.286766, 25.324343>,  <36.385281, 34.749477, 25.685091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831985, 34.286766, 25.324343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469471, 34.195004, 25.182348>,  <36.251961, 34.139946, 25.097151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469471, 34.195004, 25.182348>,  <36.831985, 34.286766, 25.324343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469471, 34.195004, 25.182348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348937, 0.067846, -0.934687,
		0.238509, -0.970963, 0.018561,
		-0.906287, -0.229408, -0.354987,
		36.197586, 34.126183, 25.075851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986320, 33.879200, 24.755835>,  <36.831985, 34.286766, 25.324343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986320, 33.879200, 24.755835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614105, 34.015568, 24.702360>,  <36.390778, 34.097389, 24.670275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614105, 34.015568, 24.702360>,  <36.986320, 33.879200, 24.755835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614105, 34.015568, 24.702360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154714, 0.035122, -0.987335,
		-0.331911, -0.939434, -0.085428,
		-0.930537, 0.340925, -0.133686,
		36.334946, 34.117844, 24.662254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776928, 33.472954, 24.156448>,  <36.986320, 33.879200, 24.755835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776928, 33.472954, 24.156448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541183, 33.795658, 24.173365>,  <36.399738, 33.989281, 24.183514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541183, 33.795658, 24.173365>,  <36.776928, 33.472954, 24.156448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541183, 33.795658, 24.173365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071852, 0.104486, -0.991927,
		-0.804668, -0.581564, -0.119547,
		-0.589360, 0.806762, 0.042290,
		36.364376, 34.037685, 24.186052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245907, 33.391750, 23.680922>,  <36.776928, 33.472954, 24.156448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245907, 33.391750, 23.680922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242237, 33.788483, 23.731812>,  <36.240036, 34.026524, 23.762344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242237, 33.788483, 23.731812>,  <36.245907, 33.391750, 23.680922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242237, 33.788483, 23.731812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125372, 0.127365, -0.983900,
		-0.992067, 0.006924, -0.125517,
		-0.009174, 0.991832, 0.127223,
		36.239487, 34.086033, 23.769978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800735, 33.732323, 23.167620>,  <36.245907, 33.391750, 23.680922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800735, 33.732323, 23.167620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034241, 34.039700, 23.272470>,  <36.174343, 34.224125, 23.335381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.034241, 34.039700, 23.272470>,  <35.800735, 33.732323, 23.167620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034241, 34.039700, 23.272470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015310, 0.312371, -0.949837,
		-0.811778, 0.558495, 0.170586,
		0.583766, 0.768445, 0.262126,
		36.209370, 34.270233, 23.351109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584850, 34.369713, 22.827042>,  <35.800735, 33.732323, 23.167620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584850, 34.369713, 22.827042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957298, 34.477291, 22.925577>,  <36.180767, 34.541840, 22.984697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957298, 34.477291, 22.925577>,  <35.584850, 34.369713, 22.827042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957298, 34.477291, 22.925577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153525, 0.323635, -0.933644,
		-0.330823, 0.907154, 0.260054,
		0.931121, 0.268946, 0.246337,
		36.236633, 34.557976, 22.999477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599773, 35.110504, 22.807095>,  <35.584850, 34.369713, 22.827042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599773, 35.110504, 22.807095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976101, 34.982254, 22.763157>,  <36.201897, 34.905304, 22.736794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976101, 34.982254, 22.763157>,  <35.599773, 35.110504, 22.807095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976101, 34.982254, 22.763157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095204, 0.561072, -0.822274,
		0.325270, 0.763151, 0.558390,
		0.940817, -0.320622, -0.109844,
		36.258347, 34.886066, 22.730204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014755, 35.729324, 22.719461>,  <35.599773, 35.110504, 22.807095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014755, 35.729324, 22.719461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247246, 35.424644, 22.604927>,  <36.386738, 35.241837, 22.536205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.247246, 35.424644, 22.604927>,  <36.014755, 35.729324, 22.719461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247246, 35.424644, 22.604927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314126, 0.534620, -0.784542,
		0.750669, 0.366049, 0.550004,
		0.581224, -0.761702, -0.286337,
		36.421612, 35.196133, 22.519026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580555, 36.111240, 22.512569>,  <36.014755, 35.729324, 22.719461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580555, 36.111240, 22.512569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566307, 35.757954, 22.325523>,  <36.557758, 35.545982, 22.213295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566307, 35.757954, 22.325523>,  <36.580555, 36.111240, 22.512569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566307, 35.757954, 22.325523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335234, 0.430242, -0.838159,
		0.941462, -0.186612, 0.280760,
		-0.035615, -0.883215, -0.467615,
		36.555622, 35.492989, 22.185240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155518, 36.132370, 22.119947>,  <36.580555, 36.111240, 22.512569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155518, 36.132370, 22.119947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911472, 35.881279, 21.926565>,  <36.765045, 35.730625, 21.810535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911472, 35.881279, 21.926565>,  <37.155518, 36.132370, 22.119947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911472, 35.881279, 21.926565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259932, 0.417833, -0.870547,
		0.748466, -0.656795, -0.091759,
		-0.610110, -0.627723, -0.483455,
		36.728439, 35.692963, 21.781528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569012, 35.938637, 21.587839>,  <37.155518, 36.132370, 22.119947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569012, 35.938637, 21.587839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201218, 35.842922, 21.463078>,  <36.980541, 35.785492, 21.388220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201218, 35.842922, 21.463078>,  <37.569012, 35.938637, 21.587839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201218, 35.842922, 21.463078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172556, 0.467225, -0.867136,
		0.353222, -0.851143, -0.388318,
		-0.919488, -0.239285, -0.311903,
		36.925373, 35.771137, 21.369507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087555, 35.403053, 21.555264>,  <37.569012, 35.938637, 21.587839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087555, 35.403053, 21.555264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.482632, 35.459888, 21.529102>,  <38.719677, 35.493988, 21.513405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.482632, 35.459888, 21.529102>,  <38.087555, 35.403053, 21.555264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482632, 35.459888, 21.529102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097989, -0.236150, 0.966763,
		0.121919, -0.961272, -0.247167,
		0.987691, 0.142087, -0.065403,
		38.778938, 35.502514, 21.509481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370541, 34.936466, 22.062284>,  <38.087555, 35.403053, 21.555264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370541, 34.936466, 22.062284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.675869, 35.188728, 22.006254>,  <38.859066, 35.340084, 21.972635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.675869, 35.188728, 22.006254>,  <38.370541, 34.936466, 22.062284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675869, 35.188728, 22.006254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340455, -0.208423, 0.916870,
		0.549031, -0.747554, -0.373802,
		0.763319, 0.630652, -0.140078,
		38.904865, 35.377926, 21.964231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908855, 34.504810, 22.313843>,  <38.370541, 34.936466, 22.062284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908855, 34.504810, 22.313843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030590, 34.885822, 22.317133>,  <39.103630, 35.114429, 22.319107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030590, 34.885822, 22.317133>,  <38.908855, 34.504810, 22.313843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030590, 34.885822, 22.317133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426329, -0.143924, 0.893045,
		0.851836, -0.268278, -0.449892,
		0.304335, 0.952530, 0.008225,
		39.121891, 35.171581, 22.319601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678299, 34.479279, 22.468512>,  <38.908855, 34.504810, 22.313843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678299, 34.479279, 22.468512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.529461, 34.834579, 22.576250>,  <39.440159, 35.047760, 22.640892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.529461, 34.834579, 22.576250>,  <39.678299, 34.479279, 22.468512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529461, 34.834579, 22.576250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422541, -0.096270, 0.901217,
		0.826440, 0.449148, -0.339503,
		-0.372096, 0.888256, 0.269345,
		39.417831, 35.101055, 22.657053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198986, 34.827888, 22.840109>,  <39.678299, 34.479279, 22.468512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198986, 34.827888, 22.840109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878315, 35.031399, 22.965628>,  <39.685913, 35.153503, 23.040939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878315, 35.031399, 22.965628>,  <40.198986, 34.827888, 22.840109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878315, 35.031399, 22.965628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305712, -0.102145, 0.946629,
		0.513672, 0.854819, -0.073651,
		-0.801674, 0.508773, 0.313798,
		39.637814, 35.184032, 23.059767>
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
