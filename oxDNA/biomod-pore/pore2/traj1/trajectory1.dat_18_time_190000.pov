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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.502005, 17.070168, -2.946926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288704, 17.294167, -2.693298>,  <22.160725, 17.428566, -2.541121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288704, 17.294167, -2.693298>,  <22.502005, 17.070168, -2.946926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.288704, 17.294167, -2.693298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627024, -0.764788, 0.148122,
		0.567878, -0.318591, 0.758956,
		-0.533250, 0.559999, 0.634070,
		22.128729, 17.462166, -2.503077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.079458, 17.410988, -2.605969>,  <22.502005, 17.070168, -2.946926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.079458, 17.410988, -2.605969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264809, 17.458622, -2.254719>,  <23.376019, 17.487202, -2.043969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.264809, 17.458622, -2.254719>,  <23.079458, 17.410988, -2.605969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.264809, 17.458622, -2.254719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143910, 0.987888, -0.058031,
		-0.874400, -0.099481, 0.474899,
		0.463374, 0.119085, 0.878125,
		23.403820, 17.494347, -1.991282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.604301, 17.519604, -1.998223>,  <23.079458, 17.410988, -2.605969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.604301, 17.519604, -1.998223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.960453, 17.692337, -1.940611>,  <23.174145, 17.795977, -1.906044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.960453, 17.692337, -1.940611>,  <22.604301, 17.519604, -1.998223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.960453, 17.692337, -1.940611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446543, 0.890020, 0.091996,
		-0.088462, -0.146227, 0.985288,
		0.890379, 0.431835, 0.144030,
		23.227566, 17.821888, -1.897402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.726482, 17.860903, -1.264447>,  <22.604301, 17.519604, -1.998223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.726482, 17.860903, -1.264447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.932076, 18.055416, -1.547106>,  <23.055431, 18.172125, -1.716701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.932076, 18.055416, -1.547106>,  <22.726482, 17.860903, -1.264447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.932076, 18.055416, -1.547106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318819, 0.873073, 0.368916,
		0.796351, 0.035675, 0.603782,
		0.513984, 0.486283, -0.706646,
		23.086271, 18.201302, -1.759100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.175814, 17.617327, -0.855546>,  <22.726482, 17.860903, -1.264447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.175814, 17.617327, -0.855546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285656, 17.692860, -0.478413>,  <23.351561, 17.738178, -0.252133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285656, 17.692860, -0.478413>,  <23.175814, 17.617327, -0.855546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.285656, 17.692860, -0.478413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849802, 0.506457, 0.146075,
		-0.449921, -0.841335, 0.299544,
		0.274604, 0.188831, 0.942834,
		23.368036, 17.749510, -0.195562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.824591, 17.356274, -0.254257>,  <23.175814, 17.617327, -0.855546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.824591, 17.356274, -0.254257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984226, 17.707226, -0.147726>,  <23.080008, 17.917797, -0.083808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.984226, 17.707226, -0.147726>,  <22.824591, 17.356274, -0.254257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.984226, 17.707226, -0.147726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913915, 0.357170, 0.192843,
		0.074073, -0.320363, 0.944394,
		0.399089, 0.877381, 0.266328,
		23.103952, 17.970440, -0.067828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.376724, 17.623453, 0.430484>,  <22.824591, 17.356274, -0.254257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.376724, 17.623453, 0.430484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536049, 17.938080, 0.241735>,  <22.631643, 18.126856, 0.128487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536049, 17.938080, 0.241735>,  <22.376724, 17.623453, 0.430484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536049, 17.938080, 0.241735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793513, 0.553529, 0.252869,
		0.460092, 0.273713, 0.844628,
		0.398313, 0.786566, -0.471869,
		22.655542, 18.174049, 0.100174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.403576, 18.299578, 0.880710>,  <22.376724, 17.623453, 0.430484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.403576, 18.299578, 0.880710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.392319, 18.391914, 0.491677>,  <22.385565, 18.447317, 0.258257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.392319, 18.391914, 0.491677>,  <22.403576, 18.299578, 0.880710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.392319, 18.391914, 0.491677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785942, 0.596092, 0.164226,
		0.617660, 0.769016, 0.164654,
		-0.028143, 0.230844, -0.972584,
		22.383875, 18.461168, 0.199902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987526, 18.808043, 0.447081>,  <22.403576, 18.299578, 0.880710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987526, 18.808043, 0.447081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753677, 19.050179, 0.231014>,  <21.613369, 19.195461, 0.101374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753677, 19.050179, 0.231014>,  <21.987526, 18.808043, 0.447081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753677, 19.050179, 0.231014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752689, 0.653167, -0.082656,
		0.302784, -0.454900, -0.837489,
		-0.584620, 0.605342, -0.540167,
		21.578291, 19.231781, 0.068964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.643867, 19.026424, 1.058664>,  <21.987526, 18.808043, 0.447081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.643867, 19.026424, 1.058664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.011074, 19.183098, 1.033916>,  <22.231398, 19.277102, 1.019068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.011074, 19.183098, 1.033916>,  <21.643867, 19.026424, 1.058664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.011074, 19.183098, 1.033916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393674, 0.918946, -0.023627,
		0.047599, 0.046046, 0.997805,
		0.918017, 0.391685, -0.061868,
		22.286480, 19.300604, 1.015356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.814636, 19.527893, 1.682144>,  <21.643867, 19.026424, 1.058664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.814636, 19.527893, 1.682144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.943985, 19.623184, 1.315826>,  <22.021593, 19.680359, 1.096036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.943985, 19.623184, 1.315826>,  <21.814636, 19.527893, 1.682144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.943985, 19.623184, 1.315826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582109, 0.813089, 0.005966,
		0.746044, 0.531162, 0.401604,
		0.323370, 0.238228, -0.915794,
		22.040997, 19.694653, 1.041088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.102118, 20.222897, 1.589832>,  <21.814636, 19.527893, 1.682144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.102118, 20.222897, 1.589832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880798, 20.059616, 1.299389>,  <21.748007, 19.961647, 1.125124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880798, 20.059616, 1.299389>,  <22.102118, 20.222897, 1.589832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880798, 20.059616, 1.299389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645041, 0.761512, 0.063420,
		0.527050, 0.503458, -0.684652,
		-0.553300, -0.408202, -0.726106,
		21.714808, 19.937155, 1.081558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974421, 20.680885, 0.977777>,  <22.102118, 20.222897, 1.589832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974421, 20.680885, 0.977777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.676159, 20.414402, 0.982935>,  <21.497202, 20.254513, 0.986031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.676159, 20.414402, 0.982935>,  <21.974421, 20.680885, 0.977777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.676159, 20.414402, 0.982935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665754, 0.745675, 0.027212,
		-0.027745, 0.011705, -0.999547,
		-0.745656, -0.666207, 0.012896,
		21.452463, 20.214540, 0.986804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473299, 20.977882, 0.518563>,  <21.974421, 20.680885, 0.977777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473299, 20.977882, 0.518563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.298969, 20.681339, 0.722700>,  <21.194372, 20.503414, 0.845182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.298969, 20.681339, 0.722700>,  <21.473299, 20.977882, 0.518563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298969, 20.681339, 0.722700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817956, 0.562823, 0.119072,
		-0.375508, -0.365544, -0.851688,
		-0.435823, -0.741356, 0.510343,
		21.168222, 20.458933, 0.875802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765303, 21.307869, 0.474160>,  <21.473299, 20.977882, 0.518563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765303, 21.307869, 0.474160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.700039, 21.031300, 0.755674>,  <20.660881, 20.865358, 0.924582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.700039, 21.031300, 0.755674>,  <20.765303, 21.307869, 0.474160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.700039, 21.031300, 0.755674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946138, 0.311849, 0.087028,
		-0.279648, -0.651678, -0.705062,
		-0.163158, -0.691423, 0.703785,
		20.651091, 20.823874, 0.966809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.918829, 21.691742, 1.087961>,  <20.765303, 21.307869, 0.474160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.918829, 21.691742, 1.087961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683212, 22.008347, 1.153123>,  <20.541842, 22.198309, 1.192221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683212, 22.008347, 1.153123>,  <20.918829, 21.691742, 1.087961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683212, 22.008347, 1.153123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314896, 0.039166, 0.948318,
		0.744225, 0.609896, -0.272314,
		-0.589041, 0.791513, 0.162905,
		20.506500, 22.245800, 1.201995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249456, 22.343981, 1.134542>,  <20.918829, 21.691742, 1.087961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249456, 22.343981, 1.134542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910767, 22.388676, 1.342609>,  <20.707554, 22.415493, 1.467450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910767, 22.388676, 1.342609>,  <21.249456, 22.343981, 1.134542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910767, 22.388676, 1.342609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531705, 0.212069, 0.819949,
		-0.018692, 0.970846, -0.238975,
		-0.846723, 0.111738, 0.520168,
		20.656750, 22.422197, 1.498660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371435, 22.931166, 1.527903>,  <21.249456, 22.343981, 1.134542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371435, 22.931166, 1.527903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082241, 22.722401, 1.708966>,  <20.908724, 22.597141, 1.817604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.082241, 22.722401, 1.708966>,  <21.371435, 22.931166, 1.527903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082241, 22.722401, 1.708966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506110, 0.045869, 0.861248,
		-0.470257, 0.851766, 0.230982,
		-0.722987, -0.521910, 0.452658,
		20.865345, 22.565828, 1.844763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.052551, 23.295717, 2.083917>,  <21.371435, 22.931166, 1.527903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.052551, 23.295717, 2.083917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.026058, 22.903179, 2.156112>,  <21.010162, 22.667656, 2.199429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.026058, 22.903179, 2.156112>,  <21.052551, 23.295717, 2.083917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026058, 22.903179, 2.156112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454545, 0.131352, 0.880986,
		-0.888258, 0.140388, 0.437366,
		-0.066231, -0.981345, 0.180487,
		21.006189, 22.608776, 2.210258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.905010, 23.249584, 2.835653>,  <21.052551, 23.295717, 2.083917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.905010, 23.249584, 2.835653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052643, 22.898102, 2.714554>,  <21.141222, 22.687212, 2.641895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.052643, 22.898102, 2.714554>,  <20.905010, 23.249584, 2.835653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052643, 22.898102, 2.714554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507818, -0.082156, 0.857538,
		-0.778396, -0.470241, 0.415901,
		0.369081, -0.878706, -0.302747,
		21.163366, 22.634491, 2.623730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325363, 23.127132, 2.401661>,  <20.905010, 23.249584, 2.835653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325363, 23.127132, 2.401661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.082489, 22.875664, 2.207300>,  <19.936764, 22.724783, 2.090683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.082489, 22.875664, 2.207300>,  <20.325363, 23.127132, 2.401661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082489, 22.875664, 2.207300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548368, -0.110986, 0.828839,
		-0.574994, 0.769712, -0.277353,
		-0.607185, -0.628669, -0.485902,
		19.900333, 22.687063, 2.061529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617937, 23.292349, 2.300815>,  <20.325363, 23.127132, 2.401661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617937, 23.292349, 2.300815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.697250, 22.903339, 2.349609>,  <19.744839, 22.669933, 2.378886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.697250, 22.903339, 2.349609>,  <19.617937, 23.292349, 2.300815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.697250, 22.903339, 2.349609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393626, 0.034969, 0.918605,
		-0.897632, -0.230159, -0.375877,
		0.198282, -0.972525, 0.121986,
		19.756735, 22.611582, 2.386205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009727, 22.761106, 2.387446>,  <19.617937, 23.292349, 2.300815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009727, 22.761106, 2.387446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318329, 22.667511, 2.624100>,  <19.503490, 22.611353, 2.766092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318329, 22.667511, 2.624100>,  <19.009727, 22.761106, 2.387446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318329, 22.667511, 2.624100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614713, -0.034381, 0.788001,
		-0.164045, -0.971630, -0.170363,
		0.771503, -0.233992, 0.591634,
		19.549780, 22.597313, 2.801590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761190, 22.163277, 2.776012>,  <19.009727, 22.761106, 2.387446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761190, 22.163277, 2.776012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.037842, 22.369980, 2.977850>,  <19.203833, 22.494001, 3.098953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.037842, 22.369980, 2.977850>,  <18.761190, 22.163277, 2.776012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037842, 22.369980, 2.977850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601955, 0.026345, 0.798095,
		0.399127, -0.855727, 0.329286,
		0.691626, 0.516757, 0.504594,
		19.245329, 22.525007, 3.129228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.624151, 21.955980, 3.386218>,  <18.761190, 22.163277, 2.776012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.624151, 21.955980, 3.386218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.839645, 22.283485, 3.465605>,  <18.968943, 22.479988, 3.513237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.839645, 22.283485, 3.465605>,  <18.624151, 21.955980, 3.386218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.839645, 22.283485, 3.465605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340287, -0.004027, 0.940313,
		0.770694, -0.574115, 0.276446,
		0.538735, 0.818765, 0.198468,
		19.001266, 22.529116, 3.525145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967718, 21.865236, 3.981993>,  <18.624151, 21.955980, 3.386218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967718, 21.865236, 3.981993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876816, 22.252663, 3.941517>,  <18.822275, 22.485119, 3.917231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876816, 22.252663, 3.941517>,  <18.967718, 21.865236, 3.981993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876816, 22.252663, 3.941517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296462, 0.030170, 0.954568,
		0.927613, 0.246928, 0.280286,
		-0.227254, 0.968564, -0.101191,
		18.808640, 22.543232, 3.911160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375977, 22.131128, 4.498388>,  <18.967718, 21.865236, 3.981993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.375977, 22.131128, 4.498388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058311, 22.360546, 4.418039>,  <18.867712, 22.498198, 4.369830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058311, 22.360546, 4.418039>,  <19.375977, 22.131128, 4.498388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058311, 22.360546, 4.418039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227766, 0.025531, 0.973381,
		0.563407, 0.818776, 0.110359,
		-0.794163, 0.573546, -0.200873,
		18.820063, 22.532610, 4.357778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.432514, 22.676926, 4.967168>,  <19.375977, 22.131128, 4.498388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.432514, 22.676926, 4.967168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057770, 22.622967, 4.838116>,  <18.832922, 22.590591, 4.760684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.057770, 22.622967, 4.838116>,  <19.432514, 22.676926, 4.967168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.057770, 22.622967, 4.838116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340824, 0.145717, 0.928766,
		-0.078273, 0.980087, -0.182492,
		-0.936863, -0.134895, -0.322631,
		18.776711, 22.582499, 4.741326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.073313, 23.241590, 4.988684>,  <19.432514, 22.676926, 4.967168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.073313, 23.241590, 4.988684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775085, 22.981083, 5.045216>,  <18.596149, 22.824778, 5.079134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775085, 22.981083, 5.045216>,  <19.073313, 23.241590, 4.988684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775085, 22.981083, 5.045216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193468, 0.414457, 0.889267,
		-0.637727, 0.635668, -0.435006,
		-0.745570, -0.651269, 0.141329,
		18.551414, 22.785702, 5.087615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429186, 23.495510, 4.957226>,  <19.073313, 23.241590, 4.988684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429186, 23.495510, 4.957226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.477482, 23.181946, 5.200834>,  <18.506460, 22.993807, 5.346999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.477482, 23.181946, 5.200834>,  <18.429186, 23.495510, 4.957226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477482, 23.181946, 5.200834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309888, 0.553083, 0.773349,
		-0.943075, -0.282104, -0.176145,
		0.120742, -0.783911, 0.609019,
		18.513704, 22.946772, 5.383540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.948425, 23.578758, 5.361060>,  <18.429186, 23.495510, 4.957226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.948425, 23.578758, 5.361060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208279, 23.358494, 5.570726>,  <18.364191, 23.226336, 5.696526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208279, 23.358494, 5.570726>,  <17.948425, 23.578758, 5.361060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208279, 23.358494, 5.570726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120464, 0.606197, 0.786138,
		-0.750645, -0.573843, 0.327470,
		0.649631, -0.550662, 0.524166,
		18.403168, 23.193295, 5.727976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570925, 23.205679, 5.993418>,  <17.948425, 23.578758, 5.361060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570925, 23.205679, 5.993418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964958, 23.256271, 6.040083>,  <18.201378, 23.286627, 6.068082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.964958, 23.256271, 6.040083>,  <17.570925, 23.205679, 5.993418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964958, 23.256271, 6.040083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149796, 0.296764, 0.943129,
		0.084663, -0.946538, 0.311284,
		0.985085, 0.126478, 0.116663,
		18.260485, 23.294214, 6.075082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699821, 22.795830, 6.537526>,  <17.570925, 23.205679, 5.993418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699821, 22.795830, 6.537526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954937, 23.101326, 6.497682>,  <18.108006, 23.284624, 6.473775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.954937, 23.101326, 6.497682>,  <17.699821, 22.795830, 6.537526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954937, 23.101326, 6.497682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144701, 0.245842, 0.958448,
		0.756496, -0.596874, 0.267310,
		0.637789, 0.763743, -0.099610,
		18.146275, 23.330448, 6.467799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148478, 22.773153, 7.102886>,  <17.699821, 22.795830, 6.537526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148478, 22.773153, 7.102886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.153904, 23.150955, 6.971600>,  <18.157160, 23.377636, 6.892828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.153904, 23.150955, 6.971600>,  <18.148478, 22.773153, 7.102886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153904, 23.150955, 6.971600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296525, 0.317280, 0.900781,
		0.954929, 0.085105, 0.284373,
		0.013565, 0.944506, -0.328215,
		18.157974, 23.434307, 6.873135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826138, 22.204180, 7.367076>,  <18.148478, 22.773153, 7.102886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826138, 22.204180, 7.367076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.146854, 22.400967, 7.502781>,  <18.339285, 22.519039, 7.584204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.146854, 22.400967, 7.502781>,  <17.826138, 22.204180, 7.367076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.146854, 22.400967, 7.502781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100819, -0.670923, 0.734642,
		0.589038, -0.554826, -0.587540,
		0.801792, 0.491967, 0.339262,
		18.387392, 22.548557, 7.604559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330219, 21.769428, 7.475786>,  <17.826138, 22.204180, 7.367076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330219, 21.769428, 7.475786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380669, 22.083809, 7.717899>,  <18.410938, 22.272438, 7.863168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.380669, 22.083809, 7.717899>,  <18.330219, 21.769428, 7.475786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380669, 22.083809, 7.717899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069808, -0.615676, 0.784901,
		0.989555, -0.056742, -0.132518,
		0.126125, 0.785954, 0.605284,
		18.418507, 22.319595, 7.899485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061516, 21.708689, 7.842077>,  <18.330219, 21.769428, 7.475786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061516, 21.708689, 7.842077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835014, 21.936363, 8.080533>,  <18.699114, 22.072968, 8.223607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835014, 21.936363, 8.080533>,  <19.061516, 21.708689, 7.842077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.835014, 21.936363, 8.080533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289808, -0.539592, 0.790475,
		0.771601, 0.620376, 0.140591,
		-0.566254, 0.569187, 0.596140,
		18.665138, 22.107119, 8.259375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466908, 21.926098, 8.470292>,  <19.061516, 21.708689, 7.842077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466908, 21.926098, 8.470292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.095173, 21.994167, 8.601367>,  <18.872133, 22.035009, 8.680012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.095173, 21.994167, 8.601367>,  <19.466908, 21.926098, 8.470292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095173, 21.994167, 8.601367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253926, -0.349753, 0.901773,
		0.268066, 0.921257, 0.281827,
		-0.929334, 0.170172, 0.327688,
		18.816372, 22.045219, 8.699674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575397, 22.193375, 9.135010>,  <19.466908, 21.926098, 8.470292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575397, 22.193375, 9.135010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193214, 22.075844, 9.123919>,  <18.963905, 22.005325, 9.117266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193214, 22.075844, 9.123919>,  <19.575397, 22.193375, 9.135010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193214, 22.075844, 9.123919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113030, -0.451079, 0.885298,
		-0.272633, 0.842729, 0.464198,
		-0.955456, -0.293829, -0.027725,
		18.906578, 21.987696, 9.115602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167158, 22.521053, 9.612118>,  <19.575397, 22.193375, 9.135010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167158, 22.521053, 9.612118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.956451, 22.184227, 9.565739>,  <18.830029, 21.982132, 9.537911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.956451, 22.184227, 9.565739>,  <19.167158, 22.521053, 9.612118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956451, 22.184227, 9.565739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014489, -0.145282, 0.989284,
		-0.849887, 0.519441, 0.088730,
		-0.526766, -0.842065, -0.115947,
		18.798422, 21.931608, 9.530954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.560419, 22.546926, 10.166574>,  <19.167158, 22.521053, 9.612118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.560419, 22.546926, 10.166574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604038, 22.162205, 10.066143>,  <18.630209, 21.931372, 10.005884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604038, 22.162205, 10.066143>,  <18.560419, 22.546926, 10.166574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604038, 22.162205, 10.066143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251941, -0.271078, 0.929001,
		-0.961579, -0.038048, -0.271879,
		0.109047, -0.961805, -0.251077,
		18.636753, 21.873663, 9.990820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083055, 22.267342, 10.537826>,  <18.560419, 22.546926, 10.166574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083055, 22.267342, 10.537826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303574, 21.945522, 10.449486>,  <18.435884, 21.752430, 10.396482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303574, 21.945522, 10.449486>,  <18.083055, 22.267342, 10.537826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303574, 21.945522, 10.449486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230094, -0.401060, 0.886683,
		-0.801953, -0.438010, -0.406225,
		0.551297, -0.804549, -0.220849,
		18.468962, 21.704157, 10.383231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696482, 21.684679, 10.916403>,  <18.083055, 22.267342, 10.537826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696482, 21.684679, 10.916403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066109, 21.556763, 10.832656>,  <18.287886, 21.480013, 10.782408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066109, 21.556763, 10.832656>,  <17.696482, 21.684679, 10.916403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.066109, 21.556763, 10.832656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065356, -0.407496, 0.910866,
		-0.376597, -0.855386, -0.355654,
		0.924069, -0.319785, -0.209367,
		18.343328, 21.460825, 10.769845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.691076, 20.972527, 11.115722>,  <17.696482, 21.684679, 10.916403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.691076, 20.972527, 11.115722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.078667, 21.070133, 11.131440>,  <18.311220, 21.128698, 11.140871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.078667, 21.070133, 11.131440>,  <17.691076, 20.972527, 11.115722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078667, 21.070133, 11.131440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071752, -0.429859, 0.900041,
		0.236518, -0.869297, -0.434031,
		0.968974, 0.244018, 0.039296,
		18.369358, 21.143339, 11.143229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081322, 20.405994, 11.448030>,  <17.691076, 20.972527, 11.115722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081322, 20.405994, 11.448030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.350616, 20.701653, 11.456230>,  <18.512194, 20.879047, 11.461151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.350616, 20.701653, 11.456230>,  <18.081322, 20.405994, 11.448030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350616, 20.701653, 11.456230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305122, -0.302957, 0.902839,
		0.673540, -0.601567, -0.429490,
		0.673235, 0.739144, 0.020502,
		18.552588, 20.923395, 11.462380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.786253, 20.149023, 11.655823>,  <18.081322, 20.405994, 11.448030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.786253, 20.149023, 11.655823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795364, 20.537998, 11.748644>,  <18.800831, 20.771383, 11.804337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.795364, 20.537998, 11.748644>,  <18.786253, 20.149023, 11.655823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795364, 20.537998, 11.748644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350787, -0.225130, 0.908991,
		0.936178, 0.060695, -0.346246,
		0.022779, 0.972436, 0.232053,
		18.802198, 20.829729, 11.818260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.377325, 20.176136, 12.026777>,  <18.786253, 20.149023, 11.655823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.377325, 20.176136, 12.026777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188156, 20.519489, 12.106299>,  <19.074654, 20.725500, 12.154013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188156, 20.519489, 12.106299>,  <19.377325, 20.176136, 12.026777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188156, 20.519489, 12.106299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214418, -0.106731, 0.970893,
		0.854616, 0.501786, -0.133577,
		-0.472924, 0.858382, 0.198806,
		19.046280, 20.777004, 12.165941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.873425, 20.558256, 12.365198>,  <19.377325, 20.176136, 12.026777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.873425, 20.558256, 12.365198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518475, 20.712086, 12.466918>,  <19.305504, 20.804384, 12.527950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518475, 20.712086, 12.466918>,  <19.873425, 20.558256, 12.365198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518475, 20.712086, 12.466918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275548, 0.000154, 0.961287,
		0.369647, 0.923094, -0.106106,
		-0.887375, 0.384575, 0.254299,
		19.252262, 20.827457, 12.543208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.995630, 20.832848, 13.046701>,  <19.873425, 20.558256, 12.365198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.995630, 20.832848, 13.046701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599743, 20.882240, 13.017828>,  <19.362211, 20.911877, 13.000504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.599743, 20.882240, 13.017828>,  <19.995630, 20.832848, 13.046701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599743, 20.882240, 13.017828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044942, 0.210642, 0.976530,
		0.135790, 0.969733, -0.202926,
		-0.989718, 0.123483, -0.072185,
		19.302828, 20.919285, 12.996173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888119, 21.542459, 13.266396>,  <19.995630, 20.832848, 13.046701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888119, 21.542459, 13.266396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.580990, 21.288883, 13.303423>,  <19.396713, 21.136738, 13.325639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.580990, 21.288883, 13.303423>,  <19.888119, 21.542459, 13.266396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.580990, 21.288883, 13.303423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008914, 0.133902, 0.990955,
		-0.640604, 0.761700, -0.097161,
		-0.767820, -0.633943, 0.092568,
		19.350643, 21.098700, 13.331193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262268, 21.904539, 13.624816>,  <19.888119, 21.542459, 13.266396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262268, 21.904539, 13.624816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.222519, 21.510281, 13.679407>,  <19.198669, 21.273726, 13.712162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.222519, 21.510281, 13.679407>,  <19.262268, 21.904539, 13.624816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.222519, 21.510281, 13.679407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211634, 0.113083, 0.970785,
		-0.972284, 0.125352, 0.197359,
		-0.099372, -0.985647, 0.136477,
		19.192707, 21.214586, 13.720350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769876, 21.738270, 14.197588>,  <19.262268, 21.904539, 13.624816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.769876, 21.738270, 14.197588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980579, 21.398514, 14.184580>,  <19.107002, 21.194660, 14.176775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980579, 21.398514, 14.184580>,  <18.769876, 21.738270, 14.197588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980579, 21.398514, 14.184580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179088, 0.073500, 0.981084,
		-0.830935, -0.522619, 0.190832,
		0.526759, -0.849392, -0.032521,
		19.138607, 21.143696, 14.174824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574282, 21.485117, 14.766537>,  <18.769876, 21.738270, 14.197588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574282, 21.485117, 14.766537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.892593, 21.255089, 14.690611>,  <19.083580, 21.117071, 14.645055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.892593, 21.255089, 14.690611>,  <18.574282, 21.485117, 14.766537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.892593, 21.255089, 14.690611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337977, 0.161658, 0.927167,
		-0.502500, -0.801973, 0.323005,
		0.795779, -0.575070, -0.189815,
		19.131327, 21.082567, 14.633666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606861, 20.975657, 15.203992>,  <18.574282, 21.485117, 14.766537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606861, 20.975657, 15.203992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989834, 20.938103, 15.094803>,  <19.219618, 20.915571, 15.029289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989834, 20.938103, 15.094803>,  <18.606861, 20.975657, 15.203992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.989834, 20.938103, 15.094803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262426, -0.110850, 0.958564,
		-0.120272, -0.989391, -0.081487,
		0.957427, -0.093904, -0.272974,
		19.277063, 20.909937, 15.012911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847307, 20.371721, 15.464622>,  <18.606861, 20.975657, 15.203992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.847307, 20.371721, 15.464622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189186, 20.568058, 15.397017>,  <19.394314, 20.685860, 15.356453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.189186, 20.568058, 15.397017>,  <18.847307, 20.371721, 15.464622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.189186, 20.568058, 15.397017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254863, -0.113114, 0.960338,
		0.452255, -0.863875, -0.221776,
		0.854699, 0.490841, -0.169014,
		19.445595, 20.715311, 15.346313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.452677, 19.982485, 15.709029>,  <18.847307, 20.371721, 15.464622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.452677, 19.982485, 15.709029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535023, 20.373917, 15.709942>,  <19.584431, 20.608776, 15.710489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.535023, 20.373917, 15.709942>,  <19.452677, 19.982485, 15.709029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.535023, 20.373917, 15.709942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176456, -0.039415, 0.983519,
		0.962540, -0.202068, -0.180790,
		0.205863, 0.978578, 0.002282,
		19.596783, 20.667490, 15.710627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.012094, 20.109079, 16.200302>,  <19.452677, 19.982485, 15.709029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.012094, 20.109079, 16.200302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836246, 20.466709, 16.165981>,  <19.730738, 20.681288, 16.145390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836246, 20.466709, 16.165981>,  <20.012094, 20.109079, 16.200302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.836246, 20.466709, 16.165981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139459, 0.162315, 0.976834,
		0.887292, 0.417469, -0.196044,
		-0.439619, 0.894077, -0.085801,
		19.704361, 20.734932, 16.140242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325180, 20.481125, 16.710249>,  <20.012094, 20.109079, 16.200302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325180, 20.481125, 16.710249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.021996, 20.718819, 16.602634>,  <19.840084, 20.861435, 16.538065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.021996, 20.718819, 16.602634>,  <20.325180, 20.481125, 16.710249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021996, 20.718819, 16.602634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046407, 0.460524, 0.886433,
		0.650645, 0.659397, -0.376637,
		-0.757962, 0.594232, -0.269037,
		19.794607, 20.897089, 16.521923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491398, 21.167032, 16.851570>,  <20.325180, 20.481125, 16.710249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491398, 21.167032, 16.851570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094376, 21.118408, 16.854483>,  <19.856161, 21.089233, 16.856230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.094376, 21.118408, 16.854483>,  <20.491398, 21.167032, 16.851570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094376, 21.118408, 16.854483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043159, 0.407056, 0.912383,
		-0.113875, 0.905278, -0.409273,
		-0.992557, -0.121561, 0.007282,
		19.796608, 21.081940, 16.856667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.191151, 21.626333, 17.236950>,  <20.491398, 21.167032, 16.851570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.191151, 21.626333, 17.236950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.839748, 21.435268, 17.240139>,  <19.628906, 21.320629, 17.242052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.839748, 21.435268, 17.240139>,  <20.191151, 21.626333, 17.236950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839748, 21.435268, 17.240139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142377, 0.277714, 0.950054,
		-0.456020, 0.833494, -0.311982,
		-0.878507, -0.477663, 0.007972,
		19.576197, 21.291969, 17.242531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.660030, 22.110123, 17.455214>,  <20.191151, 21.626333, 17.236950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.660030, 22.110123, 17.455214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524078, 21.743229, 17.538321>,  <19.442507, 21.523092, 17.588184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.524078, 21.743229, 17.538321>,  <19.660030, 22.110123, 17.455214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.524078, 21.743229, 17.538321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240218, 0.298260, 0.923762,
		-0.909273, 0.264057, -0.321708,
		-0.339878, -0.917232, 0.207768,
		19.422115, 21.468060, 17.600651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068270, 22.191702, 17.855042>,  <19.660030, 22.110123, 17.455214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068270, 22.191702, 17.855042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.165199, 21.809502, 17.922327>,  <19.223356, 21.580181, 17.962698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.165199, 21.809502, 17.922327>,  <19.068270, 22.191702, 17.855042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.165199, 21.809502, 17.922327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069252, 0.155905, 0.985341,
		-0.967721, -0.250420, -0.028391,
		0.242323, -0.955501, 0.168215,
		19.237896, 21.522852, 17.972792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677441, 22.012863, 18.440287>,  <19.068270, 22.191702, 17.855042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677441, 22.012863, 18.440287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960144, 21.730053, 18.430466>,  <19.129766, 21.560366, 18.424572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.960144, 21.730053, 18.430466>,  <18.677441, 22.012863, 18.440287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960144, 21.730053, 18.430466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002647, -0.037351, 0.999299,
		-0.707449, -0.706199, -0.028269,
		0.706760, -0.707027, -0.024555,
		19.172173, 21.517944, 18.423100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.422207, 21.403587, 18.849798>,  <18.677441, 22.012863, 18.440287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.422207, 21.403587, 18.849798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821995, 21.393158, 18.841993>,  <19.061867, 21.386900, 18.837311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821995, 21.393158, 18.841993>,  <18.422207, 21.403587, 18.849798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821995, 21.393158, 18.841993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016757, -0.102078, 0.994635,
		-0.027923, -0.994434, -0.101587,
		0.999469, -0.026071, -0.019514,
		19.121836, 21.385336, 18.836140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540726, 20.815449, 19.195911>,  <18.422207, 21.403587, 18.849798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540726, 20.815449, 19.195911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.875263, 21.034000, 19.213806>,  <19.075985, 21.165133, 19.224543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.875263, 21.034000, 19.213806>,  <18.540726, 20.815449, 19.195911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.875263, 21.034000, 19.213806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014827, -0.059032, 0.998146,
		0.548008, -0.835454, -0.041270,
		0.836341, 0.546381, 0.044738,
		19.126165, 21.197914, 19.227228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021652, 20.448706, 19.507185>,  <18.540726, 20.815449, 19.195911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021652, 20.448706, 19.507185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.121593, 20.832432, 19.559780>,  <19.181559, 21.062668, 19.591337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.121593, 20.832432, 19.559780>,  <19.021652, 20.448706, 19.507185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.121593, 20.832432, 19.559780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018102, -0.140400, 0.989929,
		0.968115, -0.244956, -0.052445,
		0.249852, 0.959314, 0.131490,
		19.196548, 21.120226, 19.599228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424320, 20.417645, 20.083498>,  <19.021652, 20.448706, 19.507185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424320, 20.417645, 20.083498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.344872, 20.808563, 20.054003>,  <19.297201, 21.043116, 20.036306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.344872, 20.808563, 20.054003>,  <19.424320, 20.417645, 20.083498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344872, 20.808563, 20.054003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151074, 0.043808, 0.987551,
		0.968362, 0.207290, 0.138943,
		-0.198623, 0.977298, -0.073738,
		19.285284, 21.101753, 20.031881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879795, 20.736481, 20.584967>,  <19.424320, 20.417645, 20.083498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879795, 20.736481, 20.584967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559639, 20.972221, 20.541080>,  <19.367544, 21.113667, 20.514748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559639, 20.972221, 20.541080>,  <19.879795, 20.736481, 20.584967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559639, 20.972221, 20.541080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133152, 0.003675, 0.991089,
		0.584504, 0.807868, 0.075532,
		-0.800391, 0.589352, -0.109717,
		19.319521, 21.149027, 20.508165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.945972, 21.022455, 21.181158>,  <19.879795, 20.736481, 20.584967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.945972, 21.022455, 21.181158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.575733, 21.133419, 21.078154>,  <19.353590, 21.199997, 21.016352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.575733, 21.133419, 21.078154>,  <19.945972, 21.022455, 21.181158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.575733, 21.133419, 21.078154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100361, 0.476110, 0.873640,
		0.364959, 0.834484, -0.412845,
		-0.925598, 0.277410, -0.257511,
		19.298054, 21.216642, 21.000900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823013, 21.842131, 21.259434>,  <19.945972, 21.022455, 21.181158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823013, 21.842131, 21.259434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451149, 21.695759, 21.242359>,  <19.228029, 21.607935, 21.232115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451149, 21.695759, 21.242359>,  <19.823013, 21.842131, 21.259434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451149, 21.695759, 21.242359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235639, 0.501548, 0.832421,
		-0.283200, 0.783929, -0.552498,
		-0.929662, -0.365931, -0.042686,
		19.172251, 21.585979, 21.229553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.389563, 22.423367, 21.309385>,  <19.823013, 21.842131, 21.259434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.389563, 22.423367, 21.309385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136833, 22.130283, 21.410532>,  <18.985195, 21.954433, 21.471220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.136833, 22.130283, 21.410532>,  <19.389563, 22.423367, 21.309385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.136833, 22.130283, 21.410532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307781, 0.536567, 0.785727,
		-0.711386, 0.418614, -0.564529,
		-0.631824, -0.732706, 0.252864,
		18.947287, 21.910471, 21.486391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.696096, 22.667408, 21.343838>,  <19.389563, 22.423367, 21.309385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.696096, 22.667408, 21.343838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717186, 22.346172, 21.581245>,  <18.729839, 22.153431, 21.723690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717186, 22.346172, 21.581245>,  <18.696096, 22.667408, 21.343838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717186, 22.346172, 21.581245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264777, 0.561833, 0.783733,
		-0.962867, -0.198471, -0.183018,
		0.052723, -0.803090, 0.593521,
		18.733004, 22.105246, 21.759302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.183014, 22.763287, 21.725857>,  <18.696096, 22.667408, 21.343838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.183014, 22.763287, 21.725857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398212, 22.494370, 21.929260>,  <18.527332, 22.333019, 22.051302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398212, 22.494370, 21.929260>,  <18.183014, 22.763287, 21.725857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398212, 22.494370, 21.929260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227790, 0.464857, 0.855582,
		-0.811585, -0.576134, 0.096950,
		0.537997, -0.672293, 0.508509,
		18.559612, 22.292681, 22.081812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.767811, 22.579132, 22.189342>,  <18.183014, 22.763287, 21.725857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.767811, 22.579132, 22.189342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.112408, 22.446121, 22.342838>,  <18.319166, 22.366314, 22.434937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.112408, 22.446121, 22.342838>,  <17.767811, 22.579132, 22.189342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.112408, 22.446121, 22.342838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234055, 0.410607, 0.881261,
		-0.450609, -0.849016, 0.275905,
		0.861493, -0.332528, 0.383739,
		18.370855, 22.346363, 22.457960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635693, 22.455767, 22.931244>,  <17.767811, 22.579132, 22.189342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635693, 22.455767, 22.931244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034695, 22.459000, 22.959307>,  <18.274096, 22.460939, 22.976145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034695, 22.459000, 22.959307>,  <17.635693, 22.455767, 22.931244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034695, 22.459000, 22.959307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069285, 0.304338, 0.950041,
		-0.013673, -0.952530, 0.304138,
		0.997503, 0.008082, 0.070158,
		18.333946, 22.461424, 22.980354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830467, 22.128815, 23.651649>,  <17.635693, 22.455767, 22.931244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830467, 22.128815, 23.651649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125900, 22.353966, 23.503235>,  <18.303160, 22.489056, 23.414186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125900, 22.353966, 23.503235>,  <17.830467, 22.128815, 23.651649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125900, 22.353966, 23.503235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019983, 0.531845, 0.846606,
		0.673869, -0.632701, 0.381562,
		0.738580, 0.562877, -0.371037,
		18.347475, 22.522829, 23.391924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443716, 22.090305, 24.145805>,  <17.830467, 22.128815, 23.651649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443716, 22.090305, 24.145805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466450, 22.432663, 23.940197>,  <18.480091, 22.638077, 23.816832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.466450, 22.432663, 23.940197>,  <18.443716, 22.090305, 24.145805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466450, 22.432663, 23.940197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057953, 0.516813, 0.854135,
		0.996700, -0.018756, 0.078975,
		0.056836, 0.855893, -0.514021,
		18.483500, 22.689430, 23.785992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580561, 22.667019, 24.619793>,  <18.443716, 22.090305, 24.145805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580561, 22.667019, 24.619793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.622360, 22.862415, 24.273277>,  <18.647440, 22.979652, 24.065369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.622360, 22.862415, 24.273277>,  <18.580561, 22.667019, 24.619793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622360, 22.862415, 24.273277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022069, 0.869706, 0.493077,
		0.994280, -0.070645, 0.080104,
		0.104500, 0.488489, -0.866290,
		18.653709, 23.008963, 24.013390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270786, 23.051493, 24.410137>,  <18.580561, 22.667019, 24.619793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270786, 23.051493, 24.410137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925365, 23.211380, 24.287169>,  <18.718113, 23.307312, 24.213387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925365, 23.211380, 24.287169>,  <19.270786, 23.051493, 24.410137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925365, 23.211380, 24.287169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261869, 0.876469, 0.404013,
		0.430936, 0.268382, -0.861548,
		-0.863550, 0.399716, -0.307421,
		18.666300, 23.331295, 24.194942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182419, 23.766502, 24.408432>,  <19.270786, 23.051493, 24.410137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182419, 23.766502, 24.408432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514126, 23.608047, 24.566111>,  <19.713150, 23.512976, 24.660717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514126, 23.608047, 24.566111>,  <19.182419, 23.766502, 24.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.514126, 23.608047, 24.566111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209489, 0.433586, 0.876423,
		-0.518100, -0.809370, 0.276573,
		0.829268, -0.396136, 0.394195,
		19.762907, 23.489206, 24.684370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201601, 23.411304, 25.020798>,  <19.182419, 23.766502, 24.408432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201601, 23.411304, 25.020798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552856, 23.602325, 25.032217>,  <19.763611, 23.716938, 25.039068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552856, 23.602325, 25.032217>,  <19.201601, 23.411304, 25.020798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552856, 23.602325, 25.032217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270189, 0.445818, 0.853372,
		0.394800, -0.757094, 0.520520,
		0.878140, 0.477550, 0.028550,
		19.816298, 23.745590, 25.040781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663483, 23.675831, 25.567305>,  <19.201601, 23.411304, 25.020798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663483, 23.675831, 25.567305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.507839, 23.541916, 25.224024>,  <18.414454, 23.461567, 25.018055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.507839, 23.541916, 25.224024>,  <18.663483, 23.675831, 25.567305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.507839, 23.541916, 25.224024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582391, -0.811218, 0.052402,
		-0.713734, -0.479420, 0.510626,
		-0.389107, -0.334786, -0.858204,
		18.391108, 23.441481, 24.966562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367432, 23.099510, 25.593691>,  <18.663483, 23.675831, 25.567305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.367432, 23.099510, 25.593691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209446, 22.758808, 25.455988>,  <18.114655, 22.554386, 25.373365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209446, 22.758808, 25.455988>,  <18.367432, 23.099510, 25.593691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209446, 22.758808, 25.455988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624163, -0.026177, 0.780856,
		-0.674111, 0.523282, -0.521296,
		-0.394962, -0.851757, -0.344259,
		18.090958, 22.503281, 25.352711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765425, 23.292255, 25.218204>,  <18.367432, 23.099510, 25.593691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765425, 23.292255, 25.218204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.490540, 23.581608, 25.191494>,  <17.325609, 23.755219, 25.175467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.490540, 23.581608, 25.191494>,  <17.765425, 23.292255, 25.218204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.490540, 23.581608, 25.191494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074766, -0.021007, -0.996980,
		-0.722600, -0.690129, -0.039648,
		-0.687212, 0.723382, -0.066777,
		17.284376, 23.798622, 25.171461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152067, 23.156225, 24.816875>,  <17.765425, 23.292255, 25.218204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152067, 23.156225, 24.816875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228565, 23.548630, 24.803982>,  <17.274464, 23.784073, 24.796246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228565, 23.548630, 24.803982>,  <17.152067, 23.156225, 24.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228565, 23.548630, 24.803982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101066, -0.012984, -0.994795,
		-0.976325, 0.193506, 0.096664,
		0.191244, 0.981013, -0.032234,
		17.285938, 23.842934, 24.794312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870758, 23.386702, 24.277508>,  <17.152067, 23.156225, 24.816875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870758, 23.386702, 24.277508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.031113, 23.748413, 24.336248>,  <17.127325, 23.965441, 24.371492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.031113, 23.748413, 24.336248>,  <16.870758, 23.386702, 24.277508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031113, 23.748413, 24.336248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244461, 0.260077, -0.934130,
		-0.882908, 0.338582, 0.325323,
		0.400889, 0.904280, 0.146854,
		17.151379, 24.019697, 24.380304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341768, 23.912376, 24.203873>,  <16.870758, 23.386702, 24.277508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341768, 23.912376, 24.203873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703602, 24.057590, 24.114491>,  <16.920702, 24.144718, 24.060862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703602, 24.057590, 24.114491>,  <16.341768, 23.912376, 24.203873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.703602, 24.057590, 24.114491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269142, 0.079860, -0.959784,
		-0.330588, 0.928348, 0.169948,
		0.904585, 0.363033, -0.223457,
		16.974977, 24.166500, 24.047453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134401, 24.422209, 23.802366>,  <16.341768, 23.912376, 24.203873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134401, 24.422209, 23.802366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.516190, 24.346546, 23.710098>,  <16.745262, 24.301149, 23.654737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.516190, 24.346546, 23.710098>,  <16.134401, 24.422209, 23.802366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.516190, 24.346546, 23.710098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194502, 0.191682, -0.961991,
		0.226181, 0.963057, 0.146163,
		0.954469, -0.189155, -0.230671,
		16.802530, 24.289801, 23.640898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457560, 25.057903, 23.477121>,  <16.134401, 24.422209, 23.802366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.457560, 25.057903, 23.477121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698624, 24.762920, 23.355164>,  <16.843262, 24.585930, 23.281988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698624, 24.762920, 23.355164>,  <16.457560, 25.057903, 23.477121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698624, 24.762920, 23.355164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212862, 0.219669, -0.952069,
		0.769086, 0.638672, -0.024591,
		0.602658, -0.737457, -0.304894,
		16.879421, 24.541683, 23.263695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.936283, 25.259794, 22.928059>,  <16.457560, 25.057903, 23.477121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.936283, 25.259794, 22.928059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.883152, 24.863857, 22.907778>,  <16.851273, 24.626295, 22.895609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.883152, 24.863857, 22.907778>,  <16.936283, 25.259794, 22.928059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883152, 24.863857, 22.907778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210824, 0.078200, -0.974391,
		0.968457, -0.118737, -0.219070,
		-0.132828, -0.989841, -0.050701,
		16.843304, 24.566904, 22.892567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262600, 25.107800, 22.345150>,  <16.936283, 25.259794, 22.928059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262600, 25.107800, 22.345150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.044430, 24.776951, 22.399382>,  <16.913528, 24.578442, 22.431921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.044430, 24.776951, 22.399382>,  <17.262600, 25.107800, 22.345150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.044430, 24.776951, 22.399382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269049, 0.019579, -0.962927,
		0.793804, -0.561681, -0.233216,
		-0.545424, -0.827122, 0.135578,
		16.880802, 24.528814, 22.440056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.328981, 24.827726, 21.694267>,  <17.262600, 25.107800, 22.345150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.328981, 24.827726, 21.694267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054012, 24.593735, 21.866430>,  <16.889030, 24.453341, 21.969728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054012, 24.593735, 21.866430>,  <17.328981, 24.827726, 21.694267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054012, 24.593735, 21.866430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368911, -0.229228, -0.900755,
		0.625584, -0.777981, -0.058229,
		-0.687422, -0.584979, 0.430407,
		16.847786, 24.418242, 21.995552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.361189, 24.097935, 21.357256>,  <17.328981, 24.827726, 21.694267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.361189, 24.097935, 21.357256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998810, 24.179203, 21.505840>,  <16.781384, 24.227964, 21.594992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998810, 24.179203, 21.505840>,  <17.361189, 24.097935, 21.357256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998810, 24.179203, 21.505840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414245, -0.243935, -0.876868,
		-0.087540, -0.948271, 0.305154,
		-0.905946, 0.203169, 0.371462,
		16.727026, 24.240154, 21.617279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957424, 23.512070, 21.112425>,  <17.361189, 24.097935, 21.357256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957424, 23.512070, 21.112425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696793, 23.809128, 21.174290>,  <16.540413, 23.987362, 21.211409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696793, 23.809128, 21.174290>,  <16.957424, 23.512070, 21.112425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696793, 23.809128, 21.174290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411403, -0.174653, -0.894564,
		-0.637330, -0.646510, 0.419327,
		-0.651582, 0.742644, 0.154664,
		16.501318, 24.031921, 21.220690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.264425, 23.277277, 20.940588>,  <16.957424, 23.512070, 21.112425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.264425, 23.277277, 20.940588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.215416, 23.672798, 20.906513>,  <16.186010, 23.910110, 20.886068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.215416, 23.672798, 20.906513>,  <16.264425, 23.277277, 20.940588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215416, 23.672798, 20.906513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556286, -0.139503, -0.819197,
		-0.821908, -0.052982, 0.567150,
		-0.122522, 0.988803, -0.085186,
		16.178659, 23.969439, 20.880957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482971, 23.425272, 20.856773>,  <16.264425, 23.277277, 20.940588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482971, 23.425272, 20.856773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683534, 23.748482, 20.733040>,  <15.803871, 23.942408, 20.658800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683534, 23.748482, 20.733040>,  <15.482971, 23.425272, 20.856773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683534, 23.748482, 20.733040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564190, 0.034290, -0.824932,
		-0.655959, 0.588150, 0.473073,
		0.501405, 0.808025, -0.309336,
		15.833956, 23.990889, 20.640240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.913425, 23.928547, 20.607996>,  <15.482971, 23.425272, 20.856773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.913425, 23.928547, 20.607996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256536, 24.069347, 20.458160>,  <15.462401, 24.153828, 20.368259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256536, 24.069347, 20.458160>,  <14.913425, 23.928547, 20.607996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256536, 24.069347, 20.458160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484737, 0.311454, -0.817329,
		-0.171031, 0.882662, 0.437784,
		0.857775, 0.351999, -0.374591,
		15.513868, 24.174948, 20.345783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772982, 24.620787, 20.282972>,  <14.913425, 23.928547, 20.607996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772982, 24.620787, 20.282972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092336, 24.459820, 20.103800>,  <15.283948, 24.363239, 19.996296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092336, 24.459820, 20.103800>,  <14.772982, 24.620787, 20.282972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092336, 24.459820, 20.103800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351544, 0.292445, -0.889321,
		0.488874, 0.867488, 0.092016,
		0.798385, -0.402419, -0.447929,
		15.331851, 24.339094, 19.969421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840031, 25.067356, 19.644806>,  <14.772982, 24.620787, 20.282972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840031, 25.067356, 19.644806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.039634, 24.727154, 19.578314>,  <15.159395, 24.523033, 19.538418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.039634, 24.727154, 19.578314>,  <14.840031, 25.067356, 19.644806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.039634, 24.727154, 19.578314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242657, 0.047014, -0.968972,
		0.831931, 0.523861, -0.182921,
		0.499007, -0.850505, -0.166231,
		15.189336, 24.472002, 19.528444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.158404, 25.159885, 19.062456>,  <14.840031, 25.067356, 19.644806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.158404, 25.159885, 19.062456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147546, 24.760715, 19.085796>,  <15.141031, 24.521214, 19.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147546, 24.760715, 19.085796>,  <15.158404, 25.159885, 19.062456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147546, 24.760715, 19.085796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253981, -0.049571, -0.965938,
		0.966828, -0.041041, -0.252109,
		-0.027146, -0.997927, 0.058350,
		15.139402, 24.461338, 19.103302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675917, 24.956301, 18.718853>,  <15.158404, 25.159885, 19.062456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675917, 24.956301, 18.718853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.470864, 24.613338, 18.700684>,  <15.347833, 24.407560, 18.689781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.470864, 24.613338, 18.700684>,  <15.675917, 24.956301, 18.718853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470864, 24.613338, 18.700684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179138, -0.055065, -0.982282,
		0.839714, -0.511684, 0.181822,
		-0.512630, -0.857408, -0.045424,
		15.317076, 24.356115, 18.687056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.111231, 24.572371, 18.378319>,  <15.675917, 24.956301, 18.718853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.111231, 24.572371, 18.378319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752637, 24.402317, 18.328392>,  <15.537481, 24.300285, 18.298435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752637, 24.402317, 18.328392>,  <16.111231, 24.572371, 18.378319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752637, 24.402317, 18.328392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213577, -0.167817, -0.962404,
		0.388205, -0.889437, 0.241244,
		-0.896483, -0.425134, -0.124816,
		15.483692, 24.274776, 18.290947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306461, 23.929525, 18.116749>,  <16.111231, 24.572371, 18.378319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306461, 23.929525, 18.116749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.921475, 23.988327, 18.025486>,  <15.690484, 24.023607, 17.970728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.921475, 23.988327, 18.025486>,  <16.306461, 23.929525, 18.116749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.921475, 23.988327, 18.025486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216268, -0.092547, -0.971938,
		-0.163993, -0.984797, 0.057281,
		-0.962463, 0.147003, -0.228157,
		15.632736, 24.032429, 17.957039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140421, 23.382540, 17.624634>,  <16.306461, 23.929525, 18.116749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140421, 23.382540, 17.624634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.896852, 23.699322, 17.606680>,  <15.750710, 23.889391, 17.595907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.896852, 23.699322, 17.606680>,  <16.140421, 23.382540, 17.624634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896852, 23.699322, 17.606680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291822, 0.171043, -0.941055,
		-0.737597, -0.586130, -0.335263,
		-0.608925, 0.791957, -0.044885,
		15.714174, 23.936909, 17.593214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741114, 23.343002, 17.005888>,  <16.140421, 23.382540, 17.624634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741114, 23.343002, 17.005888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730874, 23.734787, 17.085888>,  <15.724730, 23.969858, 17.133888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.730874, 23.734787, 17.085888>,  <15.741114, 23.343002, 17.005888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730874, 23.734787, 17.085888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382100, 0.194461, -0.903429,
		-0.923766, 0.053292, -0.379231,
		-0.025600, 0.979462, 0.199999,
		15.723194, 24.028625, 17.145887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446268, 23.688232, 16.457060>,  <15.741114, 23.343002, 17.005888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446268, 23.688232, 16.457060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607396, 24.010098, 16.631531>,  <15.704073, 24.203217, 16.736214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607396, 24.010098, 16.631531>,  <15.446268, 23.688232, 16.457060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607396, 24.010098, 16.631531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420720, 0.260440, -0.869003,
		-0.812853, 0.533562, -0.233627,
		0.402821, 0.804663, 0.436179,
		15.728242, 24.251497, 16.762384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456101, 24.164501, 15.928122>,  <15.446268, 23.688232, 16.457060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.456101, 24.164501, 15.928122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680938, 24.329662, 16.214775>,  <15.815840, 24.428759, 16.386766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680938, 24.329662, 16.214775>,  <15.456101, 24.164501, 15.928122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680938, 24.329662, 16.214775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582959, 0.416848, -0.697421,
		-0.586696, 0.809782, -0.006400,
		0.562091, 0.412905, 0.716633,
		15.849566, 24.453533, 16.429766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535807, 24.870850, 15.830177>,  <15.456101, 24.164501, 15.928122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535807, 24.870850, 15.830177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.861022, 24.738411, 16.021736>,  <16.056152, 24.658949, 16.136671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.861022, 24.738411, 16.021736>,  <15.535807, 24.870850, 15.830177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.861022, 24.738411, 16.021736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571824, 0.299458, -0.763768,
		0.109470, 0.894819, 0.432800,
		0.813039, -0.331095, 0.478897,
		16.104935, 24.639082, 16.165405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043968, 25.397390, 15.691692>,  <15.535807, 24.870850, 15.830177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043968, 25.397390, 15.691692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263699, 25.100571, 15.845371>,  <16.395536, 24.922480, 15.937578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263699, 25.100571, 15.845371>,  <16.043968, 25.397390, 15.691692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263699, 25.100571, 15.845371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784374, 0.299387, -0.543255,
		0.288097, 0.599777, 0.746503,
		0.549325, -0.742048, 0.384197,
		16.428495, 24.877956, 15.960630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672607, 25.734295, 15.877115>,  <16.043968, 25.397390, 15.691692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672607, 25.734295, 15.877115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779736, 25.350842, 15.838551>,  <16.844013, 25.120770, 15.815412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779736, 25.350842, 15.838551>,  <16.672607, 25.734295, 15.877115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.779736, 25.350842, 15.838551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746009, 0.269658, -0.608897,
		0.609706, 0.091152, 0.787369,
		0.267822, -0.958632, -0.096412,
		16.860083, 25.063251, 15.809627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352058, 25.760998, 15.753415>,  <16.672607, 25.734295, 15.877115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352058, 25.760998, 15.753415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.238361, 25.400280, 15.623203>,  <17.170143, 25.183849, 15.545076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.238361, 25.400280, 15.623203>,  <17.352058, 25.760998, 15.753415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.238361, 25.400280, 15.623203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585935, 0.105354, -0.803480,
		0.758871, -0.419122, 0.498448,
		-0.284243, -0.901797, -0.325528,
		17.153088, 25.129742, 15.525545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930481, 25.589287, 15.442148>,  <17.352058, 25.760998, 15.753415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930481, 25.589287, 15.442148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.685078, 25.293102, 15.332365>,  <17.537836, 25.115391, 15.266495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.685078, 25.293102, 15.332365>,  <17.930481, 25.589287, 15.442148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685078, 25.293102, 15.332365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477475, -0.070997, -0.875773,
		0.628990, -0.668338, 0.397109,
		-0.613506, -0.740462, -0.274458,
		17.501026, 25.070963, 15.250028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351372, 25.005041, 15.229239>,  <17.930481, 25.589287, 15.442148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351372, 25.005041, 15.229239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990017, 24.938160, 15.071283>,  <17.773205, 24.898031, 14.976509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990017, 24.938160, 15.071283>,  <18.351372, 25.005041, 15.229239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990017, 24.938160, 15.071283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415317, -0.111786, -0.902782,
		0.106804, -0.979565, 0.170428,
		-0.903385, -0.167202, -0.394891,
		17.719002, 24.887999, 14.952816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.251301, 24.357651, 14.798538>,  <18.351372, 25.005041, 15.229239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.251301, 24.357651, 14.798538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.974476, 24.603218, 14.646669>,  <17.808380, 24.750559, 14.555549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.974476, 24.603218, 14.646669>,  <18.251301, 24.357651, 14.798538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.974476, 24.603218, 14.646669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366983, -0.153686, -0.917444,
		-0.621587, -0.774263, -0.118937,
		-0.692064, 0.613920, -0.379671,
		17.766857, 24.787394, 14.532768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028336, 24.030552, 14.173286>,  <18.251301, 24.357651, 14.798538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028336, 24.030552, 14.173286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894012, 24.402214, 14.111446>,  <17.813417, 24.625212, 14.074343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894012, 24.402214, 14.111446>,  <18.028336, 24.030552, 14.173286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894012, 24.402214, 14.111446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220044, -0.082205, -0.972020,
		-0.915867, -0.360432, -0.176850,
		-0.335809, 0.929156, -0.154600,
		17.793270, 24.680962, 14.065066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612320, 24.028656, 13.518188>,  <18.028336, 24.030552, 14.173286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612320, 24.028656, 13.518188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715149, 24.412968, 13.559790>,  <17.776846, 24.643555, 13.584751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715149, 24.412968, 13.559790>,  <17.612320, 24.028656, 13.518188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715149, 24.412968, 13.559790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151913, 0.066107, -0.986181,
		-0.954377, 0.269322, -0.128960,
		0.257075, 0.960779, 0.104004,
		17.792271, 24.701200, 13.590991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123423, 24.389229, 13.100586>,  <17.612320, 24.028656, 13.518188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123423, 24.389229, 13.100586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445049, 24.626232, 13.120218>,  <17.638025, 24.768435, 13.131998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445049, 24.626232, 13.120218>,  <17.123423, 24.389229, 13.100586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445049, 24.626232, 13.120218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100729, -0.054401, -0.993425,
		-0.585945, 0.803724, -0.103425,
		0.804066, 0.592510, 0.049082,
		17.686270, 24.803986, 13.134943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122238, 24.980692, 12.527771>,  <17.123423, 24.389229, 13.100586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122238, 24.980692, 12.527771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497730, 24.905529, 12.643342>,  <17.723026, 24.860432, 12.712685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497730, 24.905529, 12.643342>,  <17.122238, 24.980692, 12.527771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497730, 24.905529, 12.643342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277125, -0.086893, -0.956897,
		0.204912, 0.978336, -0.029495,
		0.938729, -0.187906, 0.288926,
		17.779348, 24.849157, 12.730020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474003, 25.431698, 12.191273>,  <17.122238, 24.980692, 12.527771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474003, 25.431698, 12.191273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744698, 25.148144, 12.270782>,  <17.907114, 24.978012, 12.318487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744698, 25.148144, 12.270782>,  <17.474003, 25.431698, 12.191273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744698, 25.148144, 12.270782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250836, -0.031830, -0.967506,
		0.692178, 0.704605, 0.156274,
		0.676735, -0.708886, 0.198773,
		17.947718, 24.935478, 12.330413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966423, 25.716486, 11.798903>,  <17.474003, 25.431698, 12.191273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966423, 25.716486, 11.798903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.067253, 25.341141, 11.893502>,  <18.127750, 25.115932, 11.950262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.067253, 25.341141, 11.893502>,  <17.966423, 25.716486, 11.798903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067253, 25.341141, 11.893502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271043, -0.166146, -0.948120,
		0.928975, 0.303096, 0.212457,
		0.252073, -0.938365, 0.236498,
		18.142876, 25.059631, 11.964452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641138, 25.593468, 11.384547>,  <17.966423, 25.716486, 11.798903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.641138, 25.593468, 11.384547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491009, 25.239895, 11.496116>,  <18.400930, 25.027752, 11.563057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491009, 25.239895, 11.496116>,  <18.641138, 25.593468, 11.384547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491009, 25.239895, 11.496116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183296, -0.365759, -0.912482,
		0.908590, -0.291350, 0.299299,
		-0.375323, -0.883932, 0.278922,
		18.378412, 24.974716, 11.579792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.112476, 25.145384, 11.120065>,  <18.641138, 25.593468, 11.384547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.112476, 25.145384, 11.120065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.782921, 24.924324, 11.170317>,  <18.585188, 24.791687, 11.200468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.782921, 24.924324, 11.170317>,  <19.112476, 25.145384, 11.120065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782921, 24.924324, 11.170317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166436, -0.447822, -0.878496,
		0.541762, -0.702874, 0.460937,
		-0.823889, -0.552652, 0.125630,
		18.535753, 24.758528, 11.208006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.314295, 24.398914, 11.037853>,  <19.112476, 25.145384, 11.120065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.314295, 24.398914, 11.037853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.927135, 24.461018, 10.958795>,  <18.694839, 24.498280, 10.911359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.927135, 24.461018, 10.958795>,  <19.314295, 24.398914, 11.037853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927135, 24.461018, 10.958795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091149, -0.516015, -0.851716,
		-0.234227, -0.842391, 0.485299,
		-0.967900, 0.155261, -0.197648,
		18.636766, 24.507595, 10.899500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.132851, 23.788532, 10.765396>,  <19.314295, 24.398914, 11.037853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.132851, 23.788532, 10.765396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822601, 24.020359, 10.665391>,  <18.636452, 24.159456, 10.605388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822601, 24.020359, 10.665391>,  <19.132851, 23.788532, 10.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822601, 24.020359, 10.665391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061413, -0.324923, -0.943744,
		-0.628200, -0.747345, 0.216425,
		-0.775624, 0.579569, -0.250014,
		18.589914, 24.194229, 10.590387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793989, 23.311520, 10.415621>,  <19.132851, 23.788532, 10.765396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793989, 23.311520, 10.415621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.620701, 23.654049, 10.303173>,  <18.516727, 23.859568, 10.235704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.620701, 23.654049, 10.303173>,  <18.793989, 23.311520, 10.415621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.620701, 23.654049, 10.303173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010234, -0.307216, -0.951585,
		-0.901230, -0.415123, 0.124329,
		-0.433220, 0.856325, -0.281120,
		18.490734, 23.910946, 10.218837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156950, 23.226210, 10.006721>,  <18.793989, 23.311520, 10.415621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156950, 23.226210, 10.006721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305176, 23.585751, 9.913130>,  <18.394112, 23.801476, 9.856976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305176, 23.585751, 9.913130>,  <18.156950, 23.226210, 10.006721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305176, 23.585751, 9.913130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084698, -0.283565, -0.955205,
		-0.924936, 0.334150, -0.181210,
		0.370567, 0.898852, -0.233977,
		18.416346, 23.855406, 9.842937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716103, 23.504141, 9.449687>,  <18.156950, 23.226210, 10.006721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716103, 23.504141, 9.449687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074688, 23.681381, 9.450933>,  <18.289839, 23.787725, 9.451680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.074688, 23.681381, 9.450933>,  <17.716103, 23.504141, 9.449687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074688, 23.681381, 9.450933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144781, -0.286258, -0.947151,
		-0.418794, 0.849539, -0.320773,
		0.896465, 0.443103, 0.003114,
		18.343628, 23.814312, 9.451867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.205046, 22.847441, 9.342481>,  <17.716103, 23.504141, 9.449687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.205046, 22.847441, 9.342481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923637, 22.597137, 9.207732>,  <16.754791, 22.446955, 9.126883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923637, 22.597137, 9.207732>,  <17.205046, 22.847441, 9.342481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923637, 22.597137, 9.207732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670977, 0.428655, 0.605016,
		-0.234192, 0.651676, -0.721438,
		-0.703522, -0.625759, -0.336872,
		16.712582, 22.409410, 9.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.626209, 23.242865, 9.219731>,  <17.205046, 22.847441, 9.342481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.626209, 23.242865, 9.219731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498943, 22.872139, 9.299517>,  <16.422585, 22.649704, 9.347388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498943, 22.872139, 9.299517>,  <16.626209, 23.242865, 9.219731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498943, 22.872139, 9.299517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731790, 0.373853, 0.569840,
		-0.602706, 0.035337, -0.797180,
		-0.318165, -0.926814, 0.199464,
		16.403494, 22.594095, 9.359356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.881538, 23.216295, 9.204716>,  <16.626209, 23.242865, 9.219731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.881538, 23.216295, 9.204716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.964429, 22.890549, 9.421554>,  <16.014164, 22.695101, 9.551656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.964429, 22.890549, 9.421554>,  <15.881538, 23.216295, 9.204716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.964429, 22.890549, 9.421554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677498, 0.280275, 0.680031,
		-0.705729, -0.508187, -0.493651,
		0.207225, -0.814366, 0.542094,
		16.026596, 22.646238, 9.584182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296347, 22.987131, 9.471124>,  <15.881538, 23.216295, 9.204716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296347, 22.987131, 9.471124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522506, 22.786427, 9.732983>,  <15.658201, 22.666004, 9.890098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522506, 22.786427, 9.732983>,  <15.296347, 22.987131, 9.471124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522506, 22.786427, 9.732983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516546, 0.403375, 0.755294,
		-0.643045, -0.765196, -0.031116,
		0.565396, -0.501760, 0.654647,
		15.692124, 22.635899, 9.929377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805682, 22.529449, 9.838698>,  <15.296347, 22.987131, 9.471124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805682, 22.529449, 9.838698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132884, 22.587231, 10.061409>,  <15.329206, 22.621899, 10.195036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132884, 22.587231, 10.061409>,  <14.805682, 22.529449, 9.838698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.132884, 22.587231, 10.061409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574811, 0.169197, 0.800603,
		0.021441, -0.974939, 0.221435,
		0.818005, 0.144449, 0.556778,
		15.378285, 22.630566, 10.228442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653229, 22.116776, 10.482680>,  <14.805682, 22.529449, 9.838698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.653229, 22.116776, 10.482680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940787, 22.382626, 10.564132>,  <15.113322, 22.542135, 10.613003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940787, 22.382626, 10.564132>,  <14.653229, 22.116776, 10.482680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940787, 22.382626, 10.564132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398832, 0.154454, 0.903923,
		0.569318, -0.731040, 0.376110,
		0.718895, 0.664624, 0.203629,
		15.156456, 22.582012, 10.625220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846050, 21.833078, 11.004655>,  <14.653229, 22.116776, 10.482680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.846050, 21.833078, 11.004655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973689, 22.212112, 11.011066>,  <15.050273, 22.439533, 11.014914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973689, 22.212112, 11.011066>,  <14.846050, 21.833078, 11.004655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973689, 22.212112, 11.011066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507106, 0.156429, 0.847569,
		0.800637, -0.278586, 0.530443,
		0.319098, 0.947586, 0.016030,
		15.069419, 22.496387, 11.015876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194316, 21.920395, 11.599043>,  <14.846050, 21.833078, 11.004655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194316, 21.920395, 11.599043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066583, 22.283295, 11.489553>,  <14.989943, 22.501034, 11.423860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.066583, 22.283295, 11.489553>,  <15.194316, 21.920395, 11.599043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066583, 22.283295, 11.489553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352084, 0.154585, 0.923115,
		0.879809, 0.391155, 0.270065,
		-0.319333, 0.907250, -0.273724,
		14.970783, 22.555470, 11.407436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516367, 22.405987, 12.103432>,  <15.194316, 21.920395, 11.599043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516367, 22.405987, 12.103432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196769, 22.568794, 11.926371>,  <15.005010, 22.666479, 11.820134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196769, 22.568794, 11.926371>,  <15.516367, 22.405987, 12.103432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196769, 22.568794, 11.926371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384815, 0.219576, 0.896495,
		0.462086, 0.886636, -0.018814,
		-0.798996, 0.407018, -0.442653,
		14.957070, 22.690899, 11.793574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277479, 22.834694, 12.626274>,  <15.516367, 22.405987, 12.103432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277479, 22.834694, 12.626274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965503, 22.876091, 12.379379>,  <14.778316, 22.900928, 12.231242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965503, 22.876091, 12.379379>,  <15.277479, 22.834694, 12.626274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965503, 22.876091, 12.379379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558172, 0.331063, 0.760816,
		0.283081, 0.937916, -0.200444,
		-0.779942, 0.103490, -0.617236,
		14.731521, 22.907139, 12.194208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.948613, 23.448460, 12.786985>,  <15.277479, 22.834694, 12.626274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.948613, 23.448460, 12.786985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672860, 23.229187, 12.597567>,  <14.507408, 23.097624, 12.483915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672860, 23.229187, 12.597567>,  <14.948613, 23.448460, 12.786985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672860, 23.229187, 12.597567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671538, 0.238485, 0.701542,
		-0.271638, 0.801637, -0.532532,
		-0.689384, -0.548181, -0.473548,
		14.466045, 23.064734, 12.455503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.357441, 23.933903, 12.712008>,  <14.948613, 23.448460, 12.786985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.357441, 23.933903, 12.712008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.228768, 23.555187, 12.716188>,  <14.151565, 23.327957, 12.718698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.228768, 23.555187, 12.716188>,  <14.357441, 23.933903, 12.712008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.228768, 23.555187, 12.716188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361466, 0.133000, 0.922851,
		-0.875136, 0.293085, -0.385016,
		-0.321681, -0.946791, 0.010453,
		14.132264, 23.271151, 12.719324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757984, 23.932432, 13.003638>,  <14.357441, 23.933903, 12.712008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757984, 23.932432, 13.003638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.859197, 23.547344, 13.041889>,  <13.919924, 23.316292, 13.064839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.859197, 23.547344, 13.041889>,  <13.757984, 23.932432, 13.003638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859197, 23.547344, 13.041889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371282, -0.005356, 0.928505,
		-0.893378, -0.270444, -0.358796,
		0.253030, -0.962721, 0.095626,
		13.935106, 23.258528, 13.070577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201685, 23.569794, 13.370685>,  <13.757984, 23.932432, 13.003638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201685, 23.569794, 13.370685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500213, 23.306026, 13.406847>,  <13.679329, 23.147766, 13.428545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500213, 23.306026, 13.406847>,  <13.201685, 23.569794, 13.370685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500213, 23.306026, 13.406847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243374, -0.143941, 0.959193,
		-0.619498, -0.737865, -0.267911,
		0.746318, -0.659421, 0.090407,
		13.724108, 23.108200, 13.433969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.856265, 23.070850, 13.711102>,  <13.201685, 23.569794, 13.370685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.856265, 23.070850, 13.711102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.243188, 22.987484, 13.768898>,  <13.475342, 22.937464, 13.803576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.243188, 22.987484, 13.768898>,  <12.856265, 23.070850, 13.711102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.243188, 22.987484, 13.768898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190477, -0.220922, 0.956510,
		-0.167427, -0.952763, -0.253397,
		0.967309, -0.208412, 0.144492,
		13.533381, 22.924959, 13.812245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.968005, 22.555187, 14.278970>,  <12.856265, 23.070850, 13.711102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.968005, 22.555187, 14.278970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329345, 22.726662, 14.284485>,  <13.546148, 22.829546, 14.287794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.329345, 22.726662, 14.284485>,  <12.968005, 22.555187, 14.278970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.329345, 22.726662, 14.284485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050766, -0.138787, 0.989020,
		0.425892, -0.892730, -0.147136,
		0.903349, 0.428685, 0.013788,
		13.600349, 22.855267, 14.288621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.436345, 22.119556, 14.550907>,  <12.968005, 22.555187, 14.278970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.436345, 22.119556, 14.550907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.600902, 22.481213, 14.597023>,  <13.699636, 22.698206, 14.624692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.600902, 22.481213, 14.597023>,  <13.436345, 22.119556, 14.550907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.600902, 22.481213, 14.597023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187386, -0.039888, 0.981476,
		0.891989, -0.425374, 0.153014,
		0.411391, 0.904138, 0.115289,
		13.724319, 22.752455, 14.631610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.945368, 21.988905, 14.948149>,  <13.436345, 22.119556, 14.550907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.945368, 21.988905, 14.948149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.852611, 22.376461, 14.982740>,  <13.796956, 22.608995, 15.003495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.852611, 22.376461, 14.982740>,  <13.945368, 21.988905, 14.948149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.852611, 22.376461, 14.982740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062544, -0.073867, 0.995305,
		0.970729, 0.236212, -0.043469,
		-0.231892, 0.968890, 0.086479,
		13.783043, 22.667128, 15.008684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349755, 22.128902, 15.521466>,  <13.945368, 21.988905, 14.948149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349755, 22.128902, 15.521466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105878, 22.441860, 15.470659>,  <13.959552, 22.629635, 15.440175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.105878, 22.441860, 15.470659>,  <14.349755, 22.128902, 15.521466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.105878, 22.441860, 15.470659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133320, 0.056740, 0.989448,
		0.781345, 0.620193, 0.069715,
		-0.609693, 0.782395, -0.127018,
		13.922970, 22.676579, 15.432554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614755, 22.555149, 15.958584>,  <14.349755, 22.128902, 15.521466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614755, 22.555149, 15.958584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230351, 22.656502, 15.914295>,  <13.999709, 22.717314, 15.887722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230351, 22.656502, 15.914295>,  <14.614755, 22.555149, 15.958584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230351, 22.656502, 15.914295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139568, -0.098803, 0.985271,
		0.238712, 0.962307, 0.130315,
		-0.961009, 0.253384, -0.110721,
		13.942049, 22.732517, 15.881079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527287, 22.956921, 16.573269>,  <14.614755, 22.555149, 15.958584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527287, 22.956921, 16.573269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151774, 22.891602, 16.451927>,  <13.926467, 22.852411, 16.379122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151774, 22.891602, 16.451927>,  <14.527287, 22.956921, 16.573269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151774, 22.891602, 16.451927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294037, -0.079073, 0.952518,
		-0.179530, 0.983403, 0.026217,
		-0.938782, -0.163297, -0.303353,
		13.870140, 22.842613, 16.360922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052456, 23.405115, 17.030985>,  <14.527287, 22.956921, 16.573269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052456, 23.405115, 17.030985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853513, 23.090866, 16.883781>,  <13.734147, 22.902317, 16.795460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.853513, 23.090866, 16.883781>,  <14.052456, 23.405115, 17.030985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853513, 23.090866, 16.883781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402389, -0.166904, 0.900126,
		-0.768581, 0.595769, -0.233115,
		-0.497359, -0.785622, -0.368010,
		13.704305, 22.855179, 16.773378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.428875, 23.536448, 17.393810>,  <14.052456, 23.405115, 17.030985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.428875, 23.536448, 17.393810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423646, 23.161026, 17.255857>,  <13.420508, 22.935772, 17.173086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423646, 23.161026, 17.255857>,  <13.428875, 23.536448, 17.393810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.423646, 23.161026, 17.255857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406153, -0.310190, 0.859547,
		-0.913712, 0.151311, -0.377142,
		-0.013074, -0.938556, -0.344880,
		13.419724, 22.879459, 17.152393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833000, 23.357967, 17.545998>,  <13.428875, 23.536448, 17.393810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833000, 23.357967, 17.545998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.055028, 23.026379, 17.518560>,  <13.188245, 22.827425, 17.502098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.055028, 23.026379, 17.518560>,  <12.833000, 23.357967, 17.545998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.055028, 23.026379, 17.518560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211365, -0.220323, 0.952251,
		-0.804502, -0.514067, -0.297510,
		0.555069, -0.828972, -0.068594,
		13.221549, 22.777687, 17.497982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374025, 22.800573, 17.894852>,  <12.833000, 23.357967, 17.545998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374025, 22.800573, 17.894852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749431, 22.664902, 17.869080>,  <12.974673, 22.583498, 17.853617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749431, 22.664902, 17.869080>,  <12.374025, 22.800573, 17.894852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749431, 22.664902, 17.869080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108753, -0.467557, 0.877248,
		-0.327668, -0.816302, -0.475695,
		0.938513, -0.339179, -0.064428,
		13.030985, 22.563148, 17.849751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417947, 22.104792, 18.205149>,  <12.374025, 22.800573, 17.894852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417947, 22.104792, 18.205149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.790620, 22.250069, 18.202091>,  <13.014224, 22.337234, 18.200256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.790620, 22.250069, 18.202091>,  <12.417947, 22.104792, 18.205149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.790620, 22.250069, 18.202091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127820, -0.308050, 0.942745,
		0.340044, -0.879316, -0.333428,
		0.931683, 0.363193, -0.007643,
		13.070125, 22.359026, 18.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.879422, 21.625952, 18.474596>,  <12.417947, 22.104792, 18.205149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.879422, 21.625952, 18.474596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.068055, 21.974510, 18.528675>,  <13.181234, 22.183645, 18.561123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.068055, 21.974510, 18.528675>,  <12.879422, 21.625952, 18.474596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068055, 21.974510, 18.528675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245469, -0.276978, 0.928993,
		0.846968, -0.404909, -0.344519,
		0.471582, 0.871396, 0.135199,
		13.209530, 22.235929, 18.569235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490271, 21.447330, 18.885195>,  <12.879422, 21.625952, 18.474596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490271, 21.447330, 18.885195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457017, 21.845219, 18.909262>,  <13.437065, 22.083952, 18.923702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.457017, 21.845219, 18.909262>,  <13.490271, 21.447330, 18.885195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.457017, 21.845219, 18.909262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406424, -0.021282, 0.913437,
		0.909895, 0.100391, -0.402509,
		-0.083135, 0.994720, 0.060166,
		13.432076, 22.143635, 18.927311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.128700, 21.722345, 19.179226>,  <13.490271, 21.447330, 18.885195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.128700, 21.722345, 19.179226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858712, 22.008308, 19.252241>,  <13.696719, 22.179886, 19.296051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.858712, 22.008308, 19.252241>,  <14.128700, 21.722345, 19.179226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858712, 22.008308, 19.252241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433017, 0.183494, 0.882511,
		0.597420, 0.674712, -0.433421,
		-0.674971, 0.714908, 0.182539,
		13.656221, 22.222780, 19.307003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549801, 22.181976, 19.659651>,  <14.128700, 21.722345, 19.179226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.549801, 22.181976, 19.659651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166850, 22.282024, 19.717440>,  <13.937079, 22.342052, 19.752113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.166850, 22.282024, 19.717440>,  <14.549801, 22.181976, 19.659651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.166850, 22.282024, 19.717440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126630, -0.086108, 0.988206,
		0.259608, 0.964379, 0.050765,
		-0.957376, 0.250118, 0.144474,
		13.879638, 22.357059, 19.760782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579451, 22.731264, 20.208220>,  <14.549801, 22.181976, 19.659651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579451, 22.731264, 20.208220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208224, 22.582325, 20.205366>,  <13.985488, 22.492962, 20.203653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208224, 22.582325, 20.205366>,  <14.579451, 22.731264, 20.208220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.208224, 22.582325, 20.205366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012091, -0.049270, 0.998712,
		-0.372218, 0.926785, 0.050228,
		-0.928067, -0.372346, -0.007133,
		13.929804, 22.470621, 20.203226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268854, 23.149767, 20.613352>,  <14.579451, 22.731264, 20.208220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.268854, 23.149767, 20.613352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066031, 22.805511, 20.594627>,  <13.944338, 22.598957, 20.583393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.066031, 22.805511, 20.594627>,  <14.268854, 23.149767, 20.613352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.066031, 22.805511, 20.594627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209379, -0.175678, 0.961924,
		-0.836094, 0.477950, 0.269279,
		-0.507058, -0.860640, -0.046811,
		13.913914, 22.547319, 20.580584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126983, 23.131348, 21.243340>,  <14.268854, 23.149767, 20.613352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126983, 23.131348, 21.243340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.072747, 22.751774, 21.129402>,  <14.040206, 22.524029, 21.061039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.072747, 22.751774, 21.129402>,  <14.126983, 23.131348, 21.243340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.072747, 22.751774, 21.129402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047129, -0.293350, 0.954843,
		-0.989644, 0.116041, 0.084497,
		-0.135588, -0.948936, -0.284844,
		14.032071, 22.467093, 21.043949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.499566, 22.839918, 21.590521>,  <14.126983, 23.131348, 21.243340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.499566, 22.839918, 21.590521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733722, 22.528084, 21.501467>,  <13.874215, 22.340982, 21.448034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.733722, 22.528084, 21.501467>,  <13.499566, 22.839918, 21.590521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.733722, 22.528084, 21.501467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012985, -0.265551, 0.964010,
		-0.810649, -0.567212, -0.145327,
		0.585389, -0.779586, -0.222634,
		13.909339, 22.294209, 21.434677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.271101, 22.307905, 22.164057>,  <13.499566, 22.839918, 21.590521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.271101, 22.307905, 22.164057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607846, 22.168732, 21.999031>,  <13.809894, 22.085228, 21.900015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607846, 22.168732, 21.999031>,  <13.271101, 22.307905, 22.164057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607846, 22.168732, 21.999031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276309, -0.378792, 0.883272,
		-0.463598, -0.857589, -0.222753,
		0.841861, -0.347934, -0.412567,
		13.860405, 22.064352, 21.875261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.404243, 21.583744, 22.522224>,  <13.271101, 22.307905, 22.164057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.404243, 21.583744, 22.522224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747655, 21.705135, 22.356897>,  <13.953702, 21.777969, 22.257702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747655, 21.705135, 22.356897>,  <13.404243, 21.583744, 22.522224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.747655, 21.705135, 22.356897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508490, -0.399979, 0.762532,
		0.066093, -0.864822, -0.497709,
		0.858527, 0.303478, -0.413318,
		14.005213, 21.796179, 22.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.792925, 21.024780, 22.566181>,  <13.404243, 21.583744, 22.522224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.792925, 21.024780, 22.566181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.036809, 21.341019, 22.543526>,  <14.183140, 21.530762, 22.529932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.036809, 21.341019, 22.543526>,  <13.792925, 21.024780, 22.566181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.036809, 21.341019, 22.543526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461656, -0.296127, 0.836172,
		0.644304, -0.535970, -0.545536,
		0.609710, 0.790598, -0.056638,
		14.219722, 21.578197, 22.526535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.587530, 20.875618, 22.710260>,  <13.792925, 21.024780, 22.566181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.587530, 20.875618, 22.710260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474431, 21.245872, 22.810860>,  <14.406571, 21.468025, 22.871220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474431, 21.245872, 22.810860>,  <14.587530, 20.875618, 22.710260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.474431, 21.245872, 22.810860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317940, -0.156931, 0.935033,
		0.904968, 0.344340, -0.249925,
		-0.282748, 0.925636, 0.251497,
		14.389606, 21.523563, 22.886309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120143, 20.198944, 22.540390>,  <14.587530, 20.875618, 22.710260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120143, 20.198944, 22.540390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180741, 19.812363, 22.623348>,  <14.217100, 19.580414, 22.673122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.180741, 19.812363, 22.623348>,  <14.120143, 20.198944, 22.540390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180741, 19.812363, 22.623348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179675, -0.179397, -0.967230,
		0.971991, 0.183794, 0.146471,
		0.151495, -0.966456, 0.207395,
		14.226190, 19.522427, 22.685566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779997, 20.079344, 22.342056>,  <14.120143, 20.198944, 22.540390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779997, 20.079344, 22.342056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569551, 19.739269, 22.334221>,  <14.443282, 19.535225, 22.329519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569551, 19.739269, 22.334221>,  <14.779997, 20.079344, 22.342056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569551, 19.739269, 22.334221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235650, -0.123615, -0.963944,
		0.817111, -0.511763, 0.265383,
		-0.526116, -0.850187, -0.019590,
		14.411716, 19.484213, 22.328344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278981, 19.668806, 22.017794>,  <14.779997, 20.079344, 22.342056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278981, 19.668806, 22.017794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.907672, 19.530079, 21.964087>,  <14.684887, 19.446842, 21.931862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.907672, 19.530079, 21.964087>,  <15.278981, 19.668806, 22.017794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907672, 19.530079, 21.964087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102228, 0.109171, -0.988752,
		0.357575, -0.931557, -0.065886,
		-0.928272, -0.346818, -0.134268,
		14.629190, 19.426033, 21.923805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352986, 19.074057, 21.557514>,  <15.278981, 19.668806, 22.017794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.352986, 19.074057, 21.557514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978515, 19.213806, 21.541986>,  <14.753832, 19.297655, 21.532669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978515, 19.213806, 21.541986>,  <15.352986, 19.074057, 21.557514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.978515, 19.213806, 21.541986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077233, 0.096695, -0.992313,
		-0.342933, -0.931981, -0.117507,
		-0.936180, 0.349372, -0.038819,
		14.697660, 19.318617, 21.530340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075804, 18.545298, 21.265898>,  <15.352986, 19.074057, 21.557514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075804, 18.545298, 21.265898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825000, 18.854340, 21.226015>,  <14.674518, 19.039764, 21.202085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825000, 18.854340, 21.226015>,  <15.075804, 18.545298, 21.265898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825000, 18.854340, 21.226015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080916, -0.191890, -0.978075,
		-0.774798, -0.605194, 0.182833,
		-0.627009, 0.772605, -0.099706,
		14.636897, 19.086121, 21.196104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568821, 18.316313, 20.778625>,  <15.075804, 18.545298, 21.265898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568821, 18.316313, 20.778625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.553054, 18.715992, 20.775721>,  <14.543593, 18.955799, 20.773977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.553054, 18.715992, 20.775721>,  <14.568821, 18.316313, 20.778625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.553054, 18.715992, 20.775721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084304, -0.003916, -0.996432,
		-0.995660, -0.039890, -0.084082,
		-0.039418, 0.999196, -0.007261,
		14.541228, 19.015751, 20.773542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.056697, 18.465584, 20.346857>,  <14.568821, 18.316313, 20.778625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.056697, 18.465584, 20.346857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.239209, 18.821228, 20.361246>,  <14.348717, 19.034615, 20.369879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.239209, 18.821228, 20.361246>,  <14.056697, 18.465584, 20.346857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.239209, 18.821228, 20.361246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028073, 0.026020, -0.999267,
		-0.889393, 0.456956, -0.013087,
		0.456281, 0.889108, 0.035970,
		14.376094, 19.087961, 20.372038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669093, 18.875015, 19.866051>,  <14.056697, 18.465584, 20.346857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669093, 18.875015, 19.866051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.019177, 19.066608, 19.893120>,  <14.229228, 19.181564, 19.909361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.019177, 19.066608, 19.893120>,  <13.669093, 18.875015, 19.866051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.019177, 19.066608, 19.893120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029948, 0.193277, -0.980687,
		-0.482813, 0.856281, 0.183503,
		0.875211, 0.478985, 0.067672,
		14.281741, 19.210304, 19.913422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.529427, 19.421349, 19.409752>,  <13.669093, 18.875015, 19.866051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.529427, 19.421349, 19.409752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926246, 19.413544, 19.459490>,  <14.164337, 19.408861, 19.489332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.926246, 19.413544, 19.459490>,  <13.529427, 19.421349, 19.409752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926246, 19.413544, 19.459490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120498, 0.432750, -0.893425,
		-0.036377, 0.901303, 0.431660,
		0.992047, -0.019514, 0.124347,
		14.223860, 19.407690, 19.496794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.834532, 20.122734, 19.322071>,  <13.529427, 19.421349, 19.409752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.834532, 20.122734, 19.322071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.120967, 19.856201, 19.238914>,  <14.292828, 19.696281, 19.189020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.120967, 19.856201, 19.238914>,  <13.834532, 20.122734, 19.322071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120967, 19.856201, 19.238914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186009, 0.469231, -0.863263,
		0.672771, 0.579501, 0.459954,
		0.716087, -0.666333, -0.207893,
		14.335793, 19.656301, 19.176546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381720, 20.577602, 19.060459>,  <13.834532, 20.122734, 19.322071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381720, 20.577602, 19.060459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.458138, 20.208256, 18.927256>,  <14.503990, 19.986649, 18.847334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.458138, 20.208256, 18.927256>,  <14.381720, 20.577602, 19.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.458138, 20.208256, 18.927256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094697, 0.355012, -0.930053,
		0.977002, 0.146150, 0.155265,
		0.191048, -0.923367, -0.333008,
		14.515453, 19.931246, 18.827353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929057, 20.728865, 18.497252>,  <14.381720, 20.577602, 19.060459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929057, 20.728865, 18.497252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792994, 20.356705, 18.442633>,  <14.711357, 20.133408, 18.409861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792994, 20.356705, 18.442633>,  <14.929057, 20.728865, 18.497252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792994, 20.356705, 18.442633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054622, 0.164511, -0.984862,
		0.938781, -0.327549, -0.106780,
		-0.340157, -0.930402, -0.136548,
		14.690948, 20.077583, 18.401669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209120, 20.521461, 17.877125>,  <14.929057, 20.728865, 18.497252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209120, 20.521461, 17.877125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886676, 20.290909, 17.930748>,  <14.693210, 20.152576, 17.962923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886676, 20.290909, 17.930748>,  <15.209120, 20.521461, 17.877125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886676, 20.290909, 17.930748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214929, 0.074095, -0.973815,
		0.551357, -0.813814, -0.183610,
		-0.806109, -0.576383, 0.134059,
		14.644843, 20.117994, 17.970966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.399948, 20.063116, 17.429443>,  <15.209120, 20.521461, 17.877125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.399948, 20.063116, 17.429443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006577, 20.061749, 17.501953>,  <14.770555, 20.060928, 17.545460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006577, 20.061749, 17.501953>,  <15.399948, 20.063116, 17.429443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006577, 20.061749, 17.501953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180743, -0.060442, -0.981671,
		0.014310, -0.998166, 0.058822,
		-0.983426, -0.003416, 0.181276,
		14.711550, 20.060722, 17.556335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183383, 19.580166, 17.081991>,  <15.399948, 20.063116, 17.429443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183383, 19.580166, 17.081991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823354, 19.747864, 17.129494>,  <14.607336, 19.848482, 17.157995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823354, 19.747864, 17.129494>,  <15.183383, 19.580166, 17.081991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823354, 19.747864, 17.129494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140512, -0.021278, -0.989850,
		-0.412463, -0.907624, 0.078061,
		-0.900073, 0.419245, 0.118756,
		14.553332, 19.873638, 17.165121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667354, 19.180891, 16.591267>,  <15.183383, 19.580166, 17.081991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667354, 19.180891, 16.591267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545098, 19.548645, 16.690317>,  <14.471745, 19.769297, 16.749748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545098, 19.548645, 16.690317>,  <14.667354, 19.180891, 16.591267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545098, 19.548645, 16.690317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264420, 0.167885, -0.949682,
		-0.914695, -0.355738, 0.191791,
		-0.305639, 0.919383, 0.247628,
		14.453406, 19.824459, 16.764605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944623, 19.221457, 16.341215>,  <14.667354, 19.180891, 16.591267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944623, 19.221457, 16.341215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047877, 19.605782, 16.381630>,  <14.109830, 19.836376, 16.405878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.047877, 19.605782, 16.381630>,  <13.944623, 19.221457, 16.341215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.047877, 19.605782, 16.381630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273586, 0.172998, -0.946162,
		-0.926562, 0.216596, 0.307521,
		0.258136, 0.960811, 0.101036,
		14.125319, 19.894024, 16.411942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.395810, 19.645555, 15.993375>,  <13.944623, 19.221457, 16.341215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.395810, 19.645555, 15.993375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706471, 19.893589, 16.037754>,  <13.892868, 20.042408, 16.064383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706471, 19.893589, 16.037754>,  <13.395810, 19.645555, 15.993375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706471, 19.893589, 16.037754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167346, 0.372897, -0.912657,
		-0.607295, 0.690251, 0.393379,
		0.776652, 0.620082, 0.110948,
		13.939467, 20.079613, 16.071039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.170299, 20.233822, 15.641257>,  <13.395810, 19.645555, 15.993375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.170299, 20.233822, 15.641257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.568738, 20.268784, 15.646154>,  <13.807801, 20.289761, 15.649093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.568738, 20.268784, 15.646154>,  <13.170299, 20.233822, 15.641257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.568738, 20.268784, 15.646154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023164, 0.392762, -0.919348,
		-0.085165, 0.915477, 0.393254,
		0.996098, 0.087406, 0.012244,
		13.867567, 20.295006, 15.649827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265994, 20.863901, 15.381099>,  <13.170299, 20.233822, 15.641257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265994, 20.863901, 15.381099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617021, 20.674725, 15.349588>,  <13.827637, 20.561218, 15.330682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617021, 20.674725, 15.349588>,  <13.265994, 20.863901, 15.381099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617021, 20.674725, 15.349588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022234, 0.204271, -0.978662,
		0.478941, 0.857088, 0.189776,
		0.877565, -0.472941, -0.078777,
		13.880290, 20.532843, 15.325955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.715816, 21.301908, 14.933490>,  <13.265994, 20.863901, 15.381099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.715816, 21.301908, 14.933490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897080, 20.945431, 14.925314>,  <14.005838, 20.731544, 14.920408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897080, 20.945431, 14.925314>,  <13.715816, 21.301908, 14.933490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897080, 20.945431, 14.925314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278315, 0.163228, -0.946519,
		0.846869, 0.423235, 0.322001,
		0.453159, -0.891195, -0.020441,
		14.033029, 20.678072, 14.919182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.353106, 21.443481, 14.641636>,  <13.715816, 21.301908, 14.933490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.353106, 21.443481, 14.641636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.280135, 21.057182, 14.567822>,  <14.236353, 20.825403, 14.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.280135, 21.057182, 14.567822>,  <14.353106, 21.443481, 14.641636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.280135, 21.057182, 14.567822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331208, 0.116356, -0.936356,
		0.925755, -0.231936, 0.298637,
		-0.182426, -0.965747, -0.184536,
		14.225408, 20.767458, 14.512461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733829, 21.313644, 14.052165>,  <14.353106, 21.443481, 14.641636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733829, 21.313644, 14.052165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.520194, 20.975704, 14.064678>,  <14.392013, 20.772940, 14.072186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.520194, 20.975704, 14.064678>,  <14.733829, 21.313644, 14.052165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520194, 20.975704, 14.064678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135025, -0.121768, -0.983332,
		0.834577, -0.520962, 0.179111,
		-0.534088, -0.844850, 0.031282,
		14.359967, 20.722250, 14.074062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.134656, 20.808516, 13.599041>,  <14.733829, 21.313644, 14.052165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.134656, 20.808516, 13.599041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744691, 20.733864, 13.647564>,  <14.510712, 20.689072, 13.676678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744691, 20.733864, 13.647564>,  <15.134656, 20.808516, 13.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744691, 20.733864, 13.647564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106625, -0.086836, -0.990500,
		0.195393, -0.978585, 0.064758,
		-0.974911, -0.186632, 0.121308,
		14.452217, 20.677874, 13.683956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.024514, 20.269220, 13.157115>,  <15.134656, 20.808516, 13.599041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.024514, 20.269220, 13.157115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674867, 20.454647, 13.215113>,  <14.465078, 20.565903, 13.249911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674867, 20.454647, 13.215113>,  <15.024514, 20.269220, 13.157115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674867, 20.454647, 13.215113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239425, -0.151508, -0.959021,
		-0.422602, -0.873013, 0.243425,
		-0.874119, 0.463566, 0.144993,
		14.412631, 20.593718, 13.258611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668512, 20.099922, 12.655325>,  <15.024514, 20.269220, 13.157115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668512, 20.099922, 12.655325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393270, 20.374985, 12.747967>,  <14.228124, 20.540022, 12.803552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.393270, 20.374985, 12.747967>,  <14.668512, 20.099922, 12.655325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.393270, 20.374985, 12.747967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171709, 0.155804, -0.972749,
		-0.705001, -0.709123, 0.010867,
		-0.688106, 0.687655, 0.231605,
		14.186838, 20.581282, 12.817449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918543, 19.933289, 12.700445>,  <14.668512, 20.099922, 12.655325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918543, 19.933289, 12.700445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974444, 20.314175, 12.591810>,  <14.007985, 20.542706, 12.526629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.974444, 20.314175, 12.591810>,  <13.918543, 19.933289, 12.700445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974444, 20.314175, 12.591810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342486, -0.210865, -0.915554,
		-0.929070, 0.220967, 0.296651,
		0.139754, 0.952213, -0.271586,
		14.016371, 20.599838, 12.510334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.263684, 20.237694, 12.599464>,  <13.918543, 19.933289, 12.700445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.263684, 20.237694, 12.599464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559051, 20.418961, 12.399712>,  <13.736270, 20.527721, 12.279860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559051, 20.418961, 12.399712>,  <13.263684, 20.237694, 12.599464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559051, 20.418961, 12.399712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463909, -0.196093, -0.863907,
		-0.489419, 0.869591, 0.065430,
		0.738415, 0.453166, -0.499383,
		13.780575, 20.554911, 12.249897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884957, 20.670950, 12.074432>,  <13.263684, 20.237694, 12.599464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.884957, 20.670950, 12.074432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.264216, 20.661934, 11.947619>,  <13.491772, 20.656525, 11.871531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.264216, 20.661934, 11.947619>,  <12.884957, 20.670950, 12.074432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.264216, 20.661934, 11.947619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308766, -0.301870, -0.901963,
		-0.075374, 0.953083, -0.293177,
		0.948147, -0.022538, -0.317033,
		13.548660, 20.655172, 11.852509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.835899, 20.993904, 11.442909>,  <12.884957, 20.670950, 12.074432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.835899, 20.993904, 11.442909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182082, 20.794521, 11.422822>,  <13.389792, 20.674891, 11.410769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182082, 20.794521, 11.422822>,  <12.835899, 20.993904, 11.442909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182082, 20.794521, 11.422822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178632, -0.213387, -0.960498,
		0.468053, 0.840240, -0.273719,
		0.865457, -0.498459, -0.050217,
		13.441719, 20.644983, 11.407757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.190262, 21.205969, 10.852550>,  <12.835899, 20.993904, 11.442909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.190262, 21.205969, 10.852550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.365153, 20.852772, 10.920845>,  <13.470088, 20.640854, 10.961823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.365153, 20.852772, 10.920845>,  <13.190262, 21.205969, 10.852550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.365153, 20.852772, 10.920845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032710, -0.205334, -0.978145,
		0.898755, 0.422088, -0.118661,
		0.437229, -0.882995, 0.170738,
		13.496322, 20.587873, 10.972067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.555855, 20.971390, 10.193571>,  <13.190262, 21.205969, 10.852550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.555855, 20.971390, 10.193571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511052, 20.628872, 10.395248>,  <13.484171, 20.423361, 10.516254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511052, 20.628872, 10.395248>,  <13.555855, 20.971390, 10.193571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511052, 20.628872, 10.395248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275401, -0.460761, -0.843714,
		0.954782, -0.233357, -0.184217,
		-0.112006, -0.856297, 0.504193,
		13.477450, 20.371983, 10.546506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.954654, 20.485418, 9.843231>,  <13.555855, 20.971390, 10.193571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.954654, 20.485418, 9.843231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.701005, 20.267578, 10.062794>,  <13.548816, 20.136873, 10.194531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.701005, 20.267578, 10.062794>,  <13.954654, 20.485418, 9.843231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.701005, 20.267578, 10.062794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084713, -0.656681, -0.749396,
		0.768580, -0.521707, 0.370280,
		-0.634121, -0.544603, 0.548907,
		13.510769, 20.104197, 10.227466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227287, 19.800413, 9.867036>,  <13.954654, 20.485418, 9.843231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227287, 19.800413, 9.867036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837661, 19.775520, 9.954052>,  <13.603885, 19.760586, 10.006262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.837661, 19.775520, 9.954052>,  <14.227287, 19.800413, 9.867036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837661, 19.775520, 9.954052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106365, -0.722641, -0.682991,
		0.199707, -0.688417, 0.697280,
		-0.974066, -0.062231, 0.217540,
		13.545441, 19.756851, 10.019314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135829, 19.144424, 9.664824>,  <14.227287, 19.800413, 9.867036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135829, 19.144424, 9.664824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.757867, 19.271973, 9.694427>,  <13.531090, 19.348501, 9.712190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.757867, 19.271973, 9.694427>,  <14.135829, 19.144424, 9.664824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.757867, 19.271973, 9.694427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292277, -0.720023, -0.629397,
		-0.147408, -0.616351, 0.773551,
		-0.944905, 0.318869, 0.074008,
		13.474396, 19.367634, 9.716630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699836, 18.628832, 9.698377>,  <14.135829, 19.144424, 9.664824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699836, 18.628832, 9.698377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.448806, 18.921280, 9.591333>,  <13.298187, 19.096748, 9.527107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.448806, 18.921280, 9.591333>,  <13.699836, 18.628832, 9.698377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448806, 18.921280, 9.591333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553249, -0.660628, -0.507430,
		-0.547781, -0.170397, 0.819085,
		-0.627576, 0.731119, -0.267607,
		13.260533, 19.140615, 9.511051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021588, 18.449459, 9.873759>,  <13.699836, 18.628832, 9.698377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.021588, 18.449459, 9.873759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996583, 18.718662, 9.578964>,  <12.981580, 18.880184, 9.402087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.996583, 18.718662, 9.578964>,  <13.021588, 18.449459, 9.873759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.996583, 18.718662, 9.578964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543965, -0.642088, -0.540208,
		-0.836776, 0.367125, 0.406233,
		-0.062514, 0.673010, -0.736987,
		12.977829, 18.920565, 9.357868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340120, 18.406656, 9.704251>,  <13.021588, 18.449459, 9.873759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340120, 18.406656, 9.704251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.526168, 18.585842, 9.398836>,  <12.637796, 18.693354, 9.215587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.526168, 18.585842, 9.398836>,  <12.340120, 18.406656, 9.704251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.526168, 18.585842, 9.398836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452010, -0.621424, -0.639937,
		-0.761150, 0.642774, -0.086551,
		0.465120, 0.447966, -0.763538,
		12.665704, 18.720232, 9.169775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.882049, 18.480839, 9.140638>,  <12.340120, 18.406656, 9.704251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.882049, 18.480839, 9.140638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236165, 18.485851, 8.954690>,  <12.448635, 18.488859, 8.843122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236165, 18.485851, 8.954690>,  <11.882049, 18.480839, 9.140638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.236165, 18.485851, 8.954690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338404, -0.668298, -0.662466,
		-0.318972, 0.743788, -0.587397,
		0.885291, 0.012530, -0.464870,
		12.501752, 18.489611, 8.815229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.672973, 18.481890, 8.427843>,  <11.882049, 18.480839, 9.140638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.672973, 18.481890, 8.427843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058084, 18.374275, 8.438290>,  <12.289150, 18.309708, 8.444557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058084, 18.374275, 8.438290>,  <11.672973, 18.481890, 8.427843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.058084, 18.374275, 8.438290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119755, -0.511180, -0.851090,
		0.242323, 0.816281, -0.524370,
		0.962776, -0.269035, 0.026117,
		12.346916, 18.293564, 8.446125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.812544, 18.624287, 7.745386>,  <11.672973, 18.481890, 8.427843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.812544, 18.624287, 7.745386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020139, 18.344879, 7.942453>,  <12.144695, 18.177235, 8.060694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020139, 18.344879, 7.942453>,  <11.812544, 18.624287, 7.745386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020139, 18.344879, 7.942453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106185, -0.624587, -0.773703,
		0.848161, 0.349227, -0.398325,
		0.518987, -0.698520, 0.492668,
		12.175835, 18.135323, 8.090254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.334335, 18.370028, 7.286549>,  <11.812544, 18.624287, 7.745386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.334335, 18.370028, 7.286549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.232640, 18.097031, 7.560649>,  <12.171623, 17.933233, 7.725109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.232640, 18.097031, 7.560649>,  <12.334335, 18.370028, 7.286549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.232640, 18.097031, 7.560649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174326, -0.664589, -0.726590,
		0.951301, -0.304183, 0.049987,
		-0.254237, -0.682491, 0.685251,
		12.156369, 17.892282, 7.766224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628621, 17.709480, 7.044836>,  <12.334335, 18.370028, 7.286549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.628621, 17.709480, 7.044836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303035, 17.605049, 7.252411>,  <12.107683, 17.542391, 7.376956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303035, 17.605049, 7.252411>,  <12.628621, 17.709480, 7.044836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303035, 17.605049, 7.252411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318443, -0.546601, -0.774481,
		0.485852, -0.795654, 0.361777,
		-0.813967, -0.261078, 0.518938,
		12.058845, 17.526726, 7.408092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.499384, 16.955513, 7.071874>,  <12.628621, 17.709480, 7.044836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.499384, 16.955513, 7.071874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155309, 17.154835, 7.115270>,  <11.948864, 17.274427, 7.141307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.155309, 17.154835, 7.115270>,  <12.499384, 16.955513, 7.071874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.155309, 17.154835, 7.115270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406901, -0.542377, -0.735023,
		-0.307423, -0.676402, 0.669307,
		-0.860188, 0.498305, 0.108489,
		11.897252, 17.304327, 7.147816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969279, 16.409323, 7.166331>,  <12.499384, 16.955513, 7.071874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.969279, 16.409323, 7.166331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809697, 16.755085, 7.043931>,  <11.713948, 16.962543, 6.970491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.809697, 16.755085, 7.043931>,  <11.969279, 16.409323, 7.166331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.809697, 16.755085, 7.043931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471469, -0.479588, -0.740076,
		-0.786481, -0.150986, 0.598874,
		-0.398954, 0.864407, -0.306001,
		11.690011, 17.014406, 6.952131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.507913, 16.232536, 6.743015>,  <11.969279, 16.409323, 7.166331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.507913, 16.232536, 6.743015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.497846, 16.625294, 6.667912>,  <11.491806, 16.860949, 6.622851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.497846, 16.625294, 6.667912>,  <11.507913, 16.232536, 6.743015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.497846, 16.625294, 6.667912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603580, -0.164644, -0.780118,
		-0.796905, 0.093693, 0.596794,
		-0.025167, 0.981893, -0.187757,
		11.490295, 16.919861, 6.611586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873888, 16.561136, 6.900585>,  <11.507913, 16.232536, 6.743015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873888, 16.561136, 6.900585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055369, 16.748779, 6.597509>,  <11.164258, 16.861364, 6.415664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.055369, 16.748779, 6.597509>,  <10.873888, 16.561136, 6.900585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.055369, 16.748779, 6.597509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816261, -0.122413, -0.564565,
		-0.357593, 0.874616, 0.327375,
		0.453702, 0.469108, -0.757689,
		11.191480, 16.889511, 6.370203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.484843, 17.224852, 6.763449>,  <10.873888, 16.561136, 6.900585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.484843, 17.224852, 6.763449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114697, 17.108150, 6.860264>,  <9.892610, 17.038130, 6.918353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.114697, 17.108150, 6.860264>,  <10.484843, 17.224852, 6.763449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.114697, 17.108150, 6.860264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199276, -0.168762, -0.965302,
		0.322476, -0.941488, 0.098027,
		-0.925364, -0.291752, 0.242038,
		9.837089, 17.020626, 6.932875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.281282, 16.688713, 6.258256>,  <10.484843, 17.224852, 6.763449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.281282, 16.688713, 6.258256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.940740, 16.845692, 6.397498>,  <9.736414, 16.939878, 6.481043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.940740, 16.845692, 6.397498>,  <10.281282, 16.688713, 6.258256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.940740, 16.845692, 6.397498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418893, -0.109129, -0.901454,
		-0.315784, -0.913278, 0.257301,
		-0.851357, 0.392446, 0.348104,
		9.685332, 16.963425, 6.501929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691023, 16.192966, 6.258394>,  <10.281282, 16.688713, 6.258256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691023, 16.192966, 6.258394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.609378, 16.577747, 6.185750>,  <9.560390, 16.808617, 6.142163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.609378, 16.577747, 6.185750>,  <9.691023, 16.192966, 6.258394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.609378, 16.577747, 6.185750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460313, -0.258039, -0.849428,
		-0.863973, -0.089782, 0.495469,
		-0.204114, 0.961954, -0.181611,
		9.548143, 16.866333, 6.131267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.935655, 16.319048, 6.380048>,  <9.691023, 16.192966, 6.258394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.935655, 16.319048, 6.380048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.146014, 16.495934, 6.089427>,  <9.272230, 16.602064, 5.915055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.146014, 16.495934, 6.089427>,  <8.935655, 16.319048, 6.380048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.146014, 16.495934, 6.089427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557404, -0.466026, -0.687110,
		-0.642442, 0.766333, 0.001409,
		0.525899, 0.442214, -0.726552,
		9.303783, 16.628597, 5.871461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.562250, 16.656294, 5.857722>,  <8.935655, 16.319048, 6.380048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.562250, 16.656294, 5.857722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.913875, 16.532684, 5.712531>,  <9.124849, 16.458519, 5.625416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.913875, 16.532684, 5.712531>,  <8.562250, 16.656294, 5.857722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.913875, 16.532684, 5.712531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474276, -0.490145, -0.731314,
		0.048083, 0.815022, -0.577432,
		0.879062, -0.309026, -0.362978,
		9.177593, 16.439976, 5.603638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.570132, 16.817646, 5.128431>,  <8.562250, 16.656294, 5.857722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.570132, 16.817646, 5.128431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.834645, 16.524883, 5.194183>,  <8.993353, 16.349226, 5.233634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.834645, 16.524883, 5.194183>,  <8.570132, 16.817646, 5.128431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.834645, 16.524883, 5.194183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427018, -0.547451, -0.719689,
		0.616734, 0.405725, -0.674556,
		0.661283, -0.731905, 0.164380,
		9.033031, 16.305311, 5.243497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881908, 16.605448, 4.489641>,  <8.570132, 16.817646, 5.128431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881908, 16.605448, 4.489641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886907, 16.310699, 4.760009>,  <8.889906, 16.133850, 4.922230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886907, 16.310699, 4.760009>,  <8.881908, 16.605448, 4.489641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.886907, 16.310699, 4.760009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532087, -0.577222, -0.619434,
		0.846598, -0.351908, -0.399291,
		0.012496, -0.736869, 0.675921,
		8.890656, 16.089640, 4.962786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.177276, 15.901642, 4.185979>,  <8.881908, 16.605448, 4.489641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.177276, 15.901642, 4.185979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.907359, 15.894394, 4.481094>,  <8.745409, 15.890045, 4.658163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.907359, 15.894394, 4.481094>,  <9.177276, 15.901642, 4.185979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.907359, 15.894394, 4.481094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654875, -0.446247, -0.609920,
		0.340286, -0.894726, 0.289258,
		-0.674792, -0.018119, 0.737786,
		8.704922, 15.888958, 4.702430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.842158, 15.178237, 4.206970>,  <9.177276, 15.901642, 4.185979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.842158, 15.178237, 4.206970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.601180, 15.445095, 4.382231>,  <8.456594, 15.605209, 4.487388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.601180, 15.445095, 4.382231>,  <8.842158, 15.178237, 4.206970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.601180, 15.445095, 4.382231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789676, -0.418375, -0.448747,
		-0.116066, -0.616345, 0.778876,
		-0.602445, 0.667144, 0.438153,
		8.420446, 15.645239, 4.513677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.260105, 14.861739, 4.429417>,  <8.842158, 15.178237, 4.206970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.260105, 14.861739, 4.429417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.158511, 15.237862, 4.338806>,  <8.097555, 15.463535, 4.284440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.158511, 15.237862, 4.338806>,  <8.260105, 14.861739, 4.429417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.158511, 15.237862, 4.338806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848034, -0.329122, -0.415350,
		-0.465112, 0.086611, 0.881005,
		-0.253984, 0.940307, -0.226528,
		8.082316, 15.519954, 4.270848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.663797, 15.000930, 4.739426>,  <8.260105, 14.861739, 4.429417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.663797, 15.000930, 4.739426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.714288, 15.205460, 4.399399>,  <7.744582, 15.328177, 4.195383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.714288, 15.205460, 4.399399>,  <7.663797, 15.000930, 4.739426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.714288, 15.205460, 4.399399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847323, -0.390040, -0.360433,
		-0.515859, 0.765777, 0.384025,
		0.126226, 0.511325, -0.850067,
		7.752156, 15.358857, 4.144379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.070405, 15.434258, 4.679790>,  <7.663797, 15.000930, 4.739426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.070405, 15.434258, 4.679790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.231538, 15.285267, 4.345369>,  <7.328218, 15.195872, 4.144716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.231538, 15.285267, 4.345369>,  <7.070405, 15.434258, 4.679790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.231538, 15.285267, 4.345369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868364, -0.444215, -0.220494,
		-0.289259, 0.814820, -0.502392,
		0.402833, -0.372479, -0.836053,
		7.352387, 15.173523, 4.094553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.887032, 15.596270, 5.317389>,  <7.070405, 15.434258, 4.679790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.887032, 15.596270, 5.317389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.148377, 15.296810, 5.362360>,  <7.305185, 15.117134, 5.389343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.148377, 15.296810, 5.362360>,  <6.887032, 15.596270, 5.317389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.148377, 15.296810, 5.362360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619441, 0.614053, 0.489113,
		-0.435211, -0.249926, 0.864944,
		0.653364, -0.748649, 0.112428,
		7.344387, 15.072215, 5.396089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.117293, 15.585404, 6.031342>,  <6.887032, 15.596270, 5.317389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.117293, 15.585404, 6.031342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410342, 15.459759, 5.789815>,  <7.586172, 15.384372, 5.644898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410342, 15.459759, 5.789815>,  <7.117293, 15.585404, 6.031342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.410342, 15.459759, 5.789815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626819, 0.657109, 0.418695,
		0.265256, -0.685230, 0.678305,
		0.732623, -0.314113, -0.603818,
		7.630129, 15.365524, 5.608669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.735177, 15.367548, 6.460262>,  <7.117293, 15.585404, 6.031342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.735177, 15.367548, 6.460262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.812285, 15.498177, 6.090139>,  <7.858551, 15.576553, 5.868066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.812285, 15.498177, 6.090139>,  <7.735177, 15.367548, 6.460262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.812285, 15.498177, 6.090139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716747, 0.597172, 0.360083,
		0.670159, -0.732624, -0.118952,
		0.192770, 0.326571, -0.925306,
		7.870117, 15.596148, 5.812548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.452759, 15.333179, 6.420102>,  <7.735177, 15.367548, 6.460262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.452759, 15.333179, 6.420102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.315761, 15.599430, 6.154881>,  <8.233562, 15.759181, 5.995749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.315761, 15.599430, 6.154881>,  <8.452759, 15.333179, 6.420102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.315761, 15.599430, 6.154881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792137, 0.584065, 0.177162,
		0.505189, -0.464550, -0.727308,
		-0.342494, 0.665629, -0.663051,
		8.213013, 15.799119, 5.955966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.972542, 15.547764, 5.791957>,  <8.452759, 15.333179, 6.420102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.972542, 15.547764, 5.791957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720832, 15.844307, 5.885253>,  <8.569806, 16.022232, 5.941230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720832, 15.844307, 5.885253>,  <8.972542, 15.547764, 5.791957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.720832, 15.844307, 5.885253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776053, 0.583224, 0.239982,
		0.041882, 0.332021, -0.942342,
		-0.629276, 0.741358, 0.233239,
		8.532049, 16.066715, 5.955225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.612052, 15.077509, 5.820302>,  <8.972542, 15.547764, 5.791957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.612052, 15.077509, 5.820302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.545476, 14.978935, 5.438397>,  <9.505530, 14.919791, 5.209255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.545476, 14.978935, 5.438397>,  <9.612052, 15.077509, 5.820302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.545476, 14.978935, 5.438397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920479, 0.308370, -0.240057,
		0.353578, -0.918792, 0.175513,
		-0.166439, -0.246435, -0.954761,
		9.495544, 14.905005, 5.151969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.212881, 14.918799, 5.498713>,  <9.612052, 15.077509, 5.820302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.212881, 14.918799, 5.498713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.016360, 14.953339, 5.152034>,  <9.898448, 14.974062, 4.944026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.016360, 14.953339, 5.152034>,  <10.212881, 14.918799, 5.498713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.016360, 14.953339, 5.152034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867819, -0.036287, -0.495554,
		-0.074241, -0.995604, -0.057107,
		-0.491303, 0.086349, -0.866698,
		9.868969, 14.979243, 4.892025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.358603, 14.282079, 5.029934>,  <10.212881, 14.918799, 5.498713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.358603, 14.282079, 5.029934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269313, 14.625805, 4.845870>,  <10.215739, 14.832041, 4.735431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.269313, 14.625805, 4.845870>,  <10.358603, 14.282079, 5.029934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.269313, 14.625805, 4.845870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862364, -0.045979, -0.504196,
		-0.454421, -0.509376, -0.730779,
		-0.223225, 0.859315, -0.460161,
		10.202345, 14.883599, 4.707821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.555020, 14.224175, 4.337585>,  <10.358603, 14.282079, 5.029934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.555020, 14.224175, 4.337585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.561532, 14.613113, 4.430779>,  <10.565439, 14.846477, 4.486694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.561532, 14.613113, 4.430779>,  <10.555020, 14.224175, 4.337585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.561532, 14.613113, 4.430779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953695, 0.054893, -0.295725,
		-0.300335, 0.227009, -0.926426,
		0.016278, 0.972345, 0.232983,
		10.566416, 14.904817, 4.500673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.161910, 14.391060, 4.876258>,  <10.555020, 14.224175, 4.337585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.161910, 14.391060, 4.876258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.418025, 14.507015, 4.591724>,  <11.571693, 14.576589, 4.421003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.418025, 14.507015, 4.591724>,  <11.161910, 14.391060, 4.876258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.418025, 14.507015, 4.591724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468198, 0.586859, 0.660596,
		0.608955, -0.756015, 0.240031,
		0.640285, 0.289891, -0.711336,
		11.610111, 14.593982, 4.378324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.890380, 14.307742, 5.111711>,  <11.161910, 14.391060, 4.876258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.890380, 14.307742, 5.111711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.861150, 14.590313, 4.830110>,  <11.843612, 14.759855, 4.661149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.861150, 14.590313, 4.830110>,  <11.890380, 14.307742, 5.111711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.861150, 14.590313, 4.830110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523593, 0.627961, 0.575774,
		0.848829, -0.326537, -0.415768,
		-0.073075, 0.706427, -0.704004,
		11.839228, 14.802241, 4.618908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568297, 14.654095, 4.857393>,  <11.890380, 14.307742, 5.111711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568297, 14.654095, 4.857393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248355, 14.893620, 4.873673>,  <12.056390, 15.037334, 4.883441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248355, 14.893620, 4.873673>,  <12.568297, 14.654095, 4.857393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248355, 14.893620, 4.873673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546057, 0.697891, 0.463432,
		0.249104, 0.392903, -0.885197,
		-0.799855, 0.598811, 0.040700,
		12.008398, 15.073263, 4.885883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.319008, 13.908974, 4.492291>,  <12.568297, 14.654095, 4.857393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.319008, 13.908974, 4.492291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314921, 13.599163, 4.745275>,  <12.312469, 13.413277, 4.897064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314921, 13.599163, 4.745275>,  <12.319008, 13.908974, 4.492291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314921, 13.599163, 4.745275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764750, -0.401449, -0.503981,
		0.644246, -0.488820, -0.588219,
		-0.010216, -0.774528, 0.632457,
		12.311856, 13.366805, 4.935012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.689648, 14.276613, 3.842514>,  <12.319008, 13.908974, 4.492291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.689648, 14.276613, 3.842514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.361541, 14.497478, 3.782809>,  <12.164677, 14.629997, 3.746987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.361541, 14.497478, 3.782809>,  <12.689648, 14.276613, 3.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.361541, 14.497478, 3.782809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422696, -0.760982, -0.492173,
		-0.385345, -0.340622, 0.857605,
		-0.820267, 0.552163, -0.149261,
		12.115460, 14.663127, 3.738031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.448872, 14.055928, 3.937952>,  <12.689648, 14.276613, 3.842514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.448872, 14.055928, 3.937952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151238, 13.789085, 3.952418>,  <12.972658, 13.628980, 3.961098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.151238, 13.789085, 3.952418>,  <13.448872, 14.055928, 3.937952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.151238, 13.789085, 3.952418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040669, 0.008804, 0.999134,
		-0.666849, 0.744909, 0.020580,
		-0.744083, -0.667108, 0.036165,
		12.928014, 13.588953, 3.963268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006861, 13.533917, 3.771917>,  <13.448872, 14.055928, 3.937952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006861, 13.533917, 3.771917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374448, 13.484100, 3.921577>,  <14.595000, 13.454210, 4.011374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.374448, 13.484100, 3.921577>,  <14.006861, 13.533917, 3.771917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374448, 13.484100, 3.921577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365635, -0.624464, 0.690185,
		0.147686, -0.771060, -0.619399,
		0.918967, -0.124543, 0.374151,
		14.650138, 13.446737, 4.033823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.368992, 18.145430, 17.174671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.648823, 18.426388, 17.122169>,  <17.816721, 18.594963, 17.090668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.648823, 18.426388, 17.122169>,  <17.368992, 18.145430, 17.174671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648823, 18.426388, 17.122169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281722, 0.102315, -0.954025,
		-0.656675, 0.704393, 0.269458,
		0.699579, 0.702397, -0.131255,
		17.858696, 18.637108, 17.082792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998177, 18.632450, 16.851353>,  <17.368992, 18.145430, 17.174671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998177, 18.632450, 16.851353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.385906, 18.715607, 16.798904>,  <17.618544, 18.765501, 16.767435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.385906, 18.715607, 16.798904>,  <16.998177, 18.632450, 16.851353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385906, 18.715607, 16.798904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135360, 0.006246, -0.990777,
		-0.205155, 0.978132, 0.034195,
		0.969324, 0.207892, -0.131119,
		17.676702, 18.777975, 16.759569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904844, 19.213936, 16.573660>,  <16.998177, 18.632450, 16.851353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904844, 19.213936, 16.573660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.273972, 19.078781, 16.499645>,  <17.495447, 18.997688, 16.455236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.273972, 19.078781, 16.499645>,  <16.904844, 19.213936, 16.573660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273972, 19.078781, 16.499645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158088, 0.105863, -0.981734,
		0.351305, 0.935214, 0.044276,
		0.922818, -0.337888, -0.185036,
		17.550817, 18.977415, 16.444134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273085, 19.694565, 16.120771>,  <16.904844, 19.213936, 16.573660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273085, 19.694565, 16.120771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.476166, 19.354420, 16.065456>,  <17.598015, 19.150333, 16.032267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.476166, 19.354420, 16.065456>,  <17.273085, 19.694565, 16.120771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.476166, 19.354420, 16.065456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065790, 0.198315, -0.977928,
		0.859018, 0.487397, 0.156630,
		0.507701, -0.850362, -0.138290,
		17.628475, 19.099312, 16.023970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776152, 19.860201, 15.750417>,  <17.273085, 19.694565, 16.120771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776152, 19.860201, 15.750417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.801224, 19.465424, 15.691065>,  <17.816267, 19.228558, 15.655454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.801224, 19.465424, 15.691065>,  <17.776152, 19.860201, 15.750417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.801224, 19.465424, 15.691065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032906, 0.150634, -0.988042,
		0.997491, 0.057046, 0.041918,
		0.062678, -0.986942, -0.148379,
		17.820026, 19.169340, 15.646551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.322569, 19.694416, 15.271018>,  <17.776152, 19.860201, 15.750417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.322569, 19.694416, 15.271018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.098675, 19.363491, 15.252066>,  <17.964338, 19.164936, 15.240694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.098675, 19.363491, 15.252066>,  <18.322569, 19.694416, 15.271018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098675, 19.363491, 15.252066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049418, 0.023749, -0.998496,
		0.827195, -0.561237, 0.027591,
		-0.559737, -0.827314, -0.047380,
		17.930754, 19.115297, 15.237851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625914, 19.355482, 14.783041>,  <18.322569, 19.694416, 15.271018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625914, 19.355482, 14.783041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.276230, 19.162876, 14.808031>,  <18.066420, 19.047312, 14.823026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.276230, 19.162876, 14.808031>,  <18.625914, 19.355482, 14.783041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.276230, 19.162876, 14.808031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004274, -0.121034, -0.992639,
		0.485534, -0.868040, 0.103751,
		-0.874207, -0.481516, 0.062476,
		18.013968, 19.018421, 14.826774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.697491, 18.821964, 14.330738>,  <18.625914, 19.355482, 14.783041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.697491, 18.821964, 14.330738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.306351, 18.891922, 14.376730>,  <18.071667, 18.933897, 14.404325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.306351, 18.891922, 14.376730>,  <18.697491, 18.821964, 14.330738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306351, 18.891922, 14.376730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123593, -0.039152, -0.991560,
		-0.168917, -0.983808, 0.059900,
		-0.977851, 0.174895, 0.114979,
		18.012995, 18.944391, 14.411223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445860, 18.283268, 13.933667>,  <18.697491, 18.821964, 14.330738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445860, 18.283268, 13.933667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.157864, 18.556583, 13.982206>,  <17.985065, 18.720573, 14.011330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.157864, 18.556583, 13.982206>,  <18.445860, 18.283268, 13.933667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157864, 18.556583, 13.982206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250061, -0.092325, -0.963818,
		-0.647365, -0.724286, 0.237338,
		-0.719992, 0.683291, 0.121347,
		17.941866, 18.761570, 14.018611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807671, 18.022474, 13.647411>,  <18.445860, 18.283268, 13.933667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807671, 18.022474, 13.647411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.767132, 18.420414, 13.648245>,  <17.742809, 18.659178, 13.648746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.767132, 18.420414, 13.648245>,  <17.807671, 18.022474, 13.647411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767132, 18.420414, 13.648245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446031, -0.043564, -0.893957,
		-0.889261, -0.091529, 0.448149,
		-0.101346, 0.994849, 0.002085,
		17.736729, 18.718868, 13.648870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113985, 18.063824, 13.582267>,  <17.807671, 18.022474, 13.647411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.113985, 18.063824, 13.582267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.251011, 18.423660, 13.473909>,  <17.333227, 18.639563, 13.408895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.251011, 18.423660, 13.473909>,  <17.113985, 18.063824, 13.582267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251011, 18.423660, 13.473909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583893, -0.022028, -0.811532,
		-0.736015, 0.436176, 0.517719,
		0.342566, 0.899592, -0.270893,
		17.353781, 18.693539, 13.392641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521990, 18.500509, 13.343315>,  <17.113985, 18.063824, 13.582267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521990, 18.500509, 13.343315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.846321, 18.658558, 13.170601>,  <17.040920, 18.753387, 13.066972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.846321, 18.658558, 13.170601>,  <16.521990, 18.500509, 13.343315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846321, 18.658558, 13.170601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454115, -0.040714, -0.890013,
		-0.369243, 0.917726, 0.146419,
		0.810827, 0.395121, -0.431786,
		17.089569, 18.777094, 13.041065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227415, 19.043959, 12.902506>,  <16.521990, 18.500509, 13.343315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227415, 19.043959, 12.902506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.599335, 19.005508, 12.760389>,  <16.822487, 18.982439, 12.675119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.599335, 19.005508, 12.760389>,  <16.227415, 19.043959, 12.902506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599335, 19.005508, 12.760389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340961, 0.138630, -0.929800,
		0.138630, 0.985668, 0.096124,
		0.929800, -0.096124, -0.355292,
		16.878275, 18.976671, 12.653802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434792, 19.655804, 12.498298>,  <16.227415, 19.043959, 12.902506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434792, 19.655804, 12.498298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.674446, 19.359592, 12.376539>,  <16.818239, 19.181866, 12.303484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.674446, 19.359592, 12.376539>,  <16.434792, 19.655804, 12.498298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674446, 19.359592, 12.376539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372059, 0.079134, -0.924830,
		0.708948, 0.667352, -0.228107,
		0.599136, -0.740526, -0.304396,
		16.854187, 19.137434, 12.285220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.797213, 19.711386, 11.789514>,  <16.434792, 19.655804, 12.498298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.797213, 19.711386, 11.789514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.815491, 19.316498, 11.850579>,  <16.826458, 19.079565, 11.887218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.815491, 19.316498, 11.850579>,  <16.797213, 19.711386, 11.789514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.815491, 19.316498, 11.850579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359314, -0.158837, -0.919600,
		0.932097, -0.012835, -0.361980,
		0.045693, -0.987222, 0.152663,
		16.829199, 19.020332, 11.896379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930492, 19.641996, 11.120337>,  <16.797213, 19.711386, 11.789514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930492, 19.641996, 11.120337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.806374, 19.292759, 11.270760>,  <16.731903, 19.083216, 11.361013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.806374, 19.292759, 11.270760>,  <16.930492, 19.641996, 11.120337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806374, 19.292759, 11.270760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441308, -0.218080, -0.870453,
		0.841999, -0.436057, -0.317634,
		-0.310297, -0.873095, 0.376058,
		16.713284, 19.030830, 11.383577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.988398, 19.192566, 10.545114>,  <16.930492, 19.641996, 11.120337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.988398, 19.192566, 10.545114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.773418, 18.975555, 10.803359>,  <16.644432, 18.845350, 10.958306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.773418, 18.975555, 10.803359>,  <16.988398, 19.192566, 10.545114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773418, 18.975555, 10.803359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475218, -0.437605, -0.763328,
		0.696649, -0.717056, -0.022628,
		-0.537446, -0.542524, 0.645615,
		16.612185, 18.812798, 10.997044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049538, 18.468834, 10.326259>,  <16.988398, 19.192566, 10.545114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049538, 18.468834, 10.326259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.695267, 18.523426, 10.503775>,  <16.482704, 18.556181, 10.610284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.695267, 18.523426, 10.503775>,  <17.049538, 18.468834, 10.326259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.695267, 18.523426, 10.503775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453035, -0.463309, -0.761646,
		0.101663, -0.875625, 0.472172,
		-0.885677, 0.136479, 0.443790,
		16.429564, 18.564369, 10.636911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745579, 17.871735, 10.302302>,  <17.049538, 18.468834, 10.326259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745579, 17.871735, 10.302302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.444641, 18.133110, 10.335761>,  <16.264078, 18.289936, 10.355836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.444641, 18.133110, 10.335761>,  <16.745579, 17.871735, 10.302302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444641, 18.133110, 10.335761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546185, -0.547727, -0.633780,
		-0.368320, -0.522507, 0.768977,
		-0.752345, 0.653438, 0.083647,
		16.218937, 18.329142, 10.360855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170815, 17.508360, 10.256995>,  <16.745579, 17.871735, 10.302302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170815, 17.508360, 10.256995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.015316, 17.870090, 10.186488>,  <15.922016, 18.087130, 10.144184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.015316, 17.870090, 10.186488>,  <16.170815, 17.508360, 10.256995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.015316, 17.870090, 10.186488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509054, -0.370282, -0.777017,
		-0.767945, -0.212334, 0.604297,
		-0.388747, 0.904326, -0.176267,
		15.898692, 18.141388, 10.133608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493720, 17.339579, 10.001777>,  <16.170815, 17.508360, 10.256995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493720, 17.339579, 10.001777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.507527, 17.734585, 9.940294>,  <15.515812, 17.971588, 9.903404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.507527, 17.734585, 9.940294>,  <15.493720, 17.339579, 10.001777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.507527, 17.734585, 9.940294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571004, -0.106736, -0.813979,
		-0.820221, 0.115865, 0.560189,
		0.034519, 0.987513, -0.153707,
		15.517883, 18.030838, 9.894182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.777526, 17.704781, 9.976991>,  <15.493720, 17.339579, 10.001777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.777526, 17.704781, 9.976991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.040811, 17.914669, 9.761056>,  <15.198781, 18.040602, 9.631495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.040811, 17.914669, 9.761056>,  <14.777526, 17.704781, 9.976991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040811, 17.914669, 9.761056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598961, -0.069406, -0.797765,
		-0.456074, 0.848439, 0.268604,
		0.658212, 0.524723, -0.539836,
		15.238275, 18.072086, 9.599105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514705, 17.833822, 9.317929>,  <14.777526, 17.704781, 9.976991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514705, 17.833822, 9.317929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130639, 17.726364, 9.348690>,  <13.900200, 17.661890, 9.367146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.130639, 17.726364, 9.348690>,  <14.514705, 17.833822, 9.317929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130639, 17.726364, 9.348690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109052, -0.106859, 0.988276,
		-0.257277, 0.957294, 0.131898,
		-0.960165, -0.268645, 0.076902,
		13.842589, 17.645771, 9.371760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315472, 18.229074, 9.762455>,  <14.514705, 17.833822, 9.317929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315472, 18.229074, 9.762455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.099244, 17.892563, 9.764738>,  <13.969508, 17.690655, 9.766108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.099244, 17.892563, 9.764738>,  <14.315472, 18.229074, 9.762455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099244, 17.892563, 9.764738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103007, -0.059452, 0.992902,
		-0.834970, 0.537319, 0.118796,
		-0.540568, -0.841281, 0.005707,
		13.937074, 17.640179, 9.766450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.835148, 18.215969, 10.340779>,  <14.315472, 18.229074, 9.762455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.835148, 18.215969, 10.340779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.788314, 17.827927, 10.255751>,  <13.760214, 17.595102, 10.204733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.788314, 17.827927, 10.255751>,  <13.835148, 18.215969, 10.340779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788314, 17.827927, 10.255751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040065, -0.209257, 0.977040,
		-0.992313, 0.122913, -0.014367,
		-0.117085, -0.970105, -0.212573,
		13.753188, 17.536896, 10.191978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.384825, 18.014261, 10.707188>,  <13.835148, 18.215969, 10.340779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.384825, 18.014261, 10.707188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.580176, 17.674980, 10.625178>,  <13.697388, 17.471411, 10.575973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.580176, 17.674980, 10.625178>,  <13.384825, 18.014261, 10.707188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580176, 17.674980, 10.625178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060974, -0.201205, 0.977650,
		-0.870498, -0.489965, -0.046546,
		0.488380, -0.848204, -0.205023,
		13.726690, 17.420519, 10.563671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.077443, 17.502769, 11.216605>,  <13.384825, 18.014261, 10.707188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.077443, 17.502769, 11.216605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.424960, 17.357231, 11.082253>,  <13.633471, 17.269909, 11.001641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.424960, 17.357231, 11.082253>,  <13.077443, 17.502769, 11.216605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.424960, 17.357231, 11.082253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337543, -0.061143, 0.939322,
		-0.362305, -0.929450, 0.069693,
		0.868792, -0.363846, -0.335882,
		13.685597, 17.248077, 10.981488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.107258, 16.823292, 11.520123>,  <13.077443, 17.502769, 11.216605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.107258, 16.823292, 11.520123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.490640, 16.905952, 11.441477>,  <13.720669, 16.955549, 11.394289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.490640, 16.905952, 11.441477>,  <13.107258, 16.823292, 11.520123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.490640, 16.905952, 11.441477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244425, -0.239701, 0.939574,
		0.147034, -0.948598, -0.280253,
		0.958456, 0.206651, -0.196617,
		13.778176, 16.967947, 11.382492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.533283, 16.335695, 11.786011>,  <13.107258, 16.823292, 11.520123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.533283, 16.335695, 11.786011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.771789, 16.655060, 11.752522>,  <13.914892, 16.846678, 11.732428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.771789, 16.655060, 11.752522>,  <13.533283, 16.335695, 11.786011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.771789, 16.655060, 11.752522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366483, -0.177928, 0.913254,
		0.714255, -0.575224, -0.398695,
		0.596264, 0.798410, -0.083724,
		13.950668, 16.894583, 11.727405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.087834, 16.029034, 11.999666>,  <13.533283, 16.335695, 11.786011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.087834, 16.029034, 11.999666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.145701, 16.422928, 12.038379>,  <14.180422, 16.659264, 12.061606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.145701, 16.422928, 12.038379>,  <14.087834, 16.029034, 11.999666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145701, 16.422928, 12.038379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259322, -0.132124, 0.956711,
		0.954894, -0.113308, -0.274478,
		0.144668, 0.984736, 0.096781,
		14.189102, 16.718349, 12.067413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739305, 16.075209, 12.414049>,  <14.087834, 16.029034, 11.999666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739305, 16.075209, 12.414049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.558074, 16.431591, 12.426167>,  <14.449335, 16.645420, 12.433437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.558074, 16.431591, 12.426167>,  <14.739305, 16.075209, 12.414049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558074, 16.431591, 12.426167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286904, 0.113557, 0.951205,
		0.844041, 0.439663, -0.307069,
		-0.453079, 0.890955, 0.030294,
		14.422151, 16.698877, 12.435255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268635, 16.577053, 12.664460>,  <14.739305, 16.075209, 12.414049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.268635, 16.577053, 12.664460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.914546, 16.741795, 12.750955>,  <14.702093, 16.840639, 12.802851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.914546, 16.741795, 12.750955>,  <15.268635, 16.577053, 12.664460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914546, 16.741795, 12.750955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303201, 0.158328, 0.939681,
		0.352777, 0.897389, -0.265030,
		-0.885221, 0.411856, 0.216235,
		14.648979, 16.865351, 12.815825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.366991, 17.199425, 12.975455>,  <15.268635, 16.577053, 12.664460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.366991, 17.199425, 12.975455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.001729, 17.120529, 13.118139>,  <14.782572, 17.073191, 13.203750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.001729, 17.120529, 13.118139>,  <15.366991, 17.199425, 12.975455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001729, 17.120529, 13.118139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311415, 0.227056, 0.922750,
		-0.262996, 0.953699, -0.145914,
		-0.913156, -0.197240, 0.356711,
		14.727782, 17.061357, 13.225152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185643, 17.658430, 13.538713>,  <15.366991, 17.199425, 12.975455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185643, 17.658430, 13.538713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.949706, 17.341389, 13.600508>,  <14.808144, 17.151165, 13.637585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.949706, 17.341389, 13.600508>,  <15.185643, 17.658430, 13.538713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949706, 17.341389, 13.600508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272823, -0.015535, 0.961939,
		-0.760035, 0.609541, 0.225403,
		-0.589843, -0.792602, 0.154489,
		14.772754, 17.103607, 13.646854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789907, 17.802389, 14.159666>,  <15.185643, 17.658430, 13.538713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789907, 17.802389, 14.159666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.803477, 17.404987, 14.116219>,  <14.811620, 17.166546, 14.090150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.803477, 17.404987, 14.116219>,  <14.789907, 17.802389, 14.159666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803477, 17.404987, 14.116219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171864, -0.101263, 0.979902,
		-0.984536, -0.051914, 0.167312,
		0.033928, -0.993504, -0.108619,
		14.813656, 17.106936, 14.083632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332558, 17.508812, 14.611638>,  <14.789907, 17.802389, 14.159666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332558, 17.508812, 14.611638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.543239, 17.177391, 14.535656>,  <14.669647, 16.978539, 14.490067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.543239, 17.177391, 14.535656>,  <14.332558, 17.508812, 14.611638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543239, 17.177391, 14.535656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201554, -0.095363, 0.974824,
		-0.825809, -0.551728, 0.116771,
		0.526702, -0.828555, -0.189955,
		14.701249, 16.928825, 14.478669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167755, 16.952797, 15.035320>,  <14.332558, 17.508812, 14.611638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167755, 16.952797, 15.035320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.550494, 16.890049, 14.937477>,  <14.780138, 16.852400, 14.878772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.550494, 16.890049, 14.937477>,  <14.167755, 16.952797, 15.035320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550494, 16.890049, 14.937477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218394, -0.167070, 0.961453,
		-0.191693, -0.973385, -0.125600,
		0.956847, -0.156874, -0.244608,
		14.837548, 16.842987, 14.864095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.402711, 16.338657, 15.565720>,  <14.167755, 16.952797, 15.035320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.402711, 16.338657, 15.565720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.723435, 16.537868, 15.433619>,  <14.915870, 16.657394, 15.354358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.723435, 16.537868, 15.433619>,  <14.402711, 16.338657, 15.565720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723435, 16.537868, 15.433619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409638, -0.055702, 0.910546,
		0.435082, -0.865370, -0.248673,
		0.801811, 0.498029, -0.330253,
		14.963979, 16.687277, 15.334542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945682, 16.013300, 15.783774>,  <14.402711, 16.338657, 15.565720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945682, 16.013300, 15.783774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.107272, 16.366375, 15.687716>,  <15.204226, 16.578220, 15.630080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.107272, 16.366375, 15.687716>,  <14.945682, 16.013300, 15.783774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107272, 16.366375, 15.687716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513130, -0.001328, 0.858310,
		0.757299, -0.469963, -0.453468,
		0.403976, 0.882685, -0.240146,
		15.228465, 16.631180, 15.615671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555184, 15.999390, 15.995446>,  <14.945682, 16.013300, 15.783774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555184, 15.999390, 15.995446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.501506, 16.394386, 15.962339>,  <15.469298, 16.631384, 15.942475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.501506, 16.394386, 15.962339>,  <15.555184, 15.999390, 15.995446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501506, 16.394386, 15.962339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406900, 0.131067, 0.904021,
		0.903562, 0.087638, -0.419400,
		-0.134196, 0.987492, -0.082768,
		15.461247, 16.690634, 15.937510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.330265, 16.548334, 16.358057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.010124, 16.784119, 16.314293>,  <15.818039, 16.925589, 16.288034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.010124, 16.784119, 16.314293>,  <16.330265, 16.548334, 16.358057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010124, 16.784119, 16.314293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200880, 0.435611, 0.877434,
		0.564873, 0.680279, -0.467054,
		-0.800353, 0.589461, -0.109411,
		15.770019, 16.960957, 16.281469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537169, 17.301598, 16.492908>,  <16.330265, 16.548334, 16.358057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537169, 17.301598, 16.492908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.139572, 17.303696, 16.536650>,  <15.901014, 17.304955, 16.562895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.139572, 17.303696, 16.536650>,  <16.537169, 17.301598, 16.492908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139572, 17.303696, 16.536650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089697, 0.611727, 0.785967,
		-0.062772, 0.791051, -0.608521,
		-0.993989, 0.005246, 0.109354,
		15.841375, 17.305269, 16.569456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.421848, 18.033636, 16.544182>,  <16.537169, 17.301598, 16.492908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.421848, 18.033636, 16.544182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.126621, 17.812340, 16.698677>,  <15.949485, 17.679562, 16.791374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.126621, 17.812340, 16.698677>,  <16.421848, 18.033636, 16.544182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126621, 17.812340, 16.698677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038130, 0.605720, 0.794764,
		-0.673648, 0.571862, -0.468157,
		-0.738068, -0.553243, 0.386237,
		15.905201, 17.646366, 16.814548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196091, 18.404673, 17.083969>,  <16.421848, 18.033636, 16.544182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196091, 18.404673, 17.083969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.032150, 18.045128, 17.146023>,  <15.933786, 17.829401, 17.183254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.032150, 18.045128, 17.146023>,  <16.196091, 18.404673, 17.083969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032150, 18.045128, 17.146023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129253, 0.225589, 0.965610,
		-0.902949, 0.375704, -0.208639,
		-0.409850, -0.898864, 0.155135,
		15.909195, 17.775469, 17.192564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777251, 18.521618, 17.592863>,  <16.196091, 18.404673, 17.083969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777251, 18.521618, 17.592863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.804017, 18.122597, 17.584803>,  <15.820077, 17.883183, 17.579966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.804017, 18.122597, 17.584803>,  <15.777251, 18.521618, 17.592863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804017, 18.122597, 17.584803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047576, -0.023364, 0.998594,
		-0.996624, -0.065862, -0.049023,
		0.066915, -0.997555, -0.020152,
		15.824092, 17.823330, 17.578756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252628, 18.223082, 18.122025>,  <15.777251, 18.521618, 17.592863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252628, 18.223082, 18.122025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.509376, 17.921230, 18.067562>,  <15.663424, 17.740120, 18.034883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.509376, 17.921230, 18.067562>,  <15.252628, 18.223082, 18.122025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.509376, 17.921230, 18.067562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035645, -0.148008, 0.988344,
		-0.765986, -0.639240, -0.068103,
		0.641868, -0.754630, -0.136158,
		15.701936, 17.694841, 18.026714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.047592, 17.526407, 18.428543>,  <15.252628, 18.223082, 18.122025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.047592, 17.526407, 18.428543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.446584, 17.519814, 18.400942>,  <15.685979, 17.515858, 18.384380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.446584, 17.519814, 18.400942>,  <15.047592, 17.526407, 18.428543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446584, 17.519814, 18.400942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065317, -0.166317, 0.983907,
		-0.027696, -0.985934, -0.164821,
		0.997480, -0.016485, -0.069005,
		15.745828, 17.514868, 18.380241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256881, 17.141434, 18.961157>,  <15.047592, 17.526407, 18.428543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256881, 17.141434, 18.961157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.608386, 17.303932, 18.860966>,  <15.819289, 17.401432, 18.800850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.608386, 17.303932, 18.860966>,  <15.256881, 17.141434, 18.961157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608386, 17.303932, 18.860966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276505, -0.005593, 0.960996,
		0.389000, -0.913746, -0.117244,
		0.878763, 0.406247, -0.250480,
		15.872015, 17.425806, 18.785822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.819428, 16.650665, 19.209791>,  <15.256881, 17.141434, 18.961157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.819428, 16.650665, 19.209791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.996333, 17.008060, 19.178598>,  <16.102476, 17.222498, 19.159882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.996333, 17.008060, 19.178598>,  <15.819428, 16.650665, 19.209791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.996333, 17.008060, 19.178598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322545, -0.077315, 0.943391,
		0.836881, -0.442379, -0.322384,
		0.442262, 0.893489, -0.077984,
		16.129011, 17.276108, 19.155203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404041, 16.545534, 19.528578>,  <15.819428, 16.650665, 19.209791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404041, 16.545534, 19.528578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.393051, 16.945213, 19.516943>,  <16.386457, 17.185020, 19.509962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.393051, 16.945213, 19.516943>,  <16.404041, 16.545534, 19.528578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393051, 16.945213, 19.516943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306120, 0.036113, 0.951308,
		0.951596, 0.017233, -0.306867,
		-0.027476, 0.999199, -0.029089,
		16.384808, 17.244972, 19.508217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.042778, 16.832357, 19.796650>,  <16.404041, 16.545534, 19.528578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.042778, 16.832357, 19.796650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.755718, 17.109283, 19.826797>,  <16.583483, 17.275438, 19.844887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.755718, 17.109283, 19.826797>,  <17.042778, 16.832357, 19.796650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755718, 17.109283, 19.826797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139732, 0.037122, 0.989493,
		0.682242, 0.720641, -0.123379,
		-0.717649, 0.692314, 0.075371,
		16.540424, 17.316978, 19.849409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253717, 17.136623, 20.327555>,  <17.042778, 16.832357, 19.796650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.253717, 17.136623, 20.327555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.872395, 17.255379, 20.305429>,  <16.643600, 17.326632, 20.292154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.872395, 17.255379, 20.305429>,  <17.253717, 17.136623, 20.327555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872395, 17.255379, 20.305429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068552, -0.034361, 0.997056,
		0.294116, 0.954293, 0.053109,
		-0.953308, 0.296891, -0.055313,
		16.586403, 17.344446, 20.288836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260258, 17.642534, 20.854349>,  <17.253717, 17.136623, 20.327555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260258, 17.642534, 20.854349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.887833, 17.519978, 20.775106>,  <16.664377, 17.446444, 20.727560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.887833, 17.519978, 20.775106>,  <17.260258, 17.642534, 20.854349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887833, 17.519978, 20.775106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214585, 0.020698, 0.976486,
		-0.295088, 0.951680, -0.085018,
		-0.931062, -0.306393, -0.198109,
		16.608515, 17.428061, 20.715673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806936, 18.135725, 21.115608>,  <17.260258, 17.642534, 20.854349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806936, 18.135725, 21.115608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.585121, 17.803158, 21.129673>,  <16.452032, 17.603619, 21.138113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.585121, 17.803158, 21.129673>,  <16.806936, 18.135725, 21.115608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585121, 17.803158, 21.129673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131967, 0.129583, 0.982748,
		-0.821629, 0.540329, -0.181578,
		-0.554536, -0.831416, 0.035163,
		16.418760, 17.553734, 21.140223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276056, 18.360025, 21.605709>,  <16.806936, 18.135725, 21.115608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276056, 18.360025, 21.605709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.215923, 17.965008, 21.587149>,  <16.179844, 17.727997, 21.576012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.215923, 17.965008, 21.587149>,  <16.276056, 18.360025, 21.605709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215923, 17.965008, 21.587149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251126, -0.007251, 0.967927,
		-0.956209, 0.157162, -0.246908,
		-0.150331, -0.987546, -0.046401,
		16.170824, 17.668743, 21.573229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688453, 18.272570, 22.019585>,  <16.276056, 18.360025, 21.605709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688453, 18.272570, 22.019585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.864800, 17.914078, 21.999966>,  <15.970610, 17.698982, 21.988195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.864800, 17.914078, 21.999966>,  <15.688453, 18.272570, 22.019585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.864800, 17.914078, 21.999966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299466, -0.198384, 0.933255,
		-0.846141, -0.396756, -0.355851,
		0.440870, -0.896230, -0.049045,
		15.997062, 17.645208, 21.985252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191862, 17.740416, 22.201216>,  <15.688453, 18.272570, 22.019585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191862, 17.740416, 22.201216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.560021, 17.589226, 22.241220>,  <15.780917, 17.498512, 22.265223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.560021, 17.589226, 22.241220>,  <15.191862, 17.740416, 22.201216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.560021, 17.589226, 22.241220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174593, -0.168454, 0.970124,
		-0.349833, -0.910362, -0.221036,
		0.920399, -0.377973, 0.100012,
		15.836142, 17.475834, 22.271225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090460, 17.248877, 22.798565>,  <15.191862, 17.740416, 22.201216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090460, 17.248877, 22.798565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.485759, 17.309490, 22.790499>,  <15.722938, 17.345858, 22.785660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.485759, 17.309490, 22.790499>,  <15.090460, 17.248877, 22.798565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485759, 17.309490, 22.790499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004789, 0.101152, 0.994859,
		0.152795, -0.983263, 0.099237,
		0.988246, 0.151535, -0.020164,
		15.782232, 17.354950, 22.784449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103498, 17.119688, 23.383488>,  <15.090460, 17.248877, 22.798565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103498, 17.119688, 23.383488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.479331, 17.228588, 23.300484>,  <15.704831, 17.293928, 23.250681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.479331, 17.228588, 23.300484>,  <15.103498, 17.119688, 23.383488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.479331, 17.228588, 23.300484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166988, 0.164652, 0.972114,
		0.298825, -0.948035, 0.109242,
		0.939584, 0.272249, -0.207512,
		15.761207, 17.310263, 23.238230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664165, 16.729433, 23.831713>,  <15.103498, 17.119688, 23.383488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664165, 16.729433, 23.831713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.822845, 17.078060, 23.716475>,  <15.918053, 17.287237, 23.647331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.822845, 17.078060, 23.716475>,  <15.664165, 16.729433, 23.831713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822845, 17.078060, 23.716475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222794, 0.213045, 0.951302,
		0.890501, -0.441568, -0.109665,
		0.396701, 0.871568, -0.288095,
		15.941854, 17.339531, 23.630047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312471, 16.740648, 24.168276>,  <15.664165, 16.729433, 23.831713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312471, 16.740648, 24.168276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.193527, 17.113956, 24.087690>,  <16.122162, 17.337940, 24.039339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.193527, 17.113956, 24.087690>,  <16.312471, 16.740648, 24.168276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193527, 17.113956, 24.087690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322547, 0.296798, 0.898818,
		0.898633, 0.202290, -0.389279,
		-0.297359, 0.933268, -0.201464,
		16.104319, 17.393936, 24.027250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905573, 17.172937, 24.496559>,  <16.312471, 16.740648, 24.168276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905573, 17.172937, 24.496559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.588097, 17.413177, 24.457912>,  <16.397612, 17.557322, 24.434725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.588097, 17.413177, 24.457912>,  <16.905573, 17.172937, 24.496559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588097, 17.413177, 24.457912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158549, 0.357572, 0.920329,
		0.587296, 0.715138, -0.379026,
		-0.793691, 0.600600, -0.096616,
		16.349989, 17.593357, 24.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084581, 17.895901, 24.817066>,  <16.905573, 17.172937, 24.496559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084581, 17.895901, 24.817066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.691067, 17.826851, 24.797623>,  <16.454958, 17.785421, 24.785957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.691067, 17.826851, 24.797623>,  <17.084581, 17.895901, 24.817066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691067, 17.826851, 24.797623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096841, 0.283222, 0.954153,
		-0.150944, 0.943391, -0.295348,
		-0.983788, -0.172625, -0.048608,
		16.395931, 17.775063, 24.783041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.853388, 18.426018, 25.187843>,  <17.084581, 17.895901, 24.817066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.853388, 18.426018, 25.187843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.568138, 18.146458, 25.165964>,  <16.396988, 17.978722, 25.152836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.568138, 18.146458, 25.165964>,  <16.853388, 18.426018, 25.187843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568138, 18.146458, 25.165964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257790, 0.188877, 0.947560,
		-0.651921, 0.689827, -0.314862,
		-0.713122, -0.698903, -0.054697,
		16.354202, 17.936787, 25.149555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.067453, 19.036770, 24.832090>,  <16.853388, 18.426018, 25.187843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.067453, 19.036770, 24.832090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.353287, 19.313908, 24.870739>,  <17.524788, 19.480190, 24.893929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.353287, 19.313908, 24.870739>,  <17.067453, 19.036770, 24.832090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.353287, 19.313908, 24.870739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037086, 0.175446, -0.983790,
		-0.698565, 0.699419, 0.151066,
		0.714585, 0.692844, 0.096622,
		17.567663, 19.521761, 24.899725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834614, 19.578760, 24.365627>,  <17.067453, 19.036770, 24.832090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834614, 19.578760, 24.365627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.217117, 19.683201, 24.418381>,  <17.446619, 19.745865, 24.450033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.217117, 19.683201, 24.418381>,  <16.834614, 19.578760, 24.365627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.217117, 19.683201, 24.418381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068901, 0.237120, -0.969034,
		-0.284287, 0.935736, 0.208759,
		0.956260, 0.261100, 0.131883,
		17.503996, 19.761530, 24.457945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887857, 20.167454, 23.987587>,  <16.834614, 19.578760, 24.365627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887857, 20.167454, 23.987587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.255791, 20.016582, 24.030748>,  <17.476551, 19.926060, 24.056644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.255791, 20.016582, 24.030748>,  <16.887857, 20.167454, 23.987587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255791, 20.016582, 24.030748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229671, 0.294748, -0.927564,
		0.318052, 0.877987, 0.357746,
		0.919834, -0.377177, 0.107903,
		17.531740, 19.903429, 24.063120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337751, 20.621920, 23.648685>,  <16.887857, 20.167454, 23.987587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337751, 20.621920, 23.648685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.541172, 20.279137, 23.682148>,  <17.663225, 20.073467, 23.702227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.541172, 20.279137, 23.682148>,  <17.337751, 20.621920, 23.648685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.541172, 20.279137, 23.682148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288242, 0.077885, -0.954385,
		0.811352, 0.509467, 0.286620,
		0.508551, -0.856958, 0.083657,
		17.693737, 20.022049, 23.707245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.031574, 20.764233, 23.330395>,  <17.337751, 20.621920, 23.648685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.031574, 20.764233, 23.330395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.978657, 20.367970, 23.343658>,  <17.946907, 20.130213, 23.351616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.978657, 20.367970, 23.343658>,  <18.031574, 20.764233, 23.330395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.978657, 20.367970, 23.343658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191682, -0.058389, -0.979719,
		0.972500, -0.123254, 0.197615,
		-0.132293, -0.990656, 0.033158,
		17.938969, 20.070772, 23.353605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.546423, 20.457628, 22.914968>,  <18.031574, 20.764233, 23.330395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.546423, 20.457628, 22.914968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.360764, 20.103546, 22.927500>,  <18.249369, 19.891098, 22.935019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.360764, 20.103546, 22.927500>,  <18.546423, 20.457628, 22.914968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360764, 20.103546, 22.927500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311081, -0.196027, -0.929947,
		0.829334, -0.421887, 0.366356,
		-0.464148, -0.885203, 0.031330,
		18.221519, 19.837986, 22.936899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009270, 19.815998, 22.564024>,  <18.546423, 20.457628, 22.914968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009270, 19.815998, 22.564024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615437, 19.747787, 22.548429>,  <18.379137, 19.706861, 22.539072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.615437, 19.747787, 22.548429>,  <19.009270, 19.815998, 22.564024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615437, 19.747787, 22.548429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085311, -0.273528, -0.958073,
		0.152713, -0.946627, 0.283859,
		-0.984581, -0.170527, -0.038986,
		18.320063, 19.696629, 22.536734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010281, 19.216383, 22.151485>,  <19.009270, 19.815998, 22.564024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.010281, 19.216383, 22.151485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.649265, 19.386517, 22.124605>,  <18.432655, 19.488596, 22.108477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.649265, 19.386517, 22.124605>,  <19.010281, 19.216383, 22.151485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649265, 19.386517, 22.124605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044640, -0.247633, -0.967825,
		-0.428288, -0.870500, 0.242485,
		-0.902539, 0.425333, -0.067200,
		18.378504, 19.514116, 22.104445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661425, 18.774986, 21.919434>,  <19.010281, 19.216383, 22.151485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661425, 18.774986, 21.919434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.431355, 19.094044, 21.846840>,  <18.293312, 19.285479, 21.803284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.431355, 19.094044, 21.846840>,  <18.661425, 18.774986, 21.919434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431355, 19.094044, 21.846840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127348, -0.306463, -0.943325,
		-0.808057, -0.519465, 0.277848,
		-0.575175, 0.797644, -0.181487,
		18.258802, 19.333338, 21.792395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.957067, 18.549995, 21.563925>,  <18.661425, 18.774986, 21.919434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.957067, 18.549995, 21.563925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.047329, 18.929024, 21.473425>,  <18.101486, 19.156441, 21.419125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.047329, 18.929024, 21.473425>,  <17.957067, 18.549995, 21.563925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047329, 18.929024, 21.473425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070030, -0.215863, -0.973909,
		-0.971687, 0.235612, 0.017648,
		0.225655, 0.947571, -0.226251,
		18.115025, 19.213295, 21.405550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.436689, 18.729826, 21.143328>,  <17.957067, 18.549995, 21.563925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.436689, 18.729826, 21.143328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.737720, 18.979568, 21.059607>,  <17.918339, 19.129414, 21.009373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.737720, 18.979568, 21.059607>,  <17.436689, 18.729826, 21.143328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737720, 18.979568, 21.059607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262457, -0.007117, -0.964917,
		-0.603942, 0.781107, 0.158511,
		0.752576, 0.624357, -0.209305,
		17.963493, 19.166876, 20.996815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038069, 19.269892, 20.819899>,  <17.436689, 18.729826, 21.143328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038069, 19.269892, 20.819899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.425137, 19.267693, 20.719034>,  <17.657377, 19.266373, 20.658516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.425137, 19.267693, 20.719034>,  <17.038069, 19.269892, 20.819899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425137, 19.267693, 20.719034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246584, 0.189557, -0.950402,
		0.053026, 0.981854, 0.182072,
		0.967670, -0.005500, -0.252161,
		17.715437, 19.266043, 20.643387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107191, 19.665865, 20.238253>,  <17.038069, 19.269892, 20.819899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107191, 19.665865, 20.238253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.464638, 19.487160, 20.221025>,  <17.679106, 19.379936, 20.210690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.464638, 19.487160, 20.221025>,  <17.107191, 19.665865, 20.238253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464638, 19.487160, 20.221025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031616, 0.158376, -0.986873,
		0.447719, 0.880523, 0.155652,
		0.893615, -0.446763, -0.043069,
		17.732723, 19.353130, 20.208105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474262, 20.057844, 19.689079>,  <17.107191, 19.665865, 20.238253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474262, 20.057844, 19.689079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.700386, 19.733818, 19.751328>,  <17.836061, 19.539402, 19.788677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.700386, 19.733818, 19.751328>,  <17.474262, 20.057844, 19.689079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.700386, 19.733818, 19.751328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324793, 0.045172, -0.944706,
		0.758243, 0.584599, 0.288639,
		0.565312, -0.810064, 0.155623,
		17.869980, 19.490799, 19.798014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144594, 20.187754, 19.381369>,  <17.474262, 20.057844, 19.689079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144594, 20.187754, 19.381369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.090656, 19.791409, 19.382740>,  <18.058294, 19.553602, 19.383562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.090656, 19.791409, 19.382740>,  <18.144594, 20.187754, 19.381369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090656, 19.791409, 19.382740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327939, -0.047891, -0.943484,
		0.935026, -0.126099, 0.331400,
		-0.134843, -0.990861, 0.003426,
		18.050203, 19.494150, 19.383768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703003, 19.889370, 18.973068>,  <18.144594, 20.187754, 19.381369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703003, 19.889370, 18.973068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.455620, 19.575073, 18.977472>,  <18.307190, 19.386496, 18.980114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.455620, 19.575073, 18.977472>,  <18.703003, 19.889370, 18.973068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455620, 19.575073, 18.977472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241312, -0.203231, -0.948929,
		0.747849, -0.584216, 0.315299,
		-0.618458, -0.785741, 0.011008,
		18.270082, 19.339352, 18.980774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095375, 19.260059, 18.717787>,  <18.703003, 19.889370, 18.973068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095375, 19.260059, 18.717787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.705242, 19.179699, 18.681196>,  <18.471163, 19.131483, 18.659241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.705242, 19.179699, 18.681196>,  <19.095375, 19.260059, 18.717787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705242, 19.179699, 18.681196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155978, -0.333964, -0.929591,
		0.156206, -0.920927, 0.357062,
		-0.975331, -0.200901, -0.091478,
		18.412643, 19.119429, 18.653753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980986, 18.591999, 18.383537>,  <19.095375, 19.260059, 18.717787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980986, 18.591999, 18.383537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.632858, 18.783134, 18.335846>,  <18.423983, 18.897816, 18.307230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.632858, 18.783134, 18.335846>,  <18.980986, 18.591999, 18.383537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632858, 18.783134, 18.335846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041263, -0.170493, -0.984495,
		-0.490759, -0.861743, 0.128666,
		-0.870318, 0.477840, -0.119229,
		18.371763, 18.926487, 18.300077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555285, 18.096386, 17.976381>,  <18.980986, 18.591999, 18.383537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555285, 18.096386, 17.976381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382683, 18.454834, 17.934866>,  <18.279121, 18.669903, 17.909956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382683, 18.454834, 17.934866>,  <18.555285, 18.096386, 17.976381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382683, 18.454834, 17.934866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185235, -0.200614, -0.961999,
		-0.882888, -0.395882, 0.252558,
		-0.431504, 0.896120, -0.103789,
		18.253231, 18.723671, 17.903728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862465, 17.954109, 17.677544>,  <18.555285, 18.096386, 17.976381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862465, 17.954109, 17.677544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.936150, 18.333874, 17.575811>,  <17.980360, 18.561733, 17.514772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.936150, 18.333874, 17.575811>,  <17.862465, 17.954109, 17.677544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936150, 18.333874, 17.575811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317160, -0.187500, -0.929652,
		-0.930309, 0.251917, 0.266576,
		0.184212, 0.949411, -0.254331,
		17.991413, 18.618696, 17.499512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<13.811096, 16.169666, 13.868338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.074363, 16.465134, 13.810114>,  <14.232323, 16.642414, 13.775180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.074363, 16.465134, 13.810114>,  <13.811096, 16.169666, 13.868338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074363, 16.465134, 13.810114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220374, 0.004146, -0.975407,
		-0.719898, 0.674057, 0.165512,
		0.658166, 0.738668, -0.145560,
		14.271812, 16.686733, 13.766446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503129, 16.716208, 13.502038>,  <13.811096, 16.169666, 13.868338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503129, 16.716208, 13.502038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.881997, 16.815643, 13.420971>,  <14.109318, 16.875305, 13.372331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.881997, 16.815643, 13.420971>,  <13.503129, 16.716208, 13.502038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.881997, 16.815643, 13.420971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262280, 0.236625, -0.935531,
		-0.184607, 0.939261, 0.289324,
		0.947169, 0.248589, -0.202667,
		14.166148, 16.890221, 13.360171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.519488, 17.421553, 13.160719>,  <13.503129, 16.716208, 13.502038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.519488, 17.421553, 13.160719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.860156, 17.244194, 13.048962>,  <14.064556, 17.137779, 12.981907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.860156, 17.244194, 13.048962>,  <13.519488, 17.421553, 13.160719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.860156, 17.244194, 13.048962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229613, 0.163531, -0.959446,
		0.471104, 0.881282, 0.037465,
		0.851668, -0.443396, -0.279393,
		14.115657, 17.111176, 12.965143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837868, 17.847065, 12.678822>,  <13.519488, 17.421553, 13.160719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837868, 17.847065, 12.678822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.028962, 17.504662, 12.599810>,  <14.143619, 17.299219, 12.552402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.028962, 17.504662, 12.599810>,  <13.837868, 17.847065, 12.678822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.028962, 17.504662, 12.599810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014933, 0.216902, -0.976079,
		0.878376, 0.469258, 0.090839,
		0.477736, -0.856008, -0.197529,
		14.172283, 17.247860, 12.540551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343817, 18.057421, 12.140492>,  <13.837868, 17.847065, 12.678822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343817, 18.057421, 12.140492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.309314, 17.659161, 12.126416>,  <14.288612, 17.420204, 12.117970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.309314, 17.659161, 12.126416>,  <14.343817, 18.057421, 12.140492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.309314, 17.659161, 12.126416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162856, 0.048937, -0.985435,
		0.982872, -0.079269, -0.166369,
		-0.086256, -0.995651, -0.035190,
		14.283437, 17.360466, 12.115859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803645, 17.814007, 11.564001>,  <14.343817, 18.057421, 12.140492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803645, 17.814007, 11.564001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.532903, 17.523605, 11.612640>,  <14.370457, 17.349365, 11.641824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.532903, 17.523605, 11.612640>,  <14.803645, 17.814007, 11.564001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.532903, 17.523605, 11.612640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206973, 0.029172, -0.977912,
		0.706419, -0.687073, -0.170009,
		-0.676856, -0.726002, 0.121598,
		14.329845, 17.305805, 11.649119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020476, 17.317345, 11.131728>,  <14.803645, 17.814007, 11.564001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020476, 17.317345, 11.131728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.633325, 17.235332, 11.189933>,  <14.401033, 17.186125, 11.224855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.633325, 17.235332, 11.189933>,  <15.020476, 17.317345, 11.131728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633325, 17.235332, 11.189933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151467, 0.013574, -0.988369,
		0.200671, -0.978661, -0.044194,
		-0.967879, -0.205031, 0.145511,
		14.342961, 17.173824, 11.233586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896520, 16.897558, 10.616575>,  <15.020476, 17.317345, 11.131728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896520, 16.897558, 10.616575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.520505, 16.976994, 10.727494>,  <14.294896, 17.024654, 10.794045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.520505, 16.976994, 10.727494>,  <14.896520, 16.897558, 10.616575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520505, 16.976994, 10.727494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302888, -0.112263, -0.946391,
		-0.156816, -0.973631, 0.165682,
		-0.940036, 0.198593, 0.277296,
		14.238494, 17.036570, 10.810683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.410831, 16.369072, 10.294462>,  <14.896520, 16.897558, 10.616575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.410831, 16.369072, 10.294462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.178552, 16.682858, 10.381557>,  <14.039184, 16.871128, 10.433813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.178552, 16.682858, 10.381557>,  <14.410831, 16.369072, 10.294462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.178552, 16.682858, 10.381557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342368, 0.007340, -0.939538,
		-0.738630, -0.620133, 0.264312,
		-0.580698, 0.784462, 0.217735,
		14.004342, 16.918196, 10.446877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791982, 16.242001, 9.985042>,  <14.410831, 16.369072, 10.294462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791982, 16.242001, 9.985042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.797542, 16.639683, 10.027678>,  <13.800878, 16.878292, 10.053259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.797542, 16.639683, 10.027678>,  <13.791982, 16.242001, 9.985042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797542, 16.639683, 10.027678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353672, 0.104598, -0.929503,
		-0.935266, -0.024778, 0.353076,
		0.013900, 0.994206, 0.106590,
		13.801711, 16.937944, 10.059654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.260720, 16.491190, 9.611706>,  <13.791982, 16.242001, 9.985042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.260720, 16.491190, 9.611706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.488109, 16.817436, 9.654814>,  <13.624542, 17.013184, 9.680678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.488109, 16.817436, 9.654814>,  <13.260720, 16.491190, 9.611706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488109, 16.817436, 9.654814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238555, 0.288783, -0.927198,
		-0.787357, 0.501377, 0.358733,
		0.568472, 0.815614, 0.107769,
		13.658650, 17.062120, 9.687144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774635, 17.012365, 9.649580>,  <13.260720, 16.491190, 9.611706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774635, 17.012365, 9.649580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.124846, 17.122059, 9.490459>,  <13.334973, 17.187876, 9.394987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.124846, 17.122059, 9.490459>,  <12.774635, 17.012365, 9.649580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124846, 17.122059, 9.490459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473121, 0.319577, -0.820991,
		-0.098015, 0.907009, 0.409544,
		0.875528, 0.274234, -0.397802,
		13.387505, 17.204329, 9.371119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837967, 17.703472, 9.519730>,  <12.774635, 17.012365, 9.649580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837967, 17.703472, 9.519730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.039590, 17.485493, 9.251713>,  <13.160563, 17.354706, 9.090902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.039590, 17.485493, 9.251713>,  <12.837967, 17.703472, 9.519730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.039590, 17.485493, 9.251713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624103, 0.306452, -0.718737,
		0.597011, 0.780460, -0.185635,
		0.504057, -0.544949, -0.670043,
		13.190807, 17.322008, 9.050700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.973238, 18.031298, 9.045892>,  <12.837967, 17.703472, 9.519730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.973238, 18.031298, 9.045892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.946881, 17.674847, 8.866315>,  <12.931067, 17.460976, 8.758569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.946881, 17.674847, 8.866315>,  <12.973238, 18.031298, 9.045892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946881, 17.674847, 8.866315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581321, 0.399963, -0.708587,
		0.811002, 0.214289, -0.544386,
		-0.065892, -0.891128, -0.448942,
		12.927114, 17.407509, 8.731632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.550230, 17.991610, 8.515188>,  <12.973238, 18.031298, 9.045892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.550230, 17.991610, 8.515188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.171691, 18.100914, 8.446191>,  <12.944568, 18.166496, 8.404793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.171691, 18.100914, 8.446191>,  <13.550230, 17.991610, 8.515188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.171691, 18.100914, 8.446191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165558, 0.868397, 0.467414,
		0.277520, 0.413779, -0.867046,
		-0.946347, 0.273263, -0.172494,
		12.887787, 18.182894, 8.394443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544276, 18.596666, 8.148189>,  <13.550230, 17.991610, 8.515188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544276, 18.596666, 8.148189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.210214, 18.582340, 8.367726>,  <13.009776, 18.573746, 8.499449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.210214, 18.582340, 8.367726>,  <13.544276, 18.596666, 8.148189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210214, 18.582340, 8.367726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286611, 0.823346, 0.489852,
		-0.469432, 0.566408, -0.677359,
		-0.835157, -0.035814, 0.548844,
		12.959666, 18.571596, 8.532379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314859, 19.248922, 8.125003>,  <13.544276, 18.596666, 8.148189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314859, 19.248922, 8.125003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.127078, 19.072620, 8.431035>,  <13.014409, 18.966839, 8.614655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.127078, 19.072620, 8.431035>,  <13.314859, 19.248922, 8.125003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127078, 19.072620, 8.431035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134941, 0.820504, 0.555486,
		-0.872585, 0.364015, -0.325713,
		-0.469454, -0.440757, 0.765080,
		12.986242, 18.940393, 8.660559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.895912, 19.839052, 8.425528>,  <13.314859, 19.248922, 8.125003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.895912, 19.839052, 8.425528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.908914, 19.557446, 8.709304>,  <12.916715, 19.388481, 8.879570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.908914, 19.557446, 8.709304>,  <12.895912, 19.839052, 8.425528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.908914, 19.557446, 8.709304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129363, 0.706809, 0.695475,
		-0.991064, 0.069170, 0.114048,
		0.032504, -0.704014, 0.709441,
		12.918665, 19.346241, 8.922136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.561064, 20.135056, 9.036446>,  <12.895912, 19.839052, 8.425528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.561064, 20.135056, 9.036446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.761710, 19.819580, 9.178629>,  <12.882098, 19.630295, 9.263939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.761710, 19.819580, 9.178629>,  <12.561064, 20.135056, 9.036446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.761710, 19.819580, 9.178629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242554, 0.522632, 0.817327,
		-0.830391, -0.323766, 0.453460,
		0.501616, -0.788689, 0.355458,
		12.912195, 19.582973, 9.285267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309730, 19.986835, 9.732018>,  <12.561064, 20.135056, 9.036446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309730, 19.986835, 9.732018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.654201, 19.784435, 9.751350>,  <12.860884, 19.662994, 9.762950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.654201, 19.784435, 9.751350>,  <12.309730, 19.986835, 9.732018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.654201, 19.784435, 9.751350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213062, 0.445662, 0.869477,
		-0.461495, -0.738477, 0.491604,
		0.861178, -0.506001, 0.048330,
		12.912554, 19.632635, 9.765849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.276124, 19.635618, 10.331838>,  <12.309730, 19.986835, 9.732018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.276124, 19.635618, 10.331838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.661429, 19.658581, 10.226898>,  <12.892612, 19.672359, 10.163935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.661429, 19.658581, 10.226898>,  <12.276124, 19.635618, 10.331838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.661429, 19.658581, 10.226898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213857, 0.426918, 0.878639,
		0.162442, -0.902466, 0.398957,
		0.963264, 0.057408, -0.262348,
		12.950409, 19.675804, 10.148193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694728, 19.428610, 10.912696>,  <12.276124, 19.635618, 10.331838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.694728, 19.428610, 10.912696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.947951, 19.631298, 10.678612>,  <13.099885, 19.752911, 10.538161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.947951, 19.631298, 10.678612>,  <12.694728, 19.428610, 10.912696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.947951, 19.631298, 10.678612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464623, 0.355946, 0.810819,
		0.619163, -0.785198, -0.010100,
		0.633058, 0.506722, -0.585210,
		13.137869, 19.783314, 10.503049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.420271, 19.197294, 11.172812>,  <12.694728, 19.428610, 10.912696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.420271, 19.197294, 11.172812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.437568, 19.560600, 11.006350>,  <13.447946, 19.778584, 10.906471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.437568, 19.560600, 11.006350>,  <13.420271, 19.197294, 11.172812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.437568, 19.560600, 11.006350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402475, 0.365415, 0.839337,
		0.914409, -0.203787, -0.349752,
		0.043241, 0.908264, -0.416158,
		13.450540, 19.833080, 10.881502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091224, 19.505207, 11.345456>,  <13.420271, 19.197294, 11.172812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091224, 19.505207, 11.345456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.922021, 19.841263, 11.209675>,  <13.820499, 20.042896, 11.128206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.922021, 19.841263, 11.209675>,  <14.091224, 19.505207, 11.345456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922021, 19.841263, 11.209675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418961, 0.513512, 0.748851,
		0.803453, 0.174553, -0.569205,
		-0.423007, 0.840141, -0.339452,
		13.795118, 20.093306, 11.107840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595026, 20.039423, 11.172060>,  <14.091224, 19.505207, 11.345456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.595026, 20.039423, 11.172060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.250733, 20.224323, 11.257348>,  <14.044158, 20.335264, 11.308520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.250733, 20.224323, 11.257348>,  <14.595026, 20.039423, 11.172060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250733, 20.224323, 11.257348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428252, 0.431084, 0.794208,
		0.275209, 0.774912, -0.569009,
		-0.860732, 0.462253, 0.213220,
		13.992514, 20.362999, 11.321314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.718132, 20.789133, 11.287040>,  <14.595026, 20.039423, 11.172060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.718132, 20.789133, 11.287040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.368947, 20.715462, 11.467711>,  <14.159436, 20.671259, 11.576115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.368947, 20.715462, 11.467711>,  <14.718132, 20.789133, 11.287040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368947, 20.715462, 11.467711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326497, 0.467335, 0.821583,
		-0.362405, 0.864682, -0.347831,
		-0.872962, -0.184180, 0.451680,
		14.107059, 20.660208, 11.603215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.651134, 21.445812, 11.711852>,  <14.718132, 20.789133, 11.287040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.651134, 21.445812, 11.711852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.375363, 21.190426, 11.848702>,  <14.209901, 21.037193, 11.930813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.375363, 21.190426, 11.848702>,  <14.651134, 21.445812, 11.711852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375363, 21.190426, 11.848702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165712, 0.320770, 0.932548,
		-0.705145, 0.699618, -0.115346,
		-0.689427, -0.638468, 0.342125,
		14.168535, 20.998886, 11.951340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172964, 21.849194, 12.130763>,  <14.651134, 21.445812, 11.711852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172964, 21.849194, 12.130763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.142467, 21.464447, 12.235832>,  <14.124168, 21.233599, 12.298874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.142467, 21.464447, 12.235832>,  <14.172964, 21.849194, 12.130763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.142467, 21.464447, 12.235832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137471, 0.250782, 0.958233,
		-0.987567, 0.109169, 0.113108,
		-0.076244, -0.961868, 0.262672,
		14.119594, 21.175886, 12.314633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716471, 22.036064, 12.674592>,  <14.172964, 21.849194, 12.130763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716471, 22.036064, 12.674592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.844256, 22.414997, 12.665632>,  <13.920928, 22.642357, 12.660256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.844256, 22.414997, 12.665632>,  <13.716471, 22.036064, 12.674592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844256, 22.414997, 12.665632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130950, -0.067547, -0.989085,
		-0.938507, 0.313044, -0.145633,
		0.319464, 0.947334, -0.022400,
		13.940096, 22.699198, 12.658913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575841, 22.271448, 11.992096>,  <13.716471, 22.036064, 12.674592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575841, 22.271448, 11.992096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.835755, 22.542881, 12.129094>,  <13.991704, 22.705742, 12.211293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.835755, 22.542881, 12.129094>,  <13.575841, 22.271448, 11.992096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.835755, 22.542881, 12.129094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416590, 0.058962, -0.907180,
		-0.635792, 0.732153, -0.244379,
		0.649786, 0.678584, 0.342495,
		14.030691, 22.746456, 12.231843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625529, 22.883318, 11.515970>,  <13.575841, 22.271448, 11.992096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625529, 22.883318, 11.515970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.977584, 22.888401, 11.705790>,  <14.188817, 22.891451, 11.819681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.977584, 22.888401, 11.705790>,  <13.625529, 22.883318, 11.515970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977584, 22.888401, 11.705790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474600, -0.001145, -0.880201,
		-0.010642, 0.999919, -0.007039,
		0.880137, 0.012708, 0.474549,
		14.241625, 22.892214, 11.848154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036764, 23.450403, 11.320175>,  <13.625529, 22.883318, 11.515970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036764, 23.450403, 11.320175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.308167, 23.187714, 11.451837>,  <14.471009, 23.030100, 11.530833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.308167, 23.187714, 11.451837>,  <14.036764, 23.450403, 11.320175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.308167, 23.187714, 11.451837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496792, 0.080149, -0.864161,
		0.541134, 0.749860, 0.380636,
		0.678507, -0.656724, 0.329153,
		14.511720, 22.990696, 11.550583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.625801, 23.724257, 11.058515>,  <14.036764, 23.450403, 11.320175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.625801, 23.724257, 11.058515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.728024, 23.351814, 11.162614>,  <14.789358, 23.128349, 11.225074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.728024, 23.351814, 11.162614>,  <14.625801, 23.724257, 11.058515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728024, 23.351814, 11.162614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551739, -0.080586, -0.830114,
		0.793898, 0.355732, 0.493134,
		0.255559, -0.931107, 0.260249,
		14.804692, 23.072483, 11.240688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442549, 23.748844, 11.058217>,  <14.625801, 23.724257, 11.058515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.442549, 23.748844, 11.058217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.325984, 23.366245, 11.052652>,  <15.256045, 23.136686, 11.049314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.325984, 23.366245, 11.052652>,  <15.442549, 23.748844, 11.058217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.325984, 23.366245, 11.052652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621615, -0.178292, -0.762763,
		0.727099, -0.230926, 0.646529,
		-0.291413, -0.956496, -0.013911,
		15.238560, 23.079296, 11.048479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098286, 23.365574, 11.104247>,  <15.442549, 23.748844, 11.058217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098286, 23.365574, 11.104247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.812457, 23.124275, 10.962554>,  <15.640960, 22.979496, 10.877538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.812457, 23.124275, 10.962554>,  <16.098286, 23.365574, 11.104247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812457, 23.124275, 10.962554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663430, -0.423728, -0.616697,
		0.221922, -0.675682, 0.702996,
		-0.714570, -0.603248, -0.354234,
		15.598086, 22.943300, 10.856284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427452, 22.766090, 10.950486>,  <16.098286, 23.365574, 11.104247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427452, 22.766090, 10.950486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.099171, 22.696022, 10.732949>,  <15.902203, 22.653982, 10.602427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.099171, 22.696022, 10.732949>,  <16.427452, 22.766090, 10.950486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.099171, 22.696022, 10.732949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560506, -0.431460, -0.706877,
		-0.110823, -0.884962, 0.452284,
		-0.820702, -0.175170, -0.543842,
		15.852961, 22.643471, 10.569797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525261, 22.072941, 10.730460>,  <16.427452, 22.766090, 10.950486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525261, 22.072941, 10.730460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.253670, 22.224819, 10.479122>,  <16.090715, 22.315947, 10.328320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.253670, 22.224819, 10.479122>,  <16.525261, 22.072941, 10.730460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.253670, 22.224819, 10.479122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504244, -0.380871, -0.775033,
		-0.533596, -0.843070, 0.067144,
		-0.678980, 0.379697, -0.628344,
		16.049976, 22.338728, 10.290619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.235699, 21.517475, 10.189357>,  <16.525261, 22.072941, 10.730460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.235699, 21.517475, 10.189357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.167465, 21.865883, 10.005085>,  <16.126524, 22.074928, 9.894522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.167465, 21.865883, 10.005085>,  <16.235699, 21.517475, 10.189357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167465, 21.865883, 10.005085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364305, -0.378652, -0.850826,
		-0.915523, -0.312967, -0.252724,
		-0.170586, 0.871019, -0.460680,
		16.116289, 22.127188, 9.866881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902336, 21.382372, 9.477221>,  <16.235699, 21.517475, 10.189357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902336, 21.382372, 9.477221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.051922, 21.750698, 9.432941>,  <16.141674, 21.971693, 9.406374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.051922, 21.750698, 9.432941>,  <15.902336, 21.382372, 9.477221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.051922, 21.750698, 9.432941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463098, -0.288809, -0.837931,
		-0.803549, 0.262093, -0.534431,
		0.373964, 0.920813, -0.110697,
		16.164112, 22.026941, 9.399733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806005, 21.619238, 8.763426>,  <15.902336, 21.382372, 9.477221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.806005, 21.619238, 8.763426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.098301, 21.861805, 8.888822>,  <16.273678, 22.007345, 8.964059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.098301, 21.861805, 8.888822>,  <15.806005, 21.619238, 8.763426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098301, 21.861805, 8.888822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556415, -0.263036, -0.788172,
		-0.395503, 0.750379, -0.529631,
		0.730739, 0.606419, 0.313491,
		16.317522, 22.043730, 8.982869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<12.631687, 22.600218, 16.033430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.010987, 22.680103, 16.132170>,  <13.238567, 22.728035, 16.191414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.010987, 22.680103, 16.132170>,  <12.631687, 22.600218, 16.033430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010987, 22.680103, 16.132170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167822, 0.344735, -0.923576,
		-0.269550, 0.917209, 0.293379,
		0.948250, 0.199715, 0.246851,
		13.295463, 22.740017, 16.206224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.745575, 23.227051, 15.748223>,  <12.631687, 22.600218, 16.033430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.745575, 23.227051, 15.748223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120090, 23.087612, 15.765419>,  <13.344798, 23.003948, 15.775737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120090, 23.087612, 15.765419>,  <12.745575, 23.227051, 15.748223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.120090, 23.087612, 15.765419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147525, 0.279224, -0.948826,
		0.318753, 0.894715, 0.312860,
		0.936287, -0.348596, 0.042989,
		13.400975, 22.983034, 15.778316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.145897, 23.708454, 15.408565>,  <12.745575, 23.227051, 15.748223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.145897, 23.708454, 15.408565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.389787, 23.391533, 15.417421>,  <13.536120, 23.201380, 15.422735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.389787, 23.391533, 15.417421>,  <13.145897, 23.708454, 15.408565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.389787, 23.391533, 15.417421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333190, 0.230861, -0.914160,
		0.719181, 0.564764, 0.404749,
		0.609725, -0.792304, 0.022143,
		13.572704, 23.153841, 15.424065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.732933, 23.979584, 15.068950>,  <13.145897, 23.708454, 15.408565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.732933, 23.979584, 15.068950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761779, 23.580811, 15.056803>,  <13.779086, 23.341547, 15.049515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761779, 23.580811, 15.056803>,  <13.732933, 23.979584, 15.068950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.761779, 23.580811, 15.056803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379050, 0.055555, -0.923707,
		0.922562, 0.055103, 0.381894,
		0.072116, -0.996934, -0.030366,
		13.783414, 23.281731, 15.047693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365272, 23.833017, 14.593499>,  <13.732933, 23.979584, 15.068950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365272, 23.833017, 14.593499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177171, 23.483089, 14.640068>,  <14.064310, 23.273132, 14.668010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177171, 23.483089, 14.640068>,  <14.365272, 23.833017, 14.593499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.177171, 23.483089, 14.640068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163509, -0.215998, -0.962606,
		0.867254, -0.433630, 0.244614,
		-0.470251, -0.874820, 0.116423,
		14.036096, 23.220644, 14.674994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763625, 23.412300, 14.303854>,  <14.365272, 23.833017, 14.593499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763625, 23.412300, 14.303854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.409646, 23.226254, 14.294601>,  <14.197259, 23.114626, 14.289050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.409646, 23.226254, 14.294601>,  <14.763625, 23.412300, 14.303854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409646, 23.226254, 14.294601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199150, -0.333072, -0.921630,
		0.420961, -0.820201, 0.387379,
		-0.884947, -0.465117, -0.023132,
		14.144162, 23.086718, 14.287662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861963, 22.800041, 14.053740>,  <14.763625, 23.412300, 14.303854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.861963, 22.800041, 14.053740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471011, 22.846817, 13.983252>,  <14.236440, 22.874882, 13.940959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471011, 22.846817, 13.983252>,  <14.861963, 22.800041, 14.053740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471011, 22.846817, 13.983252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168375, -0.073947, -0.982945,
		-0.127979, -0.990382, 0.052584,
		-0.977380, 0.116942, -0.176220,
		14.177797, 22.881899, 13.930386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600937, 22.212652, 13.711707>,  <14.861963, 22.800041, 14.053740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600937, 22.212652, 13.711707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336246, 22.498703, 13.621635>,  <14.177430, 22.670334, 13.567593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336246, 22.498703, 13.621635>,  <14.600937, 22.212652, 13.711707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336246, 22.498703, 13.621635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247441, -0.075202, -0.965980,
		-0.707734, -0.694935, -0.127189,
		-0.661729, 0.715129, -0.225178,
		14.137727, 22.713242, 13.554082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267835, 22.012117, 13.143329>,  <14.600937, 22.212652, 13.711707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267835, 22.012117, 13.143329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176698, 22.399910, 13.107130>,  <14.122015, 22.632586, 13.085411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176698, 22.399910, 13.107130>,  <14.267835, 22.012117, 13.143329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.176698, 22.399910, 13.107130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023504, -0.087438, -0.995893,
		-0.973414, -0.229035, -0.002865,
		-0.227843, 0.969483, -0.090496,
		14.108345, 22.690756, 13.079981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563688, 21.647720, 13.257996>,  <14.267835, 22.012117, 13.143329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563688, 21.647720, 13.257996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718316, 21.300549, 13.133247>,  <13.811093, 21.092245, 13.058398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718316, 21.300549, 13.133247>,  <13.563688, 21.647720, 13.257996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.718316, 21.300549, 13.133247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155347, -0.272049, 0.949661,
		-0.909082, -0.415559, 0.029664,
		0.386570, -0.867929, -0.311871,
		13.834288, 21.040171, 13.039686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.207322, 21.017693, 13.513884>,  <13.563688, 21.647720, 13.257996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.207322, 21.017693, 13.513884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.583312, 20.894299, 13.455528>,  <13.808907, 20.820263, 13.420515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.583312, 20.894299, 13.455528>,  <13.207322, 21.017693, 13.513884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583312, 20.894299, 13.455528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032006, -0.345939, 0.937711,
		-0.339711, -0.886104, -0.315305,
		0.939985, -0.308459, -0.145880,
		13.865305, 20.801752, 13.411761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213962, 20.321478, 13.829006>,  <13.207322, 21.017693, 13.513884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.213962, 20.321478, 13.829006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582913, 20.474846, 13.810228>,  <13.804285, 20.566866, 13.798962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582913, 20.474846, 13.810228>,  <13.213962, 20.321478, 13.829006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.582913, 20.474846, 13.810228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104902, -0.131671, 0.985727,
		0.371767, -0.914140, -0.161672,
		0.922380, 0.383420, -0.046944,
		13.859628, 20.589872, 13.796145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531536, 19.767145, 13.975196>,  <13.213962, 20.321478, 13.829006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531536, 19.767145, 13.975196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788373, 20.071449, 14.013054>,  <13.942475, 20.254032, 14.035769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788373, 20.071449, 14.013054>,  <13.531536, 19.767145, 13.975196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788373, 20.071449, 14.013054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115725, -0.218226, 0.969013,
		0.757842, -0.611244, -0.228161,
		0.642093, 0.760762, 0.094644,
		13.981001, 20.299679, 14.041447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121161, 19.523052, 14.367602>,  <13.531536, 19.767145, 13.975196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121161, 19.523052, 14.367602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106423, 19.919235, 14.420725>,  <14.097580, 20.156944, 14.452599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106423, 19.919235, 14.420725>,  <14.121161, 19.523052, 14.367602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106423, 19.919235, 14.420725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079353, -0.129578, 0.988389,
		0.996165, 0.046957, -0.073822,
		-0.036846, 0.990457, 0.132807,
		14.095369, 20.216372, 14.460567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538548, 19.488493, 14.839529>,  <14.121161, 19.523052, 14.367602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538548, 19.488493, 14.839529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393868, 19.860512, 14.865410>,  <14.307061, 20.083723, 14.880939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393868, 19.860512, 14.865410>,  <14.538548, 19.488493, 14.839529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.393868, 19.860512, 14.865410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247426, 0.028849, 0.968477,
		0.898863, 0.366305, -0.240553,
		-0.361697, 0.930048, 0.064703,
		14.285359, 20.139526, 14.884821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.015728, 19.807142, 15.261791>,  <14.538548, 19.488493, 14.839529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.015728, 19.807142, 15.261791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677667, 20.020432, 15.276693>,  <14.474830, 20.148405, 15.285635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677667, 20.020432, 15.276693>,  <15.015728, 19.807142, 15.261791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677667, 20.020432, 15.276693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116741, 0.116118, 0.986351,
		0.521619, 0.837967, -0.160386,
		-0.845154, 0.533223, 0.037256,
		14.424121, 20.180399, 15.287870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.148575, 20.374060, 15.699852>,  <15.015728, 19.807142, 15.261791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.148575, 20.374060, 15.699852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753177, 20.319817, 15.673058>,  <14.515938, 20.287271, 15.656981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753177, 20.319817, 15.673058>,  <15.148575, 20.374060, 15.699852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.753177, 20.319817, 15.673058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052908, -0.104890, 0.993075,
		-0.141696, 0.985194, 0.096509,
		-0.988495, -0.135608, -0.066987,
		14.456628, 20.279135, 15.652962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969281, 20.806862, 16.130693>,  <15.148575, 20.374060, 15.699852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969281, 20.806862, 16.130693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655679, 20.558727, 16.121618>,  <14.467517, 20.409845, 16.116173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.655679, 20.558727, 16.121618>,  <14.969281, 20.806862, 16.130693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.655679, 20.558727, 16.121618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030325, 0.001771, 0.999539,
		-0.620012, 0.784332, -0.020200,
		-0.784006, -0.620339, -0.022687,
		14.420477, 20.372625, 16.114813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.507265, 21.121895, 16.562042>,  <14.969281, 20.806862, 16.130693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.507265, 21.121895, 16.562042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398929, 20.738453, 16.526890>,  <14.333927, 20.508389, 16.505798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398929, 20.738453, 16.526890>,  <14.507265, 21.121895, 16.562042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398929, 20.738453, 16.526890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139859, -0.051138, 0.988850,
		-0.952410, 0.280112, -0.120219,
		-0.270841, -0.958604, -0.087880,
		14.317677, 20.450872, 16.500526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.884399, 20.996864, 16.913452>,  <14.507265, 21.121895, 16.562042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.884399, 20.996864, 16.913452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044938, 20.631989, 16.880394>,  <14.141261, 20.413063, 16.860559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044938, 20.631989, 16.880394>,  <13.884399, 20.996864, 16.913452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.044938, 20.631989, 16.880394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128207, -0.145293, 0.981047,
		-0.906909, -0.383144, -0.175262,
		0.401347, -0.912190, -0.082646,
		14.165342, 20.358332, 16.855600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.467954, 20.589180, 17.350199>,  <13.884399, 20.996864, 16.913452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.467954, 20.589180, 17.350199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794538, 20.371620, 17.272671>,  <13.990488, 20.241085, 17.226154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794538, 20.371620, 17.272671>,  <13.467954, 20.589180, 17.350199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.794538, 20.371620, 17.272671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060222, -0.414057, 0.908257,
		-0.574253, -0.729883, -0.370816,
		0.816460, -0.543900, -0.193818,
		14.039475, 20.208450, 17.214525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390827, 19.997728, 17.765514>,  <13.467954, 20.589180, 17.350199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390827, 19.997728, 17.765514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786429, 20.004177, 17.706718>,  <14.023791, 20.008047, 17.671440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786429, 20.004177, 17.706718>,  <13.390827, 19.997728, 17.765514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786429, 20.004177, 17.706718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146747, -0.229354, 0.962217,
		-0.018199, -0.973209, -0.229199,
		0.989007, 0.016123, -0.146989,
		14.083132, 20.009014, 17.662622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588449, 19.392025, 18.023117>,  <13.390827, 19.997728, 17.765514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588449, 19.392025, 18.023117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928063, 19.602470, 18.003765>,  <14.131832, 19.728739, 17.992155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928063, 19.602470, 18.003765>,  <13.588449, 19.392025, 18.023117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928063, 19.602470, 18.003765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189633, -0.217994, 0.957349,
		0.493130, -0.821998, -0.284854,
		0.849036, 0.526115, -0.048378,
		14.182775, 19.760305, 17.989252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.117550, 20.710669, 18.438972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.816547, 20.973846, 18.450565>,  <19.635946, 21.131754, 18.457521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.816547, 20.973846, 18.450565>,  <20.117550, 20.710669, 18.438972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816547, 20.973846, 18.450565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240591, -0.233671, -0.942079,
		-0.613065, -0.715894, 0.334135,
		-0.752507, 0.657946, 0.028982,
		19.590796, 21.171230, 18.459261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.581657, 20.294359, 18.222303>,  <20.117550, 20.710669, 18.438972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.581657, 20.294359, 18.222303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.482849, 20.671486, 18.132795>,  <19.423565, 20.897762, 18.079090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.482849, 20.671486, 18.132795>,  <19.581657, 20.294359, 18.222303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482849, 20.671486, 18.132795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057729, -0.244836, -0.967844,
		-0.967289, -0.226160, 0.114907,
		-0.247021, 0.942819, -0.223771,
		19.408743, 20.954332, 18.065664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941347, 20.237585, 17.720976>,  <19.581657, 20.294359, 18.222303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941347, 20.237585, 17.720976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.067116, 20.615990, 17.689472>,  <19.142578, 20.843033, 17.670570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.067116, 20.615990, 17.689472>,  <18.941347, 20.237585, 17.720976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.067116, 20.615990, 17.689472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219961, -0.008103, -0.975475,
		-0.923448, 0.324036, 0.205537,
		0.314424, 0.946010, -0.078758,
		19.161444, 20.899794, 17.665846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454092, 20.598642, 17.213575>,  <18.941347, 20.237585, 17.720976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454092, 20.598642, 17.213575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.807850, 20.784023, 17.235699>,  <19.020103, 20.895252, 17.248972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.807850, 20.784023, 17.235699>,  <18.454092, 20.598642, 17.213575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.807850, 20.784023, 17.235699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096670, -0.065951, -0.993129,
		-0.456622, 0.883663, -0.103128,
		0.884393, 0.463454, 0.055309,
		19.073168, 20.923059, 17.252291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428812, 21.000872, 16.607817>,  <18.454092, 20.598642, 17.213575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428812, 21.000872, 16.607817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.813873, 21.020969, 16.714230>,  <19.044910, 21.033028, 16.778076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.813873, 21.020969, 16.714230>,  <18.428812, 21.000872, 16.607817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813873, 21.020969, 16.714230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269903, -0.101206, -0.957554,
		-0.021189, 0.993596, -0.110988,
		0.962654, 0.050245, 0.266030,
		19.102669, 21.036043, 16.794039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704390, 21.555552, 16.267097>,  <18.428812, 21.000872, 16.607817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704390, 21.555552, 16.267097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034531, 21.340519, 16.336149>,  <19.232615, 21.211500, 16.377581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.034531, 21.340519, 16.336149>,  <18.704390, 21.555552, 16.267097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034531, 21.340519, 16.336149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193538, -0.017860, -0.980930,
		0.530413, 0.843023, 0.089301,
		0.825351, -0.537582, 0.172630,
		19.282137, 21.179245, 16.387938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.383554, 21.967934, 16.036568>,  <18.704390, 21.555552, 16.267097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.383554, 21.967934, 16.036568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.450943, 21.573685, 16.041670>,  <19.491377, 21.337135, 16.044731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.450943, 21.573685, 16.041670>,  <19.383554, 21.967934, 16.036568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.450943, 21.573685, 16.041670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178635, 0.017802, -0.983754,
		0.969385, 0.168013, 0.179066,
		0.168471, -0.985624, 0.012756,
		19.501484, 21.277998, 16.045496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.028038, 21.853596, 15.587605>,  <19.383554, 21.967934, 16.036568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.028038, 21.853596, 15.587605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.872826, 21.486126, 15.617182>,  <19.779699, 21.265644, 15.634928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.872826, 21.486126, 15.617182>,  <20.028038, 21.853596, 15.587605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.872826, 21.486126, 15.617182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129625, -0.133827, -0.982490,
		0.912486, -0.371651, 0.171012,
		-0.388030, -0.918676, 0.073940,
		19.756416, 21.210524, 15.639364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314615, 21.598766, 15.074871>,  <20.028038, 21.853596, 15.587605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314615, 21.598766, 15.074871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.029243, 21.330784, 15.157021>,  <19.858021, 21.169994, 15.206310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.029243, 21.330784, 15.157021>,  <20.314615, 21.598766, 15.074871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.029243, 21.330784, 15.157021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055923, -0.237716, -0.969723,
		0.698492, -0.703315, 0.132128,
		-0.713430, -0.669955, 0.205374,
		19.815214, 21.129797, 15.218633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.486320, 21.034706, 14.660222>,  <20.314615, 21.598766, 15.074871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.486320, 21.034706, 14.660222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.103115, 20.974518, 14.757851>,  <19.873192, 20.938404, 14.816428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.103115, 20.974518, 14.757851>,  <20.486320, 21.034706, 14.660222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103115, 20.974518, 14.757851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210969, -0.206553, -0.955420,
		0.194177, -0.966796, 0.166135,
		-0.958012, -0.150472, 0.244072,
		19.815712, 20.929377, 14.831072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.274029, 20.556677, 14.258902>,  <20.486320, 21.034706, 14.660222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.274029, 20.556677, 14.258902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.910637, 20.675148, 14.376846>,  <19.692602, 20.746231, 14.447613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.910637, 20.675148, 14.376846>,  <20.274029, 20.556677, 14.258902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910637, 20.675148, 14.376846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403928, -0.441156, -0.801388,
		-0.107274, -0.847148, 0.520416,
		-0.908479, 0.296178, 0.294862,
		19.638094, 20.764002, 14.465305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.753553, 20.010834, 14.017328>,  <20.274029, 20.556677, 14.258902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.753553, 20.010834, 14.017328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.590660, 20.372299, 14.070324>,  <19.492924, 20.589178, 14.102121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.590660, 20.372299, 14.070324>,  <19.753553, 20.010834, 14.017328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.590660, 20.372299, 14.070324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420336, -0.056650, -0.905599,
		-0.810851, -0.424480, 0.402912,
		-0.407233, 0.903663, 0.132490,
		19.468491, 20.643398, 14.110071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013737, 19.948824, 13.850087>,  <19.753553, 20.010834, 14.017328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013737, 19.948824, 13.850087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.104218, 20.335587, 13.802883>,  <19.158506, 20.567644, 13.774561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.104218, 20.335587, 13.802883>,  <19.013737, 19.948824, 13.850087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.104218, 20.335587, 13.802883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388841, -0.021447, -0.921055,
		-0.893105, 0.254230, 0.371122,
		0.226200, 0.966906, -0.118010,
		19.172077, 20.625658, 13.767480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414721, 20.240189, 13.585816>,  <19.013737, 19.948824, 13.850087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414721, 20.240189, 13.585816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.720432, 20.479057, 13.488438>,  <18.903860, 20.622377, 13.430011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.720432, 20.479057, 13.488438>,  <18.414721, 20.240189, 13.585816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720432, 20.479057, 13.488438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356308, 0.076379, -0.931242,
		-0.537515, 0.798470, 0.271151,
		0.764279, 0.597170, -0.243446,
		18.949717, 20.658209, 13.415403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645517, 19.964472, 13.757218>,  <18.414721, 20.240189, 13.585816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645517, 19.964472, 13.757218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.623375, 19.569462, 13.698252>,  <17.610088, 19.332457, 13.662872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.623375, 19.569462, 13.698252>,  <17.645517, 19.964472, 13.757218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623375, 19.569462, 13.698252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030849, -0.145880, 0.988821,
		-0.997990, 0.059286, -0.022388,
		-0.055357, -0.987524, -0.147416,
		17.606768, 19.273205, 13.654027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987951, 19.678795, 14.057605>,  <17.645517, 19.964472, 13.757218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987951, 19.678795, 14.057605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.292557, 19.419537, 14.056757>,  <17.475319, 19.263981, 14.056249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.292557, 19.419537, 14.056757>,  <16.987951, 19.678795, 14.057605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.292557, 19.419537, 14.056757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074692, -0.091003, 0.993046,
		-0.643833, -0.756058, -0.117712,
		0.761512, -0.648148, -0.002119,
		17.521011, 19.225092, 14.056121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767389, 19.211710, 14.505512>,  <16.987951, 19.678795, 14.057605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.767389, 19.211710, 14.505512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.159943, 19.139427, 14.479488>,  <17.395473, 19.096058, 14.463874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.159943, 19.139427, 14.479488>,  <16.767389, 19.211710, 14.505512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159943, 19.139427, 14.479488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032988, -0.175113, 0.983996,
		-0.189223, -0.967820, -0.165891,
		0.981380, -0.180723, -0.065062,
		17.454357, 19.085215, 14.459970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801132, 18.561592, 14.839616>,  <16.767389, 19.211710, 14.505512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801132, 18.561592, 14.839616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.176537, 18.699665, 14.842289>,  <17.401779, 18.782509, 14.843893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.176537, 18.699665, 14.842289>,  <16.801132, 18.561592, 14.839616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.176537, 18.699665, 14.842289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111826, -0.322239, 0.940030,
		0.326635, -0.881482, -0.341026,
		0.938512, 0.345182, 0.006682,
		17.458090, 18.803219, 14.844294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191572, 18.071465, 15.249185>,  <16.801132, 18.561592, 14.839616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191572, 18.071465, 15.249185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.430840, 18.391178, 15.226070>,  <17.574400, 18.583006, 15.212202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.430840, 18.391178, 15.226070>,  <17.191572, 18.071465, 15.249185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.430840, 18.391178, 15.226070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203213, -0.081538, 0.975734,
		0.775178, -0.595394, -0.211198,
		0.598166, 0.799286, -0.057785,
		17.610289, 18.630964, 15.208735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847866, 17.879780, 15.382239>,  <17.191572, 18.071465, 15.249185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847866, 17.879780, 15.382239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.771484, 18.263256, 15.466576>,  <17.725657, 18.493341, 15.517178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.771484, 18.263256, 15.466576>,  <17.847866, 17.879780, 15.382239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.771484, 18.263256, 15.466576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186320, -0.175488, 0.966690,
		0.963754, 0.223876, -0.145113,
		-0.190953, 0.958688, 0.210840,
		17.714199, 18.550863, 15.529827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413162, 17.995897, 15.776326>,  <17.847866, 17.879780, 15.382239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413162, 17.995897, 15.776326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.178181, 18.305370, 15.871250>,  <18.037191, 18.491055, 15.928205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.178181, 18.305370, 15.871250>,  <18.413162, 17.995897, 15.776326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.178181, 18.305370, 15.871250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300660, -0.063594, 0.951609,
		0.751333, 0.630376, -0.195257,
		-0.587454, 0.773681, 0.237309,
		18.001944, 18.537474, 15.942443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767550, 18.490047, 16.180986>,  <18.413162, 17.995897, 15.776326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767550, 18.490047, 16.180986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.409348, 18.652889, 16.252916>,  <18.194426, 18.750595, 16.296074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.409348, 18.652889, 16.252916>,  <18.767550, 18.490047, 16.180986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409348, 18.652889, 16.252916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251788, 0.130266, 0.958975,
		0.366979, 0.904044, -0.219158,
		-0.895505, 0.407105, 0.179823,
		18.140696, 18.775021, 16.306864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940269, 18.958765, 16.599823>,  <18.767550, 18.490047, 16.180986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940269, 18.958765, 16.599823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.544964, 18.916836, 16.644272>,  <18.307781, 18.891678, 16.670942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.544964, 18.916836, 16.644272>,  <18.940269, 18.958765, 16.599823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.544964, 18.916836, 16.644272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086503, 0.215577, 0.972648,
		-0.125911, 0.970844, -0.203979,
		-0.988263, -0.104822, 0.111124,
		18.248486, 18.885389, 16.677608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745884, 19.586544, 16.966375>,  <18.940269, 18.958765, 16.599823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745884, 19.586544, 16.966375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.484234, 19.285137, 16.992710>,  <18.327244, 19.104294, 17.008511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.484234, 19.285137, 16.992710>,  <18.745884, 19.586544, 16.966375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.484234, 19.285137, 16.992710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032803, 0.115221, 0.992798,
		-0.755676, 0.647253, -0.100086,
		-0.654124, -0.753517, 0.065838,
		18.287996, 19.059082, 17.012461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043179, 19.855915, 17.185347>,  <18.745884, 19.586544, 16.966375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043179, 19.855915, 17.185347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.033886, 19.471180, 17.294397>,  <18.028311, 19.240339, 17.359829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.033886, 19.471180, 17.294397>,  <18.043179, 19.855915, 17.185347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033886, 19.471180, 17.294397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086252, 0.273613, 0.957965,
		-0.996002, -0.001258, -0.089317,
		-0.023233, -0.961839, 0.272628,
		18.026917, 19.182629, 17.376186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.658241, 19.876566, 17.800613>,  <18.043179, 19.855915, 17.185347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.658241, 19.876566, 17.800613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.802807, 19.503616, 17.803591>,  <17.889545, 19.279846, 17.805376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.802807, 19.503616, 17.803591>,  <17.658241, 19.876566, 17.800613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.802807, 19.503616, 17.803591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156307, -0.052717, 0.986301,
		-0.919211, -0.357626, -0.164790,
		0.361414, -0.932376, 0.007441,
		17.911230, 19.223904, 17.805822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212988, 19.456848, 18.316875>,  <17.658241, 19.876566, 17.800613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212988, 19.456848, 18.316875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.572659, 19.284096, 18.288698>,  <17.788462, 19.180445, 18.271791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.572659, 19.284096, 18.288698>,  <17.212988, 19.456848, 18.316875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572659, 19.284096, 18.288698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043925, -0.071087, 0.996502,
		-0.435378, -0.899125, -0.044950,
		0.899176, -0.431881, -0.070444,
		17.842411, 19.154531, 18.267565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166040, 18.700563, 18.572491>,  <17.212988, 19.456848, 18.316875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.166040, 18.700563, 18.572491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.543079, 18.831509, 18.598864>,  <17.769302, 18.910076, 18.614687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.543079, 18.831509, 18.598864>,  <17.166040, 18.700563, 18.572491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.543079, 18.831509, 18.598864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023632, -0.131547, 0.991028,
		0.333097, -0.935698, -0.116260,
		0.942596, 0.327361, 0.065930,
		17.825859, 18.929716, 18.618643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044291, 17.971163, 18.524746>,  <17.166040, 18.700563, 18.572491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044291, 17.971163, 18.524746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.688007, 17.807991, 18.604980>,  <16.474237, 17.710089, 18.653120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.688007, 17.807991, 18.604980>,  <17.044291, 17.971163, 18.524746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688007, 17.807991, 18.604980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165422, -0.120134, -0.978879,
		0.423410, -0.905076, 0.039524,
		-0.890708, -0.407929, 0.200586,
		16.420795, 17.685612, 18.665155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993765, 17.418873, 18.142019>,  <17.044291, 17.971163, 18.524746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993765, 17.418873, 18.142019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.602512, 17.459408, 18.214674>,  <16.367762, 17.483728, 18.258266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.602512, 17.459408, 18.214674>,  <16.993765, 17.418873, 18.142019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602512, 17.459408, 18.214674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200243, -0.222644, -0.954113,
		-0.056248, -0.969619, 0.238067,
		-0.978130, 0.101339, 0.181636,
		16.309072, 17.489809, 18.269165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729527, 16.918926, 17.726875>,  <16.993765, 17.418873, 18.142019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729527, 16.918926, 17.726875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.419167, 17.148178, 17.832325>,  <16.232950, 17.285730, 17.895594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.419167, 17.148178, 17.832325>,  <16.729527, 16.918926, 17.726875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.419167, 17.148178, 17.832325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377412, -0.086864, -0.921962,
		-0.505507, -0.814847, 0.283705,
		-0.775902, 0.573132, 0.263623,
		16.186396, 17.320118, 17.911411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139912, 16.551037, 17.545172>,  <16.729527, 16.918926, 17.726875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139912, 16.551037, 17.545172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.046047, 16.939198, 17.567987>,  <15.989728, 17.172094, 17.581676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.046047, 16.939198, 17.567987>,  <16.139912, 16.551037, 17.545172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046047, 16.939198, 17.567987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441155, -0.054025, -0.895803,
		-0.866207, -0.235375, 0.440776,
		-0.234663, 0.970402, 0.057040,
		15.975649, 17.230318, 17.585100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374272, 16.650261, 17.507566>,  <16.139912, 16.551037, 17.545172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374272, 16.650261, 17.507566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.557364, 16.981945, 17.379255>,  <15.667219, 17.180956, 17.302269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.557364, 16.981945, 17.379255>,  <15.374272, 16.650261, 17.507566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.557364, 16.981945, 17.379255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504772, -0.054639, -0.861521,
		-0.731907, 0.556263, 0.393552,
		0.457729, 0.829208, -0.320776,
		15.694683, 17.230707, 17.283022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.846478, 17.015182, 17.231615>,  <15.374272, 16.650261, 17.507566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.846478, 17.015182, 17.231615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.172360, 17.197643, 17.088408>,  <15.367890, 17.307119, 17.002483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.172360, 17.197643, 17.088408>,  <14.846478, 17.015182, 17.231615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.172360, 17.197643, 17.088408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357661, -0.090688, -0.929438,
		-0.456433, 0.885269, 0.089264,
		0.814707, 0.456152, -0.358019,
		15.416773, 17.334490, 16.981001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544507, 17.296570, 16.704468>,  <14.846478, 17.015182, 17.231615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544507, 17.296570, 16.704468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.943467, 17.281212, 16.680082>,  <15.182843, 17.271997, 16.665451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.943467, 17.281212, 16.680082>,  <14.544507, 17.296570, 16.704468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.943467, 17.281212, 16.680082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061352, -0.008987, -0.998076,
		0.037774, 0.999222, -0.011319,
		0.997401, -0.038396, -0.060965,
		15.242687, 17.269693, 16.661793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.787402, 17.787766, 16.194622>,  <14.544507, 17.296570, 16.704468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.787402, 17.787766, 16.194622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.065045, 17.501774, 16.228142>,  <15.231631, 17.330179, 16.248253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.065045, 17.501774, 16.228142>,  <14.787402, 17.787766, 16.194622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065045, 17.501774, 16.228142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031700, -0.085937, -0.995796,
		0.719173, 0.693845, -0.036985,
		0.694107, -0.714978, 0.083799,
		15.273277, 17.287281, 16.253281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.369555, 17.974125, 15.698503>,  <14.787402, 17.787766, 16.194622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.369555, 17.974125, 15.698503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.393664, 17.582409, 15.775812>,  <15.408131, 17.347380, 15.822198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.393664, 17.582409, 15.775812>,  <15.369555, 17.974125, 15.698503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393664, 17.582409, 15.775812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022544, -0.194913, -0.980561,
		0.997927, 0.054746, -0.033825,
		0.060275, -0.979292, 0.193275,
		15.411747, 17.288622, 15.833795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.738448, 17.760345, 15.218344>,  <15.369555, 17.974125, 15.698503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.738448, 17.760345, 15.218344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.595284, 17.410233, 15.348440>,  <15.509386, 17.200165, 15.426498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.595284, 17.410233, 15.348440>,  <15.738448, 17.760345, 15.218344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.595284, 17.410233, 15.348440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059806, -0.326112, -0.943437,
		0.931839, -0.357117, 0.064372,
		-0.357910, -0.875282, 0.325241,
		15.487911, 17.147648, 15.446012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.021366, 17.143394, 14.767200>,  <15.738448, 17.760345, 15.218344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.021366, 17.143394, 14.767200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.702662, 16.980034, 14.945358>,  <15.511440, 16.882017, 15.052254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.702662, 16.980034, 14.945358>,  <16.021366, 17.143394, 14.767200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702662, 16.980034, 14.945358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350273, -0.288482, -0.891116,
		0.492424, -0.866016, 0.086798,
		-0.796761, -0.408404, 0.445397,
		15.463634, 16.857513, 15.078978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006006, 16.423872, 14.549085>,  <16.021366, 17.143394, 14.767200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006006, 16.423872, 14.549085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.650588, 16.567402, 14.663443>,  <15.437338, 16.653521, 14.732058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.650588, 16.567402, 14.663443>,  <16.006006, 16.423872, 14.549085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650588, 16.567402, 14.663443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375718, -0.211483, -0.902281,
		-0.263302, -0.909130, 0.322730,
		-0.888542, 0.358828, 0.285893,
		15.384025, 16.675049, 14.749210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493085, 15.915921, 14.201364>,  <16.006006, 16.423872, 14.549085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493085, 15.915921, 14.201364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.252858, 16.222778, 14.291529>,  <15.108722, 16.406893, 14.345628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.252858, 16.222778, 14.291529>,  <15.493085, 15.915921, 14.201364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.252858, 16.222778, 14.291529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301114, 0.044164, -0.952565,
		-0.740709, -0.639953, 0.204474,
		-0.600566, 0.767143, 0.225412,
		15.072688, 16.452921, 14.359153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798919, 15.762883, 13.978269>,  <15.493085, 15.915921, 14.201364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798919, 15.762883, 13.978269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.848104, 16.159847, 13.977489>,  <14.877615, 16.398026, 13.977022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.848104, 16.159847, 13.977489>,  <14.798919, 15.762883, 13.978269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848104, 16.159847, 13.977489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525112, 0.063398, -0.848668,
		-0.842103, 0.105377, 0.528922,
		0.122963, 0.992410, -0.001947,
		14.884993, 16.457569, 13.976905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.212809, 18.887878, 18.117270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.350024, 19.249992, 18.217495>,  <14.432354, 19.467260, 18.277630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.350024, 19.249992, 18.217495>,  <14.212809, 18.887878, 18.117270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350024, 19.249992, 18.217495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356825, -0.372342, 0.856760,
		0.868907, -0.204496, -0.450757,
		0.343040, 0.905286, 0.250561,
		14.452936, 19.521578, 18.292664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805738, 18.715736, 18.541019>,  <14.212809, 18.887878, 18.117270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805738, 18.715736, 18.541019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.716174, 19.095966, 18.627064>,  <14.662436, 19.324104, 18.678690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.716174, 19.095966, 18.627064>,  <14.805738, 18.715736, 18.541019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716174, 19.095966, 18.627064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277794, -0.149313, 0.948966,
		0.934181, 0.272240, -0.230631,
		-0.223911, 0.950574, 0.215112,
		14.649001, 19.381138, 18.691597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219483, 18.787146, 19.025879>,  <14.805738, 18.715736, 18.541019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219483, 18.787146, 19.025879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.969220, 19.095680, 19.072517>,  <14.819062, 19.280800, 19.100500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.969220, 19.095680, 19.072517>,  <15.219483, 18.787146, 19.025879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969220, 19.095680, 19.072517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138406, -0.037333, 0.989672,
		0.767722, 0.635332, -0.083400,
		-0.625657, 0.771336, 0.116595,
		14.781523, 19.327082, 19.107496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500776, 19.354034, 19.492250>,  <15.219483, 18.787146, 19.025879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500776, 19.354034, 19.492250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.103257, 19.397972, 19.499174>,  <14.864746, 19.424335, 19.503328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.103257, 19.397972, 19.499174>,  <15.500776, 19.354034, 19.492250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103257, 19.397972, 19.499174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020347, 0.026580, 0.999440,
		0.109322, 0.993593, -0.028650,
		-0.993798, 0.109844, 0.017311,
		14.805118, 19.430925, 19.504368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.403250, 19.850790, 20.067669>,  <15.500776, 19.354034, 19.492250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.403250, 19.850790, 20.067669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.061830, 19.649059, 20.015352>,  <14.856977, 19.528021, 19.983963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.061830, 19.649059, 20.015352>,  <15.403250, 19.850790, 20.067669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.061830, 19.649059, 20.015352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148919, -0.004403, 0.988840,
		-0.499273, 0.863503, -0.071345,
		-0.853551, -0.504325, -0.130790,
		14.805764, 19.497761, 19.976114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929237, 20.268908, 20.446451>,  <15.403250, 19.850790, 20.067669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929237, 20.268908, 20.446451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.786550, 19.896313, 20.417929>,  <14.700937, 19.672756, 20.400814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.786550, 19.896313, 20.417929>,  <14.929237, 20.268908, 20.446451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786550, 19.896313, 20.417929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333210, 0.055553, 0.941215,
		-0.872767, 0.359510, -0.330197,
		-0.356720, -0.931486, -0.071307,
		14.679534, 19.616867, 20.396536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212014, 20.298504, 20.583904>,  <14.929237, 20.268908, 20.446451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212014, 20.298504, 20.583904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.315116, 19.918053, 20.651924>,  <14.376977, 19.689781, 20.692736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.315116, 19.918053, 20.651924>,  <14.212014, 20.298504, 20.583904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315116, 19.918053, 20.651924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401173, 0.054762, 0.914364,
		-0.878990, -0.303901, -0.367452,
		0.257753, -0.951129, 0.170052,
		14.392442, 19.632713, 20.702940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779212, 20.125546, 21.141232>,  <14.212014, 20.298504, 20.583904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.779212, 20.125546, 21.141232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.035548, 19.818596, 21.132660>,  <14.189350, 19.634426, 21.127518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.035548, 19.818596, 21.132660>,  <13.779212, 20.125546, 21.141232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.035548, 19.818596, 21.132660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206693, -0.199357, 0.957881,
		-0.739326, -0.609419, -0.286367,
		0.640840, -0.767376, -0.021427,
		14.227800, 19.588383, 21.126232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.408195, 19.594433, 21.447197>,  <13.779212, 20.125546, 21.141232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.408195, 19.594433, 21.447197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.802182, 19.528374, 21.467436>,  <14.038575, 19.488737, 21.479578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.802182, 19.528374, 21.467436>,  <13.408195, 19.594433, 21.447197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.802182, 19.528374, 21.467436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096947, -0.286154, 0.953267,
		-0.142951, -0.943844, -0.297864,
		0.984970, -0.165148, 0.050597,
		14.097673, 19.478828, 21.482615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445608, 18.925770, 21.597897>,  <13.408195, 19.594433, 21.447197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445608, 18.925770, 21.597897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.799634, 19.075409, 21.708685>,  <14.012050, 19.165192, 21.775158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.799634, 19.075409, 21.708685>,  <13.445608, 18.925770, 21.597897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.799634, 19.075409, 21.708685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145863, -0.342159, 0.928252,
		0.442026, -0.861961, -0.248265,
		0.885063, 0.374099, 0.276972,
		14.065153, 19.187639, 21.791777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559717, 18.493979, 22.110516>,  <13.445608, 18.925770, 21.597897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559717, 18.493979, 22.110516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.799897, 18.808071, 22.171007>,  <13.944005, 18.996527, 22.207302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.799897, 18.808071, 22.171007>,  <13.559717, 18.493979, 22.110516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.799897, 18.808071, 22.171007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003488, -0.191687, 0.981450,
		0.799655, -0.588783, -0.117837,
		0.600449, 0.785233, 0.151230,
		13.980032, 19.043640, 22.216375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080118, 18.184977, 22.473850>,  <13.559717, 18.493979, 22.110516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080118, 18.184977, 22.473850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.094682, 18.580448, 22.532078>,  <14.103420, 18.817730, 22.567015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.094682, 18.580448, 22.532078>,  <14.080118, 18.184977, 22.473850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.094682, 18.580448, 22.532078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015551, -0.146208, 0.989132,
		0.999216, -0.033750, -0.020699,
		0.036409, 0.988678, 0.145568,
		14.105604, 18.877052, 22.575748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574899, 18.311672, 23.063133>,  <14.080118, 18.184977, 22.473850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.574899, 18.311672, 23.063133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.329436, 18.627502, 23.063490>,  <14.182159, 18.816999, 23.063704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.329436, 18.627502, 23.063490>,  <14.574899, 18.311672, 23.063133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.329436, 18.627502, 23.063490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011135, -0.009782, 0.999890,
		0.789495, 0.613578, 0.014794,
		-0.613656, 0.789573, 0.000891,
		14.145340, 18.864374, 23.063757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971820, 18.348400, 23.622324>,  <14.574899, 18.311672, 23.063133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971820, 18.348400, 23.622324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.586911, 18.456486, 23.609558>,  <14.355966, 18.521338, 23.601898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.586911, 18.456486, 23.609558>,  <14.971820, 18.348400, 23.622324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586911, 18.456486, 23.609558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097858, -0.234256, 0.967237,
		0.253884, 0.933868, 0.251861,
		-0.962272, 0.270213, -0.031913,
		14.298229, 18.537550, 23.599985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.297364, 18.371128, 24.273979>,  <14.971820, 18.348400, 23.622324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.297364, 18.371128, 24.273979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.642200, 18.168720, 24.284904>,  <15.849101, 18.047276, 24.291460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.642200, 18.168720, 24.284904>,  <15.297364, 18.371128, 24.273979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642200, 18.168720, 24.284904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060326, 0.048961, -0.996977,
		0.503154, 0.861130, 0.072735,
		0.862089, -0.506021, 0.027313,
		15.900826, 18.016914, 24.293098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783466, 18.666027, 23.789219>,  <15.297364, 18.371128, 24.273979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.783466, 18.666027, 23.789219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.896848, 18.286411, 23.844328>,  <15.964876, 18.058641, 23.877394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.896848, 18.286411, 23.844328>,  <15.783466, 18.666027, 23.789219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896848, 18.286411, 23.844328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151936, -0.097409, -0.983579,
		0.946874, 0.299732, 0.116582,
		0.283454, -0.949038, 0.137774,
		15.981884, 18.001699, 23.885660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305790, 18.558155, 23.359154>,  <15.783466, 18.666027, 23.789219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305790, 18.558155, 23.359154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.205738, 18.181141, 23.447748>,  <16.145706, 17.954931, 23.500906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.205738, 18.181141, 23.447748>,  <16.305790, 18.558155, 23.359154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205738, 18.181141, 23.447748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108811, -0.254676, -0.960885,
		0.962078, -0.216247, 0.166261,
		-0.250131, -0.942538, 0.221488,
		16.130699, 17.898380, 23.514194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792917, 18.116423, 23.018875>,  <16.305790, 18.558155, 23.359154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792917, 18.116423, 23.018875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.487331, 17.867252, 23.086189>,  <16.303980, 17.717751, 23.126577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.487331, 17.867252, 23.086189>,  <16.792917, 18.116423, 23.018875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487331, 17.867252, 23.086189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146949, -0.421916, -0.894647,
		0.628300, -0.658750, 0.413868,
		-0.763966, -0.622924, 0.168288,
		16.258141, 17.680376, 23.136675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073427, 17.459356, 22.885326>,  <16.792917, 18.116423, 23.018875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073427, 17.459356, 22.885326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.677700, 17.436035, 22.831877>,  <16.440264, 17.422043, 22.799807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.677700, 17.436035, 22.831877>,  <17.073427, 17.459356, 22.885326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.677700, 17.436035, 22.831877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145552, -0.342958, -0.928006,
		0.008277, -0.937540, 0.347779,
		-0.989316, -0.058301, -0.133622,
		16.380905, 17.418545, 22.791790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.010189, 16.905077, 22.419300>,  <17.073427, 17.459356, 22.885326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.010189, 16.905077, 22.419300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.641884, 17.056168, 22.380274>,  <16.420900, 17.146822, 22.356857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.641884, 17.056168, 22.380274>,  <17.010189, 16.905077, 22.419300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641884, 17.056168, 22.380274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074405, -0.075468, -0.994368,
		-0.382962, -0.922836, 0.041384,
		-0.920763, 0.377726, -0.097565,
		16.365656, 17.169485, 22.351004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687330, 16.491171, 21.936274>,  <17.010189, 16.905077, 22.419300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687330, 16.491171, 21.936274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.482910, 16.834904, 21.944012>,  <16.360258, 17.041143, 21.948654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.482910, 16.834904, 21.944012>,  <16.687330, 16.491171, 21.936274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.482910, 16.834904, 21.944012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046731, 0.050249, -0.997643,
		-0.858279, -0.508942, -0.065837,
		-0.511051, 0.859333, 0.019344,
		16.329596, 17.092703, 21.949816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084854, 16.353849, 21.481979>,  <16.687330, 16.491171, 21.936274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084854, 16.353849, 21.481979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.097042, 16.753113, 21.502970>,  <16.104355, 16.992670, 21.515564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.097042, 16.753113, 21.502970>,  <16.084854, 16.353849, 21.481979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.097042, 16.753113, 21.502970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211121, 0.057744, -0.975753,
		-0.976985, 0.018654, 0.212492,
		0.030472, 0.998157, 0.052477,
		16.106184, 17.052561, 21.518713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580739, 16.552721, 21.118559>,  <16.084854, 16.353849, 21.481979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580739, 16.552721, 21.118559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.847917, 16.850166, 21.130508>,  <16.008223, 17.028633, 21.137678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.847917, 16.850166, 21.130508>,  <15.580739, 16.552721, 21.118559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847917, 16.850166, 21.130508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027558, 0.064829, -0.997516,
		-0.743701, 0.665462, 0.063795,
		0.667945, 0.743611, 0.029875,
		16.048300, 17.073250, 21.139471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379446, 17.063581, 20.619507>,  <15.580739, 16.552721, 21.118559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379446, 17.063581, 20.619507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.745145, 17.220181, 20.661230>,  <15.964564, 17.314140, 20.686264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.745145, 17.220181, 20.661230>,  <15.379446, 17.063581, 20.619507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745145, 17.220181, 20.661230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077099, 0.084635, -0.993425,
		-0.397752, 0.916278, 0.047193,
		0.914248, 0.391498, 0.104308,
		16.019419, 17.337629, 20.692522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.363400, 17.689125, 20.328926>,  <15.379446, 17.063581, 20.619507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.363400, 17.689125, 20.328926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.747993, 17.582920, 20.300478>,  <15.978748, 17.519197, 20.283409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.747993, 17.582920, 20.300478>,  <15.363400, 17.689125, 20.328926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.747993, 17.582920, 20.300478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003590, 0.246584, -0.969115,
		0.274849, 0.932040, 0.236133,
		0.961481, -0.265513, -0.071120,
		16.036436, 17.503265, 20.279142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750492, 18.296438, 20.122198>,  <15.363400, 17.689125, 20.328926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750492, 18.296438, 20.122198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.974500, 17.983356, 20.013565>,  <16.108904, 17.795507, 19.948385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.974500, 17.983356, 20.013565>,  <15.750492, 18.296438, 20.122198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.974500, 17.983356, 20.013565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088626, 0.269330, -0.958961,
		0.823726, 0.561105, 0.081462,
		0.560018, -0.782702, -0.271583,
		16.142506, 17.748547, 19.932091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117796, 18.538946, 19.496220>,  <15.750492, 18.296438, 20.122198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.117796, 18.538946, 19.496220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229637, 18.155273, 19.513130>,  <16.296741, 17.925070, 19.523277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.229637, 18.155273, 19.513130>,  <16.117796, 18.538946, 19.496220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229637, 18.155273, 19.513130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083654, -0.068205, -0.994158,
		0.956464, 0.274434, -0.099310,
		0.279605, -0.959184, 0.042278,
		16.313519, 17.867517, 19.525814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.756565, 18.447567, 19.117775>,  <16.117796, 18.538946, 19.496220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.756565, 18.447567, 19.117775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.568161, 18.094997, 19.131880>,  <16.455118, 17.883455, 19.140343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.568161, 18.094997, 19.131880>,  <16.756565, 18.447567, 19.117775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568161, 18.094997, 19.131880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059677, -0.071723, -0.995638,
		0.880106, -0.466852, 0.086383,
		-0.471011, -0.881422, 0.035263,
		16.426857, 17.830570, 19.142458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461575, 18.338102, 19.116400>,  <16.756565, 18.447567, 19.117775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461575, 18.338102, 19.116400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.705254, 18.652424, 19.073713>,  <17.851461, 18.841017, 19.048101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.705254, 18.652424, 19.073713>,  <17.461575, 18.338102, 19.116400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.705254, 18.652424, 19.073713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053427, 0.174934, 0.983130,
		0.791216, -0.593220, 0.148553,
		0.609199, 0.785804, -0.106716,
		17.888014, 18.888165, 19.041698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922979, 18.212093, 19.558989>,  <17.461575, 18.338102, 19.116400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922979, 18.212093, 19.558989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.972244, 18.603275, 19.491533>,  <18.001804, 18.837984, 19.451059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.972244, 18.603275, 19.491533>,  <17.922979, 18.212093, 19.558989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972244, 18.603275, 19.491533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024754, 0.172906, 0.984627,
		0.992078, -0.117096, 0.045504,
		0.123164, 0.977953, -0.168638,
		18.009193, 18.896662, 19.440943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557371, 18.359127, 19.792831>,  <17.922979, 18.212093, 19.558989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557371, 18.359127, 19.792831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.334637, 18.691315, 19.786394>,  <18.200996, 18.890627, 19.782532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.334637, 18.691315, 19.786394>,  <18.557371, 18.359127, 19.792831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334637, 18.691315, 19.786394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298585, 0.218206, 0.929103,
		0.775101, 0.512553, -0.369470,
		-0.556836, 0.830467, -0.016091,
		18.167585, 18.940454, 19.781567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927856, 18.888206, 20.100159>,  <18.557371, 18.359127, 19.792831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927856, 18.888206, 20.100159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.549133, 19.012115, 20.135027>,  <18.321899, 19.086462, 20.155949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.549133, 19.012115, 20.135027>,  <18.927856, 18.888206, 20.100159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.549133, 19.012115, 20.135027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179586, 0.283838, 0.941905,
		0.267035, 0.907456, -0.324370,
		-0.946806, 0.309774, 0.087172,
		18.265091, 19.105047, 20.161179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054779, 19.431095, 20.469793>,  <18.927856, 18.888206, 20.100159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054779, 19.431095, 20.469793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.656517, 19.433022, 20.506994>,  <18.417561, 19.434177, 20.529314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.656517, 19.433022, 20.506994>,  <19.054779, 19.431095, 20.469793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656517, 19.433022, 20.506994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088837, 0.348745, 0.932998,
		-0.027941, 0.937205, -0.347658,
		-0.995654, 0.004816, 0.093003,
		18.357821, 19.434465, 20.534895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860090, 20.105560, 20.857155>,  <19.054779, 19.431095, 20.469793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860090, 20.105560, 20.857155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.566376, 19.835617, 20.886513>,  <18.390146, 19.673651, 20.904127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.566376, 19.835617, 20.886513>,  <18.860090, 20.105560, 20.857155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566376, 19.835617, 20.886513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136448, 0.252638, 0.957892,
		-0.664984, 0.693354, -0.277592,
		-0.734288, -0.674859, 0.073393,
		18.346090, 19.633160, 20.908531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257696, 20.458723, 21.114426>,  <18.860090, 20.105560, 20.857155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257696, 20.458723, 21.114426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.196693, 20.073883, 21.204849>,  <18.160091, 19.842979, 21.259104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.196693, 20.073883, 21.204849>,  <18.257696, 20.458723, 21.114426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.196693, 20.073883, 21.204849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117258, 0.244732, 0.962474,
		-0.981322, 0.120278, -0.150137,
		-0.152508, -0.962102, 0.226058,
		18.150942, 19.785254, 21.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.021481, 21.093102, 21.153576>,  <18.257696, 20.458723, 21.114426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.021481, 21.093102, 21.153576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.394058, 21.232475, 21.195539>,  <18.617605, 21.316099, 21.220716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.394058, 21.232475, 21.195539>,  <18.021481, 21.093102, 21.153576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394058, 21.232475, 21.195539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156913, -0.124485, -0.979735,
		-0.328315, 0.929030, -0.170625,
		0.931444, 0.348435, 0.104907,
		18.673491, 21.337006, 21.227011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075384, 21.470591, 20.557802>,  <18.021481, 21.093102, 21.153576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075384, 21.470591, 20.557802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.442657, 21.398857, 20.699097>,  <18.663021, 21.355818, 20.783875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.442657, 21.398857, 20.699097>,  <18.075384, 21.470591, 20.557802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.442657, 21.398857, 20.699097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336334, -0.118263, -0.934288,
		0.209323, 0.976654, -0.048271,
		0.918185, -0.179333, 0.353237,
		18.718113, 21.345057, 20.805067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.322134, 21.871286, 20.113401>,  <18.075384, 21.470591, 20.557802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.322134, 21.871286, 20.113401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.641327, 21.669670, 20.245564>,  <18.832842, 21.548700, 20.324862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.641327, 21.669670, 20.245564>,  <18.322134, 21.871286, 20.113401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641327, 21.669670, 20.245564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330193, -0.092990, -0.939322,
		0.504180, 0.858660, 0.092226,
		0.797982, -0.504040, 0.330408,
		18.880722, 21.518457, 20.344687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980532, 22.325836, 19.912111>,  <18.322134, 21.871286, 20.113401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980532, 22.325836, 19.912111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.061001, 21.936615, 19.957188>,  <19.109282, 21.703083, 19.984234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.061001, 21.936615, 19.957188>,  <18.980532, 22.325836, 19.912111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.061001, 21.936615, 19.957188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377576, -0.029125, -0.925521,
		0.903862, 0.228739, 0.361542,
		0.201173, -0.973052, 0.112692,
		19.121353, 21.644699, 19.990995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699165, 22.310162, 19.674156>,  <18.980532, 22.325836, 19.912111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699165, 22.310162, 19.674156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.568123, 21.933067, 19.649101>,  <19.489498, 21.706810, 19.634068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.568123, 21.933067, 19.649101>,  <19.699165, 22.310162, 19.674156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.568123, 21.933067, 19.649101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444829, -0.095410, -0.890519,
		0.833548, -0.319602, 0.450613,
		-0.327605, -0.942736, -0.062639,
		19.469841, 21.650246, 19.630310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239992, 21.873833, 19.199512>,  <19.699165, 22.310162, 19.674156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239992, 21.873833, 19.199512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.881031, 21.698036, 19.215078>,  <19.665655, 21.592558, 19.224417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.881031, 21.698036, 19.215078>,  <20.239992, 21.873833, 19.199512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881031, 21.698036, 19.215078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070621, -0.230139, -0.970592,
		0.435523, -0.868264, 0.237565,
		-0.897403, -0.439492, 0.038913,
		19.611811, 21.566189, 19.226753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.424074, 21.240372, 18.915243>,  <20.239992, 21.873833, 19.199512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.424074, 21.240372, 18.915243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028107, 21.292511, 18.893078>,  <19.790525, 21.323793, 18.879778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028107, 21.292511, 18.893078>,  <20.424074, 21.240372, 18.915243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028107, 21.292511, 18.893078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016824, -0.280247, -0.959781,
		-0.140632, -0.951037, 0.275229,
		-0.989919, 0.130345, -0.055412,
		19.731131, 21.331615, 18.876453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.617938, 22.702353, 23.064621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.662158, 22.315289, 22.973923>,  <14.688690, 22.083050, 22.919504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.662158, 22.315289, 22.973923>,  <14.617938, 22.702353, 23.064621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662158, 22.315289, 22.973923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076870, 0.219133, -0.972662,
		0.990894, 0.124957, -0.050159,
		0.110549, -0.967660, -0.226743,
		14.695323, 22.024990, 22.905899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050765, 22.606491, 22.440386>,  <14.617938, 22.702353, 23.064621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.050765, 22.606491, 22.440386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.830911, 22.272808, 22.458281>,  <14.698998, 22.072599, 22.469017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.830911, 22.272808, 22.458281>,  <15.050765, 22.606491, 22.440386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830911, 22.272808, 22.458281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205891, 0.083366, -0.975017,
		0.809635, -0.545116, -0.217577,
		-0.549636, -0.834206, 0.044738,
		14.666020, 22.022547, 22.471703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146091, 22.234879, 21.909035>,  <15.050765, 22.606491, 22.440386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146091, 22.234879, 21.909035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.790286, 22.073566, 21.994949>,  <14.576803, 21.976780, 22.046497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.790286, 22.073566, 21.994949>,  <15.146091, 22.234879, 21.909035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790286, 22.073566, 21.994949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194735, -0.090639, -0.976659,
		0.413334, -0.910577, 0.002092,
		-0.889513, -0.403280, 0.214786,
		14.523432, 21.952583, 22.059385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.087730, 21.624462, 21.490284>,  <15.146091, 22.234879, 21.909035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.087730, 21.624462, 21.490284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.735408, 21.783180, 21.593615>,  <14.524014, 21.878410, 21.655613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.735408, 21.783180, 21.593615>,  <15.087730, 21.624462, 21.490284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735408, 21.783180, 21.593615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210186, 0.161208, -0.964279,
		-0.424264, -0.903641, -0.058593,
		-0.880807, 0.396793, 0.258328,
		14.471166, 21.902218, 21.671112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568839, 21.232037, 21.106749>,  <15.087730, 21.624462, 21.490284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568839, 21.232037, 21.106749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.368588, 21.564930, 21.202047>,  <14.248438, 21.764666, 21.259228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.368588, 21.564930, 21.202047>,  <14.568839, 21.232037, 21.106749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.368588, 21.564930, 21.202047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347155, 0.059109, -0.935943,
		-0.793006, -0.551266, 0.259323,
		-0.500625, 0.832234, 0.238248,
		14.218401, 21.814600, 21.273521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842690, 21.209364, 20.755938>,  <14.568839, 21.232037, 21.106749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842690, 21.209364, 20.755938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.905799, 21.597343, 20.830027>,  <13.943664, 21.830132, 20.874479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.905799, 21.597343, 20.830027>,  <13.842690, 21.209364, 20.755938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905799, 21.597343, 20.830027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504481, 0.240418, -0.829275,
		-0.848886, 0.037393, 0.527251,
		0.157770, 0.969949, 0.185223,
		13.953130, 21.888329, 20.885593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.162452, 21.482172, 20.571087>,  <13.842690, 21.209364, 20.755938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.162452, 21.482172, 20.571087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.412286, 21.794437, 20.562504>,  <13.562186, 21.981796, 20.557354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.412286, 21.794437, 20.562504>,  <13.162452, 21.482172, 20.571087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412286, 21.794437, 20.562504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570439, 0.437282, -0.695258,
		-0.533378, 0.446488, 0.718440,
		0.624585, 0.780661, -0.021457,
		13.599662, 22.028635, 20.556067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.762250, 22.064140, 20.420498>,  <13.162452, 21.482172, 20.571087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.762250, 22.064140, 20.420498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.128629, 22.197407, 20.331018>,  <13.348456, 22.277367, 20.277330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.128629, 22.197407, 20.331018>,  <12.762250, 22.064140, 20.420498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.128629, 22.197407, 20.331018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334153, 0.324523, -0.884888,
		-0.222219, 0.885260, 0.408575,
		0.915948, 0.333166, -0.223697,
		13.403413, 22.297356, 20.263908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629844, 22.665356, 20.029844>,  <12.762250, 22.064140, 20.420498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629844, 22.665356, 20.029844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.011306, 22.582001, 19.943018>,  <13.240183, 22.531988, 19.890923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.011306, 22.582001, 19.943018>,  <12.629844, 22.665356, 20.029844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011306, 22.582001, 19.943018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206852, 0.069884, -0.975873,
		0.218529, 0.975546, 0.023540,
		0.953655, -0.208388, -0.217065,
		13.297402, 22.519484, 19.877899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781685, 23.157707, 19.503242>,  <12.629844, 22.665356, 20.029844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781685, 23.157707, 19.503242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.064776, 22.880890, 19.446396>,  <13.234632, 22.714800, 19.412289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.064776, 22.880890, 19.446396>,  <12.781685, 23.157707, 19.503242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064776, 22.880890, 19.446396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119045, 0.081464, -0.989541,
		0.696382, 0.717245, -0.024730,
		0.707729, -0.692043, -0.142115,
		13.277095, 22.673277, 19.403761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.261841, 23.405285, 18.989950>,  <12.781685, 23.157707, 19.503242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.261841, 23.405285, 18.989950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.339931, 23.013546, 18.968927>,  <13.386785, 22.778502, 18.956314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.339931, 23.013546, 18.968927>,  <13.261841, 23.405285, 18.989950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339931, 23.013546, 18.968927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008161, 0.051965, -0.998616,
		0.980724, 0.195384, 0.002152,
		0.195225, -0.979349, -0.052558,
		13.398499, 22.719742, 18.953159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.929468, 23.295109, 18.620142>,  <13.261841, 23.405285, 18.989950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.929468, 23.295109, 18.620142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.676738, 22.986027, 18.595741>,  <13.525100, 22.800577, 18.581100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.676738, 22.986027, 18.595741>,  <13.929468, 23.295109, 18.620142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.676738, 22.986027, 18.595741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013067, 0.089306, -0.995918,
		0.775001, -0.628449, -0.066523,
		-0.631824, -0.772707, -0.061001,
		13.487190, 22.754215, 18.577440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614872, 23.324718, 18.847252>,  <13.929468, 23.295109, 18.620142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614872, 23.324718, 18.847252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.839255, 23.651520, 18.793835>,  <14.973886, 23.847601, 18.761786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.839255, 23.651520, 18.793835>,  <14.614872, 23.324718, 18.847252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.839255, 23.651520, 18.793835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379958, -0.110775, 0.918347,
		0.735498, -0.565894, -0.372567,
		0.560958, 0.817002, -0.133541,
		15.007543, 23.896620, 18.753773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219948, 23.122238, 19.101254>,  <14.614872, 23.324718, 18.847252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219948, 23.122238, 19.101254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.197387, 23.521500, 19.110298>,  <15.183850, 23.761057, 19.115725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.197387, 23.521500, 19.110298>,  <15.219948, 23.122238, 19.101254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197387, 23.521500, 19.110298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527114, 0.010537, 0.849729,
		0.847921, 0.059846, -0.526734,
		-0.056403, 0.998152, 0.022611,
		15.180466, 23.820946, 19.117081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901332, 23.399855, 19.200356>,  <15.219948, 23.122238, 19.101254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901332, 23.399855, 19.200356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.694455, 23.718864, 19.324594>,  <15.570330, 23.910271, 19.399137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.694455, 23.718864, 19.324594>,  <15.901332, 23.399855, 19.200356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694455, 23.718864, 19.324594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602897, 0.081905, 0.793603,
		0.607477, 0.597704, -0.523185,
		-0.517191, 0.797522, 0.310598,
		15.539298, 23.958120, 19.417774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404949, 23.866625, 19.412127>,  <15.901332, 23.399855, 19.200356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404949, 23.866625, 19.412127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.063061, 23.990696, 19.578613>,  <15.857927, 24.065140, 19.678505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.063061, 23.990696, 19.578613>,  <16.404949, 23.866625, 19.412127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063061, 23.990696, 19.578613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474735, 0.142806, 0.868466,
		0.209942, 0.939891, -0.269313,
		-0.854723, 0.310180, 0.416218,
		15.806643, 24.083750, 19.703478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513115, 24.656811, 19.684464>,  <16.404949, 23.866625, 19.412127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.513115, 24.656811, 19.684464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.220112, 24.489689, 19.899450>,  <16.044310, 24.389416, 20.028442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.220112, 24.489689, 19.899450>,  <16.513115, 24.656811, 19.684464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220112, 24.489689, 19.899450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501822, 0.202093, 0.841031,
		-0.460006, 0.885775, 0.061629,
		-0.732509, -0.417806, 0.537465,
		16.000359, 24.364347, 20.060690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.457865, 25.053247, 20.274485>,  <16.513115, 24.656811, 19.684464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.457865, 25.053247, 20.274485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.279888, 24.709309, 20.374638>,  <16.173103, 24.502945, 20.434731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.279888, 24.709309, 20.374638>,  <16.457865, 25.053247, 20.274485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.279888, 24.709309, 20.374638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401222, 0.058565, 0.914106,
		-0.800655, 0.507183, 0.318931,
		-0.444941, -0.859846, 0.250384,
		16.146406, 24.451355, 20.449753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063215, 25.287539, 20.861345>,  <16.457865, 25.053247, 20.274485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063215, 25.287539, 20.861345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.074722, 24.888744, 20.890162>,  <16.081627, 24.649467, 20.907452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.074722, 24.888744, 20.890162>,  <16.063215, 25.287539, 20.861345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074722, 24.888744, 20.890162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284662, 0.077257, 0.955510,
		-0.958196, -0.006982, 0.286027,
		0.028769, -0.996987, 0.072040,
		16.083353, 24.589649, 20.911774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582495, 24.948658, 21.433044>,  <16.063215, 25.287539, 20.861345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582495, 24.948658, 21.433044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.893378, 24.706844, 21.363209>,  <16.079908, 24.561756, 21.321306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.893378, 24.706844, 21.363209>,  <15.582495, 24.948658, 21.433044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893378, 24.706844, 21.363209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225935, 0.009147, 0.974100,
		-0.587281, -0.796526, 0.143694,
		0.777210, -0.604535, -0.174591,
		16.126541, 24.525484, 21.310831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552030, 24.557076, 22.040323>,  <15.582495, 24.948658, 21.433044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552030, 24.557076, 22.040323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.917062, 24.457951, 21.910225>,  <16.136082, 24.398476, 21.832167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.917062, 24.457951, 21.910225>,  <15.552030, 24.557076, 22.040323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.917062, 24.457951, 21.910225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316178, -0.076714, 0.945593,
		-0.259282, -0.965766, 0.008346,
		0.912581, -0.247814, -0.325245,
		16.190836, 24.383606, 21.812651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731291, 23.871956, 22.396650>,  <15.552030, 24.557076, 22.040323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.731291, 23.871956, 22.396650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.081726, 24.030979, 22.287533>,  <16.291986, 24.126392, 22.222061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.081726, 24.030979, 22.287533>,  <15.731291, 23.871956, 22.396650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081726, 24.030979, 22.287533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348018, -0.129831, 0.928455,
		0.333699, -0.908345, -0.252101,
		0.876087, 0.397559, -0.272796,
		16.344553, 24.150248, 22.205694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305811, 23.434612, 22.707161>,  <15.731291, 23.871956, 22.396650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305811, 23.434612, 22.707161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.480064, 23.784409, 22.621851>,  <16.584616, 23.994287, 22.570665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.480064, 23.784409, 22.621851>,  <16.305811, 23.434612, 22.707161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480064, 23.784409, 22.621851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502097, -0.039426, 0.863913,
		0.747076, -0.483434, -0.456255,
		0.435633, 0.874493, -0.213276,
		16.610754, 24.046757, 22.557869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957014, 23.283737, 22.822981>,  <16.305811, 23.434612, 22.707161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957014, 23.283737, 22.822981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.915638, 23.681484, 22.832195>,  <16.890812, 23.920134, 22.837725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.915638, 23.681484, 22.832195>,  <16.957014, 23.283737, 22.822981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915638, 23.681484, 22.832195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380424, 0.018155, 0.924634,
		0.919009, 0.104409, -0.380160,
		-0.103442, 0.994369, 0.023035,
		16.884605, 23.979795, 22.839106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603743, 23.501184, 22.984291>,  <16.957014, 23.283737, 22.822981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.603743, 23.501184, 22.984291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.384174, 23.827385, 23.057659>,  <17.252434, 24.023106, 23.101681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.384174, 23.827385, 23.057659>,  <17.603743, 23.501184, 22.984291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384174, 23.827385, 23.057659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350042, 0.025003, 0.936400,
		0.759049, 0.578216, -0.299184,
		-0.548922, 0.815501, 0.183422,
		17.219498, 24.072035, 23.112686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016640, 24.019939, 23.270414>,  <17.603743, 23.501184, 22.984291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016640, 24.019939, 23.270414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.639606, 24.084984, 23.387098>,  <17.413387, 24.124010, 23.457108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.639606, 24.084984, 23.387098>,  <18.016640, 24.019939, 23.270414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.639606, 24.084984, 23.387098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294567, -0.006794, 0.955607,
		0.157373, 0.986667, -0.041496,
		-0.942584, 0.162610, 0.291709,
		17.356831, 24.133766, 23.474611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514950, 23.675407, 22.956236>,  <18.016640, 24.019939, 23.270414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514950, 23.675407, 22.956236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.520809, 23.396564, 23.242964>,  <18.524324, 23.229259, 23.415001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.520809, 23.396564, 23.242964>,  <18.514950, 23.675407, 22.956236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520809, 23.396564, 23.242964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215750, -0.697804, -0.683024,
		0.976339, 0.164658, 0.140180,
		0.014647, -0.697107, 0.716818,
		18.525204, 23.187433, 23.458010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181448, 23.345737, 22.863522>,  <18.514950, 23.675407, 22.956236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181448, 23.345737, 22.863522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.916336, 23.105572, 23.042507>,  <18.757269, 22.961472, 23.149899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.916336, 23.105572, 23.042507>,  <19.181448, 23.345737, 22.863522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916336, 23.105572, 23.042507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110366, -0.669365, -0.734690,
		0.740635, -0.437554, 0.509908,
		-0.662782, -0.600414, 0.447464,
		18.717501, 22.925447, 23.176746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608688, 22.791187, 22.945972>,  <19.181448, 23.345737, 22.863522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.608688, 22.791187, 22.945972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.223896, 22.683044, 22.961477>,  <18.993021, 22.618158, 22.970779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.223896, 22.683044, 22.961477>,  <19.608688, 22.791187, 22.945972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223896, 22.683044, 22.961477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123078, -0.555805, -0.822151,
		0.243819, -0.786122, 0.567948,
		-0.961979, -0.270359, 0.038762,
		18.935303, 22.601936, 22.973106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464725, 22.019079, 22.990736>,  <19.608688, 22.791187, 22.945972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464725, 22.019079, 22.990736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.116631, 22.129295, 22.827389>,  <18.907774, 22.195425, 22.729380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.116631, 22.129295, 22.827389>,  <19.464725, 22.019079, 22.990736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.116631, 22.129295, 22.827389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172679, -0.605745, -0.776695,
		-0.461377, -0.746426, 0.479563,
		-0.870237, 0.275538, -0.408369,
		18.855560, 22.211958, 22.704878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.140633, 21.351181, 22.746498>,  <19.464725, 22.019079, 22.990736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.140633, 21.351181, 22.746498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.932892, 21.629215, 22.547649>,  <18.808249, 21.796036, 22.428341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.932892, 21.629215, 22.547649>,  <19.140633, 21.351181, 22.746498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.932892, 21.629215, 22.547649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010488, -0.576499, -0.817031,
		-0.854497, -0.429539, 0.292115,
		-0.519350, 0.695086, -0.497122,
		18.777086, 21.837742, 22.398514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.683323, 20.939894, 22.413273>,  <19.140633, 21.351181, 22.746498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.683323, 20.939894, 22.413273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.696152, 21.292923, 22.225641>,  <18.703850, 21.504742, 22.113062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.696152, 21.292923, 22.225641>,  <18.683323, 20.939894, 22.413273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696152, 21.292923, 22.225641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002407, -0.469387, -0.882989,
		-0.999483, 0.027191, -0.017178,
		0.032073, 0.882574, -0.469078,
		18.705774, 21.557695, 22.084917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124416, 20.922857, 21.857016>,  <18.683323, 20.939894, 22.413273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124416, 20.922857, 21.857016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.392632, 21.202881, 21.758799>,  <18.553560, 21.370895, 21.699867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.392632, 21.202881, 21.758799>,  <18.124416, 20.922857, 21.857016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392632, 21.202881, 21.758799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041141, -0.365558, -0.929879,
		-0.740732, 0.613418, -0.273922,
		0.670539, 0.700061, -0.245544,
		18.593794, 21.412899, 21.685135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.632664, 20.394039, 21.517778>,  <18.124416, 20.922857, 21.857016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.632664, 20.394039, 21.517778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.803299, 20.042122, 21.601669>,  <17.905680, 19.830971, 21.652004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.803299, 20.042122, 21.601669>,  <17.632664, 20.394039, 21.517778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803299, 20.042122, 21.601669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036239, 0.215073, 0.975925,
		-0.903720, -0.423918, 0.059865,
		0.426588, -0.879794, 0.209728,
		17.931276, 19.778183, 21.664587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221230, 20.142736, 22.115026>,  <17.632664, 20.394039, 21.517778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221230, 20.142736, 22.115026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.549431, 19.915012, 22.094398>,  <17.746351, 19.778378, 22.082022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.549431, 19.915012, 22.094398>,  <17.221230, 20.142736, 22.115026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.549431, 19.915012, 22.094398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040525, -0.032059, 0.998664,
		-0.570202, -0.821498, -0.003234,
		0.820504, -0.569310, -0.051571,
		17.795582, 19.744219, 22.078928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075470, 19.467943, 22.536295>,  <17.221230, 20.142736, 22.115026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075470, 19.467943, 22.536295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.463348, 19.564964, 22.524553>,  <17.696075, 19.623177, 22.517508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.463348, 19.564964, 22.524553>,  <17.075470, 19.467943, 22.536295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463348, 19.564964, 22.524553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014948, 0.061032, 0.998024,
		0.243866, -0.968216, 0.055557,
		0.969694, 0.242554, -0.029356,
		17.754257, 19.637730, 22.515747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216154, 19.060307, 23.173136>,  <17.075470, 19.467943, 22.536295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.216154, 19.060307, 23.173136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.531170, 19.285397, 23.072641>,  <17.720181, 19.420450, 23.012344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.531170, 19.285397, 23.072641>,  <17.216154, 19.060307, 23.173136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531170, 19.285397, 23.072641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216962, 0.128399, 0.967699,
		0.576807, -0.816611, -0.020970,
		0.787541, 0.562725, -0.251235,
		17.767433, 19.454214, 22.997271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853445, 18.747475, 23.377945>,  <17.216154, 19.060307, 23.173136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853445, 18.747475, 23.377945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.906750, 19.143810, 23.369200>,  <17.938732, 19.381611, 23.363953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.906750, 19.143810, 23.369200>,  <17.853445, 18.747475, 23.377945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.906750, 19.143810, 23.369200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133926, 0.003852, 0.990984,
		0.981990, -0.134990, -0.132186,
		0.133264, 0.990839, -0.021862,
		17.946730, 19.441063, 23.362640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.490776, 18.906271, 23.703594>,  <17.853445, 18.747475, 23.377945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.490776, 18.906271, 23.703594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.267593, 19.238068, 23.713589>,  <18.133684, 19.437145, 23.719585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.267593, 19.238068, 23.713589>,  <18.490776, 18.906271, 23.703594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267593, 19.238068, 23.713589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135751, 0.061528, 0.988831,
		0.818690, 0.555119, -0.146935,
		-0.557959, 0.829492, 0.024985,
		18.100206, 19.486916, 23.721085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749281, 19.404682, 24.051670>,  <18.490776, 18.906271, 23.703594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.749281, 19.404682, 24.051670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.376286, 19.547161, 24.075636>,  <18.152489, 19.632648, 24.090015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.376286, 19.547161, 24.075636>,  <18.749281, 19.404682, 24.051670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.376286, 19.547161, 24.075636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160233, 0.259267, 0.952421,
		0.323717, 0.897721, -0.298838,
		-0.932487, 0.356199, 0.059916,
		18.096539, 19.654020, 24.093611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746895, 20.040632, 24.490501>,  <18.749281, 19.404682, 24.051670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.746895, 20.040632, 24.490501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.357517, 19.949062, 24.491154>,  <18.123892, 19.894121, 24.491545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.357517, 19.949062, 24.491154>,  <18.746895, 20.040632, 24.490501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357517, 19.949062, 24.491154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006352, 0.034122, 0.999398,
		-0.228843, 0.972846, -0.034670,
		-0.973443, -0.228926, 0.001629,
		18.065485, 19.880384, 24.491642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567438, 20.341131, 25.118843>,  <18.746895, 20.040632, 24.490501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567438, 20.341131, 25.118843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.252209, 20.108582, 25.037907>,  <18.063070, 19.969051, 24.989344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.252209, 20.108582, 25.037907>,  <18.567438, 20.341131, 25.118843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252209, 20.108582, 25.037907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195965, -0.074667, 0.977764,
		-0.583555, 0.810203, -0.055086,
		-0.788075, -0.581374, -0.202343,
		18.015787, 19.934170, 24.977203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.991553, 18.857206, 9.024045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.725850, 18.628635, 9.216808>,  <15.566428, 18.491493, 9.332466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.725850, 18.628635, 9.216808>,  <15.991553, 18.857206, 9.024045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725850, 18.628635, 9.216808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413668, 0.255963, 0.873706,
		-0.622609, 0.779715, 0.066355,
		-0.664257, -0.571426, 0.481908,
		15.526573, 18.457209, 9.361381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744723, 19.274065, 9.562331>,  <15.991553, 18.857206, 9.024045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744723, 19.274065, 9.562331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.675090, 18.890915, 9.653693>,  <15.633309, 18.661024, 9.708510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.675090, 18.890915, 9.653693>,  <15.744723, 19.274065, 9.562331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675090, 18.890915, 9.653693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287735, 0.172345, 0.942075,
		-0.941755, 0.229721, 0.245611,
		-0.174084, -0.957875, 0.228406,
		15.622865, 18.603552, 9.722215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269180, 19.248392, 10.098247>,  <15.744723, 19.274065, 9.562331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269180, 19.248392, 10.098247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.485753, 18.912170, 10.105439>,  <15.615697, 18.710438, 10.109755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.485753, 18.912170, 10.105439>,  <15.269180, 19.248392, 10.098247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485753, 18.912170, 10.105439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105562, 0.089184, 0.990405,
		-0.834091, -0.534339, 0.137017,
		0.541432, -0.840552, 0.017981,
		15.648183, 18.660006, 10.110833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185403, 19.059444, 10.739659>,  <15.269180, 19.248392, 10.098247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185403, 19.059444, 10.739659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.505172, 18.854488, 10.614198>,  <15.697033, 18.731514, 10.538920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.505172, 18.854488, 10.614198>,  <15.185403, 19.059444, 10.739659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505172, 18.854488, 10.614198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387757, 0.041291, 0.920836,
		-0.458877, -0.857759, 0.231692,
		0.799422, -0.512391, -0.313655,
		15.744999, 18.700771, 10.520102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360494, 18.714315, 11.358301>,  <15.185403, 19.059444, 10.739659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360494, 18.714315, 11.358301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.693721, 18.686253, 11.138820>,  <15.893657, 18.669415, 11.007131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.693721, 18.686253, 11.138820>,  <15.360494, 18.714315, 11.358301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693721, 18.686253, 11.138820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544335, -0.072611, 0.835719,
		-0.098472, -0.994890, -0.022301,
		0.833068, -0.070156, -0.548703,
		15.943642, 18.665205, 10.974209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739119, 18.178965, 11.670079>,  <15.360494, 18.714315, 11.358301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739119, 18.178965, 11.670079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004162, 18.392212, 11.459658>,  <16.163189, 18.520161, 11.333405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004162, 18.392212, 11.459658>,  <15.739119, 18.178965, 11.670079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004162, 18.392212, 11.459658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659654, -0.082781, 0.746996,
		0.354690, -0.841981, -0.406525,
		0.662609, 0.533119, -0.526055,
		16.202944, 18.552147, 11.301841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364073, 17.898098, 11.897005>,  <15.739119, 18.178965, 11.670079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.364073, 17.898098, 11.897005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.486233, 18.237274, 11.723697>,  <16.559528, 18.440781, 11.619712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.486233, 18.237274, 11.723697>,  <16.364073, 17.898098, 11.897005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486233, 18.237274, 11.723697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645756, 0.149967, 0.748671,
		0.699807, -0.508433, -0.501764,
		0.305401, 0.847942, -0.433271,
		16.577852, 18.491657, 11.593716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091957, 17.813425, 11.977705>,  <16.364073, 17.898098, 11.897005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091957, 17.813425, 11.977705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.992737, 18.198380, 11.933377>,  <16.933205, 18.429352, 11.906780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.992737, 18.198380, 11.933377>,  <17.091957, 17.813425, 11.977705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.992737, 18.198380, 11.933377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659204, 0.251510, 0.708656,
		0.709873, 0.102731, -0.696797,
		-0.248052, 0.962387, -0.110819,
		16.918322, 18.487095, 11.900131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728193, 18.173729, 11.916391>,  <17.091957, 17.813425, 11.977705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.728193, 18.173729, 11.916391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.460899, 18.455517, 12.012042>,  <17.300522, 18.624590, 12.069432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.460899, 18.455517, 12.012042>,  <17.728193, 18.173729, 11.916391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.460899, 18.455517, 12.012042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612281, 0.338205, 0.714654,
		0.422578, 0.623971, -0.657334,
		-0.668237, 0.704470, 0.239128,
		17.260427, 18.666859, 12.083780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103880, 18.862070, 12.192863>,  <17.728193, 18.173729, 11.916391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103880, 18.862070, 12.192863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.723881, 18.897434, 12.312654>,  <17.495882, 18.918653, 12.384528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.723881, 18.897434, 12.312654>,  <18.103880, 18.862070, 12.192863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.723881, 18.897434, 12.312654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312250, 0.263486, 0.912729,
		0.001788, 0.960603, -0.277918,
		-0.949998, 0.088412, 0.299478,
		17.438881, 18.923958, 12.402497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023949, 19.487644, 12.502010>,  <18.103880, 18.862070, 12.192863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023949, 19.487644, 12.502010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.736732, 19.262978, 12.666422>,  <17.564402, 19.128178, 12.765069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.736732, 19.262978, 12.666422>,  <18.023949, 19.487644, 12.502010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736732, 19.262978, 12.666422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298638, 0.284801, 0.910881,
		-0.628673, 0.776800, -0.036764,
		-0.718043, -0.561668, 0.411028,
		17.521320, 19.094477, 12.789730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847521, 19.809645, 13.027032>,  <18.023949, 19.487644, 12.502010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847521, 19.809645, 13.027032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.709526, 19.451492, 13.139658>,  <17.626730, 19.236601, 13.207233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.709526, 19.451492, 13.139658>,  <17.847521, 19.809645, 13.027032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709526, 19.451492, 13.139658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188276, 0.227871, 0.955315,
		-0.919531, 0.382582, 0.089967,
		-0.344986, -0.895380, 0.281565,
		17.606030, 19.182878, 13.224128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126459, 20.577396, 12.951762>,  <17.847521, 19.809645, 13.027032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126459, 20.577396, 12.951762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.501904, 20.714634, 12.966171>,  <18.727169, 20.796976, 12.974816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.501904, 20.714634, 12.966171>,  <18.126459, 20.577396, 12.951762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.501904, 20.714634, 12.966171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001044, 0.107242, -0.994232,
		-0.344980, 0.933159, 0.101017,
		0.938610, 0.343095, 0.036022,
		18.783487, 20.817562, 12.976978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081038, 21.323555, 12.767813>,  <18.126459, 20.577396, 12.951762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081038, 21.323555, 12.767813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.450836, 21.188869, 12.696334>,  <18.672714, 21.108057, 12.653447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.450836, 21.188869, 12.696334>,  <18.081038, 21.323555, 12.767813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.450836, 21.188869, 12.696334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058302, 0.338365, -0.939207,
		0.376711, 0.878710, 0.293185,
		0.924494, -0.336716, -0.178696,
		18.728184, 21.087854, 12.642725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469364, 21.880548, 12.497849>,  <18.081038, 21.323555, 12.767813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469364, 21.880548, 12.497849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.648682, 21.541126, 12.385428>,  <18.756271, 21.337473, 12.317977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.648682, 21.541126, 12.385428>,  <18.469364, 21.880548, 12.497849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648682, 21.541126, 12.385428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065290, 0.344656, -0.936456,
		0.891499, 0.401457, 0.209909,
		0.448293, -0.848554, -0.281050,
		18.783169, 21.286560, 12.301113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889650, 22.088848, 12.045218>,  <18.469364, 21.880548, 12.497849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889650, 22.088848, 12.045218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.859936, 21.699398, 11.958925>,  <18.842106, 21.465729, 11.907149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.859936, 21.699398, 11.958925>,  <18.889650, 22.088848, 12.045218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.859936, 21.699398, 11.958925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117712, 0.206255, -0.971392,
		0.990265, -0.097557, 0.099285,
		-0.074288, -0.973623, -0.215731,
		18.837650, 21.407310, 11.894206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428646, 21.917347, 11.567070>,  <18.889650, 22.088848, 12.045218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428646, 21.917347, 11.567070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.180042, 21.607105, 11.522948>,  <19.030880, 21.420961, 11.496475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.180042, 21.607105, 11.522948>,  <19.428646, 21.917347, 11.567070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.180042, 21.607105, 11.522948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082171, 0.204565, -0.975398,
		0.779086, -0.597155, -0.190872,
		-0.621509, -0.775602, -0.110305,
		18.993589, 21.374424, 11.489857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652758, 21.507696, 11.057792>,  <19.428646, 21.917347, 11.567070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652758, 21.507696, 11.057792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.261608, 21.425697, 11.074490>,  <19.026918, 21.376497, 11.084509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.261608, 21.425697, 11.074490>,  <19.652758, 21.507696, 11.057792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261608, 21.425697, 11.074490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082086, 0.192429, -0.977872,
		0.192429, -0.959660, -0.204998,
		0.977872, 0.204998, -0.041745,
		18.968246, 21.364199, 11.087013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589712, 21.050941, 10.481462>,  <19.652758, 21.507696, 11.057792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589712, 21.050941, 10.481462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.216434, 21.156590, 10.578943>,  <18.992468, 21.219978, 10.637431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.216434, 21.156590, 10.578943>,  <19.589712, 21.050941, 10.481462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.216434, 21.156590, 10.578943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214185, 0.135767, -0.967312,
		-0.288572, -0.954886, -0.070126,
		-0.933194, 0.264119, 0.243701,
		18.936476, 21.235825, 10.652054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158743, 20.655519, 10.105949>,  <19.589712, 21.050941, 10.481462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158743, 20.655519, 10.105949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.960770, 20.993031, 10.188977>,  <18.841986, 21.195538, 10.238794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.960770, 20.993031, 10.188977>,  <19.158743, 20.655519, 10.105949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960770, 20.993031, 10.188977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180319, 0.133946, -0.974445,
		-0.850017, -0.519712, 0.085855,
		-0.494931, 0.843776, 0.207571,
		18.812290, 21.246162, 10.251248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580103, 20.609314, 9.652996>,  <19.158743, 20.655519, 10.105949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580103, 20.609314, 9.652996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.604092, 20.996208, 9.751677>,  <18.618484, 21.228344, 9.810884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.604092, 20.996208, 9.751677>,  <18.580103, 20.609314, 9.652996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604092, 20.996208, 9.751677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197538, 0.253757, -0.946882,
		-0.978459, 0.008053, 0.206283,
		0.059971, 0.967234, 0.246700,
		18.622084, 21.286379, 9.825686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076927, 20.881561, 9.367776>,  <18.580103, 20.609314, 9.652996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076927, 20.881561, 9.367776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.296642, 21.212860, 9.412115>,  <18.428471, 21.411640, 9.438719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.296642, 21.212860, 9.412115>,  <18.076927, 20.881561, 9.367776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296642, 21.212860, 9.412115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253369, 0.291482, -0.922411,
		-0.796296, 0.478583, 0.369960,
		0.549287, 0.828249, 0.110847,
		18.461428, 21.461334, 9.445370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652920, 21.580090, 9.173108>,  <18.076927, 20.881561, 9.367776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652920, 21.580090, 9.173108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.034351, 21.698132, 9.149109>,  <18.263210, 21.768957, 9.134709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.034351, 21.698132, 9.149109>,  <17.652920, 21.580090, 9.173108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034351, 21.698132, 9.149109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207654, 0.500070, -0.840720,
		-0.218099, 0.814151, 0.538136,
		0.953579, 0.295106, -0.059997,
		18.320425, 21.786663, 9.131110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.594223, 22.296871, 9.031284>,  <17.652920, 21.580090, 9.173108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.594223, 22.296871, 9.031284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.973259, 22.216255, 8.932124>,  <18.200680, 22.167885, 8.872628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.973259, 22.216255, 8.932124>,  <17.594223, 22.296871, 9.031284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973259, 22.216255, 8.932124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090713, 0.574275, -0.813621,
		0.306340, 0.793467, 0.525895,
		0.947590, -0.201540, -0.247902,
		18.257536, 22.155794, 8.857754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012472, 22.898304, 9.027225>,  <17.594223, 22.296871, 9.031284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012472, 22.898304, 9.027225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.176357, 22.629478, 8.780498>,  <18.274689, 22.468184, 8.632461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.176357, 22.629478, 8.780498>,  <18.012472, 22.898304, 9.027225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.176357, 22.629478, 8.780498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038653, 0.662780, -0.747816,
		0.911396, 0.330231, 0.245572,
		0.409712, -0.672064, -0.616819,
		18.299271, 22.427858, 8.595451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652121, 23.175339, 8.749081>,  <18.012472, 22.898304, 9.027225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652121, 23.175339, 8.749081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.531357, 22.897327, 8.488072>,  <18.458899, 22.730520, 8.331468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.531357, 22.897327, 8.488072>,  <18.652121, 23.175339, 8.749081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531357, 22.897327, 8.488072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072375, 0.665775, -0.742634,
		0.950585, -0.271434, -0.150701,
		-0.301909, -0.695030, -0.652521,
		18.440784, 22.688818, 8.292316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170408, 23.234177, 9.189083>,  <18.652121, 23.175339, 8.749081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170408, 23.234177, 9.189083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.049599, 23.533016, 8.952228>,  <18.977114, 23.712320, 8.810115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.049599, 23.533016, 8.952228>,  <19.170408, 23.234177, 9.189083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.049599, 23.533016, 8.952228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149677, 0.650604, 0.744521,
		0.941477, 0.136232, -0.308320,
		-0.302022, 0.747098, -0.592138,
		18.958992, 23.757145, 8.774587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529757, 23.856195, 9.147327>,  <19.170408, 23.234177, 9.189083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.529757, 23.856195, 9.147327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.153549, 23.991127, 9.131176>,  <18.927824, 24.072086, 9.121485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.153549, 23.991127, 9.131176>,  <19.529757, 23.856195, 9.147327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153549, 23.991127, 9.131176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112058, 0.420219, 0.900477,
		0.320727, 0.842392, -0.433025,
		-0.940520, 0.337331, -0.040379,
		18.871393, 24.092327, 9.119062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537256, 24.441690, 9.538080>,  <19.529757, 23.856195, 9.147327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537256, 24.441690, 9.538080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.161980, 24.304085, 9.522842>,  <18.936813, 24.221521, 9.513700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.161980, 24.304085, 9.522842>,  <19.537256, 24.441690, 9.538080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161980, 24.304085, 9.522842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194291, 0.432365, 0.880518,
		-0.286439, 0.833496, -0.472480,
		-0.938192, -0.344013, -0.038094,
		18.880522, 24.200880, 9.511415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953772, 24.984484, 9.563547>,  <19.537256, 24.441690, 9.538080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953772, 24.984484, 9.563547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.768555, 24.645061, 9.665958>,  <18.657425, 24.441408, 9.727406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.768555, 24.645061, 9.665958>,  <18.953772, 24.984484, 9.563547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768555, 24.645061, 9.665958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394527, 0.455989, 0.797760,
		-0.793689, 0.268385, -0.545919,
		-0.463040, -0.848554, 0.256028,
		18.629642, 24.390495, 9.742767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261341, 25.176863, 9.839027>,  <18.953772, 24.984484, 9.563547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261341, 25.176863, 9.839027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.333500, 24.802410, 9.959768>,  <18.376795, 24.577738, 10.032213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.333500, 24.802410, 9.959768>,  <18.261341, 25.176863, 9.839027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333500, 24.802410, 9.959768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472966, 0.186521, 0.861112,
		-0.862415, -0.298108, -0.409111,
		0.180396, -0.936131, 0.301853,
		18.387619, 24.521570, 10.050324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.616932, 24.986631, 10.199223>,  <18.261341, 25.176863, 9.839027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.616932, 24.986631, 10.199223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899426, 24.723373, 10.303592>,  <18.068922, 24.565418, 10.366214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899426, 24.723373, 10.303592>,  <17.616932, 24.986631, 10.199223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899426, 24.723373, 10.303592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269007, 0.091452, 0.958787,
		-0.654883, -0.747316, -0.112460,
		0.706232, -0.658146, 0.260924,
		18.111296, 24.525930, 10.381868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354973, 24.675066, 10.815866>,  <17.616932, 24.986631, 10.199223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.354973, 24.675066, 10.815866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.746815, 24.596268, 10.831717>,  <17.981920, 24.548988, 10.841228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.746815, 24.596268, 10.831717>,  <17.354973, 24.675066, 10.815866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746815, 24.596268, 10.831717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010410, 0.147209, 0.989051,
		-0.200674, -0.969289, 0.142155,
		0.979603, -0.196997, 0.039631,
		18.040695, 24.537169, 10.843607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.387896, 24.178352, 11.423345>,  <17.354973, 24.675066, 10.815866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.387896, 24.178352, 11.423345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.755222, 24.319420, 11.351432>,  <17.975618, 24.404060, 11.308285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.755222, 24.319420, 11.351432>,  <17.387896, 24.178352, 11.423345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755222, 24.319420, 11.351432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155344, 0.096667, 0.983119,
		0.364096, -0.930741, 0.033986,
		0.918315, 0.352671, -0.179781,
		18.030716, 24.425220, 11.297498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947624, 23.739628, 11.771788>,  <17.387896, 24.178352, 11.423345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947624, 23.739628, 11.771788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.085430, 24.112343, 11.726034>,  <18.168114, 24.335972, 11.698582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.085430, 24.112343, 11.726034>,  <17.947624, 23.739628, 11.771788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.085430, 24.112343, 11.726034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133420, 0.072008, 0.988440,
		0.929252, -0.355792, -0.099511,
		0.344513, 0.931787, -0.114383,
		18.188784, 24.391878, 11.691719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.468922, 23.807892, 12.225732>,  <17.947624, 23.739628, 11.771788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.468922, 23.807892, 12.225732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.357433, 24.186413, 12.160213>,  <18.290541, 24.413525, 12.120901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.357433, 24.186413, 12.160213>,  <18.468922, 23.807892, 12.225732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357433, 24.186413, 12.160213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058746, 0.187038, 0.980595,
		0.958574, 0.263687, -0.107722,
		-0.278719, 0.946301, -0.163799,
		18.273817, 24.470303, 12.111073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841585, 24.150408, 12.776545>,  <18.468922, 23.807892, 12.225732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841585, 24.150408, 12.776545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.570171, 24.414658, 12.648067>,  <18.407324, 24.573208, 12.570980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.570171, 24.414658, 12.648067>,  <18.841585, 24.150408, 12.776545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.570171, 24.414658, 12.648067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011680, 0.427498, 0.903941,
		0.734477, 0.617105, -0.282355,
		-0.678532, 0.660626, -0.321195,
		18.366611, 24.612846, 12.551708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.016163, 24.858034, 13.085861>,  <18.841585, 24.150408, 12.776545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.016163, 24.858034, 13.085861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.631737, 24.869534, 12.975935>,  <18.401081, 24.876434, 12.909980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.631737, 24.869534, 12.975935>,  <19.016163, 24.858034, 13.085861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631737, 24.869534, 12.975935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226893, 0.485517, 0.844270,
		0.157700, 0.873754, -0.460092,
		-0.961067, 0.028750, -0.274815,
		18.343416, 24.878159, 12.893491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750986, 25.526514, 13.267768>,  <19.016163, 24.858034, 13.085861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750986, 25.526514, 13.267768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.430893, 25.289822, 13.228817>,  <18.238836, 25.147806, 13.205446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.430893, 25.289822, 13.228817>,  <18.750986, 25.526514, 13.267768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430893, 25.289822, 13.228817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337720, 0.310496, 0.888559,
		-0.495551, 0.743941, -0.448308,
		-0.800234, -0.591729, -0.097378,
		18.190823, 25.112303, 13.199604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148178, 25.928020, 13.635424>,  <18.750986, 25.526514, 13.267768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.148178, 25.928020, 13.635424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.033897, 25.544800, 13.644476>,  <17.965330, 25.314867, 13.649907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.033897, 25.544800, 13.644476>,  <18.148178, 25.928020, 13.635424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033897, 25.544800, 13.644476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457685, 0.157158, 0.875114,
		-0.841962, 0.239662, -0.483386,
		-0.285700, -0.958052, 0.022632,
		17.948187, 25.257383, 13.651265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.440943, 25.906401, 13.859190>,  <18.148178, 25.928020, 13.635424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.440943, 25.906401, 13.859190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.548012, 25.526661, 13.925024>,  <17.612253, 25.298817, 13.964524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.548012, 25.526661, 13.925024>,  <17.440943, 25.906401, 13.859190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548012, 25.526661, 13.925024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651857, -0.052641, 0.756513,
		-0.709530, -0.309785, -0.632930,
		0.267674, -0.949348, 0.164585,
		17.628313, 25.241856, 13.974400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.783182, 25.509851, 14.102018>,  <17.440943, 25.906401, 13.859190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.783182, 25.509851, 14.102018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.094929, 25.297447, 14.235054>,  <17.281977, 25.170006, 14.314876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.094929, 25.297447, 14.235054>,  <16.783182, 25.509851, 14.102018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094929, 25.297447, 14.235054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497315, -0.201364, 0.843878,
		-0.381137, -0.823092, -0.421016,
		0.779367, -0.531011, 0.332589,
		17.328739, 25.138144, 14.334831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533989, 24.947533, 14.278305>,  <16.783182, 25.509851, 14.102018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533989, 24.947533, 14.278305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.874527, 24.961590, 14.487675>,  <17.078850, 24.970024, 14.613297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.874527, 24.961590, 14.487675>,  <16.533989, 24.947533, 14.278305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.874527, 24.961590, 14.487675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478858, -0.355425, 0.802725,
		0.214251, -0.934044, -0.285760,
		0.851347, 0.035146, 0.523425,
		17.129930, 24.972134, 14.644702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449818, 24.462172, 14.803806>,  <16.533989, 24.947533, 14.278305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449818, 24.462172, 14.803806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.786564, 24.635735, 14.932173>,  <16.988611, 24.739872, 15.009192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.786564, 24.635735, 14.932173>,  <16.449818, 24.462172, 14.803806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786564, 24.635735, 14.932173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199455, -0.302385, 0.932084,
		0.501481, -0.848697, -0.168022,
		0.841864, 0.433909, 0.320917,
		17.039124, 24.765907, 15.028448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921949, 23.991558, 15.034133>,  <16.449818, 24.462172, 14.803806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921949, 23.991558, 15.034133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.964352, 24.341831, 15.222574>,  <16.989792, 24.551996, 15.335639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.964352, 24.341831, 15.222574>,  <16.921949, 23.991558, 15.034133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964352, 24.341831, 15.222574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271949, -0.430180, 0.860807,
		0.956455, -0.219365, 0.192541,
		0.106003, 0.875685, 0.471104,
		16.996153, 24.604536, 15.363905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055300, 23.788990, 15.663811>,  <16.921949, 23.991558, 15.034133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055300, 23.788990, 15.663811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.969212, 24.178234, 15.696632>,  <16.917559, 24.411781, 15.716326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.969212, 24.178234, 15.696632>,  <17.055300, 23.788990, 15.663811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.969212, 24.178234, 15.696632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400979, -0.164670, 0.901166,
		0.890448, 0.161046, 0.425638,
		-0.215219, 0.973113, 0.082054,
		16.904646, 24.470167, 15.721249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129129, 23.915915, 16.357145>,  <17.055300, 23.788990, 15.663811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129129, 23.915915, 16.357145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.898506, 24.223076, 16.245499>,  <16.760132, 24.407373, 16.178511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.898506, 24.223076, 16.245499>,  <17.129129, 23.915915, 16.357145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.898506, 24.223076, 16.245499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593471, -0.158791, 0.789036,
		0.561582, 0.620572, 0.547280,
		-0.576557, 0.767903, -0.279117,
		16.725538, 24.453447, 16.161764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128904, 24.344955, 16.926394>,  <17.129129, 23.915915, 16.357145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128904, 24.344955, 16.926394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.817051, 24.464352, 16.706184>,  <16.629938, 24.535990, 16.574059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.817051, 24.464352, 16.706184>,  <17.128904, 24.344955, 16.926394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817051, 24.464352, 16.706184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621132, -0.256554, 0.740524,
		0.079801, 0.919284, 0.385420,
		-0.779633, 0.298491, -0.550523,
		16.583160, 24.553900, 16.541027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785938, 24.806700, 17.394308>,  <17.128904, 24.344955, 16.926394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785938, 24.806700, 17.394308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.518879, 24.740265, 17.104023>,  <16.358644, 24.700403, 16.929852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.518879, 24.740265, 17.104023>,  <16.785938, 24.806700, 17.394308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518879, 24.740265, 17.104023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714314, -0.131754, 0.687311,
		-0.209769, 0.977270, -0.030673,
		-0.667647, -0.166087, -0.725715,
		16.318584, 24.690439, 16.886309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165197, 25.259380, 17.497227>,  <16.785938, 24.806700, 17.394308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165197, 25.259380, 17.497227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.053253, 24.950954, 17.268442>,  <15.986087, 24.765900, 17.131172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.053253, 24.950954, 17.268442>,  <16.165197, 25.259380, 17.497227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.053253, 24.950954, 17.268442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717815, -0.227557, 0.657997,
		-0.637510, 0.594711, -0.489796,
		-0.279862, -0.771062, -0.571962,
		15.969295, 24.719635, 17.096853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413406, 25.219200, 17.553272>,  <16.165197, 25.259380, 17.497227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413406, 25.219200, 17.553272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.524837, 24.860477, 17.415792>,  <15.591695, 24.645243, 17.333305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.524837, 24.860477, 17.415792>,  <15.413406, 25.219200, 17.553272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524837, 24.860477, 17.415792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636111, -0.440407, 0.633565,
		-0.719554, 0.042136, -0.693157,
		0.278575, -0.896809, -0.343700,
		15.608409, 24.591434, 17.312683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826537, 24.850729, 17.443232>,  <15.413406, 25.219200, 17.553272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826537, 24.850729, 17.443232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.104598, 24.565323, 17.478241>,  <15.271435, 24.394079, 17.499247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.104598, 24.565323, 17.478241>,  <14.826537, 24.850729, 17.443232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104598, 24.565323, 17.478241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488092, -0.379096, 0.786164,
		-0.527759, -0.589223, -0.611790,
		0.695152, -0.713514, 0.087524,
		15.313144, 24.351269, 17.504498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.436277, 24.199802, 17.524519>,  <14.826537, 24.850729, 17.443232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.436277, 24.199802, 17.524519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.806630, 24.155437, 17.668987>,  <15.028842, 24.128819, 17.755669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.806630, 24.155437, 17.668987>,  <14.436277, 24.199802, 17.524519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.806630, 24.155437, 17.668987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374920, -0.387842, 0.842029,
		0.046688, -0.915029, -0.400678,
		0.925881, -0.110909, 0.361171,
		15.084394, 24.122164, 17.777338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398918, 23.619043, 18.181644>,  <14.436277, 24.199802, 17.524519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398918, 23.619043, 18.181644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.734153, 23.831615, 18.230946>,  <14.935293, 23.959160, 18.260527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.734153, 23.831615, 18.230946>,  <14.398918, 23.619043, 18.181644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.734153, 23.831615, 18.230946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034826, -0.173349, 0.984245,
		0.544425, -0.829174, -0.126773,
		0.838086, 0.531433, 0.123252,
		14.985579, 23.991045, 18.267921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236405, 22.840105, 18.067587>,  <14.398918, 23.619043, 18.181644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236405, 22.840105, 18.067587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.899976, 22.629829, 18.118572>,  <13.698118, 22.503664, 18.149164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.899976, 22.629829, 18.118572>,  <14.236405, 22.840105, 18.067587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899976, 22.629829, 18.118572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123165, -0.043338, -0.991439,
		0.526713, -0.849572, -0.028296,
		-0.841073, -0.525689, 0.127464,
		13.647654, 22.472122, 18.156811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.235948, 22.159369, 17.691652>,  <14.236405, 22.840105, 18.067587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.235948, 22.159369, 17.691652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.854775, 22.258976, 17.760832>,  <13.626072, 22.318741, 17.802340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.854775, 22.258976, 17.760832>,  <14.235948, 22.159369, 17.691652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854775, 22.258976, 17.760832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231684, -0.230153, -0.945173,
		-0.195551, -0.940757, 0.277012,
		-0.952934, 0.249009, 0.172952,
		13.568896, 22.333681, 17.812717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.818291, 21.645624, 17.415453>,  <14.235948, 22.159369, 17.691652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.818291, 21.645624, 17.415453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.630696, 21.997910, 17.441978>,  <13.518140, 22.209280, 17.457893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.630696, 21.997910, 17.441978>,  <13.818291, 21.645624, 17.415453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.630696, 21.997910, 17.441978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079187, 0.032850, -0.996319,
		-0.879648, -0.472512, 0.054334,
		-0.468987, 0.880712, 0.066314,
		13.490000, 22.262123, 17.461872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332355, 21.627935, 16.898912>,  <13.818291, 21.645624, 17.415453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332355, 21.627935, 16.898912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.372901, 22.016922, 16.982853>,  <13.397228, 22.250313, 17.033218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.372901, 22.016922, 16.982853>,  <13.332355, 21.627935, 16.898912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372901, 22.016922, 16.982853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016181, 0.209300, -0.977718,
		-0.994718, 0.102501, 0.005480,
		0.101364, 0.972465, 0.209853,
		13.403310, 22.308661, 17.045809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.908836, 21.896654, 16.438578>,  <13.332355, 21.627935, 16.898912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.908836, 21.896654, 16.438578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.152503, 22.201786, 16.525301>,  <13.298703, 22.384865, 16.577335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.152503, 22.201786, 16.525301>,  <12.908836, 21.896654, 16.438578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.152503, 22.201786, 16.525301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062596, 0.226282, -0.972048,
		-0.790568, 0.605711, 0.090093,
		0.609167, 0.762830, 0.216807,
		13.335253, 22.430635, 16.590343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
