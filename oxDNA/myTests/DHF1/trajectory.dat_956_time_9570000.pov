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
	<4.850863, 5.376390, 2.089592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.701973, 5.086748, 1.857344>,  <4.612638, 4.912963, 1.717995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.701973, 5.086748, 1.857344>,  <4.850863, 5.376390, 2.089592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.701973, 5.086748, 1.857344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002570, -0.626375, 0.779518,
		-0.928138, 0.288665, 0.235014,
		-0.372227, -0.724104, -0.580621,
		4.590305, 4.869517, 1.683157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.257183, 5.150240, 2.381146>,  <4.850863, 5.376390, 2.089592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.257183, 5.150240, 2.381146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432892, 4.839317, 2.200998>,  <4.538317, 4.652764, 2.092910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432892, 4.839317, 2.200998>,  <4.257183, 5.150240, 2.381146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.432892, 4.839317, 2.200998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080479, -0.533362, 0.842050,
		-0.894741, -0.333644, -0.296849,
		0.439273, -0.777307, -0.450370,
		4.564674, 4.606125, 2.065887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.861930, 4.498741, 2.342152>,  <4.257183, 5.150240, 2.381146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.861930, 4.498741, 2.342152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248650, 4.396578, 2.345446>,  <4.480681, 4.335280, 2.347422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248650, 4.396578, 2.345446>,  <3.861930, 4.498741, 2.342152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248650, 4.396578, 2.345446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183418, -0.671137, 0.718284,
		-0.177928, -0.695947, -0.695701,
		0.966799, -0.255407, 0.008235,
		4.538689, 4.319956, 2.347916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433491, 3.888409, 2.594547>,  <3.861930, 4.498741, 2.342152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433491, 3.888409, 2.594547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.408073, 3.533192, 2.776686>,  <3.392823, 3.320061, 2.885969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.408073, 3.533192, 2.776686>,  <3.433491, 3.888409, 2.594547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.408073, 3.533192, 2.776686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820953, -0.305948, -0.482111,
		0.567449, 0.343183, 0.748484,
		-0.063545, -0.888043, 0.455347,
		3.389010, 3.266779, 2.913290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.062904, 3.704769, 2.883185>,  <3.433491, 3.888409, 2.594547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.062904, 3.704769, 2.883185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.860924, 3.368341, 2.805593>,  <3.739735, 3.166485, 2.759039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.860924, 3.368341, 2.805593>,  <4.062904, 3.704769, 2.883185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.860924, 3.368341, 2.805593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712007, -0.278839, -0.644433,
		0.487924, -0.463521, 0.739647,
		-0.504951, -0.841069, -0.193978,
		3.709438, 3.116021, 2.747400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.584422, 3.222165, 2.649967>,  <4.062904, 3.704769, 2.883185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.584422, 3.222165, 2.649967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246262, 3.044453, 2.531366>,  <4.043365, 2.937825, 2.460206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.246262, 3.044453, 2.531366>,  <4.584422, 3.222165, 2.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246262, 3.044453, 2.531366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517504, -0.543859, -0.660611,
		0.132241, -0.711921, 0.689696,
		-0.845400, -0.444280, -0.296502,
		3.992641, 2.911169, 2.442416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.750685, 2.602463, 2.640189>,  <4.584422, 3.222165, 2.649967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.750685, 2.602463, 2.640189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.438057, 2.649078, 2.395056>,  <4.250480, 2.677048, 2.247976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.438057, 2.649078, 2.395056>,  <4.750685, 2.602463, 2.640189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.438057, 2.649078, 2.395056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442850, -0.588246, -0.676647,
		-0.439353, -0.800241, 0.408147,
		-0.781571, 0.116539, -0.612834,
		4.203586, 2.684040, 2.211205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.719832, 1.981308, 2.349004>,  <4.750685, 2.602463, 2.640189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.719832, 1.981308, 2.349004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.480049, 2.176178, 2.094976>,  <4.336179, 2.293100, 1.942560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.480049, 2.176178, 2.094976>,  <4.719832, 1.981308, 2.349004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.480049, 2.176178, 2.094976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497141, -0.395209, -0.772438,
		-0.627297, -0.778762, -0.005284,
		-0.599457, 0.487175, -0.635069,
		4.300212, 2.322330, 1.904456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.302858, 2.152447, 1.030653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.954384, 2.145668, 0.834389>,  <4.745299, 2.141601, 0.716630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.954384, 2.145668, 0.834389>,  <5.302858, 2.152447, 1.030653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.954384, 2.145668, 0.834389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462036, 0.366226, 0.807713,
		0.166005, 0.930372, -0.326880,
		-0.871186, -0.016946, -0.490661,
		4.693028, 2.140584, 0.687190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.997716, 2.916609, 0.940891>,  <5.302858, 2.152447, 1.030653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.997716, 2.916609, 0.940891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.727570, 2.622528, 0.964069>,  <4.565481, 2.446080, 0.977976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.727570, 2.622528, 0.964069>,  <4.997716, 2.916609, 0.940891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.727570, 2.622528, 0.964069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350782, 0.389358, 0.851676,
		-0.648715, 0.554869, -0.520855,
		-0.675368, -0.735201, 0.057945,
		4.524959, 2.401968, 0.981453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.347597, 3.232196, 0.993060>,  <4.997716, 2.916609, 0.940891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.347597, 3.232196, 0.993060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.327278, 2.861732, 1.142540>,  <4.315087, 2.639455, 1.232228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.327278, 2.861732, 1.142540>,  <4.347597, 3.232196, 0.993060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.327278, 2.861732, 1.142540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413968, 0.360050, 0.836059,
		-0.908873, -0.112231, -0.401689,
		-0.050797, -0.926158, 0.373700,
		4.312039, 2.583885, 1.254650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.569324, 3.083289, 1.207496>,  <4.347597, 3.232196, 0.993060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.569324, 3.083289, 1.207496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.776642, 2.816689, 1.421841>,  <3.901032, 2.656728, 1.550447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.776642, 2.816689, 1.421841>,  <3.569324, 3.083289, 1.207496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.776642, 2.816689, 1.421841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471737, 0.299828, 0.829197,
		-0.713327, -0.682553, -0.159014,
		0.518294, -0.666502, 0.535861,
		3.932130, 2.616738, 1.582599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.113671, 2.654755, 1.537618>,  <3.569324, 3.083289, 1.207496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.113671, 2.654755, 1.537618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452744, 2.642700, 1.749477>,  <3.656187, 2.635467, 1.876593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.452744, 2.642700, 1.749477>,  <3.113671, 2.654755, 1.537618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.452744, 2.642700, 1.749477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518581, 0.163417, 0.839267,
		-0.111847, -0.986097, 0.122898,
		0.847682, -0.030137, 0.529648,
		3.707048, 2.633659, 1.908372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.907605, 2.270118, 2.113654>,  <3.113671, 2.654755, 1.537618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.907605, 2.270118, 2.113654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235321, 2.473896, 2.218899>,  <3.431951, 2.596163, 2.282046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235321, 2.473896, 2.218899>,  <2.907605, 2.270118, 2.113654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.235321, 2.473896, 2.218899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376461, 0.131821, 0.917006,
		0.432480, -0.850347, 0.299786,
		0.819291, 0.509444, 0.263113,
		3.481108, 2.626729, 2.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.131346, 1.983137, 2.705971>,  <2.907605, 2.270118, 2.113654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.131346, 1.983137, 2.705971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.241302, 2.367420, 2.690609>,  <3.307276, 2.597990, 2.681392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.241302, 2.367420, 2.690609>,  <3.131346, 1.983137, 2.705971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.241302, 2.367420, 2.690609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478602, 0.171370, 0.861146,
		0.833891, -0.218341, 0.506905,
		0.274892, 0.960708, -0.038406,
		3.323770, 2.655632, 2.679087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.050646, 2.186055, 3.424543>,  <3.131346, 1.983137, 2.705971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.050646, 2.186055, 3.424543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.134705, 2.526794, 3.232630>,  <3.185140, 2.731238, 3.117482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.134705, 2.526794, 3.232630>,  <3.050646, 2.186055, 3.424543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.134705, 2.526794, 3.232630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389114, 0.523074, 0.758277,
		0.896899, 0.027341, 0.441388,
		0.210147, 0.851848, -0.479784,
		3.197749, 2.782349, 3.088695>
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
