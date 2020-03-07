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
	<2.588168, 2.228537, 4.963284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.636581, 2.530838, 5.220714>,  <2.665630, 2.712219, 5.375171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.636581, 2.530838, 5.220714>,  <2.588168, 2.228537, 4.963284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.636581, 2.530838, 5.220714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627230, 0.444281, -0.639684,
		-0.769372, 0.481093, -0.420258,
		0.121035, 0.755754, 0.643574,
		2.672892, 2.757564, 5.413785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.607207, 2.901350, 4.660427>,  <2.588168, 2.228537, 4.963284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.607207, 2.901350, 4.660427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.838707, 2.930580, 4.985316>,  <2.977607, 2.948118, 5.180250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.838707, 2.930580, 4.985316>,  <2.607207, 2.901350, 4.660427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.838707, 2.930580, 4.985316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762999, 0.303076, -0.570944,
		-0.287888, 0.950161, 0.119648,
		0.578751, 0.073076, 0.812224,
		3.012332, 2.952503, 5.228983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.820368, 3.556067, 4.978845>,  <2.607207, 2.901350, 4.660427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.820368, 3.556067, 4.978845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.076347, 3.248760, 4.972752>,  <3.229935, 3.064376, 4.969095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.076347, 3.248760, 4.972752>,  <2.820368, 3.556067, 4.978845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.076347, 3.248760, 4.972752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594637, 0.507680, -0.623432,
		0.486697, 0.389905, 0.781729,
		0.639947, -0.768268, -0.015234,
		3.268332, 3.018280, 4.968182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.491861, 3.755435, 5.206216>,  <2.820368, 3.556067, 4.978845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.491861, 3.755435, 5.206216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509254, 3.457388, 4.940011>,  <3.519691, 3.278559, 4.780288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.509254, 3.457388, 4.940011>,  <3.491861, 3.755435, 5.206216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.509254, 3.457388, 4.940011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506538, 0.590615, -0.628166,
		0.861120, -0.309793, 0.403113,
		0.043483, -0.745119, -0.665513,
		3.522300, 3.233852, 4.740357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.199053, 3.779177, 4.980982>,  <3.491861, 3.755435, 5.206216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.199053, 3.779177, 4.980982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.005539, 3.579592, 4.693376>,  <3.889430, 3.459840, 4.520812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.005539, 3.579592, 4.693376>,  <4.199053, 3.779177, 4.980982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.005539, 3.579592, 4.693376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411672, 0.595256, -0.690070,
		0.772320, -0.629845, -0.082567,
		-0.483786, -0.498964, -0.719017,
		3.860403, 3.429903, 4.477670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.664949, 3.680866, 4.491587>,  <4.199053, 3.779177, 4.980982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.664949, 3.680866, 4.491587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.311180, 3.651203, 4.307283>,  <4.098919, 3.633406, 4.196701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.311180, 3.651203, 4.307283>,  <4.664949, 3.680866, 4.491587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.311180, 3.651203, 4.307283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315863, 0.631682, -0.707961,
		0.343552, -0.771673, -0.535250,
		-0.884422, -0.074156, -0.460759,
		4.045854, 3.628956, 4.169056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.760128, 3.547121, 3.724588>,  <4.664949, 3.680866, 4.491587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.760128, 3.547121, 3.724588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398560, 3.713762, 3.763310>,  <4.181619, 3.813747, 3.786544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.398560, 3.713762, 3.763310>,  <4.760128, 3.547121, 3.724588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.398560, 3.713762, 3.763310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259903, 0.714791, -0.649249,
		-0.339676, -0.561708, -0.754390,
		-0.903919, 0.416603, 0.096807,
		4.127384, 3.838743, 3.792353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.460953, 3.525883, 3.108579>,  <4.760128, 3.547121, 3.724588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.460953, 3.525883, 3.108579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.251724, 3.809818, 3.297270>,  <4.126187, 3.980179, 3.410484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.251724, 3.809818, 3.297270>,  <4.460953, 3.525883, 3.108579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.251724, 3.809818, 3.297270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032605, 0.569744, -0.821175,
		-0.851664, -0.414153, -0.321161,
		-0.523072, 0.709837, 0.471727,
		4.094802, 4.022769, 3.438788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.700066, 4.978901, 2.884662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.342323, 5.155905, 2.910927>,  <4.127677, 5.262107, 2.926685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.342323, 5.155905, 2.910927>,  <4.700066, 4.978901, 2.884662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.342323, 5.155905, 2.910927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354344, -0.790331, 0.499817,
		0.273068, 0.423748, 0.863639,
		-0.894357, 0.442509, 0.065662,
		4.074016, 5.288657, 2.930625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.530199, 4.971854, 3.573812>,  <4.700066, 4.978901, 2.884662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.530199, 4.971854, 3.573812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195312, 4.991066, 3.355909>,  <3.994380, 5.002594, 3.225167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.195312, 4.991066, 3.355909>,  <4.530199, 4.971854, 3.573812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.195312, 4.991066, 3.355909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318873, -0.852146, 0.414930,
		-0.444284, 0.521095, 0.728747,
		-0.837217, 0.048031, -0.544758,
		3.944148, 5.005475, 3.192481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.047943, 4.896632, 4.119981>,  <4.530199, 4.971854, 3.573812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.047943, 4.896632, 4.119981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.963593, 4.757680, 3.754499>,  <3.912982, 4.674309, 3.535210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.963593, 4.757680, 3.754499>,  <4.047943, 4.896632, 4.119981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.963593, 4.757680, 3.754499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274198, -0.876177, 0.396395,
		-0.938268, 0.334126, 0.089513,
		-0.210875, -0.347381, -0.913706,
		3.900330, 4.653466, 3.480387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.289001, 4.773271, 4.083986>,  <4.047943, 4.896632, 4.119981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.289001, 4.773271, 4.083986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.518639, 4.541678, 3.852402>,  <3.656421, 4.402723, 3.713451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.518639, 4.541678, 3.852402>,  <3.289001, 4.773271, 4.083986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.518639, 4.541678, 3.852402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369278, -0.814183, 0.448039,
		-0.730786, -0.043419, -0.681224,
		0.574095, -0.578982, -0.578961,
		3.690867, 4.367984, 3.678713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.903000, 4.180061, 3.791741>,  <3.289001, 4.773271, 4.083986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.903000, 4.180061, 3.791741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.285362, 4.064319, 3.771676>,  <3.514780, 3.994873, 3.759637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.285362, 4.064319, 3.771676>,  <2.903000, 4.180061, 3.791741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.285362, 4.064319, 3.771676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211833, -0.797688, 0.564641,
		-0.203395, -0.529119, -0.823811,
		0.955906, -0.289355, -0.050161,
		3.572134, 3.977512, 3.756628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.853128, 3.414470, 3.698394>,  <2.903000, 4.180061, 3.791741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.853128, 3.414470, 3.698394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.227547, 3.476378, 3.824800>,  <3.452198, 3.513523, 3.900643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.227547, 3.476378, 3.824800>,  <2.853128, 3.414470, 3.698394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.227547, 3.476378, 3.824800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040046, -0.845385, 0.532654,
		0.349592, -0.511243, -0.785122,
		0.936046, 0.154771, 0.316013,
		3.508360, 3.522810, 3.919604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.223827, 2.809140, 3.520538>,  <2.853128, 3.414470, 3.698394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.223827, 2.809140, 3.520538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.410675, 2.988811, 3.825179>,  <3.522784, 3.096613, 4.007964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.410675, 2.988811, 3.825179>,  <3.223827, 2.809140, 3.520538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.410675, 2.988811, 3.825179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032838, -0.851946, 0.522600,
		0.883584, -0.269126, -0.383211,
		0.467120, 0.449177, 0.761603,
		3.550811, 3.123564, 4.053660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.710965, 2.382142, 3.813386>,  <3.223827, 2.809140, 3.520538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.710965, 2.382142, 3.813386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.663437, 2.645500, 4.110679>,  <3.634920, 2.803515, 4.289055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.663437, 2.645500, 4.110679>,  <3.710965, 2.382142, 3.813386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.663437, 2.645500, 4.110679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091670, -0.738065, 0.668473,
		0.988675, 0.147561, 0.027342,
		-0.118821, 0.658396, 0.743234,
		3.627791, 2.843019, 4.333649>
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
