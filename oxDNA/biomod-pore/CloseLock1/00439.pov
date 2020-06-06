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
	<24.112312, 34.647335, 34.996712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291931, 35.000038, 34.938946>,  <24.399702, 35.211662, 34.904285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291931, 35.000038, 34.938946>,  <24.112312, 34.647335, 34.996712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291931, 35.000038, 34.938946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857137, -0.379460, 0.348318,
		0.252334, -0.280192, -0.926185,
		0.449047, 0.881761, -0.144413,
		24.426645, 35.264565, 34.895622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696308, 34.555168, 34.537167>,  <24.112312, 34.647335, 34.996712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696308, 34.555168, 34.537167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777042, 34.847977, 34.797443>,  <24.825483, 35.023663, 34.953609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777042, 34.847977, 34.797443>,  <24.696308, 34.555168, 34.537167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777042, 34.847977, 34.797443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810322, -0.497976, 0.308866,
		0.550128, 0.464931, -0.693684,
		0.201837, 0.732023, 0.650695,
		24.837593, 35.067585, 34.992653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303225, 34.752628, 34.323669>,  <24.696308, 34.555168, 34.537167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303225, 34.752628, 34.323669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254087, 34.836979, 34.711575>,  <25.224606, 34.887589, 34.944317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254087, 34.836979, 34.711575>,  <25.303225, 34.752628, 34.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254087, 34.836979, 34.711575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794896, -0.564137, 0.223361,
		0.594181, 0.798300, -0.098321,
		-0.122842, 0.210872, 0.969764,
		25.217236, 34.900242, 35.002502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830534, 34.508629, 34.628746>,  <25.303225, 34.752628, 34.323669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830534, 34.508629, 34.628746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651295, 34.163139, 34.536495>,  <25.543751, 33.955845, 34.481144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.651295, 34.163139, 34.536495>,  <25.830534, 34.508629, 34.628746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.651295, 34.163139, 34.536495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506609, -0.032782, -0.861553,
		0.736583, -0.502899, 0.452259,
		-0.448100, -0.863723, -0.230626,
		25.516865, 33.904022, 34.467308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291607, 35.103786, 34.203957>,  <25.830534, 34.508629, 34.628746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291607, 35.103786, 34.203957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351898, 35.453423, 34.019241>,  <26.388073, 35.663204, 33.908413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351898, 35.453423, 34.019241>,  <26.291607, 35.103786, 34.203957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351898, 35.453423, 34.019241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311431, -0.401356, -0.861350,
		-0.938238, 0.273647, 0.211722,
		0.150730, 0.874089, -0.461790,
		26.397118, 35.715649, 33.880703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603737, 35.279564, 33.928169>,  <26.291607, 35.103786, 34.203957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603737, 35.279564, 33.928169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926819, 35.419128, 33.738064>,  <26.120668, 35.502869, 33.624001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926819, 35.419128, 33.738064>,  <25.603737, 35.279564, 33.928169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926819, 35.419128, 33.738064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170489, -0.633434, -0.754782,
		-0.564397, 0.690669, -0.452143,
		0.807707, 0.348911, -0.475259,
		26.169130, 35.523800, 33.595486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393410, 35.386028, 33.255310>,  <25.603737, 35.279564, 33.928169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393410, 35.386028, 33.255310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790476, 35.350216, 33.222805>,  <26.028715, 35.328728, 33.203300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790476, 35.350216, 33.222805>,  <25.393410, 35.386028, 33.255310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790476, 35.350216, 33.222805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120803, -0.705953, -0.697881,
		0.005112, 0.702578, -0.711589,
		0.992663, -0.089529, -0.081264,
		26.088274, 35.323357, 33.198425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539341, 35.343052, 32.527111>,  <25.393410, 35.386028, 33.255310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539341, 35.343052, 32.527111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875420, 35.195793, 32.686375>,  <26.077066, 35.107437, 32.781933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875420, 35.195793, 32.686375>,  <25.539341, 35.343052, 32.527111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875420, 35.195793, 32.686375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091615, -0.627319, -0.773355,
		0.534486, 0.686248, -0.493344,
		0.840197, -0.368150, 0.398164,
		26.127480, 35.085350, 32.805824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049095, 35.344704, 32.022232>,  <25.539341, 35.343052, 32.527111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049095, 35.344704, 32.022232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185061, 35.066811, 32.275784>,  <26.266640, 34.900074, 32.427914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185061, 35.066811, 32.275784>,  <26.049095, 35.344704, 32.022232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185061, 35.066811, 32.275784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048304, -0.660228, -0.749511,
		0.939215, 0.285388, -0.190862,
		0.339914, -0.694732, 0.633881,
		26.287035, 34.858391, 32.465946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692337, 35.133572, 31.774614>,  <26.049095, 35.344704, 32.022232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692337, 35.133572, 31.774614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553190, 34.843678, 32.012520>,  <26.469702, 34.669739, 32.155262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553190, 34.843678, 32.012520>,  <26.692337, 35.133572, 31.774614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553190, 34.843678, 32.012520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179394, -0.674117, -0.716508,
		0.920221, -0.142553, 0.364516,
		-0.347867, -0.724738, 0.594764,
		26.448830, 34.626255, 32.190948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210682, 34.619759, 31.851215>,  <26.692337, 35.133572, 31.774614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210682, 34.619759, 31.851215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870928, 34.431480, 31.946703>,  <26.667074, 34.318512, 32.003994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870928, 34.431480, 31.946703>,  <27.210682, 34.619759, 31.851215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870928, 34.431480, 31.946703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209250, -0.715591, -0.666442,
		0.484516, -0.516115, 0.706307,
		-0.849387, -0.470697, 0.238718,
		26.616112, 34.290272, 32.018318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367338, 33.938805, 31.958460>,  <27.210682, 34.619759, 31.851215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367338, 33.938805, 31.958460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973331, 33.931030, 31.889912>,  <26.736927, 33.926365, 31.848782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973331, 33.931030, 31.889912>,  <27.367338, 33.938805, 31.958460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973331, 33.931030, 31.889912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132177, -0.723367, -0.677694,
		-0.110794, -0.690190, 0.715096,
		-0.985015, -0.019435, -0.171372,
		26.677828, 33.925201, 31.838501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183924, 33.147526, 31.903194>,  <27.367338, 33.938805, 31.958460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183924, 33.147526, 31.903194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880318, 33.336685, 31.724192>,  <26.698154, 33.450180, 31.616789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880318, 33.336685, 31.724192>,  <27.183924, 33.147526, 31.903194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880318, 33.336685, 31.724192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021798, -0.705414, -0.708461,
		-0.650705, -0.527979, 0.545730,
		-0.759018, 0.472895, -0.447507,
		26.652613, 33.478554, 31.589939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721962, 32.621021, 31.613825>,  <27.183924, 33.147526, 31.903194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721962, 32.621021, 31.613825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659565, 32.955238, 31.403097>,  <26.622126, 33.155769, 31.276661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659565, 32.955238, 31.403097>,  <26.721962, 32.621021, 31.613825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659565, 32.955238, 31.403097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316495, -0.462950, -0.827955,
		-0.935680, -0.295891, -0.192226,
		-0.155993, 0.835539, -0.526821,
		26.612766, 33.205898, 31.245050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439049, 32.355770, 30.986576>,  <26.721962, 32.621021, 31.613825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439049, 32.355770, 30.986576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565535, 32.728535, 30.915524>,  <26.641426, 32.952194, 30.872892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565535, 32.728535, 30.915524>,  <26.439049, 32.355770, 30.986576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565535, 32.728535, 30.915524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595102, -0.340667, -0.727873,
		-0.738825, 0.124455, -0.662305,
		0.316213, 0.931910, -0.177630,
		26.660398, 33.008106, 30.862234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350584, 32.385216, 30.332851>,  <26.439049, 32.355770, 30.986576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350584, 32.385216, 30.332851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596533, 32.690971, 30.410454>,  <26.744102, 32.874424, 30.457016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596533, 32.690971, 30.410454>,  <26.350584, 32.385216, 30.332851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596533, 32.690971, 30.410454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637492, -0.336938, -0.692876,
		-0.464260, 0.549707, -0.694467,
		0.614871, 0.764392, 0.194007,
		26.780994, 32.920288, 30.468657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428173, 32.794880, 29.735907>,  <26.350584, 32.385216, 30.332851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428173, 32.794880, 29.735907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753813, 32.851528, 29.961184>,  <26.949196, 32.885517, 30.096350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753813, 32.851528, 29.961184>,  <26.428173, 32.794880, 29.735907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753813, 32.851528, 29.961184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579057, -0.271427, -0.768779,
		0.043991, 0.951983, -0.302975,
		0.814100, 0.141621, 0.563192,
		26.998043, 32.894012, 30.130140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899845, 33.055290, 29.285658>,  <26.428173, 32.794880, 29.735907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899845, 33.055290, 29.285658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149090, 32.982841, 29.590008>,  <27.298637, 32.939373, 29.772617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149090, 32.982841, 29.590008>,  <26.899845, 33.055290, 29.285658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149090, 32.982841, 29.590008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750394, -0.135877, -0.646874,
		0.220547, 0.974029, 0.051244,
		0.623112, -0.181120, 0.760873,
		27.336023, 32.928505, 29.818270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509899, 33.507755, 29.287794>,  <26.899845, 33.055290, 29.285658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509899, 33.507755, 29.287794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597778, 33.182590, 29.503538>,  <27.650507, 32.987492, 29.632984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597778, 33.182590, 29.503538>,  <27.509899, 33.507755, 29.287794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597778, 33.182590, 29.503538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736201, -0.224610, -0.638403,
		0.640109, 0.537336, 0.549118,
		0.219700, -0.812909, 0.539362,
		27.663689, 32.938717, 29.665346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256420, 33.551434, 29.326950>,  <27.509899, 33.507755, 29.287794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256420, 33.551434, 29.326950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196861, 33.169140, 29.428465>,  <28.161127, 32.939766, 29.489374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196861, 33.169140, 29.428465>,  <28.256420, 33.551434, 29.326950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196861, 33.169140, 29.428465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832646, -0.259617, -0.489182,
		0.533414, 0.138476, 0.834442,
		-0.148895, -0.955732, 0.253785,
		28.152193, 32.882420, 29.504601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908043, 33.300056, 29.726679>,  <28.256420, 33.551434, 29.326950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908043, 33.300056, 29.726679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694315, 33.003448, 29.564367>,  <28.566078, 32.825485, 29.466980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694315, 33.003448, 29.564367>,  <28.908043, 33.300056, 29.726679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694315, 33.003448, 29.564367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812196, -0.317385, -0.489493,
		0.234180, -0.591117, 0.771843,
		-0.534319, -0.741517, -0.405778,
		28.534019, 32.780994, 29.442635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409014, 32.801319, 29.642859>,  <28.908043, 33.300056, 29.726679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409014, 32.801319, 29.642859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116962, 32.628139, 29.431402>,  <28.941730, 32.524231, 29.304527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116962, 32.628139, 29.431402>,  <29.409014, 32.801319, 29.642859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116962, 32.628139, 29.431402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683259, -0.453373, -0.572372,
		0.008138, -0.779105, 0.626840,
		-0.730130, -0.432952, -0.528641,
		28.897923, 32.498253, 29.272810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439346, 32.056896, 29.688032>,  <29.409014, 32.801319, 29.642859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439346, 32.056896, 29.688032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242077, 32.102150, 29.343014>,  <29.123716, 32.129303, 29.136003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242077, 32.102150, 29.343014>,  <29.439346, 32.056896, 29.688032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242077, 32.102150, 29.343014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626289, -0.641981, -0.442292,
		-0.603774, -0.758328, 0.245755,
		-0.493173, 0.113131, -0.862544,
		29.094126, 32.136089, 29.084251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102156, 31.365202, 29.429501>,  <29.439346, 32.056896, 29.688032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102156, 31.365202, 29.429501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134645, 31.606817, 29.112379>,  <29.154140, 31.751787, 28.922106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134645, 31.606817, 29.112379>,  <29.102156, 31.365202, 29.429501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134645, 31.606817, 29.112379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526121, -0.701568, -0.480624,
		-0.846522, -0.378071, -0.374784,
		0.081227, 0.604040, -0.792804,
		29.159014, 31.788029, 28.874538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128345, 30.897247, 28.931170>,  <29.102156, 31.365202, 29.429501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128345, 30.897247, 28.931170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312555, 31.223551, 28.791197>,  <29.423082, 31.419333, 28.707214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312555, 31.223551, 28.791197>,  <29.128345, 30.897247, 28.931170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312555, 31.223551, 28.791197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669274, -0.578071, -0.466804,
		-0.583085, -0.019224, -0.812184,
		0.460526, 0.815760, -0.349930,
		29.450714, 31.468279, 28.686218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119259, 30.817974, 28.226818>,  <29.128345, 30.897247, 28.931170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119259, 30.817974, 28.226818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426165, 31.026791, 28.375832>,  <29.610308, 31.152081, 28.465240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426165, 31.026791, 28.375832>,  <29.119259, 30.817974, 28.226818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426165, 31.026791, 28.375832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640215, -0.657728, -0.396885,
		0.037838, 0.543018, -0.838868,
		0.767263, 0.522039, 0.372536,
		29.656343, 31.183403, 28.487593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596270, 30.838421, 27.697441>,  <29.119259, 30.817974, 28.226818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596270, 30.838421, 27.697441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787252, 30.927334, 28.037472>,  <29.901842, 30.980682, 28.241489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787252, 30.927334, 28.037472>,  <29.596270, 30.838421, 27.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787252, 30.927334, 28.037472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652917, -0.737183, -0.173957,
		0.587993, 0.638084, -0.497104,
		0.477456, 0.222282, 0.850075,
		29.930489, 30.994019, 28.292494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275076, 30.868126, 27.464159>,  <29.596270, 30.838421, 27.697441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275076, 30.868126, 27.464159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045036, 30.542433, 27.432449>,  <29.907013, 30.347017, 27.413424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045036, 30.542433, 27.432449>,  <30.275076, 30.868126, 27.464159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045036, 30.542433, 27.432449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576504, -0.472121, 0.666892,
		-0.580432, 0.337828, 0.740926,
		-0.575101, -0.814233, -0.079275,
		29.872505, 30.298162, 27.408667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220474, 30.532494, 28.096806>,  <30.275076, 30.868126, 27.464159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220474, 30.532494, 28.096806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187943, 30.236605, 27.829615>,  <30.168425, 30.059071, 27.669300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187943, 30.236605, 27.829615>,  <30.220474, 30.532494, 28.096806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187943, 30.236605, 27.829615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560222, -0.588234, 0.583207,
		-0.824340, -0.326784, 0.462251,
		-0.081328, -0.739725, -0.667977,
		30.163544, 30.014687, 27.629221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010868, 29.804230, 28.354153>,  <30.220474, 30.532494, 28.096806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010868, 29.804230, 28.354153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270275, 29.807465, 28.049690>,  <30.425919, 29.809406, 27.867012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270275, 29.807465, 28.049690>,  <30.010868, 29.804230, 28.354153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270275, 29.807465, 28.049690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600062, -0.620673, 0.504669,
		-0.468348, -0.784028, -0.407370,
		0.648518, 0.008087, -0.761156,
		30.464830, 29.809891, 27.821342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161421, 29.137932, 28.249487>,  <30.010868, 29.804230, 28.354153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161421, 29.137932, 28.249487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454224, 29.392473, 28.152143>,  <30.629906, 29.545198, 28.093737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454224, 29.392473, 28.152143>,  <30.161421, 29.137932, 28.249487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454224, 29.392473, 28.152143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577322, -0.389702, 0.717518,
		0.361756, -0.665724, -0.652644,
		0.732006, 0.636352, -0.243360,
		30.673826, 29.583380, 28.079136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764664, 28.707083, 28.716749>,  <30.161421, 29.137932, 28.249487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764664, 28.707083, 28.716749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125628, 28.552767, 28.793501>,  <30.342207, 28.460176, 28.839552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125628, 28.552767, 28.793501>,  <29.764664, 28.707083, 28.716749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125628, 28.552767, 28.793501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295693, 0.878403, 0.375464,
		-0.313399, -0.282086, 0.906757,
		0.902412, -0.385792, 0.191880,
		30.396351, 28.437029, 28.851065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059835, 28.799049, 29.433199>,  <29.764664, 28.707083, 28.716749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059835, 28.799049, 29.433199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371059, 28.764040, 29.184374>,  <30.557795, 28.743034, 29.035080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371059, 28.764040, 29.184374>,  <30.059835, 28.799049, 29.433199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371059, 28.764040, 29.184374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352363, 0.880602, 0.316828,
		0.520059, -0.465703, 0.716003,
		0.778061, -0.087524, -0.622061,
		30.604477, 28.737783, 28.997755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676117, 28.640810, 29.744198>,  <30.059835, 28.799049, 29.433199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676117, 28.640810, 29.744198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727236, 28.868244, 29.419144>,  <30.757908, 29.004705, 29.224112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727236, 28.868244, 29.419144>,  <30.676117, 28.640810, 29.744198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727236, 28.868244, 29.419144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230933, 0.779776, 0.581910,
		0.964541, -0.262030, -0.031652,
		0.127796, 0.568586, -0.812637,
		30.765575, 29.038820, 29.175352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167332, 29.089973, 30.020605>,  <30.676117, 28.640810, 29.744198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167332, 29.089973, 30.020605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059250, 29.240580, 29.666153>,  <30.994400, 29.330942, 29.453482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059250, 29.240580, 29.666153>,  <31.167332, 29.089973, 30.020605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059250, 29.240580, 29.666153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025381, 0.917259, 0.397481,
		0.962468, 0.129892, -0.238292,
		-0.270205, 0.376514, -0.886130,
		30.978188, 29.353535, 29.400314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688814, 29.666197, 29.870134>,  <31.167332, 29.089973, 30.020605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688814, 29.666197, 29.870134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311993, 29.689955, 29.738070>,  <31.085899, 29.704208, 29.658831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311993, 29.689955, 29.738070>,  <31.688814, 29.666197, 29.870134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311993, 29.689955, 29.738070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090793, 0.902326, 0.421383,
		0.322939, 0.426942, -0.844648,
		-0.942055, 0.059393, -0.330160,
		31.029377, 29.707773, 29.639021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611721, 30.341202, 29.900866>,  <31.688814, 29.666197, 29.870134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611721, 30.341202, 29.900866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234577, 30.214815, 29.858561>,  <31.008291, 30.138983, 29.833178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234577, 30.214815, 29.858561>,  <31.611721, 30.341202, 29.900866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234577, 30.214815, 29.858561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329097, 0.833471, 0.443870,
		-0.052098, 0.453312, -0.889828,
		-0.942858, -0.315965, -0.105761,
		30.951719, 30.120026, 29.826832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243986, 30.916866, 29.585196>,  <31.611721, 30.341202, 29.900866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243986, 30.916866, 29.585196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991259, 30.677546, 29.782310>,  <30.839622, 30.533953, 29.900579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991259, 30.677546, 29.782310>,  <31.243986, 30.916866, 29.585196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991259, 30.677546, 29.782310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250687, 0.759319, 0.600492,
		-0.733459, 0.255867, -0.629738,
		-0.631819, -0.598303, 0.492786,
		30.801714, 30.498055, 29.930147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496891, 31.216616, 29.586376>,  <31.243986, 30.916866, 29.585196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496891, 31.216616, 29.586376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516273, 30.984348, 29.911455>,  <30.527903, 30.844988, 30.106503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516273, 30.984348, 29.911455>,  <30.496891, 31.216616, 29.586376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516273, 30.984348, 29.911455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205379, 0.790473, 0.577038,
		-0.977482, -0.194872, -0.080955,
		0.048456, -0.580671, 0.812695,
		30.530809, 30.810146, 30.155264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056263, 31.534527, 29.969820>,  <30.496891, 31.216616, 29.586376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056263, 31.534527, 29.969820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224098, 31.287451, 30.235872>,  <30.324800, 31.139204, 30.395504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224098, 31.287451, 30.235872>,  <30.056263, 31.534527, 29.969820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224098, 31.287451, 30.235872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197749, 0.652952, 0.731128,
		-0.885912, -0.438303, 0.151824,
		0.419589, -0.617692, 0.665132,
		30.349976, 31.102142, 30.435411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534014, 31.493755, 30.549454>,  <30.056263, 31.534527, 29.969820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534014, 31.493755, 30.549454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889519, 31.381075, 30.694090>,  <30.102821, 31.313467, 30.780872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889519, 31.381075, 30.694090>,  <29.534014, 31.493755, 30.549454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889519, 31.381075, 30.694090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156890, 0.554258, 0.817425,
		-0.430686, -0.783225, 0.448406,
		0.888760, -0.281703, 0.361591,
		30.156147, 31.296564, 30.802567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422274, 31.188406, 31.157597>,  <29.534014, 31.493755, 30.549454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422274, 31.188406, 31.157597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805452, 31.287361, 31.215748>,  <30.035360, 31.346735, 31.250639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805452, 31.287361, 31.215748>,  <29.422274, 31.188406, 31.157597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805452, 31.287361, 31.215748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282442, 0.723549, 0.629843,
		0.050627, -0.644418, 0.762995,
		0.957948, 0.247389, 0.145380,
		30.092836, 31.361578, 31.259361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527580, 31.273508, 31.836599>,  <29.422274, 31.188406, 31.157597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527580, 31.273508, 31.836599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837858, 31.480251, 31.691736>,  <30.024025, 31.604298, 31.604818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837858, 31.480251, 31.691736>,  <29.527580, 31.273508, 31.836599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837858, 31.480251, 31.691736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283291, 0.797939, 0.532015,
		0.563956, -0.310084, 0.765377,
		0.775693, 0.516858, -0.362158,
		30.070566, 31.635309, 31.583088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942419, 31.495184, 32.419891>,  <29.527580, 31.273508, 31.836599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942419, 31.495184, 32.419891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984667, 31.755833, 32.119431>,  <30.010015, 31.912222, 31.939154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984667, 31.755833, 32.119431>,  <29.942419, 31.495184, 32.419891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984667, 31.755833, 32.119431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015996, 0.756396, 0.653919,
		0.994278, -0.057051, 0.090315,
		0.105621, 0.651622, -0.751155,
		30.016354, 31.951319, 31.894085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318296, 32.024841, 32.700806>,  <29.942419, 31.495184, 32.419891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318296, 32.024841, 32.700806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228081, 32.207226, 32.356426>,  <30.173952, 32.316658, 32.149799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228081, 32.207226, 32.356426>,  <30.318296, 32.024841, 32.700806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228081, 32.207226, 32.356426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081236, 0.871837, 0.483012,
		0.970842, 0.178878, -0.159592,
		-0.225538, 0.455964, -0.860947,
		30.160419, 32.344013, 32.098141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735189, 32.597797, 32.674480>,  <30.318296, 32.024841, 32.700806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735189, 32.597797, 32.674480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424128, 32.663612, 32.431770>,  <30.237490, 32.703102, 32.286144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424128, 32.663612, 32.431770>,  <30.735189, 32.597797, 32.674480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424128, 32.663612, 32.431770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100396, 0.920257, 0.378217,
		0.620621, 0.355041, -0.699124,
		-0.777656, 0.164541, -0.606776,
		30.190830, 32.712975, 32.249737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756330, 33.265339, 32.618950>,  <30.735189, 32.597797, 32.674480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756330, 33.265339, 32.618950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385332, 33.192177, 32.488537>,  <30.162733, 33.148281, 32.410290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385332, 33.192177, 32.488537>,  <30.756330, 33.265339, 32.618950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385332, 33.192177, 32.488537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284752, 0.910730, 0.299145,
		0.242215, 0.370294, -0.896780,
		-0.927496, -0.182902, -0.326034,
		30.107084, 33.137306, 32.390728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626102, 33.913673, 32.243069>,  <30.756330, 33.265339, 32.618950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626102, 33.913673, 32.243069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284538, 33.719784, 32.318836>,  <30.079599, 33.603451, 32.364296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284538, 33.719784, 32.318836>,  <30.626102, 33.913673, 32.243069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284538, 33.719784, 32.318836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339761, 0.794949, 0.502612,
		-0.394210, 0.364827, -0.843504,
		-0.853909, -0.484724, 0.189423,
		30.028366, 33.574368, 32.375664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019770, 34.322197, 32.077652>,  <30.626102, 33.913673, 32.243069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019770, 34.322197, 32.077652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889582, 34.063198, 32.353279>,  <29.811470, 33.907799, 32.518654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889582, 34.063198, 32.353279>,  <30.019770, 34.322197, 32.077652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889582, 34.063198, 32.353279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382799, 0.756585, 0.530136,
		-0.864602, -0.091232, -0.494106,
		-0.325468, -0.647500, 0.689068,
		29.791941, 33.868950, 32.560001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444571, 34.604885, 32.153889>,  <30.019770, 34.322197, 32.077652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444571, 34.604885, 32.153889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477846, 34.341728, 32.453293>,  <29.497812, 34.183834, 32.632935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477846, 34.341728, 32.453293>,  <29.444571, 34.604885, 32.153889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477846, 34.341728, 32.453293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609066, 0.560928, 0.560713,
		-0.788745, -0.502534, -0.354035,
		0.083189, -0.657890, 0.748506,
		29.502804, 34.144360, 32.677845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832569, 34.229359, 32.301224>,  <29.444571, 34.604885, 32.153889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832569, 34.229359, 32.301224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060520, 34.258209, 32.628647>,  <29.197290, 34.275520, 32.825100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060520, 34.258209, 32.628647>,  <28.832569, 34.229359, 32.301224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060520, 34.258209, 32.628647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697927, 0.568293, 0.435822,
		-0.433748, -0.819659, 0.374195,
		0.569878, 0.072124, 0.818558,
		29.231483, 34.279846, 32.874214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389456, 34.378483, 32.858547>,  <28.832569, 34.229359, 32.301224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389456, 34.378483, 32.858547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742571, 34.454517, 33.030388>,  <28.954439, 34.500137, 33.133492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742571, 34.454517, 33.030388>,  <28.389456, 34.378483, 32.858547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742571, 34.454517, 33.030388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443656, 0.638023, 0.629362,
		-0.154463, -0.746187, 0.647570,
		0.882785, 0.190085, 0.429602,
		29.007406, 34.511543, 33.159267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261833, 34.365833, 33.544971>,  <28.389456, 34.378483, 32.858547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261833, 34.365833, 33.544971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598141, 34.577259, 33.498108>,  <28.799925, 34.704113, 33.469990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598141, 34.577259, 33.498108>,  <28.261833, 34.365833, 33.544971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598141, 34.577259, 33.498108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405244, 0.757917, 0.511214,
		0.359005, -0.382336, 0.851431,
		0.840769, 0.528566, -0.117157,
		28.850372, 34.735828, 33.462959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310616, 34.693363, 34.248169>,  <28.261833, 34.365833, 33.544971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310616, 34.693363, 34.248169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509230, 34.906612, 33.974167>,  <28.628399, 35.034561, 33.809765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509230, 34.906612, 33.974167>,  <28.310616, 34.693363, 34.248169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509230, 34.906612, 33.974167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459934, 0.830862, 0.313255,
		0.736147, 0.159514, 0.657755,
		0.496536, 0.533125, -0.685003,
		28.658190, 35.066551, 33.768665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716484, 35.257637, 34.565830>,  <28.310616, 34.693363, 34.248169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716484, 35.257637, 34.565830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700239, 35.399162, 34.192055>,  <28.690493, 35.484077, 33.967789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700239, 35.399162, 34.192055>,  <28.716484, 35.257637, 34.565830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700239, 35.399162, 34.192055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313692, 0.883406, 0.348125,
		0.948656, 0.307263, 0.075112,
		-0.040612, 0.353812, -0.934434,
		28.688055, 35.505306, 33.911724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025858, 35.927486, 34.590122>,  <28.716484, 35.257637, 34.565830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025858, 35.927486, 34.590122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837067, 35.970482, 34.240108>,  <28.723791, 35.996277, 34.030102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837067, 35.970482, 34.240108>,  <29.025858, 35.927486, 34.590122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837067, 35.970482, 34.240108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375375, 0.873573, 0.309779,
		0.797702, 0.474675, -0.371961,
		-0.471980, 0.107487, -0.875032,
		28.695473, 36.002728, 33.977600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243542, 36.559814, 34.320927>,  <29.025858, 35.927486, 34.590122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243542, 36.559814, 34.320927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895247, 36.461582, 34.150513>,  <28.686270, 36.402641, 34.048264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895247, 36.461582, 34.150513>,  <29.243542, 36.559814, 34.320927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895247, 36.461582, 34.150513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287836, 0.956978, 0.036652,
		0.398705, 0.154542, -0.903964,
		-0.870738, -0.245580, -0.426035,
		28.634026, 36.387909, 34.022701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439566, 37.206676, 34.086712>,  <29.243542, 36.559814, 34.320927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439566, 37.206676, 34.086712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298384, 37.572369, 34.007114>,  <29.213675, 37.791786, 33.959354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298384, 37.572369, 34.007114>,  <29.439566, 37.206676, 34.086712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298384, 37.572369, 34.007114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199562, 0.134230, 0.970648,
		0.914111, 0.382305, 0.135070,
		-0.352953, 0.914235, -0.198995,
		29.192497, 37.846638, 33.947414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833740, 37.730042, 34.391422>,  <29.439566, 37.206676, 34.086712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833740, 37.730042, 34.391422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440689, 37.803898, 34.398941>,  <29.204859, 37.848213, 34.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440689, 37.803898, 34.398941>,  <29.833740, 37.730042, 34.391422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440689, 37.803898, 34.398941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047721, 0.153476, 0.986999,
		0.179356, 0.970748, -0.159621,
		-0.982626, 0.184642, 0.018798,
		29.145901, 37.859291, 34.404579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868338, 38.123142, 35.051712>,  <29.833740, 37.730042, 34.391422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868338, 38.123142, 35.051712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480047, 38.064087, 34.975925>,  <29.247072, 38.028656, 34.930454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480047, 38.064087, 34.975925>,  <29.868338, 38.123142, 35.051712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480047, 38.064087, 34.975925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229236, 0.333911, 0.914306,
		-0.071718, 0.930972, -0.357978,
		-0.970725, -0.147634, -0.189465,
		29.188829, 38.019798, 34.919086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454073, 38.251019, 34.587902>,  <29.868338, 38.123142, 35.051712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454073, 38.251019, 34.587902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758429, 38.345905, 34.346317>,  <30.941042, 38.402836, 34.201366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758429, 38.345905, 34.346317>,  <30.454073, 38.251019, 34.587902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758429, 38.345905, 34.346317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489522, 0.401118, 0.774256,
		0.425923, -0.884780, 0.189088,
		0.760893, 0.237210, -0.603965,
		30.986696, 38.417068, 34.165127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052036, 38.111908, 34.835068>,  <30.454073, 38.251019, 34.587902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052036, 38.111908, 34.835068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146976, 38.414639, 34.591469>,  <31.203941, 38.596279, 34.445309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146976, 38.414639, 34.591469>,  <31.052036, 38.111908, 34.835068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146976, 38.414639, 34.591469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616889, 0.366847, 0.696327,
		0.750409, -0.540955, -0.379808,
		0.237350, 0.756829, -0.608994,
		31.218182, 38.641685, 34.408772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727318, 38.157356, 34.913303>,  <31.052036, 38.111908, 34.835068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727318, 38.157356, 34.913303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593000, 38.521873, 34.817982>,  <31.512411, 38.740585, 34.760788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593000, 38.521873, 34.817982>,  <31.727318, 38.157356, 34.913303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593000, 38.521873, 34.817982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531193, 0.392135, 0.751042,
		0.777868, 0.125606, -0.615748,
		-0.335792, 0.911292, -0.238308,
		31.492264, 38.795261, 34.746490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330643, 37.932537, 35.336388>,  <31.727318, 38.157356, 34.913303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330643, 37.932537, 35.336388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554016, 37.602165, 35.305435>,  <32.688042, 37.403942, 35.286865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554016, 37.602165, 35.305435>,  <32.330643, 37.932537, 35.336388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554016, 37.602165, 35.305435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817307, 0.563762, -0.119089,
		0.141982, 0.003263, 0.989864,
		0.558436, -0.825931, -0.077377,
		32.721546, 37.354385, 35.282223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685902, 38.002132, 35.893921>,  <32.330643, 37.932537, 35.336388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685902, 38.002132, 35.893921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876652, 37.806141, 35.602028>,  <32.991104, 37.688545, 35.426891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876652, 37.806141, 35.602028>,  <32.685902, 38.002132, 35.893921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876652, 37.806141, 35.602028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809217, 0.568858, 0.146863,
		0.343154, -0.660547, 0.667775,
		0.476879, -0.489978, -0.729731,
		33.019714, 37.659149, 35.383110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056667, 38.022083, 36.565723>,  <32.685902, 38.002132, 35.893921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056667, 38.022083, 36.565723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441799, 37.929981, 36.509243>,  <33.672878, 37.874722, 36.475357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441799, 37.929981, 36.509243>,  <33.056667, 38.022083, 36.565723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441799, 37.929981, 36.509243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186685, 0.189509, 0.963968,
		-0.195201, -0.954499, 0.225451,
		0.962832, -0.230256, -0.141199,
		33.730648, 37.860905, 36.466885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195038, 37.411125, 36.883774>,  <33.056667, 38.022083, 36.565723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195038, 37.411125, 36.883774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540573, 37.612610, 36.886555>,  <33.747894, 37.733501, 36.888222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540573, 37.612610, 36.886555>,  <33.195038, 37.411125, 36.883774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540573, 37.612610, 36.886555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124404, -0.226670, 0.965994,
		0.488161, -0.833602, -0.258472,
		0.863842, 0.503715, 0.006948,
		33.799725, 37.763725, 36.888638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770569, 36.976311, 37.143837>,  <33.195038, 37.411125, 36.883774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770569, 36.976311, 37.143837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867222, 37.358524, 37.211433>,  <33.925213, 37.587852, 37.251991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867222, 37.358524, 37.211433>,  <33.770569, 36.976311, 37.143837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867222, 37.358524, 37.211433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077142, -0.192521, 0.978256,
		0.967297, -0.223342, -0.120232,
		0.241633, 0.955539, 0.168996,
		33.939713, 37.645187, 37.262131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482365, 37.011112, 37.410477>,  <33.770569, 36.976311, 37.143837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482365, 37.011112, 37.410477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314072, 37.349281, 37.542084>,  <34.213097, 37.552181, 37.621048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314072, 37.349281, 37.542084>,  <34.482365, 37.011112, 37.410477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314072, 37.349281, 37.542084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378939, -0.165751, 0.910457,
		0.824253, 0.507735, -0.250626,
		-0.420729, 0.845418, 0.329021,
		34.187855, 37.602905, 37.640789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874695, 37.140747, 37.925163>,  <34.482365, 37.011112, 37.410477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874695, 37.140747, 37.925163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554253, 37.374481, 37.976978>,  <34.361988, 37.514721, 38.008068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554253, 37.374481, 37.976978>,  <34.874695, 37.140747, 37.925163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554253, 37.374481, 37.976978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135088, -0.034316, 0.990239,
		0.583073, 0.810789, -0.051446,
		-0.801109, 0.584332, 0.129537,
		34.313919, 37.549782, 38.015839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110477, 37.641785, 38.429707>,  <34.874695, 37.140747, 37.925163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110477, 37.641785, 38.429707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711735, 37.617752, 38.450329>,  <34.472488, 37.603333, 38.462700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711735, 37.617752, 38.450329>,  <35.110477, 37.641785, 38.429707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711735, 37.617752, 38.450329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053707, -0.034816, 0.997950,
		-0.058167, 0.997586, 0.037934,
		-0.996861, -0.060085, 0.051552,
		34.412678, 37.599728, 38.465794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981068, 37.949020, 39.054665>,  <35.110477, 37.641785, 38.429707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981068, 37.949020, 39.054665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658123, 37.716984, 39.011482>,  <34.464355, 37.577763, 38.985573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658123, 37.716984, 39.011482>,  <34.981068, 37.949020, 39.054665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658123, 37.716984, 39.011482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028190, -0.220671, 0.974941,
		-0.589379, 0.784090, 0.194515,
		-0.807365, -0.580093, -0.107955,
		34.415913, 37.542957, 38.979095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749142, 37.861465, 39.753242>,  <34.981068, 37.949020, 39.054665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749142, 37.861465, 39.753242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517151, 37.605007, 39.552219>,  <34.377956, 37.451134, 39.431606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517151, 37.605007, 39.552219>,  <34.749142, 37.861465, 39.753242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517151, 37.605007, 39.552219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119386, -0.543355, 0.830971,
		-0.805840, 0.541939, 0.238587,
		-0.579973, -0.641145, -0.502557,
		34.343159, 37.412663, 39.401451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063828, 37.849590, 40.037849>,  <34.749142, 37.861465, 39.753242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063828, 37.849590, 40.037849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124783, 37.503040, 39.847618>,  <34.161358, 37.295113, 39.733479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124783, 37.503040, 39.847618>,  <34.063828, 37.849590, 40.037849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124783, 37.503040, 39.847618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277627, -0.499352, 0.820713,
		-0.948525, 0.006965, -0.316625,
		0.152391, -0.866371, -0.475582,
		34.170502, 37.243130, 39.704945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769611, 37.328999, 40.503895>,  <34.063828, 37.849590, 40.037849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769611, 37.328999, 40.503895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909519, 37.068119, 40.234882>,  <33.993462, 36.911591, 40.073475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909519, 37.068119, 40.234882>,  <33.769611, 37.328999, 40.503895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909519, 37.068119, 40.234882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255797, -0.757083, 0.601160,
		-0.901239, -0.038234, -0.431633,
		0.349767, -0.652199, -0.672533,
		34.014450, 36.872459, 40.033123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172443, 36.882763, 40.290630>,  <33.769611, 37.328999, 40.503895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172443, 36.882763, 40.290630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539715, 36.725853, 40.268482>,  <33.760078, 36.631706, 40.255196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539715, 36.725853, 40.268482>,  <33.172443, 36.882763, 40.290630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539715, 36.725853, 40.268482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276294, -0.734230, 0.620135,
		-0.283917, -0.554098, -0.782539,
		0.918179, -0.392278, -0.055367,
		33.815170, 36.608170, 40.251873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079624, 36.165852, 40.217194>,  <33.172443, 36.882763, 40.290630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079624, 36.165852, 40.217194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452965, 36.208656, 40.354248>,  <33.676971, 36.234341, 40.436481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452965, 36.208656, 40.354248>,  <33.079624, 36.165852, 40.217194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452965, 36.208656, 40.354248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145162, -0.760471, 0.632940,
		0.328298, -0.640494, -0.694254,
		0.933353, 0.107013, 0.342636,
		33.732971, 36.240761, 40.457039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416927, 35.554192, 40.111511>,  <33.079624, 36.165852, 40.217194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416927, 35.554192, 40.111511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640095, 35.714912, 40.401970>,  <33.773994, 35.811344, 40.576244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640095, 35.714912, 40.401970>,  <33.416927, 35.554192, 40.111511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640095, 35.714912, 40.401970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039096, -0.861285, 0.506616,
		0.828975, -0.311039, -0.464816,
		0.557917, 0.401800, 0.726144,
		33.807468, 35.835453, 40.619812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875778, 35.030537, 40.264542>,  <33.416927, 35.554192, 40.111511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875778, 35.030537, 40.264542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871048, 35.257439, 40.593925>,  <33.868210, 35.393578, 40.791557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871048, 35.257439, 40.593925>,  <33.875778, 35.030537, 40.264542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871048, 35.257439, 40.593925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119592, -0.816803, 0.564384,
		0.992753, 0.105152, -0.058181,
		-0.011824, 0.567252, 0.823459,
		33.867500, 35.427616, 40.840961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312923, 34.750603, 40.720467>,  <33.875778, 35.030537, 40.264542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312923, 34.750603, 40.720467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122982, 34.988583, 40.979866>,  <34.009018, 35.131371, 41.135506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122982, 34.988583, 40.979866>,  <34.312923, 34.750603, 40.720467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122982, 34.988583, 40.979866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074735, -0.706955, 0.703299,
		0.876888, 0.382427, 0.291234,
		-0.474849, 0.594949, 0.648501,
		33.980526, 35.167068, 41.174416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697792, 34.871296, 41.432198>,  <34.312923, 34.750603, 40.720467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697792, 34.871296, 41.432198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314445, 34.958622, 41.505810>,  <34.084438, 35.011017, 41.549976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314445, 34.958622, 41.505810>,  <34.697792, 34.871296, 41.432198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314445, 34.958622, 41.505810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067647, -0.452576, 0.889156,
		0.277401, 0.864590, 0.418967,
		-0.958370, 0.218311, 0.184032,
		34.026936, 35.024117, 41.561020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748802, 35.093758, 42.156227>,  <34.697792, 34.871296, 41.432198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748802, 35.093758, 42.156227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368141, 35.016083, 42.061031>,  <34.139744, 34.969479, 42.003914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368141, 35.016083, 42.061031>,  <34.748802, 35.093758, 42.156227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368141, 35.016083, 42.061031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093795, -0.554082, 0.827161,
		-0.292493, 0.809496, 0.509081,
		-0.951657, -0.194189, -0.237992,
		34.082645, 34.957825, 41.989635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388641, 35.100994, 42.862305>,  <34.748802, 35.093758, 42.156227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388641, 35.100994, 42.862305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150955, 34.887718, 42.621433>,  <34.008343, 34.759754, 42.476910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150955, 34.887718, 42.621433>,  <34.388641, 35.100994, 42.862305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150955, 34.887718, 42.621433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134521, -0.672262, 0.727989,
		-0.792974, 0.513591, 0.327746,
		-0.594219, -0.533188, -0.602175,
		33.972691, 34.727760, 42.440781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811150, 34.928177, 43.227398>,  <34.388641, 35.100994, 42.862305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811150, 34.928177, 43.227398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769329, 34.666779, 42.927528>,  <33.744236, 34.509937, 42.747608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769329, 34.666779, 42.927528>,  <33.811150, 34.928177, 43.227398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769329, 34.666779, 42.927528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132519, -0.737927, 0.661742,
		-0.985651, 0.168531, -0.009451,
		-0.104550, -0.653499, -0.749672,
		33.737965, 34.470730, 42.702625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173725, 34.608891, 43.254280>,  <33.811150, 34.928177, 43.227398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173725, 34.608891, 43.254280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380653, 34.354847, 43.024837>,  <33.504810, 34.202419, 42.887173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380653, 34.354847, 43.024837>,  <33.173725, 34.608891, 43.254280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380653, 34.354847, 43.024837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274560, -0.757997, 0.591656,
		-0.810556, -0.148584, -0.566499,
		0.517316, -0.635109, -0.573604,
		33.535851, 34.164314, 42.852757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709297, 34.092243, 43.185455>,  <33.173725, 34.608891, 43.254280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709297, 34.092243, 43.185455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071846, 33.939953, 43.112202>,  <33.289375, 33.848579, 43.068249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071846, 33.939953, 43.112202>,  <32.709297, 34.092243, 43.185455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071846, 33.939953, 43.112202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289113, -0.875025, 0.388260,
		-0.308064, -0.298962, -0.903171,
		0.906372, -0.380727, -0.183130,
		33.343758, 33.825733, 43.057262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665367, 33.374943, 42.949078>,  <32.709297, 34.092243, 43.185455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665367, 33.374943, 42.949078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038914, 33.397240, 43.090382>,  <33.263042, 33.410618, 43.175163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038914, 33.397240, 43.090382>,  <32.665367, 33.374943, 42.949078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038914, 33.397240, 43.090382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130888, -0.865978, 0.482650,
		0.332818, -0.496966, -0.801409,
		0.933863, 0.055740, 0.353260,
		33.319073, 33.413963, 43.196362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939690, 32.738567, 42.797146>,  <32.665367, 33.374943, 42.949078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939690, 32.738567, 42.797146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140129, 32.889347, 43.108738>,  <33.260391, 32.979816, 43.295692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140129, 32.889347, 43.108738>,  <32.939690, 32.738567, 42.797146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140129, 32.889347, 43.108738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122132, -0.860333, 0.494884,
		0.856731, -0.343123, -0.385071,
		0.501095, 0.376952, 0.778980,
		33.290459, 33.002434, 43.342434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325584, 32.139275, 43.075020>,  <32.939690, 32.738567, 42.797146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325584, 32.139275, 43.075020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354786, 32.411758, 43.366394>,  <33.372307, 32.575249, 43.541218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354786, 32.411758, 43.366394>,  <33.325584, 32.139275, 43.075020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354786, 32.411758, 43.366394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077287, -0.732055, 0.676847,
		0.994332, 0.006885, -0.106092,
		0.073005, 0.681211, 0.728438,
		33.376686, 32.616123, 43.584927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762157, 31.830608, 43.507492>,  <33.325584, 32.139275, 43.075020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762157, 31.830608, 43.507492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627731, 32.113018, 43.756840>,  <33.547073, 32.282463, 43.906448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627731, 32.113018, 43.756840>,  <33.762157, 31.830608, 43.507492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627731, 32.113018, 43.756840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041119, -0.650235, 0.758619,
		0.940940, 0.280580, 0.189492,
		-0.336068, 0.706023, 0.623369,
		33.526913, 32.324825, 43.943851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126904, 31.805094, 44.170315>,  <33.762157, 31.830608, 43.507492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126904, 31.805094, 44.170315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777599, 31.967224, 44.278488>,  <33.568016, 32.064503, 44.343391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777599, 31.967224, 44.278488>,  <34.126904, 31.805094, 44.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777599, 31.967224, 44.278488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177796, -0.781802, 0.597640,
		0.453662, 0.473812, 0.754780,
		-0.873258, 0.405324, 0.270432,
		33.515621, 32.088821, 44.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103699, 31.851210, 44.819370>,  <34.126904, 31.805094, 44.170315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103699, 31.851210, 44.819370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709171, 31.845100, 44.753704>,  <33.472454, 31.841434, 44.714306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709171, 31.845100, 44.753704>,  <34.103699, 31.851210, 44.819370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709171, 31.845100, 44.753704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099292, -0.739855, 0.665399,
		-0.131620, 0.672593, 0.728214,
		-0.986315, -0.015274, -0.164163,
		33.413277, 31.840519, 44.704456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843754, 31.515167, 45.397167>,  <34.103699, 31.851210, 44.819370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843754, 31.515167, 45.397167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479683, 31.569384, 45.240604>,  <33.261238, 31.601913, 45.146667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479683, 31.569384, 45.240604>,  <33.843754, 31.515167, 45.397167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479683, 31.569384, 45.240604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358650, -0.730635, 0.580984,
		-0.207231, 0.669179, 0.713621,
		-0.910179, 0.135542, -0.391411,
		33.206631, 31.610046, 45.123180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468098, 31.616344, 45.974312>,  <33.843754, 31.515167, 45.397167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468098, 31.616344, 45.974312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237564, 31.492765, 45.671684>,  <33.099243, 31.418617, 45.490108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237564, 31.492765, 45.671684>,  <33.468098, 31.616344, 45.974312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237564, 31.492765, 45.671684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442810, -0.660036, 0.606854,
		-0.686846, 0.684765, 0.243597,
		-0.576335, -0.308948, -0.756564,
		33.064663, 31.400082, 45.444714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898174, 31.536762, 46.358768>,  <33.468098, 31.616344, 45.974312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898174, 31.536762, 46.358768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898453, 31.313469, 46.026894>,  <32.898621, 31.179493, 45.827770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898453, 31.313469, 46.026894>,  <32.898174, 31.536762, 46.358768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898453, 31.313469, 46.026894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442239, -0.744314, 0.500422,
		-0.896897, 0.366570, -0.247391,
		0.000697, -0.558232, -0.829684,
		32.898663, 31.146000, 45.777988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258484, 31.202364, 46.329201>,  <32.898174, 31.536762, 46.358768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258484, 31.202364, 46.329201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501812, 30.983055, 46.099648>,  <32.647808, 30.851469, 45.961914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501812, 30.983055, 46.099648>,  <32.258484, 31.202364, 46.329201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501812, 30.983055, 46.099648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353831, -0.834567, 0.422257,
		-0.710457, -0.053810, -0.701680,
		0.608321, -0.548272, -0.573885,
		32.684307, 30.818573, 45.927483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938759, 30.527294, 46.291340>,  <32.258484, 31.202364, 46.329201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938759, 30.527294, 46.291340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306385, 30.434401, 46.163975>,  <32.526962, 30.378664, 46.087555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306385, 30.434401, 46.163975>,  <31.938759, 30.527294, 46.291340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306385, 30.434401, 46.163975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009732, -0.821070, 0.570744,
		-0.393987, -0.521451, -0.756877,
		0.919064, -0.232232, -0.318416,
		32.582104, 30.364731, 46.068451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996204, 29.864037, 45.905491>,  <31.938759, 30.527294, 46.291340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996204, 29.864037, 45.905491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323097, 29.951084, 46.118946>,  <32.519234, 30.003313, 46.247021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323097, 29.951084, 46.118946>,  <31.996204, 29.864037, 45.905491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323097, 29.951084, 46.118946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016961, -0.916482, 0.399717,
		0.576057, -0.335713, -0.745289,
		0.817234, 0.217619, 0.533640,
		32.568268, 30.016369, 46.279037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462448, 29.262676, 45.921444>,  <31.996204, 29.864037, 45.905491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462448, 29.262676, 45.921444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536655, 29.480654, 46.248520>,  <32.581181, 29.611441, 46.444767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536655, 29.480654, 46.248520>,  <32.462448, 29.262676, 45.921444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536655, 29.480654, 46.248520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037321, -0.835444, 0.548307,
		0.981931, -0.071206, -0.175331,
		0.185522, 0.544943, 0.817691,
		32.592312, 29.644136, 46.493828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920853, 28.889118, 46.250469>,  <32.462448, 29.262676, 45.921444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920853, 28.889118, 46.250469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779755, 29.128801, 46.537945>,  <32.695095, 29.272612, 46.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779755, 29.128801, 46.537945>,  <32.920853, 28.889118, 46.250469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779755, 29.128801, 46.537945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040815, -0.757479, 0.651582,
		0.934828, 0.259178, 0.242743,
		-0.352749, 0.599209, 0.718691,
		32.673931, 29.308563, 46.753551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317646, 28.777719, 46.835159>,  <32.920853, 28.889118, 46.250469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317646, 28.777719, 46.835159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992218, 28.955217, 46.985458>,  <32.796959, 29.061716, 47.075638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992218, 28.955217, 46.985458>,  <33.317646, 28.777719, 46.835159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992218, 28.955217, 46.985458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095560, -0.739466, 0.666377,
		0.573555, 0.506241, 0.644015,
		-0.813574, 0.443746, 0.375748,
		32.748146, 29.088341, 47.098183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461643, 28.814199, 47.483658>,  <33.317646, 28.777719, 46.835159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461643, 28.814199, 47.483658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069546, 28.893282, 47.481476>,  <32.834286, 28.940731, 47.480167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069546, 28.893282, 47.481476>,  <33.461643, 28.814199, 47.483658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069546, 28.893282, 47.481476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092891, -0.435881, 0.895198,
		0.174611, 0.878021, 0.445635,
		-0.980246, 0.197706, -0.005451,
		32.775471, 28.952595, 47.479839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151360, 29.133270, 48.081146>,  <33.461643, 28.814199, 47.483658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151360, 29.133270, 48.081146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851036, 28.928408, 47.914303>,  <32.670841, 28.805490, 47.814198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851036, 28.928408, 47.914303>,  <33.151360, 29.133270, 48.081146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851036, 28.928408, 47.914303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231948, -0.386832, 0.892503,
		-0.618451, 0.766849, 0.171644,
		-0.750812, -0.512157, -0.417105,
		32.625793, 28.774761, 47.789173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803974, 29.057133, 48.642704>,  <33.151360, 29.133270, 48.081146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803974, 29.057133, 48.642704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570103, 28.830944, 48.410019>,  <32.429779, 28.695230, 48.270409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570103, 28.830944, 48.410019>,  <32.803974, 29.057133, 48.642704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570103, 28.830944, 48.410019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291884, -0.522400, 0.801188,
		-0.756934, 0.638233, 0.140387,
		-0.584683, -0.565470, -0.581713,
		32.394699, 28.661303, 48.235504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082775, 28.932219, 48.945305>,  <32.803974, 29.057133, 48.642704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082775, 28.932219, 48.945305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165619, 28.626379, 48.701176>,  <32.215324, 28.442875, 48.554699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165619, 28.626379, 48.701176>,  <32.082775, 28.932219, 48.945305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165619, 28.626379, 48.701176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141486, -0.640698, 0.754644,
		-0.968033, -0.069939, -0.240873,
		0.207106, -0.764601, -0.610321,
		32.227753, 28.396999, 48.518078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549810, 28.362225, 48.994949>,  <32.082775, 28.932219, 48.945305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549810, 28.362225, 48.994949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870436, 28.173004, 48.848679>,  <32.062809, 28.059471, 48.760914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870436, 28.173004, 48.848679>,  <31.549810, 28.362225, 48.994949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870436, 28.173004, 48.848679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210799, -0.795906, 0.567536,
		-0.559519, -0.377831, -0.737687,
		0.801562, -0.473051, -0.365678,
		32.110905, 28.031088, 48.738976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826611, 27.632357, 49.227417>,  <31.549810, 28.362225, 48.994949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826611, 27.632357, 49.227417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985083, 27.394157, 49.506966>,  <32.080166, 27.251238, 49.674694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985083, 27.394157, 49.506966>,  <31.826611, 27.632357, 49.227417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985083, 27.394157, 49.506966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613487, -0.394632, -0.684031,
		0.683137, 0.699749, 0.208986,
		0.396178, -0.595497, 0.698875,
		32.103935, 27.215508, 49.716629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498058, 27.716333, 49.224625>,  <31.826611, 27.632357, 49.227417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498058, 27.716333, 49.224625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407116, 27.346865, 49.348003>,  <32.352551, 27.125183, 49.422031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407116, 27.346865, 49.348003>,  <32.498058, 27.716333, 49.224625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407116, 27.346865, 49.348003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657755, -0.379225, -0.650804,
		0.718101, 0.054921, 0.693769,
		-0.227351, -0.923673, 0.308446,
		32.338909, 27.069763, 49.440536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044682, 27.253704, 49.395321>,  <32.498058, 27.716333, 49.224625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044682, 27.253704, 49.395321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761360, 27.013098, 49.247547>,  <32.591366, 26.868734, 49.158882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761360, 27.013098, 49.247547>,  <33.044682, 27.253704, 49.395321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761360, 27.013098, 49.247547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594950, -0.227028, -0.771033,
		0.379915, -0.765924, 0.518676,
		-0.708307, -0.601514, -0.369436,
		32.548866, 26.832644, 49.136715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374039, 26.589611, 49.334335>,  <33.044682, 27.253704, 49.395321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374039, 26.589611, 49.334335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078625, 26.643812, 49.070152>,  <32.901379, 26.676332, 48.911640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078625, 26.643812, 49.070152>,  <33.374039, 26.589611, 49.334335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078625, 26.643812, 49.070152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592813, -0.336119, -0.731845,
		-0.321160, -0.932021, 0.167907,
		-0.738532, 0.135502, -0.660462,
		32.857067, 26.684464, 48.872013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421555, 26.032019, 48.853531>,  <33.374039, 26.589611, 49.334335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421555, 26.032019, 48.853531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242096, 26.339558, 48.671280>,  <33.134422, 26.524080, 48.561932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242096, 26.339558, 48.671280>,  <33.421555, 26.032019, 48.853531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242096, 26.339558, 48.671280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603630, -0.115267, -0.788888,
		-0.659053, -0.628957, -0.412386,
		-0.448642, 0.768848, -0.455624,
		33.107502, 26.570211, 48.534592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002682, 25.679895, 48.310474>,  <33.421555, 26.032019, 48.853531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002682, 25.679895, 48.310474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092232, 26.049789, 48.187355>,  <33.145962, 26.271727, 48.113483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092232, 26.049789, 48.187355>,  <33.002682, 25.679895, 48.310474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092232, 26.049789, 48.187355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681862, -0.374267, -0.628480,
		-0.696378, -0.069174, -0.714334,
		0.223877, 0.924737, -0.307798,
		33.159393, 26.327211, 48.095016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293247, 25.371752, 48.524666>,  <33.002682, 25.679895, 48.310474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293247, 25.371752, 48.524666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989357, 25.426790, 48.270458>,  <31.807022, 25.459814, 48.117935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989357, 25.426790, 48.270458>,  <32.293247, 25.371752, 48.524666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989357, 25.426790, 48.270458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618270, 0.455555, -0.640478,
		0.201383, -0.879509, -0.431171,
		-0.759728, 0.137599, -0.635515,
		31.761438, 25.468069, 48.079803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409363, 25.146564, 47.868378>,  <32.293247, 25.371752, 48.524666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409363, 25.146564, 47.868378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149498, 25.445448, 47.812347>,  <31.993580, 25.624779, 47.778728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149498, 25.445448, 47.812347>,  <32.409363, 25.146564, 47.868378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149498, 25.445448, 47.812347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587278, 0.376269, -0.716607,
		-0.482748, -0.547816, -0.683266,
		-0.649660, 0.747208, -0.140077,
		31.954599, 25.669611, 47.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232662, 25.193422, 47.126915>,  <32.409363, 25.146564, 47.868378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232662, 25.193422, 47.126915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133858, 25.546339, 47.287189>,  <32.074577, 25.758089, 47.383354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133858, 25.546339, 47.287189>,  <32.232662, 25.193422, 47.126915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133858, 25.546339, 47.287189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575838, 0.466217, -0.671604,
		-0.779357, 0.064838, -0.623217,
		-0.247009, 0.882291, 0.400686,
		32.059753, 25.811026, 47.407394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944796, 25.547333, 46.610275>,  <32.232662, 25.193422, 47.126915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944796, 25.547333, 46.610275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104057, 25.808113, 46.868401>,  <32.199615, 25.964582, 47.023277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104057, 25.808113, 46.868401>,  <31.944796, 25.547333, 46.610275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104057, 25.808113, 46.868401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388555, 0.517391, -0.762451,
		-0.830961, 0.554315, -0.047317,
		0.398156, 0.651952, 0.645314,
		32.223503, 26.003698, 47.061996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667965, 26.313616, 46.579407>,  <31.944796, 25.547333, 46.610275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667965, 26.313616, 46.579407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028481, 26.362694, 46.745602>,  <32.244789, 26.392141, 46.845318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028481, 26.362694, 46.745602>,  <31.667965, 26.313616, 46.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028481, 26.362694, 46.745602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251343, 0.633052, -0.732170,
		-0.352858, 0.764324, 0.539722,
		0.901287, 0.122697, 0.415485,
		32.298866, 26.399504, 46.870247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774483, 26.954103, 46.542381>,  <31.667965, 26.313616, 46.579407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774483, 26.954103, 46.542381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144806, 26.817904, 46.608036>,  <32.367001, 26.736183, 46.647430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144806, 26.817904, 46.608036>,  <31.774483, 26.954103, 46.542381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144806, 26.817904, 46.608036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325065, 0.495587, -0.805435,
		0.192905, 0.799034, 0.569502,
		0.925808, -0.340498, 0.164137,
		32.422546, 26.715754, 46.657276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166866, 27.444004, 46.223946>,  <31.774483, 26.954103, 46.542381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166866, 27.444004, 46.223946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435612, 27.159773, 46.307545>,  <32.596859, 26.989233, 46.357704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435612, 27.159773, 46.307545>,  <32.166866, 27.444004, 46.223946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435612, 27.159773, 46.307545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551744, 0.291897, -0.781265,
		0.494145, 0.640214, 0.588172,
		0.671862, -0.710579, 0.208995,
		32.637169, 26.946600, 46.370243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852539, 27.759602, 46.239216>,  <32.166866, 27.444004, 46.223946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852539, 27.759602, 46.239216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917080, 27.372803, 46.160339>,  <32.955803, 27.140724, 46.113014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917080, 27.372803, 46.160339>,  <32.852539, 27.759602, 46.239216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917080, 27.372803, 46.160339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511572, 0.252823, -0.821203,
		0.843956, 0.031620, 0.535481,
		0.161348, -0.966996, -0.197195,
		32.965485, 27.082705, 46.101181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487049, 27.794575, 46.043766>,  <32.852539, 27.759602, 46.239216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487049, 27.794575, 46.043766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361168, 27.442230, 45.902321>,  <33.285637, 27.230824, 45.817455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361168, 27.442230, 45.902321>,  <33.487049, 27.794575, 46.043766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361168, 27.442230, 45.902321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620977, 0.090690, -0.778565,
		0.717878, -0.464603, 0.518455,
		-0.314705, -0.880863, -0.353612,
		33.266758, 27.177971, 45.796238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104069, 27.295225, 45.859047>,  <33.487049, 27.794575, 46.043766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104069, 27.295225, 45.859047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775654, 27.191225, 45.655758>,  <33.578606, 27.128824, 45.533783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775654, 27.191225, 45.655758>,  <34.104069, 27.295225, 45.859047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775654, 27.191225, 45.655758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471088, 0.194266, -0.860429,
		0.322447, -0.945864, -0.037014,
		-0.821039, -0.260005, -0.508225,
		33.529343, 27.113224, 45.503292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386688, 26.950056, 45.349529>,  <34.104069, 27.295225, 45.859047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386688, 26.950056, 45.349529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036415, 27.073860, 45.201263>,  <33.826252, 27.148142, 45.112305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036415, 27.073860, 45.201263>,  <34.386688, 26.950056, 45.349529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036415, 27.073860, 45.201263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453216, 0.261837, -0.852078,
		-0.166673, -0.914137, -0.369560,
		-0.875680, 0.309509, -0.370660,
		33.773712, 27.166714, 45.090065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394962, 26.689625, 44.706772>,  <34.386688, 26.950056, 45.349529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394962, 26.689625, 44.706772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109863, 26.968964, 44.680542>,  <33.938805, 27.136566, 44.664803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109863, 26.968964, 44.680542>,  <34.394962, 26.689625, 44.706772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109863, 26.968964, 44.680542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422396, 0.352704, -0.834974,
		-0.559972, -0.622826, -0.546368,
		-0.712750, 0.698346, -0.065574,
		33.896038, 27.178467, 44.660870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062054, 26.690767, 43.992348>,  <34.394962, 26.689625, 44.706772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062054, 26.690767, 43.992348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019863, 27.064743, 44.127853>,  <33.994549, 27.289129, 44.209156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019863, 27.064743, 44.127853>,  <34.062054, 26.690767, 43.992348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019863, 27.064743, 44.127853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446632, 0.348911, -0.823882,
		-0.888479, 0.064406, -0.454375,
		-0.105473, 0.934940, 0.338766,
		33.988220, 27.345224, 44.229485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043182, 27.050234, 43.368507>,  <34.062054, 26.690767, 43.992348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043182, 27.050234, 43.368507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082729, 27.338581, 43.642902>,  <34.106457, 27.511589, 43.807537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082729, 27.338581, 43.642902>,  <34.043182, 27.050234, 43.368507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082729, 27.338581, 43.642902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363100, 0.615697, -0.699339,
		-0.926490, 0.318223, -0.200874,
		0.098869, 0.720868, 0.685984,
		34.112389, 27.554842, 43.848698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832581, 27.667433, 42.957863>,  <34.043182, 27.050234, 43.368507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832581, 27.667433, 42.957863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025017, 27.807854, 43.279190>,  <34.140480, 27.892107, 43.471985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025017, 27.807854, 43.279190>,  <33.832581, 27.667433, 42.957863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025017, 27.807854, 43.279190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418383, 0.713300, -0.562280,
		-0.770394, 0.606600, 0.196287,
		0.481091, 0.351054, 0.803313,
		34.169346, 27.913170, 43.520184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534515, 28.040226, 42.344761>,  <33.832581, 27.667433, 42.957863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534515, 28.040226, 42.344761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440613, 27.685604, 42.504215>,  <33.384274, 27.472832, 42.599888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440613, 27.685604, 42.504215>,  <33.534515, 28.040226, 42.344761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440613, 27.685604, 42.504215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241207, -0.344145, -0.907405,
		0.941653, -0.309170, -0.133054,
		-0.234753, -0.886554, 0.398639,
		33.370186, 27.419638, 42.623806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604244, 28.394905, 42.996799>,  <33.534515, 28.040226, 42.344761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604244, 28.394905, 42.996799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935738, 28.368216, 43.219059>,  <34.134636, 28.352201, 43.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935738, 28.368216, 43.219059>,  <33.604244, 28.394905, 42.996799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935738, 28.368216, 43.219059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379259, 0.797068, -0.469941,
		-0.411534, 0.600192, 0.685864,
		0.828736, -0.066724, 0.555649,
		34.184357, 28.348198, 43.385754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791794, 29.054399, 43.263382>,  <33.604244, 28.394905, 42.996799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791794, 29.054399, 43.263382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139183, 28.858255, 43.234272>,  <34.347618, 28.740568, 43.216808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139183, 28.858255, 43.234272>,  <33.791794, 29.054399, 43.263382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139183, 28.858255, 43.234272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438217, 0.828028, -0.349765,
		0.231769, 0.271871, 0.934007,
		0.868475, -0.490362, -0.072773,
		34.399727, 28.711147, 43.212440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309139, 29.526220, 43.537575>,  <33.791794, 29.054399, 43.263382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309139, 29.526220, 43.537575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473644, 29.270697, 43.277489>,  <34.572346, 29.117382, 43.121437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473644, 29.270697, 43.277489>,  <34.309139, 29.526220, 43.537575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473644, 29.270697, 43.277489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255980, 0.765571, -0.590232,
		0.874836, 0.076296, 0.478373,
		0.411261, -0.638811, -0.650219,
		34.597023, 29.079054, 43.082424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037319, 29.733793, 43.360271>,  <34.309139, 29.526220, 43.537575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037319, 29.733793, 43.360271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881428, 29.534235, 43.050636>,  <34.787891, 29.414499, 42.864853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881428, 29.534235, 43.050636>,  <35.037319, 29.733793, 43.360271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881428, 29.534235, 43.050636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377197, 0.680339, -0.628380,
		0.840140, -0.536882, -0.076964,
		-0.389728, -0.498896, -0.774090,
		34.764511, 29.384565, 42.818409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450386, 29.958849, 42.776413>,  <35.037319, 29.733793, 43.360271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450386, 29.958849, 42.776413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183254, 29.726732, 42.589970>,  <35.022976, 29.587461, 42.478104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183254, 29.726732, 42.589970>,  <35.450386, 29.958849, 42.776413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183254, 29.726732, 42.589970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280821, 0.383504, -0.879809,
		0.689302, -0.718459, -0.093159,
		-0.667834, -0.580293, -0.466109,
		34.982903, 29.552645, 42.450138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898586, 29.598923, 42.264618>,  <35.450386, 29.958849, 42.776413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898586, 29.598923, 42.264618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509251, 29.627069, 42.177292>,  <35.275650, 29.643957, 42.124897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509251, 29.627069, 42.177292>,  <35.898586, 29.598923, 42.264618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509251, 29.627069, 42.177292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218910, 0.569153, -0.792555,
		0.068481, -0.819215, -0.569383,
		-0.973339, 0.070369, -0.218310,
		35.217247, 29.648180, 42.111797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858868, 29.599203, 41.506401>,  <35.898586, 29.598923, 42.264618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858868, 29.599203, 41.506401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513779, 29.763365, 41.624573>,  <35.306725, 29.861862, 41.695477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513779, 29.763365, 41.624573>,  <35.858868, 29.599203, 41.506401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513779, 29.763365, 41.624573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056876, 0.659268, -0.749753,
		-0.502467, -0.630027, -0.592108,
		-0.862723, 0.410403, 0.295427,
		35.254963, 29.886486, 41.713200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634583, 29.844912, 40.942547>,  <35.858868, 29.599203, 41.506401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634583, 29.844912, 40.942547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420868, 30.050793, 41.210762>,  <35.292641, 30.174322, 41.371693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420868, 30.050793, 41.210762>,  <35.634583, 29.844912, 40.942547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420868, 30.050793, 41.210762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017351, 0.799761, -0.600067,
		-0.845128, -0.308971, -0.436229,
		-0.534282, 0.514703, 0.670540,
		35.260582, 30.205204, 41.411922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025524, 30.065033, 40.619884>,  <35.634583, 29.844912, 40.942547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025524, 30.065033, 40.619884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037197, 30.322645, 40.925659>,  <35.044201, 30.477213, 41.109123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037197, 30.322645, 40.925659>,  <35.025524, 30.065033, 40.619884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037197, 30.322645, 40.925659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213662, 0.751111, -0.624645,
		-0.976472, -0.145104, 0.159525,
		0.029183, 0.644032, 0.764442,
		35.045952, 30.515856, 41.154991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462883, 30.452833, 40.511238>,  <35.025524, 30.065033, 40.619884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462883, 30.452833, 40.511238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710686, 30.661451, 40.745911>,  <34.859367, 30.786623, 40.886715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710686, 30.661451, 40.745911>,  <34.462883, 30.452833, 40.511238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710686, 30.661451, 40.745911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110526, 0.797886, -0.592589,
		-0.777170, 0.302270, 0.551942,
		0.619509, 0.521546, 0.586685,
		34.896538, 30.817915, 40.921917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093472, 31.109554, 40.632504>,  <34.462883, 30.452833, 40.511238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093472, 31.109554, 40.632504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484238, 31.167299, 40.695480>,  <34.718697, 31.201946, 40.733269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484238, 31.167299, 40.695480>,  <34.093472, 31.109554, 40.632504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484238, 31.167299, 40.695480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040594, 0.849103, -0.526664,
		-0.209717, 0.508117, 0.835366,
		0.976919, 0.144361, 0.157445,
		34.777313, 31.210608, 40.742714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038342, 31.757088, 40.748329>,  <34.093472, 31.109554, 40.632504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038342, 31.757088, 40.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419529, 31.677067, 40.657269>,  <34.648243, 31.629053, 40.602631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419529, 31.677067, 40.657269>,  <34.038342, 31.757088, 40.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419529, 31.677067, 40.657269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026673, 0.803619, -0.594546,
		0.301886, 0.560514, 0.771161,
		0.952971, -0.200054, -0.227651,
		34.705421, 31.617050, 40.588974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336849, 32.443424, 40.707012>,  <34.038342, 31.757088, 40.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336849, 32.443424, 40.707012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583794, 32.195278, 40.513512>,  <34.731960, 32.046391, 40.397411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583794, 32.195278, 40.513512>,  <34.336849, 32.443424, 40.707012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583794, 32.195278, 40.513512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100931, 0.672307, -0.733359,
		0.780182, 0.403918, 0.477667,
		0.617356, -0.620366, -0.483754,
		34.769001, 32.009167, 40.368385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980103, 32.834976, 40.458855>,  <34.336849, 32.443424, 40.707012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980103, 32.834976, 40.458855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963684, 32.514389, 40.220200>,  <34.953835, 32.322037, 40.077007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963684, 32.514389, 40.220200>,  <34.980103, 32.834976, 40.458855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963684, 32.514389, 40.220200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329061, 0.552981, -0.765462,
		0.943416, -0.227745, 0.241034,
		-0.041043, -0.801464, -0.596633,
		34.951370, 32.273949, 40.041210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511177, 32.957760, 40.080387>,  <34.980103, 32.834976, 40.458855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511177, 32.957760, 40.080387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284031, 32.701618, 39.873512>,  <35.147743, 32.547935, 39.749386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284031, 32.701618, 39.873512>,  <35.511177, 32.957760, 40.080387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284031, 32.701618, 39.873512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204352, 0.498978, -0.842177,
		0.797353, -0.583929, -0.152494,
		-0.567863, -0.640350, -0.517189,
		35.113670, 32.509514, 39.718357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900448, 32.880779, 39.438080>,  <35.511177, 32.957760, 40.080387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900448, 32.880779, 39.438080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515663, 32.783199, 39.388897>,  <35.284794, 32.724651, 39.359386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515663, 32.783199, 39.388897>,  <35.900448, 32.880779, 39.438080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515663, 32.783199, 39.388897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049756, 0.599015, -0.799190,
		0.268612, -0.762674, -0.588368,
		-0.961962, -0.243947, -0.122955,
		35.227074, 32.710014, 39.352009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723907, 32.711971, 38.586082>,  <35.900448, 32.880779, 39.438080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723907, 32.711971, 38.586082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369606, 32.782181, 38.757954>,  <35.157024, 32.824306, 38.861076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369606, 32.782181, 38.757954>,  <35.723907, 32.711971, 38.586082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369606, 32.782181, 38.757954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250765, 0.598027, -0.761236,
		-0.390576, -0.782019, -0.485691,
		-0.885758, 0.175526, 0.429679,
		35.103878, 32.834839, 38.886856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192791, 32.442036, 38.195442>,  <35.723907, 32.711971, 38.586082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192791, 32.442036, 38.195442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026638, 32.736961, 38.408543>,  <34.926945, 32.913918, 38.536404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026638, 32.736961, 38.408543>,  <35.192791, 32.442036, 38.195442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026638, 32.736961, 38.408543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166696, 0.514048, -0.841408,
		-0.894242, -0.438314, -0.090620,
		-0.415384, 0.737316, 0.532748,
		34.902023, 32.958157, 38.568367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487988, 32.552990, 37.846672>,  <35.192791, 32.442036, 38.195442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487988, 32.552990, 37.846672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569832, 32.882072, 38.058815>,  <34.618938, 33.079521, 38.186100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569832, 32.882072, 38.058815>,  <34.487988, 32.552990, 37.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569832, 32.882072, 38.058815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101810, 0.556773, -0.824402,
		-0.973534, 0.114687, 0.197683,
		0.204613, 0.822709, 0.530361,
		34.631214, 33.128883, 38.217922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990013, 33.096478, 37.605289>,  <34.487988, 32.552990, 37.846672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990013, 33.096478, 37.605289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293964, 33.289085, 37.779976>,  <34.476337, 33.404652, 37.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293964, 33.289085, 37.779976>,  <33.990013, 33.096478, 37.605289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293964, 33.289085, 37.779976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082807, 0.738027, -0.669671,
		-0.644767, 0.472707, 0.600686,
		0.759881, 0.481523, 0.436712,
		34.521927, 33.433540, 37.910988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842934, 33.762703, 37.577320>,  <33.990013, 33.096478, 37.605289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842934, 33.762703, 37.577320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232845, 33.784283, 37.663937>,  <34.466793, 33.797230, 37.715904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232845, 33.784283, 37.663937>,  <33.842934, 33.762703, 37.577320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232845, 33.784283, 37.663937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108096, 0.734751, -0.669668,
		-0.195228, 0.676188, 0.710391,
		0.974783, 0.053947, 0.216537,
		34.525280, 33.800468, 37.728897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978428, 34.466862, 37.675705>,  <33.842934, 33.762703, 37.577320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978428, 34.466862, 37.675705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348381, 34.327869, 37.613937>,  <34.570354, 34.244473, 37.576878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348381, 34.327869, 37.613937>,  <33.978428, 34.466862, 37.675705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348381, 34.327869, 37.613937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230164, 0.834850, -0.500050,
		0.302676, 0.426946, 0.852118,
		0.924885, -0.347480, -0.154422,
		34.625847, 34.223625, 37.567612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402363, 35.100159, 37.684883>,  <33.978428, 34.466862, 37.675705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402363, 35.100159, 37.684883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592594, 34.809814, 37.486107>,  <34.706734, 34.635609, 37.366840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592594, 34.809814, 37.486107>,  <34.402363, 35.100159, 37.684883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592594, 34.809814, 37.486107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103130, 0.607029, -0.787959,
		0.873607, 0.323486, 0.363548,
		0.475578, -0.725859, -0.496944,
		34.735268, 34.592056, 37.337025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966774, 35.483303, 37.571941>,  <34.402363, 35.100159, 37.684883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966774, 35.483303, 37.571941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974590, 35.193325, 37.296532>,  <34.979279, 35.019337, 37.131287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974590, 35.193325, 37.296532>,  <34.966774, 35.483303, 37.571941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974590, 35.193325, 37.296532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592898, 0.562907, -0.575854,
		0.805041, -0.396974, 0.440819,
		0.019541, -0.724946, -0.688528,
		34.980453, 34.975842, 37.089973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618404, 35.552414, 37.286213>,  <34.966774, 35.483303, 37.571941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618404, 35.552414, 37.286213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414150, 35.329197, 37.024578>,  <35.291599, 35.195267, 36.867596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414150, 35.329197, 37.024578>,  <35.618404, 35.552414, 37.286213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414150, 35.329197, 37.024578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483711, 0.442487, -0.755135,
		0.710828, -0.701990, 0.043984,
		-0.510635, -0.558047, -0.654091,
		35.260960, 35.161781, 36.828350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082966, 35.091850, 36.983936>,  <35.618404, 35.552414, 37.286213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082966, 35.091850, 36.983936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778030, 35.159355, 36.734020>,  <35.595070, 35.199860, 36.584072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778030, 35.159355, 36.734020>,  <36.082966, 35.091850, 36.983936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778030, 35.159355, 36.734020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646382, 0.246436, -0.722121,
		0.032103, -0.954352, -0.296953,
		-0.762338, 0.168763, -0.624788,
		35.549328, 35.209984, 36.546585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117077, 34.694397, 36.453087>,  <36.082966, 35.091850, 36.983936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117077, 34.694397, 36.453087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934006, 35.027813, 36.329311>,  <35.824165, 35.227863, 36.255047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934006, 35.027813, 36.329311>,  <36.117077, 34.694397, 36.453087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934006, 35.027813, 36.329311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743908, 0.168374, -0.646724,
		-0.486966, -0.526182, -0.697134,
		-0.457674, 0.833536, -0.309439,
		35.796703, 35.277874, 36.236481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582935, 35.091583, 35.918835>,  <36.117077, 34.694397, 36.453087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582935, 35.091583, 35.918835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982624, 35.098396, 35.933083>,  <37.222439, 35.102486, 35.941631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982624, 35.098396, 35.933083>,  <36.582935, 35.091583, 35.918835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982624, 35.098396, 35.933083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021164, -0.530441, 0.847458,
		0.033330, -0.847551, -0.529667,
		0.999220, 0.017035, 0.035617,
		37.282391, 35.103508, 35.943768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746292, 34.462337, 36.107548>,  <36.582935, 35.091583, 35.918835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746292, 34.462337, 36.107548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091541, 34.644196, 36.195473>,  <37.298691, 34.753311, 36.248226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091541, 34.644196, 36.195473>,  <36.746292, 34.462337, 36.107548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091541, 34.644196, 36.195473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159366, -0.658257, 0.735731,
		0.479187, -0.599996, -0.640612,
		0.863123, 0.454644, 0.219810,
		37.350479, 34.780590, 36.261417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152180, 33.974113, 36.093872>,  <36.746292, 34.462337, 36.107548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152180, 33.974113, 36.093872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311840, 34.249123, 36.336521>,  <37.407635, 34.414127, 36.482113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311840, 34.249123, 36.336521>,  <37.152180, 33.974113, 36.093872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311840, 34.249123, 36.336521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100919, -0.690539, 0.716220,
		0.911315, -0.224658, -0.345012,
		0.399149, 0.687521, 0.606626,
		37.431583, 34.455379, 36.518509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808109, 33.584038, 36.417286>,  <37.152180, 33.974113, 36.093872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808109, 33.584038, 36.417286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735020, 33.894226, 36.659031>,  <37.691166, 34.080341, 36.804077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735020, 33.894226, 36.659031>,  <37.808109, 33.584038, 36.417286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735020, 33.894226, 36.659031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299748, -0.541507, 0.785444,
		0.936357, 0.324674, -0.133502,
		-0.182720, 0.775473, 0.604364,
		37.680202, 34.126869, 36.840340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389980, 33.629406, 36.833134>,  <37.808109, 33.584038, 36.417286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389980, 33.629406, 36.833134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071014, 33.792671, 37.010906>,  <37.879635, 33.890633, 37.117569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071014, 33.792671, 37.010906>,  <38.389980, 33.629406, 36.833134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071014, 33.792671, 37.010906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245562, -0.453276, 0.856879,
		0.551201, 0.792428, 0.261221,
		-0.797419, 0.408166, 0.444436,
		37.831787, 33.915119, 37.144238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592670, 33.756077, 37.512188>,  <38.389980, 33.629406, 36.833134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592670, 33.756077, 37.512188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193092, 33.764553, 37.528465>,  <37.953346, 33.769638, 37.538231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193092, 33.764553, 37.528465>,  <38.592670, 33.756077, 37.512188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193092, 33.764553, 37.528465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023830, -0.518188, 0.854935,
		0.039205, 0.855004, 0.517137,
		-0.998947, 0.021195, 0.040690,
		37.893410, 33.770912, 37.540672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404049, 33.654957, 38.248524>,  <38.592670, 33.756077, 37.512188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404049, 33.654957, 38.248524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041546, 33.594486, 38.090614>,  <37.824043, 33.558205, 37.995869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041546, 33.594486, 38.090614>,  <38.404049, 33.654957, 38.248524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041546, 33.594486, 38.090614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177842, -0.710863, 0.680475,
		-0.383503, 0.686892, 0.617338,
		-0.906255, -0.151175, -0.394776,
		37.769669, 33.549133, 37.972183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968349, 33.658329, 38.840622>,  <38.404049, 33.654957, 38.248524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968349, 33.658329, 38.840622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793007, 33.452965, 38.545528>,  <37.687801, 33.329746, 38.368473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793007, 33.452965, 38.545528>,  <37.968349, 33.658329, 38.840622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793007, 33.452965, 38.545528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207796, -0.740673, 0.638925,
		-0.874451, 0.433375, 0.217994,
		-0.438356, -0.513410, -0.737736,
		37.661499, 33.298943, 38.324207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386925, 33.275093, 39.155281>,  <37.968349, 33.658329, 38.840622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386925, 33.275093, 39.155281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433144, 33.087852, 38.804844>,  <37.460873, 32.975510, 38.594582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433144, 33.087852, 38.804844>,  <37.386925, 33.275093, 39.155281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433144, 33.087852, 38.804844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136587, -0.881107, 0.452764,
		-0.983867, 0.067347, -0.165744,
		0.115546, -0.468098, -0.876090,
		37.467808, 32.947422, 38.542015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922665, 32.703682, 39.171043>,  <37.386925, 33.275093, 39.155281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922665, 32.703682, 39.171043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210835, 32.587570, 38.919102>,  <37.383736, 32.517902, 38.767937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210835, 32.587570, 38.919102>,  <36.922665, 32.703682, 39.171043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210835, 32.587570, 38.919102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074697, -0.935384, 0.345656,
		-0.689495, -0.201972, -0.695560,
		0.720429, -0.290284, -0.629856,
		37.426964, 32.500484, 38.730145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683487, 32.103294, 39.049984>,  <36.922665, 32.703682, 39.171043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683487, 32.103294, 39.049984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051281, 32.067207, 38.896927>,  <37.271957, 32.045555, 38.805092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051281, 32.067207, 38.896927>,  <36.683487, 32.103294, 39.049984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051281, 32.067207, 38.896927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051062, -0.937660, 0.343783,
		-0.389805, -0.335640, -0.857553,
		0.919480, -0.090220, -0.382643,
		37.327126, 32.040142, 38.782135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692856, 31.402235, 38.851284>,  <36.683487, 32.103294, 39.049984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692856, 31.402235, 38.851284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072002, 31.528448, 38.833481>,  <37.299492, 31.604176, 38.822800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072002, 31.528448, 38.833481>,  <36.692856, 31.402235, 38.851284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072002, 31.528448, 38.833481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314727, -0.905148, 0.285751,
		0.049881, -0.284861, -0.957270,
		0.947871, 0.315533, -0.044504,
		37.356365, 31.623108, 38.820129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125095, 30.874994, 38.632050>,  <36.692856, 31.402235, 38.851284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125095, 30.874994, 38.632050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387321, 31.111902, 38.819431>,  <37.544655, 31.254047, 38.931862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387321, 31.111902, 38.819431>,  <37.125095, 30.874994, 38.632050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387321, 31.111902, 38.819431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382798, -0.795388, 0.469919,
		0.650924, -0.128737, -0.748147,
		0.655563, 0.592271, 0.468457,
		37.583992, 31.289583, 38.959969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694416, 30.462946, 38.515572>,  <37.125095, 30.874994, 38.632050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694416, 30.462946, 38.515572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768349, 30.697039, 38.831379>,  <37.812710, 30.837494, 39.020863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768349, 30.697039, 38.831379>,  <37.694416, 30.462946, 38.515572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768349, 30.697039, 38.831379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265243, -0.803254, 0.533319,
		0.946299, 0.110838, -0.303699,
		0.184835, 0.585234, 0.789517,
		37.823799, 30.872608, 39.068233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338882, 30.120920, 38.878120>,  <37.694416, 30.462946, 38.515572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338882, 30.120920, 38.878120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164490, 30.361349, 39.146042>,  <38.059853, 30.505606, 39.306793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164490, 30.361349, 39.146042>,  <38.338882, 30.120920, 38.878120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164490, 30.361349, 39.146042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183342, -0.669331, 0.719987,
		0.881083, 0.436703, 0.181614,
		-0.435980, 0.601071, 0.669803,
		38.033695, 30.541670, 39.346981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780933, 30.077471, 39.531757>,  <38.338882, 30.120920, 38.878120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780933, 30.077471, 39.531757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413723, 30.191254, 39.642254>,  <38.193398, 30.259523, 39.708549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413723, 30.191254, 39.642254>,  <38.780933, 30.077471, 39.531757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413723, 30.191254, 39.642254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002126, -0.693127, 0.720812,
		0.396508, 0.662314, 0.635706,
		-0.918029, 0.284456, 0.276238,
		38.138313, 30.276590, 39.725124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739441, 30.191715, 40.174099>,  <38.780933, 30.077471, 39.531757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739441, 30.191715, 40.174099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349495, 30.129364, 40.110416>,  <38.115528, 30.091953, 40.072208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349495, 30.129364, 40.110416>,  <38.739441, 30.191715, 40.174099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349495, 30.129364, 40.110416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054162, -0.527321, 0.847938,
		-0.216127, 0.835245, 0.505623,
		-0.974862, -0.155876, -0.159207,
		38.057037, 30.082602, 40.062653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491230, 30.165201, 40.851791>,  <38.739441, 30.191715, 40.174099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491230, 30.165201, 40.851791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191967, 29.990862, 40.651672>,  <38.012409, 29.886259, 40.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191967, 29.990862, 40.651672>,  <38.491230, 30.165201, 40.851791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191967, 29.990862, 40.651672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218253, -0.550395, 0.805872,
		-0.626599, 0.712111, 0.316657,
		-0.748158, -0.435847, -0.500298,
		37.967518, 29.860107, 40.501583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870659, 30.217943, 41.314365>,  <38.491230, 30.165201, 40.851791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870659, 30.217943, 41.314365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810513, 29.924379, 41.049408>,  <37.774426, 29.748241, 40.890434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810513, 29.924379, 41.049408>,  <37.870659, 30.217943, 41.314365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810513, 29.924379, 41.049408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397392, -0.568636, 0.720231,
		-0.905246, 0.371528, -0.206147,
		-0.150364, -0.733907, -0.662398,
		37.765404, 29.704206, 40.850689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187870, 30.094187, 41.298206>,  <37.870659, 30.217943, 41.314365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187870, 30.094187, 41.298206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351761, 29.749781, 41.177692>,  <37.450096, 29.543137, 41.105385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351761, 29.749781, 41.177692>,  <37.187870, 30.094187, 41.298206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351761, 29.749781, 41.177692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526181, -0.492874, 0.692971,
		-0.745156, -0.125399, -0.654995,
		0.409728, -0.861017, -0.301285,
		37.474678, 29.491476, 41.087307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608700, 29.597214, 41.275665>,  <37.187870, 30.094187, 41.298206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608700, 29.597214, 41.275665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944588, 29.380028, 41.278881>,  <37.146118, 29.249716, 41.280811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944588, 29.380028, 41.278881>,  <36.608700, 29.597214, 41.275665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944588, 29.380028, 41.278881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453426, -0.692938, 0.560572,
		-0.298800, -0.474367, -0.828067,
		0.839717, -0.542966, 0.008041,
		37.196503, 29.217138, 41.281292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331299, 28.837433, 41.272808>,  <36.608700, 29.597214, 41.275665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331299, 28.837433, 41.272808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712353, 28.836218, 41.394451>,  <36.940983, 28.835489, 41.467438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712353, 28.836218, 41.394451>,  <36.331299, 28.837433, 41.272808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712353, 28.836218, 41.394451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219169, -0.700121, 0.679555,
		0.210852, -0.714018, -0.667623,
		0.952631, -0.003037, 0.304112,
		36.998142, 28.835306, 41.485683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601383, 28.131449, 41.308228>,  <36.331299, 28.837433, 41.272808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601383, 28.131449, 41.308228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820576, 28.356533, 41.555801>,  <36.952091, 28.491583, 41.704346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820576, 28.356533, 41.555801>,  <36.601383, 28.131449, 41.308228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820576, 28.356533, 41.555801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223079, -0.614810, 0.756468,
		0.806198, -0.552598, -0.211374,
		0.547978, 0.562710, 0.618932,
		36.984970, 28.525347, 41.741482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939003, 27.633760, 41.594563>,  <36.601383, 28.131449, 41.308228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939003, 27.633760, 41.594563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019455, 27.944626, 41.833080>,  <37.067726, 28.131145, 41.976189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019455, 27.944626, 41.833080>,  <36.939003, 27.633760, 41.594563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019455, 27.944626, 41.833080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090505, -0.591385, 0.801295,
		0.975374, -0.215134, -0.048610,
		0.201133, 0.777162, 0.596292,
		37.079796, 28.177774, 42.011967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498337, 27.353500, 42.049789>,  <36.939003, 27.633760, 41.594563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498337, 27.353500, 42.049789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344414, 27.675158, 42.231018>,  <37.252060, 27.868153, 42.339756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344414, 27.675158, 42.231018>,  <37.498337, 27.353500, 42.049789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344414, 27.675158, 42.231018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090176, -0.521280, 0.848608,
		0.918582, 0.285694, 0.273106,
		-0.384807, 0.804143, 0.453075,
		37.228973, 27.916401, 42.366940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947578, 27.491058, 42.597969>,  <37.498337, 27.353500, 42.049789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947578, 27.491058, 42.597969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577499, 27.626976, 42.665554>,  <37.355453, 27.708527, 42.706104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577499, 27.626976, 42.665554>,  <37.947578, 27.491058, 42.597969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577499, 27.626976, 42.665554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025315, -0.388986, 0.920896,
		0.378641, 0.856288, 0.351287,
		-0.925197, 0.339796, 0.168963,
		37.299942, 27.728914, 42.716244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857903, 27.721521, 43.252213>,  <37.947578, 27.491058, 42.597969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857903, 27.721521, 43.252213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473179, 27.643820, 43.175068>,  <37.242344, 27.597198, 43.128780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473179, 27.643820, 43.175068>,  <37.857903, 27.721521, 43.252213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473179, 27.643820, 43.175068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096561, -0.418501, 0.903068,
		-0.256139, 0.887199, 0.383759,
		-0.961805, -0.194255, -0.192863,
		37.184639, 27.585543, 43.117210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556114, 27.848303, 43.847630>,  <37.857903, 27.721521, 43.252213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556114, 27.848303, 43.847630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266251, 27.630333, 43.678905>,  <37.092335, 27.499550, 43.577671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266251, 27.630333, 43.678905>,  <37.556114, 27.848303, 43.847630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266251, 27.630333, 43.678905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096007, -0.526308, 0.844856,
		-0.682389, 0.652728, 0.329076,
		-0.724657, -0.544927, -0.421814,
		37.048855, 27.466854, 43.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992172, 27.841017, 44.317997>,  <37.556114, 27.848303, 43.847630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992172, 27.841017, 44.317997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952015, 27.523504, 44.078053>,  <36.927921, 27.332996, 43.934086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952015, 27.523504, 44.078053>,  <36.992172, 27.841017, 44.317997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952015, 27.523504, 44.078053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047491, -0.598394, 0.799793,
		-0.993814, 0.108782, 0.022378,
		-0.100394, -0.793783, -0.599858,
		36.921898, 27.285370, 43.898094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413120, 27.502464, 44.606190>,  <36.992172, 27.841017, 44.317997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413120, 27.502464, 44.606190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533390, 27.219658, 44.350151>,  <36.605553, 27.049974, 44.196529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533390, 27.219658, 44.350151>,  <36.413120, 27.502464, 44.606190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533390, 27.219658, 44.350151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379483, -0.704425, 0.599816,
		-0.874978, 0.062554, -0.480105,
		0.300677, -0.707017, -0.640094,
		36.623592, 27.007553, 44.158123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890961, 27.067509, 44.382801>,  <36.413120, 27.502464, 44.606190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890961, 27.067509, 44.382801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228447, 26.857273, 44.339165>,  <36.430939, 26.731133, 44.312981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228447, 26.857273, 44.339165>,  <35.890961, 27.067509, 44.382801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228447, 26.857273, 44.339165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349187, -0.691745, 0.632105,
		-0.407693, -0.495222, -0.767165,
		0.843715, -0.525589, -0.109094,
		36.481560, 26.699596, 44.306435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715134, 26.435371, 44.527798>,  <35.890961, 27.067509, 44.382801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715134, 26.435371, 44.527798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109142, 26.379663, 44.568470>,  <36.345547, 26.346239, 44.592873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109142, 26.379663, 44.568470>,  <35.715134, 26.435371, 44.527798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109142, 26.379663, 44.568470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161224, -0.534660, 0.829546,
		-0.061167, -0.833513, -0.549104,
		0.985020, -0.139270, 0.101678,
		36.404648, 26.337883, 44.598972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744732, 25.783264, 44.856567>,  <35.715134, 26.435371, 44.527798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744732, 25.783264, 44.856567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108135, 25.942274, 44.908081>,  <36.326176, 26.037680, 44.938988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108135, 25.942274, 44.908081>,  <35.744732, 25.783264, 44.856567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108135, 25.942274, 44.908081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064159, -0.437233, 0.897057,
		0.412911, -0.806722, -0.422735,
		0.908509, 0.397527, 0.128780,
		36.380688, 26.061531, 44.946716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146797, 25.270754, 45.169590>,  <35.744732, 25.783264, 44.856567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146797, 25.270754, 45.169590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348015, 25.600935, 45.272018>,  <36.468746, 25.799044, 45.333477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348015, 25.600935, 45.272018>,  <36.146797, 25.270754, 45.169590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348015, 25.600935, 45.272018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146379, -0.373385, 0.916055,
		0.851772, -0.423336, -0.308659,
		0.503048, 0.825451, 0.256071,
		36.498928, 25.848570, 45.348839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817955, 25.067734, 45.608067>,  <36.146797, 25.270754, 45.169590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817955, 25.067734, 45.608067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740292, 25.451874, 45.688091>,  <36.693691, 25.682358, 45.736107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740292, 25.451874, 45.688091>,  <36.817955, 25.067734, 45.608067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740292, 25.451874, 45.688091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221436, -0.155773, 0.962653,
		0.955650, 0.231212, -0.182412,
		-0.194162, 0.960352, 0.200063,
		36.682045, 25.739979, 45.748112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434860, 25.313526, 46.096428>,  <36.817955, 25.067734, 45.608067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434860, 25.313526, 46.096428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188148, 25.624876, 46.143280>,  <37.040123, 25.811686, 46.171391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188148, 25.624876, 46.143280>,  <37.434860, 25.313526, 46.096428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188148, 25.624876, 46.143280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005804, -0.144307, 0.989516,
		0.787116, 0.610991, 0.084488,
		-0.616777, 0.778374, 0.117133,
		37.003117, 25.858389, 46.178421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811588, 25.782656, 46.434803>,  <37.434860, 25.313526, 46.096428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811588, 25.782656, 46.434803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425133, 25.848499, 46.514282>,  <37.193260, 25.888006, 46.561970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425133, 25.848499, 46.514282>,  <37.811588, 25.782656, 46.434803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425133, 25.848499, 46.514282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191383, -0.059324, 0.979721,
		0.173060, 0.984573, 0.025811,
		-0.966138, 0.164611, 0.198697,
		37.135292, 25.897882, 46.573891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861237, 26.350761, 46.830181>,  <37.811588, 25.782656, 46.434803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861237, 26.350761, 46.830181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549973, 26.102045, 46.865589>,  <37.363213, 25.952814, 46.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549973, 26.102045, 46.865589>,  <37.861237, 26.350761, 46.830181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549973, 26.102045, 46.865589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085584, 0.034643, 0.995728,
		-0.622203, 0.782416, 0.026257,
		-0.778164, -0.621792, 0.088517,
		37.316525, 25.915508, 46.892143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985962, 26.447147, 47.585773>,  <37.861237, 26.350761, 46.830181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985962, 26.447147, 47.585773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090832, 26.727743, 47.850853>,  <38.153755, 26.896101, 48.009903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090832, 26.727743, 47.850853>,  <37.985962, 26.447147, 47.585773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090832, 26.727743, 47.850853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181164, 0.638735, -0.747795,
		-0.947862, 0.316113, 0.040377,
		0.262178, 0.701491, 0.662701,
		38.169487, 26.938190, 48.049664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483658, 27.092115, 47.458149>,  <37.985962, 26.447147, 47.585773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483658, 27.092115, 47.458149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832024, 27.177816, 47.635059>,  <38.041042, 27.229237, 47.741207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832024, 27.177816, 47.635059>,  <37.483658, 27.092115, 47.458149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832024, 27.177816, 47.635059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206064, 0.657821, -0.724437,
		-0.446153, 0.722058, 0.528754,
		0.870911, 0.214253, 0.442278,
		38.093296, 27.242092, 47.767742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553185, 27.793350, 47.602993>,  <37.483658, 27.092115, 47.458149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553185, 27.793350, 47.602993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928696, 27.660240, 47.567299>,  <38.154003, 27.580374, 47.545883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928696, 27.660240, 47.567299>,  <37.553185, 27.793350, 47.602993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928696, 27.660240, 47.567299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123843, 0.567619, -0.813923,
		0.321504, 0.753040, 0.574079,
		0.938775, -0.332775, -0.089233,
		38.210327, 27.560408, 47.540527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973419, 28.310555, 47.279015>,  <37.553185, 27.793350, 47.602993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973419, 28.310555, 47.279015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261147, 28.034016, 47.251816>,  <38.433781, 27.868092, 47.235497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261147, 28.034016, 47.251816>,  <37.973419, 28.310555, 47.279015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261147, 28.034016, 47.251816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345506, 0.440957, -0.828362,
		0.602669, 0.572361, 0.556051,
		0.719317, -0.691347, -0.067997,
		38.476940, 27.826612, 47.231419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514942, 28.747847, 47.108505>,  <37.973419, 28.310555, 47.279015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514942, 28.747847, 47.108505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636639, 28.380091, 47.008778>,  <38.709656, 28.159437, 46.948940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636639, 28.380091, 47.008778>,  <38.514942, 28.747847, 47.108505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636639, 28.380091, 47.008778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553669, 0.383646, -0.739098,
		0.775167, 0.086829, 0.625760,
		0.304246, -0.919389, -0.249315,
		38.727913, 28.104275, 46.933983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195061, 28.800724, 47.060974>,  <38.514942, 28.747847, 47.108505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195061, 28.800724, 47.060974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047096, 28.500154, 46.842422>,  <38.958317, 28.319813, 46.711292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047096, 28.500154, 46.842422>,  <39.195061, 28.800724, 47.060974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047096, 28.500154, 46.842422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508027, 0.328787, -0.796121,
		0.777867, -0.572065, 0.260124,
		-0.369908, -0.751426, -0.546377,
		38.936123, 28.274727, 46.678509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773743, 28.635046, 46.720024>,  <39.195061, 28.800724, 47.060974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773743, 28.635046, 46.720024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482117, 28.480339, 46.494144>,  <39.307140, 28.387514, 46.358616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482117, 28.480339, 46.494144>,  <39.773743, 28.635046, 46.720024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482117, 28.480339, 46.494144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444706, 0.359493, -0.820367,
		0.520296, -0.849221, -0.090094,
		-0.729060, -0.386768, -0.564696,
		39.263397, 28.364309, 46.324734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134418, 28.388601, 46.159840>,  <39.773743, 28.635046, 46.720024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134418, 28.388601, 46.159840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751457, 28.413591, 46.047070>,  <39.521683, 28.428585, 45.979408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751457, 28.413591, 46.047070>,  <40.134418, 28.388601, 46.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751457, 28.413591, 46.047070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288765, 0.210111, -0.934060,
		0.000881, -0.975679, -0.219201,
		-0.957399, 0.062475, -0.281927,
		39.464237, 28.432333, 45.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054005, 28.052155, 45.535645>,  <40.134418, 28.388601, 46.159840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054005, 28.052155, 45.535645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729675, 28.286270, 45.534939>,  <39.535076, 28.426739, 45.534515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729675, 28.286270, 45.534939>,  <40.054005, 28.052155, 45.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729675, 28.286270, 45.534939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153318, 0.209486, -0.965717,
		-0.564852, -0.783297, -0.259591,
		-0.810824, 0.585287, -0.001765,
		39.486427, 28.461857, 45.534409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700111, 28.014330, 44.828728>,  <40.054005, 28.052155, 45.535645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700111, 28.014330, 44.828728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528614, 28.346769, 44.970406>,  <39.425716, 28.546232, 45.055412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528614, 28.346769, 44.970406>,  <39.700111, 28.014330, 44.828728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528614, 28.346769, 44.970406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112834, 0.339730, -0.933730,
		-0.896353, -0.440295, -0.051879,
		-0.428741, 0.831098, 0.354198,
		39.399990, 28.596098, 45.076664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225063, 28.128752, 44.347927>,  <39.700111, 28.014330, 44.828728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225063, 28.128752, 44.347927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240921, 28.484324, 44.530457>,  <39.250435, 28.697666, 44.639973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240921, 28.484324, 44.530457>,  <39.225063, 28.128752, 44.347927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240921, 28.484324, 44.530457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228390, 0.452653, -0.861942,
		-0.972762, -0.070046, 0.220970,
		0.039647, 0.888932, 0.456321,
		39.252815, 28.751003, 44.667355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750397, 28.516897, 44.041431>,  <39.225063, 28.128752, 44.347927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750397, 28.516897, 44.041431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017487, 28.767460, 44.202305>,  <39.177742, 28.917797, 44.298828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017487, 28.767460, 44.202305>,  <38.750397, 28.516897, 44.041431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017487, 28.767460, 44.202305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051301, 0.577718, -0.814623,
		-0.742635, 0.523315, 0.417894,
		0.667729, 0.626405, 0.402187,
		39.217804, 28.955381, 44.322960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528481, 29.087069, 43.870380>,  <38.750397, 28.516897, 44.041431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528481, 29.087069, 43.870380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922081, 29.141813, 43.916012>,  <39.158241, 29.174660, 43.943390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922081, 29.141813, 43.916012>,  <38.528481, 29.087069, 43.870380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922081, 29.141813, 43.916012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008004, 0.673588, -0.739064,
		-0.177993, 0.726325, 0.663905,
		0.983999, 0.136862, 0.114081,
		39.217281, 29.182873, 43.950237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571110, 29.744850, 43.914585>,  <38.528481, 29.087069, 43.870380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571110, 29.744850, 43.914585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956512, 29.672562, 43.835594>,  <39.187752, 29.629189, 43.788200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956512, 29.672562, 43.835594>,  <38.571110, 29.744850, 43.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956512, 29.672562, 43.835594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051540, 0.849153, -0.525627,
		0.262682, 0.496266, 0.827477,
		0.963505, -0.180721, -0.197479,
		39.245564, 29.618345, 43.776352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940113, 30.412359, 43.816101>,  <38.571110, 29.744850, 43.914585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940113, 30.412359, 43.816101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211514, 30.173826, 43.644508>,  <39.374355, 30.030706, 43.541553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211514, 30.173826, 43.644508>,  <38.940113, 30.412359, 43.816101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211514, 30.173826, 43.644508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289510, 0.753774, -0.589922,
		0.675144, 0.276068, 0.684081,
		0.678501, -0.596331, -0.428981,
		39.415066, 29.994926, 43.515816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648148, 30.780966, 43.847374>,  <38.940113, 30.412359, 43.816101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648148, 30.780966, 43.847374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676369, 30.519066, 43.546356>,  <39.693302, 30.361925, 43.365746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676369, 30.519066, 43.546356>,  <39.648148, 30.780966, 43.847374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676369, 30.519066, 43.546356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210654, 0.747189, -0.630344,
		0.975012, -0.114054, 0.190641,
		0.070552, -0.654752, -0.752544,
		39.697533, 30.322639, 43.320595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204304, 30.991020, 43.415001>,  <39.648148, 30.780966, 43.847374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204304, 30.991020, 43.415001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947422, 30.774773, 43.197632>,  <39.793293, 30.645023, 43.067211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947422, 30.774773, 43.197632>,  <40.204304, 30.991020, 43.415001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947422, 30.774773, 43.197632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006852, 0.712953, -0.701179,
		0.766505, -0.446575, -0.461564,
		-0.642202, -0.540619, -0.543422,
		39.754761, 30.612587, 43.034607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502598, 30.888288, 42.742931>,  <40.204304, 30.991020, 43.415001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502598, 30.888288, 42.742931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109570, 30.824629, 42.704517>,  <39.873753, 30.786432, 42.681469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109570, 30.824629, 42.704517>,  <40.502598, 30.888288, 42.742931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109570, 30.824629, 42.704517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043472, 0.699061, -0.713740,
		0.180725, -0.697127, -0.693796,
		-0.982573, -0.159151, -0.096032,
		39.814796, 30.776884, 42.675709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364132, 31.060675, 42.115612>,  <40.502598, 30.888288, 42.742931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364132, 31.060675, 42.115612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980221, 31.049337, 42.227337>,  <39.749874, 31.042536, 42.294373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980221, 31.049337, 42.227337>,  <40.364132, 31.060675, 42.115612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980221, 31.049337, 42.227337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222623, 0.682991, -0.695674,
		-0.171050, -0.729877, -0.661832,
		-0.959782, -0.028344, 0.279313,
		39.692287, 31.040834, 42.311131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952553, 31.000036, 41.441505>,  <40.364132, 31.060675, 42.115612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952553, 31.000036, 41.441505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686424, 31.142843, 41.703766>,  <39.526745, 31.228527, 41.861122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686424, 31.142843, 41.703766>,  <39.952553, 31.000036, 41.441505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686424, 31.142843, 41.703766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284678, 0.690556, -0.664899,
		-0.690146, -0.629024, -0.357809,
		-0.665324, 0.357017, 0.655654,
		39.486828, 31.249949, 41.900463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345055, 31.089090, 41.100521>,  <39.952553, 31.000036, 41.441505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345055, 31.089090, 41.100521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343464, 31.328840, 41.420704>,  <39.342510, 31.472691, 41.612816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343464, 31.328840, 41.420704>,  <39.345055, 31.089090, 41.100521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343464, 31.328840, 41.420704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221491, 0.780056, -0.585196,
		-0.975154, -0.179624, 0.129651,
		-0.003980, 0.599373, 0.800460,
		39.342270, 31.508652, 41.660843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683323, 31.313559, 41.123173>,  <39.345055, 31.089090, 41.100521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683323, 31.313559, 41.123173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922688, 31.566103, 41.320469>,  <39.066307, 31.717630, 41.438847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922688, 31.566103, 41.320469>,  <38.683323, 31.313559, 41.123173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922688, 31.566103, 41.320469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223298, 0.722673, -0.654126,
		-0.769443, 0.281296, 0.573437,
		0.598410, 0.631361, 0.493243,
		39.102211, 31.755510, 41.468441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334435, 31.961889, 41.069366>,  <38.683323, 31.313559, 41.123173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334435, 31.961889, 41.069366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707523, 32.063290, 41.171944>,  <38.931377, 32.124130, 41.233490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707523, 32.063290, 41.171944>,  <38.334435, 31.961889, 41.069366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707523, 32.063290, 41.171944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039669, 0.778995, -0.625774,
		-0.358404, 0.573501, 0.736643,
		0.932723, 0.253502, 0.256445,
		38.987339, 32.139339, 41.248878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337940, 32.811733, 41.196259>,  <38.334435, 31.961889, 41.069366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337940, 32.811733, 41.196259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710415, 32.683315, 41.127178>,  <38.933899, 32.606266, 41.085728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710415, 32.683315, 41.127178>,  <38.337940, 32.811733, 41.196259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710415, 32.683315, 41.127178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141011, 0.754079, -0.641468,
		0.336170, 0.572973, 0.747457,
		0.931185, -0.321042, -0.172703,
		38.989769, 32.587002, 41.075367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770569, 33.426247, 41.089630>,  <38.337940, 32.811733, 41.196259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770569, 33.426247, 41.089630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995483, 33.140450, 40.923096>,  <39.130432, 32.968971, 40.823174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995483, 33.140450, 40.923096>,  <38.770569, 33.426247, 41.089630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995483, 33.140450, 40.923096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183824, 0.598860, -0.779471,
		0.806254, 0.361752, 0.468071,
		0.562284, -0.714494, -0.416335,
		39.164169, 32.926102, 40.798195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389137, 33.733208, 40.841434>,  <38.770569, 33.426247, 41.089630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389137, 33.733208, 40.841434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383423, 33.402332, 40.616741>,  <39.379993, 33.203808, 40.481926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383423, 33.402332, 40.616741>,  <39.389137, 33.733208, 40.841434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383423, 33.402332, 40.616741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417582, 0.505524, -0.755031,
		0.908527, -0.245354, 0.338201,
		-0.014281, -0.827193, -0.561737,
		39.379139, 33.154175, 40.448219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978752, 33.628155, 40.554455>,  <39.389137, 33.733208, 40.841434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978752, 33.628155, 40.554455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760090, 33.401764, 40.307606>,  <39.628891, 33.265930, 40.159496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760090, 33.401764, 40.307606>,  <39.978752, 33.628155, 40.554455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760090, 33.401764, 40.307606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383444, 0.485977, -0.785365,
		0.744406, -0.665954, -0.048640,
		-0.546654, -0.565979, -0.617120,
		39.596092, 33.231972, 40.122471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379078, 33.512188, 40.120029>,  <39.978752, 33.628155, 40.554455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379078, 33.512188, 40.120029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031143, 33.431522, 39.939938>,  <39.822380, 33.383121, 39.831882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031143, 33.431522, 39.939938>,  <40.379078, 33.512188, 40.120029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031143, 33.431522, 39.939938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365602, 0.349245, -0.862765,
		0.331220, -0.915076, -0.230064,
		-0.869844, -0.201653, -0.450230,
		39.770191, 33.371021, 39.804867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533741, 32.998566, 39.538029>,  <40.379078, 33.512188, 40.120029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533741, 32.998566, 39.538029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207951, 33.221722, 39.474304>,  <40.012474, 33.355618, 39.436069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207951, 33.221722, 39.474304>,  <40.533741, 32.998566, 39.538029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207951, 33.221722, 39.474304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361324, 0.272894, -0.891613,
		-0.453949, -0.783763, -0.423846,
		-0.814479, 0.557893, -0.159312,
		39.963608, 33.389088, 39.426510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346905, 32.822273, 38.800579>,  <40.533741, 32.998566, 39.538029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346905, 32.822273, 38.800579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145096, 33.159134, 38.876717>,  <40.024010, 33.361252, 38.922398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145096, 33.159134, 38.876717>,  <40.346905, 32.822273, 38.800579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145096, 33.159134, 38.876717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509766, 0.468484, -0.721569,
		-0.696844, -0.267021, -0.665664,
		-0.504527, 0.842153, 0.190342,
		39.993736, 33.411781, 38.933819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253002, 33.093216, 38.115723>,  <40.346905, 32.822273, 38.800579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253002, 33.093216, 38.115723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147114, 33.423248, 38.315388>,  <40.083580, 33.621269, 38.435188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147114, 33.423248, 38.315388>,  <40.253002, 33.093216, 38.115723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147114, 33.423248, 38.315388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297967, 0.562287, -0.771394,
		-0.917136, -0.055469, -0.394695,
		-0.264720, 0.825080, 0.499166,
		40.067699, 33.670773, 38.465137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722885, 33.527802, 37.701511>,  <40.253002, 33.093216, 38.115723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722885, 33.527802, 37.701511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920372, 33.764370, 37.956532>,  <40.038864, 33.906311, 38.109543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920372, 33.764370, 37.956532>,  <39.722885, 33.527802, 37.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920372, 33.764370, 37.956532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223145, 0.622429, -0.750192,
		-0.840507, 0.512648, 0.175331,
		0.493716, 0.591417, 0.637551,
		40.068485, 33.941795, 38.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469738, 34.101151, 37.583275>,  <39.722885, 33.527802, 37.701511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469738, 34.101151, 37.583275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808586, 34.219891, 37.759575>,  <40.011894, 34.291134, 37.865356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808586, 34.219891, 37.759575>,  <39.469738, 34.101151, 37.583275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808586, 34.219891, 37.759575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117050, 0.704813, -0.699670,
		-0.518345, 0.644296, 0.562317,
		0.847123, 0.296852, 0.440751,
		40.062721, 34.308945, 37.891800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439537, 34.721272, 37.390739>,  <39.469738, 34.101151, 37.583275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439537, 34.721272, 37.390739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816528, 34.674850, 37.516132>,  <40.042721, 34.646999, 37.591370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816528, 34.674850, 37.516132>,  <39.439537, 34.721272, 37.390739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816528, 34.674850, 37.516132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274603, 0.803549, -0.528112,
		-0.190610, 0.583816, 0.789194,
		0.942476, -0.116051, 0.313482,
		40.099270, 34.640034, 37.610176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729248, 35.397449, 37.647720>,  <39.439537, 34.721272, 37.390739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729248, 35.397449, 37.647720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029419, 35.163612, 37.524368>,  <40.209522, 35.023308, 37.450356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029419, 35.163612, 37.524368>,  <39.729248, 35.397449, 37.647720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029419, 35.163612, 37.524368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401260, 0.773710, -0.490268,
		0.525209, 0.244170, 0.815191,
		0.750431, -0.584597, -0.308384,
		40.254547, 34.988232, 37.431854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383240, 35.777550, 37.684280>,  <39.729248, 35.397449, 37.647720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383240, 35.777550, 37.684280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453510, 35.468407, 37.440369>,  <40.495670, 35.282921, 37.294022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453510, 35.468407, 37.440369>,  <40.383240, 35.777550, 37.684280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453510, 35.468407, 37.440369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576534, 0.582847, -0.572623,
		0.797964, -0.250964, 0.547969,
		0.175674, -0.772856, -0.609780,
		40.506214, 35.236549, 37.257435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084179, 35.846104, 37.583485>,  <40.383240, 35.777550, 37.684280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084179, 35.846104, 37.583485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947201, 35.613117, 37.288605>,  <40.865013, 35.473324, 37.111675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947201, 35.613117, 37.288605>,  <41.084179, 35.846104, 37.583485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947201, 35.613117, 37.288605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512957, 0.541469, -0.666098,
		0.787151, -0.606254, 0.113357,
		-0.342445, -0.582467, -0.737200,
		40.844467, 35.438377, 37.067444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595898, 35.787537, 37.108845>,  <41.084179, 35.846104, 37.583485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595898, 35.787537, 37.108845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282230, 35.691135, 36.880112>,  <41.094028, 35.633293, 36.742870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282230, 35.691135, 36.880112>,  <41.595898, 35.787537, 37.108845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282230, 35.691135, 36.880112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355768, 0.580411, -0.732497,
		0.508433, -0.777843, -0.369400,
		-0.784172, -0.241004, -0.571832,
		41.046978, 35.618832, 36.708561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836994, 35.573715, 36.485298>,  <41.595898, 35.787537, 37.108845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836994, 35.573715, 36.485298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463116, 35.686539, 36.398773>,  <41.238789, 35.754234, 36.346859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.463116, 35.686539, 36.398773>,  <41.836994, 35.573715, 36.485298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463116, 35.686539, 36.398773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345090, 0.574192, -0.742439,
		-0.085208, -0.768600, -0.634030,
		-0.934694, 0.282059, -0.216311,
		41.182709, 35.771156, 36.333881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473179, 35.123154, 36.798180>,  <41.836994, 35.573715, 36.485298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473179, 35.123154, 36.798180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595615, 35.454788, 36.611019>,  <42.669075, 35.653767, 36.498722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595615, 35.454788, 36.611019>,  <42.473179, 35.123154, 36.798180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595615, 35.454788, 36.611019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819061, 0.021168, 0.573315,
		0.485230, -0.558726, -0.672590,
		0.306089, 0.829082, -0.467902,
		42.687443, 35.703514, 36.470650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103283, 34.950665, 36.523579>,  <42.473179, 35.123154, 36.798180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103283, 34.950665, 36.523579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063183, 35.342316, 36.594288>,  <43.039124, 35.577309, 36.636715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063183, 35.342316, 36.594288>,  <43.103283, 34.950665, 36.523579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063183, 35.342316, 36.594288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875248, 0.002291, 0.483670,
		0.473171, 0.203212, -0.857213,
		-0.100251, 0.979132, 0.176777,
		43.033108, 35.636055, 36.647320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734142, 35.308350, 36.572147>,  <43.103283, 34.950665, 36.523579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734142, 35.308350, 36.572147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506214, 35.619881, 36.467285>,  <43.369457, 35.806801, 36.404369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506214, 35.619881, 36.467285>,  <43.734142, 35.308350, 36.572147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506214, 35.619881, 36.467285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574134, -0.149073, 0.805076,
		0.587938, 0.609262, 0.532098,
		-0.569824, 0.778831, -0.262152,
		43.335266, 35.853531, 36.388641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731243, 35.022076, 35.838413>,  <43.734142, 35.308350, 36.572147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731243, 35.022076, 35.838413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732517, 34.793041, 36.166351>,  <43.733280, 34.655621, 36.363113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732517, 34.793041, 36.166351>,  <43.731243, 35.022076, 35.838413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732517, 34.793041, 36.166351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576825, -0.668652, -0.469230,
		0.816861, 0.474398, 0.328153,
		0.003181, -0.572582, 0.819841,
		43.733471, 34.621265, 36.412304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423645, 34.956532, 36.121918>,  <43.731243, 35.022076, 35.838413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423645, 34.956532, 36.121918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161991, 34.655197, 36.149033>,  <44.005001, 34.474396, 36.165302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161991, 34.655197, 36.149033>,  <44.423645, 34.956532, 36.121918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161991, 34.655197, 36.149033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510416, -0.505784, -0.695455,
		0.558198, -0.420319, 0.715365,
		-0.654133, -0.753335, 0.067790,
		43.965752, 34.429195, 36.169369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853271, 34.288403, 36.197781>,  <44.423645, 34.956532, 36.121918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853271, 34.288403, 36.197781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496479, 34.235104, 36.024986>,  <44.282402, 34.203125, 35.921310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496479, 34.235104, 36.024986>,  <44.853271, 34.288403, 36.197781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496479, 34.235104, 36.024986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441163, -0.465202, -0.767439,
		-0.098704, -0.875119, 0.473735,
		-0.891982, -0.133245, -0.431987,
		44.228886, 34.195129, 35.895390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859150, 33.616108, 35.888401>,  <44.853271, 34.288403, 36.197781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859150, 33.616108, 35.888401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614914, 33.859669, 35.685852>,  <44.468372, 34.005806, 35.564323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.614914, 33.859669, 35.685852>,  <44.859150, 33.616108, 35.888401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614914, 33.859669, 35.685852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446444, -0.263467, -0.855145,
		-0.654114, -0.748212, -0.110971,
		-0.610592, 0.608904, -0.506372,
		44.431736, 34.042339, 35.533939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399395, 33.297123, 35.386696>,  <44.859150, 33.616108, 35.888401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399395, 33.297123, 35.386696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466297, 33.665928, 35.247025>,  <44.506439, 33.887211, 35.163223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466297, 33.665928, 35.247025>,  <44.399395, 33.297123, 35.386696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466297, 33.665928, 35.247025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348035, -0.386580, -0.854065,
		-0.922441, 0.021321, -0.385549,
		0.167256, 0.922009, -0.349177,
		44.516476, 33.942532, 35.142273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141735, 33.311855, 34.727516>,  <44.399395, 33.297123, 35.386696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141735, 33.311855, 34.727516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440376, 33.577702, 34.739319>,  <44.619560, 33.737209, 34.746403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440376, 33.577702, 34.739319>,  <44.141735, 33.311855, 34.727516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440376, 33.577702, 34.739319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425311, -0.442730, -0.789367,
		-0.511561, 0.601894, -0.613212,
		0.746603, 0.664615, 0.029509,
		44.664356, 33.777084, 34.748173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353500, 33.357239, 34.014126>,  <44.141735, 33.311855, 34.727516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353500, 33.357239, 34.014126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650105, 33.500385, 34.241138>,  <44.828068, 33.586273, 34.377346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650105, 33.500385, 34.241138>,  <44.353500, 33.357239, 34.014126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650105, 33.500385, 34.241138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666363, -0.294210, -0.685128,
		-0.078213, 0.886212, -0.456631,
		0.741514, 0.357868, 0.567528,
		44.872559, 33.607746, 34.411396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592739, 34.100170, 33.708355>,  <44.353500, 33.357239, 34.014126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592739, 34.100170, 33.708355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854530, 33.887608, 33.923489>,  <45.011604, 33.760071, 34.052570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.854530, 33.887608, 33.923489>,  <44.592739, 34.100170, 33.708355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854530, 33.887608, 33.923489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511372, -0.212849, -0.832583,
		0.556921, 0.819938, 0.132444,
		0.654475, -0.531411, 0.537833,
		45.050873, 33.728184, 34.084839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217472, 34.252872, 33.436275>,  <44.592739, 34.100170, 33.708355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217472, 34.252872, 33.436275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315525, 33.914066, 33.624943>,  <45.374359, 33.710781, 33.738144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315525, 33.914066, 33.624943>,  <45.217472, 34.252872, 33.436275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315525, 33.914066, 33.624943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589416, -0.256066, -0.766171,
		0.769738, 0.465825, 0.436475,
		0.245135, -0.847017, 0.471669,
		45.389065, 33.659962, 33.766445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887394, 34.096619, 33.372368>,  <45.217472, 34.252872, 33.436275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887394, 34.096619, 33.372368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789326, 33.724300, 33.480816>,  <45.730484, 33.500908, 33.545883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789326, 33.724300, 33.480816>,  <45.887394, 34.096619, 33.372368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789326, 33.724300, 33.480816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479444, -0.359470, -0.800572,
		0.842631, -0.066286, 0.534396,
		-0.245166, -0.930800, 0.271120,
		45.715775, 33.445061, 33.562153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517498, 33.753777, 33.473263>,  <45.887394, 34.096619, 33.372368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517498, 33.753777, 33.473263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252144, 33.459236, 33.420033>,  <46.092930, 33.282513, 33.388096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252144, 33.459236, 33.420033>,  <46.517498, 33.753777, 33.473263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252144, 33.459236, 33.420033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484802, -0.287491, -0.826024,
		0.569983, -0.612489, 0.547701,
		-0.663389, -0.736347, -0.133071,
		46.053127, 33.238331, 33.380112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948868, 33.121613, 33.390087>,  <46.517498, 33.753777, 33.473263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948868, 33.121613, 33.390087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588783, 33.038273, 33.237133>,  <46.372734, 32.988270, 33.145359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588783, 33.038273, 33.237133>,  <46.948868, 33.121613, 33.390087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588783, 33.038273, 33.237133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433241, -0.339917, -0.834721,
		0.043933, -0.917087, 0.396260,
		-0.900207, -0.208347, -0.382386,
		46.318722, 32.975769, 33.122417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041935, 32.488003, 33.048592>,  <46.948868, 33.121613, 33.390087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041935, 32.488003, 33.048592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691074, 32.606415, 32.897346>,  <46.480556, 32.677460, 32.806599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691074, 32.606415, 32.897346>,  <47.041935, 32.488003, 33.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691074, 32.606415, 32.897346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274926, -0.336000, -0.900844,
		-0.393721, -0.894131, 0.213338,
		-0.877154, 0.296029, -0.378110,
		46.427929, 32.695221, 32.783913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887775, 31.969137, 32.568054>,  <47.041935, 32.488003, 33.048592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887775, 31.969137, 32.568054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679939, 32.295132, 32.465427>,  <46.555237, 32.490726, 32.403851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679939, 32.295132, 32.465427>,  <46.887775, 31.969137, 32.568054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679939, 32.295132, 32.465427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370932, -0.055354, -0.927009,
		-0.769700, -0.576833, -0.273542,
		-0.519588, 0.814985, -0.256571,
		46.524063, 32.539627, 32.388454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536388, 31.806051, 31.921137>,  <46.887775, 31.969137, 32.568054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536388, 31.806051, 31.921137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520283, 32.205620, 31.930372>,  <46.510620, 32.445362, 31.935913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520283, 32.205620, 31.930372>,  <46.536388, 31.806051, 31.921137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520283, 32.205620, 31.930372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122892, 0.027885, -0.992028,
		-0.991603, -0.037109, -0.123882,
		-0.040267, 0.998922, 0.023090,
		46.508202, 32.505295, 31.937300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348358, 31.994329, 31.235943>,  <46.536388, 31.806051, 31.921137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348358, 31.994329, 31.235943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444729, 32.352619, 31.385412>,  <46.502552, 32.567593, 31.475094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.444729, 32.352619, 31.385412>,  <46.348358, 31.994329, 31.235943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.444729, 32.352619, 31.385412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040168, 0.375482, -0.925959,
		-0.969712, 0.238095, 0.054483,
		0.240924, 0.895725, 0.373673,
		46.517006, 32.621338, 31.497515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936928, 32.416248, 30.809540>,  <46.348358, 31.994329, 31.235943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936928, 32.416248, 30.809540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213947, 32.668446, 30.949739>,  <46.380161, 32.819763, 31.033859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213947, 32.668446, 30.949739>,  <45.936928, 32.416248, 30.809540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213947, 32.668446, 30.949739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079358, 0.416340, -0.905739,
		-0.716990, 0.655086, 0.238302,
		0.692551, 0.630495, 0.350497,
		46.421711, 32.857594, 31.054888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777748, 33.023083, 30.551737>,  <45.936928, 32.416248, 30.809540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777748, 33.023083, 30.551737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155117, 33.102009, 30.658339>,  <46.381538, 33.149364, 30.722300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155117, 33.102009, 30.658339>,  <45.777748, 33.023083, 30.551737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155117, 33.102009, 30.658339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148320, 0.467719, -0.871344,
		-0.296581, 0.861571, 0.411989,
		0.943420, 0.197318, 0.266504,
		46.438145, 33.161205, 30.738289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911346, 33.817318, 30.490574>,  <45.777748, 33.023083, 30.551737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911346, 33.817318, 30.490574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245213, 33.597355, 30.478296>,  <46.445530, 33.465378, 30.470930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245213, 33.597355, 30.478296>,  <45.911346, 33.817318, 30.490574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245213, 33.597355, 30.478296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325454, 0.537408, -0.777993,
		0.444321, 0.639370, 0.627523,
		0.834661, -0.549908, -0.030696,
		46.495609, 33.432381, 30.469088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452030, 34.324879, 30.440210>,  <45.911346, 33.817318, 30.490574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452030, 34.324879, 30.440210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603191, 33.985992, 30.290857>,  <46.693886, 33.782661, 30.201246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.603191, 33.985992, 30.290857>,  <46.452030, 34.324879, 30.440210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603191, 33.985992, 30.290857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332795, 0.500632, -0.799134,
		0.863968, 0.177732, 0.471138,
		0.377899, -0.847218, -0.373381,
		46.716560, 33.731827, 30.178843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158360, 34.463581, 30.235891>,  <46.452030, 34.324879, 30.440210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158360, 34.463581, 30.235891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092304, 34.113689, 30.053648>,  <47.052673, 33.903755, 29.944302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092304, 34.113689, 30.053648>,  <47.158360, 34.463581, 30.235891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092304, 34.113689, 30.053648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255831, 0.408148, -0.876336,
		0.952513, -0.261272, 0.156384,
		-0.165134, -0.874730, -0.455608,
		47.042763, 33.851269, 29.916965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.877346, 34.246788, 29.936672>,  <47.158360, 34.463581, 30.235891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.877346, 34.246788, 29.936672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575680, 34.065575, 29.746519>,  <47.394680, 33.956848, 29.632427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575680, 34.065575, 29.746519>,  <47.877346, 34.246788, 29.936672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575680, 34.065575, 29.746519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345562, 0.341790, -0.873937,
		0.558406, -0.823370, -0.101215,
		-0.754168, -0.453035, -0.475383,
		47.349430, 33.929665, 29.603905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.176323, 33.931465, 29.344036>,  <47.877346, 34.246788, 29.936672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.176323, 33.931465, 29.344036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792610, 33.927788, 29.231115>,  <47.562382, 33.925583, 29.163363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792610, 33.927788, 29.231115>,  <48.176323, 33.931465, 29.344036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792610, 33.927788, 29.231115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240650, 0.496667, -0.833912,
		0.147873, -0.867893, -0.474232,
		-0.959282, -0.009189, -0.282301,
		47.504826, 33.925030, 29.146425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.195309, 33.609795, 28.708754>,  <48.176323, 33.931465, 29.344036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.195309, 33.609795, 28.708754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.840397, 33.794239, 28.713114>,  <47.627449, 33.904907, 28.715731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.840397, 33.794239, 28.713114>,  <48.195309, 33.609795, 28.708754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.840397, 33.794239, 28.713114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172937, 0.354490, -0.918929,
		-0.427593, -0.813458, -0.394273,
		-0.887275, 0.461112, 0.010900,
		47.574215, 33.932571, 28.716383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.803417, 33.418297, 28.132259>,  <48.195309, 33.609795, 28.708754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.803417, 33.418297, 28.132259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640949, 33.769955, 28.231964>,  <47.543468, 33.980949, 28.291788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640949, 33.769955, 28.231964>,  <47.803417, 33.418297, 28.132259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640949, 33.769955, 28.231964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007555, 0.275999, -0.961128,
		-0.913767, -0.388497, -0.118744,
		-0.406169, 0.879144, 0.249263,
		47.519100, 34.033699, 28.306744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502876, 33.666321, 27.566381>,  <47.803417, 33.418297, 28.132259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502876, 33.666321, 27.566381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522285, 34.010208, 27.769764>,  <47.533932, 34.216541, 27.891794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522285, 34.010208, 27.769764>,  <47.502876, 33.666321, 27.566381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.522285, 34.010208, 27.769764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158424, 0.495988, -0.853755,
		-0.986178, 0.121976, -0.112135,
		0.048520, 0.859720, 0.508457,
		47.536842, 34.268124, 27.922300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015221, 34.191628, 27.307787>,  <47.502876, 33.666321, 27.566381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015221, 34.191628, 27.307787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347233, 34.351582, 27.463297>,  <47.546440, 34.447552, 27.556602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347233, 34.351582, 27.463297>,  <47.015221, 34.191628, 27.307787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347233, 34.351582, 27.463297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142629, 0.521703, -0.841120,
		-0.539172, 0.753605, 0.375995,
		0.830030, 0.399881, 0.388774,
		47.596241, 34.471546, 27.579929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032722, 34.940212, 27.421017>,  <47.015221, 34.191628, 27.307787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032722, 34.940212, 27.421017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401924, 34.811047, 27.337311>,  <47.623444, 34.733547, 27.287086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401924, 34.811047, 27.337311>,  <47.032722, 34.940212, 27.421017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401924, 34.811047, 27.337311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046882, 0.634164, -0.771776,
		0.381923, 0.702542, 0.600475,
		0.923004, -0.322910, -0.209265,
		47.678825, 34.714172, 27.274530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955162, 35.453300, 26.804510>,  <47.032722, 34.940212, 27.421017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955162, 35.453300, 26.804510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591927, 35.423752, 26.639629>,  <46.373985, 35.406021, 26.540701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.591927, 35.423752, 26.639629>,  <46.955162, 35.453300, 26.804510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.591927, 35.423752, 26.639629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188654, 0.806609, -0.560171,
		0.373868, -0.586451, -0.718539,
		-0.908093, -0.073874, -0.412202,
		46.319500, 35.401588, 26.515968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.052994, 35.564335, 26.135061>,  <46.955162, 35.453300, 26.804510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.052994, 35.564335, 26.135061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683655, 35.660599, 26.254734>,  <46.462051, 35.718357, 26.326538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683655, 35.660599, 26.254734>,  <47.052994, 35.564335, 26.135061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683655, 35.660599, 26.254734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060985, 0.861230, -0.504543,
		-0.379085, -0.447624, -0.809893,
		-0.923350, 0.240656, 0.299181,
		46.406651, 35.732796, 26.344488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887108, 35.637390, 25.472288>,  <47.052994, 35.564335, 26.135061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887108, 35.637390, 25.472288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637630, 35.804234, 25.736721>,  <46.487946, 35.904339, 25.895380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.637630, 35.804234, 25.736721>,  <46.887108, 35.637390, 25.472288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637630, 35.804234, 25.736721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109437, 0.790808, -0.602201,
		-0.773970, -0.447936, -0.447576,
		-0.623694, 0.417104, 0.661083,
		46.450523, 35.929363, 25.935045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.181564, 35.778313, 25.098946>,  <46.887108, 35.637390, 25.472288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.181564, 35.778313, 25.098946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233234, 36.038036, 25.398737>,  <46.264236, 36.193871, 25.578611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233234, 36.038036, 25.398737>,  <46.181564, 35.778313, 25.098946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233234, 36.038036, 25.398737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343314, 0.738352, -0.580493,
		-0.930295, -0.182318, 0.318296,
		0.129180, 0.649305, 0.749477,
		46.271988, 36.232826, 25.623581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626221, 36.211224, 25.338728>,  <46.181564, 35.778313, 25.098946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626221, 36.211224, 25.338728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916553, 36.474976, 25.417097>,  <46.090755, 36.633224, 25.464119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.916553, 36.474976, 25.417097>,  <45.626221, 36.211224, 25.338728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916553, 36.474976, 25.417097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455386, 0.674091, -0.581572,
		-0.515546, 0.332903, 0.789549,
		0.725835, 0.659376, 0.195925,
		46.134304, 36.672787, 25.475874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223164, 36.665329, 25.395821>,  <45.626221, 36.211224, 25.338728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223164, 36.665329, 25.395821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584770, 36.818897, 25.320610>,  <45.801735, 36.911037, 25.275484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584770, 36.818897, 25.320610>,  <45.223164, 36.665329, 25.395821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584770, 36.818897, 25.320610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369472, 0.480458, -0.795393,
		-0.215028, 0.788521, 0.576191,
		0.904020, 0.383919, -0.188024,
		45.855976, 36.934074, 25.264202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449188, 37.115143, 25.985224>,  <45.223164, 36.665329, 25.395821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449188, 37.115143, 25.985224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657173, 37.275303, 26.287037>,  <45.781963, 37.371399, 26.468124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657173, 37.275303, 26.287037>,  <45.449188, 37.115143, 25.985224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657173, 37.275303, 26.287037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730921, -0.248555, 0.635590,
		0.442035, -0.881985, 0.163425,
		0.519961, 0.400404, 0.754531,
		45.813160, 37.395424, 26.513397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142265, 37.705830, 26.081202>,  <45.449188, 37.115143, 25.985224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142265, 37.705830, 26.081202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754780, 37.778587, 26.148745>,  <44.522289, 37.822243, 26.189270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754780, 37.778587, 26.148745>,  <45.142265, 37.705830, 26.081202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754780, 37.778587, 26.148745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090011, -0.376549, 0.922014,
		0.231295, 0.908363, 0.348394,
		-0.968711, 0.181898, 0.168856,
		44.464165, 37.833157, 26.199402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115383, 38.156441, 26.707256>,  <45.142265, 37.705830, 26.081202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115383, 38.156441, 26.707256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781952, 37.936184, 26.689590>,  <44.581894, 37.804031, 26.678991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.781952, 37.936184, 26.689590>,  <45.115383, 38.156441, 26.707256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781952, 37.936184, 26.689590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103528, -0.234253, 0.966648,
		-0.542618, 0.801201, 0.252273,
		-0.833575, -0.550638, -0.044163,
		44.531879, 37.770992, 26.676342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688503, 38.267448, 27.420111>,  <45.115383, 38.156441, 26.707256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688503, 38.267448, 27.420111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631752, 37.921814, 27.226940>,  <44.597702, 37.714432, 27.111038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631752, 37.921814, 27.226940>,  <44.688503, 38.267448, 27.420111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631752, 37.921814, 27.226940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004003, -0.488360, 0.872633,
		-0.989876, 0.121874, 0.072746,
		-0.141877, -0.864090, -0.482928,
		44.589188, 37.662586, 27.082062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024178, 37.851749, 27.683075>,  <44.688503, 38.267448, 27.420111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024178, 37.851749, 27.683075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246944, 37.569881, 27.507219>,  <44.380604, 37.400761, 27.401707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246944, 37.569881, 27.507219>,  <44.024178, 37.851749, 27.683075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246944, 37.569881, 27.507219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016577, -0.538647, 0.842368,
		-0.830403, -0.461840, -0.311662,
		0.556916, -0.704672, -0.439639,
		44.414021, 37.358479, 27.375328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634369, 37.211067, 27.867500>,  <44.024178, 37.851749, 27.683075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634369, 37.211067, 27.867500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004333, 37.110207, 27.753683>,  <44.226311, 37.049690, 27.685392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004333, 37.110207, 27.753683>,  <43.634369, 37.211067, 27.867500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004333, 37.110207, 27.753683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165652, -0.406376, 0.898564,
		-0.342206, -0.878224, -0.334091,
		0.924908, -0.252151, -0.284544,
		44.281807, 37.034561, 27.668320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706509, 36.687378, 28.218525>,  <43.634369, 37.211067, 27.867500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706509, 36.687378, 28.218525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078773, 36.775864, 28.101950>,  <44.302132, 36.828957, 28.032005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078773, 36.775864, 28.101950>,  <43.706509, 36.687378, 28.218525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078773, 36.775864, 28.101950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317864, -0.094360, 0.943429,
		0.181199, -0.970650, -0.158133,
		0.930660, 0.221213, -0.291436,
		44.357971, 36.842228, 28.014519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037220, 36.101753, 28.353046>,  <43.706509, 36.687378, 28.218525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037220, 36.101753, 28.353046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281601, 36.418350, 28.359661>,  <44.428230, 36.608311, 28.363630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281601, 36.418350, 28.359661>,  <44.037220, 36.101753, 28.353046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281601, 36.418350, 28.359661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208709, -0.181183, 0.961048,
		0.763662, -0.583701, -0.275886,
		0.610951, 0.791496, 0.016539,
		44.464886, 36.655800, 28.364622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799332, 35.931656, 28.557480>,  <44.037220, 36.101753, 28.353046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799332, 35.931656, 28.557480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809505, 36.326618, 28.619928>,  <44.815609, 36.563595, 28.657398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809505, 36.326618, 28.619928>,  <44.799332, 35.931656, 28.557480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809505, 36.326618, 28.619928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409329, -0.152767, 0.899507,
		0.912032, 0.041030, -0.408060,
		0.025431, 0.987410, 0.156123,
		44.817135, 36.622841, 28.666765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524662, 36.085102, 28.717142>,  <44.799332, 35.931656, 28.557480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524662, 36.085102, 28.717142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295460, 36.369675, 28.879881>,  <45.157940, 36.540421, 28.977524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295460, 36.369675, 28.879881>,  <45.524662, 36.085102, 28.717142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295460, 36.369675, 28.879881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470947, -0.120446, 0.873900,
		0.670726, 0.692353, -0.266032,
		-0.573005, 0.711435, 0.406848,
		45.123558, 36.583107, 29.001936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008282, 36.488358, 29.192080>,  <45.524662, 36.085102, 28.717142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008282, 36.488358, 29.192080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645470, 36.591942, 29.324886>,  <45.427784, 36.654091, 29.404570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645470, 36.591942, 29.324886>,  <46.008282, 36.488358, 29.192080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645470, 36.591942, 29.324886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316239, -0.101658, 0.943217,
		0.278010, 0.960523, 0.010313,
		-0.907030, 0.258962, 0.332017,
		45.373360, 36.669632, 29.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164570, 36.896015, 29.831430>,  <46.008282, 36.488358, 29.192080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164570, 36.896015, 29.831430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778984, 36.794228, 29.862469>,  <45.547634, 36.733154, 29.881092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778984, 36.794228, 29.862469>,  <46.164570, 36.896015, 29.831430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778984, 36.794228, 29.862469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111046, -0.119823, 0.986565,
		-0.241752, 0.959629, 0.143762,
		-0.963963, -0.254469, 0.077596,
		45.489796, 36.717888, 29.885748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793922, 37.317471, 30.460087>,  <46.164570, 36.896015, 29.831430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793922, 37.317471, 30.460087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535839, 37.019932, 30.390354>,  <45.380989, 36.841408, 30.348515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535839, 37.019932, 30.390354>,  <45.793922, 37.317471, 30.460087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535839, 37.019932, 30.390354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096113, -0.147341, 0.984405,
		-0.757934, 0.651905, 0.023572,
		-0.645212, -0.743848, -0.174331,
		45.342274, 36.796776, 30.338055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121983, 37.361076, 30.969875>,  <45.793922, 37.317471, 30.460087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121983, 37.361076, 30.969875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194324, 36.991333, 30.835503>,  <45.237732, 36.769485, 30.754879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194324, 36.991333, 30.835503>,  <45.121983, 37.361076, 30.969875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194324, 36.991333, 30.835503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019414, -0.338144, 0.940894,
		-0.983318, -0.176690, -0.043210,
		0.180858, -0.924359, -0.335934,
		45.248581, 36.714024, 30.734722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731472, 36.900051, 31.418177>,  <45.121983, 37.361076, 30.969875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731472, 36.900051, 31.418177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012878, 36.674068, 31.245720>,  <45.181721, 36.538479, 31.142246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012878, 36.674068, 31.245720>,  <44.731472, 36.900051, 31.418177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012878, 36.674068, 31.245720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229668, -0.393375, 0.890230,
		-0.672546, -0.725310, -0.146992,
		0.703516, -0.564961, -0.431143,
		45.223934, 36.504581, 31.116377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610329, 36.364342, 31.738527>,  <44.731472, 36.900051, 31.418177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610329, 36.364342, 31.738527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974976, 36.303204, 31.585901>,  <45.193764, 36.266521, 31.494326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974976, 36.303204, 31.585901>,  <44.610329, 36.364342, 31.738527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974976, 36.303204, 31.585901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274235, -0.465324, 0.841587,
		-0.306180, -0.871845, -0.382283,
		0.911619, -0.152842, -0.381563,
		45.248463, 36.257351, 31.471432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708523, 35.669518, 31.873318>,  <44.610329, 36.364342, 31.738527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708523, 35.669518, 31.873318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070545, 35.827644, 31.810583>,  <45.287758, 35.922520, 31.772942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070545, 35.827644, 31.810583>,  <44.708523, 35.669518, 31.873318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070545, 35.827644, 31.810583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321513, -0.394585, 0.860774,
		0.278393, -0.829474, -0.484221,
		0.905056, 0.395317, -0.156838,
		45.342064, 35.946239, 31.763533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094765, 35.112900, 32.069893>,  <44.708523, 35.669518, 31.873318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094765, 35.112900, 32.069893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330639, 35.435387, 32.089020>,  <45.472164, 35.628880, 32.100494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330639, 35.435387, 32.089020>,  <45.094765, 35.112900, 32.069893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330639, 35.435387, 32.089020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306038, -0.277854, 0.910570,
		0.747400, -0.522320, -0.410579,
		0.589690, 0.806213, 0.047818,
		45.507545, 35.677250, 32.103367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701511, 34.875477, 32.360924>,  <45.094765, 35.112900, 32.069893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701511, 34.875477, 32.360924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694298, 35.267765, 32.438751>,  <45.689968, 35.503139, 32.485447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.694298, 35.267765, 32.438751>,  <45.701511, 34.875477, 32.360924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694298, 35.267765, 32.438751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339386, -0.177042, 0.923836,
		0.940474, 0.082694, -0.329651,
		-0.018033, 0.980723, 0.194568,
		45.688889, 35.561981, 32.497120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356995, 35.046848, 32.638851>,  <45.701511, 34.875477, 32.360924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356995, 35.046848, 32.638851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118217, 35.347366, 32.751431>,  <45.974949, 35.527676, 32.818977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118217, 35.347366, 32.751431>,  <46.356995, 35.046848, 32.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118217, 35.347366, 32.751431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394008, -0.031056, 0.918582,
		0.698866, 0.659236, -0.277477,
		-0.596945, 0.751294, 0.281448,
		45.939133, 35.572754, 32.835865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.793419, 35.485935, 33.045956>,  <46.356995, 35.046848, 32.638851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.793419, 35.485935, 33.045956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430630, 35.598434, 33.171368>,  <46.212955, 35.665936, 33.246613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430630, 35.598434, 33.171368>,  <46.793419, 35.485935, 33.045956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430630, 35.598434, 33.171368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319302, -0.026323, 0.947287,
		0.274675, 0.959274, -0.065929,
		-0.906973, 0.281247, 0.313528,
		46.158539, 35.682808, 33.265427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.841660, 35.822811, 33.688210>,  <46.793419, 35.485935, 33.045956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.841660, 35.822811, 33.688210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448574, 35.755630, 33.719379>,  <46.212723, 35.715321, 33.738079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448574, 35.755630, 33.719379>,  <46.841660, 35.822811, 33.688210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448574, 35.755630, 33.719379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086070, -0.041778, 0.995413,
		-0.163924, 0.984910, 0.055512,
		-0.982711, -0.167950, 0.077923,
		46.153759, 35.705246, 33.742756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590988, 36.338287, 34.309074>,  <46.841660, 35.822811, 33.688210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590988, 36.338287, 34.309074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379581, 36.007294, 34.233250>,  <46.252735, 35.808697, 34.187756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379581, 36.007294, 34.233250>,  <46.590988, 36.338287, 34.309074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379581, 36.007294, 34.233250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202946, -0.339983, 0.918272,
		-0.824306, 0.446853, 0.347622,
		-0.528519, -0.827486, -0.189563,
		46.221027, 35.759048, 34.176380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434402, 36.045616, 34.884857>,  <46.590988, 36.338287, 34.309074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434402, 36.045616, 34.884857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368401, 35.718342, 34.664547>,  <46.328800, 35.521976, 34.532360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368401, 35.718342, 34.664547>,  <46.434402, 36.045616, 34.884857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368401, 35.718342, 34.664547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579109, -0.532402, 0.617399,
		-0.798378, -0.217084, 0.561665,
		-0.165005, -0.818183, -0.550773,
		46.318901, 35.472889, 34.499313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410839, 35.407581, 35.327995>,  <46.434402, 36.045616, 34.884857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410839, 35.407581, 35.327995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507320, 35.329136, 34.947815>,  <46.565208, 35.282066, 34.719707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507320, 35.329136, 34.947815>,  <46.410839, 35.407581, 35.327995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507320, 35.329136, 34.947815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772163, -0.554469, 0.310369,
		-0.587865, -0.808766, 0.017694,
		0.241205, -0.196118, -0.950451,
		46.579681, 35.270302, 34.662678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768574, 34.826492, 35.415913>,  <46.410839, 35.407581, 35.327995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768574, 34.826492, 35.415913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889263, 34.997341, 35.074966>,  <46.961678, 35.099850, 34.870399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889263, 34.997341, 35.074966>,  <46.768574, 34.826492, 35.415913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889263, 34.997341, 35.074966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953023, -0.160100, 0.257128,
		-0.026638, -0.889906, -0.455365,
		0.301724, 0.427125, -0.852366,
		46.979782, 35.125477, 34.819256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.486946, 34.864132, 35.464634>,  <46.768574, 34.826492, 35.415913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.486946, 34.864132, 35.464634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442074, 35.060284, 35.118931>,  <47.415150, 35.177975, 34.911507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442074, 35.060284, 35.118931>,  <47.486946, 34.864132, 35.464634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.442074, 35.060284, 35.118931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962852, 0.268632, 0.027442,
		0.245626, -0.829077, -0.502294,
		-0.112181, 0.490375, -0.864262,
		47.408421, 35.207397, 34.859653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.820354, 34.216476, 45.128265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429493, 34.300625, 45.116154>,  <36.194977, 34.351116, 45.108887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429493, 34.300625, 45.116154>,  <36.820354, 34.216476, 45.128265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429493, 34.300625, 45.116154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137575, 0.517450, -0.844582,
		-0.162009, -0.829450, -0.534570,
		-0.977152, 0.210373, -0.030280,
		36.136349, 34.363735, 45.107071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494499, 34.151215, 44.364399>,  <36.820354, 34.216476, 45.128265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494499, 34.151215, 44.364399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.236706, 34.396755, 44.546753>,  <36.082031, 34.544079, 44.656166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.236706, 34.396755, 44.546753>,  <36.494499, 34.151215, 44.364399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236706, 34.396755, 44.546753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193656, 0.445744, -0.873962,
		-0.739692, -0.651535, -0.168397,
		-0.644479, 0.613852, 0.455887,
		36.043362, 34.580910, 44.683517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958481, 34.235004, 43.914394>,  <36.494499, 34.151215, 44.364399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958481, 34.235004, 43.914394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865173, 34.557228, 44.132263>,  <35.809189, 34.750561, 44.262985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.865173, 34.557228, 44.132263>,  <35.958481, 34.235004, 43.914394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865173, 34.557228, 44.132263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341649, 0.456521, -0.821501,
		-0.910419, -0.377715, 0.168726,
		-0.233267, 0.805555, 0.544672,
		35.795193, 34.798893, 44.295666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445103, 34.563961, 43.562595>,  <35.958481, 34.235004, 43.914394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445103, 34.563961, 43.562595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537647, 34.860386, 43.814724>,  <35.593174, 35.038239, 43.966000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537647, 34.860386, 43.814724>,  <35.445103, 34.563961, 43.562595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537647, 34.860386, 43.814724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196227, 0.670129, -0.715836,
		-0.952874, 0.041929, 0.300456,
		0.231358, 0.741059, 0.630321,
		35.607056, 35.082703, 44.003819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891853, 35.143784, 43.409809>,  <35.445103, 34.563961, 43.562595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891853, 35.143784, 43.409809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.212448, 35.295033, 43.595127>,  <35.404804, 35.385780, 43.706318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.212448, 35.295033, 43.595127>,  <34.891853, 35.143784, 43.409809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212448, 35.295033, 43.595127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083211, 0.696675, -0.712544,
		-0.592195, 0.609647, 0.526912,
		0.801487, 0.378120, 0.463297,
		35.452896, 35.408470, 43.734116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762825, 35.866821, 43.442356>,  <34.891853, 35.143784, 43.409809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762825, 35.866821, 43.442356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150017, 35.769440, 43.466858>,  <35.382332, 35.711010, 43.481560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.150017, 35.769440, 43.466858>,  <34.762825, 35.866821, 43.442356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150017, 35.769440, 43.466858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217084, 0.689171, -0.691316,
		0.126089, 0.682475, 0.719951,
		0.967975, -0.243457, 0.061258,
		35.440411, 35.696404, 43.485237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098892, 36.524849, 43.528309>,  <34.762825, 35.866821, 43.442356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098892, 36.524849, 43.528309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380333, 36.275753, 43.391407>,  <35.549198, 36.126293, 43.309265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380333, 36.275753, 43.391407>,  <35.098892, 36.524849, 43.528309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380333, 36.275753, 43.391407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174796, 0.618520, -0.766081,
		0.688762, 0.479190, 0.544044,
		0.703600, -0.622745, -0.342252,
		35.591412, 36.088928, 43.288731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584641, 36.832302, 43.276104>,  <35.098892, 36.524849, 43.528309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584641, 36.832302, 43.276104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718456, 36.502514, 43.093529>,  <35.798744, 36.304642, 42.983982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718456, 36.502514, 43.093529>,  <35.584641, 36.832302, 43.276104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718456, 36.502514, 43.093529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297463, 0.551966, -0.779005,
		0.894205, 0.124831, 0.429901,
		0.334535, -0.824470, -0.456438,
		35.818817, 36.255173, 42.956596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399754, 36.788025, 43.130199>,  <35.584641, 36.832302, 43.276104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399754, 36.788025, 43.130199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225269, 36.532135, 42.877068>,  <36.120579, 36.378601, 42.725189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225269, 36.532135, 42.877068>,  <36.399754, 36.788025, 43.130199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225269, 36.532135, 42.877068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542536, 0.374088, -0.752138,
		0.717897, -0.671422, 0.183894,
		-0.436209, -0.639727, -0.632828,
		36.094406, 36.340218, 42.687218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897041, 36.661224, 42.669857>,  <36.399754, 36.788025, 43.130199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897041, 36.661224, 42.669857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583591, 36.521660, 42.464260>,  <36.395519, 36.437920, 42.340900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583591, 36.521660, 42.464260>,  <36.897041, 36.661224, 42.669857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583591, 36.521660, 42.464260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473365, 0.200448, -0.857756,
		0.402312, -0.915467, 0.008087,
		-0.783627, -0.348913, -0.513993,
		36.348503, 36.416985, 42.310062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149284, 36.289333, 42.060493>,  <36.897041, 36.661224, 42.669857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149284, 36.289333, 42.060493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779263, 36.409214, 41.967148>,  <36.557251, 36.481144, 41.911140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779263, 36.409214, 41.967148>,  <37.149284, 36.289333, 42.060493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779263, 36.409214, 41.967148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321007, 0.288404, -0.902096,
		-0.203059, -0.909396, -0.362996,
		-0.925052, 0.299703, -0.233360,
		36.501747, 36.499126, 41.897141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137360, 35.969799, 41.406059>,  <37.149284, 36.289333, 42.060493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137360, 35.969799, 41.406059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818897, 36.211491, 41.418991>,  <36.627819, 36.356506, 41.426750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818897, 36.211491, 41.418991>,  <37.137360, 35.969799, 41.406059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818897, 36.211491, 41.418991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172819, 0.278262, -0.944830,
		-0.579894, -0.746641, -0.325961,
		-0.796151, 0.604233, 0.032329,
		36.580051, 36.392761, 41.428688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830643, 35.920979, 40.706821>,  <37.137360, 35.969799, 41.406059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830643, 35.920979, 40.706821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698986, 36.260929, 40.871445>,  <36.619991, 36.464897, 40.970219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.698986, 36.260929, 40.871445>,  <36.830643, 35.920979, 40.706821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698986, 36.260929, 40.871445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010979, 0.439259, -0.898293,
		-0.944218, -0.291143, -0.153907,
		-0.329137, 0.849874, 0.411560,
		36.600246, 36.515892, 40.994911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530704, 36.362453, 40.189735>,  <36.830643, 35.920979, 40.706821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530704, 36.362453, 40.189735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585617, 36.638451, 40.474007>,  <36.618565, 36.804050, 40.644569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585617, 36.638451, 40.474007>,  <36.530704, 36.362453, 40.189735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585617, 36.638451, 40.474007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007866, 0.716686, -0.697351,
		-0.990501, 0.101324, 0.092961,
		0.137282, 0.689996, 0.710675,
		36.626801, 36.845448, 40.687210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050949, 36.798553, 40.178574>,  <36.530704, 36.362453, 40.189735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050949, 36.798553, 40.178574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357803, 36.995235, 40.343361>,  <36.541916, 37.113247, 40.442234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.357803, 36.995235, 40.343361>,  <36.050949, 36.798553, 40.178574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357803, 36.995235, 40.343361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125113, 0.744573, -0.655711,
		-0.629160, 0.451480, 0.632711,
		0.767140, 0.491708, 0.411970,
		36.587944, 37.142746, 40.466953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730892, 37.413033, 40.177956>,  <36.050949, 36.798553, 40.178574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730892, 37.413033, 40.177956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121941, 37.491222, 40.209049>,  <36.356571, 37.538136, 40.227703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121941, 37.491222, 40.209049>,  <35.730892, 37.413033, 40.177956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121941, 37.491222, 40.209049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140830, 0.882642, -0.448453,
		-0.156272, 0.427471, 0.890420,
		0.977623, 0.195479, 0.077732,
		36.415226, 37.549866, 40.232368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743210, 38.144726, 40.281891>,  <35.730892, 37.413033, 40.177956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743210, 38.144726, 40.281891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121490, 38.051498, 40.191269>,  <36.348457, 37.995564, 40.136894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.121490, 38.051498, 40.191269>,  <35.743210, 38.144726, 40.281891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121490, 38.051498, 40.191269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081600, 0.844937, -0.528604,
		0.314624, 0.481415, 0.818078,
		0.945702, -0.233067, -0.226554,
		36.405201, 37.981579, 40.123302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129761, 38.822468, 40.276276>,  <35.743210, 38.144726, 40.281891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129761, 38.822468, 40.276276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329998, 38.559113, 40.051445>,  <36.450142, 38.401100, 39.916546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329998, 38.559113, 40.051445>,  <36.129761, 38.822468, 40.276276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329998, 38.559113, 40.051445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190282, 0.717093, -0.670500,
		0.844511, 0.228695, 0.484252,
		0.500594, -0.658389, -0.562076,
		36.480175, 38.361595, 39.882824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762817, 39.127270, 40.183800>,  <36.129761, 38.822468, 40.276276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762817, 39.127270, 40.183800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719975, 38.870205, 39.880352>,  <36.694267, 38.715965, 39.698284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719975, 38.870205, 39.880352>,  <36.762817, 39.127270, 40.183800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719975, 38.870205, 39.880352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366878, 0.683618, -0.630925,
		0.924082, -0.345902, 0.162556,
		-0.107112, -0.642665, -0.758623,
		36.687840, 38.677406, 39.652763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267284, 39.294930, 39.722889>,  <36.762817, 39.127270, 40.183800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267284, 39.294930, 39.722889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046322, 39.086357, 39.462749>,  <36.913746, 38.961212, 39.306664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046322, 39.086357, 39.462749>,  <37.267284, 39.294930, 39.722889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046322, 39.086357, 39.462749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458918, 0.461071, -0.759478,
		0.695875, -0.717997, -0.015402,
		-0.552405, -0.521434, -0.650350,
		36.880600, 38.929928, 39.267643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705002, 38.988873, 39.238125>,  <37.267284, 39.294930, 39.722889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705002, 38.988873, 39.238125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342773, 39.059860, 39.084007>,  <37.125439, 39.102451, 38.991535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342773, 39.059860, 39.084007>,  <37.705002, 38.988873, 39.238125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342773, 39.059860, 39.084007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423542, 0.428887, -0.797915,
		0.023644, -0.885755, -0.463550,
		-0.905568, 0.177467, -0.385295,
		37.071102, 39.113102, 38.968418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878357, 39.201897, 38.655724>,  <37.705002, 38.988873, 39.238125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878357, 39.201897, 38.655724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485142, 39.266090, 38.620232>,  <37.249210, 39.304607, 38.598934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485142, 39.266090, 38.620232>,  <37.878357, 39.201897, 38.655724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485142, 39.266090, 38.620232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158905, 0.503934, -0.848999,
		-0.091537, -0.848702, -0.520890,
		-0.983042, 0.160487, -0.088734,
		37.190228, 39.314236, 38.593613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341915, 38.630482, 38.456131>,  <37.878357, 39.201897, 38.655724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341915, 38.630482, 38.456131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666626, 38.434078, 38.329685>,  <38.861454, 38.316235, 38.253819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666626, 38.434078, 38.329685>,  <38.341915, 38.630482, 38.456131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666626, 38.434078, 38.329685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022208, -0.514975, 0.856918,
		-0.583547, -0.702645, -0.407140,
		0.811776, -0.491010, -0.316116,
		38.910160, 38.286774, 38.234852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286835, 37.726593, 38.451786>,  <38.341915, 38.630482, 38.456131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286835, 37.726593, 38.451786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673000, 37.825848, 38.483807>,  <38.904697, 37.885403, 38.503017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.673000, 37.825848, 38.483807>,  <38.286835, 37.726593, 38.451786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673000, 37.825848, 38.483807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083097, -0.583835, 0.807609,
		0.247136, -0.773023, -0.584260,
		0.965411, 0.248140, 0.080051,
		38.962624, 37.900291, 38.507820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549850, 37.133297, 38.831970>,  <38.286835, 37.726593, 38.451786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549850, 37.133297, 38.831970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847603, 37.398918, 38.860058>,  <39.026257, 37.558289, 38.876911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847603, 37.398918, 38.860058>,  <38.549850, 37.133297, 38.831970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847603, 37.398918, 38.860058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460281, -0.586443, 0.666503,
		0.483773, -0.463812, -0.742188,
		0.744383, 0.664051, 0.070221,
		39.070919, 37.598133, 38.881123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203648, 36.725185, 38.531689>,  <38.549850, 37.133297, 38.831970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203648, 36.725185, 38.531689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268066, 37.005486, 38.809685>,  <39.306717, 37.173664, 38.976482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268066, 37.005486, 38.809685>,  <39.203648, 36.725185, 38.531689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268066, 37.005486, 38.809685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368387, -0.695974, 0.616369,
		0.915617, 0.156761, -0.370233,
		0.161050, 0.700747, 0.694994,
		39.316380, 37.215710, 39.018185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642841, 36.437229, 39.010319>,  <39.203648, 36.725185, 38.531689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642841, 36.437229, 39.010319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544094, 36.760498, 39.224201>,  <39.484844, 36.954460, 39.352531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544094, 36.760498, 39.224201>,  <39.642841, 36.437229, 39.010319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544094, 36.760498, 39.224201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402611, -0.416371, 0.815193,
		0.881454, 0.416524, -0.222591,
		-0.246867, 0.808173, 0.534709,
		39.470036, 37.002949, 39.384613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173988, 36.435680, 39.592232>,  <39.642841, 36.437229, 39.010319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173988, 36.435680, 39.592232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884159, 36.700256, 39.669689>,  <39.710262, 36.859001, 39.716164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884159, 36.700256, 39.669689>,  <40.173988, 36.435680, 39.592232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884159, 36.700256, 39.669689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117240, -0.395163, 0.911099,
		0.679156, 0.637452, 0.363871,
		-0.724570, 0.661438, 0.193642,
		39.666786, 36.898689, 39.727783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430023, 36.809071, 40.155762>,  <40.173988, 36.435680, 39.592232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430023, 36.809071, 40.155762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030983, 36.805309, 40.128338>,  <39.791557, 36.803051, 40.111885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030983, 36.805309, 40.128338>,  <40.430023, 36.809071, 40.155762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030983, 36.805309, 40.128338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059208, -0.396850, 0.915972,
		-0.035819, 0.917835, 0.395342,
		-0.997603, -0.009402, -0.068558,
		39.731701, 36.802490, 40.107769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188992, 37.110813, 40.808838>,  <40.430023, 36.809071, 40.155762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188992, 37.110813, 40.808838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892349, 36.896759, 40.647026>,  <39.714363, 36.768326, 40.549938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892349, 36.896759, 40.647026>,  <40.188992, 37.110813, 40.808838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892349, 36.896759, 40.647026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224992, -0.369685, 0.901505,
		-0.631975, 0.759582, 0.153762,
		-0.741610, -0.535134, -0.404532,
		39.669865, 36.736217, 40.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628712, 37.138615, 41.242580>,  <40.188992, 37.110813, 40.808838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628712, 37.138615, 41.242580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.551262, 36.803368, 41.038593>,  <39.504791, 36.602219, 40.916199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.551262, 36.803368, 41.038593>,  <39.628712, 37.138615, 41.242580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551262, 36.803368, 41.038593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318964, -0.437792, 0.840595,
		-0.927777, 0.325426, -0.182559,
		-0.193628, -0.838115, -0.509972,
		39.493172, 36.551933, 40.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108837, 36.964138, 41.645462>,  <39.628712, 37.138615, 41.242580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108837, 36.964138, 41.645462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247597, 36.646206, 41.446304>,  <39.330853, 36.455448, 41.326809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247597, 36.646206, 41.446304>,  <39.108837, 36.964138, 41.645462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247597, 36.646206, 41.446304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342733, -0.601579, 0.721552,
		-0.873037, -0.079662, -0.481104,
		0.346903, -0.794831, -0.497898,
		39.351669, 36.407757, 41.296936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542011, 36.431675, 41.616749>,  <39.108837, 36.964138, 41.645462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542011, 36.431675, 41.616749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840141, 36.191246, 41.501369>,  <39.019020, 36.046989, 41.432140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840141, 36.191246, 41.501369>,  <38.542011, 36.431675, 41.616749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840141, 36.191246, 41.501369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421201, -0.759888, 0.495137,
		-0.516802, -0.247543, -0.819535,
		0.745322, -0.601076, -0.288447,
		39.063740, 36.010921, 41.414837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224003, 35.784718, 41.365688>,  <38.542011, 36.431675, 41.616749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224003, 35.784718, 41.365688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589146, 35.709930, 41.510872>,  <38.808231, 35.665058, 41.597980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589146, 35.709930, 41.510872>,  <38.224003, 35.784718, 41.365688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589146, 35.709930, 41.510872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371009, -0.750949, 0.546285,
		0.170428, -0.633340, -0.754874,
		0.912856, -0.186963, 0.362958,
		38.863003, 35.653843, 41.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259117, 34.967037, 41.510429>,  <38.224003, 35.784718, 41.365688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259117, 34.967037, 41.510429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573856, 35.120430, 41.703846>,  <38.762699, 35.212463, 41.819897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573856, 35.120430, 41.703846>,  <38.259117, 34.967037, 41.510429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573856, 35.120430, 41.703846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070174, -0.722835, 0.687448,
		0.613140, -0.574851, -0.541854,
		0.786852, 0.383478, 0.483538,
		38.809914, 35.235474, 41.848907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768200, 34.462540, 41.618141>,  <38.259117, 34.967037, 41.510429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768200, 34.462540, 41.618141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848225, 34.736874, 41.898029>,  <38.896240, 34.901474, 42.065964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848225, 34.736874, 41.898029>,  <38.768200, 34.462540, 41.618141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848225, 34.736874, 41.898029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086683, -0.698969, 0.709879,
		0.975941, -0.202675, -0.080388,
		0.200064, 0.685832, 0.699721,
		38.908245, 34.942623, 42.107944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179527, 34.116867, 42.059345>,  <38.768200, 34.462540, 41.618141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179527, 34.116867, 42.059345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069382, 34.423386, 42.291538>,  <39.003292, 34.607296, 42.430855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069382, 34.423386, 42.291538>,  <39.179527, 34.116867, 42.059345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069382, 34.423386, 42.291538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024280, -0.609175, 0.792664,
		0.961032, 0.204180, 0.186353,
		-0.275368, 0.766301, 0.580479,
		38.986771, 34.653275, 42.465683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613655, 34.054718, 42.682297>,  <39.179527, 34.116867, 42.059345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613655, 34.054718, 42.682297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283108, 34.270298, 42.747597>,  <39.084778, 34.399647, 42.786777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283108, 34.270298, 42.747597>,  <39.613655, 34.054718, 42.682297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283108, 34.270298, 42.747597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186659, -0.535652, 0.823550,
		0.531295, 0.650084, 0.543246,
		-0.826368, 0.538950, 0.163245,
		39.035198, 34.431984, 42.796570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601971, 34.095016, 43.342537>,  <39.613655, 34.054718, 42.682297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601971, 34.095016, 43.342537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.226284, 34.223114, 43.293041>,  <39.000874, 34.299973, 43.263344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.226284, 34.223114, 43.293041>,  <39.601971, 34.095016, 43.342537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226284, 34.223114, 43.293041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295053, -0.568640, 0.767849,
		0.175537, 0.757688, 0.628566,
		-0.939218, 0.320246, -0.123741,
		38.944519, 34.319187, 43.255920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301487, 34.266411, 44.075588>,  <39.601971, 34.095016, 43.342537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301487, 34.266411, 44.075588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990719, 34.215786, 43.828888>,  <38.804260, 34.185410, 43.680866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.990719, 34.215786, 43.828888>,  <39.301487, 34.266411, 44.075588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990719, 34.215786, 43.828888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458390, -0.557811, 0.691900,
		-0.431601, 0.820261, 0.375356,
		-0.776916, -0.126565, -0.616751,
		38.757645, 34.177818, 43.643864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.687836, 34.531830, 44.422482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586628, 34.249062, 44.158283>,  <38.525902, 34.079403, 43.999763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586628, 34.249062, 44.158283>,  <38.687836, 34.531830, 44.422482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586628, 34.249062, 44.158283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266536, -0.605352, 0.750005,
		-0.930021, 0.365811, -0.035253,
		-0.253019, -0.706916, -0.660492,
		38.510723, 34.036987, 43.960136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026440, 34.154358, 44.733959>,  <38.687836, 34.531830, 44.422482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026440, 34.154358, 44.733959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160038, 33.908207, 44.448372>,  <38.240196, 33.760517, 44.277020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160038, 33.908207, 44.448372>,  <38.026440, 34.154358, 44.733959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160038, 33.908207, 44.448372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345935, -0.784638, 0.514463,
		-0.876800, 0.075159, -0.474946,
		0.333994, -0.615381, -0.713970,
		38.260235, 33.723591, 44.234180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468082, 33.853397, 44.360981>,  <38.026440, 34.154358, 44.733959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468082, 33.853397, 44.360981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772606, 33.603024, 44.293312>,  <37.955318, 33.452801, 44.252712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772606, 33.603024, 44.293312>,  <37.468082, 33.853397, 44.360981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772606, 33.603024, 44.293312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475360, -0.716252, 0.510898,
		-0.440957, -0.308533, -0.842831,
		0.761308, -0.625932, -0.169172,
		38.000999, 33.415245, 44.242561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160477, 33.189396, 44.303680>,  <37.468082, 33.853397, 44.360981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160477, 33.189396, 44.303680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.549908, 33.113602, 44.354649>,  <37.783566, 33.068127, 44.385231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.549908, 33.113602, 44.354649>,  <37.160477, 33.189396, 44.303680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549908, 33.113602, 44.354649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227638, -0.761666, 0.606668,
		-0.017903, -0.619646, -0.784677,
		0.973581, -0.189484, 0.127420,
		37.841984, 33.056755, 44.392876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227543, 32.549309, 44.094345>,  <37.160477, 33.189396, 44.303680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227543, 32.549309, 44.094345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540665, 32.608284, 44.336166>,  <37.728539, 32.643669, 44.481258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540665, 32.608284, 44.336166>,  <37.227543, 32.549309, 44.094345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540665, 32.608284, 44.336166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239288, -0.825501, 0.511165,
		0.574425, -0.544803, -0.610922,
		0.782801, 0.147439, 0.604553,
		37.775505, 32.652515, 44.517532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611263, 31.873657, 44.249451>,  <37.227543, 32.549309, 44.094345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611263, 31.873657, 44.249451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.677853, 32.137878, 44.542286>,  <37.717804, 32.296410, 44.717987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.677853, 32.137878, 44.542286>,  <37.611263, 31.873657, 44.249451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677853, 32.137878, 44.542286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159846, -0.714551, 0.681077,
		0.973004, -0.230401, -0.013366,
		0.166471, 0.660554, 0.732090,
		37.727795, 32.336044, 44.761913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940151, 31.486465, 44.779987>,  <37.611263, 31.873657, 44.249451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940151, 31.486465, 44.779987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837379, 31.814079, 44.985188>,  <37.775719, 32.010647, 45.108307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837379, 31.814079, 44.985188>,  <37.940151, 31.486465, 44.779987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837379, 31.814079, 44.985188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168744, -0.560689, 0.810650,
		0.951585, 0.121711, 0.282263,
		-0.256926, 0.819033, 0.513005,
		37.760300, 32.059788, 45.139088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285263, 31.415388, 45.262314>,  <37.940151, 31.486465, 44.779987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285263, 31.415388, 45.262314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006783, 31.675888, 45.383099>,  <37.839695, 31.832188, 45.455570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006783, 31.675888, 45.383099>,  <38.285263, 31.415388, 45.262314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006783, 31.675888, 45.383099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156294, -0.548079, 0.821694,
		0.700628, 0.524867, 0.483358,
		-0.696199, 0.651248, 0.301966,
		37.797924, 31.871262, 45.473690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521008, 31.708719, 45.856106>,  <38.285263, 31.415388, 45.262314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521008, 31.708719, 45.856106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130157, 31.777666, 45.905941>,  <37.895649, 31.819035, 45.935844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130157, 31.777666, 45.905941>,  <38.521008, 31.708719, 45.856106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130157, 31.777666, 45.905941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006477, -0.609654, 0.792641,
		0.212582, 0.773700, 0.596823,
		-0.977122, 0.172367, 0.124590,
		37.837021, 31.829376, 45.943317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562874, 31.808809, 46.492359>,  <38.521008, 31.708719, 45.856106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562874, 31.808809, 46.492359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171402, 31.788986, 46.412628>,  <37.936520, 31.777092, 46.364788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.171402, 31.788986, 46.412628>,  <38.562874, 31.808809, 46.492359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171402, 31.788986, 46.412628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135416, -0.573991, 0.807587,
		-0.154435, 0.817360, 0.555042,
		-0.978679, -0.049558, -0.199328,
		37.877800, 31.774118, 46.352829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132496, 32.071259, 47.079021>,  <38.562874, 31.808809, 46.492359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132496, 32.071259, 47.079021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913273, 31.813364, 46.865871>,  <37.781738, 31.658628, 46.737984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.913273, 31.813364, 46.865871>,  <38.132496, 32.071259, 47.079021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913273, 31.813364, 46.865871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042338, -0.614873, 0.787489,
		-0.835368, 0.454151, 0.309689,
		-0.548058, -0.644731, -0.532873,
		37.748856, 31.619944, 46.706009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559040, 31.863342, 47.546986>,  <38.132496, 32.071259, 47.079021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559040, 31.863342, 47.546986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572918, 31.583605, 47.261410>,  <37.581245, 31.415762, 47.090065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572918, 31.583605, 47.261410>,  <37.559040, 31.863342, 47.546986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572918, 31.583605, 47.261410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097587, -0.713329, 0.694002,
		-0.994622, 0.045591, -0.092998,
		0.034697, -0.699345, -0.713942,
		37.583328, 31.373802, 47.047226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965408, 31.506910, 47.606834>,  <37.559040, 31.863342, 47.546986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965408, 31.506910, 47.606834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181202, 31.252268, 47.386402>,  <37.310677, 31.099482, 47.254143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.181202, 31.252268, 47.386402>,  <36.965408, 31.506910, 47.606834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181202, 31.252268, 47.386402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287024, -0.754335, 0.590420,
		-0.791567, -0.160345, -0.589670,
		0.539480, -0.636607, -0.551084,
		37.343048, 31.061287, 47.221077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553940, 30.875326, 47.539600>,  <36.965408, 31.506910, 47.606834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553940, 30.875326, 47.539600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936760, 30.774233, 47.482773>,  <37.166451, 30.713577, 47.448677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936760, 30.774233, 47.482773>,  <36.553940, 30.875326, 47.539600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936760, 30.774233, 47.482773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162095, -0.872710, 0.460546,
		-0.240376, -0.417738, -0.876193,
		0.957050, -0.252731, -0.142066,
		37.223873, 30.698414, 47.440151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592632, 30.277811, 47.210957>,  <36.553940, 30.875326, 47.539600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592632, 30.277811, 47.210957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949871, 30.288771, 47.390568>,  <37.164215, 30.295347, 47.498337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949871, 30.288771, 47.390568>,  <36.592632, 30.277811, 47.210957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949871, 30.288771, 47.390568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182386, -0.890379, 0.417086,
		0.411235, -0.454395, -0.790197,
		0.893096, 0.027399, 0.449030,
		37.217800, 30.296989, 47.525276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789242, 29.502882, 47.287483>,  <36.592632, 30.277811, 47.210957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789242, 29.502882, 47.287483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032665, 29.699053, 47.537006>,  <37.178719, 29.816755, 47.686718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.032665, 29.699053, 47.537006>,  <36.789242, 29.502882, 47.287483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032665, 29.699053, 47.537006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025104, -0.797642, 0.602609,
		0.793109, -0.351065, -0.497727,
		0.608563, 0.490429, 0.623803,
		37.215233, 29.846182, 47.724148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438282, 29.134090, 47.476112>,  <36.789242, 29.502882, 47.287483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438282, 29.134090, 47.476112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397610, 29.395109, 47.776470>,  <37.373207, 29.551720, 47.956684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.397610, 29.395109, 47.776470>,  <37.438282, 29.134090, 47.476112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397610, 29.395109, 47.776470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167458, -0.755266, 0.633665,
		0.980621, -0.061309, 0.186073,
		-0.101685, 0.652544, 0.750897,
		37.367104, 29.590872, 48.001740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800190, 28.950550, 47.902515>,  <37.438282, 29.134090, 47.476112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800190, 28.950550, 47.902515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566647, 29.171381, 48.140617>,  <37.426521, 29.303879, 48.283478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566647, 29.171381, 48.140617>,  <37.800190, 28.950550, 47.902515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566647, 29.171381, 48.140617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152699, -0.794788, 0.587363,
		0.797366, 0.252042, 0.548345,
		-0.583858, 0.552076, 0.595250,
		37.391491, 29.337004, 48.319191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992405, 28.759371, 48.607494>,  <37.800190, 28.950550, 47.902515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992405, 28.759371, 48.607494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663502, 28.972878, 48.686478>,  <37.466160, 29.100981, 48.733868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663502, 28.972878, 48.686478>,  <37.992405, 28.759371, 48.607494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663502, 28.972878, 48.686478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202870, -0.599062, 0.774577,
		0.531732, 0.596842, 0.600867,
		-0.822256, 0.533764, 0.197459,
		37.416824, 29.133007, 48.745716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001213, 28.874792, 49.366425>,  <37.992405, 28.759371, 48.607494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001213, 28.874792, 49.366425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621147, 28.901062, 49.244530>,  <37.393108, 28.916824, 49.171391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621147, 28.901062, 49.244530>,  <38.001213, 28.874792, 49.366425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621147, 28.901062, 49.244530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293859, -0.514988, 0.805254,
		-0.104053, 0.854678, 0.508625,
		-0.950168, 0.065675, -0.304741,
		37.336098, 28.920765, 49.153107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539528, 29.140453, 49.935478>,  <38.001213, 28.874792, 49.366425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539528, 29.140453, 49.935478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307175, 28.936674, 49.681538>,  <37.167763, 28.814407, 49.529175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307175, 28.936674, 49.681538>,  <37.539528, 29.140453, 49.935478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307175, 28.936674, 49.681538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341434, -0.555502, 0.758182,
		-0.738914, 0.657177, 0.148741,
		-0.580886, -0.509447, -0.634851,
		37.132908, 28.783840, 49.491081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957058, 28.924593, 50.321236>,  <37.539528, 29.140453, 49.935478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957058, 28.924593, 50.321236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958164, 28.664745, 50.017136>,  <36.958828, 28.508837, 49.834675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958164, 28.664745, 50.017136>,  <36.957058, 28.924593, 50.321236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958164, 28.664745, 50.017136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416072, -0.692073, 0.589846,
		-0.909327, 0.314689, -0.272204,
		0.002767, -0.649620, -0.760254,
		36.958996, 28.469860, 49.789059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324345, 28.564775, 50.466156>,  <36.957058, 28.924593, 50.321236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324345, 28.564775, 50.466156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584290, 28.358286, 50.243015>,  <36.740257, 28.234392, 50.109131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584290, 28.358286, 50.243015>,  <36.324345, 28.564775, 50.466156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584290, 28.358286, 50.243015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235417, -0.834576, 0.498057,
		-0.722677, -0.192339, -0.663885,
		0.649859, -0.516225, -0.557849,
		36.779247, 28.203419, 50.075661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945068, 27.994593, 50.192062>,  <36.324345, 28.564775, 50.466156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945068, 27.994593, 50.192062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340572, 27.968405, 50.245815>,  <36.577877, 27.952692, 50.278069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.340572, 27.968405, 50.245815>,  <35.945068, 27.994593, 50.192062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340572, 27.968405, 50.245815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139045, -0.732838, 0.666045,
		0.054874, -0.677246, -0.733707,
		0.988765, -0.065470, 0.134382,
		36.637203, 27.948763, 50.286129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266895, 28.306028, 49.944244>,  <35.945068, 27.994593, 50.192062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266895, 28.306028, 49.944244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882767, 28.410837, 49.982468>,  <34.652290, 28.473722, 50.005402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882767, 28.410837, 49.982468>,  <35.266895, 28.306028, 49.944244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882767, 28.410837, 49.982468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161750, 0.802353, -0.574514,
		-0.227209, -0.536260, -0.812897,
		-0.960319, 0.262021, 0.095561,
		34.594669, 28.489443, 50.011135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987438, 28.518333, 49.252251>,  <35.266895, 28.306028, 49.944244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987438, 28.518333, 49.252251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744415, 28.674936, 49.528683>,  <34.598602, 28.768898, 49.694542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744415, 28.674936, 49.528683>,  <34.987438, 28.518333, 49.252251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744415, 28.674936, 49.528683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203280, 0.764456, -0.611787,
		-0.767821, -0.512180, -0.384866,
		-0.607559, 0.391508, 0.691082,
		34.562149, 28.792389, 49.736008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365955, 28.616631, 48.989616>,  <34.987438, 28.518333, 49.252251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365955, 28.616631, 48.989616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371437, 28.885572, 49.285656>,  <34.374725, 29.046938, 49.463280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371437, 28.885572, 49.285656>,  <34.365955, 28.616631, 48.989616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371437, 28.885572, 49.285656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218396, 0.724312, -0.653968,
		-0.975764, -0.152673, 0.156766,
		0.013704, 0.672356, 0.740101,
		34.375549, 29.087278, 49.507687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691208, 28.914295, 49.066193>,  <34.365955, 28.616631, 48.989616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691208, 28.914295, 49.066193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936558, 29.176065, 49.243053>,  <34.083767, 29.333128, 49.349171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.936558, 29.176065, 49.243053>,  <33.691208, 28.914295, 49.066193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936558, 29.176065, 49.243053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356396, 0.728943, -0.584486,
		-0.704808, 0.200926, 0.680349,
		0.613374, 0.654424, 0.442155,
		34.120571, 29.372393, 49.375702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381466, 29.542278, 49.086483>,  <33.691208, 28.914295, 49.066193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381466, 29.542278, 49.086483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743122, 29.696178, 49.160767>,  <33.960117, 29.788519, 49.205338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.743122, 29.696178, 49.160767>,  <33.381466, 29.542278, 49.086483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743122, 29.696178, 49.160767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219745, 0.791597, -0.570163,
		-0.366380, 0.474701, 0.800265,
		0.904145, 0.384751, 0.185713,
		34.014366, 29.811604, 49.216480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285847, 30.260693, 49.106026>,  <33.381466, 29.542278, 49.086483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285847, 30.260693, 49.106026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672028, 30.210312, 49.014771>,  <33.903736, 30.180084, 48.960018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672028, 30.210312, 49.014771>,  <33.285847, 30.260693, 49.106026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672028, 30.210312, 49.014771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034094, 0.806870, -0.589745,
		0.258356, 0.577146, 0.774697,
		0.965448, -0.125952, -0.228137,
		33.961662, 30.172527, 48.946331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558704, 30.966295, 49.003773>,  <33.285847, 30.260693, 49.106026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558704, 30.966295, 49.003773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818188, 30.708647, 48.841640>,  <33.973877, 30.554058, 48.744362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818188, 30.708647, 48.841640>,  <33.558704, 30.966295, 49.003773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818188, 30.708647, 48.841640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173383, 0.643680, -0.745395,
		0.741027, 0.413263, 0.529237,
		0.648704, -0.644119, -0.405332,
		34.012798, 30.515411, 48.720039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065586, 31.307957, 48.743797>,  <33.558704, 30.966295, 49.003773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065586, 31.307957, 48.743797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108250, 30.965591, 48.541397>,  <34.133846, 30.760172, 48.419956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108250, 30.965591, 48.541397>,  <34.065586, 31.307957, 48.743797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108250, 30.965591, 48.541397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247082, 0.515754, -0.820335,
		0.963107, -0.037526, 0.266491,
		0.106660, -0.855915, -0.505998,
		34.140247, 30.708817, 48.389599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678539, 31.322794, 48.497246>,  <34.065586, 31.307957, 48.743797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678539, 31.322794, 48.497246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512058, 31.076778, 48.229362>,  <34.412170, 30.929169, 48.068634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512058, 31.076778, 48.229362>,  <34.678539, 31.322794, 48.497246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512058, 31.076778, 48.229362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252465, 0.629405, -0.734922,
		0.873522, -0.474951, -0.106682,
		-0.416198, -0.615037, -0.669708,
		34.387199, 30.892267, 48.028450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134281, 31.236633, 48.089821>,  <34.678539, 31.322794, 48.497246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134281, 31.236633, 48.089821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816315, 31.154566, 47.861431>,  <34.625534, 31.105326, 47.724400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816315, 31.154566, 47.861431>,  <35.134281, 31.236633, 48.089821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816315, 31.154566, 47.861431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323735, 0.652485, -0.685171,
		0.513128, -0.729499, -0.452251,
		-0.794919, -0.205171, -0.570973,
		34.577839, 31.093014, 47.690140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503880, 31.221430, 47.476498>,  <35.134281, 31.236633, 48.089821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503880, 31.221430, 47.476498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112125, 31.235294, 47.396896>,  <34.877071, 31.243612, 47.349136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112125, 31.235294, 47.396896>,  <35.503880, 31.221430, 47.476498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112125, 31.235294, 47.396896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184157, 0.558014, -0.809140,
		0.082999, -0.829108, -0.552894,
		-0.979386, 0.034662, -0.199001,
		34.818310, 31.245693, 47.337196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479500, 31.132986, 46.715286>,  <35.503880, 31.221430, 47.476498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479500, 31.132986, 46.715286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142071, 31.312649, 46.833027>,  <34.939613, 31.420446, 46.903671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142071, 31.312649, 46.833027>,  <35.479500, 31.132986, 46.715286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142071, 31.312649, 46.833027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087661, 0.655952, -0.749695,
		-0.529814, -0.606618, -0.592716,
		-0.843571, 0.449157, 0.294356,
		34.889000, 31.447395, 46.921333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133869, 31.265194, 46.062675>,  <35.479500, 31.132986, 46.715286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133869, 31.265194, 46.062675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985142, 31.506111, 46.345234>,  <34.895905, 31.650661, 46.514771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985142, 31.506111, 46.345234>,  <35.133869, 31.265194, 46.062675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985142, 31.506111, 46.345234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015008, 0.756953, -0.653297,
		-0.928183, -0.253511, -0.272411,
		-0.371821, 0.602291, 0.706396,
		34.873596, 31.686798, 46.557152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623398, 31.697891, 45.867092>,  <35.133869, 31.265194, 46.062675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623398, 31.697891, 45.867092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788490, 31.905886, 46.166229>,  <34.887547, 32.030682, 46.345711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788490, 31.905886, 46.166229>,  <34.623398, 31.697891, 45.867092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788490, 31.905886, 46.166229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172452, 0.761575, -0.624710,
		-0.894377, 0.386807, 0.224657,
		0.412735, 0.519984, 0.747841,
		34.912312, 32.061882, 46.390583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446926, 32.325947, 45.653316>,  <34.623398, 31.697891, 45.867092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446926, 32.325947, 45.653316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.745720, 32.371510, 45.915321>,  <34.924995, 32.398846, 46.072525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.745720, 32.371510, 45.915321>,  <34.446926, 32.325947, 45.653316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745720, 32.371510, 45.915321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288198, 0.832364, -0.473405,
		-0.599133, 0.542399, 0.588934,
		0.746982, 0.113903, 0.655015,
		34.969814, 32.405682, 46.111824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377281, 33.122547, 45.864101>,  <34.446926, 32.325947, 45.653316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377281, 33.122547, 45.864101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725243, 32.950756, 45.961105>,  <34.934021, 32.847683, 46.019306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725243, 32.950756, 45.961105>,  <34.377281, 33.122547, 45.864101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725243, 32.950756, 45.961105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477408, 0.856697, -0.195326,
		-0.123867, 0.285691, 0.950283,
		0.869907, -0.429478, 0.242508,
		34.986214, 32.821911, 46.033859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684406, 33.518078, 46.378105>,  <34.377281, 33.122547, 45.864101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684406, 33.518078, 46.378105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968029, 33.335209, 46.163357>,  <35.138203, 33.225487, 46.034508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968029, 33.335209, 46.163357>,  <34.684406, 33.518078, 46.378105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968029, 33.335209, 46.163357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413743, 0.886255, -0.208253,
		0.571010, -0.074462, 0.817559,
		0.709059, -0.457174, -0.536868,
		35.180748, 33.198055, 46.002296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375027, 33.778316, 46.513817>,  <34.684406, 33.518078, 46.378105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375027, 33.778316, 46.513817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431431, 33.603893, 46.158295>,  <35.465275, 33.499241, 45.944981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431431, 33.603893, 46.158295>,  <35.375027, 33.778316, 46.513817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431431, 33.603893, 46.158295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450393, 0.827744, -0.334641,
		0.881624, -0.353122, 0.313119,
		0.141013, -0.436055, -0.888804,
		35.473736, 33.473076, 45.891655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067013, 33.985031, 46.387440>,  <35.375027, 33.778316, 46.513817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067013, 33.985031, 46.387440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937714, 33.872425, 46.026051>,  <35.860134, 33.804863, 45.809216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937714, 33.872425, 46.026051>,  <36.067013, 33.985031, 46.387440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937714, 33.872425, 46.026051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172796, 0.921116, -0.348837,
		0.930407, -0.268875, -0.249097,
		-0.323241, -0.281517, -0.903473,
		35.840740, 33.787971, 45.755009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598587, 34.226044, 45.910686>,  <36.067013, 33.985031, 46.387440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598587, 34.226044, 45.910686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251003, 34.182713, 45.717533>,  <36.042454, 34.156715, 45.601643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251003, 34.182713, 45.717533>,  <36.598587, 34.226044, 45.910686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251003, 34.182713, 45.717533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175634, 0.844723, -0.505565,
		0.462666, -0.524126, -0.715005,
		-0.868961, -0.108328, -0.482879,
		35.990314, 34.150215, 45.572670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.558910, 35.303104, 28.573616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.501297, 34.971142, 28.358021>,  <47.466728, 34.771965, 28.228662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.501297, 34.971142, 28.358021>,  <47.558910, 35.303104, 28.573616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.501297, 34.971142, 28.358021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426670, -0.439357, 0.790517,
		-0.892864, 0.343832, -0.290814,
		-0.144034, -0.829906, -0.538989,
		47.458088, 34.722168, 28.196323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.964237, 35.145512, 28.691631>,  <47.558910, 35.303104, 28.573616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.964237, 35.145512, 28.691631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.131962, 34.803627, 28.569227>,  <47.232597, 34.598495, 28.495785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.131962, 34.803627, 28.569227>,  <46.964237, 35.145512, 28.691631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131962, 34.803627, 28.569227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410881, -0.479246, 0.775564,
		-0.809539, -0.199472, -0.552140,
		0.419314, -0.854713, -0.306010,
		47.257755, 34.547215, 28.477425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495380, 34.650013, 28.794754>,  <46.964237, 35.145512, 28.691631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495380, 34.650013, 28.794754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.833355, 34.437595, 28.769186>,  <47.036140, 34.310146, 28.753845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.833355, 34.437595, 28.769186>,  <46.495380, 34.650013, 28.794754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.833355, 34.437595, 28.769186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361271, -0.654730, 0.663937,
		-0.394426, -0.537890, -0.745052,
		0.844933, -0.531039, -0.063918,
		47.086834, 34.278282, 28.750010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273479, 33.959469, 28.802740>,  <46.495380, 34.650013, 28.794754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273479, 33.959469, 28.802740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657425, 33.944279, 28.913893>,  <46.887791, 33.935165, 28.980583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.657425, 33.944279, 28.913893>,  <46.273479, 33.959469, 28.802740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657425, 33.944279, 28.913893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240814, -0.619484, 0.747160,
		0.143766, -0.784090, -0.603767,
		0.959864, -0.037979, 0.277880,
		46.945385, 33.932884, 28.997257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382893, 33.311192, 28.985388>,  <46.273479, 33.959469, 28.802740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382893, 33.311192, 28.985388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.670288, 33.500618, 29.189154>,  <46.842728, 33.614273, 29.311413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.670288, 33.500618, 29.189154>,  <46.382893, 33.311192, 28.985388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670288, 33.500618, 29.189154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073329, -0.676752, 0.732550,
		0.691658, -0.563687, -0.451515,
		0.718493, 0.473565, 0.509415,
		46.885838, 33.642689, 29.341978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717556, 32.793777, 29.313305>,  <46.382893, 33.311192, 28.985388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717556, 32.793777, 29.313305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.812252, 33.127327, 29.512749>,  <46.869068, 33.327457, 29.632414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.812252, 33.127327, 29.512749>,  <46.717556, 32.793777, 29.313305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812252, 33.127327, 29.512749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093898, -0.491157, 0.865995,
		0.967025, -0.251834, -0.037978,
		0.236741, 0.833873, 0.498608,
		46.883274, 33.377487, 29.662331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255543, 32.621719, 29.819180>,  <46.717556, 32.793777, 29.313305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255543, 32.621719, 29.819180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103588, 32.969028, 29.946800>,  <47.012417, 33.177414, 30.023373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103588, 32.969028, 29.946800>,  <47.255543, 32.621719, 29.819180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.103588, 32.969028, 29.946800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023689, -0.335665, 0.941684,
		0.924731, 0.365288, 0.106945,
		-0.379884, 0.868270, 0.319054,
		46.989624, 33.229511, 30.042517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.621128, 32.803383, 30.396835>,  <47.255543, 32.621719, 29.819180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.621128, 32.803383, 30.396835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.290924, 33.026577, 30.430759>,  <47.092804, 33.160492, 30.451113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.290924, 33.026577, 30.430759>,  <47.621128, 32.803383, 30.396835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.290924, 33.026577, 30.430759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007402, -0.160956, 0.986934,
		0.564342, 0.814094, 0.137000,
		-0.825508, 0.557982, 0.084808,
		47.043270, 33.193974, 30.456202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677505, 33.215282, 31.069674>,  <47.621128, 32.803383, 30.396835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677505, 33.215282, 31.069674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.289871, 33.231724, 30.972363>,  <47.057289, 33.241589, 30.913975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.289871, 33.231724, 30.972363>,  <47.677505, 33.215282, 31.069674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.289871, 33.231724, 30.972363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246364, -0.107747, 0.963169,
		0.013374, 0.993329, 0.114541,
		-0.969085, 0.041100, -0.243280,
		46.999146, 33.244053, 30.899378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374748, 33.638901, 31.477293>,  <47.677505, 33.215282, 31.069674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374748, 33.638901, 31.477293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.076977, 33.403469, 31.351181>,  <46.898315, 33.262211, 31.275513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.076977, 33.403469, 31.351181>,  <47.374748, 33.638901, 31.477293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.076977, 33.403469, 31.351181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355729, -0.049990, 0.933251,
		-0.565056, 0.806890, -0.172162,
		-0.744425, -0.588582, -0.315281,
		46.853649, 33.226894, 31.256598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881531, 33.822517, 31.949844>,  <47.374748, 33.638901, 31.477293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881531, 33.822517, 31.949844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.761013, 33.465748, 31.814972>,  <46.688702, 33.251686, 31.734049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.761013, 33.465748, 31.814972>,  <46.881531, 33.822517, 31.949844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.761013, 33.465748, 31.814972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512991, -0.146455, 0.845808,
		-0.803779, 0.427810, -0.413423,
		-0.301297, -0.891925, -0.337180,
		46.670624, 33.198170, 31.713818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293518, 33.833504, 32.121712>,  <46.881531, 33.822517, 31.949844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293518, 33.833504, 32.121712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.348347, 33.444515, 32.046341>,  <46.381245, 33.211121, 32.001118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.348347, 33.444515, 32.046341>,  <46.293518, 33.833504, 32.121712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348347, 33.444515, 32.046341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617181, -0.232629, 0.751646,
		-0.774790, 0.013268, -0.632079,
		0.137068, -0.972475, -0.188428,
		46.389465, 33.152771, 31.989813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738132, 33.575527, 32.078838>,  <46.293518, 33.833504, 32.121712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738132, 33.575527, 32.078838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.959312, 33.251942, 32.158661>,  <46.092018, 33.057789, 32.206554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.959312, 33.251942, 32.158661>,  <45.738132, 33.575527, 32.078838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.959312, 33.251942, 32.158661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561535, -0.184863, 0.806538,
		-0.615572, -0.558031, -0.556482,
		0.552946, -0.808967, 0.199558,
		46.125195, 33.009251, 32.218529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301228, 33.142483, 32.314522>,  <45.738132, 33.575527, 32.078838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301228, 33.142483, 32.314522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.656490, 33.008850, 32.440739>,  <45.869648, 32.928673, 32.516468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.656490, 33.008850, 32.440739>,  <45.301228, 33.142483, 32.314522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.656490, 33.008850, 32.440739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359642, -0.077864, 0.929836,
		-0.286069, -0.939323, -0.189304,
		0.888157, -0.334080, 0.315545,
		45.922935, 32.908627, 32.535404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109619, 32.616138, 32.678745>,  <45.301228, 33.142483, 32.314522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109619, 32.616138, 32.678745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469769, 32.724792, 32.814709>,  <45.685860, 32.789986, 32.896286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469769, 32.724792, 32.814709>,  <45.109619, 32.616138, 32.678745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469769, 32.724792, 32.814709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338363, -0.054035, 0.939463,
		0.273558, -0.960882, 0.043259,
		0.900376, 0.271635, 0.339909,
		45.739880, 32.806282, 32.916683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124924, 32.310745, 33.293854>,  <45.109619, 32.616138, 32.678745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124924, 32.310745, 33.293854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413857, 32.585228, 33.328167>,  <45.587215, 32.749916, 33.348755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413857, 32.585228, 33.328167>,  <45.124924, 32.310745, 33.293854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413857, 32.585228, 33.328167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267772, 0.163166, 0.949566,
		0.637603, -0.708869, 0.301606,
		0.722330, 0.686208, 0.085780,
		45.630554, 32.791092, 33.353901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.366257, 32.282326, 34.017193>,  <45.124924, 32.310745, 33.293854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.366257, 32.282326, 34.017193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480831, 32.631729, 33.859749>,  <45.549576, 32.841373, 33.765282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480831, 32.631729, 33.859749>,  <45.366257, 32.282326, 34.017193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480831, 32.631729, 33.859749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266175, 0.467203, 0.843133,
		0.920383, -0.136737, 0.366332,
		0.286439, 0.873513, -0.393610,
		45.566761, 32.893784, 33.741665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788998, 32.724907, 34.507847>,  <45.366257, 32.282326, 34.017193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788998, 32.724907, 34.507847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678017, 33.015938, 34.256882>,  <45.611427, 33.190556, 34.106300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678017, 33.015938, 34.256882>,  <45.788998, 32.724907, 34.507847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678017, 33.015938, 34.256882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109807, 0.624761, 0.773056,
		0.954445, 0.283378, -0.093446,
		-0.277449, 0.727578, -0.627417,
		45.594784, 33.234211, 34.068657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133511, 33.390553, 34.749901>,  <45.788998, 32.724907, 34.507847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133511, 33.390553, 34.749901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799301, 33.459930, 34.541359>,  <45.598774, 33.501556, 34.416233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.799301, 33.459930, 34.541359>,  <46.133511, 33.390553, 34.749901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799301, 33.459930, 34.541359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342092, 0.578314, 0.740626,
		0.429965, 0.797164, -0.423863,
		-0.835526, 0.173443, -0.521358,
		45.548645, 33.511963, 34.384953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928860, 34.014637, 35.010403>,  <46.133511, 33.390553, 34.749901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928860, 34.014637, 35.010403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604767, 33.890518, 34.811508>,  <45.410313, 33.816048, 34.692173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.604767, 33.890518, 34.811508>,  <45.928860, 34.014637, 35.010403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604767, 33.890518, 34.811508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571567, 0.606110, 0.553120,
		0.129747, 0.732357, -0.668445,
		-0.810233, -0.310295, -0.497232,
		45.361698, 33.797428, 34.662338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531734, 34.689018, 34.866432>,  <45.928860, 34.014637, 35.010403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531734, 34.689018, 34.866432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.283756, 34.376305, 34.839653>,  <45.134968, 34.188675, 34.823586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.283756, 34.376305, 34.839653>,  <45.531734, 34.689018, 34.866432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283756, 34.376305, 34.839653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694366, 0.506885, 0.510807,
		-0.365407, 0.363157, -0.857085,
		-0.619947, -0.781783, -0.066945,
		45.097771, 34.141769, 34.819569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247429, 34.849640, 34.124557>,  <45.531734, 34.689018, 34.866432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247429, 34.849640, 34.124557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.521198, 35.139893, 34.152901>,  <45.685459, 35.314045, 34.169907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.521198, 35.139893, 34.152901>,  <45.247429, 34.849640, 34.124557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521198, 35.139893, 34.152901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406069, 0.460105, -0.789564,
		-0.605536, 0.511624, 0.609563,
		0.684423, 0.725634, 0.070855,
		45.726524, 35.357582, 34.174156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931492, 35.362453, 33.803577>,  <45.247429, 34.849640, 34.124557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931492, 35.362453, 33.803577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315662, 35.472168, 33.784187>,  <45.546165, 35.537998, 33.772552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315662, 35.472168, 33.784187>,  <44.931492, 35.362453, 33.803577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315662, 35.472168, 33.784187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187257, 0.506992, -0.841364,
		-0.206198, 0.817145, 0.538290,
		0.960425, 0.274286, -0.048476,
		45.603790, 35.554455, 33.769646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955635, 36.009750, 33.622684>,  <44.931492, 35.362453, 33.803577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955635, 36.009750, 33.622684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320946, 35.898045, 33.504066>,  <45.540131, 35.831020, 33.432896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320946, 35.898045, 33.504066>,  <44.955635, 36.009750, 33.622684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320946, 35.898045, 33.504066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211570, 0.296897, -0.931177,
		0.348084, 0.913162, 0.212066,
		0.913278, -0.279261, -0.296543,
		45.594929, 35.814266, 33.415104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181625, 36.602352, 33.132519>,  <44.955635, 36.009750, 33.622684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181625, 36.602352, 33.132519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.427254, 36.298943, 33.045280>,  <45.574631, 36.116898, 32.992939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.427254, 36.298943, 33.045280>,  <45.181625, 36.602352, 33.132519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427254, 36.298943, 33.045280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021151, 0.260416, -0.965265,
		0.788969, 0.597352, 0.143870,
		0.614069, -0.758521, -0.218095,
		45.611473, 36.071384, 32.979851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801147, 36.866665, 32.757519>,  <45.181625, 36.602352, 33.132519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801147, 36.866665, 32.757519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755974, 36.476681, 32.680889>,  <45.728870, 36.242691, 32.634911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755974, 36.476681, 32.680889>,  <45.801147, 36.866665, 32.757519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755974, 36.476681, 32.680889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022235, 0.195241, -0.980503,
		0.993354, -0.106469, -0.043727,
		-0.112931, -0.974959, -0.191576,
		45.722095, 36.184193, 32.623417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323559, 36.768951, 32.225262>,  <45.801147, 36.866665, 32.757519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323559, 36.768951, 32.225262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098366, 36.439651, 32.196121>,  <45.963249, 36.242073, 32.178638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098366, 36.439651, 32.196121>,  <46.323559, 36.768951, 32.225262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098366, 36.439651, 32.196121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115112, 0.165395, -0.979486,
		0.818412, -0.543050, -0.187881,
		-0.562984, -0.823251, -0.072850,
		45.929470, 36.192677, 32.174267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539425, 36.486553, 31.593115>,  <46.323559, 36.768951, 32.225262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539425, 36.486553, 31.593115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183437, 36.313599, 31.651073>,  <45.969845, 36.209827, 31.685848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183437, 36.313599, 31.651073>,  <46.539425, 36.486553, 31.593115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183437, 36.313599, 31.651073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243891, 0.182835, -0.952412,
		0.385314, -0.882959, -0.268172,
		-0.889972, -0.432382, 0.144897,
		45.916447, 36.183884, 31.694542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459610, 36.033230, 30.977804>,  <46.539425, 36.486553, 31.593115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459610, 36.033230, 30.977804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.091934, 36.076836, 31.129175>,  <45.871330, 36.103001, 31.219997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.091934, 36.076836, 31.129175>,  <46.459610, 36.033230, 30.977804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091934, 36.076836, 31.129175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368994, 0.097351, -0.924319,
		-0.137605, -0.989262, -0.049258,
		-0.919189, 0.109015, 0.378428,
		45.816177, 36.109539, 31.242704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.027836, 35.697384, 30.508410>,  <46.459610, 36.033230, 30.977804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.027836, 35.697384, 30.508410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.766499, 35.937363, 30.693106>,  <45.609695, 36.081348, 30.803923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.766499, 35.937363, 30.693106>,  <46.027836, 35.697384, 30.508410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766499, 35.937363, 30.693106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470516, 0.156026, -0.868487,
		-0.593090, -0.784678, 0.180347,
		-0.653344, 0.599948, 0.461741,
		45.570496, 36.117348, 30.831629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362850, 35.542202, 30.306204>,  <46.027836, 35.697384, 30.508410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362850, 35.542202, 30.306204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322262, 35.912609, 30.451637>,  <45.297909, 36.134853, 30.538897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322262, 35.912609, 30.451637>,  <45.362850, 35.542202, 30.306204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322262, 35.912609, 30.451637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461506, 0.279948, -0.841808,
		-0.881315, -0.253216, 0.398956,
		-0.101472, 0.926019, 0.363583,
		45.291821, 36.190414, 30.560713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692875, 35.725254, 30.123816>,  <45.362850, 35.542202, 30.306204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692875, 35.725254, 30.123816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889439, 36.067245, 30.190168>,  <45.007378, 36.272442, 30.229980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.889439, 36.067245, 30.190168>,  <44.692875, 35.725254, 30.123816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889439, 36.067245, 30.190168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326508, 0.357434, -0.875005,
		-0.807406, 0.375827, 0.454807,
		0.491414, 0.854982, 0.165883,
		45.036861, 36.323742, 30.239933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198528, 36.355515, 30.062063>,  <44.692875, 35.725254, 30.123816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198528, 36.355515, 30.062063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576508, 36.477203, 30.013851>,  <44.803295, 36.550217, 29.984924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.576508, 36.477203, 30.013851>,  <44.198528, 36.355515, 30.062063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576508, 36.477203, 30.013851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262022, 0.482806, -0.835609,
		-0.196021, 0.821186, 0.535938,
		0.944945, 0.304224, -0.120529,
		44.859989, 36.568470, 29.977692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219238, 37.106602, 29.821325>,  <44.198528, 36.355515, 30.062063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219238, 37.106602, 29.821325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569580, 36.959385, 29.696472>,  <44.779785, 36.871056, 29.621561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569580, 36.959385, 29.696472>,  <44.219238, 37.106602, 29.821325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569580, 36.959385, 29.696472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133867, 0.436117, -0.889877,
		0.463640, 0.821185, 0.332705,
		0.875852, -0.368044, -0.312131,
		44.832336, 36.848972, 29.602833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490177, 37.626953, 29.533487>,  <44.219238, 37.106602, 29.821325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490177, 37.626953, 29.533487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.682117, 37.317436, 29.368082>,  <44.797283, 37.131725, 29.268839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.682117, 37.317436, 29.368082>,  <44.490177, 37.626953, 29.533487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682117, 37.317436, 29.368082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127173, 0.404998, -0.905430,
		0.868084, 0.487060, 0.095934,
		0.479852, -0.773789, -0.413513,
		44.826073, 37.085300, 29.244028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958694, 37.862900, 28.910641>,  <44.490177, 37.626953, 29.533487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958694, 37.862900, 28.910641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912624, 37.470726, 28.846788>,  <44.884983, 37.235420, 28.808477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912624, 37.470726, 28.846788>,  <44.958694, 37.862900, 28.910641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912624, 37.470726, 28.846788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038179, 0.164952, -0.985562,
		0.992611, -0.107421, -0.056431,
		-0.115178, -0.980434, -0.159632,
		44.878071, 37.176598, 28.798899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346455, 37.653065, 28.339962>,  <44.958694, 37.862900, 28.910641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346455, 37.653065, 28.339962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087605, 37.348690, 28.358711>,  <44.932293, 37.166065, 28.369961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087605, 37.348690, 28.358711>,  <45.346455, 37.653065, 28.339962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087605, 37.348690, 28.358711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022201, -0.080264, -0.996526,
		0.762060, -0.643837, 0.068835,
		-0.647125, -0.760942, 0.046872,
		44.893467, 37.120407, 28.372772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581661, 37.305920, 27.710312>,  <45.346455, 37.653065, 28.339962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581661, 37.305920, 27.710312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.214615, 37.175549, 27.801306>,  <44.994385, 37.097324, 27.855902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.214615, 37.175549, 27.801306>,  <45.581661, 37.305920, 27.710312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214615, 37.175549, 27.801306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286577, 0.145956, -0.946874,
		0.275408, -0.934061, -0.227335,
		-0.917618, -0.325926, 0.227483,
		44.939331, 37.077770, 27.869551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477814, 36.736412, 27.237921>,  <45.581661, 37.305920, 27.710312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477814, 36.736412, 27.237921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122055, 36.856308, 27.375978>,  <44.908600, 36.928246, 27.458813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122055, 36.856308, 27.375978>,  <45.477814, 36.736412, 27.237921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122055, 36.856308, 27.375978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318062, 0.136538, -0.938186,
		-0.328339, -0.944199, -0.026100,
		-0.889399, 0.299742, 0.345145,
		44.855236, 36.946232, 27.479523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.052883, 36.475159, 26.709236>,  <45.477814, 36.736412, 27.237921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.052883, 36.475159, 26.709236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840775, 36.734337, 26.927952>,  <44.713509, 36.889843, 27.059181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840775, 36.734337, 26.927952>,  <45.052883, 36.475159, 26.709236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840775, 36.734337, 26.927952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405337, 0.372698, -0.834745,
		-0.744657, -0.664275, 0.065006,
		-0.530272, 0.647947, 0.546787,
		44.681694, 36.928722, 27.091988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370972, 36.522873, 26.523790>,  <45.052883, 36.475159, 26.709236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370972, 36.522873, 26.523790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441467, 36.874786, 26.700392>,  <44.483765, 37.085934, 26.806353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441467, 36.874786, 26.700392>,  <44.370972, 36.522873, 26.523790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441467, 36.874786, 26.700392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420748, 0.472818, -0.774219,
		-0.889893, -0.049312, 0.453496,
		0.176242, 0.879779, 0.441506,
		44.494339, 37.138721, 26.832844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680176, 36.832970, 26.582935>,  <44.370972, 36.522873, 26.523790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680176, 36.832970, 26.582935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965359, 37.112965, 26.599459>,  <44.136471, 37.280960, 26.609373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.965359, 37.112965, 26.599459>,  <43.680176, 36.832970, 26.582935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965359, 37.112965, 26.599459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374855, 0.430263, -0.821193,
		-0.592598, 0.569992, 0.569154,
		0.712959, 0.699988, 0.041308,
		44.179245, 37.322960, 26.611851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.071724, 35.417171, 41.950916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697071, 35.485031, 41.828312>,  <39.472279, 35.525745, 41.754749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697071, 35.485031, 41.828312>,  <40.071724, 35.417171, 41.950916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697071, 35.485031, 41.828312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348917, 0.530153, -0.772784,
		0.031395, -0.830757, -0.555749,
		-0.936627, 0.169648, -0.306510,
		39.416084, 35.535927, 41.736359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040585, 35.222778, 41.162552>,  <40.071724, 35.417171, 41.950916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040585, 35.222778, 41.162552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747547, 35.481339, 41.247852>,  <39.571724, 35.636475, 41.299034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747547, 35.481339, 41.247852>,  <40.040585, 35.222778, 41.162552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747547, 35.481339, 41.247852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242873, 0.540915, -0.805247,
		-0.635861, -0.538126, -0.553264,
		-0.732594, 0.646398, 0.213250,
		39.527767, 35.675259, 41.311829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669193, 35.252819, 40.579292>,  <40.040585, 35.222778, 41.162552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669193, 35.252819, 40.579292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578068, 35.590652, 40.773109>,  <39.523392, 35.793354, 40.889400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578068, 35.590652, 40.773109>,  <39.669193, 35.252819, 40.579292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578068, 35.590652, 40.773109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031659, 0.503788, -0.863247,
		-0.973191, -0.181315, -0.141506,
		-0.227809, 0.844585, 0.484541,
		39.509724, 35.844028, 40.918472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231056, 35.581112, 40.118267>,  <39.669193, 35.252819, 40.579292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231056, 35.581112, 40.118267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329933, 35.874847, 40.371136>,  <39.389259, 36.051086, 40.522858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329933, 35.874847, 40.371136>,  <39.231056, 35.581112, 40.118267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329933, 35.874847, 40.371136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005472, 0.653471, -0.756932,
		-0.968950, 0.183651, 0.165553,
		0.247195, 0.734335, 0.632176,
		39.404091, 36.095146, 40.560787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658291, 36.082344, 40.079094>,  <39.231056, 35.581112, 40.118267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658291, 36.082344, 40.079094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990524, 36.259243, 40.214474>,  <39.189865, 36.365383, 40.295700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990524, 36.259243, 40.214474>,  <38.658291, 36.082344, 40.079094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990524, 36.259243, 40.214474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132887, 0.747579, -0.650743,
		-0.540810, 0.495520, 0.679694,
		0.830581, 0.442251, 0.338451,
		39.239700, 36.391918, 40.316010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499763, 36.801689, 40.197960>,  <38.658291, 36.082344, 40.079094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499763, 36.801689, 40.197960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898849, 36.781193, 40.180351>,  <39.138302, 36.768894, 40.169785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898849, 36.781193, 40.180351>,  <38.499763, 36.801689, 40.197960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898849, 36.781193, 40.180351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011380, 0.769849, -0.638124,
		0.066587, 0.636166, 0.768674,
		0.997716, -0.051238, -0.044022,
		39.198166, 36.765820, 40.167145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661850, 37.467525, 40.190502>,  <38.499763, 36.801689, 40.197960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661850, 37.467525, 40.190502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991203, 37.304298, 40.032761>,  <39.188816, 37.206364, 39.938114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991203, 37.304298, 40.032761>,  <38.661850, 37.467525, 40.190502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991203, 37.304298, 40.032761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066239, 0.759283, -0.647380,
		0.563605, 0.506921, 0.652212,
		0.823384, -0.408069, -0.394358,
		39.238220, 37.181877, 39.914452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136066, 38.056149, 40.134796>,  <38.661850, 37.467525, 40.190502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136066, 38.056149, 40.134796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240623, 37.753109, 39.895557>,  <39.303356, 37.571285, 39.752014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240623, 37.753109, 39.895557>,  <39.136066, 38.056149, 40.134796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240623, 37.753109, 39.895557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029699, 0.613035, -0.789497,
		0.964776, 0.224131, 0.137742,
		0.261391, -0.757597, -0.598098,
		39.319042, 37.525829, 39.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567753, 38.332485, 39.616337>,  <39.136066, 38.056149, 40.134796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567753, 38.332485, 39.616337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533180, 37.966660, 39.458294>,  <39.512436, 37.747166, 39.363468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533180, 37.966660, 39.458294>,  <39.567753, 38.332485, 39.616337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533180, 37.966660, 39.458294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031719, 0.393862, -0.918622,
		0.995753, -0.091929, -0.005032,
		-0.086430, -0.914561, -0.395105,
		39.507252, 37.692291, 39.339764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106842, 38.220966, 39.259102>,  <39.567753, 38.332485, 39.616337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106842, 38.220966, 39.259102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806122, 38.015862, 39.093273>,  <39.625690, 37.892799, 38.993778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806122, 38.015862, 39.093273>,  <40.106842, 38.220966, 39.259102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806122, 38.015862, 39.093273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078091, 0.555055, -0.828140,
		0.654747, -0.654972, -0.377250,
		-0.751803, -0.512762, -0.414569,
		39.580582, 37.862034, 38.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236496, 38.144344, 38.481739>,  <40.106842, 38.220966, 39.259102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236496, 38.144344, 38.481739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843899, 38.071476, 38.505329>,  <39.608341, 38.027756, 38.519485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843899, 38.071476, 38.505329>,  <40.236496, 38.144344, 38.481739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843899, 38.071476, 38.505329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155640, 0.579586, -0.799910,
		0.111534, -0.794289, -0.597215,
		-0.981497, -0.182168, 0.058980,
		39.549450, 38.016827, 38.523022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036160, 37.717602, 37.953106>,  <40.236496, 38.144344, 38.481739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036160, 37.717602, 37.953106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705387, 37.926037, 38.037632>,  <39.506924, 38.051098, 38.088348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705387, 37.926037, 38.037632>,  <40.036160, 37.717602, 37.953106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705387, 37.926037, 38.037632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123131, 0.198872, -0.972260,
		-0.548659, -0.830009, -0.100291,
		-0.826929, 0.521090, 0.211313,
		39.457310, 38.082363, 38.101025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882175, 37.174183, 37.453140>,  <40.036160, 37.717602, 37.953106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882175, 37.174183, 37.453140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586678, 36.905380, 37.432491>,  <39.409378, 36.744099, 37.420101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586678, 36.905380, 37.432491>,  <39.882175, 37.174183, 37.453140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586678, 36.905380, 37.432491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360369, 0.458559, -0.812316,
		0.569559, -0.581485, -0.580928,
		-0.738739, -0.672011, -0.051627,
		39.365055, 36.703777, 37.417004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962757, 36.814442, 36.818344>,  <39.882175, 37.174183, 37.453140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962757, 36.814442, 36.818344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581841, 36.822765, 36.940140>,  <39.353291, 36.827759, 37.013218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581841, 36.822765, 36.940140>,  <39.962757, 36.814442, 36.818344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581841, 36.822765, 36.940140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250688, 0.515703, -0.819272,
		-0.174077, -0.856515, -0.485880,
		-0.952288, 0.020812, 0.304490,
		39.296154, 36.829010, 37.031487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456821, 36.631641, 36.337330>,  <39.962757, 36.814442, 36.818344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456821, 36.631641, 36.337330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623875, 36.345497, 36.113247>,  <40.724106, 36.173809, 35.978798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623875, 36.345497, 36.113247>,  <40.456821, 36.631641, 36.337330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623875, 36.345497, 36.113247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316087, -0.692430, 0.648559,
		-0.851863, -0.093785, -0.515300,
		0.417635, -0.715363, -0.560211,
		40.749165, 36.130890, 35.945183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942295, 36.033329, 36.055168>,  <40.456821, 36.631641, 36.337330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942295, 36.033329, 36.055168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321152, 35.935822, 36.138592>,  <40.548466, 35.877316, 36.188644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321152, 35.935822, 36.138592>,  <39.942295, 36.033329, 36.055168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321152, 35.935822, 36.138592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320710, -0.703389, 0.634341,
		-0.007937, -0.667698, -0.744390,
		0.947144, -0.243768, 0.208554,
		40.605293, 35.862690, 36.201157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070145, 35.275234, 35.942444>,  <39.942295, 36.033329, 36.055168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070145, 35.275234, 35.942444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361336, 35.386505, 36.193096>,  <40.536049, 35.453266, 36.343487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361336, 35.386505, 36.193096>,  <40.070145, 35.275234, 35.942444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361336, 35.386505, 36.193096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085642, -0.869934, 0.485676,
		0.680229, -0.407228, -0.609470,
		0.727979, 0.278174, 0.626630,
		40.579731, 35.469959, 36.381084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499958, 34.740231, 36.055355>,  <40.070145, 35.275234, 35.942444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499958, 34.740231, 36.055355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571804, 34.972034, 36.373325>,  <40.614910, 35.111118, 36.564106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571804, 34.972034, 36.373325>,  <40.499958, 34.740231, 36.055355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571804, 34.972034, 36.373325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214517, -0.765549, 0.606562,
		0.960063, -0.279472, -0.013188,
		0.179614, 0.579508, 0.794927,
		40.625687, 35.145885, 36.611805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914997, 34.258278, 36.514950>,  <40.499958, 34.740231, 36.055355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914997, 34.258278, 36.514950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768074, 34.570744, 36.716888>,  <40.679920, 34.758221, 36.838051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768074, 34.570744, 36.716888>,  <40.914997, 34.258278, 36.514950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768074, 34.570744, 36.716888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382973, -0.621664, 0.683275,
		0.847593, 0.057633, 0.527508,
		-0.367312, 0.781160, 0.504846,
		40.657879, 34.805092, 36.868343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153679, 34.111073, 37.181614>,  <40.914997, 34.258278, 36.514950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153679, 34.111073, 37.181614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856194, 34.376114, 37.217049>,  <40.677704, 34.535137, 37.238308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856194, 34.376114, 37.217049>,  <41.153679, 34.111073, 37.181614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856194, 34.376114, 37.217049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330571, -0.479702, 0.812778,
		0.581043, 0.575191, 0.575798,
		-0.743715, 0.662602, 0.088586,
		40.633080, 34.574894, 37.243626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349934, 34.309052, 37.911114>,  <41.153679, 34.111073, 37.181614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349934, 34.309052, 37.911114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972626, 34.429302, 37.854748>,  <40.746239, 34.501453, 37.820927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972626, 34.429302, 37.854748>,  <41.349934, 34.309052, 37.911114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972626, 34.429302, 37.854748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266176, -0.431039, 0.862181,
		0.198459, 0.850780, 0.486609,
		-0.943273, 0.300632, -0.140913,
		40.689644, 34.519493, 37.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134167, 34.630184, 38.529591>,  <41.349934, 34.309052, 37.911114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134167, 34.630184, 38.529591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800278, 34.529079, 38.333893>,  <40.599945, 34.468418, 38.216476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800278, 34.529079, 38.333893>,  <41.134167, 34.630184, 38.529591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800278, 34.529079, 38.333893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282965, -0.565301, 0.774833,
		-0.472413, 0.785206, 0.400346,
		-0.834719, -0.252757, -0.489242,
		40.549862, 34.453251, 38.187119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633728, 34.723923, 39.053333>,  <41.134167, 34.630184, 38.529591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633728, 34.723923, 39.053333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456425, 34.497826, 38.775047>,  <40.350044, 34.362167, 38.608074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456425, 34.497826, 38.775047>,  <40.633728, 34.723923, 39.053333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456425, 34.497826, 38.775047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499240, -0.488946, 0.715326,
		-0.744502, 0.664402, -0.065465,
		-0.443256, -0.565245, -0.695718,
		40.323448, 34.328251, 38.566334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905239, 34.715069, 39.151161>,  <40.633728, 34.723923, 39.053333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905239, 34.715069, 39.151161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966183, 34.373703, 38.951771>,  <40.002750, 34.168884, 38.832138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966183, 34.373703, 38.951771>,  <39.905239, 34.715069, 39.151161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966183, 34.373703, 38.951771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614262, -0.476885, 0.628699,
		-0.774253, 0.210404, -0.596877,
		0.152361, -0.853411, -0.498473,
		40.011890, 34.117680, 38.802227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241959, 34.486858, 39.046307>,  <39.905239, 34.715069, 39.151161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241959, 34.486858, 39.046307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484634, 34.170197, 39.017426>,  <39.630238, 33.980198, 39.000099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484634, 34.170197, 39.017426>,  <39.241959, 34.486858, 39.046307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484634, 34.170197, 39.017426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551064, -0.484285, 0.679556,
		-0.572940, -0.372491, -0.730062,
		0.606686, -0.791656, -0.072200,
		39.666641, 33.932701, 38.995766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773140, 33.965981, 39.102325>,  <39.241959, 34.486858, 39.046307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773140, 33.965981, 39.102325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121685, 33.794220, 39.197277>,  <39.330811, 33.691166, 39.254250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121685, 33.794220, 39.197277>,  <38.773140, 33.965981, 39.102325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121685, 33.794220, 39.197277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456126, -0.530672, 0.714379,
		-0.180782, -0.730756, -0.658265,
		0.871360, -0.429398, 0.237381,
		39.383091, 33.665401, 39.268490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621696, 33.240528, 39.210514>,  <38.773140, 33.965981, 39.102325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621696, 33.240528, 39.210514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987411, 33.247540, 39.372387>,  <39.206841, 33.251747, 39.469513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987411, 33.247540, 39.372387>,  <38.621696, 33.240528, 39.210514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987411, 33.247540, 39.372387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340827, -0.506598, 0.791957,
		0.218891, -0.862004, -0.457204,
		0.914288, 0.017525, 0.404684,
		39.261700, 33.252796, 39.493793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800518, 32.442669, 39.392536>,  <38.621696, 33.240528, 39.210514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800518, 32.442669, 39.392536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024185, 32.702438, 39.598679>,  <39.158386, 32.858299, 39.722363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024185, 32.702438, 39.598679>,  <38.800518, 32.442669, 39.392536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024185, 32.702438, 39.598679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202763, -0.495611, 0.844545,
		0.803880, -0.576734, -0.145450,
		0.559164, 0.649421, 0.515352,
		39.191933, 32.897266, 39.753284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636337, 31.798088, 38.994675>,  <38.800518, 32.442669, 39.392536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636337, 31.798088, 38.994675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239101, 31.763412, 38.963051>,  <38.000759, 31.742607, 38.944077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239101, 31.763412, 38.963051>,  <38.636337, 31.798088, 38.994675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239101, 31.763412, 38.963051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014313, 0.758343, -0.651699,
		0.116451, -0.646066, -0.754346,
		-0.993093, -0.086688, -0.079063,
		37.941174, 31.737406, 38.939331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540367, 31.899832, 38.407158>,  <38.636337, 31.798088, 38.994675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540367, 31.899832, 38.407158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160576, 31.942221, 38.525314>,  <37.932701, 31.967653, 38.596207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160576, 31.942221, 38.525314>,  <38.540367, 31.899832, 38.407158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160576, 31.942221, 38.525314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131900, 0.719327, -0.682035,
		-0.284759, -0.686541, -0.669010,
		-0.949481, 0.105973, 0.295390,
		37.875732, 31.974012, 38.613930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178036, 32.070564, 37.814377>,  <38.540367, 31.899832, 38.407158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178036, 32.070564, 37.814377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933117, 32.211956, 38.097260>,  <37.786163, 32.296791, 38.266987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933117, 32.211956, 38.097260>,  <38.178036, 32.070564, 37.814377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933117, 32.211956, 38.097260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223414, 0.780673, -0.583641,
		-0.758402, -0.515363, -0.399034,
		-0.612302, 0.353484, 0.707203,
		37.749428, 32.318001, 38.309422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697342, 32.301266, 37.440899>,  <38.178036, 32.070564, 37.814377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697342, 32.301266, 37.440899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632027, 32.495136, 37.784626>,  <37.592838, 32.611458, 37.990864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632027, 32.495136, 37.784626>,  <37.697342, 32.301266, 37.440899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632027, 32.495136, 37.784626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049169, 0.865929, -0.497744,
		-0.985352, -0.123530, -0.117569,
		-0.163292, 0.484672, 0.859319,
		37.583038, 32.640537, 38.042423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041275, 32.716869, 37.329865>,  <37.697342, 32.301266, 37.440899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041275, 32.716869, 37.329865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213409, 32.896194, 37.643253>,  <37.316689, 33.003792, 37.831287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213409, 32.896194, 37.643253>,  <37.041275, 32.716869, 37.329865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213409, 32.896194, 37.643253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047242, 0.877944, -0.476427,
		-0.901432, 0.168011, 0.398990,
		0.430336, 0.448316, 0.783469,
		37.342510, 33.030689, 37.878296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620522, 33.199116, 37.549850>,  <37.041275, 32.716869, 37.329865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620522, 33.199116, 37.549850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984467, 33.299812, 37.681778>,  <37.202831, 33.360229, 37.760933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984467, 33.299812, 37.681778>,  <36.620522, 33.199116, 37.549850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984467, 33.299812, 37.681778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087951, 0.893864, -0.439627,
		-0.405485, 0.370991, 0.835432,
		0.909861, 0.251739, 0.329820,
		37.257423, 33.375336, 37.780724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609425, 33.906265, 37.652157>,  <36.620522, 33.199116, 37.549850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609425, 33.906265, 37.652157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005474, 33.855488, 37.628326>,  <37.243103, 33.825020, 37.614029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005474, 33.855488, 37.628326>,  <36.609425, 33.906265, 37.652157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005474, 33.855488, 37.628326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075227, 0.839374, -0.538324,
		0.118341, 0.528524, 0.840630,
		0.990119, -0.126944, -0.059573,
		37.302509, 33.817406, 37.610455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946602, 34.557110, 37.851208>,  <36.609425, 33.906265, 37.652157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946602, 34.557110, 37.851208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204872, 34.363136, 37.615261>,  <37.359833, 34.246750, 37.473694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204872, 34.363136, 37.615261>,  <36.946602, 34.557110, 37.851208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204872, 34.363136, 37.615261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169373, 0.844174, -0.508608,
		0.744594, 0.228486, 0.627195,
		0.645672, -0.484937, -0.589868,
		37.398575, 34.217655, 37.438301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538288, 35.020626, 37.749428>,  <36.946602, 34.557110, 37.851208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538288, 35.020626, 37.749428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536900, 34.744408, 37.460117>,  <37.536068, 34.578674, 37.286530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536900, 34.744408, 37.460117>,  <37.538288, 35.020626, 37.749428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536900, 34.744408, 37.460117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056057, 0.722009, -0.689609,
		0.998422, -0.042937, 0.036206,
		-0.003469, -0.690550, -0.723276,
		37.535858, 34.537243, 37.243134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032875, 35.270866, 37.322624>,  <37.538288, 35.020626, 37.749428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032875, 35.270866, 37.322624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848846, 35.026703, 37.064713>,  <37.738430, 34.880203, 36.909966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848846, 35.026703, 37.064713>,  <38.032875, 35.270866, 37.322624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848846, 35.026703, 37.064713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176861, 0.648639, -0.740261,
		0.870090, -0.454607, -0.190461,
		-0.460069, -0.610409, -0.644777,
		37.710827, 34.843582, 36.871281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352894, 35.427216, 36.722839>,  <38.032875, 35.270866, 37.322624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352894, 35.427216, 36.722839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045185, 35.222099, 36.570377>,  <37.860561, 35.099030, 36.478901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045185, 35.222099, 36.570377>,  <38.352894, 35.427216, 36.722839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045185, 35.222099, 36.570377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128779, 0.459866, -0.878601,
		0.625814, -0.724964, -0.287723,
		-0.769268, -0.512788, -0.381151,
		37.814404, 35.068264, 36.456032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616348, 35.025669, 36.142040>,  <38.352894, 35.427216, 36.722839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616348, 35.025669, 36.142040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231770, 35.128391, 36.102699>,  <38.001022, 35.190025, 36.079094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231770, 35.128391, 36.102699>,  <38.616348, 35.025669, 36.142040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231770, 35.128391, 36.102699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166011, 0.256899, -0.952073,
		-0.219232, -0.931694, -0.289627,
		-0.961446, 0.256807, -0.098351,
		37.943336, 35.205433, 36.073193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.294907, 28.513308, 41.256207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953503, 28.721672, 41.261497>,  <37.748661, 28.846691, 41.264671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953503, 28.721672, 41.261497>,  <38.294907, 28.513308, 41.256207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953503, 28.721672, 41.261497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213612, 0.372930, -0.902936,
		-0.475282, -0.767838, -0.429572,
		-0.853509, 0.520911, 0.013228,
		37.697449, 28.877945, 41.265465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048756, 28.427355, 40.556110>,  <38.294907, 28.513308, 41.256207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048756, 28.427355, 40.556110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.858952, 28.737612, 40.722588>,  <37.745068, 28.923765, 40.822475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.858952, 28.737612, 40.722588>,  <38.048756, 28.427355, 40.556110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858952, 28.737612, 40.722588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221170, 0.562703, -0.796523,
		-0.852009, -0.285913, -0.438560,
		-0.474515, 0.775641, 0.416193,
		37.716599, 28.970304, 40.847446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426056, 28.650679, 40.109570>,  <38.048756, 28.427355, 40.556110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426056, 28.650679, 40.109570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532154, 28.971027, 40.324326>,  <37.595814, 29.163237, 40.453178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.532154, 28.971027, 40.324326>,  <37.426056, 28.650679, 40.109570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532154, 28.971027, 40.324326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051641, 0.567833, -0.821522,
		-0.962796, 0.190183, 0.191975,
		0.265249, 0.800872, 0.536886,
		37.611729, 29.211288, 40.485390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018341, 29.208601, 39.863495>,  <37.426056, 28.650679, 40.109570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018341, 29.208601, 39.863495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312824, 29.403091, 40.051781>,  <37.489513, 29.519787, 40.164753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.312824, 29.403091, 40.051781>,  <37.018341, 29.208601, 39.863495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312824, 29.403091, 40.051781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012031, 0.704849, -0.709255,
		-0.676644, 0.516499, 0.524768,
		0.736212, 0.486227, 0.470718,
		37.533688, 29.548960, 40.192997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784817, 29.959803, 39.883415>,  <37.018341, 29.208601, 39.863495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784817, 29.959803, 39.883415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180500, 29.961693, 39.942001>,  <37.417908, 29.962828, 39.977154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180500, 29.961693, 39.942001>,  <36.784817, 29.959803, 39.883415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180500, 29.961693, 39.942001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099737, 0.710551, -0.696541,
		-0.107361, 0.703630, 0.702409,
		0.989205, 0.004725, 0.146464,
		37.477261, 29.963110, 39.985939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904453, 30.692274, 39.850117>,  <36.784817, 29.959803, 39.883415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904453, 30.692274, 39.850117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277042, 30.552147, 39.810848>,  <37.500595, 30.468071, 39.787285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277042, 30.552147, 39.810848>,  <36.904453, 30.692274, 39.850117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277042, 30.552147, 39.810848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259562, 0.828988, -0.495386,
		0.254929, 0.435955, 0.863108,
		0.931471, -0.350318, -0.098175,
		37.556484, 30.447052, 39.781395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255398, 31.141266, 40.125278>,  <36.904453, 30.692274, 39.850117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255398, 31.141266, 40.125278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.514622, 30.954866, 39.884323>,  <37.670155, 30.843027, 39.739750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.514622, 30.954866, 39.884323>,  <37.255398, 31.141266, 40.125278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514622, 30.954866, 39.884323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286212, 0.881996, -0.374388,
		0.705765, 0.070215, 0.704958,
		0.648058, -0.465997, -0.602386,
		37.709038, 30.815067, 39.703606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994492, 31.532078, 40.199322>,  <37.255398, 31.141266, 40.125278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994492, 31.532078, 40.199322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894264, 31.332926, 39.867218>,  <37.834129, 31.213434, 39.667957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894264, 31.332926, 39.867218>,  <37.994492, 31.532078, 40.199322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894264, 31.332926, 39.867218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117945, 0.835530, -0.536636,
		0.960888, -0.232388, -0.150632,
		-0.250566, -0.497881, -0.830260,
		37.819096, 31.183561, 39.618141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493134, 31.694365, 39.694233>,  <37.994492, 31.532078, 40.199322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493134, 31.694365, 39.694233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168880, 31.581676, 39.488899>,  <37.974327, 31.514063, 39.365700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168880, 31.581676, 39.488899>,  <38.493134, 31.694365, 39.694233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168880, 31.581676, 39.488899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087493, 0.808540, -0.581900,
		0.578980, -0.516620, -0.630782,
		-0.810634, -0.281719, -0.513329,
		37.925690, 31.497160, 39.334900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230564, 32.048595, 39.811577>,  <38.493134, 31.694365, 39.694233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230564, 32.048595, 39.811577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285156, 32.396088, 40.002018>,  <39.317909, 32.604584, 40.116283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285156, 32.396088, 40.002018>,  <39.230564, 32.048595, 39.811577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285156, 32.396088, 40.002018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112830, -0.491107, 0.863761,
		0.984197, -0.064163, -0.165044,
		0.136476, 0.868733, 0.476107,
		39.326099, 32.656708, 40.144852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766735, 31.978516, 40.242733>,  <39.230564, 32.048595, 39.811577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766735, 31.978516, 40.242733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588299, 32.283974, 40.429432>,  <39.481239, 32.467247, 40.541451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588299, 32.283974, 40.429432>,  <39.766735, 31.978516, 40.242733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588299, 32.283974, 40.429432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033039, -0.507105, 0.861251,
		0.894379, 0.399614, 0.200983,
		-0.446087, 0.763645, 0.466747,
		39.454472, 32.513065, 40.569454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211189, 32.169140, 40.883827>,  <39.766735, 31.978516, 40.242733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211189, 32.169140, 40.883827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835781, 32.297066, 40.935829>,  <39.610538, 32.373821, 40.967030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835781, 32.297066, 40.935829>,  <40.211189, 32.169140, 40.883827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835781, 32.297066, 40.935829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010424, -0.350164, 0.936631,
		0.345072, 0.880400, 0.325302,
		-0.938518, 0.319814, 0.130009,
		39.554226, 32.393009, 40.974831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184341, 32.533016, 41.576683>,  <40.211189, 32.169140, 40.883827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184341, 32.533016, 41.576683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810013, 32.423531, 41.487854>,  <39.585415, 32.357838, 41.434555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810013, 32.423531, 41.487854>,  <40.184341, 32.533016, 41.576683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810013, 32.423531, 41.487854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060787, -0.495277, 0.866606,
		-0.347191, 0.824488, 0.446853,
		-0.935822, -0.273714, -0.222074,
		39.529266, 32.341415, 41.421230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815567, 32.574722, 42.190594>,  <40.184341, 32.533016, 41.576683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815567, 32.574722, 42.190594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611233, 32.336376, 41.942726>,  <39.488632, 32.193371, 41.794006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611233, 32.336376, 41.942726>,  <39.815567, 32.574722, 42.190594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611233, 32.336376, 41.942726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024257, -0.710541, 0.703238,
		-0.859336, 0.374271, 0.348516,
		-0.510836, -0.595863, -0.619672,
		39.457981, 32.157616, 41.756824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344002, 32.281193, 42.656693>,  <39.815567, 32.574722, 42.190594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344002, 32.281193, 42.656693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324776, 32.025787, 42.349449>,  <39.313240, 31.872543, 42.165104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.324776, 32.025787, 42.349449>,  <39.344002, 32.281193, 42.656693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324776, 32.025787, 42.349449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002375, -0.769065, 0.639166,
		-0.998841, 0.028900, 0.038485,
		-0.048070, -0.638516, -0.768106,
		39.310356, 31.834232, 42.119019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746307, 31.715910, 42.846745>,  <39.344002, 32.281193, 42.656693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746307, 31.715910, 42.846745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959282, 31.557833, 42.547321>,  <39.087067, 31.462986, 42.367668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959282, 31.557833, 42.547321>,  <38.746307, 31.715910, 42.846745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959282, 31.557833, 42.547321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084899, -0.854935, 0.511740,
		-0.842202, -0.336021, -0.421647,
		0.532436, -0.395191, -0.748556,
		39.119011, 31.439276, 42.322754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473816, 31.003904, 42.621723>,  <38.746307, 31.715910, 42.846745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473816, 31.003904, 42.621723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864208, 31.020636, 42.536194>,  <39.098442, 31.030674, 42.484875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864208, 31.020636, 42.536194>,  <38.473816, 31.003904, 42.621723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864208, 31.020636, 42.536194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138655, -0.876259, 0.461459,
		-0.168061, -0.480021, -0.861008,
		0.975977, 0.041830, -0.213822,
		39.157001, 31.033184, 42.472046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597153, 30.404408, 42.458687>,  <38.473816, 31.003904, 42.621723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597153, 30.404408, 42.458687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971680, 30.528378, 42.524723>,  <39.196396, 30.602760, 42.564346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971680, 30.528378, 42.524723>,  <38.597153, 30.404408, 42.458687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971680, 30.528378, 42.524723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189692, -0.842052, 0.504941,
		0.295509, -0.441469, -0.847219,
		0.936318, 0.309926, 0.165091,
		39.252575, 30.621355, 42.574249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012653, 29.802921, 42.372143>,  <38.597153, 30.404408, 42.458687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012653, 29.802921, 42.372143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217960, 30.069117, 42.588909>,  <39.341145, 30.228834, 42.718971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217960, 30.069117, 42.588909>,  <39.012653, 29.802921, 42.372143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217960, 30.069117, 42.588909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277036, -0.726114, 0.629292,
		0.812283, -0.172866, -0.557058,
		0.513271, 0.665489, 0.541920,
		39.371941, 30.268763, 42.751484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524536, 29.320482, 42.526630>,  <39.012653, 29.802921, 42.372143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524536, 29.320482, 42.526630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573421, 29.650251, 42.747681>,  <39.602753, 29.848112, 42.880310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573421, 29.650251, 42.747681>,  <39.524536, 29.320482, 42.526630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573421, 29.650251, 42.747681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196481, -0.565874, 0.800739,
		0.972862, 0.010720, -0.231139,
		0.122212, 0.824422, 0.552623,
		39.610085, 29.897577, 42.913467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152367, 29.167831, 42.939873>,  <39.524536, 29.320482, 42.526630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152367, 29.167831, 42.939873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.917892, 29.438341, 43.118328>,  <39.777206, 29.600647, 43.225399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.917892, 29.438341, 43.118328>,  <40.152367, 29.167831, 42.939873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917892, 29.438341, 43.118328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050730, -0.518946, 0.853300,
		0.808585, 0.522827, 0.269893,
		-0.586189, 0.676274, 0.446135,
		39.742035, 29.641224, 43.252167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479729, 29.239408, 43.576290>,  <40.152367, 29.167831, 42.939873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479729, 29.239408, 43.576290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097061, 29.347610, 43.619377>,  <39.867458, 29.412533, 43.645229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097061, 29.347610, 43.619377>,  <40.479729, 29.239408, 43.576290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097061, 29.347610, 43.619377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034149, -0.471632, 0.881134,
		0.289154, 0.839279, 0.460435,
		-0.956673, 0.270507, 0.107713,
		39.810059, 29.428762, 43.651691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459595, 29.398346, 44.267262>,  <40.479729, 29.239408, 43.576290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459595, 29.398346, 44.267262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.078609, 29.339880, 44.160343>,  <39.850018, 29.304800, 44.096191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.078609, 29.339880, 44.160343>,  <40.459595, 29.398346, 44.267262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078609, 29.339880, 44.160343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190411, -0.399267, 0.896844,
		-0.237807, 0.905109, 0.352457,
		-0.952466, -0.146164, -0.267291,
		39.792870, 29.296030, 44.080154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.408012, 32.699837, 44.608231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.734871, 32.490402, 44.511784>,  <32.930984, 32.364742, 44.453915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.734871, 32.490402, 44.511784>,  <32.408012, 32.699837, 44.608231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734871, 32.490402, 44.511784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324708, 0.763708, -0.557956,
		0.476280, 0.377636, 0.794070,
		0.817142, -0.523585, -0.241118,
		32.980015, 32.333328, 44.439449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882904, 33.108242, 44.706860>,  <32.408012, 32.699837, 44.608231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882904, 33.108242, 44.706860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046146, 32.847145, 44.451553>,  <33.144093, 32.690487, 44.298370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046146, 32.847145, 44.451553>,  <32.882904, 33.108242, 44.706860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046146, 32.847145, 44.451553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286638, 0.755394, -0.589252,
		0.866769, 0.057526, 0.495381,
		0.408105, -0.652740, -0.638263,
		33.168579, 32.651321, 44.260075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619534, 33.352718, 44.610600>,  <32.882904, 33.108242, 44.706860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619534, 33.352718, 44.610600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555984, 33.135929, 44.280502>,  <33.517857, 33.005856, 44.082443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555984, 33.135929, 44.280502>,  <33.619534, 33.352718, 44.610600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555984, 33.135929, 44.280502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292121, 0.772629, -0.563658,
		0.943093, -0.330620, 0.035574,
		-0.158871, -0.541974, -0.825242,
		33.508324, 32.973335, 44.032928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231937, 33.319321, 44.208267>,  <33.619534, 33.352718, 44.610600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231937, 33.319321, 44.208267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941677, 33.240250, 43.944645>,  <33.767521, 33.192806, 43.786472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.941677, 33.240250, 43.944645>,  <34.231937, 33.319321, 44.208267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941677, 33.240250, 43.944645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427833, 0.620543, -0.657180,
		0.538881, -0.758849, -0.365725,
		-0.725649, -0.197673, -0.659060,
		33.723984, 33.180946, 43.746925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509281, 33.315750, 43.541245>,  <34.231937, 33.319321, 44.208267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509281, 33.315750, 43.541245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128223, 33.357273, 43.426914>,  <33.899590, 33.382187, 43.358315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128223, 33.357273, 43.426914>,  <34.509281, 33.315750, 43.541245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128223, 33.357273, 43.426914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262792, 0.753987, -0.602033,
		0.153012, -0.648635, -0.745560,
		-0.952642, 0.103810, -0.285825,
		33.842430, 33.388416, 43.341167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590473, 33.411358, 42.871586>,  <34.509281, 33.315750, 43.541245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590473, 33.411358, 42.871586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209923, 33.526680, 42.914970>,  <33.981594, 33.595875, 42.941002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209923, 33.526680, 42.914970>,  <34.590473, 33.411358, 42.871586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209923, 33.526680, 42.914970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090166, 0.597329, -0.796912,
		-0.294543, -0.748382, -0.594280,
		-0.951375, 0.288309, 0.108461,
		33.924511, 33.613171, 42.947510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292831, 33.343529, 42.216877>,  <34.590473, 33.411358, 42.871586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292831, 33.343529, 42.216877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.050198, 33.588169, 42.420052>,  <33.904617, 33.734951, 42.541958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.050198, 33.588169, 42.420052>,  <34.292831, 33.343529, 42.216877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050198, 33.588169, 42.420052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148488, 0.540507, -0.828133,
		-0.781028, -0.577756, -0.237049,
		-0.606585, 0.611596, 0.507941,
		33.868221, 33.771648, 42.572433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876270, 33.679649, 41.655590>,  <34.292831, 33.343529, 42.216877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876270, 33.679649, 41.655590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809132, 33.910858, 41.975018>,  <33.768848, 34.049583, 42.166676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.809132, 33.910858, 41.975018>,  <33.876270, 33.679649, 41.655590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809132, 33.910858, 41.975018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007369, 0.810775, -0.585312,
		-0.985785, -0.092359, -0.140347,
		-0.167849, 0.578026, 0.798569,
		33.758778, 34.084267, 42.214588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314430, 34.034546, 41.567558>,  <33.876270, 33.679649, 41.655590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314430, 34.034546, 41.567558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533329, 34.245880, 41.827213>,  <33.664669, 34.372681, 41.983006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533329, 34.245880, 41.827213>,  <33.314430, 34.034546, 41.567558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533329, 34.245880, 41.827213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107162, 0.813427, -0.571711,
		-0.830082, 0.243305, 0.501763,
		0.547248, 0.528337, 0.649138,
		33.697502, 34.404381, 42.021954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857056, 34.607723, 41.663174>,  <33.314430, 34.034546, 41.567558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857056, 34.607723, 41.663174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230991, 34.707661, 41.764088>,  <33.455353, 34.767624, 41.824638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.230991, 34.707661, 41.764088>,  <32.857056, 34.607723, 41.663174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230991, 34.707661, 41.764088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079022, 0.839117, -0.538180,
		-0.346161, 0.483177, 0.804185,
		0.934841, 0.249845, 0.252288,
		33.511444, 34.782616, 41.839775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823601, 35.385834, 41.833969>,  <32.857056, 34.607723, 41.663174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823601, 35.385834, 41.833969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194401, 35.273190, 41.734886>,  <33.416882, 35.205601, 41.675438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194401, 35.273190, 41.734886>,  <32.823601, 35.385834, 41.833969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194401, 35.273190, 41.734886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133622, 0.865105, -0.483464,
		0.350445, 0.415073, 0.839585,
		0.927002, -0.281614, -0.247709,
		33.472500, 35.188705, 41.660572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245411, 35.943653, 41.990101>,  <32.823601, 35.385834, 41.833969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245411, 35.943653, 41.990101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471981, 35.724636, 41.743732>,  <33.607922, 35.593227, 41.595913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471981, 35.724636, 41.743732>,  <33.245411, 35.943653, 41.990101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471981, 35.724636, 41.743732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211339, 0.818892, -0.533621,
		0.796553, 0.172089, 0.579559,
		0.566427, -0.547541, -0.615921,
		33.641911, 35.560375, 41.558956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942791, 36.204365, 41.898682>,  <33.245411, 35.943653, 41.990101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942791, 36.204365, 41.898682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920456, 35.989418, 41.562084>,  <33.907055, 35.860451, 41.360126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920456, 35.989418, 41.562084>,  <33.942791, 36.204365, 41.898682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920456, 35.989418, 41.562084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401740, 0.759484, -0.511653,
		0.914050, -0.366630, 0.173479,
		-0.055833, -0.537370, -0.841497,
		33.903706, 35.828209, 41.309635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617279, 36.316101, 41.474400>,  <33.942791, 36.204365, 41.898682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617279, 36.316101, 41.474400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357338, 36.190735, 41.197426>,  <34.201374, 36.115517, 41.031242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.357338, 36.190735, 41.197426>,  <34.617279, 36.316101, 41.474400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357338, 36.190735, 41.197426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442387, 0.584834, -0.679899,
		0.618046, -0.748159, -0.241408,
		-0.649856, -0.313413, -0.692430,
		34.162380, 36.096710, 40.989697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316933, 36.079041, 41.620579>,  <34.617279, 36.316101, 41.474400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316933, 36.079041, 41.620579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648357, 36.173973, 41.823421>,  <35.847214, 36.230934, 41.945126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648357, 36.173973, 41.823421>,  <35.316933, 36.079041, 41.620579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648357, 36.173973, 41.823421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271302, -0.622092, 0.734436,
		0.489772, -0.746106, -0.451054,
		0.828564, 0.237334, 0.507103,
		35.896927, 36.245174, 41.975552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676159, 35.446213, 41.896366>,  <35.316933, 36.079041, 41.620579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676159, 35.446213, 41.896366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811119, 35.733528, 42.139748>,  <35.892094, 35.905918, 42.285778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811119, 35.733528, 42.139748>,  <35.676159, 35.446213, 41.896366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811119, 35.733528, 42.139748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207617, -0.573662, 0.792343,
		0.918181, -0.393662, -0.044424,
		0.337400, 0.718291, 0.608457,
		35.912338, 35.949017, 42.322285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074287, 35.143200, 42.382408>,  <35.676159, 35.446213, 41.896366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074287, 35.143200, 42.382408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.995045, 35.497543, 42.550224>,  <35.947498, 35.710148, 42.650913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.995045, 35.497543, 42.550224>,  <36.074287, 35.143200, 42.382408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995045, 35.497543, 42.550224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011665, -0.425862, 0.904713,
		0.980110, 0.184126, 0.074034,
		-0.198110, 0.885855, 0.419540,
		35.935612, 35.763298, 42.676086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521999, 35.170643, 43.019886>,  <36.074287, 35.143200, 42.382408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521999, 35.170643, 43.019886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250797, 35.452835, 43.102459>,  <36.088078, 35.622150, 43.152004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250797, 35.452835, 43.102459>,  <36.521999, 35.170643, 43.019886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250797, 35.452835, 43.102459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076226, -0.346802, 0.934836,
		0.731098, 0.618084, 0.288908,
		-0.678001, 0.705479, 0.206432,
		36.047398, 35.664478, 43.164387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755077, 35.352905, 43.533569>,  <36.521999, 35.170643, 43.019886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755077, 35.352905, 43.533569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370789, 35.462826, 43.549076>,  <36.140217, 35.528778, 43.558380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370789, 35.462826, 43.549076>,  <36.755077, 35.352905, 43.533569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370789, 35.462826, 43.549076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078664, -0.403611, 0.911543,
		0.266144, 0.872686, 0.409374,
		-0.960718, 0.274805, 0.038770,
		36.082573, 35.545269, 43.560707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585190, 35.820126, 44.234245>,  <36.755077, 35.352905, 43.533569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585190, 35.820126, 44.234245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.244003, 35.677876, 44.081413>,  <36.039291, 35.592525, 43.989716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.244003, 35.677876, 44.081413>,  <36.585190, 35.820126, 44.234245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244003, 35.677876, 44.081413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209221, -0.437674, 0.874453,
		-0.478204, 0.825815, 0.298915,
		-0.852964, -0.355628, -0.382076,
		35.988113, 35.571186, 43.966789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076881, 35.990955, 44.814110>,  <36.585190, 35.820126, 44.234245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076881, 35.990955, 44.814110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920460, 35.722305, 44.562397>,  <35.826607, 35.561115, 44.411369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920460, 35.722305, 44.562397>,  <36.076881, 35.990955, 44.814110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920460, 35.722305, 44.562397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212085, -0.599570, 0.771710,
		-0.895599, 0.435240, 0.092021,
		-0.391052, -0.671626, -0.629282,
		35.803143, 35.520817, 44.373611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449120, 35.818634, 45.044483>,  <36.076881, 35.990955, 44.814110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449120, 35.818634, 45.044483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584709, 35.513454, 44.824303>,  <35.666065, 35.330345, 44.692192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584709, 35.513454, 44.824303>,  <35.449120, 35.818634, 45.044483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584709, 35.513454, 44.824303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055936, -0.600405, 0.797737,
		-0.939131, -0.239623, -0.246199,
		0.338976, -0.762951, -0.550456,
		35.686401, 35.284569, 44.659164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027977, 35.247608, 45.212971>,  <35.449120, 35.818634, 45.044483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027977, 35.247608, 45.212971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348854, 35.067196, 45.056480>,  <35.541382, 34.958950, 44.962585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348854, 35.067196, 45.056480>,  <35.027977, 35.247608, 45.212971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348854, 35.067196, 45.056480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082757, -0.732919, 0.675263,
		-0.591297, -0.509317, -0.625271,
		0.802196, -0.451027, -0.391223,
		35.589512, 34.931889, 44.939114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862198, 34.580544, 45.017773>,  <35.027977, 35.247608, 45.212971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862198, 34.580544, 45.017773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251637, 34.508808, 45.074257>,  <35.485302, 34.465767, 45.108147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251637, 34.508808, 45.074257>,  <34.862198, 34.580544, 45.017773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251637, 34.508808, 45.074257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223662, -0.873046, 0.433320,
		0.045570, -0.453463, -0.890109,
		0.973601, -0.179337, 0.141207,
		35.543716, 34.455006, 45.116619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028362, 33.907684, 44.717724>,  <34.862198, 34.580544, 45.017773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028362, 33.907684, 44.717724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321411, 33.975376, 44.981430>,  <35.497238, 34.015991, 45.139652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.321411, 33.975376, 44.981430>,  <35.028362, 33.907684, 44.717724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321411, 33.975376, 44.981430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013941, -0.964664, 0.263112,
		0.680496, -0.201952, -0.704373,
		0.732619, 0.169227, 0.659265,
		35.541199, 34.026146, 45.179211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465782, 33.339222, 44.602242>,  <35.028362, 33.907684, 44.717724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465782, 33.339222, 44.602242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.571022, 33.483799, 44.960045>,  <35.634167, 33.570545, 45.174725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.571022, 33.483799, 44.960045>,  <35.465782, 33.339222, 44.602242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571022, 33.483799, 44.960045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203896, -0.927059, 0.314623,
		0.942978, 0.099611, -0.317601,
		0.263095, 0.361440, 0.894507,
		35.649952, 33.592232, 45.228397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855503, 32.827019, 44.861988>,  <35.465782, 33.339222, 44.602242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855503, 32.827019, 44.861988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.734344, 33.024815, 45.187870>,  <35.661652, 33.143490, 45.383400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.734344, 33.024815, 45.187870>,  <35.855503, 32.827019, 44.861988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734344, 33.024815, 45.187870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189704, -0.869035, 0.456936,
		0.933952, -0.016148, 0.357032,
		-0.302895, 0.494487, 0.814701,
		35.643475, 33.173161, 45.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120285, 32.456509, 45.421669>,  <35.855503, 32.827019, 44.861988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120285, 32.456509, 45.421669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.822243, 32.667210, 45.585304>,  <35.643417, 32.793633, 45.683487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.822243, 32.667210, 45.585304>,  <36.120285, 32.456509, 45.421669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822243, 32.667210, 45.585304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134393, -0.719369, 0.681503,
		0.653270, 0.452811, 0.606796,
		-0.745102, 0.526754, 0.409088,
		35.598713, 32.825237, 45.708031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817207, 32.622757, 45.807129>,  <36.120285, 32.456509, 45.421669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817207, 32.622757, 45.807129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133492, 32.390907, 45.728329>,  <37.323261, 32.251797, 45.681049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133492, 32.390907, 45.728329>,  <36.817207, 32.622757, 45.807129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133492, 32.390907, 45.728329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317203, 0.663149, -0.677949,
		0.523597, 0.473574, 0.708219,
		0.790714, -0.579621, -0.197004,
		37.370705, 32.217022, 45.669228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284294, 33.121243, 45.724800>,  <36.817207, 32.622757, 45.807129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284294, 33.121243, 45.724800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444248, 32.790359, 45.566906>,  <37.540222, 32.591827, 45.472172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444248, 32.790359, 45.566906>,  <37.284294, 33.121243, 45.724800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444248, 32.790359, 45.566906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416137, 0.547577, -0.725941,
		0.816651, 0.126034, 0.563203,
		0.399890, -0.827209, -0.394732,
		37.564217, 32.542198, 45.448486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022003, 33.133850, 45.744923>,  <37.284294, 33.121243, 45.724800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022003, 33.133850, 45.744923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934807, 32.888378, 45.441376>,  <37.882488, 32.741096, 45.259247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.934807, 32.888378, 45.441376>,  <38.022003, 33.133850, 45.744923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934807, 32.888378, 45.441376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652681, 0.486430, -0.580855,
		0.725594, -0.621919, 0.294499,
		-0.217992, -0.613679, -0.758866,
		37.869408, 32.704273, 45.213715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694309, 32.923248, 45.390770>,  <38.022003, 33.133850, 45.744923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694309, 32.923248, 45.390770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.387218, 32.891758, 45.136402>,  <38.202965, 32.872864, 44.983780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.387218, 32.891758, 45.136402>,  <38.694309, 32.923248, 45.390770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387218, 32.891758, 45.136402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562294, 0.393141, -0.727507,
		0.307279, -0.916102, -0.257560,
		-0.767727, -0.078723, -0.635922,
		38.156902, 32.868141, 44.945625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073460, 32.747700, 44.713993>,  <38.694309, 32.923248, 45.390770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073460, 32.747700, 44.713993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706959, 32.854263, 44.594318>,  <38.487061, 32.918201, 44.522514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706959, 32.854263, 44.594318>,  <39.073460, 32.747700, 44.713993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706959, 32.854263, 44.594318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399732, 0.558648, -0.726723,
		-0.026470, -0.785453, -0.618355,
		-0.916250, 0.266413, -0.299183,
		38.432083, 32.934189, 44.504562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029827, 32.650658, 43.970684>,  <39.073460, 32.747700, 44.713993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029827, 32.650658, 43.970684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.741512, 32.902901, 44.085777>,  <38.568523, 33.054249, 44.154835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.741512, 32.902901, 44.085777>,  <39.029827, 32.650658, 43.970684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741512, 32.902901, 44.085777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292720, 0.653205, -0.698311,
		-0.628312, -0.419110, -0.655416,
		-0.720791, 0.630611, 0.287735,
		38.525276, 33.092083, 44.172096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835285, 32.938725, 43.330223>,  <39.029827, 32.650658, 43.970684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835285, 32.938725, 43.330223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648163, 33.186016, 43.582874>,  <38.535889, 33.334393, 43.734463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.648163, 33.186016, 43.582874>,  <38.835285, 32.938725, 43.330223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648163, 33.186016, 43.582874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030632, 0.725557, -0.687480,
		-0.883300, -0.302260, -0.358358,
		-0.467807, 0.618228, 0.631626,
		38.507820, 33.371483, 43.772362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231590, 33.199814, 42.958652>,  <38.835285, 32.938725, 43.330223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231590, 33.199814, 42.958652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300430, 33.445759, 43.266506>,  <38.341732, 33.593327, 43.451218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300430, 33.445759, 43.266506>,  <38.231590, 33.199814, 42.958652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300430, 33.445759, 43.266506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104236, 0.765534, -0.634895,
		-0.979549, 0.189487, 0.067656,
		0.172098, 0.614859, 0.769630,
		38.352058, 33.630219, 43.497395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864540, 33.838520, 42.754185>,  <38.231590, 33.199814, 42.958652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864540, 33.838520, 42.754185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.128574, 33.953045, 43.031982>,  <38.286995, 34.021759, 43.198662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.128574, 33.953045, 43.031982>,  <37.864540, 33.838520, 42.754185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128574, 33.953045, 43.031982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208895, 0.818090, -0.535810,
		-0.721563, 0.498755, 0.480199,
		0.660084, 0.286309, 0.694490,
		38.326599, 34.038937, 43.240330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742813, 34.572014, 42.764175>,  <37.864540, 33.838520, 42.754185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742813, 34.572014, 42.764175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.099686, 34.509293, 42.933605>,  <38.313808, 34.471661, 43.035263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.099686, 34.509293, 42.933605>,  <37.742813, 34.572014, 42.764175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099686, 34.509293, 42.933605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378723, 0.770722, -0.512402,
		-0.246118, 0.617577, 0.747011,
		0.892186, -0.156799, 0.423579,
		38.367340, 34.462254, 43.060680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979645, 35.160656, 43.026970>,  <37.742813, 34.572014, 42.764175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979645, 35.160656, 43.026970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309135, 34.941307, 42.969337>,  <38.506828, 34.809696, 42.934757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309135, 34.941307, 42.969337>,  <37.979645, 35.160656, 43.026970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309135, 34.941307, 42.969337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394633, 0.736965, -0.548769,
		0.407111, 0.395178, 0.823465,
		0.823726, -0.548376, -0.144077,
		38.556252, 34.776794, 42.926113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547020, 35.595531, 43.289692>,  <37.979645, 35.160656, 43.026970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547020, 35.595531, 43.289692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.661987, 35.330791, 43.012753>,  <38.730968, 35.171947, 42.846588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.661987, 35.330791, 43.012753>,  <38.547020, 35.595531, 43.289692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661987, 35.330791, 43.012753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418330, 0.736999, -0.530880,
		0.861622, -0.137046, 0.488697,
		0.287414, -0.661854, -0.692345,
		38.748211, 35.132236, 42.805050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141827, 35.904171, 42.918575>,  <38.547020, 35.595531, 43.289692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141827, 35.904171, 42.918575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.072086, 35.596161, 42.673080>,  <39.030243, 35.411354, 42.525784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.072086, 35.596161, 42.673080>,  <39.141827, 35.904171, 42.918575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072086, 35.596161, 42.673080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231633, 0.573716, -0.785618,
		0.957052, -0.279133, 0.078336,
		-0.174349, -0.770022, -0.613733,
		39.019783, 35.365154, 42.488960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747662, 35.911793, 42.505295>,  <39.141827, 35.904171, 42.918575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747662, 35.911793, 42.505295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468929, 35.704720, 42.306725>,  <39.301689, 35.580475, 42.187584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468929, 35.704720, 42.306725>,  <39.747662, 35.911793, 42.505295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468929, 35.704720, 42.306725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250202, 0.473205, -0.844675,
		0.672183, -0.712800, -0.200217,
		-0.696828, -0.517681, -0.496424,
		39.259880, 35.549416, 42.157799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.818810, 32.669125, 28.285463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708683, 32.292248, 28.361849>,  <29.642607, 32.066120, 28.407681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708683, 32.292248, 28.361849>,  <29.818810, 32.669125, 28.285463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708683, 32.292248, 28.361849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772514, 0.335059, 0.539405,
		-0.572210, 0.000982, -0.820106,
		-0.275314, -0.942197, 0.190966,
		29.626089, 32.009590, 28.419138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211256, 32.603851, 27.885725>,  <29.818810, 32.669125, 28.285463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211256, 32.603851, 27.885725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192799, 32.337727, 28.183781>,  <29.181725, 32.178051, 28.362614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.192799, 32.337727, 28.183781>,  <29.211256, 32.603851, 27.885725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192799, 32.337727, 28.183781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849354, 0.418763, 0.321304,
		-0.525803, -0.618062, -0.584406,
		-0.046141, -0.665310, 0.745140,
		29.178957, 32.138134, 28.407322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476286, 32.397835, 28.040874>,  <29.211256, 32.603851, 27.885725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476286, 32.397835, 28.040874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669004, 32.295940, 28.376249>,  <28.784636, 32.234802, 28.577475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669004, 32.295940, 28.376249>,  <28.476286, 32.397835, 28.040874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669004, 32.295940, 28.376249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848573, 0.103083, 0.518939,
		-0.218624, -0.961499, -0.166501,
		0.481796, -0.254741, 0.838439,
		28.813543, 32.219517, 28.627781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089937, 31.928108, 28.384033>,  <28.476286, 32.397835, 28.040874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089937, 31.928108, 28.384033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316195, 32.086319, 28.673477>,  <28.451948, 32.181244, 28.847143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.316195, 32.086319, 28.673477>,  <28.089937, 31.928108, 28.384033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316195, 32.086319, 28.673477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818919, 0.166130, 0.549338,
		0.097062, -0.903307, 0.417871,
		0.565641, 0.395522, 0.723610,
		28.485888, 32.204975, 28.890560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854744, 31.723980, 29.041466>,  <28.089937, 31.928108, 28.384033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854744, 31.723980, 29.041466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063854, 32.042351, 29.163582>,  <28.189322, 32.233372, 29.236851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063854, 32.042351, 29.163582>,  <27.854744, 31.723980, 29.041466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063854, 32.042351, 29.163582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717899, 0.217931, 0.661156,
		0.459700, -0.564805, 0.685325,
		0.522778, 0.795928, 0.305290,
		28.220688, 32.281128, 29.255169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862991, 31.629103, 29.774055>,  <27.854744, 31.723980, 29.041466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862991, 31.629103, 29.774055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956228, 32.008915, 29.690094>,  <28.012171, 32.236801, 29.639717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956228, 32.008915, 29.690094>,  <27.862991, 31.629103, 29.774055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956228, 32.008915, 29.690094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577530, 0.308826, 0.755702,
		0.782386, -0.054923, 0.620368,
		0.233091, 0.949531, -0.209902,
		28.026155, 32.293774, 29.627123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146429, 31.941891, 30.421534>,  <27.862991, 31.629103, 29.774055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146429, 31.941891, 30.421534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997849, 32.232670, 30.190510>,  <27.908701, 32.407135, 30.051895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997849, 32.232670, 30.190510>,  <28.146429, 31.941891, 30.421534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997849, 32.232670, 30.190510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542044, 0.335254, 0.770579,
		0.753799, 0.599295, 0.269507,
		-0.371451, 0.726946, -0.577559,
		27.886414, 32.450752, 30.017242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056646, 32.497700, 30.826963>,  <28.146429, 31.941891, 30.421534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056646, 32.497700, 30.826963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847019, 32.647507, 30.520998>,  <27.721243, 32.737389, 30.337420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847019, 32.647507, 30.520998>,  <28.056646, 32.497700, 30.826963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847019, 32.647507, 30.520998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579407, 0.501476, 0.642503,
		0.624213, 0.779910, -0.045810,
		-0.524067, 0.374516, -0.764913,
		27.689798, 32.759861, 30.291525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992447, 33.173733, 30.930677>,  <28.056646, 32.497700, 30.826963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992447, 33.173733, 30.930677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693319, 33.082672, 30.681215>,  <27.513844, 33.028038, 30.531538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693319, 33.082672, 30.681215>,  <27.992447, 33.173733, 30.930677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693319, 33.082672, 30.681215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615067, 0.591181, 0.521725,
		0.249924, 0.773745, -0.582114,
		-0.747817, -0.227647, -0.623656,
		27.468975, 33.014378, 30.494118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658499, 33.836845, 30.831633>,  <27.992447, 33.173733, 30.930677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658499, 33.836845, 30.831633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403627, 33.561024, 30.693922>,  <27.250706, 33.395531, 30.611296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403627, 33.561024, 30.693922>,  <27.658499, 33.836845, 30.831633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403627, 33.561024, 30.693922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742450, 0.429296, 0.514270,
		-0.206820, 0.583287, -0.785494,
		-0.637177, -0.689551, -0.344275,
		27.212475, 33.354156, 30.590639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995115, 34.158501, 30.511644>,  <27.658499, 33.836845, 30.831633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995115, 34.158501, 30.511644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900799, 33.782410, 30.609922>,  <26.844210, 33.556755, 30.668890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900799, 33.782410, 30.609922>,  <26.995115, 34.158501, 30.511644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900799, 33.782410, 30.609922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537967, 0.336839, 0.772742,
		-0.809317, 0.050027, -0.585237,
		-0.235789, -0.940232, 0.245697,
		26.830063, 33.500340, 30.683632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253204, 34.279037, 30.595087>,  <26.995115, 34.158501, 30.511644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253204, 34.279037, 30.595087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.374828, 33.959705, 30.803020>,  <26.447802, 33.768108, 30.927780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.374828, 33.959705, 30.803020>,  <26.253204, 34.279037, 30.595087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374828, 33.959705, 30.803020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435120, 0.369045, 0.821265,
		-0.847478, -0.475901, -0.235156,
		0.304058, -0.798326, 0.519832,
		26.466045, 33.720207, 30.958969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678297, 34.009571, 30.951359>,  <26.253204, 34.279037, 30.595087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678297, 34.009571, 30.951359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.981981, 33.850498, 31.157448>,  <26.164192, 33.755054, 31.281101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.981981, 33.850498, 31.157448>,  <25.678297, 34.009571, 30.951359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981981, 33.850498, 31.157448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330154, 0.446889, 0.831437,
		-0.560892, -0.801338, 0.207987,
		0.759209, -0.397678, 0.515222,
		26.209743, 33.731194, 31.312014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383205, 33.802132, 31.669188>,  <25.678297, 34.009571, 30.951359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383205, 33.802132, 31.669188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.779240, 33.814636, 31.723957>,  <26.016861, 33.822140, 31.756819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.779240, 33.814636, 31.723957>,  <25.383205, 33.802132, 31.669188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779240, 33.814636, 31.723957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132769, 0.526338, 0.839846,
		-0.045811, -0.849701, 0.525272,
		0.990088, 0.031266, 0.136925,
		26.076265, 33.824017, 31.765034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556236, 33.634590, 32.363289>,  <25.383205, 33.802132, 31.669188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556236, 33.634590, 32.363289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.870108, 33.860043, 32.260063>,  <26.058432, 33.995316, 32.198128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.870108, 33.860043, 32.260063>,  <25.556236, 33.634590, 32.363289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870108, 33.860043, 32.260063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025112, 0.444862, 0.895247,
		0.619393, -0.696002, 0.363228,
		0.784680, 0.563631, -0.258066,
		26.105511, 34.029133, 32.182644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944866, 33.778393, 33.039883>,  <25.556236, 33.634590, 32.363289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944866, 33.778393, 33.039883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126526, 34.020615, 32.778484>,  <26.235521, 34.165947, 32.621647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126526, 34.020615, 32.778484>,  <25.944866, 33.778393, 33.039883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126526, 34.020615, 32.778484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149525, 0.671288, 0.725958,
		0.878289, -0.427405, 0.214319,
		0.454148, 0.605555, -0.653493,
		26.262770, 34.202282, 32.582436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555374, 33.974319, 33.326389>,  <25.944866, 33.778393, 33.039883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555374, 33.974319, 33.326389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486696, 34.255375, 33.050182>,  <26.445490, 34.424007, 32.884457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486696, 34.255375, 33.050182>,  <26.555374, 33.974319, 33.326389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486696, 34.255375, 33.050182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023021, 0.703600, 0.710223,
		0.984881, 0.106045, -0.136979,
		-0.171694, 0.702639, -0.690521,
		26.435188, 34.466167, 32.843025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203575, 34.488514, 33.253071>,  <26.555374, 33.974319, 33.326389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203575, 34.488514, 33.253071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873249, 34.673309, 33.123703>,  <26.675053, 34.784187, 33.046082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873249, 34.673309, 33.123703>,  <27.203575, 34.488514, 33.253071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873249, 34.673309, 33.123703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094847, 0.679103, 0.727890,
		0.555908, 0.570428, -0.604631,
		-0.825815, 0.461987, -0.323415,
		26.625504, 34.811905, 33.026680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335897, 35.251919, 33.136707>,  <27.203575, 34.488514, 33.253071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335897, 35.251919, 33.136707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940516, 35.212856, 33.183052>,  <26.703287, 35.189419, 33.210857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940516, 35.212856, 33.183052>,  <27.335897, 35.251919, 33.136707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940516, 35.212856, 33.183052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004872, 0.743739, 0.668453,
		-0.151450, 0.661299, -0.734675,
		-0.988453, -0.097658, 0.115861,
		26.643980, 35.183559, 33.217812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971785, 35.873829, 33.002869>,  <27.335897, 35.251919, 33.136707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971785, 35.873829, 33.002869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782068, 35.661388, 33.283718>,  <26.668238, 35.533924, 33.452229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782068, 35.661388, 33.283718>,  <26.971785, 35.873829, 33.002869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782068, 35.661388, 33.283718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078260, 0.768946, 0.634506,
		-0.876882, 0.355890, -0.323141,
		-0.474292, -0.531098, 0.702127,
		26.639780, 35.502060, 33.494358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520279, 36.154034, 33.408459>,  <26.971785, 35.873829, 33.002869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520279, 36.154034, 33.408459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877392, 36.243397, 33.564934>,  <28.091660, 36.297016, 33.658817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877392, 36.243397, 33.564934>,  <27.520279, 36.154034, 33.408459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877392, 36.243397, 33.564934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406856, -0.772690, -0.487256,
		0.193408, 0.594170, -0.780740,
		0.892783, 0.223410, 0.391186,
		28.145227, 36.310421, 33.682289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004169, 36.129150, 32.877365>,  <27.520279, 36.154034, 33.408459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004169, 36.129150, 32.877365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238018, 36.090080, 33.199528>,  <28.378328, 36.066639, 33.392826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238018, 36.090080, 33.199528>,  <28.004169, 36.129150, 32.877365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238018, 36.090080, 33.199528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497157, -0.741371, -0.450781,
		0.641132, 0.663949, -0.384865,
		0.584624, -0.097672, 0.805404,
		28.413404, 36.060780, 33.441151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722422, 35.834225, 32.693619>,  <28.004169, 36.129150, 32.877365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722422, 35.834225, 32.693619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731016, 35.757523, 33.086102>,  <28.736174, 35.711502, 33.321590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731016, 35.757523, 33.086102>,  <28.722422, 35.834225, 32.693619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731016, 35.757523, 33.086102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583462, -0.794562, -0.168057,
		0.811857, 0.576108, 0.094810,
		0.021487, -0.191756, 0.981207,
		28.737463, 35.699997, 33.380463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393078, 35.723801, 32.828373>,  <28.722422, 35.834225, 32.693619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393078, 35.723801, 32.828373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186007, 35.524437, 33.106537>,  <29.061764, 35.404819, 33.273438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186007, 35.524437, 33.106537>,  <29.393078, 35.723801, 32.828373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186007, 35.524437, 33.106537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661093, -0.748973, -0.044668,
		0.543108, 0.436609, 0.717221,
		-0.517677, -0.498410, 0.695412,
		29.030703, 35.374912, 33.315159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896688, 35.446136, 33.289867>,  <29.393078, 35.723801, 32.828373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896688, 35.446136, 33.289867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569893, 35.220119, 33.335918>,  <29.373816, 35.084511, 33.363548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.569893, 35.220119, 33.335918>,  <29.896688, 35.446136, 33.289867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569893, 35.220119, 33.335918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538230, -0.818861, -0.199437,
		0.206964, -0.100973, 0.973124,
		-0.816991, -0.565041, 0.115128,
		29.324795, 35.050606, 33.370457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149889, 34.799664, 33.653370>,  <29.896688, 35.446136, 33.289867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149889, 34.799664, 33.653370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789930, 34.717850, 33.499306>,  <29.573956, 34.668762, 33.406868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789930, 34.717850, 33.499306>,  <30.149889, 34.799664, 33.653370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789930, 34.717850, 33.499306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292775, -0.937922, -0.185971,
		-0.323215, -0.280121, 0.903916,
		-0.899897, -0.204535, -0.385163,
		29.519960, 34.656490, 33.383759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989075, 34.080730, 33.914093>,  <30.149889, 34.799664, 33.653370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989075, 34.080730, 33.914093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745470, 34.147972, 33.604034>,  <29.599308, 34.188316, 33.417999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745470, 34.147972, 33.604034>,  <29.989075, 34.080730, 33.914093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745470, 34.147972, 33.604034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139015, -0.939533, -0.312975,
		-0.780883, -0.298362, 0.548819,
		-0.609013, 0.168103, -0.775142,
		29.562767, 34.198402, 33.371490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622551, 33.448963, 33.774319>,  <29.989075, 34.080730, 33.914093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622551, 33.448963, 33.774319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558613, 33.646770, 33.432583>,  <29.520250, 33.765457, 33.227543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.558613, 33.646770, 33.432583>,  <29.622551, 33.448963, 33.774319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558613, 33.646770, 33.432583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187713, -0.834450, -0.518129,
		-0.969130, -0.243190, 0.040553,
		-0.159844, 0.494522, -0.854341,
		29.510660, 33.795128, 33.176281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237148, 33.071560, 33.332130>,  <29.622551, 33.448963, 33.774319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237148, 33.071560, 33.332130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366270, 33.331520, 33.056908>,  <29.443743, 33.487495, 32.891773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.366270, 33.331520, 33.056908>,  <29.237148, 33.071560, 33.332130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366270, 33.331520, 33.056908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044675, -0.736627, -0.674822,
		-0.945410, 0.187098, -0.266822,
		0.322806, 0.649904, -0.688056,
		29.463112, 33.526493, 32.850491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922884, 32.904099, 32.731457>,  <29.237148, 33.071560, 33.332130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922884, 32.904099, 32.731457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.251587, 33.108913, 32.631428>,  <29.448809, 33.231800, 32.571411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.251587, 33.108913, 32.631428>,  <28.922884, 32.904099, 32.731457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251587, 33.108913, 32.631428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236815, -0.706024, -0.667419,
		-0.518298, 0.489236, -0.701438,
		0.821758, 0.512033, -0.250072,
		29.498114, 33.262524, 32.556408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877174, 33.082489, 31.979860>,  <28.922884, 32.904099, 32.731457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877174, 33.082489, 31.979860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254290, 33.067383, 32.112362>,  <29.480558, 33.058319, 32.191864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.254290, 33.067383, 32.112362>,  <28.877174, 33.082489, 31.979860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254290, 33.067383, 32.112362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201741, -0.726402, -0.656994,
		0.265433, 0.686232, -0.677223,
		0.942786, -0.037764, 0.331252,
		29.537125, 33.056053, 32.211739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101479, 32.627560, 31.607073>,  <28.877174, 33.082489, 31.979860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101479, 32.627560, 31.607073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466486, 32.709423, 31.748735>,  <29.685490, 32.758541, 31.833733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466486, 32.709423, 31.748735>,  <29.101479, 32.627560, 31.607073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466486, 32.709423, 31.748735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406132, -0.556341, -0.724942,
		0.048668, 0.805357, -0.590789,
		0.912517, 0.204657, 0.354157,
		29.740242, 32.770821, 31.854982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573463, 32.752632, 31.055719>,  <29.101479, 32.627560, 31.607073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573463, 32.752632, 31.055719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777172, 32.625164, 31.375492>,  <29.899397, 32.548683, 31.567356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777172, 32.625164, 31.375492>,  <29.573463, 32.752632, 31.055719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777172, 32.625164, 31.375492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398614, -0.735926, -0.547285,
		0.762725, 0.597381, -0.247761,
		0.509271, -0.318667, 0.799434,
		29.929953, 32.529564, 31.615322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382442, 32.731445, 30.957729>,  <29.573463, 32.752632, 31.055719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382442, 32.731445, 30.957729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281424, 32.484188, 31.255486>,  <30.220812, 32.335835, 31.434139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281424, 32.484188, 31.255486>,  <30.382442, 32.731445, 30.957729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281424, 32.484188, 31.255486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447262, -0.756781, -0.476696,
		0.858008, 0.212549, 0.467595,
		-0.252546, -0.618146, 0.744390,
		30.205660, 32.298744, 31.478802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009848, 32.403728, 31.255119>,  <30.382442, 32.731445, 30.957729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009848, 32.403728, 31.255119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704508, 32.157288, 31.332800>,  <30.521305, 32.009422, 31.379408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704508, 32.157288, 31.332800>,  <31.009848, 32.403728, 31.255119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704508, 32.157288, 31.332800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507258, -0.757831, -0.410343,
		0.399987, -0.214723, 0.891013,
		-0.763347, -0.616106, 0.194202,
		30.475504, 31.972456, 31.391060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325369, 31.700857, 31.429056>,  <31.009848, 32.403728, 31.255119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325369, 31.700857, 31.429056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.936611, 31.614334, 31.391882>,  <30.703358, 31.562420, 31.369577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.936611, 31.614334, 31.391882>,  <31.325369, 31.700857, 31.429056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936611, 31.614334, 31.391882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231561, -0.807062, -0.543168,
		0.042486, -0.549421, 0.834465,
		-0.971892, -0.216306, -0.092936,
		30.645044, 31.549442, 31.364000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318001, 30.934448, 31.298319>,  <31.325369, 31.700857, 31.429056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318001, 30.934448, 31.298319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962753, 31.048290, 31.153959>,  <30.749605, 31.116594, 31.067343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962753, 31.048290, 31.153959>,  <31.318001, 30.934448, 31.298319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962753, 31.048290, 31.153959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022886, -0.756861, -0.653175,
		-0.459047, -0.588355, 0.665668,
		-0.888117, 0.284604, -0.360900,
		30.696318, 31.133671, 31.045689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853481, 30.343313, 31.305656>,  <31.318001, 30.934448, 31.298319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853481, 30.343313, 31.305656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651752, 30.561235, 31.037672>,  <30.530716, 30.691988, 30.876881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651752, 30.561235, 31.037672>,  <30.853481, 30.343313, 31.305656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651752, 30.561235, 31.037672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054007, -0.754434, -0.654150,
		-0.861826, -0.366084, 0.351054,
		-0.504321, 0.544804, -0.669962,
		30.500456, 30.724676, 30.836683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312176, 29.995440, 31.098183>,  <30.853481, 30.343313, 31.305656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312176, 29.995440, 31.098183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367893, 30.256254, 30.800070>,  <30.401323, 30.412743, 30.621202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.367893, 30.256254, 30.800070>,  <30.312176, 29.995440, 31.098183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367893, 30.256254, 30.800070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013536, -0.753803, -0.656961,
		-0.990158, 0.081423, -0.113826,
		0.139294, 0.652036, -0.745282,
		30.409681, 30.451864, 30.576485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922636, 29.728533, 30.615023>,  <30.312176, 29.995440, 31.098183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922636, 29.728533, 30.615023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202393, 29.951008, 30.435465>,  <30.370247, 30.084492, 30.327730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.202393, 29.951008, 30.435465>,  <29.922636, 29.728533, 30.615023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202393, 29.951008, 30.435465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142983, -0.724236, -0.674565,
		-0.700291, 0.407601, -0.586050,
		0.699392, 0.556187, -0.448896,
		30.412210, 30.117865, 30.300797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768635, 29.652340, 29.824114>,  <29.922636, 29.728533, 30.615023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768635, 29.652340, 29.824114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129543, 29.824032, 29.807766>,  <30.346088, 29.927048, 29.797958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.129543, 29.824032, 29.807766>,  <29.768635, 29.652340, 29.824114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129543, 29.824032, 29.807766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253897, -0.605520, -0.754242,
		-0.348491, 0.670154, -0.655323,
		0.902270, 0.429231, -0.040868,
		30.400225, 29.952801, 29.795506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844172, 29.807854, 29.066856>,  <29.768635, 29.652340, 29.824114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844172, 29.807854, 29.066856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198893, 29.765083, 29.246700>,  <30.411726, 29.739422, 29.354607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198893, 29.765083, 29.246700>,  <29.844172, 29.807854, 29.066856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198893, 29.765083, 29.246700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320819, -0.557834, -0.765439,
		0.332652, 0.823036, -0.460385,
		0.886802, -0.106924, 0.449610,
		30.464933, 29.733006, 29.381584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.053810, 29.800344, 44.811543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777088, 29.549295, 44.668713>,  <39.611057, 29.398666, 44.583015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.777088, 29.549295, 44.668713>,  <40.053810, 29.800344, 44.811543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777088, 29.549295, 44.668713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304814, -0.194454, 0.932350,
		-0.654598, 0.753841, -0.056785,
		-0.691802, -0.627623, -0.357071,
		39.569550, 29.361008, 44.561592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455605, 29.913111, 45.218151>,  <40.053810, 29.800344, 44.811543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455605, 29.913111, 45.218151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422882, 29.549330, 45.055080>,  <39.403248, 29.331060, 44.957237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422882, 29.549330, 45.055080>,  <39.455605, 29.913111, 45.218151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422882, 29.549330, 45.055080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228064, -0.381112, 0.895958,
		-0.970203, 0.166275, -0.176235,
		-0.081811, -0.909454, -0.407677,
		39.398338, 29.276493, 44.932777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904297, 29.672722, 45.498188>,  <39.455605, 29.913111, 45.218151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904297, 29.672722, 45.498188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.039906, 29.320049, 45.366913>,  <39.121269, 29.108446, 45.288147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.039906, 29.320049, 45.366913>,  <38.904297, 29.672722, 45.498188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039906, 29.320049, 45.366913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246096, -0.419810, 0.873611,
		-0.908021, -0.215406, -0.359302,
		0.339020, -0.881680, -0.328186,
		39.141613, 29.055546, 45.268456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365677, 29.129404, 45.517204>,  <38.904297, 29.672722, 45.498188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365677, 29.129404, 45.517204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.709969, 28.926046, 45.527569>,  <38.916546, 28.804031, 45.533787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.709969, 28.926046, 45.527569>,  <38.365677, 29.129404, 45.517204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709969, 28.926046, 45.527569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307598, -0.478875, 0.822230,
		-0.405609, -0.715692, -0.568565,
		0.860735, -0.508393, 0.025910,
		38.968189, 28.773527, 45.535339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203304, 28.448374, 45.645920>,  <38.365677, 29.129404, 45.517204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203304, 28.448374, 45.645920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.587578, 28.471798, 45.754478>,  <38.818142, 28.485853, 45.819614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.587578, 28.471798, 45.754478>,  <38.203304, 28.448374, 45.645920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587578, 28.471798, 45.754478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184876, -0.594350, 0.782668,
		0.207137, -0.802072, -0.560157,
		0.960685, 0.058560, 0.271396,
		38.875782, 28.489367, 45.835896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396648, 27.709536, 45.687889>,  <38.203304, 28.448374, 45.645920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396648, 27.709536, 45.687889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679420, 27.904833, 45.892582>,  <38.849083, 28.022011, 46.015396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.679420, 27.904833, 45.892582>,  <38.396648, 27.709536, 45.687889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679420, 27.904833, 45.892582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175973, -0.579346, 0.795859,
		0.685041, -0.652668, -0.323640,
		0.706932, 0.488243, 0.511728,
		38.891499, 28.051306, 46.046101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541779, 27.168886, 46.150177>,  <38.396648, 27.709536, 45.687889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541779, 27.168886, 46.150177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697472, 27.513121, 46.281559>,  <38.790886, 27.719662, 46.360390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697472, 27.513121, 46.281559>,  <38.541779, 27.168886, 46.150177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697472, 27.513121, 46.281559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027138, -0.345710, 0.937949,
		0.920739, -0.373995, -0.111207,
		0.389234, 0.860588, 0.328459,
		38.814243, 27.771297, 46.380096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101154, 26.969687, 46.471870>,  <38.541779, 27.168886, 46.150177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101154, 26.969687, 46.471870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983864, 27.322386, 46.619675>,  <38.913490, 27.534004, 46.708359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.983864, 27.322386, 46.619675>,  <39.101154, 26.969687, 46.471870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983864, 27.322386, 46.619675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154126, -0.425046, 0.891953,
		0.943538, 0.204593, 0.260535,
		-0.293226, 0.881747, 0.369514,
		38.895897, 27.586910, 46.730530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289387, 26.842920, 47.120251>,  <39.101154, 26.969687, 46.471870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289387, 26.842920, 47.120251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037983, 27.153854, 47.131008>,  <38.887138, 27.340414, 47.137463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.037983, 27.153854, 47.131008>,  <39.289387, 26.842920, 47.120251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037983, 27.153854, 47.131008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200606, -0.195409, 0.959986,
		0.751485, 0.597968, 0.278755,
		-0.628512, 0.777335, 0.026891,
		38.849430, 27.387054, 47.139076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475410, 27.221786, 47.786259>,  <39.289387, 26.842920, 47.120251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475410, 27.221786, 47.786259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095253, 27.285583, 47.679447>,  <38.867157, 27.323862, 47.615360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095253, 27.285583, 47.679447>,  <39.475410, 27.221786, 47.786259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095253, 27.285583, 47.679447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294682, -0.186997, 0.937121,
		0.099528, 0.969327, 0.224720,
		-0.950398, 0.159490, -0.267031,
		38.810135, 27.333431, 47.599339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240654, 27.670126, 48.373661>,  <39.475410, 27.221786, 47.786259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240654, 27.670126, 48.373661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918686, 27.519053, 48.190598>,  <38.725506, 27.428408, 48.080761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.918686, 27.519053, 48.190598>,  <39.240654, 27.670126, 48.373661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918686, 27.519053, 48.190598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302307, -0.402659, 0.863988,
		-0.510595, 0.833799, 0.209934,
		-0.804924, -0.377684, -0.457659,
		38.677208, 27.405746, 48.053299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628700, 27.749342, 48.884712>,  <39.240654, 27.670126, 48.373661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628700, 27.749342, 48.884712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501701, 27.477051, 48.620651>,  <38.425503, 27.313675, 48.462215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.501701, 27.477051, 48.620651>,  <38.628700, 27.749342, 48.884712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501701, 27.477051, 48.620651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362242, -0.556306, 0.747867,
		-0.876342, 0.476582, -0.069962,
		-0.317499, -0.680730, -0.660152,
		38.406452, 27.272831, 48.422607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011234, 27.514215, 49.163643>,  <38.628700, 27.749342, 48.884712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011234, 27.514215, 49.163643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.156773, 27.226994, 48.926319>,  <38.244095, 27.054661, 48.783924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.156773, 27.226994, 48.926319>,  <38.011234, 27.514215, 49.163643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156773, 27.226994, 48.926319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063514, -0.654609, 0.753294,
		-0.929290, -0.236403, -0.283786,
		0.363850, -0.718053, -0.593307,
		38.265926, 27.011578, 48.748325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579094, 27.900078, 48.599331>,  <38.011234, 27.514215, 49.163643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579094, 27.900078, 48.599331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898056, 28.028534, 48.803688>,  <38.089432, 28.105608, 48.926304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898056, 28.028534, 48.803688>,  <37.579094, 27.900078, 48.599331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898056, 28.028534, 48.803688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110806, -0.910159, 0.399165,
		0.593183, -0.261686, -0.761350,
		0.797406, 0.321140, 0.510894,
		38.137280, 28.124876, 48.956955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839130, 27.770668, 48.763367>,  <37.579094, 27.900078, 48.599331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839130, 27.770668, 48.763367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833515, 28.000315, 49.090828>,  <36.830147, 28.138102, 49.287304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.833515, 28.000315, 49.090828>,  <36.839130, 27.770668, 48.763367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833515, 28.000315, 49.090828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312747, 0.780177, -0.541768,
		-0.949733, 0.248424, -0.190508,
		-0.014041, 0.574116, 0.818654,
		36.829304, 28.172550, 49.336426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294098, 28.259270, 48.666630>,  <36.839130, 27.770668, 48.763367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294098, 28.259270, 48.666630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568893, 28.397205, 48.922482>,  <36.733772, 28.479967, 49.075993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568893, 28.397205, 48.922482>,  <36.294098, 28.259270, 48.666630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568893, 28.397205, 48.922482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156870, 0.789093, -0.593905,
		-0.709530, 0.508348, 0.488006,
		0.686993, 0.344840, 0.639630,
		36.774990, 28.500658, 49.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161083, 28.938759, 48.743244>,  <36.294098, 28.259270, 48.666630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161083, 28.938759, 48.743244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532051, 28.957504, 48.891674>,  <36.754631, 28.968752, 48.980732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.532051, 28.957504, 48.891674>,  <36.161083, 28.938759, 48.743244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532051, 28.957504, 48.891674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187170, 0.800812, -0.568917,
		-0.323825, 0.597079, 0.733917,
		0.927418, 0.046862, 0.371078,
		36.810276, 28.971563, 49.002998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228317, 29.631618, 48.901749>,  <36.161083, 28.938759, 48.743244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228317, 29.631618, 48.901749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605736, 29.501589, 48.876274>,  <36.832188, 29.423571, 48.860989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605736, 29.501589, 48.876274>,  <36.228317, 29.631618, 48.901749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605736, 29.501589, 48.876274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244702, 0.813589, -0.527441,
		0.223271, 0.482079, 0.847201,
		0.943542, -0.325074, -0.063685,
		36.888798, 29.404066, 48.857170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765480, 30.188421, 49.087971>,  <36.228317, 29.631618, 48.901749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765480, 30.188421, 49.087971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961044, 29.919413, 48.865734>,  <37.078384, 29.758007, 48.732391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961044, 29.919413, 48.865734>,  <36.765480, 30.188421, 49.087971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961044, 29.919413, 48.865734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358401, 0.735522, -0.574940,
		0.795308, 0.081972, 0.600638,
		0.488911, -0.672523, -0.555588,
		37.107719, 29.717655, 48.699059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276005, 30.573229, 48.851940>,  <36.765480, 30.188421, 49.087971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276005, 30.573229, 48.851940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289703, 30.246664, 48.621357>,  <37.297924, 30.050726, 48.483009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289703, 30.246664, 48.621357>,  <37.276005, 30.573229, 48.851940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289703, 30.246664, 48.621357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446680, 0.528480, -0.721932,
		0.894038, -0.232766, 0.382774,
		0.034247, -0.816412, -0.576453,
		37.299976, 30.001740, 48.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001640, 30.491787, 48.507683>,  <37.276005, 30.573229, 48.851940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001640, 30.491787, 48.507683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740849, 30.287046, 48.283924>,  <37.584373, 30.164202, 48.149670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740849, 30.287046, 48.283924>,  <38.001640, 30.491787, 48.507683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740849, 30.287046, 48.283924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308339, 0.495029, -0.812326,
		0.692710, -0.702106, -0.164925,
		-0.651981, -0.511854, -0.559398,
		37.545254, 30.133490, 48.116104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410854, 30.565531, 47.991940>,  <38.001640, 30.491787, 48.507683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410854, 30.565531, 47.991940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048088, 30.465796, 47.856094>,  <37.830429, 30.405954, 47.774590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048088, 30.465796, 47.856094>,  <38.410854, 30.565531, 47.991940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048088, 30.465796, 47.856094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099338, 0.656801, -0.747492,
		0.409433, -0.711649, -0.570895,
		-0.906916, -0.249337, -0.339610,
		37.776012, 30.390995, 47.754211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517376, 30.526075, 47.321014>,  <38.410854, 30.565531, 47.991940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517376, 30.526075, 47.321014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121410, 30.574846, 47.349869>,  <37.883831, 30.604109, 47.367180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121410, 30.574846, 47.349869>,  <38.517376, 30.526075, 47.321014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121410, 30.574846, 47.349869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022647, 0.366421, -0.930173,
		-0.139843, -0.922426, -0.359964,
		-0.989914, 0.121926, 0.072132,
		37.824436, 30.611423, 47.371510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271114, 30.366045, 46.719425>,  <38.517376, 30.526075, 47.321014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271114, 30.366045, 46.719425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962532, 30.574986, 46.864758>,  <37.777382, 30.700350, 46.951958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962532, 30.574986, 46.864758>,  <38.271114, 30.366045, 46.719425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962532, 30.574986, 46.864758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140330, 0.417286, -0.897875,
		-0.620621, -0.743654, -0.248615,
		-0.771451, 0.522352, 0.363333,
		37.731098, 30.731691, 46.973759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712620, 30.371359, 46.164383>,  <38.271114, 30.366045, 46.719425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712620, 30.371359, 46.164383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684845, 30.672913, 46.425713>,  <37.668179, 30.853846, 46.582512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.684845, 30.672913, 46.425713>,  <37.712620, 30.371359, 46.164383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684845, 30.672913, 46.425713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144204, 0.640443, -0.754346,
		-0.987109, -0.146592, 0.064242,
		-0.069438, 0.753885, 0.653326,
		37.664013, 30.899078, 46.621712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004829, 30.750029, 46.105656>,  <37.712620, 30.371359, 46.164383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004829, 30.750029, 46.105656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253090, 31.024340, 46.257706>,  <37.402046, 31.188927, 46.348934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253090, 31.024340, 46.257706>,  <37.004829, 30.750029, 46.105656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253090, 31.024340, 46.257706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253357, 0.634197, -0.730482,
		-0.742023, 0.357071, 0.567365,
		0.620655, 0.685780, 0.380123,
		37.439285, 31.230074, 46.371742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740303, 31.355438, 45.882801>,  <37.004829, 30.750029, 46.105656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740303, 31.355438, 45.882801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079327, 31.487474, 46.049019>,  <37.282742, 31.566696, 46.148750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079327, 31.487474, 46.049019>,  <36.740303, 31.355438, 45.882801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079327, 31.487474, 46.049019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023586, 0.805677, -0.591885,
		-0.530171, 0.491858, 0.690648,
		0.847562, 0.330090, 0.415546,
		37.333595, 31.586502, 46.173683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511497, 31.967743, 45.932064>,  <36.740303, 31.355438, 45.882801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511497, 31.967743, 45.932064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909931, 31.935389, 45.946354>,  <37.148991, 31.915976, 45.954926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909931, 31.935389, 45.946354>,  <36.511497, 31.967743, 45.932064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909931, 31.935389, 45.946354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077199, 0.598543, -0.797362,
		0.043113, 0.796997, 0.602443,
		0.996083, -0.080885, 0.035722,
		37.208755, 31.911123, 45.957069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201477, 32.414238, 46.422417>,  <36.511497, 31.967743, 45.932064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201477, 32.414238, 46.422417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843185, 32.539246, 46.295921>,  <35.628212, 32.614250, 46.220024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.843185, 32.539246, 46.295921>,  <36.201477, 32.414238, 46.422417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843185, 32.539246, 46.295921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436562, -0.752904, 0.492492,
		-0.084180, 0.579194, 0.810831,
		-0.895727, 0.312520, -0.316234,
		35.574467, 32.633003, 46.201050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825253, 32.520321, 47.046772>,  <36.201477, 32.414238, 46.422417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825253, 32.520321, 47.046772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566086, 32.471348, 46.746048>,  <35.410587, 32.441963, 46.565613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566086, 32.471348, 46.746048>,  <35.825253, 32.520321, 47.046772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566086, 32.471348, 46.746048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448695, -0.736237, 0.506585,
		-0.615535, 0.665556, 0.422081,
		-0.647912, -0.122435, -0.751811,
		35.371712, 32.434616, 46.520504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283756, 32.607040, 47.464985>,  <35.825253, 32.520321, 47.046772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283756, 32.607040, 47.464985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154106, 32.454292, 47.118778>,  <35.076317, 32.362644, 46.911053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154106, 32.454292, 47.118778>,  <35.283756, 32.607040, 47.464985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154106, 32.454292, 47.118778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477751, -0.723593, 0.498164,
		-0.816516, 0.574968, 0.052094,
		-0.324123, -0.381871, -0.865517,
		35.056870, 32.339729, 46.859123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484947, 32.542702, 47.538387>,  <35.283756, 32.607040, 47.464985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484947, 32.542702, 47.538387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564243, 32.284725, 47.243160>,  <34.611820, 32.129940, 47.066025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564243, 32.284725, 47.243160>,  <34.484947, 32.542702, 47.538387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564243, 32.284725, 47.243160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301772, -0.756600, 0.580078,
		-0.932542, 0.107733, -0.344615,
		0.198243, -0.644942, -0.738072,
		34.623714, 32.091244, 47.021740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875282, 32.167561, 47.231049>,  <34.484947, 32.542702, 47.538387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875282, 32.167561, 47.231049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196064, 31.937050, 47.168095>,  <34.388535, 31.798742, 47.130322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196064, 31.937050, 47.168095>,  <33.875282, 32.167561, 47.231049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196064, 31.937050, 47.168095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414867, -0.726819, 0.547375,
		-0.429830, -0.373677, -0.821956,
		0.801955, -0.576280, -0.157383,
		34.436649, 31.764166, 47.120880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542545, 31.492664, 47.045597>,  <33.875282, 32.167561, 47.231049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542545, 31.492664, 47.045597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924290, 31.414789, 47.136189>,  <34.153336, 31.368065, 47.190544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924290, 31.414789, 47.136189>,  <33.542545, 31.492664, 47.045597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924290, 31.414789, 47.136189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297828, -0.676760, 0.673272,
		0.022192, -0.709995, -0.703857,
		0.954362, -0.194687, 0.226475,
		34.210598, 31.356382, 47.204132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513092, 30.790695, 47.038261>,  <33.542545, 31.492664, 47.045597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513092, 30.790695, 47.038261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860836, 30.866211, 47.220940>,  <34.069485, 30.911520, 47.330547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.860836, 30.866211, 47.220940>,  <33.513092, 30.790695, 47.038261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860836, 30.866211, 47.220940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229127, -0.664821, 0.710995,
		0.437847, -0.722753, -0.534714,
		0.869363, 0.188789, 0.456692,
		34.121643, 30.922848, 47.357948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741646, 30.289886, 46.522335>,  <33.513092, 30.790695, 47.038261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741646, 30.289886, 46.522335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458687, 30.081917, 46.330807>,  <33.288910, 29.957136, 46.215889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458687, 30.081917, 46.330807>,  <33.741646, 30.289886, 46.522335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458687, 30.081917, 46.330807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078608, 0.731102, -0.677724,
		0.702432, -0.441780, -0.558050,
		-0.707397, -0.519922, -0.478822,
		33.246468, 29.925940, 46.187160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837196, 30.204809, 45.726681>,  <33.741646, 30.289886, 46.522335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837196, 30.204809, 45.726681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452175, 30.254850, 45.822880>,  <33.221161, 30.284876, 45.880600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452175, 30.254850, 45.822880>,  <33.837196, 30.204809, 45.726681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452175, 30.254850, 45.822880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129826, 0.566065, -0.814073,
		-0.237981, -0.814812, -0.528626,
		-0.962554, 0.125105, 0.240496,
		33.163410, 30.292381, 45.895027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436859, 30.112055, 45.138737>,  <33.837196, 30.204809, 45.726681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436859, 30.112055, 45.138737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218952, 30.352371, 45.372753>,  <33.088207, 30.496561, 45.513165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218952, 30.352371, 45.372753>,  <33.436859, 30.112055, 45.138737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218952, 30.352371, 45.372753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174648, 0.601076, -0.779876,
		-0.820198, -0.527029, -0.222521,
		-0.544769, 0.600790, 0.585046,
		33.055523, 30.532608, 45.548267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920109, 30.305517, 44.698914>,  <33.436859, 30.112055, 45.138737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920109, 30.305517, 44.698914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917233, 30.580011, 44.989849>,  <32.915508, 30.744709, 45.164410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917233, 30.580011, 44.989849>,  <32.920109, 30.305517, 44.698914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917233, 30.580011, 44.989849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132363, 0.720307, -0.680909,
		-0.991175, -0.101170, 0.085653,
		-0.007191, 0.686238, 0.727342,
		32.915077, 30.785883, 45.208050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455116, 30.857136, 44.392853>,  <32.920109, 30.305517, 44.698914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455116, 30.857136, 44.392853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632656, 31.025919, 44.709068>,  <32.739182, 31.127190, 44.898796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632656, 31.025919, 44.709068>,  <32.455116, 30.857136, 44.392853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632656, 31.025919, 44.709068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085740, 0.858152, -0.506186,
		-0.891991, 0.292451, 0.344710,
		0.443848, 0.421958, 0.790538,
		32.765812, 31.152506, 44.946228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107510, 31.413321, 44.555084>,  <32.455116, 30.857136, 44.392853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107510, 31.413321, 44.555084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469658, 31.488894, 44.707191>,  <32.686947, 31.534237, 44.798454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469658, 31.488894, 44.707191>,  <32.107510, 31.413321, 44.555084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469658, 31.488894, 44.707191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065761, 0.822359, -0.565156,
		-0.419490, 0.536684, 0.732119,
		0.905375, 0.188933, 0.380264,
		32.741272, 31.545574, 44.821270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097637, 32.046581, 44.777374>,  <32.107510, 31.413321, 44.555084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097637, 32.046581, 44.777374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486137, 31.988218, 44.702129>,  <32.719238, 31.953201, 44.656982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486137, 31.988218, 44.702129>,  <32.097637, 32.046581, 44.777374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486137, 31.988218, 44.702129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036430, 0.871953, -0.488232,
		0.235259, 0.467342, 0.852200,
		0.971250, -0.145906, -0.188110,
		32.777512, 31.944447, 44.645695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.135113, 25.344002, 46.997463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.440819, 25.598644, 47.038692>,  <36.624245, 25.751431, 47.063431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.440819, 25.598644, 47.038692>,  <36.135113, 25.344002, 46.997463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440819, 25.598644, 47.038692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120973, 0.298507, -0.946710,
		-0.633449, 0.711073, 0.305152,
		0.764269, 0.636608, 0.103069,
		36.670101, 25.789627, 47.069614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891300, 26.059984, 46.802025>,  <36.135113, 25.344002, 46.997463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891300, 26.059984, 46.802025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282120, 26.017660, 46.728081>,  <36.516613, 25.992266, 46.683716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282120, 26.017660, 46.728081>,  <35.891300, 26.059984, 46.802025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282120, 26.017660, 46.728081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175304, 0.093496, -0.980065,
		0.120983, 0.989981, 0.072802,
		0.977053, -0.105809, -0.184859,
		36.575237, 25.985918, 46.672623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908905, 26.547565, 46.322567>,  <35.891300, 26.059984, 46.802025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908905, 26.547565, 46.322567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260761, 26.358690, 46.299725>,  <36.471874, 26.245365, 46.286018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260761, 26.358690, 46.299725>,  <35.908905, 26.547565, 46.322567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260761, 26.358690, 46.299725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060581, 0.230321, -0.971227,
		0.471757, 0.850875, 0.231206,
		0.879645, -0.472190, -0.057108,
		36.524654, 26.217033, 46.282593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306293, 27.011375, 45.918224>,  <35.908905, 26.547565, 46.322567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306293, 27.011375, 45.918224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.469219, 26.647604, 45.884666>,  <36.566975, 26.429342, 45.864532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.469219, 26.647604, 45.884666>,  <36.306293, 27.011375, 45.918224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469219, 26.647604, 45.884666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097938, 0.134822, -0.986018,
		0.908021, 0.393404, 0.143983,
		0.407315, -0.909427, -0.083892,
		36.591415, 26.374777, 45.859497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051086, 26.974712, 45.685719>,  <36.306293, 27.011375, 45.918224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051086, 26.974712, 45.685719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.872829, 26.629429, 45.590832>,  <36.765877, 26.422258, 45.533901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.872829, 26.629429, 45.590832>,  <37.051086, 26.974712, 45.685719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872829, 26.629429, 45.590832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139113, 0.194987, -0.970890,
		0.884335, -0.465671, 0.033189,
		-0.445644, -0.863209, -0.237215,
		36.739136, 26.370466, 45.519669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505329, 26.556601, 45.378109>,  <37.051086, 26.974712, 45.685719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505329, 26.556601, 45.378109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157566, 26.423050, 45.232418>,  <36.948910, 26.342918, 45.145004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.157566, 26.423050, 45.232418>,  <37.505329, 26.556601, 45.378109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157566, 26.423050, 45.232418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242826, 0.353272, -0.903457,
		0.430317, -0.873912, -0.226062,
		-0.869404, -0.333879, -0.364228,
		36.896744, 26.322887, 45.123150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723537, 26.342262, 44.689430>,  <37.505329, 26.556601, 45.378109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723537, 26.342262, 44.689430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.323704, 26.353117, 44.685608>,  <37.083801, 26.359629, 44.683315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.323704, 26.353117, 44.685608>,  <37.723537, 26.342262, 44.689430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323704, 26.353117, 44.685608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013297, 0.141150, -0.989899,
		-0.025514, -0.989616, -0.141452,
		-0.999586, 0.027137, -0.009558,
		37.023827, 26.361258, 44.682739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531815, 26.024164, 44.072872>,  <37.723537, 26.342262, 44.689430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531815, 26.024164, 44.072872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.216202, 26.253216, 44.161880>,  <37.026833, 26.390646, 44.215286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.216202, 26.253216, 44.161880>,  <37.531815, 26.024164, 44.072872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216202, 26.253216, 44.161880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016967, 0.382388, -0.923846,
		-0.614112, -0.725173, -0.311433,
		-0.789036, 0.572629, 0.222525,
		36.979492, 26.425005, 44.228638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174366, 26.058317, 43.476116>,  <37.531815, 26.024164, 44.072872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174366, 26.058317, 43.476116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012608, 26.353813, 43.691792>,  <36.915550, 26.531111, 43.821198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.012608, 26.353813, 43.691792>,  <37.174366, 26.058317, 43.476116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012608, 26.353813, 43.691792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106203, 0.547628, -0.829954,
		-0.908395, -0.392897, -0.143005,
		-0.404400, 0.738739, 0.539189,
		36.891289, 26.575436, 43.853550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638878, 26.298666, 43.161205>,  <37.174366, 26.058317, 43.476116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638878, 26.298666, 43.161205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.726650, 26.617294, 43.386532>,  <36.779316, 26.808472, 43.521729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.726650, 26.617294, 43.386532>,  <36.638878, 26.298666, 43.161205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726650, 26.617294, 43.386532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127018, 0.595801, -0.793024,
		-0.967323, 0.102466, 0.231918,
		0.219435, 0.796569, 0.563318,
		36.792480, 26.856264, 43.555527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100266, 26.790346, 43.061947>,  <36.638878, 26.298666, 43.161205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100266, 26.790346, 43.061947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.416859, 26.992075, 43.200054>,  <36.606815, 27.113111, 43.282917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.416859, 26.992075, 43.200054>,  <36.100266, 26.790346, 43.061947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416859, 26.992075, 43.200054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069298, 0.635315, -0.769137,
		-0.607244, 0.584836, 0.537792,
		0.791487, 0.504322, 0.345264,
		36.654305, 27.143372, 43.303635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906338, 27.516630, 42.985378>,  <36.100266, 26.790346, 43.061947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906338, 27.516630, 42.985378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.305775, 27.508640, 43.005005>,  <36.545437, 27.503847, 43.016781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.305775, 27.508640, 43.005005>,  <35.906338, 27.516630, 42.985378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305775, 27.508640, 43.005005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050413, 0.642987, -0.764216,
		-0.016285, 0.765617, 0.643091,
		0.998596, -0.019975, 0.049068,
		36.605354, 27.502647, 43.019726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150558, 27.691093, 43.196518>,  <35.906338, 27.516630, 42.985378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150558, 27.691093, 43.196518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035309, 28.060125, 43.299149>,  <34.966160, 28.281544, 43.360729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035309, 28.060125, 43.299149>,  <35.150558, 27.691093, 43.196518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035309, 28.060125, 43.299149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582552, -0.381526, 0.717685,
		0.760014, 0.057308, 0.647375,
		-0.288119, 0.922580, 0.256580,
		34.948872, 28.336899, 43.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328930, 28.027145, 43.953121>,  <35.150558, 27.691093, 43.196518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328930, 28.027145, 43.953121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990391, 28.128235, 43.765575>,  <34.787270, 28.188889, 43.653049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990391, 28.128235, 43.765575>,  <35.328930, 28.027145, 43.953121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990391, 28.128235, 43.765575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531961, -0.445373, 0.720181,
		-0.026813, 0.858938, 0.511378,
		-0.846344, 0.252723, -0.468863,
		34.736488, 28.204052, 43.624916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922562, 28.331011, 44.493328>,  <35.328930, 28.027145, 43.953121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922562, 28.331011, 44.493328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670799, 28.205982, 44.208752>,  <34.519741, 28.130966, 44.038006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.670799, 28.205982, 44.208752>,  <34.922562, 28.331011, 44.493328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670799, 28.205982, 44.208752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517430, -0.514474, 0.683800,
		-0.579753, 0.798509, 0.162081,
		-0.629407, -0.312569, -0.711441,
		34.481976, 28.112211, 43.995319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299294, 28.486292, 44.715153>,  <34.922562, 28.331011, 44.493328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299294, 28.486292, 44.715153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249424, 28.194124, 44.446541>,  <34.219501, 28.018824, 44.285374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249424, 28.194124, 44.446541>,  <34.299294, 28.486292, 44.715153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249424, 28.194124, 44.446541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562596, -0.505446, 0.654225,
		-0.817277, 0.459364, -0.347912,
		-0.124676, -0.730417, -0.671526,
		34.212021, 27.974998, 44.245083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567505, 28.444767, 44.715714>,  <34.299294, 28.486292, 44.715153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567505, 28.444767, 44.715714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.690929, 28.096945, 44.561485>,  <33.764984, 27.888252, 44.468948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.690929, 28.096945, 44.561485>,  <33.567505, 28.444767, 44.715714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690929, 28.096945, 44.561485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587635, -0.493007, 0.641584,
		-0.747981, 0.028607, -0.663104,
		0.308561, -0.869555, -0.385570,
		33.783497, 27.836079, 44.445816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973633, 28.079144, 44.749851>,  <33.567505, 28.444767, 44.715714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973633, 28.079144, 44.749851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265076, 27.806047, 44.727955>,  <33.439941, 27.642191, 44.714817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265076, 27.806047, 44.727955>,  <32.973633, 28.079144, 44.749851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265076, 27.806047, 44.727955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429259, -0.517449, 0.740259,
		-0.533735, -0.515855, -0.670090,
		0.728604, -0.682744, -0.054745,
		33.483658, 27.601225, 44.711533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603214, 27.509476, 44.676468>,  <32.973633, 28.079144, 44.749851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603214, 27.509476, 44.676468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967552, 27.422697, 44.816921>,  <33.186157, 27.370630, 44.901192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.967552, 27.422697, 44.816921>,  <32.603214, 27.509476, 44.676468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967552, 27.422697, 44.816921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403683, -0.645526, 0.648333,
		0.086012, -0.732278, -0.675552,
		0.910847, -0.216945, 0.351131,
		33.240807, 27.357615, 44.922260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422482, 26.793877, 44.859123>,  <32.603214, 27.509476, 44.676468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422482, 26.793877, 44.859123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761730, 26.887863, 45.049065>,  <32.965279, 26.944254, 45.163029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761730, 26.887863, 45.049065>,  <32.422482, 26.793877, 44.859123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761730, 26.887863, 45.049065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300639, -0.524563, 0.796524,
		0.436245, -0.818306, -0.374252,
		0.848119, 0.234965, 0.474853,
		33.016167, 26.958353, 45.191521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707378, 26.166843, 45.163902>,  <32.422482, 26.793877, 44.859123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707378, 26.166843, 45.163902> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845749, 26.469975, 45.385185>,  <32.928772, 26.651854, 45.517956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.845749, 26.469975, 45.385185>,  <32.707378, 26.166843, 45.163902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845749, 26.469975, 45.385185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114500, -0.551102, 0.826545,
		0.931250, -0.349262, -0.103867,
		0.345922, 0.757827, 0.553204,
		32.949524, 26.697323, 45.551147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134369, 25.839121, 45.678665>,  <32.707378, 26.166843, 45.163902>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134369, 25.839121, 45.678665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.074959, 26.204187, 45.830967>,  <33.039314, 26.423227, 45.922348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.074959, 26.204187, 45.830967>,  <33.134369, 25.839121, 45.678665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074959, 26.204187, 45.830967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045706, -0.390953, 0.919275,
		0.987852, 0.119132, 0.099781,
		-0.148525, 0.912668, 0.380759,
		33.030403, 26.477987, 45.945194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342060, 25.839125, 46.519875>,  <33.134369, 25.839121, 45.678665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342060, 25.839125, 46.519875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117176, 26.167105, 46.476784>,  <32.982246, 26.363894, 46.450928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.117176, 26.167105, 46.476784>,  <33.342060, 25.839125, 46.519875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117176, 26.167105, 46.476784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239153, -0.036492, 0.970296,
		0.791663, 0.571270, 0.216609,
		-0.562205, 0.819951, -0.107731,
		32.948513, 26.413090, 46.444466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566269, 26.390139, 47.064362>,  <33.342060, 25.839125, 46.519875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566269, 26.390139, 47.064362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.200489, 26.465242, 46.920963>,  <32.981022, 26.510305, 46.834923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.200489, 26.465242, 46.920963>,  <33.566269, 26.390139, 47.064362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200489, 26.465242, 46.920963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388051, -0.155424, 0.908438,
		0.114849, 0.969840, 0.214989,
		-0.914454, 0.187760, -0.358497,
		32.926151, 26.521570, 46.813416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273064, 26.691133, 47.591263>,  <33.566269, 26.390139, 47.064362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273064, 26.691133, 47.591263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963760, 26.592421, 47.357624>,  <32.778179, 26.533194, 47.217442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.963760, 26.592421, 47.357624>,  <33.273064, 26.691133, 47.591263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963760, 26.592421, 47.357624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494655, -0.341549, 0.799163,
		-0.396716, 0.906886, 0.142035,
		-0.773261, -0.246783, -0.584094,
		32.731781, 26.518385, 47.182396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695564, 26.728739, 48.073681>,  <33.273064, 26.691133, 47.591263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695564, 26.728739, 48.073681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566158, 26.503349, 47.769619>,  <32.488514, 26.368116, 47.587181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566158, 26.503349, 47.769619>,  <32.695564, 26.728739, 48.073681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566158, 26.503349, 47.769619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577216, -0.519043, 0.630410,
		-0.749771, 0.642722, -0.157325,
		-0.323520, -0.563474, -0.760153,
		32.469101, 26.334307, 47.541573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311207, 27.366533, 47.735081>,  <32.695564, 26.728739, 48.073681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311207, 27.366533, 47.735081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298206, 27.694403, 47.963844>,  <32.290405, 27.891125, 48.101101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298206, 27.694403, 47.963844>,  <32.311207, 27.366533, 47.735081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298206, 27.694403, 47.963844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091608, 0.572246, -0.814949,
		-0.995265, 0.025904, -0.093687,
		-0.032501, 0.819673, 0.571910,
		32.288456, 27.940304, 48.135418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910034, 27.809629, 47.396755>,  <32.311207, 27.366533, 47.735081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910034, 27.809629, 47.396755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.055901, 28.076044, 47.657036>,  <32.143421, 28.235893, 47.813206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.055901, 28.076044, 47.657036>,  <31.910034, 27.809629, 47.396755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055901, 28.076044, 47.657036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056490, 0.713362, -0.698515,
		-0.929424, 0.217966, 0.297763,
		0.364665, 0.666037, 0.650703,
		32.165298, 28.275856, 47.852245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486015, 28.412655, 47.310913>,  <31.910034, 27.809629, 47.396755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486015, 28.412655, 47.310913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.834517, 28.533075, 47.465981>,  <32.043617, 28.605328, 47.559021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.834517, 28.533075, 47.465981>,  <31.486015, 28.412655, 47.310913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834517, 28.533075, 47.465981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118326, 0.637695, -0.761147,
		-0.476359, 0.709022, 0.519971,
		0.871253, 0.301053, 0.387668,
		32.095894, 28.623392, 47.582279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498562, 29.144793, 47.332699>,  <31.486015, 28.412655, 47.310913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498562, 29.144793, 47.332699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.888067, 29.074196, 47.390156>,  <32.121769, 29.031837, 47.424629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.888067, 29.074196, 47.390156>,  <31.498562, 29.144793, 47.332699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888067, 29.074196, 47.390156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227380, 0.729770, -0.644775,
		0.008974, 0.660520, 0.750755,
		0.973765, -0.176493, 0.143640,
		32.180195, 29.021248, 47.433247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660872, 29.685125, 47.544064>,  <31.498562, 29.144793, 47.332699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660872, 29.685125, 47.544064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.993654, 29.505486, 47.413734>,  <32.193325, 29.397701, 47.335537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.993654, 29.505486, 47.413734>,  <31.660872, 29.685125, 47.544064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993654, 29.505486, 47.413734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275917, 0.844349, -0.459287,
		0.481370, 0.292208, 0.826376,
		0.831957, -0.449098, -0.325819,
		32.243240, 29.370756, 47.315990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311588, 30.077097, 47.711823>,  <31.660872, 29.685125, 47.544064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311588, 30.077097, 47.711823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434566, 29.845585, 47.409698>,  <32.508354, 29.706678, 47.228424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.434566, 29.845585, 47.409698>,  <32.311588, 30.077097, 47.711823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434566, 29.845585, 47.409698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377813, 0.802753, -0.461351,
		0.873348, -0.143528, 0.465470,
		0.307441, -0.578781, -0.755310,
		32.526798, 29.671951, 47.183105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900780, 30.430840, 47.508438>,  <32.311588, 30.077097, 47.711823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900780, 30.430840, 47.508438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.816532, 30.188276, 47.201736>,  <32.765984, 30.042738, 47.017715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.816532, 30.188276, 47.201736>,  <32.900780, 30.430840, 47.508438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816532, 30.188276, 47.201736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334016, 0.692498, -0.639437,
		0.918733, -0.390787, 0.056694,
		-0.210624, -0.606409, -0.766750,
		32.753345, 30.006353, 46.971710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704311, 30.136507, 47.270519>,  <32.900780, 30.430840, 47.508438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704311, 30.136507, 47.270519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938972, 30.361925, 47.503159>,  <34.079769, 30.497177, 47.642742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938972, 30.361925, 47.503159>,  <33.704311, 30.136507, 47.270519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938972, 30.361925, 47.503159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017845, -0.726984, 0.686423,
		0.809641, -0.392314, -0.436545,
		0.586654, 0.563546, 0.581595,
		34.114967, 30.530989, 47.677635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354187, 29.749880, 47.428204>,  <33.704311, 30.136507, 47.270519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354187, 29.749880, 47.428204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266003, 30.002651, 47.725407>,  <34.213093, 30.154314, 47.903728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.266003, 30.002651, 47.725407>,  <34.354187, 29.749880, 47.428204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266003, 30.002651, 47.725407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311198, -0.676375, 0.667587,
		0.924421, 0.378398, -0.047543,
		-0.220457, 0.631927, 0.743012,
		34.199867, 30.192228, 47.948311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870338, 29.726892, 48.089848>,  <34.354187, 29.749880, 47.428204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870338, 29.726892, 48.089848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.595722, 29.950731, 48.275543>,  <34.430954, 30.085035, 48.386959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.595722, 29.950731, 48.275543>,  <34.870338, 29.726892, 48.089848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595722, 29.950731, 48.275543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185491, -0.482557, 0.855997,
		0.703036, 0.673786, 0.227493,
		-0.686538, 0.559599, 0.464236,
		34.389759, 30.118610, 48.414814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246017, 29.987043, 48.651993>,  <34.870338, 29.726892, 48.089848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246017, 29.987043, 48.651993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862888, 30.049177, 48.748688>,  <34.633011, 30.086458, 48.806705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862888, 30.049177, 48.748688>,  <35.246017, 29.987043, 48.651993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862888, 30.049177, 48.748688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159368, -0.412859, 0.896744,
		0.239099, 0.897451, 0.370692,
		-0.957828, 0.155334, 0.241739,
		34.575539, 30.095778, 48.821209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264008, 30.228592, 49.371056>,  <35.246017, 29.987043, 48.651993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264008, 30.228592, 49.371056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895191, 30.079082, 49.330776>,  <34.673901, 29.989378, 49.306610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895191, 30.079082, 49.330776>,  <35.264008, 30.228592, 49.371056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895191, 30.079082, 49.330776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097932, -0.476910, 0.873480,
		-0.374507, 0.795520, 0.476333,
		-0.922038, -0.373773, -0.100700,
		34.618580, 29.966951, 49.300568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995579, 30.151680, 50.012314>,  <35.264008, 30.228592, 49.371056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995579, 30.151680, 50.012314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725983, 29.922756, 49.825466>,  <34.564224, 29.785402, 49.713356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.725983, 29.922756, 49.825466>,  <34.995579, 30.151680, 50.012314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725983, 29.922756, 49.825466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094165, -0.693717, 0.714065,
		-0.732717, 0.437284, 0.521448,
		-0.673987, -0.572310, -0.467122,
		34.523788, 29.751062, 49.685329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528378, 29.795002, 50.573029>,  <34.995579, 30.151680, 50.012314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528378, 29.795002, 50.573029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.449615, 29.586788, 50.240696>,  <34.402359, 29.461861, 50.041298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.449615, 29.586788, 50.240696>,  <34.528378, 29.795002, 50.573029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449615, 29.586788, 50.240696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132213, -0.825580, 0.548578,
		-0.971467, 0.217863, 0.093737,
		-0.196902, -0.520532, -0.830828,
		34.390545, 29.430628, 49.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835480, 29.482304, 50.578747>,  <34.528378, 29.795002, 50.573029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835480, 29.482304, 50.578747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.070053, 29.266529, 50.337051>,  <34.210796, 29.137064, 50.192036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.070053, 29.266529, 50.337051>,  <33.835480, 29.482304, 50.578747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070053, 29.266529, 50.337051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330895, -0.840435, 0.429159,
		-0.739328, -0.051733, -0.671356,
		0.586433, -0.539437, -0.604239,
		34.245983, 29.104698, 50.155781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391594, 29.011597, 50.172787>,  <33.835480, 29.482304, 50.578747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391594, 29.011597, 50.172787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.764809, 28.868011, 50.182449>,  <33.988739, 28.781860, 50.188248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.764809, 28.868011, 50.182449>,  <33.391594, 29.011597, 50.172787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764809, 28.868011, 50.182449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342133, -0.864512, 0.368190,
		-0.111280, -0.351801, -0.929437,
		0.933039, -0.358963, 0.024160,
		34.044720, 28.760323, 50.189697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.916195, 39.543987, 38.420547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302795, 39.447868, 38.456600>,  <36.534756, 39.390198, 38.478233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302795, 39.447868, 38.456600>,  <35.916195, 39.543987, 38.420547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302795, 39.447868, 38.456600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216307, -0.573672, 0.790008,
		-0.138131, -0.783043, -0.606435,
		0.966505, -0.240301, 0.090135,
		36.592747, 39.375778, 38.483643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851334, 38.906517, 38.387646>,  <35.916195, 39.543987, 38.420547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851334, 38.906517, 38.387646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210087, 38.975586, 38.550510>,  <36.425339, 39.017029, 38.648232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210087, 38.975586, 38.550510>,  <35.851334, 38.906517, 38.387646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210087, 38.975586, 38.550510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173602, -0.709292, 0.683204,
		0.406772, -0.683439, -0.606175,
		0.896883, 0.172675, 0.407167,
		36.479153, 39.027390, 38.672661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094418, 38.202850, 38.543533>,  <35.851334, 38.906517, 38.387646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094418, 38.202850, 38.543533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358768, 38.420155, 38.750648>,  <36.517380, 38.550537, 38.874916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358768, 38.420155, 38.750648>,  <36.094418, 38.202850, 38.543533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358768, 38.420155, 38.750648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136240, -0.591623, 0.794620,
		0.738024, -0.595690, -0.316976,
		0.660878, 0.543264, 0.517788,
		36.557034, 38.583134, 38.905987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605064, 37.741653, 38.726467>,  <36.094418, 38.202850, 38.543533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605064, 37.741653, 38.726467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644196, 38.032146, 38.998650>,  <36.667675, 38.206444, 39.161957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644196, 38.032146, 38.998650>,  <36.605064, 37.741653, 38.726467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644196, 38.032146, 38.998650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062100, -0.686854, 0.724138,
		0.993264, -0.028582, -0.112289,
		0.097823, 0.726233, 0.680453,
		36.673542, 38.250015, 39.202785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221790, 37.564320, 39.102463>,  <36.605064, 37.741653, 38.726467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221790, 37.564320, 39.102463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003273, 37.802200, 39.338390>,  <36.872162, 37.944931, 39.479946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003273, 37.802200, 39.338390>,  <37.221790, 37.564320, 39.102463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003273, 37.802200, 39.338390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120168, -0.641254, 0.757861,
		0.828930, 0.484891, 0.278848,
		-0.546292, 0.594705, 0.589823,
		36.839386, 37.980610, 39.515339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621090, 37.723400, 39.699848>,  <37.221790, 37.564320, 39.102463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621090, 37.723400, 39.699848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249413, 37.794025, 39.829731>,  <37.026405, 37.836399, 39.907661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249413, 37.794025, 39.829731>,  <37.621090, 37.723400, 39.699848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249413, 37.794025, 39.829731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178083, -0.555944, 0.811919,
		0.323873, 0.812251, 0.485134,
		-0.929189, 0.176565, 0.324703,
		36.970657, 37.846996, 39.927143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697380, 37.851334, 40.324184>,  <37.621090, 37.723400, 39.699848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697380, 37.851334, 40.324184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301453, 37.796013, 40.310711>,  <37.063896, 37.762821, 40.302628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301453, 37.796013, 40.310711>,  <37.697380, 37.851334, 40.324184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301453, 37.796013, 40.310711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058720, -0.612302, 0.788441,
		-0.129672, 0.778433, 0.614188,
		-0.989817, -0.138304, -0.033688,
		37.004509, 37.754520, 40.300606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519081, 37.888069, 40.960915>,  <37.697380, 37.851334, 40.324184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519081, 37.888069, 40.960915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229794, 37.663265, 40.800362>,  <37.056221, 37.528381, 40.704029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229794, 37.663265, 40.800362>,  <37.519081, 37.888069, 40.960915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229794, 37.663265, 40.800362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053349, -0.624910, 0.778872,
		-0.688559, 0.541879, 0.481927,
		-0.723215, -0.562009, -0.401379,
		37.012829, 37.494663, 40.679947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075577, 37.588074, 41.558998>,  <37.519081, 37.888069, 40.960915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075577, 37.588074, 41.558998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860603, 37.395313, 41.282177>,  <36.731621, 37.279655, 41.116085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860603, 37.395313, 41.282177>,  <37.075577, 37.588074, 41.558998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860603, 37.395313, 41.282177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471476, -0.508703, 0.720369,
		-0.699198, 0.713434, 0.046186,
		-0.537431, -0.481905, -0.692052,
		36.699375, 37.250740, 41.074562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308437, 37.687996, 41.644547>,  <37.075577, 37.588074, 41.558998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308437, 37.687996, 41.644547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390244, 37.348007, 41.450340>,  <36.439327, 37.144012, 41.333817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390244, 37.348007, 41.450340>,  <36.308437, 37.687996, 41.644547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390244, 37.348007, 41.450340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555806, -0.509120, 0.657173,
		-0.805761, 0.135446, -0.576544,
		0.204518, -0.849971, -0.485511,
		36.451599, 37.093018, 41.304688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670639, 37.385151, 41.464741>,  <36.308437, 37.687996, 41.644547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670639, 37.385151, 41.464741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961479, 37.110806, 41.476875>,  <36.135983, 36.946198, 41.484154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961479, 37.110806, 41.476875>,  <35.670639, 37.385151, 41.464741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961479, 37.110806, 41.476875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512032, -0.512323, 0.689455,
		-0.457330, -0.516834, -0.723693,
		0.727099, -0.685862, 0.030335,
		36.179607, 36.905045, 41.485977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293457, 36.840771, 41.542458>,  <35.670639, 37.385151, 41.464741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293457, 36.840771, 41.542458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659355, 36.732590, 41.662525>,  <35.878895, 36.667683, 41.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659355, 36.732590, 41.662525>,  <35.293457, 36.840771, 41.542458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659355, 36.732590, 41.662525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395340, -0.445831, 0.803082,
		-0.083370, -0.853283, -0.514741,
		0.914743, -0.270451, 0.300168,
		35.933777, 36.651455, 41.752575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916027, 36.501057, 40.857578>,  <35.293457, 36.840771, 41.542458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916027, 36.501057, 40.857578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545921, 36.403751, 40.741158>,  <34.323860, 36.345367, 40.671303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545921, 36.403751, 40.741158>,  <34.916027, 36.501057, 40.857578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545921, 36.403751, 40.741158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173423, 0.411125, -0.894930,
		0.337363, -0.878521, -0.338212,
		-0.925262, -0.243263, -0.291054,
		34.268341, 36.330772, 40.653843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120800, 36.341911, 40.208584>,  <34.916027, 36.501057, 40.857578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120800, 36.341911, 40.208584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721760, 36.368729, 40.201714>,  <34.482334, 36.384819, 40.197590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721760, 36.368729, 40.201714>,  <35.120800, 36.341911, 40.208584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721760, 36.368729, 40.201714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046563, 0.466553, -0.883267,
		-0.051208, -0.881949, -0.468556,
		-0.997602, 0.067048, -0.017175,
		34.422478, 36.388844, 40.196560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891682, 36.060543, 39.588585>,  <35.120800, 36.341911, 40.208584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891682, 36.060543, 39.588585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599876, 36.313660, 39.692413>,  <34.424793, 36.465530, 39.754711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599876, 36.313660, 39.692413>,  <34.891682, 36.060543, 39.588585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599876, 36.313660, 39.692413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045676, 0.423734, -0.904634,
		-0.682437, -0.648089, -0.338025,
		-0.729516, 0.632796, 0.259570,
		34.381023, 36.503498, 39.770283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349255, 36.166275, 38.957279>,  <34.891682, 36.060543, 39.588585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349255, 36.166275, 38.957279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277573, 36.474545, 39.201885>,  <34.234566, 36.659504, 39.348648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277573, 36.474545, 39.201885>,  <34.349255, 36.166275, 38.957279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277573, 36.474545, 39.201885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053606, 0.613007, -0.788257,
		-0.982351, -0.174039, -0.068540,
		-0.179203, 0.770670, 0.611517,
		34.223812, 36.705746, 39.385342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721996, 36.425732, 38.803425>,  <34.349255, 36.166275, 38.957279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721996, 36.425732, 38.803425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926083, 36.730579, 38.962852>,  <34.048534, 36.913486, 39.058510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926083, 36.730579, 38.962852>,  <33.721996, 36.425732, 38.803425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926083, 36.730579, 38.962852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244145, 0.572711, -0.782557,
		-0.824667, 0.301962, 0.478272,
		0.510214, 0.762116, 0.398573,
		34.079147, 36.959213, 39.082424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235817, 36.994785, 38.735035>,  <33.721996, 36.425732, 38.803425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235817, 36.994785, 38.735035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601101, 37.148388, 38.789574>,  <33.820271, 37.240551, 38.822296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601101, 37.148388, 38.789574>,  <33.235817, 36.994785, 38.735035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601101, 37.148388, 38.789574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121980, 0.576858, -0.807686,
		-0.388813, 0.720952, 0.573631,
		0.913206, 0.384011, 0.136348,
		33.875061, 37.263592, 38.830479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117214, 37.637089, 38.586983>,  <33.235817, 36.994785, 38.735035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117214, 37.637089, 38.586983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514729, 37.618790, 38.546406>,  <33.753239, 37.607811, 38.522060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514729, 37.618790, 38.546406>,  <33.117214, 37.637089, 38.586983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514729, 37.618790, 38.546406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065360, 0.497840, -0.864803,
		0.090064, 0.866062, 0.491758,
		0.993789, -0.045746, -0.101443,
		33.812866, 37.605064, 38.515972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314022, 38.274136, 38.183296>,  <33.117214, 37.637089, 38.586983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314022, 38.274136, 38.183296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643684, 38.052555, 38.136120>,  <33.841480, 37.919609, 38.107815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643684, 38.052555, 38.136120>,  <33.314022, 38.274136, 38.183296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643684, 38.052555, 38.136120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101149, 0.348851, -0.931704,
		0.557259, 0.755939, 0.343539,
		0.824155, -0.553949, -0.117937,
		33.890930, 37.886372, 38.100739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729950, 38.728458, 38.090530>,  <33.314022, 38.274136, 38.183296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729950, 38.728458, 38.090530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832840, 38.370735, 37.944080>,  <33.894577, 38.156101, 37.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832840, 38.370735, 37.944080>,  <33.729950, 38.728458, 38.090530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832840, 38.370735, 37.944080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119639, 0.405432, -0.906263,
		0.958916, 0.189315, 0.211283,
		0.257230, -0.894307, -0.366125,
		33.910007, 38.102444, 37.834244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101017, 38.919407, 37.499710>,  <33.729950, 38.728458, 38.090530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101017, 38.919407, 37.499710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077106, 38.527561, 37.423000>,  <34.062759, 38.292454, 37.376976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077106, 38.527561, 37.423000>,  <34.101017, 38.919407, 37.499710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077106, 38.527561, 37.423000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032589, 0.190097, -0.981224,
		0.997679, -0.064907, 0.020561,
		-0.059780, -0.979617, -0.191771,
		34.059174, 38.233677, 37.365467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724655, 38.741455, 37.059437>,  <34.101017, 38.919407, 37.499710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724655, 38.741455, 37.059437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393642, 38.520126, 37.021435>,  <34.195034, 38.387329, 36.998634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393642, 38.520126, 37.021435>,  <34.724655, 38.741455, 37.059437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393642, 38.520126, 37.021435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021489, 0.200317, -0.979495,
		0.561004, -0.808524, -0.177659,
		-0.827534, -0.553318, -0.095005,
		34.145382, 38.354130, 36.992935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963451, 38.479118, 36.479553>,  <34.724655, 38.741455, 37.059437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963451, 38.479118, 36.479553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564171, 38.457195, 36.489326>,  <34.324604, 38.444042, 36.495190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564171, 38.457195, 36.489326>,  <34.963451, 38.479118, 36.479553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564171, 38.457195, 36.489326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032988, 0.161028, -0.986398,
		0.050121, -0.985427, -0.162546,
		-0.998198, -0.054801, 0.024436,
		34.264713, 38.440754, 36.496658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526787, 37.865940, 36.164722>,  <34.963451, 38.479118, 36.479553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526787, 37.865940, 36.164722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349411, 38.220776, 36.113434>,  <34.242985, 38.433678, 36.082661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349411, 38.220776, 36.113434>,  <34.526787, 37.865940, 36.164722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349411, 38.220776, 36.113434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104708, -0.090808, -0.990348,
		-0.890167, -0.452586, -0.052616,
		-0.443440, 0.887084, -0.128224,
		34.216377, 38.486900, 36.074966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211296, 37.496998, 35.905293>,  <34.526787, 37.865940, 36.164722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211296, 37.496998, 35.905293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894115, 37.333118, 36.085682>,  <34.703808, 37.234791, 36.193916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894115, 37.333118, 36.085682>,  <35.211296, 37.496998, 35.905293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894115, 37.333118, 36.085682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475284, -0.047190, -0.878566,
		0.381227, -0.911001, -0.157302,
		-0.792951, -0.409696, 0.450974,
		34.656231, 37.210209, 36.220974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175007, 36.941139, 35.666199>,  <35.211296, 37.496998, 35.905293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175007, 36.941139, 35.666199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801044, 37.042492, 35.765594>,  <34.576668, 37.103306, 35.825233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801044, 37.042492, 35.765594>,  <35.175007, 36.941139, 35.666199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801044, 37.042492, 35.765594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284474, -0.116399, -0.951591,
		-0.212199, -0.960336, 0.180904,
		-0.934904, 0.253389, 0.248491,
		34.520573, 37.118507, 35.840141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210327, 36.226177, 35.880302>,  <35.175007, 36.941139, 35.666199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210327, 36.226177, 35.880302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340881, 35.877182, 35.734840>,  <35.419212, 35.667786, 35.647564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340881, 35.877182, 35.734840>,  <35.210327, 36.226177, 35.880302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340881, 35.877182, 35.734840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377032, -0.472955, 0.796342,
		-0.866788, -0.122804, -0.483319,
		0.326382, -0.872487, -0.363651,
		35.438797, 35.615437, 35.625744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707062, 35.798054, 35.772755>,  <35.210327, 36.226177, 35.880302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707062, 35.798054, 35.772755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012100, 35.547001, 35.835407>,  <35.195122, 35.396370, 35.872997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012100, 35.547001, 35.835407>,  <34.707062, 35.798054, 35.772755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012100, 35.547001, 35.835407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561162, -0.521410, 0.642828,
		-0.321790, -0.578111, -0.749826,
		0.762593, -0.627630, 0.156630,
		35.240879, 35.358711, 35.882397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515980, 35.187801, 35.779758>,  <34.707062, 35.798054, 35.772755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515980, 35.187801, 35.779758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846344, 35.186424, 36.005276>,  <35.044563, 35.185596, 36.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846344, 35.186424, 36.005276>,  <34.515980, 35.187801, 35.779758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846344, 35.186424, 36.005276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416493, -0.677717, 0.605998,
		0.380003, -0.735315, -0.561168,
		0.825912, -0.003442, 0.563788,
		35.094116, 35.185390, 36.174412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653835, 34.458805, 35.908306>,  <34.515980, 35.187801, 35.779758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653835, 34.458805, 35.908306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859089, 34.646839, 36.195560>,  <34.982239, 34.759659, 36.367912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859089, 34.646839, 36.195560>,  <34.653835, 34.458805, 35.908306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859089, 34.646839, 36.195560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395977, -0.612672, 0.683985,
		0.761512, -0.635338, -0.128238,
		0.513130, 0.470083, 0.718137,
		35.013027, 34.787865, 36.411003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905560, 33.928055, 36.310375>,  <34.653835, 34.458805, 35.908306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905560, 33.928055, 36.310375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987621, 34.241707, 36.544659>,  <35.036858, 34.429897, 36.685230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987621, 34.241707, 36.544659>,  <34.905560, 33.928055, 36.310375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987621, 34.241707, 36.544659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197311, -0.553016, 0.809470,
		0.958634, -0.281634, 0.041263,
		0.205155, 0.784127, 0.585710,
		35.049168, 34.476944, 36.720371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419048, 33.655151, 36.679115>,  <34.905560, 33.928055, 36.310375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419048, 33.655151, 36.679115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223003, 33.940948, 36.878834>,  <35.105377, 34.112427, 36.998665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223003, 33.940948, 36.878834>,  <35.419048, 33.655151, 36.679115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223003, 33.940948, 36.878834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114054, -0.620450, 0.775908,
		0.864166, 0.323334, 0.385580,
		-0.490111, 0.714490, 0.499294,
		35.075970, 34.155296, 37.028622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805241, 33.693558, 37.289001>,  <35.419048, 33.655151, 36.679115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805241, 33.693558, 37.289001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455109, 33.859837, 37.387794>,  <35.245029, 33.959602, 37.447071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455109, 33.859837, 37.387794>,  <35.805241, 33.693558, 37.289001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455109, 33.859837, 37.387794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005885, -0.519913, 0.854199,
		0.483499, 0.746248, 0.457539,
		-0.875325, 0.415697, 0.246986,
		35.192513, 33.984547, 37.461891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799419, 33.665287, 38.019588>,  <35.805241, 33.693558, 37.289001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799419, 33.665287, 38.019588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415382, 33.710239, 37.917145>,  <35.184959, 33.737213, 37.855679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415382, 33.710239, 37.917145>,  <35.799419, 33.665287, 38.019588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415382, 33.710239, 37.917145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279126, -0.442588, 0.852176,
		-0.017579, 0.889655, 0.456295,
		-0.960093, 0.112384, -0.256106,
		35.127354, 33.743954, 37.840313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488689, 34.058556, 38.521996>,  <35.799419, 33.665287, 38.019588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488689, 34.058556, 38.521996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201454, 33.861248, 38.325619>,  <35.029114, 33.742863, 38.207790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201454, 33.861248, 38.325619>,  <35.488689, 34.058556, 38.521996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201454, 33.861248, 38.325619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350645, -0.352918, 0.867466,
		-0.601161, 0.795067, 0.080463,
		-0.718091, -0.493272, -0.490946,
		34.986027, 33.713264, 38.178333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859127, 34.124950, 38.949051>,  <35.488689, 34.058556, 38.521996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859127, 34.124950, 38.949051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816795, 33.809200, 38.707161>,  <34.791397, 33.619751, 38.562027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816795, 33.809200, 38.707161>,  <34.859127, 34.124950, 38.949051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816795, 33.809200, 38.707161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135332, -0.591044, 0.795205,
		-0.985132, 0.165996, -0.044277,
		-0.105832, -0.789374, -0.604721,
		34.785046, 33.572388, 38.525745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269218, 33.840370, 39.254684>,  <34.859127, 34.124950, 38.949051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269218, 33.840370, 39.254684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487270, 33.577343, 39.046669>,  <34.618103, 33.419525, 38.921860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487270, 33.577343, 39.046669>,  <34.269218, 33.840370, 39.254684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487270, 33.577343, 39.046669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027535, -0.605928, 0.795043,
		-0.837900, -0.447720, -0.312203,
		0.545129, -0.657570, -0.520035,
		34.650810, 33.380074, 38.890659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952385, 33.106972, 39.463486>,  <34.269218, 33.840370, 39.254684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952385, 33.106972, 39.463486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320889, 33.046051, 39.320324>,  <34.541988, 33.009499, 39.234428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320889, 33.046051, 39.320324>,  <33.952385, 33.106972, 39.463486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320889, 33.046051, 39.320324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135253, -0.737291, 0.661898,
		-0.364687, -0.658184, -0.658633,
		0.921255, -0.152304, -0.357902,
		34.597263, 33.000359, 39.212952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983978, 32.384541, 39.288372>,  <33.952385, 33.106972, 39.463486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983978, 32.384541, 39.288372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367191, 32.496849, 39.311474>,  <34.597118, 32.564236, 39.325333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367191, 32.496849, 39.311474>,  <33.983978, 32.384541, 39.288372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367191, 32.496849, 39.311474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186922, -0.764654, 0.616737,
		0.217324, -0.580060, -0.785048,
		0.958034, 0.280775, 0.057752,
		34.654602, 32.581081, 39.328800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326992, 31.779285, 39.052242>,  <33.983978, 32.384541, 39.288372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326992, 31.779285, 39.052242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590630, 32.007217, 39.248566>,  <34.748814, 32.143978, 39.366360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590630, 32.007217, 39.248566>,  <34.326992, 31.779285, 39.052242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590630, 32.007217, 39.248566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204513, -0.763822, 0.612168,
		0.723718, -0.303101, -0.619969,
		0.659095, 0.569829, 0.490804,
		34.788357, 32.178165, 39.395805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898628, 31.263550, 39.280323>,  <34.326992, 31.779285, 39.052242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898628, 31.263550, 39.280323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909111, 31.592310, 39.507935>,  <34.915401, 31.789566, 39.644501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909111, 31.592310, 39.507935>,  <34.898628, 31.263550, 39.280323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909111, 31.592310, 39.507935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294319, -0.550337, 0.781348,
		0.955348, 0.147000, -0.256322,
		0.026205, 0.821900, 0.569029,
		34.916973, 31.838881, 39.678642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510677, 31.174007, 39.715233>,  <34.898628, 31.263550, 39.280323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510677, 31.174007, 39.715233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296707, 31.437429, 39.926952>,  <35.168324, 31.595482, 40.053986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296707, 31.437429, 39.926952>,  <35.510677, 31.174007, 39.715233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296707, 31.437429, 39.926952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229888, -0.489384, 0.841222,
		0.813021, 0.571674, 0.110392,
		-0.534929, 0.658554, 0.529300,
		35.136230, 31.634996, 40.085743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946289, 31.409586, 40.213573>,  <35.510677, 31.174007, 39.715233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946289, 31.409586, 40.213573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561409, 31.446499, 40.316059>,  <35.330479, 31.468647, 40.377552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561409, 31.446499, 40.316059>,  <35.946289, 31.409586, 40.213573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561409, 31.446499, 40.316059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198416, -0.406872, 0.891676,
		0.186532, 0.908812, 0.373184,
		-0.962204, 0.092280, 0.256218,
		35.272747, 31.474182, 40.392925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969616, 31.606453, 40.923622>,  <35.946289, 31.409586, 40.213573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969616, 31.606453, 40.923622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600285, 31.467037, 40.859150>,  <35.378685, 31.383389, 40.820465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600285, 31.467037, 40.859150>,  <35.969616, 31.606453, 40.923622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600285, 31.467037, 40.859150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087033, -0.598758, 0.796187,
		-0.374011, 0.721117, 0.583187,
		-0.923332, -0.348539, -0.161181,
		35.323284, 31.362476, 40.810795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816940, 31.417450, 41.583260>,  <35.969616, 31.606453, 40.923622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816940, 31.417450, 41.583260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524670, 31.242680, 41.373421>,  <35.349308, 31.137817, 41.247517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524670, 31.242680, 41.373421>,  <35.816940, 31.417450, 41.583260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524670, 31.242680, 41.373421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074969, -0.712398, 0.697760,
		-0.678591, 0.549168, 0.487780,
		-0.730681, -0.436925, -0.524597,
		35.305466, 31.111603, 41.216042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208717, 31.425547, 42.023918>,  <35.816940, 31.417450, 41.583260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208717, 31.425547, 42.023918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202286, 31.126463, 41.758385>,  <35.198425, 30.947012, 41.599064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202286, 31.126463, 41.758385>,  <35.208717, 31.425547, 42.023918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202286, 31.126463, 41.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217560, -0.645392, 0.732214,
		-0.975915, 0.156197, -0.152294,
		-0.016081, -0.747711, -0.663829,
		35.197460, 30.902149, 41.559235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689941, 30.963474, 42.320709>,  <35.208717, 31.425547, 42.023918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689941, 30.963474, 42.320709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840416, 30.721104, 42.040325>,  <34.930702, 30.575682, 41.872097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840416, 30.721104, 42.040325>,  <34.689941, 30.963474, 42.320709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840416, 30.721104, 42.040325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185225, -0.790436, 0.583868,
		-0.907842, -0.089807, -0.409583,
		0.376185, -0.605925, -0.700956,
		34.953270, 30.539326, 41.830040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143074, 30.490252, 42.017834>,  <34.689941, 30.963474, 42.320709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143074, 30.490252, 42.017834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483013, 30.294277, 41.940140>,  <34.686977, 30.176693, 41.893524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483013, 30.294277, 41.940140>,  <34.143074, 30.490252, 42.017834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483013, 30.294277, 41.940140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332677, -0.784523, 0.523306,
		-0.408770, -0.380110, -0.829713,
		0.849843, -0.489938, -0.194236,
		34.737965, 30.147295, 41.881870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889404, 29.814911, 41.909809>,  <34.143074, 30.490252, 42.017834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889404, 29.814911, 41.909809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282230, 29.771677, 41.971596>,  <34.517925, 29.745737, 42.008667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282230, 29.771677, 41.971596>,  <33.889404, 29.814911, 41.909809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282230, 29.771677, 41.971596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156769, -0.923289, 0.350658,
		0.104714, -0.368586, -0.923677,
		0.982068, -0.108085, 0.154464,
		34.576851, 29.739252, 42.017937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933323, 29.145855, 41.889915>,  <33.889404, 29.814911, 41.909809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933323, 29.145855, 41.889915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270416, 29.271040, 42.065121>,  <34.472672, 29.346151, 42.170246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270416, 29.271040, 42.065121>,  <33.933323, 29.145855, 41.889915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270416, 29.271040, 42.065121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082242, -0.878945, 0.469779,
		0.532015, -0.359874, -0.766453,
		0.842731, 0.312965, 0.438015,
		34.523235, 29.364929, 42.196526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448746, 28.620163, 41.820660>,  <33.933323, 29.145855, 41.889915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448746, 28.620163, 41.820660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555290, 28.852684, 42.128204>,  <34.619217, 28.992197, 42.312729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555290, 28.852684, 42.128204>,  <34.448746, 28.620163, 41.820660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555290, 28.852684, 42.128204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027380, -0.801915, 0.596811,
		0.963485, -0.137914, -0.229513,
		0.266358, 0.581302, 0.768857,
		34.635197, 29.027075, 42.358860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957901, 28.172903, 42.207554>,  <34.448746, 28.620163, 41.820660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957901, 28.172903, 42.207554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832317, 28.454245, 42.462654>,  <34.756966, 28.623049, 42.615715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832317, 28.454245, 42.462654>,  <34.957901, 28.172903, 42.207554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832317, 28.454245, 42.462654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003556, -0.672581, 0.740015,
		0.949430, 0.230067, 0.213664,
		-0.313959, 0.703353, 0.637750,
		34.738129, 28.665251, 42.653980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434925, 28.183462, 42.718140>,  <34.957901, 28.172903, 42.207554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434925, 28.183462, 42.718140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087421, 28.342554, 42.836166>,  <34.878918, 28.438009, 42.906982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087421, 28.342554, 42.836166>,  <35.434925, 28.183462, 42.718140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087421, 28.342554, 42.836166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030027, -0.637031, 0.770253,
		0.494320, 0.660306, 0.565371,
		-0.868761, 0.397728, 0.295070,
		34.826794, 28.461872, 42.924686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140926, 28.218004, 42.997757>,  <35.434925, 28.183462, 42.718140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140926, 28.218004, 42.997757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497360, 28.067188, 42.896713>,  <36.711220, 27.976698, 42.836086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497360, 28.067188, 42.896713>,  <36.140926, 28.218004, 42.997757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497360, 28.067188, 42.896713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178623, 0.803044, -0.568520,
		0.417209, 0.461478, 0.782927,
		0.891084, -0.377040, -0.252606,
		36.764687, 27.954077, 42.820930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592716, 28.851482, 42.965977>,  <36.140926, 28.218004, 42.997757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592716, 28.851482, 42.965977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793217, 28.557323, 42.783573>,  <36.913517, 28.380829, 42.674129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793217, 28.557323, 42.783573>,  <36.592716, 28.851482, 42.965977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793217, 28.557323, 42.783573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369565, 0.658450, -0.655641,
		0.782414, 0.160114, 0.601823,
		0.501248, -0.735396, -0.456008,
		36.943592, 28.336704, 42.646770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244907, 29.157005, 42.877716>,  <36.592716, 28.851482, 42.965977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244907, 29.157005, 42.877716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178478, 28.858561, 42.619804>,  <37.138622, 28.679493, 42.465057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178478, 28.858561, 42.619804>,  <37.244907, 29.157005, 42.877716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178478, 28.858561, 42.619804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269508, 0.594620, -0.757491,
		0.948570, -0.299569, 0.102335,
		-0.166070, -0.746114, -0.644775,
		37.128658, 28.634726, 42.426373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774456, 29.258677, 42.403469>,  <37.244907, 29.157005, 42.877716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774456, 29.258677, 42.403469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548450, 29.006662, 42.190372>,  <37.412849, 28.855453, 42.062515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548450, 29.006662, 42.190372>,  <37.774456, 29.258677, 42.403469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548450, 29.006662, 42.190372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237355, 0.494276, -0.836274,
		0.790207, -0.598952, -0.129728,
		-0.565009, -0.630038, -0.532745,
		37.378948, 28.817652, 42.030548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181763, 29.064951, 41.887329>,  <37.774456, 29.258677, 42.403469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181763, 29.064951, 41.887329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804420, 28.996693, 41.773514>,  <37.578014, 28.955738, 41.705223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804420, 28.996693, 41.773514>,  <38.181763, 29.064951, 41.887329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804420, 28.996693, 41.773514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179672, 0.458218, -0.870491,
		0.278924, -0.872306, -0.401602,
		-0.943355, -0.170644, -0.284536,
		37.521416, 28.945499, 41.688152>
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
