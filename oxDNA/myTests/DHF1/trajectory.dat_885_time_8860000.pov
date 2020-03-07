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
	<5.285546, 0.382775, 2.319706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334526, 0.631119, 2.629426>,  <5.363914, 0.780125, 2.815259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334526, 0.631119, 2.629426>,  <5.285546, 0.382775, 2.319706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.334526, 0.631119, 2.629426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570267, 0.682538, -0.457098,
		-0.812282, -0.385586, 0.437631,
		0.122449, 0.620859, 0.774300,
		5.371261, 0.817376, 2.861717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.632596, 0.548415, 2.687863>,  <5.285546, 0.382775, 2.319706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.632596, 0.548415, 2.687863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.908287, 0.837986, 2.675895>,  <5.073702, 1.011729, 2.668715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.908287, 0.837986, 2.675895>,  <4.632596, 0.548415, 2.687863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.908287, 0.837986, 2.675895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654452, 0.604301, -0.454436,
		-0.310898, 0.332790, 0.890277,
		0.689227, 0.723927, -0.029919,
		5.115055, 1.055164, 2.666919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.377235, 1.175014, 3.053833>,  <4.632596, 0.548415, 2.687863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.377235, 1.175014, 3.053833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622398, 1.231251, 2.742815>,  <4.769496, 1.264993, 2.556204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622398, 1.231251, 2.742815>,  <4.377235, 1.175014, 3.053833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.622398, 1.231251, 2.742815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632552, 0.677016, -0.376200,
		0.473520, 0.722414, 0.503881,
		0.612908, 0.140593, -0.777545,
		4.806271, 1.273429, 2.509551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.626734, 2.000074, 3.038295>,  <4.377235, 1.175014, 3.053833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.626734, 2.000074, 3.038295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.597710, 1.785061, 2.702249>,  <4.580295, 1.656053, 2.500621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.597710, 1.785061, 2.702249>,  <4.626734, 2.000074, 3.038295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.597710, 1.785061, 2.702249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515783, 0.741177, -0.429680,
		0.853641, 0.402140, -0.331031,
		-0.072561, -0.537532, -0.840116,
		4.575942, 1.623801, 2.450214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.875003, 2.378945, 2.554669>,  <4.626734, 2.000074, 3.038295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.875003, 2.378945, 2.554669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624397, 2.117336, 2.385088>,  <4.474034, 1.960371, 2.283340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.624397, 2.117336, 2.385088>,  <4.875003, 2.378945, 2.554669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.624397, 2.117336, 2.385088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491826, 0.753712, -0.435918,
		0.604639, -0.064598, -0.793876,
		-0.626513, -0.654022, -0.423953,
		4.436443, 1.921130, 2.257902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.725641, 2.764383, 1.974400>,  <4.875003, 2.378945, 2.554669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.725641, 2.764383, 1.974400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451683, 2.472969, 1.979425>,  <4.287309, 2.298121, 1.982440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451683, 2.472969, 1.979425>,  <4.725641, 2.764383, 1.974400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.451683, 2.472969, 1.979425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655375, 0.608399, -0.447588,
		0.318440, -0.314784, -0.894152,
		-0.684894, -0.728534, 0.012563,
		4.246215, 2.254409, 1.983194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.452334, 2.740046, 1.278674>,  <4.725641, 2.764383, 1.974400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.452334, 2.740046, 1.278674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176964, 2.570770, 1.514295>,  <4.011742, 2.469205, 1.655667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.176964, 2.570770, 1.514295>,  <4.452334, 2.740046, 1.278674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.176964, 2.570770, 1.514295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723598, 0.456430, -0.517762,
		-0.049750, -0.782677, -0.620437,
		-0.688426, -0.423188, 0.589051,
		3.970436, 2.443814, 1.691010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.972485, 2.391667, 0.806859>,  <4.452334, 2.740046, 1.278674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.972485, 2.391667, 0.806859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805748, 2.489426, 1.157063>,  <3.705706, 2.548081, 1.367185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.805748, 2.489426, 1.157063>,  <3.972485, 2.391667, 0.806859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.805748, 2.489426, 1.157063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688537, 0.543919, -0.479655,
		-0.593431, -0.802759, -0.058453,
		-0.416841, 0.244396, 0.875508,
		3.680696, 2.562744, 1.419715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.047767, 3.830031, 0.912234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.762436, 3.579300, 1.037614>,  <2.591237, 3.428861, 1.112842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.762436, 3.579300, 1.037614>,  <3.047767, 3.830031, 0.912234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.762436, 3.579300, 1.037614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686473, -0.534866, 0.492619,
		-0.141135, 0.566573, 0.811835,
		-0.713327, -0.626828, 0.313449,
		2.548438, 3.391251, 1.131649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.026592, 3.727575, 1.628996>,  <3.047767, 3.830031, 0.912234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.026592, 3.727575, 1.628996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.904106, 3.400124, 1.434645>,  <2.830615, 3.203652, 1.318034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.904106, 3.400124, 1.434645>,  <3.026592, 3.727575, 1.628996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.904106, 3.400124, 1.434645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682967, -0.544476, 0.486931,
		-0.663165, -0.182735, 0.725824,
		-0.306214, -0.818630, -0.485879,
		2.812242, 3.154535, 1.288881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.720165, 3.240727, 2.151521>,  <3.026592, 3.727575, 1.628996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.720165, 3.240727, 2.151521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.897415, 3.057831, 1.843088>,  <3.003765, 2.948093, 1.658028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.897415, 3.057831, 1.843088>,  <2.720165, 3.240727, 2.151521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.897415, 3.057831, 1.843088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415989, -0.657049, 0.628681,
		-0.794098, -0.599347, -0.100949,
		0.443126, -0.457241, -0.771084,
		3.030353, 2.920658, 1.611763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.857155, 2.670334, 2.486384>,  <2.720165, 3.240727, 2.151521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.857155, 2.670334, 2.486384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.084946, 2.609131, 2.163328>,  <3.221620, 2.572409, 1.969494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.084946, 2.609131, 2.163328>,  <2.857155, 2.670334, 2.486384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.084946, 2.609131, 2.163328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497434, -0.718054, 0.486783,
		-0.654412, -0.678960, -0.332803,
		0.569477, -0.153009, -0.807641,
		3.255789, 2.563228, 1.921035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.022657, 1.886778, 2.413423>,  <2.857155, 2.670334, 2.486384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.022657, 1.886778, 2.413423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.300423, 2.048164, 2.175095>,  <3.467082, 2.144996, 2.032097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.300423, 2.048164, 2.175095>,  <3.022657, 1.886778, 2.413423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.300423, 2.048164, 2.175095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591587, -0.791491, 0.153514,
		-0.409650, -0.459083, -0.788308,
		0.694414, 0.403466, -0.595822,
		3.508747, 2.169204, 1.996348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.210886, 1.473424, 1.786137>,  <3.022657, 1.886778, 2.413423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.210886, 1.473424, 1.786137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.536850, 1.693008, 1.860501>,  <3.732429, 1.824759, 1.905119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.536850, 1.693008, 1.860501>,  <3.210886, 1.473424, 1.786137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.536850, 1.693008, 1.860501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545736, -0.834787, 0.072823,
		0.195172, 0.042113, -0.979864,
		0.814911, 0.548960, 0.185910,
		3.781323, 1.857697, 1.916274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.693223, 1.046793, 1.675388>,  <3.210886, 1.473424, 1.786137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.693223, 1.046793, 1.675388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.935417, 1.324226, 1.831505>,  <4.080734, 1.490686, 1.925176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.935417, 1.324226, 1.831505>,  <3.693223, 1.046793, 1.675388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.935417, 1.324226, 1.831505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627993, -0.717632, 0.301047,
		0.488888, 0.062822, -0.870082,
		0.605486, 0.693583, 0.390293,
		4.117063, 1.532301, 1.948593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.462845, 0.861933, 1.367872>,  <3.693223, 1.046793, 1.675388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.462845, 0.861933, 1.367872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.476097, 1.080048, 1.702909>,  <4.484048, 1.210916, 1.903932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.476097, 1.080048, 1.702909>,  <4.462845, 0.861933, 1.367872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.476097, 1.080048, 1.702909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526058, -0.722087, 0.449281,
		0.849803, 0.425738, -0.310776,
		0.033131, 0.545287, 0.837595,
		4.486036, 1.243634, 1.954188>
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
