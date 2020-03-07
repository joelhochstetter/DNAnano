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
	<2.548610, 4.323177, 2.610296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.639317, 4.151543, 2.960030>,  <2.693740, 4.048562, 3.169870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.639317, 4.151543, 2.960030>,  <2.548610, 4.323177, 2.610296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.639317, 4.151543, 2.960030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719476, -0.531274, -0.447328,
		0.656454, 0.730502, 0.188243,
		0.226765, -0.429087, 0.874335,
		2.707346, 4.022817, 3.222330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.219415, 4.527658, 2.816092>,  <2.548610, 4.323177, 2.610296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.219415, 4.527658, 2.816092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125134, 4.157303, 2.934193>,  <3.068565, 3.935089, 3.005053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125134, 4.157303, 2.934193>,  <3.219415, 4.527658, 2.816092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.125134, 4.157303, 2.934193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888339, -0.328467, -0.320879,
		0.394078, 0.186651, 0.899924,
		-0.235703, -0.925889, 0.295251,
		3.054423, 3.879536, 3.022768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853930, 4.302102, 2.920198>,  <3.219415, 4.527658, 2.816092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853930, 4.302102, 2.920198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.611172, 3.984711, 2.902000>,  <3.465517, 3.794276, 2.891082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.611172, 3.984711, 2.902000>,  <3.853930, 4.302102, 2.920198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.611172, 3.984711, 2.902000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761428, -0.564067, -0.319460,
		0.227823, -0.228519, 0.946507,
		-0.606897, -0.793478, -0.045493,
		3.429103, 3.746667, 2.888352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.137367, 3.702971, 3.352634>,  <3.853930, 4.302102, 2.920198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.137367, 3.702971, 3.352634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.922421, 3.602875, 3.030487>,  <3.793453, 3.542817, 2.837198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.922421, 3.602875, 3.030487>,  <4.137367, 3.702971, 3.352634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.922421, 3.602875, 3.030487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841770, -0.217580, -0.494048,
		-0.051601, -0.943419, 0.327565,
		-0.537365, -0.250240, -0.805369,
		3.761211, 3.527803, 2.788877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.540115, 3.303188, 3.076006>,  <4.137367, 3.702971, 3.352634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.540115, 3.303188, 3.076006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.269802, 3.370918, 2.789051>,  <4.107614, 3.411557, 2.616878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.269802, 3.370918, 2.789051>,  <4.540115, 3.303188, 3.076006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.269802, 3.370918, 2.789051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709151, -0.116111, -0.695430,
		-0.201053, -0.978696, -0.041614,
		-0.675783, 0.169329, -0.717387,
		4.067067, 3.421716, 2.573835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.586662, 2.718682, 2.604549>,  <4.540115, 3.303188, 3.076006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.586662, 2.718682, 2.604549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.412731, 3.023743, 2.413013>,  <4.308372, 3.206779, 2.298092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.412731, 3.023743, 2.413013>,  <4.586662, 2.718682, 2.604549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.412731, 3.023743, 2.413013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702561, -0.045327, -0.710178,
		-0.563322, -0.645220, -0.516100,
		-0.434828, 0.762651, -0.478840,
		4.282283, 3.252538, 2.269361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.520761, 2.430349, 1.885118>,  <4.586662, 2.718682, 2.604549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.520761, 2.430349, 1.885118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.594566, 2.823471, 1.882305>,  <4.638850, 3.059344, 1.880618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.594566, 2.823471, 1.882305>,  <4.520761, 2.430349, 1.885118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.594566, 2.823471, 1.882305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769638, -0.148935, -0.620867,
		-0.611238, 0.109147, -0.783884,
		0.184514, 0.982805, -0.007031,
		4.649920, 3.118313, 1.880196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.502352, 2.624240, 1.118009>,  <4.520761, 2.430349, 1.885118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.502352, 2.624240, 1.118009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.730736, 2.850433, 1.356079>,  <4.867766, 2.986149, 1.498921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.730736, 2.850433, 1.356079>,  <4.502352, 2.624240, 1.118009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.730736, 2.850433, 1.356079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755885, -0.079184, -0.649898,
		-0.320377, 0.820951, -0.472650,
		0.570960, 0.565482, 0.595176,
		4.902024, 3.020078, 1.534632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.750669, 1.942349, 1.693367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.933197, 2.275345, 1.567680>,  <6.042714, 2.475142, 1.492268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.933197, 2.275345, 1.567680>,  <5.750669, 1.942349, 1.693367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.933197, 2.275345, 1.567680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591571, 0.547614, 0.591745,
		0.664692, -0.084144, 0.742364,
		0.456321, 0.832489, -0.314218,
		6.070093, 2.525092, 1.473415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.607419, 2.474796, 2.202609>,  <5.750669, 1.942349, 1.693367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.607419, 2.474796, 2.202609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.700803, 2.707977, 1.891312>,  <5.756834, 2.847886, 1.704533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.700803, 2.707977, 1.891312>,  <5.607419, 2.474796, 2.202609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.700803, 2.707977, 1.891312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651398, 0.687984, 0.319935,
		0.721926, 0.432253, 0.540352,
		0.233461, 0.582953, -0.778243,
		5.770841, 2.882863, 1.657839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.827283, 3.218051, 2.407207>,  <5.607419, 2.474796, 2.202609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.827283, 3.218051, 2.407207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.673157, 3.217911, 2.038094>,  <5.580681, 3.217827, 1.816625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.673157, 3.217911, 2.038094>,  <5.827283, 3.218051, 2.407207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.673157, 3.217911, 2.038094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779007, 0.536166, 0.325076,
		0.494652, 0.844113, -0.206866,
		-0.385315, -0.000350, -0.922785,
		5.557562, 3.217806, 1.761258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.625699, 3.892159, 2.222499>,  <5.827283, 3.218051, 2.407207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.625699, 3.892159, 2.222499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.400591, 3.645889, 2.001869>,  <5.265526, 3.498127, 1.869491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.400591, 3.645889, 2.001869>,  <5.625699, 3.892159, 2.222499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.400591, 3.645889, 2.001869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826385, 0.403346, 0.392937,
		-0.019446, 0.676946, -0.735776,
		-0.562769, -0.615675, -0.551575,
		5.231760, 3.461187, 1.836397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.104128, 4.390283, 1.946580>,  <5.625699, 3.892159, 2.222499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.104128, 4.390283, 1.946580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.972838, 4.014786, 1.904572>,  <4.894064, 3.789487, 1.879366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.972838, 4.014786, 1.904572>,  <5.104128, 4.390283, 1.946580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.972838, 4.014786, 1.904572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898241, 0.275779, 0.342213,
		-0.292288, 0.206658, -0.933735,
		-0.328225, -0.938743, -0.105022,
		4.874371, 3.733163, 1.873065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.375786, 4.496671, 1.702154>,  <5.104128, 4.390283, 1.946580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.375786, 4.496671, 1.702154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.448414, 4.110428, 1.776596>,  <4.491991, 3.878682, 1.821261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.448414, 4.110428, 1.776596>,  <4.375786, 4.496671, 1.702154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.448414, 4.110428, 1.776596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905310, -0.090236, 0.415055,
		-0.383987, -0.243843, -0.890559,
		0.181569, -0.965607, 0.186104,
		4.502885, 3.820746, 1.832427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.719836, 4.216737, 1.647442>,  <4.375786, 4.496671, 1.702154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.719836, 4.216737, 1.647442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.894434, 3.901093, 1.820312>,  <3.999192, 3.711706, 1.924035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.894434, 3.901093, 1.820312>,  <3.719836, 4.216737, 1.647442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.894434, 3.901093, 1.820312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890024, -0.308431, 0.335750,
		-0.131647, -0.531201, -0.836955,
		0.436494, -0.789111, 0.432178,
		4.025382, 3.664359, 1.949965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.302637, 3.658253, 1.476991>,  <3.719836, 4.216737, 1.647442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.302637, 3.658253, 1.476991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.518694, 3.585464, 1.805656>,  <3.648328, 3.541792, 2.002856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.518694, 3.585464, 1.805656>,  <3.302637, 3.658253, 1.476991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.518694, 3.585464, 1.805656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817034, -0.347440, 0.460154,
		0.201744, -0.919876, -0.336343,
		0.540143, -0.181970, 0.821664,
		3.680737, 3.530873, 2.052156>
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
