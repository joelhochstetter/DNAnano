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
	<0.687906, -0.698356, 3.512740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.370199, -0.625931, 3.280754>,  <0.179575, -0.582476, 3.141563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.370199, -0.625931, 3.280754>,  <0.687906, -0.698356, 3.512740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.370199, -0.625931, 3.280754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592124, 0.444555, -0.672131,
		0.136128, -0.877261, -0.460306,
		-0.794266, 0.181063, -0.579964,
		0.131919, -0.571612, 3.106765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.710877, -1.024939, 2.777272>,  <0.687906, -0.698356, 3.512740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.710877, -1.024939, 2.777272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.561234, -0.659454, 2.840736>,  <0.471447, -0.440164, 2.878815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.561234, -0.659454, 2.840736>,  <0.710877, -1.024939, 2.777272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.561234, -0.659454, 2.840736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567649, 0.360907, -0.739946,
		-0.733360, -0.186756, -0.653686,
		-0.374109, 0.913711, 0.158662,
		0.449001, -0.385341, 2.888335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.360868, -0.724343, 2.145167>,  <0.710877, -1.024939, 2.777272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.360868, -0.724343, 2.145167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.518604, -0.442520, 2.381165>,  <0.613246, -0.273426, 2.522763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.518604, -0.442520, 2.381165>,  <0.360868, -0.724343, 2.145167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.518604, -0.442520, 2.381165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595971, 0.292631, -0.747787,
		-0.699510, 0.646502, -0.304500,
		0.394340, 0.704558, 0.589995,
		0.636906, -0.231153, 2.558163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.234878, -0.121997, 1.828381>,  <0.360868, -0.724343, 2.145167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.234878, -0.121997, 1.828381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540377, -0.069633, 2.081223>,  <0.723676, -0.038215, 2.232927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540377, -0.069633, 2.081223>,  <0.234878, -0.121997, 1.828381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.540377, -0.069633, 2.081223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563498, 0.342482, -0.751782,
		-0.314899, 0.930360, 0.187803,
		0.763747, 0.130908, 0.632103,
		0.769501, -0.030361, 2.270854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.385347, 0.565580, 1.785688>,  <0.234878, -0.121997, 1.828381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.385347, 0.565580, 1.785688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.712986, 0.372086, 1.909027>,  <0.909569, 0.255989, 1.983031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.712986, 0.372086, 1.909027>,  <0.385347, 0.565580, 1.785688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.712986, 0.372086, 1.909027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544517, 0.486492, -0.683248,
		0.180503, 0.727547, 0.661887,
		0.819097, -0.483736, 0.308349,
		0.958715, 0.226965, 2.001532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.859226, 1.071947, 1.946340>,  <0.385347, 0.565580, 1.785688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.859226, 1.071947, 1.946340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.045284, 0.726646, 1.867920>,  <1.156919, 0.519466, 1.820868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.045284, 0.726646, 1.867920>,  <0.859226, 1.071947, 1.946340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.045284, 0.726646, 1.867920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597686, 0.469621, -0.649791,
		0.653002, 0.185071, 0.734396,
		0.465145, -0.863252, -0.196049,
		1.184828, 0.467671, 1.809105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.565207, 1.252974, 1.867556>,  <0.859226, 1.071947, 1.946340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.565207, 1.252974, 1.867556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.532459, 0.902245, 1.678040>,  <1.512811, 0.691807, 1.564330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.532459, 0.902245, 1.678040>,  <1.565207, 1.252974, 1.867556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.532459, 0.902245, 1.678040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664230, 0.306414, -0.681842,
		0.743031, -0.370528, 0.557327,
		-0.081869, -0.876823, -0.473791,
		1.507898, 0.639198, 1.535902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.184512, 0.866897, 1.836233>,  <1.565207, 1.252974, 1.867556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.184512, 0.866897, 1.836233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.967718, 0.808029, 1.505272>,  <1.837642, 0.772709, 1.306696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.967718, 0.808029, 1.505272>,  <2.184512, 0.866897, 1.836233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.967718, 0.808029, 1.505272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774481, 0.294731, -0.559744,
		0.326238, -0.944180, -0.045760,
		-0.541985, -0.147169, -0.827402,
		1.805122, 0.763879, 1.257051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.781430, 1.616119, 0.016649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.892333, 1.232361, -0.004097>,  <1.958875, 1.002106, -0.016545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.892333, 1.232361, -0.004097>,  <1.781430, 1.616119, 0.016649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.892333, 1.232361, -0.004097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362967, -0.154571, 0.918892,
		-0.889597, -0.235944, -0.391085,
		0.277258, -0.959394, -0.051866,
		1.975510, 0.944542, -0.019657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.218560, 1.276173, 0.319155>,  <1.781430, 1.616119, 0.016649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.218560, 1.276173, 0.319155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.531136, 1.027504, 0.297691>,  <1.718681, 0.878303, 0.284813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.531136, 1.027504, 0.297691>,  <1.218560, 1.276173, 0.319155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.531136, 1.027504, 0.297691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220397, -0.355440, 0.908343,
		-0.583764, -0.697987, -0.414769,
		0.781437, -0.621672, -0.053659,
		1.765567, 0.841002, 0.281594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.976124, 0.612704, 0.515112>,  <1.218560, 1.276173, 0.319155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.976124, 0.612704, 0.515112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.373925, 0.573128, 0.528824>,  <1.612606, 0.549382, 0.537051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.373925, 0.573128, 0.528824>,  <0.976124, 0.612704, 0.515112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.373925, 0.573128, 0.528824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079566, -0.501232, 0.861647,
		-0.068070, -0.859638, -0.506349,
		0.994503, -0.098940, 0.034279,
		1.672276, 0.543446, 0.539107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.323925, -0.070318, 0.406342>,  <0.976124, 0.612704, 0.515112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.323925, -0.070318, 0.406342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.527198, 0.146912, 0.673721>,  <1.649161, 0.277249, 0.834149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.527198, 0.146912, 0.673721>,  <1.323925, -0.070318, 0.406342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.527198, 0.146912, 0.673721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333297, -0.591654, 0.734070,
		0.794144, -0.595832, -0.119662,
		0.508181, 0.543074, 0.668448,
		1.679652, 0.309834, 0.874256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.426844, -0.524797, 0.972821>,  <1.323925, -0.070318, 0.406342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.426844, -0.524797, 0.972821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.474112, -0.175331, 1.161606>,  <1.502472, 0.034348, 1.274876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.474112, -0.175331, 1.161606>,  <1.426844, -0.524797, 0.972821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.474112, -0.175331, 1.161606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269542, -0.429224, 0.862040,
		0.955711, -0.229079, 0.184768,
		0.118169, 0.873664, 0.471961,
		1.509562, 0.086768, 1.303194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.884884, -0.624256, 1.656210>,  <1.426844, -0.524797, 0.972821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.884884, -0.624256, 1.656210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.666574, -0.291473, 1.696159>,  <1.535587, -0.091804, 1.720129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.666574, -0.291473, 1.696159>,  <1.884884, -0.624256, 1.656210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.666574, -0.291473, 1.696159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278374, -0.292444, 0.914869,
		0.790339, 0.471512, 0.391205,
		-0.545777, 0.831957, 0.099873,
		1.502840, -0.041886, 1.726121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.987066, -0.465105, 2.342682>,  <1.884884, -0.624256, 1.656210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.987066, -0.465105, 2.342682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.668363, -0.250435, 2.231575>,  <1.477140, -0.121633, 2.164911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.668363, -0.250435, 2.231575>,  <1.987066, -0.465105, 2.342682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.668363, -0.250435, 2.231575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344928, -0.026475, 0.938256,
		0.496185, 0.843373, 0.206208,
		-0.796759, 0.536675, -0.277766,
		1.429335, -0.089432, 2.148245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.890182, 0.032230, 2.953195>,  <1.987066, -0.465105, 2.342682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.890182, 0.032230, 2.953195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.556164, -0.014893, 2.738228>,  <1.355753, -0.043166, 2.609247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.556164, -0.014893, 2.738228>,  <1.890182, 0.032230, 2.953195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.556164, -0.014893, 2.738228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538080, -0.028853, 0.842400,
		-0.114747, 0.992617, -0.039296,
		-0.835046, -0.117808, -0.537419,
		1.305650, -0.050235, 2.577002>
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
