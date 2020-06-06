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
	<24.154446, 34.939884, 35.280174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291338, 34.853935, 34.914288>,  <24.373472, 34.802368, 34.694756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291338, 34.853935, 34.914288>,  <24.154446, 34.939884, 35.280174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291338, 34.853935, 34.914288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936511, -0.001078, 0.350636,
		-0.076327, -0.976642, 0.200859,
		0.342229, -0.214870, -0.914719,
		24.394007, 34.789474, 34.639874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558060, 34.310425, 35.194237>,  <24.154446, 34.939884, 35.280174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558060, 34.310425, 35.194237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707781, 34.539513, 34.902515>,  <24.797613, 34.676964, 34.727482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707781, 34.539513, 34.902515>,  <24.558060, 34.310425, 35.194237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707781, 34.539513, 34.902515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927096, -0.214393, 0.307456,
		0.019728, -0.791220, -0.611214,
		0.374305, 0.572719, -0.729307,
		24.820072, 34.711327, 34.683723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128456, 33.851830, 34.973957>,  <24.558060, 34.310425, 35.194237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128456, 33.851830, 34.973957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192751, 34.237392, 34.889065>,  <25.231329, 34.468731, 34.838131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192751, 34.237392, 34.889065>,  <25.128456, 33.851830, 34.973957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192751, 34.237392, 34.889065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954512, -0.097100, 0.281920,
		0.251138, -0.247890, -0.935671,
		0.160739, 0.963910, -0.212229,
		25.240973, 34.526566, 34.825397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782696, 34.079815, 34.547447>,  <25.128456, 33.851830, 34.973957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782696, 34.079815, 34.547447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717175, 34.355503, 34.829765>,  <25.677862, 34.520916, 34.999157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717175, 34.355503, 34.829765>,  <25.782696, 34.079815, 34.547447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717175, 34.355503, 34.829765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866416, -0.241584, 0.436990,
		0.471691, 0.683092, -0.557579,
		-0.163803, 0.689219, 0.705794,
		25.668034, 34.562267, 35.041504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425747, 34.531208, 34.730278>,  <25.782696, 34.079815, 34.547447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425747, 34.531208, 34.730278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194452, 34.508091, 35.055805>,  <26.055676, 34.494221, 35.251122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194452, 34.508091, 35.055805>,  <26.425747, 34.531208, 34.730278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194452, 34.508091, 35.055805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787113, -0.302017, 0.537809,
		0.214705, 0.951549, 0.220128,
		-0.578234, -0.057795, 0.813821,
		26.020983, 34.490753, 35.299953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934486, 34.033890, 34.439487>,  <26.425747, 34.531208, 34.730278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934486, 34.033890, 34.439487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184723, 34.331551, 34.533184>,  <27.334866, 34.510147, 34.589401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184723, 34.331551, 34.533184>,  <26.934486, 34.033890, 34.439487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184723, 34.331551, 34.533184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274806, 0.070815, -0.958888,
		-0.730148, 0.664245, -0.160196,
		0.625592, 0.744153, 0.234244,
		27.372400, 34.554798, 34.603458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986017, 34.268990, 33.718773>,  <26.934486, 34.033890, 34.439487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986017, 34.268990, 33.718773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300611, 34.411308, 33.920700>,  <27.489368, 34.496700, 34.041859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300611, 34.411308, 33.920700>,  <26.986017, 34.268990, 33.718773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300611, 34.411308, 33.920700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490926, 0.135804, -0.860551,
		-0.374738, 0.924644, -0.067862,
		0.786487, 0.355797, 0.504823,
		27.536558, 34.518047, 34.072147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242388, 34.938080, 33.461754>,  <26.986017, 34.268990, 33.718773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242388, 34.938080, 33.461754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554781, 34.736423, 33.609215>,  <27.742218, 34.615429, 33.697689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554781, 34.736423, 33.609215>,  <27.242388, 34.938080, 33.461754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554781, 34.736423, 33.609215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414614, -0.022922, -0.909708,
		0.467073, 0.863316, 0.191123,
		0.780985, -0.504143, 0.368649,
		27.789076, 34.585182, 33.719810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738476, 35.257309, 33.180573>,  <27.242388, 34.938080, 33.461754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738476, 35.257309, 33.180573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876699, 34.892143, 33.267456>,  <27.959635, 34.673046, 33.319588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876699, 34.892143, 33.267456>,  <27.738476, 35.257309, 33.180573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876699, 34.892143, 33.267456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238444, -0.138451, -0.961237,
		0.907597, 0.383958, 0.169835,
		0.345561, -0.912912, 0.217210,
		27.980368, 34.618271, 33.332619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333929, 35.144249, 32.748184>,  <27.738476, 35.257309, 33.180573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333929, 35.144249, 32.748184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221565, 34.779423, 32.867668>,  <28.154146, 34.560528, 32.939358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221565, 34.779423, 32.867668>,  <28.333929, 35.144249, 32.748184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221565, 34.779423, 32.867668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140086, -0.346872, -0.927392,
		0.949455, -0.218671, 0.225208,
		-0.280912, -0.912065, 0.298707,
		28.137291, 34.505802, 32.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789354, 34.718723, 32.367962>,  <28.333929, 35.144249, 32.748184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789354, 34.718723, 32.367962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504440, 34.469242, 32.496738>,  <28.333492, 34.319553, 32.574005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504440, 34.469242, 32.496738>,  <28.789354, 34.718723, 32.367962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504440, 34.469242, 32.496738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023478, -0.479588, -0.877180,
		0.701495, -0.617245, 0.356247,
		-0.712287, -0.623701, 0.321937,
		28.290754, 34.282131, 32.593319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020498, 34.066994, 32.297958>,  <28.789354, 34.718723, 32.367962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020498, 34.066994, 32.297958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625166, 34.006947, 32.308319>,  <28.387966, 33.970921, 32.314537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625166, 34.006947, 32.308319>,  <29.020498, 34.066994, 32.297958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625166, 34.006947, 32.308319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081861, -0.666768, -0.740756,
		0.128469, -0.729990, 0.671275,
		-0.988329, -0.150115, 0.025901,
		28.328667, 33.961910, 32.316090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982992, 33.304310, 32.206383>,  <29.020498, 34.066994, 32.297958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982992, 33.304310, 32.206383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617863, 33.450172, 32.132866>,  <28.398785, 33.537689, 32.088757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617863, 33.450172, 32.132866>,  <28.982992, 33.304310, 32.206383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617863, 33.450172, 32.132866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034558, -0.379475, -0.924556,
		-0.406898, -0.850305, 0.333790,
		-0.912820, 0.364665, -0.183793,
		28.344015, 33.559570, 32.077728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656326, 32.770050, 31.921913>,  <28.982992, 33.304310, 32.206383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656326, 32.770050, 31.921913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444094, 33.083614, 31.792934>,  <28.316755, 33.271751, 31.715548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444094, 33.083614, 31.792934>,  <28.656326, 32.770050, 31.921913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444094, 33.083614, 31.792934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080777, -0.331915, -0.939845,
		-0.843778, -0.524709, 0.112786,
		-0.530580, 0.783909, -0.322446,
		28.284920, 33.318787, 31.696201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090359, 32.529449, 31.457083>,  <28.656326, 32.770050, 31.921913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090359, 32.529449, 31.457083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117998, 32.916985, 31.361942>,  <28.134583, 33.149506, 31.304859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117998, 32.916985, 31.361942>,  <28.090359, 32.529449, 31.457083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117998, 32.916985, 31.361942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084910, -0.243265, -0.966236,
		-0.993990, 0.046570, -0.099073,
		0.069099, 0.968841, -0.237849,
		28.138727, 33.207638, 31.290588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557514, 32.661579, 31.073244>,  <28.090359, 32.529449, 31.457083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557514, 32.661579, 31.073244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853256, 32.913139, 30.977045>,  <28.030701, 33.064075, 30.919327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853256, 32.913139, 30.977045>,  <27.557514, 32.661579, 31.073244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853256, 32.913139, 30.977045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039594, -0.315955, -0.947948,
		-0.672150, 0.710393, -0.208703,
		0.739356, 0.628900, -0.240496,
		28.075064, 33.101810, 30.904896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355104, 32.883965, 30.503559>,  <27.557514, 32.661579, 31.073244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355104, 32.883965, 30.503559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737940, 32.998302, 30.484503>,  <27.967642, 33.066906, 30.473068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737940, 32.998302, 30.484503>,  <27.355104, 32.883965, 30.503559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737940, 32.998302, 30.484503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006446, -0.143360, -0.989650,
		-0.289717, 0.947491, -0.135366,
		0.957091, 0.285846, -0.047641,
		28.025066, 33.084057, 30.470211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443563, 33.287472, 29.815655>,  <27.355104, 32.883965, 30.503559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443563, 33.287472, 29.815655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820108, 33.180664, 29.898153>,  <28.046036, 33.116581, 29.947653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820108, 33.180664, 29.898153>,  <27.443563, 33.287472, 29.815655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820108, 33.180664, 29.898153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135218, -0.261470, -0.955693,
		0.309116, 0.927542, -0.210032,
		0.941363, -0.267020, 0.206245,
		28.102518, 33.100559, 29.960026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877295, 33.649994, 29.328171>,  <27.443563, 33.287472, 29.815655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877295, 33.649994, 29.328171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119633, 33.357502, 29.453552>,  <28.265036, 33.182007, 29.528782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119633, 33.357502, 29.453552>,  <27.877295, 33.649994, 29.328171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119633, 33.357502, 29.453552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063337, -0.348413, -0.935199,
		0.793057, 0.586440, -0.164771,
		0.605846, -0.731230, 0.313454,
		28.301386, 33.138134, 29.547588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456326, 33.561234, 28.838442>,  <27.877295, 33.649994, 29.328171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456326, 33.561234, 28.838442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461071, 33.202198, 29.014709>,  <28.463919, 32.986774, 29.120470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461071, 33.202198, 29.014709>,  <28.456326, 33.561234, 28.838442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461071, 33.202198, 29.014709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168051, -0.432643, -0.885764,
		0.985707, 0.084564, 0.145708,
		0.011864, -0.897591, 0.440671,
		28.464630, 32.932922, 29.146910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973063, 33.230690, 28.438391>,  <28.456326, 33.561234, 28.838442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973063, 33.230690, 28.438391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767744, 32.938927, 28.619272>,  <28.644552, 32.763870, 28.727800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767744, 32.938927, 28.619272>,  <28.973063, 33.230690, 28.438391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767744, 32.938927, 28.619272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044084, -0.548628, -0.834903,
		0.857078, -0.408618, 0.313764,
		-0.513296, -0.729409, 0.452204,
		28.613754, 32.720104, 28.754934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355286, 32.634163, 28.383764>,  <28.973063, 33.230690, 28.438391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355286, 32.634163, 28.383764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975351, 32.522362, 28.439898>,  <28.747391, 32.455280, 28.473577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975351, 32.522362, 28.439898>,  <29.355286, 32.634163, 28.383764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975351, 32.522362, 28.439898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055160, -0.591376, -0.804507,
		0.307853, -0.756407, 0.577127,
		-0.949834, -0.279504, 0.140334,
		28.690401, 32.438511, 28.481998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442011, 31.873220, 28.268763>,  <29.355286, 32.634163, 28.383764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442011, 31.873220, 28.268763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049978, 31.942421, 28.229746>,  <28.814758, 31.983940, 28.206335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049978, 31.942421, 28.229746>,  <29.442011, 31.873220, 28.268763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049978, 31.942421, 28.229746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051705, -0.696470, -0.715720,
		-0.191756, -0.696420, 0.691541,
		-0.980080, 0.173000, -0.097544,
		28.755955, 31.994322, 28.200483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105927, 31.228384, 28.427507>,  <29.442011, 31.873220, 28.268763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105927, 31.228384, 28.427507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888634, 31.460066, 28.184387>,  <28.758259, 31.599075, 28.038515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888634, 31.460066, 28.184387>,  <29.105927, 31.228384, 28.427507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888634, 31.460066, 28.184387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191648, -0.790366, -0.581887,
		-0.817417, -0.199615, 0.540354,
		-0.543231, 0.579203, -0.607803,
		28.725664, 31.633827, 28.002047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540115, 30.808214, 28.109503>,  <29.105927, 31.228384, 28.427507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540115, 30.808214, 28.109503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611380, 31.137854, 27.894423>,  <28.654139, 31.335636, 27.765373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611380, 31.137854, 27.894423>,  <28.540115, 30.808214, 28.109503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611380, 31.137854, 27.894423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172132, -0.511917, -0.841613,
		-0.968829, 0.242498, 0.050651,
		0.178160, 0.824097, -0.537702,
		28.664827, 31.385082, 27.733112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984474, 30.891855, 27.738138>,  <28.540115, 30.808214, 28.109503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984474, 30.891855, 27.738138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313509, 31.037062, 27.563065>,  <28.510931, 31.124186, 27.458021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313509, 31.037062, 27.563065>,  <27.984474, 30.891855, 27.738138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313509, 31.037062, 27.563065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148112, -0.606356, -0.781278,
		-0.549009, 0.707496, -0.445014,
		0.822588, 0.363017, -0.437684,
		28.560286, 31.145967, 27.431759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908865, 31.126165, 26.985813>,  <27.984474, 30.891855, 27.738138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908865, 31.126165, 26.985813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294756, 31.023893, 27.010899>,  <28.526291, 30.962530, 27.025949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294756, 31.023893, 27.010899>,  <27.908865, 31.126165, 26.985813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294756, 31.023893, 27.010899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154205, -0.741902, -0.652536,
		0.213368, 0.619847, -0.755158,
		0.964725, -0.255679, 0.062715,
		28.584173, 30.947189, 27.029713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137402, 30.922165, 26.353857>,  <27.908865, 31.126165, 26.985813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137402, 30.922165, 26.353857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399893, 30.751419, 26.602743>,  <28.557386, 30.648972, 26.752075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.399893, 30.751419, 26.602743>,  <28.137402, 30.922165, 26.353857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399893, 30.751419, 26.602743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050527, -0.847610, -0.528209,
		0.752871, 0.315186, -0.577792,
		0.656226, -0.426867, 0.622215,
		28.596760, 30.623360, 26.789408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616880, 30.481005, 25.987917>,  <28.137402, 30.922165, 26.353857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616880, 30.481005, 25.987917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576660, 30.342630, 26.361059>,  <28.552528, 30.259605, 26.584944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576660, 30.342630, 26.361059>,  <28.616880, 30.481005, 25.987917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576660, 30.342630, 26.361059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043279, -0.935198, -0.351469,
		0.993990, -0.075712, 0.079061,
		-0.100548, -0.345936, 0.932855,
		28.546495, 30.238850, 26.640915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153576, 29.875910, 26.270144>,  <28.616880, 30.481005, 25.987917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153576, 29.875910, 26.270144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812328, 29.851692, 26.477421>,  <28.607580, 29.837162, 26.601788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812328, 29.851692, 26.477421>,  <29.153576, 29.875910, 26.270144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812328, 29.851692, 26.477421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076982, -0.967764, -0.239803,
		0.516009, -0.244472, 0.820956,
		-0.853117, -0.060542, 0.518195,
		28.556393, 29.833530, 26.632879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133150, 29.151632, 26.579937>,  <29.153576, 29.875910, 26.270144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133150, 29.151632, 26.579937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762718, 29.301844, 26.565228>,  <28.540459, 29.391972, 26.556402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762718, 29.301844, 26.565228>,  <29.133150, 29.151632, 26.579937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762718, 29.301844, 26.565228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360898, -0.909988, -0.204145,
		-0.110127, -0.175782, 0.978250,
		-0.926080, 0.375530, -0.036775,
		28.484894, 29.414503, 26.554195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103735, 29.126352, 27.331770>,  <29.133150, 29.151632, 26.579937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103735, 29.126352, 27.331770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209553, 28.783432, 27.155113>,  <29.273043, 28.577679, 27.049120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209553, 28.783432, 27.155113>,  <29.103735, 29.126352, 27.331770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209553, 28.783432, 27.155113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777981, -0.080902, 0.623057,
		-0.569878, -0.508416, 0.645563,
		0.264545, -0.857303, -0.441642,
		29.288916, 28.526241, 27.022621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995073, 28.420124, 27.756235>,  <29.103735, 29.126352, 27.331770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995073, 28.420124, 27.756235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311499, 28.460505, 27.514894>,  <29.501354, 28.484734, 27.370090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311499, 28.460505, 27.514894>,  <28.995073, 28.420124, 27.756235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311499, 28.460505, 27.514894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598179, 0.078841, 0.797475,
		0.128080, -0.991762, 0.001977,
		0.791061, 0.100958, -0.603349,
		29.548817, 28.490789, 27.333889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413507, 28.056120, 28.150921>,  <28.995073, 28.420124, 27.756235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413507, 28.056120, 28.150921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654074, 28.237022, 27.887478>,  <29.798412, 28.345564, 27.729412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654074, 28.237022, 27.887478>,  <29.413507, 28.056120, 28.150921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654074, 28.237022, 27.887478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697555, 0.104662, 0.708846,
		0.389512, -0.885726, -0.252528,
		0.601413, 0.452256, -0.658609,
		29.834497, 28.372700, 27.689896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023838, 27.822582, 28.261757>,  <29.413507, 28.056120, 28.150921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023838, 27.822582, 28.261757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069983, 28.196648, 28.127794>,  <30.097670, 28.421087, 28.047417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069983, 28.196648, 28.127794>,  <30.023838, 27.822582, 28.261757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069983, 28.196648, 28.127794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416366, 0.260582, 0.871055,
		0.901848, -0.239930, -0.359309,
		0.115363, 0.935163, -0.334904,
		30.104591, 28.477196, 28.027323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755333, 28.116182, 28.453054>,  <30.023838, 27.822582, 28.261757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755333, 28.116182, 28.453054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490124, 28.412825, 28.412212>,  <30.330999, 28.590809, 28.387707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490124, 28.412825, 28.412212>,  <30.755333, 28.116182, 28.453054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490124, 28.412825, 28.412212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309095, 0.395426, 0.864927,
		0.681808, 0.541906, -0.491402,
		-0.663022, 0.741604, -0.102104,
		30.291218, 28.635305, 28.381580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180143, 28.689749, 28.720840>,  <30.755333, 28.116182, 28.453054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180143, 28.689749, 28.720840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796638, 28.802876, 28.709604>,  <30.566536, 28.870752, 28.702862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796638, 28.802876, 28.709604>,  <31.180143, 28.689749, 28.720840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796638, 28.802876, 28.709604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194958, 0.726381, 0.659062,
		0.206798, 0.626407, -0.751564,
		-0.958763, 0.282816, -0.028091,
		30.509010, 28.887720, 28.701178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193026, 29.452831, 28.647448>,  <31.180143, 28.689749, 28.720840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193026, 29.452831, 28.647448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843620, 29.349304, 28.812366>,  <30.633978, 29.287188, 28.911318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843620, 29.349304, 28.812366>,  <31.193026, 29.452831, 28.647448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843620, 29.349304, 28.812366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105671, 0.725942, 0.679589,
		-0.475193, 0.637198, -0.606770,
		-0.873513, -0.258818, 0.412296,
		30.581566, 29.271658, 28.936056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819187, 30.041283, 28.690859>,  <31.193026, 29.452831, 28.647448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819187, 30.041283, 28.690859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685225, 29.782890, 28.965244>,  <30.604847, 29.627855, 29.129875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685225, 29.782890, 28.965244>,  <30.819187, 30.041283, 28.690859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685225, 29.782890, 28.965244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151265, 0.681705, 0.715819,
		-0.930030, 0.343496, -0.130595,
		-0.334908, -0.645979, 0.685965,
		30.584753, 29.589096, 29.171034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362684, 30.443306, 29.084358>,  <30.819187, 30.041283, 28.690859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362684, 30.443306, 29.084358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465622, 30.135378, 29.317991>,  <30.527384, 29.950621, 29.458170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465622, 30.135378, 29.317991>,  <30.362684, 30.443306, 29.084358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465622, 30.135378, 29.317991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182868, 0.632314, 0.752820,
		-0.948859, -0.086924, 0.303498,
		0.257344, -0.769820, 0.584081,
		30.542826, 29.904432, 29.493216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028852, 30.536753, 29.724695>,  <30.362684, 30.443306, 29.084358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028852, 30.536753, 29.724695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327772, 30.287115, 29.815952>,  <30.507124, 30.137333, 29.870707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327772, 30.287115, 29.815952>,  <30.028852, 30.536753, 29.724695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327772, 30.287115, 29.815952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141643, 0.485061, 0.862933,
		-0.649215, -0.612554, 0.450884,
		0.747299, -0.624094, 0.228145,
		30.551962, 30.099888, 29.884396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991489, 30.566616, 30.496042>,  <30.028852, 30.536753, 29.724695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991489, 30.566616, 30.496042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345678, 30.393381, 30.428661>,  <30.558191, 30.289440, 30.388233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345678, 30.393381, 30.428661>,  <29.991489, 30.566616, 30.496042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345678, 30.393381, 30.428661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376714, 0.456753, 0.805893,
		-0.272080, -0.777053, 0.567592,
		0.885471, -0.433087, -0.168453,
		30.611320, 30.263454, 30.378126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215002, 30.295877, 31.091852>,  <29.991489, 30.566616, 30.496042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215002, 30.295877, 31.091852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545994, 30.351158, 30.874163>,  <30.744589, 30.384327, 30.743549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545994, 30.351158, 30.874163>,  <30.215002, 30.295877, 31.091852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545994, 30.351158, 30.874163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415335, 0.501596, 0.758879,
		0.377857, -0.853992, 0.357661,
		0.827479, 0.138198, -0.544225,
		30.794237, 30.392618, 30.710896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723440, 30.385839, 31.603487>,  <30.215002, 30.295877, 31.091852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723440, 30.385839, 31.603487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904358, 30.536961, 31.280329>,  <31.012909, 30.627632, 31.086433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904358, 30.536961, 31.280329>,  <30.723440, 30.385839, 31.603487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904358, 30.536961, 31.280329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445872, 0.688738, 0.571698,
		0.772416, -0.618794, 0.143062,
		0.452295, 0.377802, -0.807895,
		31.040047, 30.650301, 31.037960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272919, 30.548910, 31.861357>,  <30.723440, 30.385839, 31.603487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272919, 30.548910, 31.861357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259571, 30.752430, 31.517262>,  <31.251562, 30.874542, 31.310804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259571, 30.752430, 31.517262>,  <31.272919, 30.548910, 31.861357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259571, 30.752430, 31.517262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410727, 0.791659, 0.452305,
		0.911147, -0.338230, -0.235396,
		-0.033370, 0.508800, -0.860238,
		31.249559, 30.905069, 31.259190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817623, 30.985764, 31.963432>,  <31.272919, 30.548910, 31.861357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817623, 30.985764, 31.963432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575829, 31.169136, 31.702837>,  <31.430752, 31.279160, 31.546480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575829, 31.169136, 31.702837>,  <31.817623, 30.985764, 31.963432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575829, 31.169136, 31.702837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221982, 0.882362, 0.414922,
		0.765061, 0.106197, -0.635141,
		-0.604488, 0.458431, -0.651487,
		31.394482, 31.306665, 31.507391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211342, 31.622414, 31.607100>,  <31.817623, 30.985764, 31.963432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211342, 31.622414, 31.607100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815264, 31.676483, 31.593048>,  <31.577616, 31.708925, 31.584618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815264, 31.676483, 31.593048>,  <32.211342, 31.622414, 31.607100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815264, 31.676483, 31.593048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115324, 0.933212, 0.340318,
		0.078784, 0.332932, -0.939654,
		-0.990199, 0.135176, -0.035127,
		31.518204, 31.717035, 31.582510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134094, 32.355824, 31.434090>,  <32.211342, 31.622414, 31.607100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134094, 32.355824, 31.434090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770864, 32.244560, 31.559324>,  <31.552927, 32.177803, 31.634464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770864, 32.244560, 31.559324>,  <32.134094, 32.355824, 31.434090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770864, 32.244560, 31.559324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119641, 0.888716, 0.442571,
		-0.401352, 0.364430, -0.840302,
		-0.908076, -0.278162, 0.313087,
		31.498442, 32.161110, 31.653250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570473, 32.898048, 31.249880>,  <32.134094, 32.355824, 31.434090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570473, 32.898048, 31.249880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468760, 32.691578, 31.577026>,  <31.407732, 32.567696, 31.773314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468760, 32.691578, 31.577026>,  <31.570473, 32.898048, 31.249880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468760, 32.691578, 31.577026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095114, 0.854909, 0.509985,
		-0.962442, 0.051889, -0.266482,
		-0.254281, -0.516177, 0.817865,
		31.392475, 32.536724, 31.822386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264971, 33.377777, 31.530569>,  <31.570473, 32.898048, 31.249880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264971, 33.377777, 31.530569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257975, 33.119217, 31.835690>,  <31.253777, 32.964081, 32.018761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257975, 33.119217, 31.835690>,  <31.264971, 33.377777, 31.530569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257975, 33.119217, 31.835690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242066, 0.742958, 0.624034,
		-0.970102, -0.173732, -0.169467,
		-0.017492, -0.646398, 0.762800,
		31.252728, 32.925297, 32.064529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663181, 33.338341, 31.847897>,  <31.264971, 33.377777, 31.530569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663181, 33.338341, 31.847897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855913, 33.184772, 32.162971>,  <30.971552, 33.092632, 32.352016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855913, 33.184772, 32.162971>,  <30.663181, 33.338341, 31.847897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855913, 33.184772, 32.162971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527593, 0.590611, 0.610594,
		-0.699633, -0.709779, 0.082021,
		0.481829, -0.383918, 0.787685,
		31.000462, 33.069595, 32.399277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140480, 33.296146, 32.308220>,  <30.663181, 33.338341, 31.847897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140480, 33.296146, 32.308220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488419, 33.300404, 32.505505>,  <30.697182, 33.302959, 32.623875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488419, 33.300404, 32.505505>,  <30.140480, 33.296146, 32.308220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488419, 33.300404, 32.505505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423338, 0.529413, 0.735191,
		-0.253288, -0.848297, 0.465013,
		0.869844, 0.010643, 0.493211,
		30.749372, 33.303596, 32.653469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021912, 33.132122, 33.060734>,  <30.140480, 33.296146, 32.308220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021912, 33.132122, 33.060734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388660, 33.291698, 33.055187>,  <30.608709, 33.387444, 33.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388660, 33.291698, 33.055187>,  <30.021912, 33.132122, 33.060734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388660, 33.291698, 33.055187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263928, 0.631898, 0.728730,
		0.299481, -0.664493, 0.684661,
		0.916872, 0.398942, -0.013863,
		30.663721, 33.411381, 33.051029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161898, 33.119530, 33.766941>,  <30.021912, 33.132122, 33.060734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161898, 33.119530, 33.766941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405060, 33.385052, 33.592670>,  <30.550957, 33.544365, 33.488110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405060, 33.385052, 33.592670>,  <30.161898, 33.119530, 33.766941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405060, 33.385052, 33.592670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190587, 0.654649, 0.731513,
		0.770795, -0.361658, 0.524479,
		0.607907, 0.663806, -0.435673,
		30.587431, 33.584194, 33.461967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738167, 33.190147, 34.194653>,  <30.161898, 33.119530, 33.766941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738167, 33.190147, 34.194653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689348, 33.510162, 33.959694>,  <30.660057, 33.702171, 33.818718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689348, 33.510162, 33.959694>,  <30.738167, 33.190147, 34.194653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689348, 33.510162, 33.959694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130280, 0.573789, 0.808575,
		0.983937, 0.175210, 0.034200,
		-0.122047, 0.800042, -0.587399,
		30.652735, 33.750175, 33.783474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069986, 33.693291, 34.667442>,  <30.738167, 33.190147, 34.194653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069986, 33.693291, 34.667442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894869, 33.919582, 34.387932>,  <30.789799, 34.055359, 34.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894869, 33.919582, 34.387932>,  <31.069986, 33.693291, 34.667442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894869, 33.919582, 34.387932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303977, 0.638305, 0.707224,
		0.846130, 0.522028, -0.107475,
		-0.437792, 0.565734, -0.698773,
		30.763531, 34.089302, 34.178299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143209, 34.392704, 34.933121>,  <31.069986, 33.693291, 34.667442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143209, 34.392704, 34.933121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848902, 34.403366, 34.662437>,  <30.672318, 34.409763, 34.500027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848902, 34.403366, 34.662437>,  <31.143209, 34.392704, 34.933121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848902, 34.403366, 34.662437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498619, 0.654848, 0.567938,
		0.458279, 0.755291, -0.468525,
		-0.735771, 0.026659, -0.676705,
		30.628170, 34.411366, 34.459427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995647, 34.976421, 34.859638>,  <31.143209, 34.392704, 34.933121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995647, 34.976421, 34.859638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651979, 34.821453, 34.725933>,  <30.445778, 34.728470, 34.645710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651979, 34.821453, 34.725933>,  <30.995647, 34.976421, 34.859638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651979, 34.821453, 34.725933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511311, 0.624939, 0.589926,
		-0.019659, 0.677758, -0.735023,
		-0.859171, -0.387422, -0.334259,
		30.394228, 34.705227, 34.625656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651060, 35.023716, 34.522331>,  <30.995647, 34.976421, 34.859638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651060, 35.023716, 34.522331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897707, 35.326637, 34.608379>,  <32.045696, 35.508389, 34.660007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897707, 35.326637, 34.608379>,  <31.651060, 35.023716, 34.522331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897707, 35.326637, 34.608379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167008, -0.392859, 0.904307,
		0.769343, -0.521687, -0.368719,
		0.616620, 0.757301, 0.215118,
		32.082691, 35.553829, 34.672916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302189, 34.755939, 34.873295>,  <31.651060, 35.023716, 34.522331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302189, 34.755939, 34.873295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201023, 35.124104, 34.992546>,  <32.140324, 35.345001, 35.064098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201023, 35.124104, 34.992546>,  <32.302189, 34.755939, 34.873295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201023, 35.124104, 34.992546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242146, -0.238121, 0.940565,
		0.936695, 0.310077, -0.162648,
		-0.252918, 0.920408, 0.298131,
		32.125149, 35.400227, 35.081985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798599, 34.986732, 35.446369>,  <32.302189, 34.755939, 34.873295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798599, 34.986732, 35.446369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466370, 35.209015, 35.460983>,  <32.267033, 35.342384, 35.469753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466370, 35.209015, 35.460983>,  <32.798599, 34.986732, 35.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466370, 35.209015, 35.460983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010736, -0.081573, 0.996610,
		0.556804, 0.827366, 0.073718,
		-0.830575, 0.555708, 0.036538,
		32.217197, 35.375729, 35.471943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960915, 35.433834, 35.952705>,  <32.798599, 34.986732, 35.446369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960915, 35.433834, 35.952705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564854, 35.391880, 35.915623>,  <32.327217, 35.366707, 35.893372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564854, 35.391880, 35.915623>,  <32.960915, 35.433834, 35.952705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564854, 35.391880, 35.915623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081387, -0.107489, 0.990870,
		-0.113893, 0.988658, 0.097894,
		-0.990154, -0.104886, -0.092706,
		32.267807, 35.360413, 35.887810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513645, 36.036396, 36.286705>,  <32.960915, 35.433834, 35.952705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513645, 36.036396, 36.286705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347015, 35.672909, 36.276154>,  <32.247036, 35.454815, 36.269825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347015, 35.672909, 36.276154>,  <32.513645, 36.036396, 36.286705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347015, 35.672909, 36.276154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031927, -0.043617, 0.998538,
		-0.908539, 0.415128, 0.047182,
		-0.416579, -0.908717, -0.026374,
		32.222042, 35.400295, 36.268242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968023, 35.995827, 36.800678>,  <32.513645, 36.036396, 36.286705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968023, 35.995827, 36.800678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154530, 35.647221, 36.739933>,  <32.266434, 35.438057, 36.703487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154530, 35.647221, 36.739933>,  <31.968023, 35.995827, 36.800678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154530, 35.647221, 36.739933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098437, -0.119489, 0.987944,
		-0.879150, -0.475594, 0.030075,
		0.466267, -0.871512, -0.151865,
		32.294411, 35.385769, 36.694374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685041, 35.550488, 37.202820>,  <31.968023, 35.995827, 36.800678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685041, 35.550488, 37.202820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042736, 35.386688, 37.130539>,  <32.257351, 35.288406, 37.087170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042736, 35.386688, 37.130539>,  <31.685041, 35.550488, 37.202820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042736, 35.386688, 37.130539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142255, -0.122764, 0.982188,
		-0.424391, -0.904011, -0.051526,
		0.894235, -0.409502, -0.180700,
		32.311005, 35.263836, 37.076328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721752, 34.977375, 37.673244>,  <31.685041, 35.550488, 37.202820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721752, 34.977375, 37.673244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102062, 35.039536, 37.566002>,  <32.330246, 35.076832, 37.501656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102062, 35.039536, 37.566002>,  <31.721752, 34.977375, 37.673244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102062, 35.039536, 37.566002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286917, -0.114547, 0.951082,
		0.117087, -0.981188, -0.153495,
		0.950773, 0.155400, -0.268107,
		32.387295, 35.086155, 37.485569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088806, 34.378651, 37.880531>,  <31.721752, 34.977375, 37.673244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088806, 34.378651, 37.880531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387749, 34.641819, 37.843437>,  <32.567116, 34.799721, 37.821182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387749, 34.641819, 37.843437>,  <32.088806, 34.378651, 37.880531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387749, 34.641819, 37.843437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373836, -0.300999, 0.877295,
		0.549278, -0.690319, -0.470908,
		0.747356, 0.657921, -0.092734,
		32.611954, 34.839195, 37.815617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771091, 34.018974, 38.098610>,  <32.088806, 34.378651, 37.880531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771091, 34.018974, 38.098610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830986, 34.413750, 38.122372>,  <32.866924, 34.650616, 38.136627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830986, 34.413750, 38.122372>,  <32.771091, 34.018974, 38.098610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830986, 34.413750, 38.122372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592718, -0.137688, 0.793554,
		0.791369, -0.083615, -0.605594,
		0.149736, 0.986940, 0.059402,
		32.875908, 34.709831, 38.140194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349266, 34.036461, 38.423210>,  <32.771091, 34.018974, 38.098610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349266, 34.036461, 38.423210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240685, 34.420570, 38.449078>,  <33.175537, 34.651035, 38.464600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240685, 34.420570, 38.449078>,  <33.349266, 34.036461, 38.423210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240685, 34.420570, 38.449078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526132, 0.091790, 0.845434,
		0.805915, 0.263520, -0.530149,
		-0.271452, 0.960277, 0.064672,
		33.159248, 34.708652, 38.468479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025345, 34.505882, 38.306450>,  <33.349266, 34.036461, 38.423210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025345, 34.505882, 38.306450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732109, 34.673363, 38.520840>,  <33.556168, 34.773849, 38.649475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732109, 34.673363, 38.520840>,  <34.025345, 34.505882, 38.306450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732109, 34.673363, 38.520840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569837, -0.052101, 0.820105,
		0.371303, 0.906629, -0.200396,
		-0.733090, 0.418700, 0.535976,
		33.512180, 34.798973, 38.681633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351540, 34.986794, 38.726265>,  <34.025345, 34.505882, 38.306450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351540, 34.986794, 38.726265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995033, 34.962551, 38.906033>,  <33.781128, 34.948006, 39.013893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995033, 34.962551, 38.906033>,  <34.351540, 34.986794, 38.726265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995033, 34.962551, 38.906033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447833, 0.038342, 0.893295,
		-0.071368, 0.997425, -0.007033,
		-0.891264, -0.060603, 0.449417,
		33.727654, 34.944370, 39.040859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417263, 35.353554, 39.275772>,  <34.351540, 34.986794, 38.726265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417263, 35.353554, 39.275772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092480, 35.136509, 39.361835>,  <33.897610, 35.006283, 39.413475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092480, 35.136509, 39.361835>,  <34.417263, 35.353554, 39.275772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092480, 35.136509, 39.361835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341001, -0.141771, 0.929311,
		-0.473756, 0.827930, 0.300144,
		-0.811957, -0.542616, 0.215160,
		33.848892, 34.973724, 39.426384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376553, 35.418594, 40.024151>,  <34.417263, 35.353554, 39.275772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376553, 35.418594, 40.024151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122845, 35.117378, 39.954140>,  <33.970619, 34.936649, 39.912132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122845, 35.117378, 39.954140>,  <34.376553, 35.418594, 40.024151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122845, 35.117378, 39.954140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213130, -0.387932, 0.896707,
		-0.743153, 0.531452, 0.406549,
		-0.634270, -0.753039, -0.175025,
		33.932564, 34.891468, 39.901630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929993, 35.365448, 40.575001>,  <34.376553, 35.418594, 40.024151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929993, 35.365448, 40.575001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960812, 35.010395, 40.393375>,  <33.979301, 34.797363, 40.284401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960812, 35.010395, 40.393375>,  <33.929993, 35.365448, 40.575001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960812, 35.010395, 40.393375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239298, -0.425643, 0.872677,
		-0.967884, -0.175892, 0.179615,
		0.077045, -0.887632, -0.454064,
		33.983925, 34.744106, 40.257156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519844, 34.904106, 40.983303>,  <33.929993, 35.365448, 40.575001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519844, 34.904106, 40.983303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791039, 34.684952, 40.787277>,  <33.953754, 34.553459, 40.669662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791039, 34.684952, 40.787277>,  <33.519844, 34.904106, 40.983303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791039, 34.684952, 40.787277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322496, -0.377392, 0.868085,
		-0.660556, -0.746591, -0.079175,
		0.677984, -0.547885, -0.490061,
		33.994434, 34.520588, 40.640259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469845, 34.327732, 41.398281>,  <33.519844, 34.904106, 40.983303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469845, 34.327732, 41.398281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815498, 34.337776, 41.197227>,  <34.022892, 34.343803, 41.076595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815498, 34.337776, 41.197227>,  <33.469845, 34.327732, 41.398281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815498, 34.337776, 41.197227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474806, -0.371746, 0.797725,
		-0.166824, -0.927995, -0.333159,
		0.864135, 0.025106, -0.502634,
		34.074738, 34.345306, 41.046436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711052, 33.746517, 41.506699>,  <33.469845, 34.327732, 41.398281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711052, 33.746517, 41.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052334, 33.917301, 41.386864>,  <34.257103, 34.019772, 41.314964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052334, 33.917301, 41.386864>,  <33.711052, 33.746517, 41.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052334, 33.917301, 41.386864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507137, -0.544854, 0.667792,
		0.121886, -0.721694, -0.681396,
		0.853203, 0.426956, -0.299588,
		34.308296, 34.045387, 41.296986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209892, 33.197994, 41.382866>,  <33.711052, 33.746517, 41.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209892, 33.197994, 41.382866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401588, 33.542580, 41.450050>,  <34.516605, 33.749329, 41.490360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401588, 33.542580, 41.450050>,  <34.209892, 33.197994, 41.382866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401588, 33.542580, 41.450050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535304, -0.438548, 0.721890,
		0.695541, -0.256047, -0.671314,
		0.479241, 0.861461, 0.167965,
		34.545361, 33.801018, 41.500439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861214, 33.101910, 41.424305>,  <34.209892, 33.197994, 41.382866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861214, 33.101910, 41.424305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819584, 33.429443, 41.650112>,  <34.794605, 33.625965, 41.785595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819584, 33.429443, 41.650112>,  <34.861214, 33.101910, 41.424305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819584, 33.429443, 41.650112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335194, -0.505511, 0.795049,
		0.936383, 0.271965, -0.221858,
		-0.104074, 0.818837, 0.564513,
		34.788361, 33.675095, 41.819466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475594, 33.160423, 41.855343>,  <34.861214, 33.101910, 41.424305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475594, 33.160423, 41.855343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249752, 33.419846, 42.059540>,  <35.114246, 33.575500, 42.182060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249752, 33.419846, 42.059540>,  <35.475594, 33.160423, 41.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249752, 33.419846, 42.059540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505415, -0.217312, 0.835063,
		0.652520, 0.729488, -0.205095,
		-0.564599, 0.648554, 0.510495,
		35.080372, 33.614410, 42.212688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903519, 33.478428, 42.430202>,  <35.475594, 33.160423, 41.855343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903519, 33.478428, 42.430202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526989, 33.566666, 42.532372>,  <35.301071, 33.619606, 42.593674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526989, 33.566666, 42.532372>,  <35.903519, 33.478428, 42.430202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526989, 33.566666, 42.532372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236507, -0.108748, 0.965525,
		0.240762, 0.969285, 0.050196,
		-0.941328, 0.220590, 0.255426,
		35.244591, 33.632843, 42.608997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852592, 34.020744, 43.044029>,  <35.903519, 33.478428, 42.430202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852592, 34.020744, 43.044029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509800, 33.814610, 43.043098>,  <35.304123, 33.690929, 43.042542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509800, 33.814610, 43.043098>,  <35.852592, 34.020744, 43.044029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509800, 33.814610, 43.043098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214499, -0.360797, 0.907643,
		-0.468580, 0.777338, 0.419737,
		-0.856985, -0.515336, -0.002324,
		35.252705, 33.660007, 43.042400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440693, 34.215229, 43.667400>,  <35.852592, 34.020744, 43.044029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440693, 34.215229, 43.667400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317142, 33.854980, 43.545105>,  <35.243011, 33.638832, 43.471725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317142, 33.854980, 43.545105>,  <35.440693, 34.215229, 43.667400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317142, 33.854980, 43.545105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012102, -0.325156, 0.945583,
		-0.951026, 0.288364, 0.111331,
		-0.308872, -0.900622, -0.305743,
		35.224480, 33.584793, 43.453381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897099, 34.137859, 44.096222>,  <35.440693, 34.215229, 43.667400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897099, 34.137859, 44.096222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986721, 33.772263, 43.960922>,  <35.040497, 33.552902, 43.879742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986721, 33.772263, 43.960922>,  <34.897099, 34.137859, 44.096222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986721, 33.772263, 43.960922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072128, -0.330572, 0.941021,
		-0.971903, -0.235241, -0.008143,
		0.224059, -0.913993, -0.338251,
		35.053940, 33.498066, 43.859447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483250, 33.733978, 44.446411>,  <34.897099, 34.137859, 44.096222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483250, 33.733978, 44.446411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771149, 33.488213, 44.317123>,  <34.943886, 33.340755, 44.239552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771149, 33.488213, 44.317123>,  <34.483250, 33.733978, 44.446411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771149, 33.488213, 44.317123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024945, -0.488155, 0.872401,
		-0.693792, -0.619841, -0.366673,
		0.719743, -0.614411, -0.323216,
		34.987072, 33.303890, 44.220158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486641, 33.106255, 44.748863>,  <34.483250, 33.733978, 44.446411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486641, 33.106255, 44.748863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852928, 33.033443, 44.605572>,  <35.072701, 32.989758, 44.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852928, 33.033443, 44.605572>,  <34.486641, 33.106255, 44.748863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852928, 33.033443, 44.605572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252833, -0.431901, 0.865758,
		-0.312310, -0.883362, -0.349477,
		0.915717, -0.182026, -0.358230,
		35.127644, 32.978836, 44.498104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647923, 32.428139, 44.973755>,  <34.486641, 33.106255, 44.748863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647923, 32.428139, 44.973755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994110, 32.620998, 44.919365>,  <35.201824, 32.736713, 44.886730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994110, 32.620998, 44.919365>,  <34.647923, 32.428139, 44.973755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994110, 32.620998, 44.919365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230471, -0.142226, 0.962629,
		0.444796, -0.864465, -0.234215,
		0.865470, 0.482153, -0.135973,
		35.253750, 32.765644, 44.878574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084049, 31.955467, 45.195889>,  <34.647923, 32.428139, 44.973755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084049, 31.955467, 45.195889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262520, 32.312870, 45.216160>,  <35.369602, 32.527313, 45.228321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262520, 32.312870, 45.216160>,  <35.084049, 31.955467, 45.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262520, 32.312870, 45.216160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198557, -0.154048, 0.967907,
		0.872639, -0.421798, -0.246145,
		0.446180, 0.893508, 0.050678,
		35.396374, 32.580921, 45.231361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737591, 31.787142, 45.530762>,  <35.084049, 31.955467, 45.195889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737591, 31.787142, 45.530762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719833, 32.185814, 45.558056>,  <35.709179, 32.425018, 45.574432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719833, 32.185814, 45.558056>,  <35.737591, 31.787142, 45.530762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719833, 32.185814, 45.558056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450314, -0.041007, 0.891928,
		0.891766, 0.070326, -0.446999,
		-0.044396, 0.996681, 0.068237,
		35.706516, 32.484818, 45.578526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325951, 31.995308, 45.767570>,  <35.737591, 31.787142, 45.530762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325951, 31.995308, 45.767570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068466, 32.281139, 45.877129>,  <35.913975, 32.452637, 45.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068466, 32.281139, 45.877129>,  <36.325951, 31.995308, 45.767570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068466, 32.281139, 45.877129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281715, -0.111500, 0.952998,
		0.711532, 0.690611, -0.129534,
		-0.643708, 0.714580, 0.273891,
		35.875355, 32.495514, 45.959297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676353, 32.538937, 46.108059>,  <36.325951, 31.995308, 45.767570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676353, 32.538937, 46.108059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299591, 32.569241, 46.238953>,  <36.073536, 32.587421, 46.317490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299591, 32.569241, 46.238953>,  <36.676353, 32.538937, 46.108059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299591, 32.569241, 46.238953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330514, 0.035531, 0.943132,
		0.059821, 0.996493, -0.058505,
		-0.941903, 0.075756, 0.327230,
		36.017021, 32.591969, 46.337120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697262, 33.091709, 46.567211>,  <36.676353, 32.538937, 46.108059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697262, 33.091709, 46.567211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390907, 32.851158, 46.658218>,  <36.207096, 32.706829, 46.712822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390907, 32.851158, 46.658218>,  <36.697262, 33.091709, 46.567211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390907, 32.851158, 46.658218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183343, 0.134906, 0.973748,
		-0.616280, 0.787497, 0.006934,
		-0.765888, -0.601373, 0.227522,
		36.161140, 32.670746, 46.726475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317810, 33.390373, 47.125000>,  <36.697262, 33.091709, 46.567211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317810, 33.390373, 47.125000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224197, 33.002724, 47.156033>,  <36.168030, 32.770134, 47.174652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224197, 33.002724, 47.156033>,  <36.317810, 33.390373, 47.125000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224197, 33.002724, 47.156033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217257, 0.025651, 0.975777,
		-0.947643, 0.245220, 0.204547,
		-0.234033, -0.969128, 0.077584,
		36.153988, 32.711987, 47.179306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815872, 33.333832, 47.548389>,  <36.317810, 33.390373, 47.125000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815872, 33.333832, 47.548389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972572, 32.966393, 47.569183>,  <36.066593, 32.745926, 47.581657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972572, 32.966393, 47.569183>,  <35.815872, 33.333832, 47.548389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972572, 32.966393, 47.569183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024499, 0.066893, 0.997459,
		-0.919746, -0.389479, 0.048710,
		0.391748, -0.918603, 0.051982,
		36.090096, 32.690811, 47.584778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594940, 33.151546, 48.155602>,  <35.815872, 33.333832, 47.548389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594940, 33.151546, 48.155602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892918, 32.893829, 48.086380>,  <36.071705, 32.739201, 48.044846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892918, 32.893829, 48.086380>,  <35.594940, 33.151546, 48.155602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892918, 32.893829, 48.086380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302800, 0.095405, 0.948267,
		-0.594451, -0.758806, 0.266163,
		0.744943, -0.644292, -0.173053,
		36.116402, 32.700542, 48.034466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676914, 32.797359, 48.758255>,  <35.594940, 33.151546, 48.155602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676914, 32.797359, 48.758255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022179, 32.728893, 48.568245>,  <36.229340, 32.687813, 48.454239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022179, 32.728893, 48.568245>,  <35.676914, 32.797359, 48.758255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022179, 32.728893, 48.568245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467211, -0.085997, 0.879954,
		-0.191473, -0.981481, 0.005743,
		0.863164, -0.171170, -0.475024,
		36.281128, 32.677544, 48.425739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022457, 32.238377, 49.134224>,  <35.676914, 32.797359, 48.758255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022457, 32.238377, 49.134224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294189, 32.458130, 48.939621>,  <36.457230, 32.589981, 48.822861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294189, 32.458130, 48.939621>,  <36.022457, 32.238377, 49.134224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294189, 32.458130, 48.939621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492177, 0.150641, 0.857362,
		0.544307, -0.821879, -0.168059,
		0.679331, 0.549383, -0.486505,
		36.497990, 32.622944, 48.793671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629753, 31.935213, 49.256596>,  <36.022457, 32.238377, 49.134224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629753, 31.935213, 49.256596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759846, 32.301296, 49.161415>,  <36.837902, 32.520947, 49.104305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759846, 32.301296, 49.161415>,  <36.629753, 31.935213, 49.256596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759846, 32.301296, 49.161415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643852, -0.030017, 0.764561,
		0.692589, -0.401865, -0.599020,
		0.325231, 0.915207, -0.237952,
		36.857414, 32.575859, 49.090031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324566, 31.871428, 49.334846>,  <36.629753, 31.935213, 49.256596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324566, 31.871428, 49.334846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270485, 32.266590, 49.365211>,  <37.238037, 32.503689, 49.383430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270485, 32.266590, 49.365211>,  <37.324566, 31.871428, 49.334846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270485, 32.266590, 49.365211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602838, 0.021219, 0.797581,
		0.786325, 0.153595, -0.598416,
		-0.135203, 0.987906, 0.075908,
		37.229923, 32.562962, 49.387985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009384, 32.083069, 49.466118>,  <37.324566, 31.871428, 49.334846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009384, 32.083069, 49.466118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774284, 32.394993, 49.552322>,  <37.633224, 32.582146, 49.604046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774284, 32.394993, 49.552322>,  <38.009384, 32.083069, 49.466118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774284, 32.394993, 49.552322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454011, 0.097433, 0.885653,
		0.669641, 0.618390, -0.411308,
		-0.587753, 0.779808, 0.215511,
		37.597958, 32.628937, 49.616974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469032, 32.625446, 49.673656>,  <38.009384, 32.083069, 49.466118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469032, 32.625446, 49.673656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097759, 32.654518, 49.819645>,  <37.874996, 32.671963, 49.907238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097759, 32.654518, 49.819645>,  <38.469032, 32.625446, 49.673656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097759, 32.654518, 49.819645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352982, -0.138626, 0.925303,
		0.117846, 0.987674, 0.103014,
		-0.928179, 0.072681, 0.364968,
		37.819305, 32.676323, 49.929134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742424, 32.825455, 50.253265>,  <38.469032, 32.625446, 49.673656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742424, 32.825455, 50.253265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366856, 32.697250, 50.303383>,  <38.141514, 32.620327, 50.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366856, 32.697250, 50.303383>,  <38.742424, 32.825455, 50.253265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366856, 32.697250, 50.303383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199729, -0.211046, 0.956853,
		-0.280244, 0.923434, 0.262172,
		-0.938921, -0.320515, 0.125292,
		38.085178, 32.601097, 50.340969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487461, 33.201202, 50.819893>,  <38.742424, 32.825455, 50.253265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487461, 33.201202, 50.819893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264774, 32.871983, 50.774899>,  <38.131161, 32.674450, 50.747902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264774, 32.871983, 50.774899>,  <38.487461, 33.201202, 50.819893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264774, 32.871983, 50.774899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010607, -0.142448, 0.989745,
		-0.830632, 0.549819, 0.088033,
		-0.556721, -0.823048, -0.112490,
		38.097759, 32.625069, 50.741150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830563, 33.242367, 51.190331>,  <38.487461, 33.201202, 50.819893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830563, 33.242367, 51.190331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943077, 32.861267, 51.144478>,  <38.010586, 32.632607, 51.116966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943077, 32.861267, 51.144478>,  <37.830563, 33.242367, 51.190331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943077, 32.861267, 51.144478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170716, -0.067870, 0.982980,
		-0.944317, -0.296068, 0.143559,
		0.281286, -0.952752, -0.114635,
		38.027462, 32.575439, 51.110088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917030, 32.975788, 51.826515>,  <37.830563, 33.242367, 51.190331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917030, 32.975788, 51.826515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103722, 32.661400, 51.664326>,  <38.215736, 32.472767, 51.567013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103722, 32.661400, 51.664326>,  <37.917030, 32.975788, 51.826515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103722, 32.661400, 51.664326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387270, -0.230551, 0.892675,
		-0.795101, -0.573665, 0.196779,
		0.466729, -0.785974, -0.405474,
		38.243740, 32.425610, 51.542683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915192, 32.238983, 51.967228>,  <37.917030, 32.975788, 51.826515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915192, 32.238983, 51.967228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280640, 32.353462, 51.851723>,  <38.499908, 32.422150, 51.782417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280640, 32.353462, 51.851723>,  <37.915192, 32.238983, 51.967228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280640, 32.353462, 51.851723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280922, 0.069057, 0.957243,
		0.293900, -0.955680, -0.017306,
		0.913622, 0.286195, -0.288767,
		38.554726, 32.439320, 51.765091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502586, 31.932570, 52.395088>,  <37.915192, 32.238983, 51.967228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502586, 31.932570, 52.395088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638638, 32.270794, 52.230484>,  <38.720268, 32.473728, 52.131721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638638, 32.270794, 52.230484>,  <38.502586, 31.932570, 52.395088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638638, 32.270794, 52.230484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494030, 0.211675, 0.843284,
		0.800155, -0.490119, -0.345738,
		0.340125, 0.845563, -0.411507,
		38.740677, 32.524464, 52.107033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751404, 32.092903, 52.952412>,  <38.502586, 31.932570, 52.395088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751404, 32.092903, 52.952412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898609, 32.345528, 52.679443>,  <38.986931, 32.497101, 52.515663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898609, 32.345528, 52.679443>,  <38.751404, 32.092903, 52.952412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898609, 32.345528, 52.679443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515908, 0.471905, 0.714944,
		0.773568, -0.615175, -0.152159,
		0.368011, 0.631558, -0.682424,
		39.009014, 32.534996, 52.474716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449768, 31.886156, 53.324608>,  <38.751404, 32.092903, 52.952412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449768, 31.886156, 53.324608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816734, 31.992357, 53.206039>,  <40.036915, 32.056076, 53.134899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816734, 31.992357, 53.206039>,  <39.449768, 31.886156, 53.324608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816734, 31.992357, 53.206039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208890, -0.955311, -0.209155,
		-0.338704, 0.129962, -0.931874,
		0.917412, 0.265501, -0.296420,
		40.091957, 32.072006, 53.117115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635834, 31.947937, 52.529648>,  <39.449768, 31.886156, 53.324608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635834, 31.947937, 52.529648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943386, 31.836510, 52.759853>,  <40.127918, 31.769653, 52.897976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943386, 31.836510, 52.759853>,  <39.635834, 31.947937, 52.529648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943386, 31.836510, 52.759853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027416, -0.913638, -0.405604,
		0.638799, 0.296085, -0.710120,
		0.768885, -0.278568, 0.575513,
		40.174053, 31.752939, 52.932507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176117, 31.887938, 52.193207>,  <39.635834, 31.947937, 52.529648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176117, 31.887938, 52.193207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158001, 31.633163, 52.501041>,  <40.147129, 31.480299, 52.685741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158001, 31.633163, 52.501041>,  <40.176117, 31.887938, 52.193207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158001, 31.633163, 52.501041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164447, -0.755111, -0.634637,
		0.985345, -0.155300, -0.070542,
		-0.045292, -0.636937, 0.769584,
		40.144413, 31.442081, 52.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665154, 31.326036, 52.048470>,  <40.176117, 31.887938, 52.193207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665154, 31.326036, 52.048470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373730, 31.201540, 52.292545>,  <40.198875, 31.126842, 52.438992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373730, 31.201540, 52.292545>,  <40.665154, 31.326036, 52.048470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373730, 31.201540, 52.292545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114502, -0.822937, -0.556474,
		0.675343, -0.475293, 0.563922,
		-0.728561, -0.311241, 0.610187,
		40.155163, 31.108168, 52.475601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732681, 30.636454, 52.395885>,  <40.665154, 31.326036, 52.048470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732681, 30.636454, 52.395885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352020, 30.696726, 52.288815>,  <40.123623, 30.732889, 52.224571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352020, 30.696726, 52.288815>,  <40.732681, 30.636454, 52.395885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352020, 30.696726, 52.288815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122240, -0.613681, -0.780034,
		-0.281809, -0.775042, 0.565591,
		-0.951652, 0.150682, -0.267682,
		40.066525, 30.741930, 52.208511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444492, 30.055025, 52.104046>,  <40.732681, 30.636454, 52.395885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444492, 30.055025, 52.104046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151459, 30.298908, 51.982998>,  <39.975639, 30.445238, 51.910370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151459, 30.298908, 51.982998>,  <40.444492, 30.055025, 52.104046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151459, 30.298908, 51.982998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080637, -0.519191, -0.850846,
		-0.675885, -0.598913, 0.429515,
		-0.732583, 0.609709, -0.302619,
		39.931683, 30.481821, 51.892212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406445, 29.740742, 51.422508>,  <40.444492, 30.055025, 52.104046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406445, 29.740742, 51.422508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044453, 29.872107, 51.530697>,  <39.827259, 29.950926, 51.595612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044453, 29.872107, 51.530697>,  <40.406445, 29.740742, 51.422508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044453, 29.872107, 51.530697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384238, -0.357934, -0.851026,
		-0.182677, -0.874087, 0.450112,
		-0.904981, 0.328413, 0.270471,
		39.772957, 29.970631, 51.611839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922005, 29.278164, 51.229126>,  <40.406445, 29.740742, 51.422508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922005, 29.278164, 51.229126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680061, 29.596226, 51.246468>,  <39.534897, 29.787062, 51.256874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680061, 29.596226, 51.246468>,  <39.922005, 29.278164, 51.229126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680061, 29.596226, 51.246468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394866, -0.252198, -0.883446,
		-0.691541, -0.551477, 0.466523,
		-0.604856, 0.795153, 0.043354,
		39.498604, 29.834772, 51.259476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106682, 29.093538, 51.213032>,  <39.922005, 29.278164, 51.229126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106682, 29.093538, 51.213032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184879, 29.460285, 51.073814>,  <39.231800, 29.680334, 50.990284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184879, 29.460285, 51.073814>,  <39.106682, 29.093538, 51.213032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184879, 29.460285, 51.073814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372137, -0.258997, -0.891311,
		-0.907356, 0.303768, 0.290568,
		0.195496, 0.916867, -0.348045,
		39.243526, 29.735346, 50.969402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544071, 29.245770, 50.903996>,  <39.106682, 29.093538, 51.213032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544071, 29.245770, 50.903996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811893, 29.510214, 50.768566>,  <38.972588, 29.668880, 50.687309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811893, 29.510214, 50.768566>,  <38.544071, 29.245770, 50.903996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811893, 29.510214, 50.768566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341140, -0.131206, -0.930810,
		-0.659791, 0.738728, 0.137682,
		0.669551, 0.661110, -0.338578,
		39.012760, 29.708548, 50.666992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147469, 29.770485, 50.433437>,  <38.544071, 29.245770, 50.903996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147469, 29.770485, 50.433437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531143, 29.811153, 50.327896>,  <38.761349, 29.835554, 50.264572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531143, 29.811153, 50.327896>,  <38.147469, 29.770485, 50.433437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531143, 29.811153, 50.327896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272647, 0.085132, -0.958340,
		-0.074971, 0.991169, 0.109377,
		0.959189, 0.101669, -0.263857,
		38.818901, 29.841654, 50.248737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171787, 30.367180, 50.099228>,  <38.147469, 29.770485, 50.433437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171787, 30.367180, 50.099228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492588, 30.157211, 49.985207>,  <38.685066, 30.031231, 49.916794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492588, 30.157211, 49.985207>,  <38.171787, 30.367180, 50.099228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492588, 30.157211, 49.985207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148188, 0.287449, -0.946263,
		0.578650, 0.801144, 0.152748,
		0.802000, -0.524920, -0.285052,
		38.733189, 29.999735, 49.899693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358181, 30.635466, 49.565880>,  <38.171787, 30.367180, 50.099228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358181, 30.635466, 49.565880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596489, 30.321068, 49.499825>,  <38.739475, 30.132429, 49.460190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596489, 30.321068, 49.499825>,  <38.358181, 30.635466, 49.565880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596489, 30.321068, 49.499825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000783, 0.205048, -0.978751,
		0.803154, 0.583241, 0.121546,
		0.595770, -0.785993, -0.165142,
		38.775219, 30.085270, 49.450283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932068, 30.849464, 49.123161>,  <38.358181, 30.635466, 49.565880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932068, 30.849464, 49.123161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906155, 30.451666, 49.090233>,  <38.890606, 30.212986, 49.070477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906155, 30.451666, 49.090233>,  <38.932068, 30.849464, 49.123161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906155, 30.451666, 49.090233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182047, 0.069333, -0.980843,
		0.981154, -0.078527, 0.176554,
		-0.064782, -0.994498, -0.082322,
		38.886719, 30.153316, 49.065536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404537, 30.689520, 48.686665>,  <38.932068, 30.849464, 49.123161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404537, 30.689520, 48.686665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181408, 30.358385, 48.662933>,  <39.047531, 30.159704, 48.648697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181408, 30.358385, 48.662933>,  <39.404537, 30.689520, 48.686665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181408, 30.358385, 48.662933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036231, 0.095701, -0.994750,
		0.829171, -0.552742, -0.083377,
		-0.557820, -0.827839, -0.059326,
		39.014061, 30.110033, 48.645134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742458, 30.309824, 48.243473>,  <39.404537, 30.689520, 48.686665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742458, 30.309824, 48.243473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359848, 30.193428, 48.251328>,  <39.130283, 30.123590, 48.256039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359848, 30.193428, 48.251328>,  <39.742458, 30.309824, 48.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359848, 30.193428, 48.251328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048108, 0.091015, -0.994687,
		0.287658, -0.952386, -0.101058,
		-0.956524, -0.290991, 0.019637,
		39.072891, 30.106131, 48.257217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711952, 29.889210, 47.662273>,  <39.742458, 30.309824, 48.243473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711952, 29.889210, 47.662273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330692, 29.974268, 47.748337>,  <39.101936, 30.025303, 47.799976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330692, 29.974268, 47.748337>,  <39.711952, 29.889210, 47.662273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330692, 29.974268, 47.748337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226913, -0.032207, -0.973382,
		-0.200059, -0.976598, 0.078951,
		-0.953146, 0.212649, 0.215159,
		39.044750, 30.038063, 47.812885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391899, 29.279316, 47.402187>,  <39.711952, 29.889210, 47.662273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391899, 29.279316, 47.402187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145390, 29.593622, 47.423275>,  <38.997486, 29.782206, 47.435928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145390, 29.593622, 47.423275>,  <39.391899, 29.279316, 47.402187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145390, 29.593622, 47.423275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243133, -0.126156, -0.961754,
		-0.749063, -0.605520, 0.268792,
		-0.616271, 0.785767, 0.052723,
		38.960506, 29.829351, 47.439091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787830, 29.126537, 46.955376>,  <39.391899, 29.279316, 47.402187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787830, 29.126537, 46.955376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784439, 29.523565, 47.003925>,  <38.782406, 29.761782, 47.033054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784439, 29.523565, 47.003925>,  <38.787830, 29.126537, 46.955376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784439, 29.523565, 47.003925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217115, 0.116661, -0.969150,
		-0.976109, -0.034565, 0.214513,
		-0.008474, 0.992570, 0.121378,
		38.781898, 29.821337, 47.040340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155178, 29.366024, 46.668732>,  <38.787830, 29.126537, 46.955376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155178, 29.366024, 46.668732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397369, 29.684364, 46.670158>,  <38.542686, 29.875368, 46.671013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397369, 29.684364, 46.670158>,  <38.155178, 29.366024, 46.668732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397369, 29.684364, 46.670158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192238, 0.150599, -0.969724,
		-0.772293, 0.586464, 0.244178,
		0.605481, 0.795852, 0.003566,
		38.579014, 29.923120, 46.671227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716724, 29.850164, 46.368500>,  <38.155178, 29.366024, 46.668732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716724, 29.850164, 46.368500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087696, 29.995432, 46.332767>,  <38.310280, 30.082592, 46.311329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087696, 29.995432, 46.332767>,  <37.716724, 29.850164, 46.368500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087696, 29.995432, 46.332767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167218, 0.189004, -0.967634,
		-0.334529, 0.912352, 0.236016,
		0.927431, 0.363168, -0.089335,
		38.365925, 30.104382, 46.305965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636917, 30.409880, 46.018223>,  <37.716724, 29.850164, 46.368500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636917, 30.409880, 46.018223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021042, 30.328402, 45.942013>,  <38.251518, 30.279514, 45.896286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021042, 30.328402, 45.942013>,  <37.636917, 30.409880, 46.018223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021042, 30.328402, 45.942013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102054, 0.379111, -0.919706,
		0.259572, 0.902653, 0.343278,
		0.960316, -0.203698, -0.190526,
		38.309135, 30.267292, 45.884853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998821, 31.081230, 45.932175>,  <37.636917, 30.409880, 46.018223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998821, 31.081230, 45.932175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210796, 30.789518, 45.759052>,  <38.337982, 30.614492, 45.655178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210796, 30.789518, 45.759052>,  <37.998821, 31.081230, 45.932175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210796, 30.789518, 45.759052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258496, 0.347163, -0.901475,
		0.807681, 0.589602, -0.004542,
		0.529935, -0.729279, -0.432807,
		38.369778, 30.570734, 45.629211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319267, 31.428112, 45.364960>,  <37.998821, 31.081230, 45.932175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319267, 31.428112, 45.364960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331390, 31.038517, 45.275131>,  <38.338665, 30.804760, 45.221233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331390, 31.038517, 45.275131>,  <38.319267, 31.428112, 45.364960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331390, 31.038517, 45.275131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140233, 0.218308, -0.965752,
		0.989654, 0.060760, -0.129969,
		0.030306, -0.973987, -0.224570,
		38.340481, 30.746321, 45.207760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785313, 31.328850, 44.703209>,  <38.319267, 31.428112, 45.364960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785313, 31.328850, 44.703209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541996, 31.013968, 44.743797>,  <38.396008, 30.825039, 44.768150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541996, 31.013968, 44.743797>,  <38.785313, 31.328850, 44.703209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541996, 31.013968, 44.743797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181908, 0.013833, -0.983218,
		0.772590, -0.616538, -0.151613,
		-0.608288, -0.787204, 0.101466,
		38.359509, 30.777807, 44.774239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837353, 31.038345, 44.128841>,  <38.785313, 31.328850, 44.703209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837353, 31.038345, 44.128841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500671, 30.845356, 44.225807>,  <38.298664, 30.729563, 44.283985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500671, 30.845356, 44.225807>,  <38.837353, 31.038345, 44.128841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500671, 30.845356, 44.225807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208835, -0.123122, -0.970169,
		0.497927, -0.867214, 0.002875,
		-0.841699, -0.482473, 0.242410,
		38.248161, 30.700615, 44.298531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796360, 30.476921, 43.680893>,  <38.837353, 31.038345, 44.128841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796360, 30.476921, 43.680893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422443, 30.467468, 43.822659>,  <38.198093, 30.461796, 43.907719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422443, 30.467468, 43.822659>,  <38.796360, 30.476921, 43.680893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422443, 30.467468, 43.822659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354900, 0.021240, -0.934663,
		0.014545, -0.999495, -0.028236,
		-0.934791, -0.023616, 0.354412,
		38.142006, 30.460379, 43.928982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512413, 30.209099, 43.084816>,  <38.796360, 30.476921, 43.680893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512413, 30.209099, 43.084816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204174, 30.353058, 43.295212>,  <38.019230, 30.439432, 43.421448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204174, 30.353058, 43.295212>,  <38.512413, 30.209099, 43.084816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204174, 30.353058, 43.295212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536475, 0.079250, -0.840187,
		-0.344064, -0.929621, 0.132005,
		-0.770594, 0.359895, 0.525985,
		37.972996, 30.461027, 43.453007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844692, 29.902184, 42.884007>,  <38.512413, 30.209099, 43.084816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844692, 29.902184, 42.884007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733936, 30.251600, 43.044132>,  <37.667484, 30.461250, 43.140209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733936, 30.251600, 43.044132>,  <37.844692, 29.902184, 42.884007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733936, 30.251600, 43.044132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504929, 0.222183, -0.834075,
		-0.817544, -0.433079, 0.379557,
		-0.276889, 0.873543, 0.400318,
		37.650871, 30.513662, 43.164227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198944, 29.956331, 42.774544>,  <37.844692, 29.902184, 42.884007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198944, 29.956331, 42.774544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241920, 30.348989, 42.837566>,  <37.267708, 30.584585, 42.875381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241920, 30.348989, 42.837566>,  <37.198944, 29.956331, 42.774544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241920, 30.348989, 42.837566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644030, 0.189453, -0.741170,
		-0.757417, -0.021841, 0.652565,
		0.107442, 0.981647, 0.157561,
		37.274155, 30.643484, 42.884834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543301, 30.279211, 42.842804>,  <37.198944, 29.956331, 42.774544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543301, 30.279211, 42.842804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794868, 30.559961, 42.709038>,  <36.945808, 30.728413, 42.628780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794868, 30.559961, 42.709038>,  <36.543301, 30.279211, 42.842804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794868, 30.559961, 42.709038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574072, 0.129158, -0.808554,
		-0.524314, 0.700490, 0.484158,
		0.628917, 0.701878, -0.334413,
		36.983543, 30.770525, 42.608715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126526, 30.874542, 42.703156>,  <36.543301, 30.279211, 42.842804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126526, 30.874542, 42.703156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472160, 30.910528, 42.505058>,  <36.679539, 30.932119, 42.386200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472160, 30.910528, 42.505058>,  <36.126526, 30.874542, 42.703156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472160, 30.910528, 42.505058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481126, 0.436739, -0.760116,
		0.147910, 0.895078, 0.420662,
		0.864083, 0.089963, -0.495244,
		36.731384, 30.937517, 42.356483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183853, 31.547905, 42.518646>,  <36.126526, 30.874542, 42.703156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183853, 31.547905, 42.518646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459747, 31.388025, 42.277149>,  <36.625282, 31.292097, 42.132252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459747, 31.388025, 42.277149>,  <36.183853, 31.547905, 42.518646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459747, 31.388025, 42.277149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310112, 0.590403, -0.745154,
		0.654289, 0.701187, 0.283270,
		0.689736, -0.399701, -0.603741,
		36.666668, 31.268116, 42.096027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489502, 32.121372, 42.031796>,  <36.183853, 31.547905, 42.518646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489502, 32.121372, 42.031796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581841, 31.777876, 41.848812>,  <36.637245, 31.571777, 41.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581841, 31.777876, 41.848812>,  <36.489502, 32.121372, 42.031796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581841, 31.777876, 41.848812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513945, 0.291600, -0.806740,
		0.826178, 0.421345, -0.374031,
		0.230848, -0.858742, -0.457462,
		36.651096, 31.520254, 41.711575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713413, 32.214680, 41.321350>,  <36.489502, 32.121372, 42.031796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713413, 32.214680, 41.321350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606873, 31.829378, 41.307468>,  <36.542950, 31.598198, 41.299141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606873, 31.829378, 41.307468>,  <36.713413, 32.214680, 41.321350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606873, 31.829378, 41.307468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346811, 0.129366, -0.928971,
		0.899323, -0.235393, -0.368523,
		-0.266348, -0.963252, -0.034705,
		36.526970, 31.540403, 41.297058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995575, 31.907042, 40.675083>,  <36.713413, 32.214680, 41.321350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995575, 31.907042, 40.675083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713707, 31.643610, 40.780697>,  <36.544586, 31.485552, 40.844063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713707, 31.643610, 40.780697>,  <36.995575, 31.907042, 40.675083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713707, 31.643610, 40.780697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372020, 0.026068, -0.927859,
		0.604185, -0.752060, -0.263374,
		-0.704671, -0.658579, 0.264032,
		36.502304, 31.446037, 40.859905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948891, 31.513155, 40.091354>,  <36.995575, 31.907042, 40.675083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948891, 31.513155, 40.091354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604939, 31.476778, 40.292286>,  <36.398567, 31.454952, 40.412846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604939, 31.476778, 40.292286>,  <36.948891, 31.513155, 40.091354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604939, 31.476778, 40.292286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510137, 0.189881, -0.838871,
		-0.019093, -0.977586, -0.209668,
		-0.859881, -0.090942, 0.502329,
		36.346973, 31.449495, 40.442986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525719, 31.354889, 39.590557>,  <36.948891, 31.513155, 40.091354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525719, 31.354889, 39.590557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261665, 31.459936, 39.872055>,  <36.103233, 31.522964, 40.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261665, 31.459936, 39.872055>,  <36.525719, 31.354889, 39.590557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261665, 31.459936, 39.872055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726938, 0.012569, -0.686588,
		-0.189156, -0.964818, 0.182611,
		-0.660137, 0.262619, 0.703740,
		36.063625, 31.538721, 40.083176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994045, 30.878687, 39.400314>,  <36.525719, 31.354889, 39.590557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994045, 30.878687, 39.400314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852440, 31.200098, 39.591736>,  <35.767475, 31.392944, 39.706589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852440, 31.200098, 39.591736>,  <35.994045, 30.878687, 39.400314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852440, 31.200098, 39.591736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693223, 0.118027, -0.710994,
		-0.627785, -0.583450, 0.515240,
		-0.354017, 0.803528, 0.478556,
		35.746235, 31.441156, 39.735302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338158, 30.785213, 39.367016>,  <35.994045, 30.878687, 39.400314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338158, 30.785213, 39.367016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358990, 31.176323, 39.448257>,  <35.371487, 31.410988, 39.497002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358990, 31.176323, 39.448257>,  <35.338158, 30.785213, 39.367016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358990, 31.176323, 39.448257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609625, 0.192213, -0.769033,
		-0.790977, -0.083768, 0.606084,
		0.052077, 0.977771, 0.203103,
		35.374615, 31.469654, 39.509190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675415, 31.116894, 39.218861>,  <35.338158, 30.785213, 39.367016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675415, 31.116894, 39.218861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921227, 31.432423, 39.223022>,  <35.068714, 31.621740, 39.225521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921227, 31.432423, 39.223022>,  <34.675415, 31.116894, 39.218861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921227, 31.432423, 39.223022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611980, 0.485001, -0.624703,
		-0.497827, 0.377532, 0.780793,
		0.614531, 0.788824, 0.010404,
		35.105587, 31.669069, 39.226143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217316, 31.682995, 39.268127>,  <34.675415, 31.116894, 39.218861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217316, 31.682995, 39.268127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553879, 31.864668, 39.150997>,  <34.755817, 31.973671, 39.080719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553879, 31.864668, 39.150997>,  <34.217316, 31.682995, 39.268127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553879, 31.864668, 39.150997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535476, 0.627788, -0.564932,
		-0.072750, 0.632141, 0.771431,
		0.841411, 0.454182, -0.292824,
		34.806301, 32.000923, 39.063148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108536, 32.369492, 39.313488>,  <34.217316, 31.682995, 39.268127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108536, 32.369492, 39.313488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419060, 32.369095, 39.061348>,  <34.605373, 32.368858, 38.910065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419060, 32.369095, 39.061348>,  <34.108536, 32.369492, 39.313488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419060, 32.369095, 39.061348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481287, 0.644847, -0.593747,
		0.407063, 0.764311, 0.500128,
		0.776313, -0.000987, -0.630347,
		34.651955, 32.368797, 38.872246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087772, 33.061134, 38.951771>,  <34.108536, 32.369492, 39.313488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087772, 33.061134, 38.951771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337379, 32.824722, 38.747311>,  <34.487144, 32.682873, 38.624634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337379, 32.824722, 38.747311>,  <34.087772, 33.061134, 38.951771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337379, 32.824722, 38.747311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252981, 0.466108, -0.847788,
		0.739324, 0.658349, 0.141341,
		0.624020, -0.591033, -0.511154,
		34.524586, 32.647411, 38.593964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538742, 33.476200, 38.657589>,  <34.087772, 33.061134, 38.951771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538742, 33.476200, 38.657589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545616, 33.149769, 38.426514>,  <34.549740, 32.953911, 38.287868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545616, 33.149769, 38.426514>,  <34.538742, 33.476200, 38.657589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545616, 33.149769, 38.426514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336943, 0.539248, -0.771804,
		0.941368, 0.207910, -0.265706,
		0.017184, -0.816079, -0.577684,
		34.550770, 32.904945, 38.253208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856529, 33.746593, 38.123505>,  <34.538742, 33.476200, 38.657589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856529, 33.746593, 38.123505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674488, 33.411587, 38.002544>,  <34.565262, 33.210583, 37.929966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674488, 33.411587, 38.002544>,  <34.856529, 33.746593, 38.123505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674488, 33.411587, 38.002544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327836, 0.473354, -0.817594,
		0.827891, -0.272952, -0.489993,
		-0.455104, -0.837516, -0.302402,
		34.537956, 33.160332, 37.911823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246078, 33.454369, 37.493931>,  <34.856529, 33.746593, 38.123505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246078, 33.454369, 37.493931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880032, 33.294296, 37.474285>,  <34.660404, 33.198254, 37.462498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880032, 33.294296, 37.474285>,  <35.246078, 33.454369, 37.493931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880032, 33.294296, 37.474285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156069, 0.463918, -0.872022,
		0.371744, -0.790343, -0.486996,
		-0.915122, -0.400174, -0.049110,
		34.605495, 33.174244, 37.459553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762604, 33.536667, 38.009460>,  <35.246078, 33.454369, 37.493931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762604, 33.536667, 38.009460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011875, 33.830799, 37.902927>,  <36.161438, 34.007278, 37.839008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011875, 33.830799, 37.902927>,  <35.762604, 33.536667, 38.009460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011875, 33.830799, 37.902927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635871, -0.278131, 0.719938,
		0.455320, -0.618003, -0.640903,
		0.623179, 0.735334, -0.266331,
		36.198830, 34.051399, 37.823029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427483, 33.287060, 37.772545>,  <35.762604, 33.536667, 38.009460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427483, 33.287060, 37.772545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470428, 33.649208, 37.936871>,  <36.496197, 33.866497, 38.035465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470428, 33.649208, 37.936871>,  <36.427483, 33.287060, 37.772545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470428, 33.649208, 37.936871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673305, -0.370240, 0.639987,
		0.731528, 0.207891, -0.649344,
		0.107366, 0.905375, 0.410815,
		36.502640, 33.920822, 38.060116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164673, 33.379169, 37.839268>,  <36.427483, 33.287060, 37.772545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164673, 33.379169, 37.839268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003895, 33.643951, 38.092327>,  <36.907429, 33.802822, 38.244164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003895, 33.643951, 38.092327>,  <37.164673, 33.379169, 37.839268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003895, 33.643951, 38.092327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824921, -0.038093, 0.563963,
		0.397420, 0.748571, -0.530753,
		-0.401948, 0.661959, 0.632651,
		36.883308, 33.842541, 38.282124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670582, 33.738754, 38.001472>,  <37.164673, 33.379169, 37.839268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670582, 33.738754, 38.001472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415783, 33.816158, 38.299946>,  <37.262901, 33.862598, 38.479031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415783, 33.816158, 38.299946>,  <37.670582, 33.738754, 38.001472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415783, 33.816158, 38.299946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650727, -0.383958, 0.655081,
		0.413264, 0.902847, 0.118661,
		-0.636999, 0.193506, 0.746182,
		37.224682, 33.874210, 38.523800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983650, 34.275650, 38.462727>,  <37.670582, 33.738754, 38.001472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983650, 34.275650, 38.462727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718491, 34.082226, 38.691368>,  <37.559395, 33.966171, 38.828552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718491, 34.082226, 38.691368>,  <37.983650, 34.275650, 38.462727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718491, 34.082226, 38.691368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741522, -0.318496, 0.590513,
		-0.103497, 0.815307, 0.569704,
		-0.662897, -0.483565, 0.571605,
		37.519623, 33.937157, 38.862850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283730, 34.329803, 39.153362>,  <37.983650, 34.275650, 38.462727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283730, 34.329803, 39.153362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016685, 34.038109, 39.213367>,  <37.856461, 33.863091, 39.249371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016685, 34.038109, 39.213367>,  <38.283730, 34.329803, 39.153362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016685, 34.038109, 39.213367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480917, -0.268583, 0.834615,
		-0.568344, 0.629342, 0.530013,
		-0.667611, -0.729240, 0.150014,
		37.816402, 33.819336, 39.258373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106503, 34.393078, 39.839764>,  <38.283730, 34.329803, 39.153362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106503, 34.393078, 39.839764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976440, 34.026157, 39.747829>,  <37.898403, 33.806004, 39.692669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976440, 34.026157, 39.747829>,  <38.106503, 34.393078, 39.839764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976440, 34.026157, 39.747829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392542, -0.352040, 0.849693,
		-0.860339, 0.186064, 0.474550,
		-0.325158, -0.917305, -0.229836,
		37.878895, 33.750965, 39.678879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675503, 34.114765, 40.339821>,  <38.106503, 34.393078, 39.839764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675503, 34.114765, 40.339821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826756, 33.794827, 40.153374>,  <37.917507, 33.602863, 40.041504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826756, 33.794827, 40.153374>,  <37.675503, 34.114765, 40.339821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826756, 33.794827, 40.153374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336577, -0.350265, 0.874089,
		-0.862397, -0.487409, 0.136761,
		0.378136, -0.799842, -0.466118,
		37.940197, 33.554874, 40.013538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696369, 33.594471, 40.880409>,  <37.675503, 34.114765, 40.339821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696369, 33.594471, 40.880409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912724, 33.450687, 40.576244>,  <38.042534, 33.364418, 40.393745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912724, 33.450687, 40.576244>,  <37.696369, 33.594471, 40.880409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912724, 33.450687, 40.576244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582214, -0.492459, 0.646924,
		-0.607018, -0.792635, -0.057078,
		0.540884, -0.359463, -0.760415,
		38.074989, 33.342850, 40.348122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880138, 32.862610, 41.024353>,  <37.696369, 33.594471, 40.880409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880138, 32.862610, 41.024353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149712, 32.950813, 40.742306>,  <38.311455, 33.003735, 40.573078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149712, 32.950813, 40.742306>,  <37.880138, 32.862610, 41.024353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149712, 32.950813, 40.742306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684974, -0.544109, 0.484516,
		-0.276820, -0.809518, -0.517736,
		0.673929, 0.220512, -0.705119,
		38.351891, 33.016968, 40.530769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190952, 32.201485, 40.713764>,  <37.880138, 32.862610, 41.024353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190952, 32.201485, 40.713764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435795, 32.517738, 40.719856>,  <38.582699, 32.707489, 40.723511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435795, 32.517738, 40.719856>,  <38.190952, 32.201485, 40.713764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435795, 32.517738, 40.719856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635787, -0.503493, 0.585038,
		0.470216, -0.348422, -0.810863,
		0.612104, 0.790630, 0.015228,
		38.619427, 32.754929, 40.724426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755341, 31.910345, 40.955769>,  <38.190952, 32.201485, 40.713764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755341, 31.910345, 40.955769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884193, 32.288620, 40.973236>,  <38.961506, 32.515587, 40.983715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884193, 32.288620, 40.973236>,  <38.755341, 31.910345, 40.955769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884193, 32.288620, 40.973236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749388, -0.282908, 0.598649,
		0.578488, -0.160120, -0.799820,
		0.322131, 0.945687, 0.043667,
		38.980831, 32.572327, 40.986336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438877, 31.922241, 40.852520>,  <38.755341, 31.910345, 40.955769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438877, 31.922241, 40.852520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392265, 32.279984, 41.025284>,  <39.364300, 32.494629, 41.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392265, 32.279984, 41.025284>,  <39.438877, 31.922241, 40.852520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392265, 32.279984, 41.025284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817086, -0.160891, 0.553610,
		0.564616, 0.417420, -0.712018,
		-0.116530, 0.894357, 0.431910,
		39.357307, 32.548290, 41.154858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130405, 32.273888, 40.846813>,  <39.438877, 31.922241, 40.852520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130405, 32.273888, 40.846813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919258, 32.434929, 41.145947>,  <39.792568, 32.531555, 41.325428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919258, 32.434929, 41.145947>,  <40.130405, 32.273888, 40.846813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919258, 32.434929, 41.145947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759535, -0.170257, 0.627789,
		0.380075, 0.899401, -0.215918,
		-0.527872, 0.402604, 0.747837,
		39.760895, 32.555710, 41.370296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692333, 32.496883, 41.186039>,  <40.130405, 32.273888, 40.846813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692333, 32.496883, 41.186039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391602, 32.545307, 41.445297>,  <40.211163, 32.574360, 41.600853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391602, 32.545307, 41.445297>,  <40.692333, 32.496883, 41.186039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391602, 32.545307, 41.445297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632920, -0.143040, 0.760889,
		0.184824, 0.982285, 0.030920,
		-0.751833, 0.121060, 0.648145,
		40.166050, 32.581627, 41.639740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897758, 32.896278, 41.713718>,  <40.692333, 32.496883, 41.186039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897758, 32.896278, 41.713718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581089, 32.739582, 41.901249>,  <40.391087, 32.645565, 42.013767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581089, 32.739582, 41.901249>,  <40.897758, 32.896278, 41.713718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581089, 32.739582, 41.901249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577935, -0.231354, 0.782602,
		-0.198113, 0.890513, 0.409557,
		-0.791671, -0.391741, 0.468825,
		40.343586, 32.622059, 42.041897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869312, 33.254688, 42.395985>,  <40.897758, 32.896278, 41.713718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869312, 33.254688, 42.395985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671799, 32.907604, 42.418831>,  <40.553291, 32.699352, 42.432537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671799, 32.907604, 42.418831>,  <40.869312, 33.254688, 42.395985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671799, 32.907604, 42.418831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454017, -0.201232, 0.867971,
		-0.741653, 0.454518, 0.493319,
		-0.493780, -0.867709, 0.057115,
		40.523666, 32.647293, 42.435966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806339, 33.126961, 43.079872>,  <40.869312, 33.254688, 42.395985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806339, 33.126961, 43.079872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721714, 32.765469, 42.931004>,  <40.670937, 32.548573, 42.841682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721714, 32.765469, 42.931004>,  <40.806339, 33.126961, 43.079872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721714, 32.765469, 42.931004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209035, -0.413821, 0.886034,
		-0.954749, 0.109657, 0.276461,
		-0.211565, -0.903730, -0.372173,
		40.658245, 32.494350, 42.819351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355968, 32.782494, 43.503479>,  <40.806339, 33.126961, 43.079872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355968, 32.782494, 43.503479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562359, 32.490173, 43.324730>,  <40.686195, 32.314781, 43.217480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562359, 32.490173, 43.324730>,  <40.355968, 32.782494, 43.503479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562359, 32.490173, 43.324730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182026, -0.416220, 0.890858,
		-0.837037, -0.541007, -0.081736,
		0.515980, -0.730803, -0.446869,
		40.717152, 32.270931, 43.190670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989891, 32.269451, 43.767235>,  <40.355968, 32.782494, 43.503479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989891, 32.269451, 43.767235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327625, 32.119602, 43.613998>,  <40.530266, 32.029694, 43.522057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327625, 32.119602, 43.613998>,  <39.989891, 32.269451, 43.767235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327625, 32.119602, 43.613998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096957, -0.596347, 0.796850,
		-0.526970, -0.709952, -0.467195,
		0.844335, -0.374618, -0.383092,
		40.580925, 32.007217, 43.499069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858356, 31.598700, 43.828983>,  <39.989891, 32.269451, 43.767235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858356, 31.598700, 43.828983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251690, 31.628805, 43.762779>,  <40.487690, 31.646868, 43.723057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251690, 31.628805, 43.762779>,  <39.858356, 31.598700, 43.828983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251690, 31.628805, 43.762779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171596, -0.685090, 0.707959,
		-0.060104, -0.724559, -0.686586,
		0.983333, 0.075264, -0.165508,
		40.546688, 31.651384, 43.713127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104267, 30.912294, 43.787201>,  <39.858356, 31.598700, 43.828983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104267, 30.912294, 43.787201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441700, 31.118031, 43.848942>,  <40.644157, 31.241472, 43.885986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441700, 31.118031, 43.848942>,  <40.104267, 30.912294, 43.787201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441700, 31.118031, 43.848942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154117, -0.507233, 0.847916,
		0.514413, -0.691496, -0.507161,
		0.843580, 0.514341, 0.154356,
		40.694775, 31.272333, 43.895248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600449, 30.497843, 44.018013>,  <40.104267, 30.912294, 43.787201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600449, 30.497843, 44.018013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727806, 30.850328, 44.157776>,  <40.804222, 31.061821, 44.241634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727806, 30.850328, 44.157776>,  <40.600449, 30.497843, 44.018013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727806, 30.850328, 44.157776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247671, -0.433114, 0.866644,
		0.915031, -0.189400, -0.356154,
		0.318397, 0.881215, 0.349404,
		40.823326, 31.114693, 44.262596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243988, 30.351406, 44.412498>,  <40.600449, 30.497843, 44.018013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243988, 30.351406, 44.412498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094158, 30.691519, 44.560398>,  <41.004261, 30.895586, 44.649139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094158, 30.691519, 44.560398>,  <41.243988, 30.351406, 44.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094158, 30.691519, 44.560398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267943, -0.282500, 0.921086,
		0.887637, 0.444089, -0.122008,
		-0.374577, 0.850281, 0.369748,
		40.981785, 30.946604, 44.671322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720428, 30.619261, 44.994263>,  <41.243988, 30.351406, 44.412498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720428, 30.619261, 44.994263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382534, 30.814323, 45.082455>,  <41.179798, 30.931360, 45.135372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382534, 30.814323, 45.082455>,  <41.720428, 30.619261, 44.994263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382534, 30.814323, 45.082455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094995, -0.268811, 0.958497,
		0.526686, 0.830621, 0.180749,
		-0.844735, 0.487657, 0.220484,
		41.129112, 30.960621, 45.148602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900261, 31.029108, 45.522648>,  <41.720428, 30.619261, 44.994263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900261, 31.029108, 45.522648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501991, 31.014296, 45.556725>,  <41.263027, 31.005407, 45.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501991, 31.014296, 45.556725>,  <41.900261, 31.029108, 45.522648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501991, 31.014296, 45.556725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092143, -0.277188, 0.956387,
		-0.011802, 0.960102, 0.279401,
		-0.995676, -0.037032, 0.085195,
		41.203289, 31.003185, 45.582283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600574, 31.529526, 46.153713>,  <41.900261, 31.029108, 45.522648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600574, 31.529526, 46.153713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346672, 31.227541, 46.087849>,  <41.194328, 31.046350, 46.048332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346672, 31.227541, 46.087849>,  <41.600574, 31.529526, 46.153713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346672, 31.227541, 46.087849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069818, -0.268257, 0.960814,
		-0.769549, 0.598390, 0.222989,
		-0.634760, -0.754962, -0.164659,
		41.156242, 31.001053, 46.038452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135506, 31.636528, 46.583244>,  <41.600574, 31.529526, 46.153713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135506, 31.636528, 46.583244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126698, 31.248913, 46.484871>,  <41.121414, 31.016344, 46.425846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126698, 31.248913, 46.484871>,  <41.135506, 31.636528, 46.583244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126698, 31.248913, 46.484871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005135, -0.245879, 0.969287,
		-0.999744, 0.022606, 0.000438,
		-0.022019, -0.969037, -0.245932,
		41.120090, 30.958202, 46.411091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695473, 31.351465, 47.111862>,  <41.135506, 31.636528, 46.583244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695473, 31.351465, 47.111862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897076, 31.046606, 46.949329>,  <41.018040, 30.863689, 46.851810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897076, 31.046606, 46.949329>,  <40.695473, 31.351465, 47.111862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897076, 31.046606, 46.949329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299970, -0.286699, 0.909847,
		-0.809933, -0.580458, 0.084123,
		0.504010, -0.762150, -0.406327,
		41.048279, 30.817961, 46.827431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679802, 30.965448, 47.669415>,  <40.695473, 31.351465, 47.111862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679802, 30.965448, 47.669415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948128, 30.810024, 47.416740>,  <41.109123, 30.716770, 47.265137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948128, 30.810024, 47.416740>,  <40.679802, 30.965448, 47.669415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948128, 30.810024, 47.416740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525783, -0.351532, 0.774582,
		-0.523030, -0.851731, -0.031515,
		0.670814, -0.388560, -0.631687,
		41.149372, 30.693457, 47.227234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665188, 30.269127, 47.813515>,  <40.679802, 30.965448, 47.669415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665188, 30.269127, 47.813515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029404, 30.352720, 47.670830>,  <41.247932, 30.402876, 47.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029404, 30.352720, 47.670830>,  <40.665188, 30.269127, 47.813515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029404, 30.352720, 47.670830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410955, -0.363385, 0.836102,
		0.045109, -0.907897, -0.416760,
		0.910539, 0.208986, -0.356712,
		41.302567, 30.415417, 47.563816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013969, 29.783295, 48.051662>,  <40.665188, 30.269127, 47.813515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013969, 29.783295, 48.051662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324341, 30.018707, 47.960823>,  <41.510563, 30.159954, 47.906319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324341, 30.018707, 47.960823>,  <41.013969, 29.783295, 48.051662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324341, 30.018707, 47.960823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467672, -0.295068, 0.833197,
		0.423351, -0.752707, -0.504189,
		0.775923, 0.588529, -0.227103,
		41.557117, 30.195267, 47.892693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602863, 29.379688, 48.119572>,  <41.013969, 29.783295, 48.051662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602863, 29.379688, 48.119572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703716, 29.766520, 48.133381>,  <41.764229, 29.998617, 48.141666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703716, 29.766520, 48.133381>,  <41.602863, 29.379688, 48.119572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703716, 29.766520, 48.133381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464314, -0.152199, 0.872495,
		0.849024, -0.203954, -0.487402,
		0.252131, 0.967077, 0.034521,
		41.779354, 30.056643, 48.143738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143887, 29.342258, 48.391621>,  <41.602863, 29.379688, 48.119572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143887, 29.342258, 48.391621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022869, 29.714350, 48.474705>,  <41.950260, 29.937605, 48.524555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022869, 29.714350, 48.474705>,  <42.143887, 29.342258, 48.391621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022869, 29.714350, 48.474705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234592, -0.138548, 0.962170,
		0.923815, 0.339825, -0.176307,
		-0.302542, 0.930228, 0.207713,
		41.932106, 29.993418, 48.537018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605282, 29.579479, 48.863861>,  <42.143887, 29.342258, 48.391621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605282, 29.579479, 48.863861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297218, 29.830595, 48.909008>,  <42.112381, 29.981264, 48.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297218, 29.830595, 48.909008>,  <42.605282, 29.579479, 48.863861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297218, 29.830595, 48.909008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184111, 0.049367, 0.981665,
		0.610705, 0.776817, -0.153603,
		-0.770157, 0.627788, 0.112872,
		42.066170, 30.018932, 48.942871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832386, 30.045771, 49.466072>,  <42.605282, 29.579479, 48.863861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832386, 30.045771, 49.466072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437901, 30.090158, 49.416969>,  <42.201210, 30.116791, 49.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437901, 30.090158, 49.416969>,  <42.832386, 30.045771, 49.466072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437901, 30.090158, 49.416969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085645, 0.292479, 0.952429,
		0.141596, 0.949812, -0.278942,
		-0.986213, 0.110970, -0.122760,
		42.142036, 30.123449, 49.380142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685272, 30.686560, 49.740135>,  <42.832386, 30.045771, 49.466072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685272, 30.686560, 49.740135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323639, 30.515629, 49.742298>,  <42.106659, 30.413071, 49.743595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323639, 30.515629, 49.742298>,  <42.685272, 30.686560, 49.740135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323639, 30.515629, 49.742298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015405, 0.045231, 0.998858,
		-0.427082, 0.902966, -0.047475,
		-0.904082, -0.427325, 0.005407,
		42.052414, 30.387432, 49.743919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286968, 31.084663, 50.107445>,  <42.685272, 30.686560, 49.740135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286968, 31.084663, 50.107445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136269, 30.714380, 50.094036>,  <42.045849, 30.492210, 50.085991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136269, 30.714380, 50.094036>,  <42.286968, 31.084663, 50.107445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136269, 30.714380, 50.094036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133634, 0.018504, 0.990858,
		-0.916626, 0.377782, -0.130678,
		-0.376747, -0.925710, -0.033523,
		42.023243, 30.436666, 50.083981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658184, 31.409786, 50.219002>,  <42.286968, 31.084663, 50.107445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658184, 31.409786, 50.219002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667572, 31.716671, 50.475388>,  <41.673206, 31.900803, 50.629219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667572, 31.716671, 50.475388>,  <41.658184, 31.409786, 50.219002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667572, 31.716671, 50.475388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392500, 0.596733, -0.699895,
		-0.919452, -0.235149, 0.315139,
		0.023474, 0.767212, 0.640963,
		41.674614, 31.946835, 50.667675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029049, 31.661394, 50.230526>,  <41.658184, 31.409786, 50.219002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029049, 31.661394, 50.230526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294643, 31.939503, 50.340595>,  <41.453999, 32.106369, 50.406635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294643, 31.939503, 50.340595>,  <41.029049, 31.661394, 50.230526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294643, 31.939503, 50.340595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241898, 0.547939, -0.800780,
		-0.707536, 0.465144, 0.532009,
		0.663987, 0.695272, 0.275169,
		41.493839, 32.148083, 50.423145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623314, 32.241295, 50.276840>,  <41.029049, 31.661394, 50.230526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623314, 32.241295, 50.276840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997131, 32.380283, 50.246155>,  <41.221424, 32.463676, 50.227741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997131, 32.380283, 50.246155>,  <40.623314, 32.241295, 50.276840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997131, 32.380283, 50.246155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294213, 0.633269, -0.715827,
		-0.200145, 0.691546, 0.694050,
		0.934548, 0.347468, -0.076717,
		41.277496, 32.484524, 50.223141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463108, 33.036537, 50.315315>,  <40.623314, 32.241295, 50.276840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463108, 33.036537, 50.315315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810478, 32.937241, 50.143635>,  <41.018902, 32.877663, 50.040627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810478, 32.937241, 50.143635>,  <40.463108, 33.036537, 50.315315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810478, 32.937241, 50.143635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182092, 0.645473, -0.741759,
		0.461174, 0.722317, 0.515342,
		0.868424, -0.248240, -0.429204,
		41.071007, 32.862770, 50.014874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840202, 33.649986, 50.127167>,  <40.463108, 33.036537, 50.315315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840202, 33.649986, 50.127167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996048, 33.363983, 49.894970>,  <41.089554, 33.192383, 49.755653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996048, 33.363983, 49.894970>,  <40.840202, 33.649986, 50.127167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996048, 33.363983, 49.894970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126955, 0.582584, -0.802794,
		0.912186, 0.386476, 0.136210,
		0.389614, -0.715005, -0.580490,
		41.112934, 33.149483, 49.720821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448685, 34.082325, 49.806622>,  <40.840202, 33.649986, 50.127167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448685, 34.082325, 49.806622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336338, 33.762810, 49.593811>,  <41.268929, 33.571102, 49.466125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336338, 33.762810, 49.593811>,  <41.448685, 34.082325, 49.806622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336338, 33.762810, 49.593811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193512, 0.590087, -0.783805,
		0.940036, -0.117191, -0.320311,
		-0.280866, -0.798789, -0.532025,
		41.252079, 33.523174, 49.434204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800800, 34.047661, 49.079391>,  <41.448685, 34.082325, 49.806622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800800, 34.047661, 49.079391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521702, 33.774021, 48.994389>,  <41.354244, 33.609837, 48.943386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521702, 33.774021, 48.994389>,  <41.800800, 34.047661, 49.079391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521702, 33.774021, 48.994389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100866, 0.387529, -0.916323,
		0.709210, -0.617923, -0.339399,
		-0.697744, -0.684100, -0.212512,
		41.312378, 33.568790, 48.930634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873425, 33.856953, 48.335114>,  <41.800800, 34.047661, 49.079391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873425, 33.856953, 48.335114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514851, 33.703587, 48.424007>,  <41.299706, 33.611565, 48.477345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514851, 33.703587, 48.424007>,  <41.873425, 33.856953, 48.335114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514851, 33.703587, 48.424007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316919, 0.204107, -0.926230,
		0.309775, -0.900739, -0.304482,
		-0.896438, -0.383419, 0.222235,
		41.245918, 33.588562, 48.490677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750813, 33.186420, 47.907608>,  <41.873425, 33.856953, 48.335114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750813, 33.186420, 47.907608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401348, 33.357140, 48.001041>,  <41.191669, 33.459572, 48.057102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401348, 33.357140, 48.001041>,  <41.750813, 33.186420, 47.907608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401348, 33.357140, 48.001041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233050, 0.054338, -0.970946,
		-0.427088, -0.902714, 0.051992,
		-0.873662, 0.426796, 0.233584,
		41.139248, 33.485180, 48.071117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249973, 32.863953, 47.483883>,  <41.750813, 33.186420, 47.907608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249973, 32.863953, 47.483883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056644, 33.184841, 47.624073>,  <40.940647, 33.377377, 47.708187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056644, 33.184841, 47.624073>,  <41.249973, 32.863953, 47.483883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056644, 33.184841, 47.624073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340337, 0.196669, -0.919507,
		-0.806579, -0.563698, 0.177973,
		-0.483323, 0.802225, 0.350476,
		40.911648, 33.425510, 47.729218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551003, 32.865299, 47.156902>,  <41.249973, 32.863953, 47.483883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551003, 32.865299, 47.156902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591953, 33.243526, 47.280460>,  <40.616524, 33.470463, 47.354595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591953, 33.243526, 47.280460>,  <40.551003, 32.865299, 47.156902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591953, 33.243526, 47.280460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491293, 0.318070, -0.810841,
		-0.864957, -0.068746, 0.497115,
		0.102375, 0.945572, 0.308891,
		40.622665, 33.527199, 47.373127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842163, 33.195049, 47.071415>,  <40.551003, 32.865299, 47.156902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842163, 33.195049, 47.071415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126221, 33.476208, 47.055290>,  <40.296658, 33.644901, 47.045616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126221, 33.476208, 47.055290>,  <39.842163, 33.195049, 47.071415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126221, 33.476208, 47.055290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460685, 0.420615, -0.781570,
		-0.532408, 0.573602, 0.622513,
		0.710149, 0.702897, -0.040311,
		40.339264, 33.687077, 47.043198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462540, 33.627998, 46.899891>,  <39.842163, 33.195049, 47.071415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462540, 33.627998, 46.899891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816074, 33.788948, 46.804447>,  <40.028194, 33.885517, 46.747181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816074, 33.788948, 46.804447>,  <39.462540, 33.627998, 46.899891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816074, 33.788948, 46.804447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441664, 0.549651, -0.709096,
		-0.154171, 0.732107, 0.663514,
		0.883835, 0.402372, -0.238605,
		40.081226, 33.909660, 46.732864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366589, 34.385002, 46.833328>,  <39.462540, 33.627998, 46.899891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366589, 34.385002, 46.833328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687820, 34.273899, 46.622459>,  <39.880562, 34.207237, 46.495937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687820, 34.273899, 46.622459>,  <39.366589, 34.385002, 46.833328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687820, 34.273899, 46.622459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379995, 0.442746, -0.812145,
		0.458982, 0.852542, 0.250015,
		0.803081, -0.277756, -0.527174,
		39.928745, 34.190571, 46.464306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479919, 34.922714, 46.293892>,  <39.366589, 34.385002, 46.833328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479919, 34.922714, 46.293892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717590, 34.629135, 46.162270>,  <39.860191, 34.452988, 46.083298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717590, 34.629135, 46.162270>,  <39.479919, 34.922714, 46.293892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717590, 34.629135, 46.162270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056677, 0.369882, -0.927349,
		0.802337, 0.569657, 0.178176,
		0.594174, -0.733948, -0.329056,
		39.895844, 34.408951, 46.063553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001316, 35.284771, 45.927414>,  <39.479919, 34.922714, 46.293892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001316, 35.284771, 45.927414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995678, 34.909843, 45.788139>,  <39.992294, 34.684887, 45.704575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995678, 34.909843, 45.788139>,  <40.001316, 35.284771, 45.927414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995678, 34.909843, 45.788139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048008, 0.348450, -0.936097,
		0.998748, 0.003523, -0.049910,
		-0.014094, -0.937321, -0.348182,
		39.991451, 34.628647, 45.683685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526943, 35.202496, 45.536446>,  <40.001316, 35.284771, 45.927414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526943, 35.202496, 45.536446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253593, 34.938797, 45.410976>,  <40.089584, 34.780579, 45.335693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253593, 34.938797, 45.410976>,  <40.526943, 35.202496, 45.536446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253593, 34.938797, 45.410976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016418, 0.415664, -0.909370,
		0.729881, -0.626592, -0.273232,
		-0.683377, -0.659246, -0.313673,
		40.048580, 34.741024, 45.316875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795448, 34.954399, 44.870419>,  <40.526943, 35.202496, 45.536446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795448, 34.954399, 44.870419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404774, 34.868542, 44.868698>,  <40.170368, 34.817028, 44.867668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404774, 34.868542, 44.868698>,  <40.795448, 34.954399, 44.870419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404774, 34.868542, 44.868698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080820, 0.386144, -0.918891,
		0.198897, -0.897117, -0.394488,
		-0.976682, -0.214648, -0.004298,
		40.111771, 34.804146, 44.867409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639263, 34.615112, 44.226173>,  <40.795448, 34.954399, 44.870419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639263, 34.615112, 44.226173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284672, 34.749332, 44.353649>,  <40.071918, 34.829865, 44.430134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284672, 34.749332, 44.353649>,  <40.639263, 34.615112, 44.226173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284672, 34.749332, 44.353649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207094, 0.328203, -0.921626,
		-0.413845, -0.883001, -0.221455,
		-0.886479, 0.335548, 0.318689,
		40.018726, 34.849998, 44.449257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106155, 34.334538, 43.747162>,  <40.639263, 34.615112, 44.226173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106155, 34.334538, 43.747162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923950, 34.638660, 43.932392>,  <39.814629, 34.821136, 44.043530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923950, 34.638660, 43.932392>,  <40.106155, 34.334538, 43.747162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923950, 34.638660, 43.932392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526836, 0.189075, -0.828671,
		-0.717603, -0.621432, 0.314434,
		-0.455511, 0.760311, 0.463073,
		39.787296, 34.866753, 44.071316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352974, 34.208679, 43.749611>,  <40.106155, 34.334538, 43.747162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352974, 34.208679, 43.749611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411156, 34.598251, 43.819248>,  <39.446064, 34.831993, 43.861031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411156, 34.598251, 43.819248>,  <39.352974, 34.208679, 43.749611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411156, 34.598251, 43.819248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584382, 0.226562, -0.779209,
		-0.798335, 0.011607, 0.602101,
		0.145457, 0.973927, 0.174090,
		39.454792, 34.890430, 43.871475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669556, 34.558056, 43.521820>,  <39.352974, 34.208679, 43.749611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669556, 34.558056, 43.521820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953979, 34.839264, 43.526772>,  <39.124634, 35.007988, 43.529743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953979, 34.839264, 43.526772>,  <38.669556, 34.558056, 43.521820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953979, 34.839264, 43.526772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159722, 0.178645, -0.970863,
		-0.684747, 0.688367, 0.239316,
		0.711062, 0.703020, 0.012379,
		39.167297, 35.050171, 43.530487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344635, 35.128441, 43.161037>,  <38.669556, 34.558056, 43.521820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344635, 35.128441, 43.161037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740780, 35.181164, 43.144016>,  <38.978466, 35.212799, 43.133804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740780, 35.181164, 43.144016>,  <38.344635, 35.128441, 43.161037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740780, 35.181164, 43.144016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070514, 0.215366, -0.973984,
		-0.119214, 0.967597, 0.222585,
		0.990361, 0.131808, -0.042554,
		39.037888, 35.220707, 43.131248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334103, 35.447071, 42.615192>,  <38.344635, 35.128441, 43.161037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334103, 35.447071, 42.615192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729309, 35.399696, 42.654797>,  <38.966431, 35.371273, 42.678558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729309, 35.399696, 42.654797>,  <38.334103, 35.447071, 42.615192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729309, 35.399696, 42.654797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117234, 0.158391, -0.980392,
		0.100433, 0.980247, 0.170377,
		0.988013, -0.118438, 0.099010,
		39.025711, 35.364166, 42.684498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622036, 36.028755, 42.313099>,  <38.334103, 35.447071, 42.615192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622036, 36.028755, 42.313099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910259, 35.752449, 42.288982>,  <39.083195, 35.586666, 42.274513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910259, 35.752449, 42.288982>,  <38.622036, 36.028755, 42.313099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910259, 35.752449, 42.288982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028747, 0.116637, -0.992758,
		0.692800, 0.713606, 0.103901,
		0.720557, -0.690770, -0.060292,
		39.126427, 35.545219, 42.270893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139000, 36.349064, 41.936504>,  <38.622036, 36.028755, 42.313099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139000, 36.349064, 41.936504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195942, 35.953800, 41.913635>,  <39.230106, 35.716640, 41.899914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195942, 35.953800, 41.913635>,  <39.139000, 36.349064, 41.936504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195942, 35.953800, 41.913635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307639, 0.099068, -0.946332,
		0.940794, 0.117124, 0.318100,
		0.142352, -0.988164, -0.057171,
		39.238647, 35.657352, 41.896484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843010, 36.328804, 41.664215>,  <39.139000, 36.349064, 41.936504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843010, 36.328804, 41.664215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660725, 35.985752, 41.568886>,  <39.551353, 35.779922, 41.511688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660725, 35.985752, 41.568886>,  <39.843010, 36.328804, 41.664215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660725, 35.985752, 41.568886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403247, 0.039780, -0.914226,
		0.793545, -0.512732, 0.327707,
		-0.455717, -0.857627, -0.238325,
		39.524010, 35.728466, 41.497387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378452, 35.878983, 41.424080>,  <39.843010, 36.328804, 41.664215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378452, 35.878983, 41.424080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046799, 35.698009, 41.292725>,  <39.847805, 35.589424, 41.213913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046799, 35.698009, 41.292725>,  <40.378452, 35.878983, 41.424080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046799, 35.698009, 41.292725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342644, 0.052871, -0.937977,
		0.441736, -0.890229, 0.111187,
		-0.829135, -0.452435, -0.328386,
		39.798058, 35.562279, 41.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669659, 35.473969, 40.768841>,  <40.378452, 35.878983, 41.424080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669659, 35.473969, 40.768841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270103, 35.475037, 40.750000>,  <40.030369, 35.475677, 40.738697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270103, 35.475037, 40.750000>,  <40.669659, 35.473969, 40.768841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270103, 35.475037, 40.750000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047176, 0.053499, -0.997453,
		-0.000143, -0.998564, -0.053566,
		-0.998886, 0.002669, -0.047101,
		39.970436, 35.475838, 40.735870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464085, 34.967125, 40.326809>,  <40.669659, 35.473969, 40.768841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464085, 34.967125, 40.326809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150063, 35.214493, 40.340961>,  <39.961651, 35.362911, 40.349453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150063, 35.214493, 40.340961>,  <40.464085, 34.967125, 40.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150063, 35.214493, 40.340961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033125, 0.098950, -0.994541,
		-0.618543, -0.779595, -0.098166,
		-0.785052, 0.618418, 0.035380,
		39.914547, 35.400017, 40.351574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131493, 34.820621, 39.681908>,  <40.464085, 34.967125, 40.326809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131493, 34.820621, 39.681908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009541, 35.181213, 39.804798>,  <39.936371, 35.397568, 39.878532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009541, 35.181213, 39.804798>,  <40.131493, 34.820621, 39.681908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009541, 35.181213, 39.804798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170236, 0.265804, -0.948877,
		-0.937053, -0.341592, 0.072426,
		-0.304878, 0.901478, 0.307223,
		39.918076, 35.451656, 39.896965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452160, 34.912823, 39.543007>,  <40.131493, 34.820621, 39.681908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452160, 34.912823, 39.543007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594833, 35.283314, 39.591793>,  <39.680439, 35.505608, 39.621063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594833, 35.283314, 39.591793>,  <39.452160, 34.912823, 39.543007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594833, 35.283314, 39.591793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235260, 0.215396, -0.947765,
		-0.904117, 0.309362, 0.294733,
		0.356687, 0.926229, 0.121963,
		39.701839, 35.561184, 39.628384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990658, 35.343945, 39.113705>,  <39.452160, 34.912823, 39.543007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990658, 35.343945, 39.113705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323528, 35.558582, 39.169621>,  <39.523251, 35.687366, 39.203171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323528, 35.558582, 39.169621>,  <38.990658, 35.343945, 39.113705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323528, 35.558582, 39.169621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002268, 0.248806, -0.968551,
		-0.554500, 0.806326, 0.205835,
		0.832181, 0.536594, 0.139792,
		39.573181, 35.719559, 39.211559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829315, 36.004833, 38.964897>,  <38.990658, 35.343945, 39.113705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829315, 36.004833, 38.964897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221905, 35.958538, 38.903831>,  <39.457458, 35.930759, 38.867191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221905, 35.958538, 38.903831>,  <38.829315, 36.004833, 38.964897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221905, 35.958538, 38.903831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108127, 0.323178, -0.940140,
		0.158149, 0.939234, 0.304678,
		0.981477, -0.115738, -0.152667,
		39.516350, 35.923817, 38.858032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041576, 36.506458, 38.533894>,  <38.829315, 36.004833, 38.964897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041576, 36.506458, 38.533894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366524, 36.277592, 38.488846>,  <39.561493, 36.140270, 38.461819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366524, 36.277592, 38.488846>,  <39.041576, 36.506458, 38.533894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366524, 36.277592, 38.488846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022057, 0.223128, -0.974540,
		0.582731, 0.789199, 0.193882,
		0.812366, -0.572171, -0.112617,
		39.610233, 36.105942, 38.455059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529926, 36.908920, 38.237438>,  <39.041576, 36.506458, 38.533894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529926, 36.908920, 38.237438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626060, 36.531471, 38.146385>,  <39.683743, 36.305000, 38.091751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626060, 36.531471, 38.146385>,  <39.529926, 36.908920, 38.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626060, 36.531471, 38.146385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075846, 0.252047, -0.964738,
		0.967722, 0.214595, 0.132145,
		0.240335, -0.943621, -0.227635,
		39.698162, 36.248386, 38.078094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926407, 37.014416, 37.601608>,  <39.529926, 36.908920, 38.237438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926407, 37.014416, 37.601608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835911, 36.624798, 37.598701>,  <39.781612, 36.391026, 37.596958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835911, 36.624798, 37.598701>,  <39.926407, 37.014416, 37.601608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835911, 36.624798, 37.598701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102936, 0.031327, -0.994195,
		0.968617, -0.224181, -0.107352,
		-0.226242, -0.974044, -0.007268,
		39.768040, 36.332584, 37.596519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183323, 36.746723, 36.982151>,  <39.926407, 37.014416, 37.601608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183323, 36.746723, 36.982151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924995, 36.459717, 37.086517>,  <39.769997, 36.287514, 37.149139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924995, 36.459717, 37.086517>,  <40.183323, 36.746723, 36.982151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924995, 36.459717, 37.086517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160079, -0.206896, -0.965178,
		0.746519, -0.665100, 0.018758,
		-0.645821, -0.717521, 0.260920,
		39.731251, 36.244461, 37.164795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376217, 36.162121, 36.578503>,  <40.183323, 36.746723, 36.982151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376217, 36.162121, 36.578503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999565, 36.122646, 36.707249>,  <39.773575, 36.098961, 36.784496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999565, 36.122646, 36.707249>,  <40.376217, 36.162121, 36.578503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999565, 36.122646, 36.707249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276986, -0.316342, -0.907307,
		0.191356, -0.943499, 0.270543,
		-0.941627, -0.098682, 0.321870,
		39.717075, 36.093040, 36.803810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221687, 35.520882, 36.410259>,  <40.376217, 36.162121, 36.578503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221687, 35.520882, 36.410259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873016, 35.713562, 36.446339>,  <39.663815, 35.829170, 36.467987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873016, 35.713562, 36.446339>,  <40.221687, 35.520882, 36.410259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873016, 35.713562, 36.446339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369513, -0.525119, -0.766622,
		-0.321919, -0.701579, 0.635732,
		-0.871682, 0.481702, 0.090197,
		39.611511, 35.858074, 36.473396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916824, 35.299690, 36.643894>,  <40.221687, 35.520882, 36.410259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916824, 35.299690, 36.643894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149334, 35.051960, 36.855007>,  <41.288841, 34.903320, 36.981674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149334, 35.051960, 36.855007>,  <40.916824, 35.299690, 36.643894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149334, 35.051960, 36.855007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062004, -0.613021, -0.787630,
		0.811342, 0.490554, -0.317932,
		0.581274, -0.619324, 0.527786,
		41.323715, 34.866161, 37.013344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613144, 35.087975, 36.319572>,  <40.916824, 35.299690, 36.643894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613144, 35.087975, 36.319572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471874, 34.792465, 36.549171>,  <41.387112, 34.615158, 36.686932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471874, 34.792465, 36.549171>,  <41.613144, 35.087975, 36.319572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471874, 34.792465, 36.549171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092622, -0.582913, -0.807238,
		0.930960, -0.338264, 0.137445,
		-0.353178, -0.738776, 0.574000,
		41.365921, 34.570831, 36.721371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668846, 35.733097, 36.015297>,  <41.613144, 35.087975, 36.319572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668846, 35.733097, 36.015297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029026, 35.826897, 35.868767>,  <42.245136, 35.883179, 35.780849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029026, 35.826897, 35.868767>,  <41.668846, 35.733097, 36.015297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029026, 35.826897, 35.868767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256059, -0.395009, -0.882270,
		-0.351596, 0.888244, -0.295641,
		0.900452, 0.234502, -0.366327,
		42.299160, 35.897247, 35.758869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640961, 36.092117, 35.399975>,  <41.668846, 35.733097, 36.015297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640961, 36.092117, 35.399975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009583, 35.940872, 35.364727>,  <42.230755, 35.850124, 35.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009583, 35.940872, 35.364727>,  <41.640961, 36.092117, 35.399975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009583, 35.940872, 35.364727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280231, -0.490704, -0.825033,
		0.268716, 0.785008, -0.558170,
		0.921554, -0.378117, -0.088123,
		42.286049, 35.827438, 35.338291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006912, 36.286049, 34.859615>,  <41.640961, 36.092117, 35.399975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006912, 36.286049, 34.859615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124592, 35.916401, 34.957150>,  <42.195202, 35.694614, 35.015671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124592, 35.916401, 34.957150>,  <42.006912, 36.286049, 34.859615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124592, 35.916401, 34.957150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172902, -0.302375, -0.937376,
		0.939973, 0.233619, -0.248741,
		0.294202, -0.924116, 0.243831,
		42.212852, 35.639168, 35.030300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604107, 36.046875, 34.398586>,  <42.006912, 36.286049, 34.859615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604107, 36.046875, 34.398586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361843, 35.759235, 34.534866>,  <42.216484, 35.586651, 34.616634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361843, 35.759235, 34.534866>,  <42.604107, 36.046875, 34.398586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361843, 35.759235, 34.534866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225241, -0.255720, -0.940146,
		0.763181, -0.646146, -0.007092,
		-0.605657, -0.719099, 0.340699,
		42.180145, 35.543507, 34.637077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831207, 35.376991, 34.371532>,  <42.604107, 36.046875, 34.398586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831207, 35.376991, 34.371532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433151, 35.344593, 34.349144>,  <42.194317, 35.325153, 34.335712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433151, 35.344593, 34.349144>,  <42.831207, 35.376991, 34.371532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433151, 35.344593, 34.349144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056271, -0.001434, -0.998414,
		0.080786, -0.996714, 0.005985,
		-0.995142, -0.080995, -0.055970,
		42.134609, 35.320293, 34.332352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814358, 34.879261, 33.877197>,  <42.831207, 35.376991, 34.371532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814358, 34.879261, 33.877197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456673, 35.057331, 33.895966>,  <42.242062, 35.164173, 33.907227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456673, 35.057331, 33.895966>,  <42.814358, 34.879261, 33.877197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456673, 35.057331, 33.895966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023753, 0.057476, -0.998064,
		-0.447011, -0.893597, -0.040822,
		-0.894213, 0.445176, 0.046918,
		42.188408, 35.190884, 33.910042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505302, 35.168240, 33.793282>,  <42.814358, 34.879261, 33.877197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505302, 35.168240, 33.793282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859524, 34.982475, 33.797729>,  <44.072056, 34.871017, 33.800400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.859524, 34.982475, 33.797729>,  <43.505302, 35.168240, 33.793282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859524, 34.982475, 33.797729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259281, -0.513978, -0.817679,
		0.385455, 0.721212, -0.575567,
		0.885549, -0.464413, 0.011119,
		44.125187, 34.843151, 33.801064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640362, 35.102192, 33.057747>,  <43.505302, 35.168240, 33.793282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640362, 35.102192, 33.057747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899075, 34.863884, 33.248211>,  <44.054302, 34.720898, 33.362488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899075, 34.863884, 33.248211>,  <43.640362, 35.102192, 33.057747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899075, 34.863884, 33.248211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202915, -0.736247, -0.645574,
		0.735185, 0.320928, -0.597083,
		0.646784, -0.595773, 0.476157,
		44.093109, 34.685150, 33.391056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860455, 34.664371, 32.458794>,  <43.640362, 35.102192, 33.057747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860455, 34.664371, 32.458794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992630, 34.470894, 32.782978>,  <44.071934, 34.354805, 32.977489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992630, 34.470894, 32.782978>,  <43.860455, 34.664371, 32.458794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992630, 34.470894, 32.782978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350819, -0.860119, -0.370299,
		0.876207, -0.161966, -0.453904,
		0.330436, -0.483697, 0.810463,
		44.091763, 34.325787, 33.026115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320904, 34.122524, 32.302914>,  <43.860455, 34.664371, 32.458794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320904, 34.122524, 32.302914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143970, 34.016430, 32.645607>,  <44.037811, 33.952774, 32.851223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143970, 34.016430, 32.645607>,  <44.320904, 34.122524, 32.302914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143970, 34.016430, 32.645607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414803, -0.786448, -0.457643,
		0.795159, -0.557807, 0.237852,
		-0.442335, -0.265237, 0.856732,
		44.011269, 33.936859, 32.902626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350658, 33.392353, 32.338711>,  <44.320904, 34.122524, 32.302914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350658, 33.392353, 32.338711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080563, 33.480724, 32.620205>,  <43.918507, 33.533745, 32.789101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080563, 33.480724, 32.620205>,  <44.350658, 33.392353, 32.338711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080563, 33.480724, 32.620205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582871, -0.744503, -0.325542,
		0.452015, -0.630007, 0.631486,
		-0.675236, 0.220925, 0.703739,
		43.877991, 33.547001, 32.831326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246304, 32.775318, 32.707684>,  <44.350658, 33.392353, 32.338711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246304, 32.775318, 32.707684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939278, 33.030251, 32.680401>,  <43.755062, 33.183212, 32.664032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939278, 33.030251, 32.680401>,  <44.246304, 32.775318, 32.707684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939278, 33.030251, 32.680401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573310, -0.730228, -0.371594,
		-0.286638, -0.246117, 0.925886,
		-0.767564, 0.637333, -0.068210,
		43.709007, 33.221451, 32.659939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578762, 32.443527, 32.871494>,  <44.246304, 32.775318, 32.707684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578762, 32.443527, 32.871494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473736, 32.770039, 32.665680>,  <43.410721, 32.965946, 32.542191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473736, 32.770039, 32.665680>,  <43.578762, 32.443527, 32.871494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473736, 32.770039, 32.665680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635670, -0.547506, -0.544207,
		-0.725938, 0.184190, 0.662637,
		-0.262560, 0.816279, -0.514540,
		43.394966, 33.014923, 32.511318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920784, 32.307087, 32.738720>,  <43.578762, 32.443527, 32.871494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920784, 32.307087, 32.738720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007492, 32.595306, 32.475262>,  <43.059517, 32.768238, 32.317188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007492, 32.595306, 32.475262>,  <42.920784, 32.307087, 32.738720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007492, 32.595306, 32.475262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582497, -0.445954, -0.679576,
		-0.783396, 0.530971, 0.323050,
		0.216769, 0.720552, -0.658647,
		43.072521, 32.811474, 32.277668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284317, 32.586487, 32.558163>,  <42.920784, 32.307087, 32.738720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284317, 32.586487, 32.558163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524185, 32.672508, 32.249836>,  <42.668106, 32.724121, 32.064842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524185, 32.672508, 32.249836>,  <42.284317, 32.586487, 32.558163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524185, 32.672508, 32.249836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610220, -0.500266, -0.614301,
		-0.517718, 0.838741, -0.168763,
		0.599666, 0.215052, -0.770814,
		42.704086, 32.737022, 32.018593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826263, 32.881447, 32.017162>,  <42.284317, 32.586487, 32.558163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826263, 32.881447, 32.017162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159260, 32.756115, 31.834394>,  <42.359058, 32.680916, 31.724733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159260, 32.756115, 31.834394>,  <41.826263, 32.881447, 32.017162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159260, 32.756115, 31.834394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554022, -0.476523, -0.682631,
		-0.003841, 0.821430, -0.570297,
		0.832493, -0.313334, -0.456921,
		42.409008, 32.662113, 31.697319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694828, 32.882816, 31.397156>,  <41.826263, 32.881447, 32.017162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694828, 32.882816, 31.397156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026264, 32.659180, 31.385464>,  <42.225124, 32.524998, 31.378448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026264, 32.659180, 31.385464>,  <41.694828, 32.882816, 31.397156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026264, 32.659180, 31.385464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296903, -0.394549, -0.869586,
		0.474648, 0.729207, -0.492916,
		0.828588, -0.559096, -0.029232,
		42.274841, 32.491451, 31.376694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939865, 33.080906, 30.786438>,  <41.694828, 32.882816, 31.397156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939865, 33.080906, 30.786438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105854, 32.726978, 30.871187>,  <42.205448, 32.514622, 30.922037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105854, 32.726978, 30.871187>,  <41.939865, 33.080906, 30.786438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105854, 32.726978, 30.871187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191820, -0.312718, -0.930276,
		0.889383, 0.345398, -0.299496,
		0.414973, -0.884821, 0.211872,
		42.230347, 32.461533, 30.934750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388103, 32.828876, 30.247831>,  <41.939865, 33.080906, 30.786438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388103, 32.828876, 30.247831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322742, 32.486580, 30.444201>,  <42.283527, 32.281200, 30.562021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322742, 32.486580, 30.444201>,  <42.388103, 32.828876, 30.247831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322742, 32.486580, 30.444201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134919, -0.473551, -0.870371,
		0.977291, -0.208451, -0.038079,
		-0.163398, -0.855744, 0.490921,
		42.273724, 32.229858, 30.591476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821312, 32.331631, 29.927589>,  <42.388103, 32.828876, 30.247831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821312, 32.331631, 29.927589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514061, 32.158558, 30.116385>,  <42.329712, 32.054714, 30.229662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514061, 32.158558, 30.116385>,  <42.821312, 32.331631, 29.927589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514061, 32.158558, 30.116385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236638, -0.493115, -0.837162,
		0.594970, -0.754734, 0.276383,
		-0.768123, -0.432683, 0.471987,
		42.283623, 32.028751, 30.257980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885105, 31.527449, 29.804882>,  <42.821312, 32.331631, 29.927589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885105, 31.527449, 29.804882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505581, 31.602674, 29.906382>,  <42.277866, 31.647810, 29.967281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505581, 31.602674, 29.906382>,  <42.885105, 31.527449, 29.804882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505581, 31.602674, 29.906382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314447, -0.487001, -0.814833,
		-0.029663, -0.852914, 0.521208,
		-0.948812, 0.188062, 0.253750,
		42.220936, 31.659094, 29.982506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512695, 30.946960, 29.639494>,  <42.885105, 31.527449, 29.804882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512695, 30.946960, 29.639494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224667, 31.221889, 29.677628>,  <42.051849, 31.386847, 29.700508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224667, 31.221889, 29.677628>,  <42.512695, 30.946960, 29.639494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224667, 31.221889, 29.677628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460429, -0.370472, -0.806694,
		-0.519141, -0.624769, 0.583229,
		-0.720068, 0.687324, 0.095335,
		42.008644, 31.428085, 29.706228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008991, 30.658291, 29.352648>,  <42.512695, 30.946960, 29.639494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008991, 30.658291, 29.352648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870831, 31.033581, 29.360985>,  <41.787933, 31.258755, 29.365986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870831, 31.033581, 29.360985>,  <42.008991, 30.658291, 29.352648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870831, 31.033581, 29.360985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574345, -0.193774, -0.795349,
		-0.742177, -0.286683, 0.605794,
		-0.345400, 0.938224, 0.020841,
		41.767212, 31.315048, 29.367237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289295, 30.722858, 29.587566>,  <42.008991, 30.658291, 29.352648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289295, 30.722858, 29.587566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322956, 31.078861, 29.408321>,  <41.343151, 31.292463, 29.300774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322956, 31.078861, 29.408321>,  <41.289295, 30.722858, 29.587566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322956, 31.078861, 29.408321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738835, -0.246020, -0.627373,
		-0.668611, 0.383876, 0.636865,
		0.084152, 0.890007, -0.448113,
		41.348202, 31.345863, 29.273888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641201, 30.937302, 29.361649>,  <41.289295, 30.722858, 29.587566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641201, 30.937302, 29.361649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875122, 31.146954, 29.114006>,  <41.015476, 31.272745, 28.965422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875122, 31.146954, 29.114006>,  <40.641201, 30.937302, 29.361649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875122, 31.146954, 29.114006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603827, -0.228364, -0.763704,
		-0.541663, 0.820449, 0.182936,
		0.584803, 0.524132, -0.619105,
		41.050564, 31.304193, 28.928274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129005, 31.380917, 29.047134>,  <40.641201, 30.937302, 29.361649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129005, 31.380917, 29.047134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451324, 31.345955, 28.812853>,  <40.644714, 31.324978, 28.672283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451324, 31.345955, 28.812853>,  <40.129005, 31.380917, 29.047134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451324, 31.345955, 28.812853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579803, -0.317676, -0.750274,
		-0.120488, 0.944162, -0.306658,
		0.805798, -0.087402, -0.585704,
		40.693066, 31.319735, 28.637142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064507, 31.766668, 28.362293>,  <40.129005, 31.380917, 29.047134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064507, 31.766668, 28.362293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292133, 31.446110, 28.288624>,  <40.428711, 31.253775, 28.244423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292133, 31.446110, 28.288624>,  <40.064507, 31.766668, 28.362293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292133, 31.446110, 28.288624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723340, -0.381352, -0.575630,
		0.391073, 0.460794, -0.796700,
		0.569070, -0.801398, -0.184174,
		40.462852, 31.205690, 28.233372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954102, 31.656527, 27.660782>,  <40.064507, 31.766668, 28.362293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954102, 31.656527, 27.660782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060032, 31.326029, 27.859652>,  <40.123592, 31.127729, 27.978973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060032, 31.326029, 27.859652>,  <39.954102, 31.656527, 27.660782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060032, 31.326029, 27.859652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564377, -0.550863, -0.614841,
		0.781885, -0.117766, -0.612199,
		0.264830, -0.826245, 0.497175,
		40.139481, 31.078156, 28.008804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267025, 31.072966, 27.275517>,  <39.954102, 31.656527, 27.660782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267025, 31.072966, 27.275517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074505, 30.934299, 27.597553>,  <39.958992, 30.851099, 27.790775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074505, 30.934299, 27.597553>,  <40.267025, 31.072966, 27.275517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074505, 30.934299, 27.597553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621760, -0.512399, -0.592336,
		0.617871, -0.785666, 0.031075,
		-0.481301, -0.346665, 0.805092,
		39.930115, 30.830299, 27.839081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424831, 30.414669, 27.314455>,  <40.267025, 31.072966, 27.275517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424831, 30.414669, 27.314455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518486, 30.138332, 27.040836>,  <40.574680, 29.972530, 26.876665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518486, 30.138332, 27.040836>,  <40.424831, 30.414669, 27.314455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518486, 30.138332, 27.040836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731117, -0.338654, 0.592268,
		-0.640817, -0.638790, 0.425793,
		0.234138, -0.690840, -0.684046,
		40.588726, 29.931080, 26.835623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316410, 29.687895, 27.556044>,  <40.424831, 30.414669, 27.314455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316410, 29.687895, 27.556044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621273, 29.678331, 27.297264>,  <40.804192, 29.672594, 27.141996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621273, 29.678331, 27.297264>,  <40.316410, 29.687895, 27.556044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621273, 29.678331, 27.297264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582921, -0.409383, 0.701861,
		-0.281629, -0.912049, -0.298079,
		0.762160, -0.023908, -0.646947,
		40.849922, 29.671160, 27.103180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557995, 28.954824, 27.491182>,  <40.316410, 29.687895, 27.556044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557995, 28.954824, 27.491182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835945, 29.237497, 27.437895>,  <41.002716, 29.407101, 27.405922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835945, 29.237497, 27.437895>,  <40.557995, 28.954824, 27.491182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835945, 29.237497, 27.437895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452258, -0.285413, 0.844987,
		0.559115, -0.647411, -0.517929,
		0.694877, 0.706682, -0.133218,
		41.044407, 29.449501, 27.397930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244038, 28.705906, 27.292593>,  <40.557995, 28.954824, 27.491182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244038, 28.705906, 27.292593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209183, 29.032629, 27.520710>,  <41.188271, 29.228662, 27.657579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209183, 29.032629, 27.520710>,  <41.244038, 28.705906, 27.292593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209183, 29.032629, 27.520710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439771, -0.482128, 0.757729,
		0.893872, 0.316826, -0.317196,
		-0.087140, 0.816807, 0.570292,
		41.183041, 29.277672, 27.691797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851746, 28.921898, 27.623428>,  <41.244038, 28.705906, 27.292593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851746, 28.921898, 27.623428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560783, 29.010321, 27.883280>,  <41.386208, 29.063375, 28.039190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560783, 29.010321, 27.883280>,  <41.851746, 28.921898, 27.623428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560783, 29.010321, 27.883280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550572, -0.377040, 0.744790,
		0.409578, 0.899430, 0.152552,
		-0.727404, 0.221059, 0.649628,
		41.342564, 29.076637, 28.078169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443089, 29.428993, 27.824493>,  <41.851746, 28.921898, 27.623428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443089, 29.428993, 27.824493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787899, 29.548136, 27.660448>,  <42.994785, 29.619621, 27.562021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787899, 29.548136, 27.660448>,  <42.443089, 29.428993, 27.824493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787899, 29.548136, 27.660448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467677, -0.155435, 0.870126,
		0.195428, -0.941871, -0.273290,
		0.862025, 0.297858, -0.410115,
		43.046505, 29.637493, 27.537413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032696, 28.916195, 27.787489>,  <42.443089, 29.428993, 27.824493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032696, 28.916195, 27.787489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141647, 29.299120, 27.826187>,  <43.207020, 29.528875, 27.849407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141647, 29.299120, 27.826187>,  <43.032696, 28.916195, 27.787489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141647, 29.299120, 27.826187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429844, -0.211023, 0.877897,
		0.860839, -0.197535, -0.468974,
		0.272380, 0.957314, 0.096747,
		43.223362, 29.586313, 27.855211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795567, 28.941936, 28.078985>,  <43.032696, 28.916195, 27.787489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795567, 28.941936, 28.078985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582375, 29.263920, 28.183268>,  <43.454460, 29.457109, 28.245836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582375, 29.263920, 28.183268>,  <43.795567, 28.941936, 28.078985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582375, 29.263920, 28.183268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483316, 0.036730, 0.874676,
		0.694504, 0.592190, -0.408626,
		-0.532983, 0.804961, 0.260706,
		43.422482, 29.505407, 28.261478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290314, 29.469006, 28.253607>,  <43.795567, 28.941936, 28.078985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290314, 29.469006, 28.253607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949261, 29.583685, 28.428339>,  <43.744629, 29.652493, 28.533178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949261, 29.583685, 28.428339>,  <44.290314, 29.469006, 28.253607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949261, 29.583685, 28.428339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515792, 0.328210, 0.791352,
		0.083506, 0.900046, -0.427719,
		-0.852635, 0.286697, 0.436829,
		43.693470, 29.669693, 28.559387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410419, 30.097324, 28.540030>,  <44.290314, 29.469006, 28.253607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410419, 30.097324, 28.540030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087128, 30.002640, 28.755707>,  <43.893150, 29.945829, 28.885113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087128, 30.002640, 28.755707>,  <44.410419, 30.097324, 28.540030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087128, 30.002640, 28.755707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479448, 0.267101, 0.835935,
		-0.341893, 0.934144, -0.102390,
		-0.808232, -0.236709, 0.539193,
		43.844658, 29.931627, 28.917465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321468, 30.681749, 28.924599>,  <44.410419, 30.097324, 28.540030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321468, 30.681749, 28.924599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076218, 30.430647, 29.116428>,  <43.929066, 30.279985, 29.231527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076218, 30.430647, 29.116428>,  <44.321468, 30.681749, 28.924599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076218, 30.430647, 29.116428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087592, 0.549306, 0.831018,
		-0.785111, 0.551529, -0.281809,
		-0.613130, -0.627757, 0.479576,
		43.892281, 30.242319, 29.260302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807056, 31.052401, 29.417683>,  <44.321468, 30.681749, 28.924599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807056, 31.052401, 29.417683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858589, 30.683834, 29.564322>,  <43.889507, 30.462694, 29.652304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858589, 30.683834, 29.564322>,  <43.807056, 31.052401, 29.417683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858589, 30.683834, 29.564322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227401, 0.387276, 0.893480,
		-0.965242, -0.031744, 0.259424,
		0.128831, -0.921417, 0.366596,
		43.897240, 30.407410, 29.674301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548229, 31.109739, 30.032763>,  <43.807056, 31.052401, 29.417683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548229, 31.109739, 30.032763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747513, 30.766613, 30.083265>,  <43.867085, 30.560738, 30.113567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.747513, 30.766613, 30.083265>,  <43.548229, 31.109739, 30.032763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747513, 30.766613, 30.083265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214665, 0.263116, 0.940579,
		-0.840063, -0.441502, 0.315230,
		0.498209, -0.857815, 0.126259,
		43.896976, 30.509268, 30.121143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259548, 30.750143, 30.711285>,  <43.548229, 31.109739, 30.032763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259548, 30.750143, 30.711285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625404, 30.606506, 30.637011>,  <43.844917, 30.520325, 30.592445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625404, 30.606506, 30.637011>,  <43.259548, 30.750143, 30.711285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625404, 30.606506, 30.637011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324355, 0.377710, 0.867254,
		-0.241286, -0.853458, 0.461943,
		0.914644, -0.359090, -0.185687,
		43.899799, 30.498779, 30.581305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475956, 30.381075, 31.336107>,  <43.259548, 30.750143, 30.711285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475956, 30.381075, 31.336107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805920, 30.458761, 31.123766>,  <44.003899, 30.505373, 30.996361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805920, 30.458761, 31.123766>,  <43.475956, 30.381075, 31.336107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805920, 30.458761, 31.123766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433418, 0.385551, 0.814555,
		0.362866, -0.902016, 0.233871,
		0.824910, 0.194210, -0.530853,
		44.053391, 30.517027, 30.964510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016197, 30.052208, 31.686523>,  <43.475956, 30.381075, 31.336107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016197, 30.052208, 31.686523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169044, 30.355345, 31.474993>,  <44.260754, 30.537228, 31.348074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169044, 30.355345, 31.474993>,  <44.016197, 30.052208, 31.686523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169044, 30.355345, 31.474993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506049, 0.307225, 0.805933,
		0.773239, -0.575577, -0.266108,
		0.382121, 0.757842, -0.528828,
		44.283680, 30.582697, 31.316345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724194, 30.070257, 31.926903>,  <44.016197, 30.052208, 31.686523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724194, 30.070257, 31.926903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653118, 30.415783, 31.738327>,  <44.610474, 30.623098, 31.625181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653118, 30.415783, 31.738327>,  <44.724194, 30.070257, 31.926903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653118, 30.415783, 31.738327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476074, 0.494728, 0.727048,
		0.861266, -0.095250, -0.499147,
		-0.177691, 0.863812, -0.471439,
		44.599812, 30.674927, 31.596895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451591, 30.424147, 31.812500>,  <44.724194, 30.070257, 31.926903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451591, 30.424147, 31.812500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176167, 30.712978, 31.785713>,  <45.010914, 30.886278, 31.769642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176167, 30.712978, 31.785713>,  <45.451591, 30.424147, 31.812500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176167, 30.712978, 31.785713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500580, 0.540087, 0.676555,
		0.524695, 0.432326, -0.733341,
		-0.688560, 0.722081, -0.066967,
		44.969597, 30.929602, 31.765623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835770, 31.105789, 31.622068>,  <45.451591, 30.424147, 31.812500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835770, 31.105789, 31.622068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501289, 31.200994, 31.819700>,  <45.300602, 31.258118, 31.938280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501289, 31.200994, 31.819700>,  <45.835770, 31.105789, 31.622068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501289, 31.200994, 31.819700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533809, 0.559811, 0.633766,
		-0.125746, 0.793701, -0.595169,
		-0.836203, 0.238013, 0.494079,
		45.250427, 31.272398, 31.967924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998611, 31.753036, 31.831324>,  <45.835770, 31.105789, 31.622068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998611, 31.753036, 31.831324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651611, 31.723492, 32.028091>,  <45.443409, 31.705765, 32.146152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651611, 31.723492, 32.028091>,  <45.998611, 31.753036, 31.831324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651611, 31.723492, 32.028091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308447, 0.695969, 0.648450,
		-0.390255, 0.714263, -0.580973,
		-0.867503, -0.073861, 0.491918,
		45.391361, 31.701334, 32.175667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633778, 32.327545, 31.736877>,  <45.998611, 31.753036, 31.831324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633778, 32.327545, 31.736877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492050, 32.205227, 32.090363>,  <45.407013, 32.131836, 32.302452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492050, 32.205227, 32.090363>,  <45.633778, 32.327545, 31.736877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492050, 32.205227, 32.090363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432683, 0.784165, 0.444827,
		-0.829001, 0.539979, -0.145536,
		-0.354321, -0.305791, 0.883713,
		45.385754, 32.113491, 32.355476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375103, 32.939304, 32.181778>,  <45.633778, 32.327545, 31.736877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375103, 32.939304, 32.181778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417461, 32.652977, 32.457863>,  <45.442879, 32.481182, 32.623512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417461, 32.652977, 32.457863>,  <45.375103, 32.939304, 32.181778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417461, 32.652977, 32.457863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332867, 0.679588, 0.653728,
		-0.937008, 0.160518, 0.310240,
		0.105900, -0.715817, 0.690211,
		45.449230, 32.438232, 32.664925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010849, 33.144619, 32.749336>,  <45.375103, 32.939304, 32.181778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010849, 33.144619, 32.749336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291096, 32.895981, 32.889481>,  <45.459244, 32.746799, 32.973568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291096, 32.895981, 32.889481>,  <45.010849, 33.144619, 32.749336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291096, 32.895981, 32.889481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348032, 0.726353, 0.592694,
		-0.622900, -0.293316, 0.725232,
		0.700621, -0.621593, 0.350362,
		45.501282, 32.709503, 32.994591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031590, 33.226109, 33.477924>,  <45.010849, 33.144619, 32.749336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031590, 33.226109, 33.477924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385899, 33.065262, 33.385235>,  <45.598484, 32.968754, 33.329620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385899, 33.065262, 33.385235>,  <45.031590, 33.226109, 33.477924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385899, 33.065262, 33.385235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458289, 0.679006, 0.573517,
		-0.073280, -0.614206, 0.785736,
		0.885777, -0.402121, -0.231727,
		45.651630, 32.944626, 33.315716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384472, 33.188812, 34.142677>,  <45.031590, 33.226109, 33.477924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384472, 33.188812, 34.142677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663734, 33.156456, 33.858131>,  <45.831291, 33.137043, 33.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663734, 33.156456, 33.858131>,  <45.384472, 33.188812, 34.142677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663734, 33.156456, 33.858131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572451, 0.659792, 0.486800,
		0.429973, -0.747082, 0.506944,
		0.698157, -0.080890, -0.711360,
		45.873180, 33.132191, 33.644722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947472, 32.961113, 34.536823>,  <45.384472, 33.188812, 34.142677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947472, 32.961113, 34.536823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096355, 33.129520, 34.205956>,  <46.185688, 33.230564, 34.007435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096355, 33.129520, 34.205956>,  <45.947472, 32.961113, 34.536823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096355, 33.129520, 34.205956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652973, 0.514570, 0.555737,
		0.659609, -0.746969, -0.083384,
		0.372211, 0.421017, -0.827166,
		46.208019, 33.255825, 33.957806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661381, 32.940208, 34.639156>,  <45.947472, 32.961113, 34.536823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661381, 32.940208, 34.639156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634666, 33.216568, 34.351212>,  <46.618637, 33.382385, 34.178444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634666, 33.216568, 34.351212>,  <46.661381, 32.940208, 34.639156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634666, 33.216568, 34.351212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578319, 0.614725, 0.536340,
		0.813073, -0.380491, -0.440612,
		-0.066782, 0.690898, -0.719861,
		46.614632, 33.423836, 34.135254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255779, 33.250996, 34.541977>,  <46.661381, 32.940208, 34.639156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255779, 33.250996, 34.541977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032139, 33.541977, 34.382874>,  <46.897953, 33.716568, 34.287411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032139, 33.541977, 34.382874>,  <47.255779, 33.250996, 34.541977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032139, 33.541977, 34.382874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590558, 0.686149, 0.424783,
		0.581935, 0.002596, -0.813231,
		-0.559100, 0.727457, -0.397761,
		46.864410, 33.760216, 34.263546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.754696, 33.714771, 34.119659>,  <47.255779, 33.250996, 34.541977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.754696, 33.714771, 34.119659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.422146, 33.888737, 34.258026>,  <47.222614, 33.993114, 34.341045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.422146, 33.888737, 34.258026>,  <47.754696, 33.714771, 34.119659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.422146, 33.888737, 34.258026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555565, 0.664527, 0.499752,
		-0.012526, 0.607664, -0.794095,
		-0.831379, 0.434912, 0.345920,
		47.172733, 34.019211, 34.361801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795101, 34.403568, 33.952179>,  <47.754696, 33.714771, 34.119659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795101, 34.403568, 33.952179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599243, 34.299694, 34.285118>,  <47.481728, 34.237370, 34.484882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599243, 34.299694, 34.285118>,  <47.795101, 34.403568, 33.952179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.599243, 34.299694, 34.285118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515028, 0.684143, 0.516425,
		-0.703557, 0.681550, -0.201241,
		-0.489647, -0.259690, 0.832351,
		47.452351, 34.221786, 34.534824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305523, 34.929829, 34.307079>,  <47.795101, 34.403568, 33.952179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305523, 34.929829, 34.307079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535492, 34.669285, 34.505150>,  <47.673473, 34.512959, 34.623993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535492, 34.669285, 34.505150>,  <47.305523, 34.929829, 34.307079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535492, 34.669285, 34.505150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481635, 0.758649, 0.438726,
		-0.661431, -0.013740, 0.749880,
		0.574924, -0.651355, 0.495176,
		47.707970, 34.473877, 34.653702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272400, 35.078632, 35.063057>,  <47.305523, 34.929829, 34.307079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272400, 35.078632, 35.063057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600178, 34.931553, 34.887188>,  <47.796844, 34.843304, 34.781666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.600178, 34.931553, 34.887188>,  <47.272400, 35.078632, 35.063057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600178, 34.931553, 34.887188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500162, 0.833369, 0.235229,
		0.279919, -0.412666, 0.866805,
		0.819440, -0.367698, -0.439676,
		47.846008, 34.821243, 34.755283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.639988, 37.161816, 44.551208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397713, 36.857040, 44.642941>,  <37.252346, 36.674175, 44.697979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397713, 36.857040, 44.642941>,  <37.639988, 37.161816, 44.551208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397713, 36.857040, 44.642941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146073, -0.176838, -0.973340,
		0.782178, -0.623041, -0.004189,
		-0.605690, -0.761938, 0.229328,
		37.216007, 36.628460, 44.711739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850086, 36.615906, 44.102192>,  <37.639988, 37.161816, 44.551208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850086, 36.615906, 44.102192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475979, 36.528732, 44.213745>,  <37.251514, 36.476429, 44.280678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475979, 36.528732, 44.213745>,  <37.850086, 36.615906, 44.102192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475979, 36.528732, 44.213745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175771, -0.397921, -0.900424,
		0.307204, -0.891159, 0.333858,
		-0.935270, -0.217932, 0.278883,
		37.195396, 36.463352, 44.297409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689251, 35.963516, 43.824394>,  <37.850086, 36.615906, 44.102192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689251, 35.963516, 43.824394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322727, 36.094143, 43.917110>,  <37.102814, 36.172520, 43.972740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322727, 36.094143, 43.917110>,  <37.689251, 35.963516, 43.824394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322727, 36.094143, 43.917110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356357, -0.400864, -0.843989,
		-0.182698, -0.855959, 0.483690,
		-0.916314, 0.326562, 0.231790,
		37.047832, 36.192112, 43.986649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287128, 35.338531, 43.728912>,  <37.689251, 35.963516, 43.824394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287128, 35.338531, 43.728912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076344, 35.677681, 43.705524>,  <36.949875, 35.881172, 43.691494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076344, 35.677681, 43.705524>,  <37.287128, 35.338531, 43.728912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076344, 35.677681, 43.705524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321647, -0.262635, -0.909707,
		-0.786676, -0.460571, 0.411115,
		-0.526958, 0.847878, -0.058467,
		36.918255, 35.932045, 43.687984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657303, 35.045700, 43.488808>,  <37.287128, 35.338531, 43.728912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657303, 35.045700, 43.488808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690514, 35.438557, 43.421265>,  <36.710442, 35.674271, 43.380737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690514, 35.438557, 43.421265>,  <36.657303, 35.045700, 43.488808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690514, 35.438557, 43.421265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268532, -0.141126, -0.952877,
		-0.959686, 0.124458, 0.252018,
		0.083027, 0.982137, -0.168857,
		36.715420, 35.733196, 43.370609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986450, 35.211525, 43.266293>,  <36.657303, 35.045700, 43.488808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986450, 35.211525, 43.266293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234524, 35.494625, 43.130966>,  <36.383366, 35.664486, 43.049770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.234524, 35.494625, 43.130966>,  <35.986450, 35.211525, 43.266293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234524, 35.494625, 43.130966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586920, 0.132490, -0.798731,
		-0.520481, 0.693925, 0.497563,
		0.620181, 0.707754, -0.338320,
		36.420578, 35.706951, 43.029469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519646, 35.656685, 42.919922>,  <35.986450, 35.211525, 43.266293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519646, 35.656685, 42.919922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894444, 35.731663, 42.802006>,  <36.119324, 35.776649, 42.731258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.894444, 35.731663, 42.802006>,  <35.519646, 35.656685, 42.919922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894444, 35.731663, 42.802006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333733, 0.230954, -0.913938,
		-0.103232, 0.954738, 0.278960,
		0.936998, 0.187446, -0.294786,
		36.175545, 35.787895, 42.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527096, 36.363434, 42.607536>,  <35.519646, 35.656685, 42.919922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527096, 36.363434, 42.607536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843506, 36.166676, 42.462036>,  <36.033352, 36.048618, 42.374737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843506, 36.166676, 42.462036>,  <35.527096, 36.363434, 42.607536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843506, 36.166676, 42.462036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200434, 0.353386, -0.913753,
		0.578019, 0.795709, 0.180944,
		0.791024, -0.491900, -0.363751,
		36.080814, 36.019104, 42.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873772, 36.782631, 42.045429>,  <35.527096, 36.363434, 42.607536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873772, 36.782631, 42.045429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034767, 36.424210, 41.970505>,  <36.131363, 36.209156, 41.925549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034767, 36.424210, 41.970505>,  <35.873772, 36.782631, 42.045429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034767, 36.424210, 41.970505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077054, 0.237055, -0.968436,
		0.912176, 0.375351, 0.164457,
		0.402488, -0.896056, -0.187314,
		36.155514, 36.155392, 41.914310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283894, 36.935814, 41.619026>,  <35.873772, 36.782631, 42.045429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283894, 36.935814, 41.619026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280956, 36.538448, 41.573277>,  <36.279194, 36.300030, 41.545826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280956, 36.538448, 41.573277>,  <36.283894, 36.935814, 41.619026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280956, 36.538448, 41.573277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018594, 0.114490, -0.993250,
		0.999800, -0.005167, -0.019313,
		-0.007343, -0.993411, -0.114371,
		36.278755, 36.240425, 41.538963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739132, 36.857567, 41.048161>,  <36.283894, 36.935814, 41.619026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739132, 36.857567, 41.048161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.502666, 36.535522, 41.067421>,  <36.360786, 36.342297, 41.078976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.502666, 36.535522, 41.067421>,  <36.739132, 36.857567, 41.048161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502666, 36.535522, 41.067421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223446, 0.106124, -0.968922,
		0.774980, -0.583552, -0.242637,
		-0.591166, -0.805112, 0.048148,
		36.325317, 36.293987, 41.081867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991776, 36.318748, 40.567257>,  <36.739132, 36.857567, 41.048161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991776, 36.318748, 40.567257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605339, 36.250259, 40.644562>,  <36.373478, 36.209164, 40.690945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605339, 36.250259, 40.644562>,  <36.991776, 36.318748, 40.567257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605339, 36.250259, 40.644562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220597, 0.158380, -0.962420,
		0.134174, -0.972420, -0.190780,
		-0.966092, -0.171218, 0.193263,
		36.315514, 36.198891, 40.702541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706909, 35.845654, 40.031292>,  <36.991776, 36.318748, 40.567257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706909, 35.845654, 40.031292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.400970, 36.052887, 40.184444>,  <36.217407, 36.177227, 40.276337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.400970, 36.052887, 40.184444>,  <36.706909, 35.845654, 40.031292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400970, 36.052887, 40.184444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393822, 0.094328, -0.914334,
		-0.509816, -0.850114, 0.131886,
		-0.764847, 0.518082, 0.382883,
		36.171516, 36.208313, 40.299309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175251, 35.564178, 39.675037>,  <36.706909, 35.845654, 40.031292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175251, 35.564178, 39.675037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058704, 35.930378, 39.786015>,  <35.988777, 36.150097, 39.852600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058704, 35.930378, 39.786015>,  <36.175251, 35.564178, 39.675037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058704, 35.930378, 39.786015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195667, 0.226857, -0.954071,
		-0.936386, -0.332271, 0.113033,
		-0.291368, 0.915495, 0.277441,
		35.971294, 36.205025, 39.869247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552486, 35.538788, 39.435215>,  <36.175251, 35.564178, 39.675037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552486, 35.538788, 39.435215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.682652, 35.915493, 39.469143>,  <35.760750, 36.141514, 39.489498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.682652, 35.915493, 39.469143>,  <35.552486, 35.538788, 39.435215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682652, 35.915493, 39.469143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260318, 0.175463, -0.949446,
		-0.909033, 0.286882, 0.302255,
		0.325414, 0.941760, 0.084821,
		35.780277, 36.198021, 39.494591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039650, 35.881615, 39.072079>,  <35.552486, 35.538788, 39.435215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039650, 35.881615, 39.072079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.325882, 36.157745, 39.114788>,  <35.497620, 36.323421, 39.140411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.325882, 36.157745, 39.114788>,  <35.039650, 35.881615, 39.072079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325882, 36.157745, 39.114788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262987, 0.407842, -0.874359,
		-0.647137, 0.597593, 0.473389,
		0.715578, 0.690325, 0.106770,
		35.540554, 36.364841, 39.146820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744804, 36.417027, 38.815971>,  <35.039650, 35.881615, 39.072079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744804, 36.417027, 38.815971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136856, 36.495682, 38.805599>,  <35.372089, 36.542873, 38.799374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136856, 36.495682, 38.805599>,  <34.744804, 36.417027, 38.815971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136856, 36.495682, 38.805599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129277, 0.534205, -0.835412,
		-0.150417, 0.822168, 0.549013,
		0.980134, 0.196635, -0.025934,
		35.430897, 36.554672, 38.797817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755032, 37.123871, 38.782921>,  <34.744804, 36.417027, 38.815971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755032, 37.123871, 38.782921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113525, 36.998440, 38.657425>,  <35.328621, 36.923180, 38.582127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113525, 36.998440, 38.657425>,  <34.755032, 37.123871, 38.782921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113525, 36.998440, 38.657425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090100, 0.563860, -0.820941,
		0.434338, 0.764022, 0.477097,
		0.896233, -0.313579, -0.313744,
		35.382397, 36.904366, 38.563301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153656, 37.678207, 38.521870>,  <34.755032, 37.123871, 38.782921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153656, 37.678207, 38.521870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370209, 37.377716, 38.370842>,  <35.500141, 37.197422, 38.280224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370209, 37.377716, 38.370842>,  <35.153656, 37.678207, 38.521870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370209, 37.377716, 38.370842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094639, 0.391772, -0.915182,
		0.835431, 0.531199, 0.141004,
		0.541386, -0.751227, -0.377571,
		35.532623, 37.152348, 38.257572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605137, 38.021511, 38.083725>,  <35.153656, 37.678207, 38.521870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605137, 38.021511, 38.083725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632950, 37.639874, 37.967197>,  <35.649639, 37.410892, 37.897282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632950, 37.639874, 37.967197>,  <35.605137, 38.021511, 38.083725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632950, 37.639874, 37.967197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154714, 0.278181, -0.947987,
		0.985509, 0.110989, -0.128268,
		0.069534, -0.954095, -0.291321,
		35.653809, 37.353645, 37.879803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206749, 38.017368, 37.659508>,  <35.605137, 38.021511, 38.083725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206749, 38.017368, 37.659508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921837, 37.748531, 37.578564>,  <35.750889, 37.587231, 37.529999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.921837, 37.748531, 37.578564>,  <36.206749, 38.017368, 37.659508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921837, 37.748531, 37.578564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067384, 0.352449, -0.933402,
		0.698653, -0.651208, -0.296331,
		-0.712281, -0.672092, -0.202358,
		35.708153, 37.546906, 37.517857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345222, 37.656723, 37.006680>,  <36.206749, 38.017368, 37.659508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345222, 37.656723, 37.006680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951603, 37.626503, 37.071095>,  <35.715431, 37.608372, 37.109745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951603, 37.626503, 37.071095>,  <36.345222, 37.656723, 37.006680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951603, 37.626503, 37.071095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177866, 0.407522, -0.895706,
		0.002044, -0.910065, -0.414460,
		-0.984052, -0.075549, 0.161037,
		35.656387, 37.603840, 37.119404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910553, 37.367676, 37.280724>,  <36.345222, 37.656723, 37.006680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910553, 37.367676, 37.280724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273285, 37.508919, 37.188656>,  <37.490925, 37.593666, 37.133415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273285, 37.508919, 37.188656>,  <36.910553, 37.367676, 37.280724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273285, 37.508919, 37.188656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245662, 0.000966, 0.969355,
		0.342511, -0.935582, -0.085869,
		0.906828, 0.353109, -0.230167,
		37.545334, 37.614853, 37.119606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510578, 37.043488, 37.789524>,  <36.910553, 37.367676, 37.280724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510578, 37.043488, 37.789524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690361, 37.362053, 37.627682>,  <37.798229, 37.553192, 37.530575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690361, 37.362053, 37.627682>,  <37.510578, 37.043488, 37.789524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690361, 37.362053, 37.627682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517229, 0.137270, 0.844767,
		0.728328, -0.588961, -0.350233,
		0.449458, 0.796418, -0.404605,
		37.825199, 37.600979, 37.506302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220402, 36.850529, 38.104977>,  <37.510578, 37.043488, 37.789524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220402, 36.850529, 38.104977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182201, 37.227077, 37.975552>,  <38.159283, 37.453007, 37.897896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.182201, 37.227077, 37.975552>,  <38.220402, 36.850529, 38.104977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182201, 37.227077, 37.975552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563063, 0.319134, 0.762308,
		0.820878, -0.109388, -0.560530,
		-0.095497, 0.941376, -0.323562,
		38.153553, 37.509491, 37.878483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879486, 37.180153, 38.195141>,  <38.220402, 36.850529, 38.104977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879486, 37.180153, 38.195141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604397, 37.470497, 38.190166>,  <38.439342, 37.644703, 38.187183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604397, 37.470497, 38.190166>,  <38.879486, 37.180153, 38.195141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604397, 37.470497, 38.190166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303020, 0.302581, 0.903673,
		0.659704, 0.617713, -0.428044,
		-0.687728, 0.725862, -0.012434,
		38.398079, 37.688255, 38.186436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230137, 37.714947, 38.450836>,  <38.879486, 37.180153, 38.195141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230137, 37.714947, 38.450836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843857, 37.812569, 38.486298>,  <38.612087, 37.871140, 38.507576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843857, 37.812569, 38.486298>,  <39.230137, 37.714947, 38.450836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843857, 37.812569, 38.486298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192141, 0.442009, 0.876190,
		0.174651, 0.863172, -0.473741,
		-0.965701, 0.244052, 0.088653,
		38.554146, 37.885784, 38.512894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110523, 38.443058, 38.849075>,  <39.230137, 37.714947, 38.450836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110523, 38.443058, 38.849075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754337, 38.268654, 38.901169>,  <38.540627, 38.164013, 38.932423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754337, 38.268654, 38.901169>,  <39.110523, 38.443058, 38.849075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754337, 38.268654, 38.901169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072115, 0.417795, 0.905675,
		-0.449294, 0.797083, -0.403476,
		-0.890469, -0.436011, 0.130231,
		38.487198, 38.137852, 38.940239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668148, 38.958317, 39.124550>,  <39.110523, 38.443058, 38.849075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668148, 38.958317, 39.124550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.503796, 38.601135, 39.198105>,  <38.405182, 38.386826, 39.242237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.503796, 38.601135, 39.198105>,  <38.668148, 38.958317, 39.124550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503796, 38.601135, 39.198105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061604, 0.228437, 0.971608,
		-0.909604, 0.387890, -0.148870,
		-0.410884, -0.892949, 0.183891,
		38.380531, 38.333252, 39.253273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165283, 39.139641, 39.672211>,  <38.668148, 38.958317, 39.124550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165283, 39.139641, 39.672211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220806, 38.744362, 39.698135>,  <38.254120, 38.507195, 39.713692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.220806, 38.744362, 39.698135>,  <38.165283, 39.139641, 39.672211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220806, 38.744362, 39.698135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085626, 0.077176, 0.993334,
		-0.986611, -0.132334, 0.095328,
		0.138809, -0.988196, 0.064812,
		38.262447, 38.447903, 39.717579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706799, 38.944633, 40.129093>,  <38.165283, 39.139641, 39.672211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706799, 38.944633, 40.129093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972843, 38.646805, 40.151863>,  <38.132469, 38.468109, 40.165524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.972843, 38.646805, 40.151863>,  <37.706799, 38.944633, 40.129093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972843, 38.646805, 40.151863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076134, 0.143450, 0.986725,
		-0.742852, -0.651949, 0.152098,
		0.665112, -0.744570, 0.056926,
		38.172379, 38.423435, 40.168941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419830, 38.443054, 40.664974>,  <37.706799, 38.944633, 40.129093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419830, 38.443054, 40.664974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812077, 38.372635, 40.630566>,  <38.047424, 38.330383, 40.609921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.812077, 38.372635, 40.630566>,  <37.419830, 38.443054, 40.664974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812077, 38.372635, 40.630566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064816, -0.122864, 0.990305,
		-0.184908, -0.976684, -0.109072,
		0.980616, -0.176046, -0.086023,
		38.106262, 38.319820, 40.604759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593536, 38.008503, 41.171745>,  <37.419830, 38.443054, 40.664974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593536, 38.008503, 41.171745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970993, 38.115662, 41.094002>,  <38.197468, 38.179955, 41.047356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970993, 38.115662, 41.094002>,  <37.593536, 38.008503, 41.171745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970993, 38.115662, 41.094002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234311, -0.125982, 0.963964,
		0.233754, -0.955176, -0.181652,
		0.943641, 0.267893, -0.194359,
		38.254086, 38.196030, 41.035694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058838, 37.538406, 41.438896>,  <37.593536, 38.008503, 41.171745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058838, 37.538406, 41.438896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271358, 37.876987, 41.424828>,  <38.398872, 38.080135, 41.416386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271358, 37.876987, 41.424828>,  <38.058838, 37.538406, 41.438896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271358, 37.876987, 41.424828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291411, -0.143620, 0.945755,
		0.795486, -0.512729, -0.322971,
		0.531301, 0.846453, -0.035167,
		38.430748, 38.130924, 41.414276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722248, 37.331264, 41.745247>,  <38.058838, 37.538406, 41.438896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722248, 37.331264, 41.745247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714722, 37.730606, 41.766918>,  <38.710205, 37.970211, 41.779922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714722, 37.730606, 41.766918>,  <38.722248, 37.331264, 41.745247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714722, 37.730606, 41.766918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485408, -0.038253, 0.873451,
		0.874085, 0.042730, -0.483890,
		-0.018812, 0.998354, 0.054178,
		38.709080, 38.030113, 41.783173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396976, 37.548767, 41.781971>,  <38.722248, 37.331264, 41.745247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396976, 37.548767, 41.781971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177029, 37.854660, 41.916336>,  <39.045059, 38.038197, 41.996956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177029, 37.854660, 41.916336>,  <39.396976, 37.548767, 41.781971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177029, 37.854660, 41.916336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462007, -0.056568, 0.885070,
		0.695841, 0.641863, -0.322206,
		-0.549868, 0.764730, 0.335908,
		39.012070, 38.084080, 42.017109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871880, 37.890118, 42.073200>,  <39.396976, 37.548767, 41.781971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871880, 37.890118, 42.073200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.545467, 38.053516, 42.236774>,  <39.349621, 38.151554, 42.334919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.545467, 38.053516, 42.236774>,  <39.871880, 37.890118, 42.073200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545467, 38.053516, 42.236774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478980, 0.081905, 0.873996,
		0.323530, 0.909078, -0.262498,
		-0.816031, 0.408496, 0.408932,
		39.300659, 38.176064, 42.359455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081219, 38.563702, 42.411999>,  <39.871880, 37.890118, 42.073200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081219, 38.563702, 42.411999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757477, 38.385292, 42.564846>,  <39.563232, 38.278248, 42.656555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757477, 38.385292, 42.564846>,  <40.081219, 38.563702, 42.411999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757477, 38.385292, 42.564846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390229, 0.077861, 0.917420,
		-0.438944, 0.891627, 0.111035,
		-0.809351, -0.446025, 0.382115,
		39.514671, 38.251484, 42.679482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053085, 38.683052, 43.134064>,  <40.081219, 38.563702, 42.411999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053085, 38.683052, 43.134064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790836, 38.381229, 43.145447>,  <39.633488, 38.200138, 43.152275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790836, 38.381229, 43.145447>,  <40.053085, 38.683052, 43.134064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790836, 38.381229, 43.145447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224418, -0.158732, 0.961478,
		-0.720971, 0.636751, 0.273403,
		-0.655620, -0.754554, 0.028458,
		39.594151, 38.154861, 43.153984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571136, 38.816257, 43.720116>,  <40.053085, 38.683052, 43.134064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571136, 38.816257, 43.720116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.541271, 38.425949, 43.637852>,  <39.523354, 38.191765, 43.588493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.541271, 38.425949, 43.637852>,  <39.571136, 38.816257, 43.720116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541271, 38.425949, 43.637852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272292, -0.218351, 0.937112,
		-0.959313, 0.013969, 0.281998,
		-0.074665, -0.975770, -0.205664,
		39.518871, 38.133217, 43.576153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.078121, 38.522724, 44.207195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.273750, 38.198429, 44.078506>,  <39.391129, 38.003853, 44.001293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.273750, 38.198429, 44.078506>,  <39.078121, 38.522724, 44.207195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273750, 38.198429, 44.078506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082819, -0.324012, 0.942421,
		-0.868301, -0.487559, -0.091321,
		0.489075, -0.810742, -0.321719,
		39.420471, 37.955208, 43.981991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861595, 38.031204, 44.692184>,  <39.078121, 38.522724, 44.207195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861595, 38.031204, 44.692184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167336, 37.847313, 44.511333>,  <39.350780, 37.736977, 44.402821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167336, 37.847313, 44.511333>,  <38.861595, 38.031204, 44.692184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167336, 37.847313, 44.511333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228581, -0.462466, 0.856665,
		-0.602928, -0.758139, -0.248400,
		0.764348, -0.459728, -0.452130,
		39.396641, 37.709396, 44.375694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713905, 37.346733, 44.659649>,  <38.861595, 38.031204, 44.692184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713905, 37.346733, 44.659649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110786, 37.396591, 44.660637>,  <39.348915, 37.426506, 44.661228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110786, 37.396591, 44.660637>,  <38.713905, 37.346733, 44.659649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110786, 37.396591, 44.660637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058783, -0.485193, 0.872429,
		0.109942, -0.865477, -0.488735,
		0.992198, 0.124646, 0.002468,
		39.408447, 37.433987, 44.661377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944527, 36.775917, 44.790588>,  <38.713905, 37.346733, 44.659649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944527, 36.775917, 44.790588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268070, 37.001907, 44.855766>,  <39.462196, 37.137501, 44.894871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268070, 37.001907, 44.855766>,  <38.944527, 36.775917, 44.790588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268070, 37.001907, 44.855766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183664, -0.505997, 0.842754,
		0.558587, -0.651740, -0.513046,
		0.808856, 0.564979, 0.162942,
		39.510727, 37.171402, 44.904648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430931, 36.432178, 45.122269>,  <38.944527, 36.775917, 44.790588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430931, 36.432178, 45.122269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614506, 36.777283, 45.207134>,  <39.724651, 36.984344, 45.258053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.614506, 36.777283, 45.207134>,  <39.430931, 36.432178, 45.122269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614506, 36.777283, 45.207134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186714, -0.327121, 0.926353,
		0.868626, -0.385527, -0.311219,
		0.458940, 0.862764, 0.212163,
		39.752190, 37.036110, 45.270782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067299, 36.302601, 45.479702>,  <39.430931, 36.432178, 45.122269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067299, 36.302601, 45.479702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994934, 36.682964, 45.580139>,  <39.951515, 36.911182, 45.640400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994934, 36.682964, 45.580139>,  <40.067299, 36.302601, 45.479702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994934, 36.682964, 45.580139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145812, -0.226548, 0.963024,
		0.972630, 0.210837, -0.097667,
		-0.180914, 0.950907, 0.251090,
		39.940659, 36.968235, 45.655468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523430, 36.375343, 46.039505>,  <40.067299, 36.302601, 45.479702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523430, 36.375343, 46.039505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244068, 36.660141, 46.068600>,  <40.076450, 36.831020, 46.086056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.244068, 36.660141, 46.068600>,  <40.523430, 36.375343, 46.039505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244068, 36.660141, 46.068600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061423, -0.041623, 0.997244,
		0.713062, 0.700947, -0.014663,
		-0.698405, 0.711997, 0.072734,
		40.034546, 36.873741, 46.090420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721870, 36.839607, 46.629906>,  <40.523430, 36.375343, 46.039505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721870, 36.839607, 46.629906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.333897, 36.926933, 46.586910>,  <40.101112, 36.979328, 46.561111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.333897, 36.926933, 46.586910>,  <40.721870, 36.839607, 46.629906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333897, 36.926933, 46.586910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127494, -0.079656, 0.988635,
		0.207276, 0.972621, 0.105096,
		-0.969939, 0.218320, -0.107493,
		40.042915, 36.992428, 46.554661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636208, 37.333385, 47.070618>,  <40.721870, 36.839607, 46.629906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636208, 37.333385, 47.070618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.286575, 37.157364, 46.988312>,  <40.076797, 37.051750, 46.938931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.286575, 37.157364, 46.988312>,  <40.636208, 37.333385, 47.070618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286575, 37.157364, 46.988312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187371, -0.085387, 0.978571,
		-0.448192, 0.893903, -0.007817,
		-0.874080, -0.440052, -0.205761,
		40.024353, 37.025349, 46.926582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112186, 37.672802, 47.543575>,  <40.636208, 37.333385, 47.070618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112186, 37.672802, 47.543575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947342, 37.322044, 47.444599>,  <39.848434, 37.111591, 47.385212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947342, 37.322044, 47.444599>,  <40.112186, 37.672802, 47.543575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947342, 37.322044, 47.444599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319997, -0.114979, 0.940416,
		-0.853093, 0.466734, -0.233219,
		-0.412109, -0.876892, -0.247441,
		39.823708, 37.058975, 47.370365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477036, 37.654831, 47.962940>,  <40.112186, 37.672802, 47.543575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477036, 37.654831, 47.962940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557388, 37.282459, 47.840950>,  <39.605598, 37.059036, 47.767757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557388, 37.282459, 47.840950>,  <39.477036, 37.654831, 47.962940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557388, 37.282459, 47.840950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174165, -0.340298, 0.924047,
		-0.964009, -0.132510, -0.230496,
		0.200883, -0.930934, -0.304972,
		39.617653, 37.003178, 47.749458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035572, 37.285065, 48.277607>,  <39.477036, 37.654831, 47.962940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035572, 37.285065, 48.277607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315002, 37.016251, 48.179340>,  <39.482662, 36.854961, 48.120380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315002, 37.016251, 48.179340>,  <39.035572, 37.285065, 48.277607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315002, 37.016251, 48.179340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088273, -0.421652, 0.902451,
		-0.710066, -0.608748, -0.353880,
		0.698580, -0.672038, -0.245665,
		39.524578, 36.814640, 48.105640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839138, 36.524239, 48.558445>,  <39.035572, 37.285065, 48.277607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839138, 36.524239, 48.558445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230549, 36.498119, 48.480240>,  <39.465393, 36.482449, 48.433315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230549, 36.498119, 48.480240>,  <38.839138, 36.524239, 48.558445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230549, 36.498119, 48.480240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133410, -0.522418, 0.842188,
		-0.157131, -0.850186, -0.502488,
		0.978525, -0.065297, -0.195511,
		39.524105, 36.478531, 48.421585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015034, 35.762737, 48.523338>,  <38.839138, 36.524239, 48.558445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015034, 35.762737, 48.523338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344009, 35.969063, 48.619286>,  <39.541393, 36.092857, 48.676853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344009, 35.969063, 48.619286>,  <39.015034, 35.762737, 48.523338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344009, 35.969063, 48.619286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187086, -0.643462, 0.742264,
		0.537215, -0.565588, -0.625708,
		0.822435, 0.515817, 0.239864,
		39.590740, 36.123806, 48.691246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541100, 35.207314, 48.688740>,  <39.015034, 35.762737, 48.523338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541100, 35.207314, 48.688740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.683296, 35.547733, 48.843319>,  <39.768612, 35.751984, 48.936066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.683296, 35.547733, 48.843319>,  <39.541100, 35.207314, 48.688740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683296, 35.547733, 48.843319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306672, -0.496771, 0.811894,
		0.882938, -0.170107, -0.437589,
		0.355490, 0.851048, 0.386451,
		39.789944, 35.803047, 48.959255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965530, 34.966148, 49.116997>,  <39.541100, 35.207314, 48.688740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965530, 34.966148, 49.116997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975136, 35.336491, 49.267841>,  <39.980900, 35.558697, 49.358349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.975136, 35.336491, 49.267841>,  <39.965530, 34.966148, 49.116997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975136, 35.336491, 49.267841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306334, -0.365888, 0.878797,
		0.951621, 0.094416, -0.292409,
		0.024016, 0.925857, 0.377110,
		39.982342, 35.614246, 49.380974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716164, 35.229481, 49.492661>,  <39.965530, 34.966148, 49.116997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716164, 35.229481, 49.492661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.423504, 35.449047, 49.654343>,  <40.247910, 35.580788, 49.751350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.423504, 35.449047, 49.654343>,  <40.716164, 35.229481, 49.492661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423504, 35.449047, 49.654343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219045, -0.372188, 0.901940,
		0.645528, 0.748443, 0.152074,
		-0.731650, 0.548917, 0.404201,
		40.204010, 35.613724, 49.775604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952923, 35.634590, 50.132221>,  <40.716164, 35.229481, 49.492661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952923, 35.634590, 50.132221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.564838, 35.566917, 50.201584>,  <40.331989, 35.526314, 50.243202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.564838, 35.566917, 50.201584>,  <40.952923, 35.634590, 50.132221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564838, 35.566917, 50.201584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220779, -0.322736, 0.920379,
		-0.099749, 0.931245, 0.350474,
		-0.970210, -0.169184, 0.173407,
		40.273777, 35.516163, 50.253605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954697, 35.650452, 50.846848>,  <40.952923, 35.634590, 50.132221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954697, 35.650452, 50.846848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574310, 35.551693, 50.772331>,  <40.346077, 35.492439, 50.727619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.574310, 35.551693, 50.772331>,  <40.954697, 35.650452, 50.846848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574310, 35.551693, 50.772331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098728, -0.328501, 0.939330,
		-0.293117, 0.911663, 0.288017,
		-0.950966, -0.246898, -0.186295,
		40.289021, 35.477623, 50.716442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624313, 35.834457, 51.510841>,  <40.954697, 35.650452, 50.846848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624313, 35.834457, 51.510841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343075, 35.627846, 51.315350>,  <40.174332, 35.503880, 51.198055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343075, 35.627846, 51.315350>,  <40.624313, 35.834457, 51.510841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343075, 35.627846, 51.315350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434537, -0.231949, 0.870274,
		-0.562884, 0.824255, -0.061370,
		-0.703093, -0.516531, -0.488730,
		40.132149, 35.472885, 51.168732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017632, 36.048954, 51.809166>,  <40.624313, 35.834457, 51.510841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017632, 36.048954, 51.809166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954903, 35.684044, 51.657822>,  <39.917267, 35.465096, 51.567017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.954903, 35.684044, 51.657822>,  <40.017632, 36.048954, 51.809166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954903, 35.684044, 51.657822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446680, -0.276162, 0.851006,
		-0.880843, 0.302459, -0.364189,
		-0.156820, -0.912279, -0.378358,
		39.907856, 35.410358, 51.544315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211830, 35.891048, 51.734245>,  <40.017632, 36.048954, 51.809166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211830, 35.891048, 51.734245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.445049, 35.567585, 51.765564>,  <39.584980, 35.373508, 51.784355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.445049, 35.567585, 51.765564>,  <39.211830, 35.891048, 51.734245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445049, 35.567585, 51.765564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527113, -0.303195, 0.793867,
		-0.618226, -0.504134, -0.603031,
		0.583051, -0.808654, 0.078293,
		39.619965, 35.324989, 51.789051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841244, 35.315041, 51.703121>,  <39.211830, 35.891048, 51.734245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841244, 35.315041, 51.703121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167645, 35.187897, 51.896244>,  <39.363483, 35.111610, 52.012119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167645, 35.187897, 51.896244>,  <38.841244, 35.315041, 51.703121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167645, 35.187897, 51.896244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557199, -0.210201, 0.803334,
		-0.153859, -0.924544, -0.348635,
		0.816001, -0.317859, 0.482813,
		39.412445, 35.092537, 52.041088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682793, 34.713310, 52.027618>,  <38.841244, 35.315041, 51.703121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682793, 34.713310, 52.027618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991497, 34.874664, 52.224255>,  <39.176720, 34.971478, 52.342236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991497, 34.874664, 52.224255>,  <38.682793, 34.713310, 52.027618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991497, 34.874664, 52.224255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443007, -0.213545, 0.870714,
		0.456208, -0.889764, 0.013896,
		0.771763, 0.403383, 0.491593,
		39.223026, 34.995678, 52.371731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030376, 34.812721, 52.074780>,  <38.682793, 34.713310, 52.027618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030376, 34.812721, 52.074780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666893, 34.687187, 52.184872>,  <37.448803, 34.611866, 52.250927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.666893, 34.687187, 52.184872>,  <38.030376, 34.812721, 52.074780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666893, 34.687187, 52.184872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316507, 0.088150, -0.944486,
		0.272148, -0.945378, -0.179433,
		-0.908713, -0.313831, 0.275229,
		37.394279, 34.593037, 52.267441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833733, 34.262840, 51.641567>,  <38.030376, 34.812721, 52.074780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833733, 34.262840, 51.641567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490711, 34.433094, 51.757107>,  <37.284897, 34.535248, 51.826431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490711, 34.433094, 51.757107>,  <37.833733, 34.262840, 51.641567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490711, 34.433094, 51.757107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280628, 0.083496, -0.956178,
		-0.431104, -0.901033, 0.047843,
		-0.857553, 0.425638, 0.288851,
		37.233444, 34.560787, 51.843761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442875, 33.949963, 51.245674>,  <37.833733, 34.262840, 51.641567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442875, 33.949963, 51.245674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217312, 34.259418, 51.361256>,  <37.081974, 34.445091, 51.430607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217312, 34.259418, 51.361256>,  <37.442875, 33.949963, 51.245674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217312, 34.259418, 51.361256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419697, 0.032875, -0.907069,
		-0.711240, -0.632777, 0.306155,
		-0.563907, 0.773636, 0.288956,
		37.048141, 34.491508, 51.447941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788754, 33.754734, 50.913322>,  <37.442875, 33.949963, 51.245674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788754, 33.754734, 50.913322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804497, 34.139553, 51.021336>,  <36.813942, 34.370445, 51.086143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804497, 34.139553, 51.021336>,  <36.788754, 33.754734, 50.913322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804497, 34.139553, 51.021336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279810, 0.270043, -0.921294,
		-0.959248, -0.039294, 0.279820,
		0.039362, 0.962046, 0.270033,
		36.816307, 34.428165, 51.102345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196201, 33.940441, 50.600197>,  <36.788754, 33.754734, 50.913322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196201, 33.940441, 50.600197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406372, 34.276207, 50.655773>,  <36.532475, 34.477669, 50.689121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406372, 34.276207, 50.655773>,  <36.196201, 33.940441, 50.600197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406372, 34.276207, 50.655773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073227, 0.207310, -0.975531,
		-0.847682, 0.502396, 0.170394,
		0.525427, 0.839417, 0.138944,
		36.563999, 34.528030, 50.697456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851734, 34.394623, 50.169514>,  <36.196201, 33.940441, 50.600197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851734, 34.394623, 50.169514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207619, 34.567135, 50.229385>,  <36.421150, 34.670643, 50.265308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207619, 34.567135, 50.229385>,  <35.851734, 34.394623, 50.169514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207619, 34.567135, 50.229385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095788, 0.496948, -0.862477,
		-0.446352, 0.753022, 0.483454,
		0.889716, 0.431277, 0.149684,
		36.474533, 34.696518, 50.274292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866539, 34.995049, 49.770565>,  <35.851734, 34.394623, 50.169514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866539, 34.995049, 49.770565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255707, 34.952621, 49.852722>,  <36.489208, 34.927166, 49.902016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255707, 34.952621, 49.852722>,  <35.866539, 34.995049, 49.770565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255707, 34.952621, 49.852722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229347, 0.554049, -0.800269,
		-0.028914, 0.825699, 0.563369,
		0.972915, -0.106068, 0.205391,
		36.547581, 34.920799, 49.914341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131725, 35.492779, 49.458794>,  <35.866539, 34.995049, 49.770565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131725, 35.492779, 49.458794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479294, 35.303299, 49.516190>,  <36.687836, 35.189610, 49.550625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479294, 35.303299, 49.516190>,  <36.131725, 35.492779, 49.458794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479294, 35.303299, 49.516190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415173, 0.539724, -0.732345,
		0.269469, 0.695920, 0.665644,
		0.868918, -0.473702, 0.143488,
		36.739967, 35.161190, 49.559235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694843, 36.021572, 49.506588>,  <36.131725, 35.492779, 49.458794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694843, 36.021572, 49.506588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833370, 35.672939, 49.367786>,  <36.916485, 35.463760, 49.284504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833370, 35.672939, 49.367786>,  <36.694843, 36.021572, 49.506588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833370, 35.672939, 49.367786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525397, 0.486641, -0.697953,
		0.777189, 0.059398, 0.626458,
		0.346317, -0.871580, -0.347005,
		36.937263, 35.411465, 49.263683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274094, 36.222095, 49.283821>,  <36.694843, 36.021572, 49.506588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274094, 36.222095, 49.283821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227577, 35.876072, 49.088619>,  <37.199669, 35.668457, 48.971497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227577, 35.876072, 49.088619>,  <37.274094, 36.222095, 49.283821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227577, 35.876072, 49.088619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418215, 0.403013, -0.814050,
		0.900874, -0.298755, 0.314916,
		-0.116286, -0.865059, -0.488007,
		37.192692, 35.616554, 48.942219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812912, 36.134636, 48.826492>,  <37.274094, 36.222095, 49.283821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812912, 36.134636, 48.826492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556732, 35.865517, 48.678352>,  <37.403023, 35.704044, 48.589470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556732, 35.865517, 48.678352>,  <37.812912, 36.134636, 48.826492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556732, 35.865517, 48.678352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332059, 0.192236, -0.923462,
		0.692500, -0.714413, 0.100291,
		-0.640454, -0.672800, -0.370350,
		37.364597, 35.663677, 48.567245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231640, 35.680237, 48.424629>,  <37.812912, 36.134636, 48.826492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231640, 35.680237, 48.424629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858948, 35.620136, 48.292381>,  <37.635334, 35.584076, 48.213032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.858948, 35.620136, 48.292381>,  <38.231640, 35.680237, 48.424629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858948, 35.620136, 48.292381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320855, 0.085838, -0.943230,
		0.170102, -0.984914, -0.031768,
		-0.931728, -0.150253, -0.330616,
		37.579430, 35.575062, 48.193195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254829, 35.211624, 47.858265>,  <38.231640, 35.680237, 48.424629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254829, 35.211624, 47.858265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892319, 35.365356, 47.787888>,  <37.674812, 35.457596, 47.745663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892319, 35.365356, 47.787888>,  <38.254829, 35.211624, 47.858265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892319, 35.365356, 47.787888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229825, 0.098703, -0.968214,
		-0.354747, -0.917905, -0.177780,
		-0.906276, 0.384329, -0.175943,
		37.620438, 35.480656, 47.735104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014618, 34.955788, 47.212875>,  <38.254829, 35.211624, 47.858265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014618, 34.955788, 47.212875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767372, 35.265934, 47.264641>,  <37.619026, 35.452023, 47.295700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.767372, 35.265934, 47.264641>,  <38.014618, 34.955788, 47.212875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767372, 35.265934, 47.264641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106004, 0.245336, -0.963625,
		-0.778909, -0.581912, -0.233837,
		-0.618114, 0.775364, 0.129410,
		37.581940, 35.498543, 47.303463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691322, 34.981918, 46.637173>,  <38.014618, 34.955788, 47.212875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691322, 34.981918, 46.637173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643291, 35.346279, 46.795078>,  <37.614471, 35.564896, 46.889820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643291, 35.346279, 46.795078>,  <37.691322, 34.981918, 46.637173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643291, 35.346279, 46.795078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034833, 0.401261, -0.915301,
		-0.992153, -0.096160, -0.079913,
		-0.120082, 0.910902, 0.394762,
		37.607265, 35.619549, 46.913506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070183, 35.270985, 46.500843>,  <37.691322, 34.981918, 46.637173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070183, 35.270985, 46.500843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276661, 35.604649, 46.578529>,  <37.400547, 35.804848, 46.625141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276661, 35.604649, 46.578529>,  <37.070183, 35.270985, 46.500843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276661, 35.604649, 46.578529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258841, 0.368102, -0.893030,
		-0.816421, 0.410706, 0.405927,
		0.516195, 0.834159, 0.194218,
		37.431519, 35.854897, 46.636795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570988, 35.749821, 46.367336>,  <37.070183, 35.270985, 46.500843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570988, 35.749821, 46.367336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930977, 35.922630, 46.344028>,  <37.146973, 36.026318, 46.330044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930977, 35.922630, 46.344028>,  <36.570988, 35.749821, 46.367336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930977, 35.922630, 46.344028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277590, 0.464870, -0.840737,
		-0.336136, 0.772817, 0.538299,
		0.899976, 0.432029, -0.058267,
		37.200970, 36.052238, 46.326550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451817, 36.593296, 46.274239>,  <36.570988, 35.749821, 46.367336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451817, 36.593296, 46.274239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814743, 36.473808, 46.155895>,  <37.032501, 36.402115, 46.084888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814743, 36.473808, 46.155895>,  <36.451817, 36.593296, 46.274239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814743, 36.473808, 46.155895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194747, 0.325047, -0.925429,
		0.372616, 0.897279, 0.236746,
		0.907321, -0.298724, -0.295860,
		37.086941, 36.384190, 46.067139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652271, 37.151222, 45.792137>,  <36.451817, 36.593296, 46.274239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652271, 37.151222, 45.792137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889568, 36.841747, 45.703178>,  <37.031948, 36.656063, 45.649803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.889568, 36.841747, 45.703178>,  <36.652271, 37.151222, 45.792137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889568, 36.841747, 45.703178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035510, 0.250849, -0.967375,
		0.804238, 0.581788, 0.121342,
		0.593245, -0.773691, -0.222401,
		37.067543, 36.609638, 45.636459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133198, 37.421154, 45.406326>,  <36.652271, 37.151222, 45.792137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133198, 37.421154, 45.406326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113152, 37.033501, 45.309769>,  <37.101124, 36.800911, 45.251835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113152, 37.033501, 45.309769>,  <37.133198, 37.421154, 45.406326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113152, 37.033501, 45.309769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120818, 0.245807, -0.961760,
		0.991409, -0.019037, -0.129408,
		-0.050119, -0.969132, -0.241395,
		37.098114, 36.742760, 45.237350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.822891, 31.204163, 28.011930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464722, 31.240322, 28.186306>,  <41.249821, 31.262018, 28.290932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.464722, 31.240322, 28.186306>,  <41.822891, 31.204163, 28.011930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464722, 31.240322, 28.186306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394738, 0.614050, 0.683465,
		-0.205903, 0.784073, -0.585520,
		-0.895425, 0.090399, 0.435938,
		41.196095, 31.267443, 28.317087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698502, 32.029037, 28.108883>,  <41.822891, 31.204163, 28.011930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698502, 32.029037, 28.108883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493671, 31.805904, 28.370144>,  <41.370773, 31.672024, 28.526899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493671, 31.805904, 28.370144>,  <41.698502, 32.029037, 28.108883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493671, 31.805904, 28.370144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353903, 0.555845, 0.752189,
		-0.782646, 0.616327, -0.087214,
		-0.512072, -0.557833, 0.653150,
		41.340050, 31.638556, 28.566090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400986, 32.485867, 28.664434>,  <41.698502, 32.029037, 28.108883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400986, 32.485867, 28.664434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.394859, 32.131676, 28.850206>,  <41.391182, 31.919161, 28.961670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.394859, 32.131676, 28.850206>,  <41.400986, 32.485867, 28.664434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394859, 32.131676, 28.850206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464166, 0.405103, 0.787681,
		-0.885616, 0.227640, 0.404803,
		-0.015321, -0.885478, 0.464428,
		41.390263, 31.866032, 28.989534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229057, 32.513783, 29.341139>,  <41.400986, 32.485867, 28.664434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229057, 32.513783, 29.341139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.404781, 32.154449, 29.342554>,  <41.510216, 31.938850, 29.343403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.404781, 32.154449, 29.342554>,  <41.229057, 32.513783, 29.341139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404781, 32.154449, 29.342554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238201, 0.120281, 0.963739,
		-0.866181, -0.422535, 0.266823,
		0.439307, -0.898330, 0.003537,
		41.536575, 31.884951, 29.343615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051735, 32.255054, 30.105356>,  <41.229057, 32.513783, 29.341139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051735, 32.255054, 30.105356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341858, 32.024143, 29.955330>,  <41.515934, 31.885597, 29.865314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341858, 32.024143, 29.955330>,  <41.051735, 32.255054, 30.105356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341858, 32.024143, 29.955330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342882, -0.169504, 0.923959,
		-0.596957, -0.798760, 0.074996,
		0.725309, -0.577279, -0.375067,
		41.559452, 31.850960, 29.842810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983479, 31.642717, 30.439802>,  <41.051735, 32.255054, 30.105356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983479, 31.642717, 30.439802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355659, 31.697430, 30.303827>,  <41.578968, 31.730257, 30.222242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.355659, 31.697430, 30.303827>,  <40.983479, 31.642717, 30.439802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355659, 31.697430, 30.303827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333893, 0.065646, 0.940322,
		0.150934, -0.988424, 0.015409,
		0.930449, 0.136782, -0.339936,
		41.634792, 31.738464, 30.201847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365650, 31.267029, 30.792904>,  <40.983479, 31.642717, 30.439802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365650, 31.267029, 30.792904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640717, 31.518793, 30.648148>,  <41.805756, 31.669851, 30.561295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640717, 31.518793, 30.648148>,  <41.365650, 31.267029, 30.792904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640717, 31.518793, 30.648148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317686, 0.187344, 0.929504,
		0.652837, -0.754151, -0.071126,
		0.687662, 0.629411, -0.361889,
		41.847015, 31.707617, 30.539581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946308, 31.148968, 31.119846>,  <41.365650, 31.267029, 30.792904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946308, 31.148968, 31.119846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.023487, 31.510902, 30.968035>,  <42.069794, 31.728064, 30.876947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.023487, 31.510902, 30.968035>,  <41.946308, 31.148968, 31.119846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023487, 31.510902, 30.968035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532315, 0.228401, 0.815152,
		0.824265, -0.359307, -0.437590,
		0.192944, 0.904838, -0.379528,
		42.081371, 31.782354, 30.854176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619686, 31.206289, 31.190203>,  <41.946308, 31.148968, 31.119846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619686, 31.206289, 31.190203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496834, 31.583729, 31.140732>,  <42.423122, 31.810192, 31.111050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496834, 31.583729, 31.140732>,  <42.619686, 31.206289, 31.190203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496834, 31.583729, 31.140732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680467, 0.308594, 0.664631,
		0.665310, 0.119970, -0.736865,
		-0.307128, 0.943598, -0.123675,
		42.404694, 31.866808, 31.103630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211498, 31.608017, 31.264835>,  <42.619686, 31.206289, 31.190203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211498, 31.608017, 31.264835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923199, 31.883450, 31.296780>,  <42.750217, 32.048710, 31.315947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923199, 31.883450, 31.296780>,  <43.211498, 31.608017, 31.264835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923199, 31.883450, 31.296780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556130, 0.505611, 0.659604,
		0.413811, 0.519823, -0.747359,
		-0.720750, 0.688580, 0.079862,
		42.706974, 32.090023, 31.320738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518387, 32.320118, 31.147005>,  <43.211498, 31.608017, 31.264835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518387, 32.320118, 31.147005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168816, 32.430218, 31.307249>,  <42.959072, 32.496277, 31.403395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168816, 32.430218, 31.307249>,  <43.518387, 32.320118, 31.147005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168816, 32.430218, 31.307249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451708, 0.764244, 0.460316,
		-0.179464, 0.583242, -0.792225,
		-0.873929, 0.275245, 0.400610,
		42.906635, 32.512791, 31.427431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576897, 33.055454, 31.101156>,  <43.518387, 32.320118, 31.147005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576897, 33.055454, 31.101156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299740, 32.971416, 31.377056>,  <43.133446, 32.920994, 31.542597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.299740, 32.971416, 31.377056>,  <43.576897, 33.055454, 31.101156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299740, 32.971416, 31.377056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344934, 0.743465, 0.572957,
		-0.633179, 0.634919, -0.442677,
		-0.692896, -0.210090, 0.689752,
		43.091869, 32.908390, 31.583982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310173, 33.742268, 31.432486>,  <43.576897, 33.055454, 31.101156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310173, 33.742268, 31.432486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250309, 33.440456, 31.688076>,  <43.214390, 33.259369, 31.841431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250309, 33.440456, 31.688076>,  <43.310173, 33.742268, 31.432486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250309, 33.440456, 31.688076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192215, 0.611723, 0.767365,
		-0.969874, 0.237662, 0.053483,
		-0.149657, -0.754528, 0.638977,
		43.205414, 33.214100, 31.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844913, 34.022587, 32.001945>,  <43.310173, 33.742268, 31.432486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844913, 34.022587, 32.001945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044319, 33.704845, 32.140789>,  <43.163963, 33.514198, 32.224094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044319, 33.704845, 32.140789>,  <42.844913, 34.022587, 32.001945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044319, 33.704845, 32.140789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274975, 0.524631, 0.805699,
		-0.822116, -0.306204, 0.479963,
		0.498512, -0.794356, 0.347109,
		43.193874, 33.466537, 32.244923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679672, 34.037144, 32.741325>,  <42.844913, 34.022587, 32.001945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679672, 34.037144, 32.741325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.990208, 33.786304, 32.715851>,  <43.176529, 33.635803, 32.700565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.990208, 33.786304, 32.715851>,  <42.679672, 34.037144, 32.741325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990208, 33.786304, 32.715851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491028, 0.538328, 0.684905,
		-0.395215, -0.562988, 0.725844,
		0.776336, -0.627094, -0.063688,
		43.223110, 33.598175, 32.696743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896812, 33.921066, 33.520317>,  <42.679672, 34.037144, 32.741325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896812, 33.921066, 33.520317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209053, 33.756218, 33.332355>,  <43.396397, 33.657307, 33.219578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209053, 33.756218, 33.332355>,  <42.896812, 33.921066, 33.520317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209053, 33.756218, 33.332355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615836, 0.635589, 0.465589,
		0.106785, -0.652824, 0.749945,
		0.780604, -0.412125, -0.469905,
		43.443233, 33.632580, 33.191383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493099, 33.812222, 34.088436>,  <42.896812, 33.921066, 33.520317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493099, 33.812222, 34.088436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662315, 33.825199, 33.726223>,  <43.763847, 33.832985, 33.508896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662315, 33.825199, 33.726223>,  <43.493099, 33.812222, 34.088436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662315, 33.825199, 33.726223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736645, 0.569608, 0.364555,
		0.527626, -0.821276, 0.217066,
		0.423043, 0.032448, -0.905528,
		43.789227, 33.834934, 33.454563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188221, 33.672356, 34.148861>,  <43.493099, 33.812222, 34.088436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188221, 33.672356, 34.148861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148666, 33.881489, 33.810188>,  <44.124931, 34.006969, 33.606987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.148666, 33.881489, 33.810188>,  <44.188221, 33.672356, 34.148861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148666, 33.881489, 33.810188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677851, 0.658304, 0.327342,
		0.728518, -0.541551, -0.419506,
		-0.098890, 0.522837, -0.846677,
		44.118999, 34.038342, 33.556187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849209, 33.819889, 33.988945>,  <44.188221, 33.672356, 34.148861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849209, 33.819889, 33.988945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626747, 34.093639, 33.800343>,  <44.493271, 34.257889, 33.687183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626747, 34.093639, 33.800343>,  <44.849209, 33.819889, 33.988945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626747, 34.093639, 33.800343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512999, 0.729056, 0.453111,
		0.653851, 0.010120, -0.756555,
		-0.556156, 0.684379, -0.471503,
		44.459900, 34.298954, 33.658890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354359, 34.351723, 33.793430>,  <44.849209, 33.819889, 33.988945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354359, 34.351723, 33.793430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983780, 34.502251, 33.797012>,  <44.761433, 34.592567, 33.799164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.983780, 34.502251, 33.797012>,  <45.354359, 34.351723, 33.793430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983780, 34.502251, 33.797012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321983, 0.779914, 0.536713,
		0.194988, 0.500121, -0.843717,
		-0.926448, 0.376315, 0.008957,
		44.705845, 34.615147, 33.799698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473923, 35.110596, 33.770760>,  <45.354359, 34.351723, 33.793430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473923, 35.110596, 33.770760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102276, 35.046650, 33.904137>,  <44.879288, 35.008282, 33.984161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102276, 35.046650, 33.904137>,  <45.473923, 35.110596, 33.770760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102276, 35.046650, 33.904137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116327, 0.729581, 0.673928,
		-0.351010, 0.664947, -0.659270,
		-0.929118, -0.159864, 0.333442,
		44.823540, 34.998692, 34.004169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153103, 34.684582, 33.791870>,  <45.473923, 35.110596, 33.770760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153103, 34.684582, 33.791870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396393, 34.394650, 33.921295>,  <46.542366, 34.220692, 33.998951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.396393, 34.394650, 33.921295>,  <46.153103, 34.684582, 33.791870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396393, 34.394650, 33.921295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420478, -0.639944, -0.643172,
		0.673250, 0.255139, -0.694001,
		0.608221, -0.724828, 0.323562,
		46.578857, 34.177200, 34.018364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.347786, 34.302269, 33.173035>,  <46.153103, 34.684582, 33.791870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.347786, 34.302269, 33.173035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.428276, 34.038696, 33.462948>,  <46.476570, 33.880550, 33.636898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.428276, 34.038696, 33.462948>,  <46.347786, 34.302269, 33.173035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428276, 34.038696, 33.462948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394084, -0.731856, -0.555953,
		0.896776, -0.173754, -0.406944,
		0.201225, -0.658935, 0.724785,
		46.488644, 33.841015, 33.680382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526352, 33.725986, 32.761726>,  <46.347786, 34.302269, 33.173035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526352, 33.725986, 32.761726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.450615, 33.580086, 33.126385>,  <46.405170, 33.492546, 33.345181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.450615, 33.580086, 33.126385>,  <46.526352, 33.725986, 32.761726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450615, 33.580086, 33.126385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385086, -0.826479, -0.410660,
		0.903248, -0.428819, 0.016027,
		-0.189345, -0.364756, 0.911648,
		46.393810, 33.470657, 33.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874252, 33.042656, 32.878616>,  <46.526352, 33.725986, 32.761726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874252, 33.042656, 32.878616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.564171, 33.057728, 33.130852>,  <46.378120, 33.066769, 33.282192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.564171, 33.057728, 33.130852>,  <46.874252, 33.042656, 32.878616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564171, 33.057728, 33.130852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358369, -0.848274, -0.389876,
		0.520219, -0.528216, 0.671088,
		-0.775205, 0.037676, 0.630585,
		46.331608, 33.069031, 33.320026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742420, 32.323063, 33.074852>,  <46.874252, 33.042656, 32.878616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742420, 32.323063, 33.074852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398746, 32.509678, 33.158897>,  <46.192543, 32.621647, 33.209324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.398746, 32.509678, 33.158897>,  <46.742420, 32.323063, 33.074852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398746, 32.509678, 33.158897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506084, -0.714330, -0.483334,
		-0.075403, -0.521607, 0.849847,
		-0.859182, 0.466539, 0.210114,
		46.140991, 32.649639, 33.221931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418015, 31.877529, 33.432991>,  <46.742420, 32.323063, 33.074852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418015, 31.877529, 33.432991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.124325, 32.109852, 33.292381>,  <45.948109, 32.249245, 33.208015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.124325, 32.109852, 33.292381>,  <46.418015, 31.877529, 33.432991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124325, 32.109852, 33.292381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458305, -0.806036, -0.374517,
		-0.500865, -0.113875, 0.858001,
		-0.734228, 0.580809, -0.351526,
		45.904057, 32.284096, 33.186924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748539, 31.575382, 33.584076>,  <46.418015, 31.877529, 33.432991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748539, 31.575382, 33.584076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658279, 31.825979, 33.285656>,  <45.604122, 31.976337, 33.106606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658279, 31.825979, 33.285656>,  <45.748539, 31.575382, 33.584076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658279, 31.825979, 33.285656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659110, -0.662102, -0.356643,
		-0.717396, 0.411254, 0.562329,
		-0.225648, 0.626491, -0.746051,
		45.590584, 32.013927, 33.061840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061958, 31.478462, 33.438507>,  <45.748539, 31.575382, 33.584076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061958, 31.478462, 33.438507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200932, 31.647995, 33.103924>,  <45.284317, 31.749714, 32.903175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200932, 31.647995, 33.103924>,  <45.061958, 31.478462, 33.438507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200932, 31.647995, 33.103924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620245, -0.565135, -0.543984,
		-0.703266, 0.707807, 0.066529,
		0.347438, 0.423830, -0.836454,
		45.305164, 31.775145, 32.852989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397293, 31.463036, 32.942215>,  <45.061958, 31.478462, 33.438507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397293, 31.463036, 32.942215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704967, 31.525551, 32.694366>,  <44.889572, 31.563059, 32.545658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704967, 31.525551, 32.694366>,  <44.397293, 31.463036, 32.942215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704967, 31.525551, 32.694366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476411, -0.505983, -0.719037,
		-0.425891, 0.848266, -0.314739,
		0.769188, 0.156286, -0.619617,
		44.935722, 31.572437, 32.508480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048588, 31.564175, 32.427891>,  <44.397293, 31.463036, 32.942215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048588, 31.564175, 32.427891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418308, 31.496763, 32.290916>,  <44.640141, 31.456316, 32.208733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418308, 31.496763, 32.290916>,  <44.048588, 31.564175, 32.427891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418308, 31.496763, 32.290916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381410, -0.440117, -0.812910,
		-0.013710, 0.881983, -0.471081,
		0.924304, -0.168530, -0.342431,
		44.695599, 31.446205, 32.188187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083191, 31.860413, 31.797651>,  <44.048588, 31.564175, 32.427891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083191, 31.860413, 31.797651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356617, 31.568508, 31.792263>,  <44.520672, 31.393366, 31.789030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356617, 31.568508, 31.792263>,  <44.083191, 31.860413, 31.797651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356617, 31.568508, 31.792263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443817, -0.400933, -0.801423,
		0.579448, 0.553806, -0.597946,
		0.683569, -0.729761, -0.013469,
		44.561687, 31.349579, 31.788221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607529, 31.888910, 31.146748>,  <44.083191, 31.860413, 31.797651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607529, 31.888910, 31.146748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602276, 31.508675, 31.270817>,  <44.599125, 31.280533, 31.345259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602276, 31.508675, 31.270817>,  <44.607529, 31.888910, 31.146748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602276, 31.508675, 31.270817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233516, -0.298709, -0.925334,
		0.972264, -0.084578, -0.218056,
		-0.013128, -0.950589, 0.310174,
		44.598339, 31.223497, 31.363869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936573, 31.457308, 30.593006>,  <44.607529, 31.888910, 31.146748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936573, 31.457308, 30.593006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736153, 31.179718, 30.799828>,  <44.615898, 31.013165, 30.923922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.736153, 31.179718, 30.799828>,  <44.936573, 31.457308, 30.593006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736153, 31.179718, 30.799828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261771, -0.447941, -0.854883,
		0.824877, -0.563691, 0.042780,
		-0.501053, -0.693975, 0.517055,
		44.585838, 30.971525, 30.954945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170097, 30.774199, 30.305819>,  <44.936573, 31.457308, 30.593006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170097, 30.774199, 30.305819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821526, 30.714846, 30.492834>,  <44.612381, 30.679234, 30.605043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.821526, 30.714846, 30.492834>,  <45.170097, 30.774199, 30.305819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821526, 30.714846, 30.492834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311142, -0.569649, -0.760717,
		0.379211, -0.808383, 0.450241,
		-0.871430, -0.148383, 0.467539,
		44.560097, 30.670330, 30.633095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100834, 30.009518, 30.517803>,  <45.170097, 30.774199, 30.305819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100834, 30.009518, 30.517803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737461, 30.176517, 30.509289>,  <44.519440, 30.276716, 30.504181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737461, 30.176517, 30.509289>,  <45.100834, 30.009518, 30.517803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737461, 30.176517, 30.509289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260618, -0.605416, -0.752030,
		-0.326856, -0.677619, 0.658785,
		-0.908429, 0.417497, -0.021284,
		44.464931, 30.301767, 30.502903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741413, 29.492086, 30.246527>,  <45.100834, 30.009518, 30.517803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741413, 29.492086, 30.246527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475300, 29.788572, 30.210747>,  <44.315632, 29.966465, 30.189280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.475300, 29.788572, 30.210747>,  <44.741413, 29.492086, 30.246527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475300, 29.788572, 30.210747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448826, -0.492805, -0.745452,
		-0.596624, -0.455785, 0.660530,
		-0.665278, 0.741217, -0.089451,
		44.275715, 30.010937, 30.183912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985172, 29.198881, 30.146978>,  <44.741413, 29.492086, 30.246527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985172, 29.198881, 30.146978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.957226, 29.572868, 30.007866>,  <43.940456, 29.797260, 29.924398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.957226, 29.572868, 30.007866>,  <43.985172, 29.198881, 30.146978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957226, 29.572868, 30.007866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516434, -0.332179, -0.789274,
		-0.853472, 0.124462, 0.506058,
		-0.069867, 0.934969, -0.347781,
		43.936264, 29.853359, 29.903532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235153, 29.253742, 29.814106>,  <43.985172, 29.198881, 30.146978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235153, 29.253742, 29.814106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441128, 29.568926, 29.679073>,  <43.564713, 29.758036, 29.598055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441128, 29.568926, 29.679073>,  <43.235153, 29.253742, 29.814106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441128, 29.568926, 29.679073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474704, -0.065797, -0.877683,
		-0.713790, 0.612202, 0.340166,
		0.514938, 0.787959, -0.337580,
		43.595608, 29.805313, 29.577799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807331, 29.734665, 29.665747>,  <43.235153, 29.253742, 29.814106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807331, 29.734665, 29.665747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132156, 29.795719, 29.440443>,  <43.327049, 29.832352, 29.305260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132156, 29.795719, 29.440443>,  <42.807331, 29.734665, 29.665747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132156, 29.795719, 29.440443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561118, -0.060955, -0.825488,
		-0.160332, 0.986401, 0.036148,
		0.812059, 0.152636, -0.563260,
		43.375774, 29.841511, 29.271465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678020, 30.224653, 29.172777>,  <42.807331, 29.734665, 29.665747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678020, 30.224653, 29.172777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973022, 30.031818, 28.983597>,  <43.150024, 29.916119, 28.870089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973022, 30.031818, 28.983597>,  <42.678020, 30.224653, 29.172777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973022, 30.031818, 28.983597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513603, 0.054364, -0.856304,
		0.438523, 0.874436, -0.207507,
		0.737502, -0.482085, -0.472953,
		43.194275, 29.887194, 28.841711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842113, 30.661659, 28.555996>,  <42.678020, 30.224653, 29.172777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842113, 30.661659, 28.555996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.992043, 30.297138, 28.487835>,  <43.082001, 30.078426, 28.446938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.992043, 30.297138, 28.487835>,  <42.842113, 30.661659, 28.555996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992043, 30.297138, 28.487835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520788, -0.054904, -0.851919,
		0.766999, 0.408063, -0.495174,
		0.374823, -0.911301, -0.170403,
		43.104488, 30.023748, 28.436714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.149963, 39.179707, 41.318001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932755, 38.844826, 41.343998>,  <38.802429, 38.643898, 41.359596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932755, 38.844826, 41.343998>,  <39.149963, 39.179707, 41.318001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932755, 38.844826, 41.343998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104800, -0.009222, -0.994450,
		0.833151, -0.546823, -0.082731,
		-0.543025, -0.837198, 0.064991,
		38.769848, 38.593666, 41.363495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438545, 38.578239, 40.878788>,  <39.149963, 39.179707, 41.318001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438545, 38.578239, 40.878788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057083, 38.466179, 40.922703>,  <38.828205, 38.398941, 40.949051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057083, 38.466179, 40.922703>,  <39.438545, 38.578239, 40.878788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057083, 38.466179, 40.922703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042156, -0.236874, -0.970625,
		0.297930, -0.930271, 0.214086,
		-0.953656, -0.280153, 0.109788,
		38.770985, 38.382133, 40.955639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342144, 38.039474, 40.514076>,  <39.438545, 38.578239, 40.878788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342144, 38.039474, 40.514076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952194, 38.123940, 40.542458>,  <38.718224, 38.174618, 40.559486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952194, 38.123940, 40.542458>,  <39.342144, 38.039474, 40.514076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952194, 38.123940, 40.542458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129833, -0.279773, -0.951247,
		-0.181018, -0.936556, 0.300159,
		-0.974872, 0.211164, 0.070951,
		38.659733, 38.187290, 40.563744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075867, 37.463078, 40.121040>,  <39.342144, 38.039474, 40.514076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075867, 37.463078, 40.121040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808765, 37.759377, 40.150425>,  <38.648502, 37.937157, 40.168056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808765, 37.759377, 40.150425>,  <39.075867, 37.463078, 40.121040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808765, 37.759377, 40.150425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316176, -0.192905, -0.928881,
		-0.673894, -0.643493, 0.363020,
		-0.667756, 0.740746, 0.073459,
		38.608437, 37.981602, 40.172462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476616, 37.213169, 39.782722>,  <39.075867, 37.463078, 40.121040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476616, 37.213169, 39.782722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407661, 37.606945, 39.769077>,  <38.366287, 37.843212, 39.760891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407661, 37.606945, 39.769077>,  <38.476616, 37.213169, 39.782722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407661, 37.606945, 39.769077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625245, -0.136114, -0.768467,
		-0.761152, -0.111144, 0.638979,
		-0.172385, 0.984439, -0.034111,
		38.355946, 37.902275, 39.758842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848949, 37.171093, 39.536568>,  <38.476616, 37.213169, 39.782722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848949, 37.171093, 39.536568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005047, 37.529125, 39.450275>,  <38.098705, 37.743946, 39.398502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005047, 37.529125, 39.450275>,  <37.848949, 37.171093, 39.536568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005047, 37.529125, 39.450275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389562, -0.051780, -0.919544,
		-0.834236, 0.442888, 0.328482,
		0.390246, 0.895081, -0.215729,
		38.122120, 37.797649, 39.385555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406395, 37.558643, 39.161388>,  <37.848949, 37.171093, 39.536568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406395, 37.558643, 39.161388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739265, 37.760849, 39.070232>,  <37.938988, 37.882172, 39.015541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739265, 37.760849, 39.070232>,  <37.406395, 37.558643, 39.161388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739265, 37.760849, 39.070232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299348, 0.063613, -0.952021,
		-0.466763, 0.860470, 0.204262,
		0.832179, 0.505514, -0.227888,
		37.988918, 37.912502, 39.001865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235641, 38.042488, 38.692554>,  <37.406395, 37.558643, 39.161388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235641, 38.042488, 38.692554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632168, 38.025890, 38.642651>,  <37.870083, 38.015930, 38.612709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632168, 38.025890, 38.642651>,  <37.235641, 38.042488, 38.692554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632168, 38.025890, 38.642651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126809, -0.050974, -0.990617,
		0.034747, 0.997838, -0.055794,
		0.991318, -0.041496, -0.124764,
		37.929562, 38.013443, 38.605221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479172, 38.582767, 38.130886>,  <37.235641, 38.042488, 38.692554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479172, 38.582767, 38.130886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773529, 38.312454, 38.147755>,  <37.950146, 38.150269, 38.157875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773529, 38.312454, 38.147755>,  <37.479172, 38.582767, 38.130886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773529, 38.312454, 38.147755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027542, -0.092107, -0.995368,
		0.676533, 0.731327, -0.086394,
		0.735897, -0.675779, 0.042171,
		37.994297, 38.109722, 38.160404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915909, 38.875870, 37.641998>,  <37.479172, 38.582767, 38.130886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915909, 38.875870, 37.641998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964828, 38.485542, 37.714455>,  <37.994183, 38.251347, 37.757927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964828, 38.485542, 37.714455>,  <37.915909, 38.875870, 37.641998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964828, 38.485542, 37.714455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071654, -0.190716, -0.979026,
		0.989903, 0.106758, -0.093246,
		0.122302, -0.975823, 0.181141,
		38.001518, 38.192795, 37.768795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448566, 38.696491, 37.140366>,  <37.915909, 38.875870, 37.641998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448566, 38.696491, 37.140366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229042, 38.378098, 37.242512>,  <38.097328, 38.187061, 37.303799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229042, 38.378098, 37.242512>,  <38.448566, 38.696491, 37.140366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229042, 38.378098, 37.242512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094101, -0.244711, -0.965019,
		0.830633, -0.553644, 0.059397,
		-0.548812, -0.795987, 0.255364,
		38.064400, 38.139301, 37.319122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707699, 38.140442, 36.755299>,  <38.448566, 38.696491, 37.140366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707699, 38.140442, 36.755299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344002, 38.013714, 36.863308>,  <38.125786, 37.937679, 36.928112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344002, 38.013714, 36.863308>,  <38.707699, 38.140442, 36.755299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344002, 38.013714, 36.863308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190085, -0.261097, -0.946412,
		0.370340, -0.911842, 0.177178,
		-0.909239, -0.316816, 0.270023,
		38.071232, 37.918671, 36.944313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219528, 37.606915, 36.604763>,  <38.707699, 38.140442, 36.755299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219528, 37.606915, 36.604763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335133, 37.227486, 36.553093>,  <39.404495, 36.999828, 36.522091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335133, 37.227486, 36.553093>,  <39.219528, 37.606915, 36.604763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335133, 37.227486, 36.553093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639357, -0.291681, 0.711438,
		-0.712527, -0.123026, -0.690775,
		0.289011, -0.948571, -0.129173,
		39.421837, 36.942913, 36.514339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580982, 37.257042, 36.663132>,  <39.219528, 37.606915, 36.604763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580982, 37.257042, 36.663132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876175, 36.993935, 36.723438>,  <39.053291, 36.836071, 36.759621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876175, 36.993935, 36.723438>,  <38.580982, 37.257042, 36.663132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876175, 36.993935, 36.723438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532899, -0.430969, 0.728206,
		-0.414008, -0.617749, -0.668568,
		0.737981, -0.657763, 0.150774,
		39.097569, 36.796604, 36.768669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467873, 36.492966, 36.728210>,  <38.580982, 37.257042, 36.663132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467873, 36.492966, 36.728210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804985, 36.288811, 36.659821>,  <39.007252, 36.166317, 36.618786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804985, 36.288811, 36.659821>,  <38.467873, 36.492966, 36.728210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804985, 36.288811, 36.659821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216351, 0.030345, 0.975844,
		-0.492869, -0.859409, 0.135997,
		0.842777, -0.510386, -0.170978,
		39.057819, 36.135696, 36.608528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494801, 35.931072, 37.275059>,  <38.467873, 36.492966, 36.728210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494801, 35.931072, 37.275059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861931, 35.976128, 37.122787>,  <39.082207, 36.003162, 37.031425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861931, 35.976128, 37.122787>,  <38.494801, 35.931072, 37.275059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861931, 35.976128, 37.122787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388040, -0.052047, 0.920172,
		0.083839, -0.992271, -0.091480,
		0.917821, 0.112644, -0.380677,
		39.137276, 36.009922, 37.008583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944412, 35.375294, 37.636662>,  <38.494801, 35.931072, 37.275059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944412, 35.375294, 37.636662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170597, 35.666103, 37.480877>,  <39.306309, 35.840591, 37.387405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170597, 35.666103, 37.480877>,  <38.944412, 35.375294, 37.636662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170597, 35.666103, 37.480877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492727, 0.080895, 0.866416,
		0.661415, -0.681825, -0.312483,
		0.565466, 0.727029, -0.389459,
		39.340237, 35.884212, 37.364040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513184, 35.011421, 37.510391>,  <38.944412, 35.375294, 37.636662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513184, 35.011421, 37.510391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570110, 35.403793, 37.563324>,  <39.604267, 35.639217, 37.595085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570110, 35.403793, 37.563324>,  <39.513184, 35.011421, 37.510391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570110, 35.403793, 37.563324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386259, -0.178135, 0.905026,
		0.911345, -0.077684, -0.404247,
		0.142317, 0.980935, 0.132337,
		39.612804, 35.698074, 37.603024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102600, 35.046806, 37.968521>,  <39.513184, 35.011421, 37.510391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102600, 35.046806, 37.968521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943584, 35.413525, 37.983738>,  <39.848175, 35.633556, 37.992870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943584, 35.413525, 37.983738>,  <40.102600, 35.046806, 37.968521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943584, 35.413525, 37.983738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284970, 0.083941, 0.954854,
		0.872214, 0.390430, -0.294630,
		-0.397535, 0.916798, 0.038047,
		39.824326, 35.688564, 37.995152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647381, 35.339565, 38.336197>,  <40.102600, 35.046806, 37.968521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647381, 35.339565, 38.336197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312077, 35.555782, 38.364845>,  <40.110893, 35.685513, 38.382034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312077, 35.555782, 38.364845>,  <40.647381, 35.339565, 38.336197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312077, 35.555782, 38.364845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166309, 0.128367, 0.977683,
		0.519288, 0.831464, -0.197503,
		-0.838260, 0.540546, 0.071621,
		40.060600, 35.717945, 38.386330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822899, 35.722103, 38.922680>,  <40.647381, 35.339565, 38.336197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822899, 35.722103, 38.922680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429478, 35.788643, 38.894554>,  <40.193424, 35.828568, 38.877678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429478, 35.788643, 38.894554>,  <40.822899, 35.722103, 38.922680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429478, 35.788643, 38.894554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071529, -0.001313, 0.997438,
		0.165834, 0.986065, 0.013190,
		-0.983556, 0.166353, -0.070314,
		40.134411, 35.838551, 38.873459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648151, 36.376354, 39.290726>,  <40.822899, 35.722103, 38.922680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648151, 36.376354, 39.290726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315735, 36.154568, 39.273132>,  <40.116283, 36.021496, 39.262577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315735, 36.154568, 39.273132>,  <40.648151, 36.376354, 39.290726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315735, 36.154568, 39.273132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014832, -0.056956, 0.998266,
		-0.556006, 0.830258, 0.039109,
		-0.831046, -0.554462, -0.043982,
		40.066422, 35.988228, 39.259937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230434, 36.767242, 39.806499>,  <40.648151, 36.376354, 39.290726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230434, 36.767242, 39.806499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079731, 36.405628, 39.725731>,  <39.989307, 36.188660, 39.677269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079731, 36.405628, 39.725731>,  <40.230434, 36.767242, 39.806499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079731, 36.405628, 39.725731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264231, -0.104043, 0.958831,
		-0.887826, 0.414602, -0.199675,
		-0.376758, -0.904036, -0.201922,
		39.966705, 36.134418, 39.665154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613636, 36.650642, 40.213787>,  <40.230434, 36.767242, 39.806499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613636, 36.650642, 40.213787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680672, 36.268417, 40.116783>,  <39.720894, 36.039082, 40.058582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680672, 36.268417, 40.116783>,  <39.613636, 36.650642, 40.213787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680672, 36.268417, 40.116783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177155, -0.271173, 0.946087,
		-0.969809, -0.115594, -0.214730,
		0.167591, -0.955564, -0.242508,
		39.730949, 35.981747, 40.044029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001743, 36.300339, 40.387779>,  <39.613636, 36.650642, 40.213787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001743, 36.300339, 40.387779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276596, 36.012188, 40.350029>,  <39.441505, 35.839298, 40.327377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276596, 36.012188, 40.350029>,  <39.001743, 36.300339, 40.387779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276596, 36.012188, 40.350029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257733, -0.363138, 0.895379,
		-0.679286, -0.590916, -0.435188,
		0.687127, -0.720381, -0.094376,
		39.482735, 35.796074, 40.321716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687794, 35.653625, 40.578987>,  <39.001743, 36.300339, 40.387779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687794, 35.653625, 40.578987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079849, 35.594353, 40.631695>,  <39.315083, 35.558788, 40.663319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079849, 35.594353, 40.631695>,  <38.687794, 35.653625, 40.578987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079849, 35.594353, 40.631695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180921, -0.396253, 0.900140,
		-0.081165, -0.906106, -0.415192,
		0.980143, -0.148177, 0.131772,
		39.373894, 35.549900, 40.671227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738838, 34.953602, 40.764313>,  <38.687794, 35.653625, 40.578987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738838, 34.953602, 40.764313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056587, 35.157059, 40.897133>,  <39.247238, 35.279133, 40.976826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056587, 35.157059, 40.897133>,  <38.738838, 34.953602, 40.764313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056587, 35.157059, 40.897133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160245, -0.351795, 0.922259,
		0.585914, -0.785825, -0.197948,
		0.794372, 0.508644, 0.332046,
		39.294899, 35.309650, 40.996746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987179, 34.538738, 41.222088>,  <38.738838, 34.953602, 40.764313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987179, 34.538738, 41.222088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153526, 34.886414, 41.329098>,  <39.253334, 35.095020, 41.393303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153526, 34.886414, 41.329098>,  <38.987179, 34.538738, 41.222088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153526, 34.886414, 41.329098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021451, -0.303457, 0.952604,
		0.909173, -0.390418, -0.144843,
		0.415867, 0.869188, 0.267520,
		39.278286, 35.147171, 41.409355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246571, 33.835491, 41.026619>,  <38.987179, 34.538738, 41.222088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246571, 33.835491, 41.026619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173084, 33.442589, 41.011562>,  <39.128994, 33.206848, 41.002529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173084, 33.442589, 41.011562>,  <39.246571, 33.835491, 41.026619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173084, 33.442589, 41.011562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562134, 0.136397, -0.815722,
		0.806384, -0.128701, -0.577219,
		-0.183715, -0.982258, -0.037641,
		39.117970, 33.147911, 41.000271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473389, 33.641319, 40.415596>,  <39.246571, 33.835491, 41.026619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473389, 33.641319, 40.415596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200584, 33.366104, 40.514759>,  <39.036900, 33.200974, 40.574257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200584, 33.366104, 40.514759>,  <39.473389, 33.641319, 40.415596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200584, 33.366104, 40.514759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500643, 0.192140, -0.844061,
		0.533117, -0.699772, -0.475505,
		-0.682014, -0.688042, 0.247903,
		38.995979, 33.159691, 40.589130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327831, 33.255222, 39.729374>,  <39.473389, 33.641319, 40.415596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327831, 33.255222, 39.729374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035591, 33.175930, 39.990734>,  <38.860249, 33.128357, 40.147549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035591, 33.175930, 39.990734>,  <39.327831, 33.255222, 39.729374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035591, 33.175930, 39.990734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682804, 0.214831, -0.698302,
		-0.001948, -0.956323, -0.292306,
		-0.730598, -0.198227, 0.653400,
		38.816410, 33.116463, 40.186752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861622, 32.760365, 39.479401>,  <39.327831, 33.255222, 39.729374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861622, 32.760365, 39.479401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648277, 32.961536, 39.751457>,  <38.520271, 33.082241, 39.914692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648277, 32.961536, 39.751457>,  <38.861622, 32.760365, 39.479401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648277, 32.961536, 39.751457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756281, 0.076645, -0.649742,
		-0.378903, -0.860923, 0.339476,
		-0.533359, 0.502928, 0.680141,
		38.488270, 33.112415, 39.955498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136631, 32.406601, 39.452419>,  <38.861622, 32.760365, 39.479401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136631, 32.406601, 39.452419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083527, 32.761509, 39.629108>,  <38.051666, 32.974453, 39.735123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083527, 32.761509, 39.629108>,  <38.136631, 32.406601, 39.452419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083527, 32.761509, 39.629108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794933, 0.170873, -0.582137,
		-0.591994, -0.428425, 0.682639,
		-0.132757, 0.887274, 0.441725,
		38.043701, 33.027691, 39.761627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597183, 32.618965, 39.159184>,  <38.136631, 32.406601, 39.452419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597183, 32.618965, 39.159184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671036, 32.959003, 39.356461>,  <37.715347, 33.163029, 39.474827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671036, 32.959003, 39.356461>,  <37.597183, 32.618965, 39.159184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671036, 32.959003, 39.356461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668125, 0.476594, -0.571372,
		-0.720778, -0.224025, 0.655966,
		0.184628, 0.850100, 0.493195,
		37.726425, 33.214035, 39.504417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004879, 32.769459, 39.399857>,  <37.597183, 32.618965, 39.159184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004879, 32.769459, 39.399857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217247, 33.107742, 39.378353>,  <37.344669, 33.310715, 39.365452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217247, 33.107742, 39.378353>,  <37.004879, 32.769459, 39.399857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217247, 33.107742, 39.378353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767818, 0.453237, -0.452803,
		-0.358574, 0.281684, 0.889988,
		0.530923, 0.845712, -0.053763,
		37.376526, 33.361458, 39.362225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523804, 33.351398, 39.508385>,  <37.004879, 32.769459, 39.399857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523804, 33.351398, 39.508385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832844, 33.536983, 39.335030>,  <37.018269, 33.648335, 39.231014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832844, 33.536983, 39.335030>,  <36.523804, 33.351398, 39.508385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832844, 33.536983, 39.335030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632429, 0.622503, -0.461004,
		0.055898, 0.630260, 0.774369,
		0.772599, 0.463964, -0.433392,
		37.064625, 33.676174, 39.205013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418285, 34.085571, 39.509388>,  <36.523804, 33.351398, 39.508385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418285, 34.085571, 39.509388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665764, 34.034634, 39.199291>,  <36.814251, 34.004070, 39.013233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665764, 34.034634, 39.199291>,  <36.418285, 34.085571, 39.509388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665764, 34.034634, 39.199291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657650, 0.455867, -0.599735,
		0.429779, 0.880891, 0.198296,
		0.618698, -0.127344, -0.775239,
		36.851372, 33.996429, 38.966721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349667, 34.764481, 39.049809>,  <36.418285, 34.085571, 39.509388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349667, 34.764481, 39.049809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518791, 34.479126, 38.826267>,  <36.620266, 34.307915, 38.692142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518791, 34.479126, 38.826267>,  <36.349667, 34.764481, 39.049809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518791, 34.479126, 38.826267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459685, 0.362618, -0.810677,
		0.780976, 0.599655, -0.174616,
		0.422808, -0.713387, -0.558849,
		36.645634, 34.265110, 38.658611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712456, 35.102562, 38.532841>,  <36.349667, 34.764481, 39.049809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712456, 35.102562, 38.532841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632042, 34.739742, 38.384869>,  <36.583794, 34.522049, 38.296085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632042, 34.739742, 38.384869>,  <36.712456, 35.102562, 38.532841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632042, 34.739742, 38.384869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264179, 0.413847, -0.871172,
		0.943289, -0.077412, -0.322822,
		-0.201038, -0.907049, -0.369927,
		36.571732, 34.467628, 38.273891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065720, 34.983646, 37.811119>,  <36.712456, 35.102562, 38.532841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065720, 34.983646, 37.811119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741901, 34.750027, 37.834866>,  <36.547611, 34.609856, 37.849113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741901, 34.750027, 37.834866>,  <37.065720, 34.983646, 37.811119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741901, 34.750027, 37.834866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405634, 0.483396, -0.775751,
		0.424379, -0.652086, -0.628241,
		-0.809545, -0.584049, 0.059365,
		36.499039, 34.574810, 37.852673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.799007, 31.971272, 43.663429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.416977, 31.855492, 43.688885>,  <41.187759, 31.786024, 43.704159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.416977, 31.855492, 43.688885>,  <41.799007, 31.971272, 43.663429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416977, 31.855492, 43.688885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131893, 0.222847, -0.965890,
		0.265400, -0.930890, -0.251012,
		-0.955074, -0.289454, 0.063634,
		41.130455, 31.768656, 43.707973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645088, 31.381308, 43.054226>,  <41.799007, 31.971272, 43.663429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645088, 31.381308, 43.054226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.340492, 31.606565, 43.182606>,  <41.157734, 31.741720, 43.259632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.340492, 31.606565, 43.182606>,  <41.645088, 31.381308, 43.054226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340492, 31.606565, 43.182606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331947, 0.086480, -0.939326,
		-0.556730, -0.821822, 0.121080,
		-0.761488, 0.563143, 0.320947,
		41.112045, 31.775509, 43.278889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280598, 31.358601, 42.496346>,  <41.645088, 31.381308, 43.054226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280598, 31.358601, 42.496346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.072025, 31.619345, 42.716595>,  <40.946884, 31.775791, 42.848743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.072025, 31.619345, 42.716595>,  <41.280598, 31.358601, 42.496346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072025, 31.619345, 42.716595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452595, 0.335763, -0.826088,
		-0.723374, -0.679957, 0.119952,
		-0.521429, 0.651860, 0.550627,
		40.915596, 31.814903, 42.881783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488224, 31.293007, 42.367077>,  <41.280598, 31.358601, 42.496346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488224, 31.293007, 42.367077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.530315, 31.660091, 42.520302>,  <40.555573, 31.880342, 42.612236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.530315, 31.660091, 42.520302>,  <40.488224, 31.293007, 42.367077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530315, 31.660091, 42.520302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665148, 0.351307, -0.658910,
		-0.739260, -0.185455, 0.647381,
		0.105231, 0.917709, 0.383062,
		40.561886, 31.935404, 42.635220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861820, 31.519281, 42.544842>,  <40.488224, 31.293007, 42.367077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861820, 31.519281, 42.544842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063522, 31.862379, 42.504837>,  <40.184544, 32.068237, 42.480835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.063522, 31.862379, 42.504837>,  <39.861820, 31.519281, 42.544842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063522, 31.862379, 42.504837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748366, 0.376263, -0.546237,
		-0.430901, 0.350288, 0.831639,
		0.504255, 0.857744, -0.100011,
		40.214798, 32.119701, 42.474834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354862, 31.957958, 42.619812>,  <39.861820, 31.519281, 42.544842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354862, 31.957958, 42.619812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665009, 32.130444, 42.435261>,  <39.851097, 32.233936, 42.324532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.665009, 32.130444, 42.435261>,  <39.354862, 31.957958, 42.619812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665009, 32.130444, 42.435261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631429, 0.517202, -0.577754,
		-0.010511, 0.739295, 0.673299,
		0.775362, 0.431214, -0.461376,
		39.897617, 32.259808, 42.296848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200413, 32.698196, 42.584721>,  <39.354862, 31.957958, 42.619812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200413, 32.698196, 42.584721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468571, 32.622261, 42.297794>,  <39.629467, 32.576702, 42.125641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468571, 32.622261, 42.297794>,  <39.200413, 32.698196, 42.584721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468571, 32.622261, 42.297794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550595, 0.520781, -0.652405,
		0.497411, 0.832316, 0.244606,
		0.670393, -0.189834, -0.717311,
		39.669689, 32.565311, 42.082600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896358, 33.186699, 42.154171>,  <39.200413, 32.698196, 42.584721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896358, 33.186699, 42.154171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182270, 33.014771, 41.933498>,  <39.353817, 32.911613, 41.801094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182270, 33.014771, 41.933498>,  <38.896358, 33.186699, 42.154171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182270, 33.014771, 41.933498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376487, 0.428289, -0.821478,
		0.589367, 0.794872, 0.144308,
		0.714776, -0.429821, -0.551679,
		39.396702, 32.885822, 41.767994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206291, 33.680298, 41.756645>,  <38.896358, 33.186699, 42.154171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206291, 33.680298, 41.756645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.262409, 33.337570, 41.558182>,  <39.296082, 33.131931, 41.439102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.262409, 33.337570, 41.558182>,  <39.206291, 33.680298, 41.756645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262409, 33.337570, 41.558182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499975, 0.371224, -0.782444,
		0.854601, 0.357841, -0.376307,
		0.140296, -0.856821, -0.496160,
		39.304497, 33.080524, 41.409332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523506, 34.385513, 41.768013>,  <39.206291, 33.680298, 41.756645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523506, 34.385513, 41.768013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456825, 34.778202, 41.804726>,  <39.416817, 35.013817, 41.826752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456825, 34.778202, 41.804726>,  <39.523506, 34.385513, 41.768013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456825, 34.778202, 41.804726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042944, -0.085767, 0.995389,
		0.985071, 0.169878, -0.027862,
		-0.166705, 0.981726, 0.091782,
		39.406815, 35.072720, 41.832260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031120, 34.666328, 42.125538>,  <39.523506, 34.385513, 41.768013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031120, 34.666328, 42.125538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.716351, 34.902977, 42.195656>,  <39.527489, 35.044968, 42.237728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.716351, 34.902977, 42.195656>,  <40.031120, 34.666328, 42.125538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716351, 34.902977, 42.195656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191547, -0.035838, 0.980829,
		0.586560, 0.805420, -0.085121,
		-0.786929, 0.591620, 0.175297,
		39.480270, 35.080463, 42.248245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152225, 34.750221, 42.774113>,  <40.031120, 34.666328, 42.125538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152225, 34.750221, 42.774113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829025, 34.982819, 42.736176>,  <39.635105, 35.122375, 42.713413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.829025, 34.982819, 42.736176>,  <40.152225, 34.750221, 42.774113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829025, 34.982819, 42.736176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028405, 0.199237, 0.979540,
		0.588490, 0.788779, -0.177502,
		-0.808005, 0.581491, -0.094844,
		39.586624, 35.157265, 42.707722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348743, 35.364017, 43.080971>,  <40.152225, 34.750221, 42.774113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348743, 35.364017, 43.080971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949596, 35.338768, 43.087639>,  <39.710110, 35.323620, 43.091640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.949596, 35.338768, 43.087639>,  <40.348743, 35.364017, 43.080971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949596, 35.338768, 43.087639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012219, 0.070251, 0.997455,
		-0.064135, 0.995530, -0.069330,
		-0.997866, -0.063125, 0.016669,
		39.650238, 35.319832, 43.092640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032516, 35.950745, 43.478992>,  <40.348743, 35.364017, 43.080971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032516, 35.950745, 43.478992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789082, 35.633911, 43.497818>,  <39.643021, 35.443810, 43.509113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789082, 35.633911, 43.497818>,  <40.032516, 35.950745, 43.478992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789082, 35.633911, 43.497818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035916, 0.031754, 0.998850,
		-0.792672, 0.609580, 0.009124,
		-0.608589, -0.792088, 0.047064,
		39.606506, 35.396286, 43.511936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495232, 36.210011, 43.970585>,  <40.032516, 35.950745, 43.478992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495232, 36.210011, 43.970585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488655, 35.811039, 43.942699>,  <39.484711, 35.571655, 43.925968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488655, 35.811039, 43.942699>,  <39.495232, 36.210011, 43.970585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488655, 35.811039, 43.942699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060817, -0.070590, 0.995650,
		-0.998014, 0.012130, 0.061821,
		-0.016441, -0.997432, -0.069712,
		39.483723, 35.511810, 43.921787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216381, 35.900215, 44.571041>,  <39.495232, 36.210011, 43.970585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216381, 35.900215, 44.571041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375099, 35.569138, 44.412308>,  <39.470329, 35.370491, 44.317066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375099, 35.569138, 44.412308>,  <39.216381, 35.900215, 44.571041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375099, 35.569138, 44.412308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043372, -0.414933, 0.908818,
		-0.916884, -0.377822, -0.128743,
		0.396791, -0.827697, -0.396833,
		39.494137, 35.320827, 44.293259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861893, 35.244850, 44.699032>,  <39.216381, 35.900215, 44.571041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861893, 35.244850, 44.699032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245354, 35.145599, 44.643295>,  <39.475430, 35.086048, 44.609856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.245354, 35.145599, 44.643295>,  <38.861893, 35.244850, 44.699032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245354, 35.145599, 44.643295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051271, -0.632215, 0.773094,
		-0.279919, -0.733986, -0.618797,
		0.958654, -0.248130, -0.139337,
		39.532951, 35.071159, 44.601494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834759, 34.364456, 44.751457>,  <38.861893, 35.244850, 44.699032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834759, 34.364456, 44.751457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209339, 34.498306, 44.793560>,  <39.434090, 34.578617, 44.818821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209339, 34.498306, 44.793560>,  <38.834759, 34.364456, 44.751457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209339, 34.498306, 44.793560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168855, -0.693007, 0.700878,
		0.307472, -0.638568, -0.705473,
		0.936455, 0.334623, 0.105255,
		39.490276, 34.598694, 44.825138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272297, 33.778656, 44.919395>,  <38.834759, 34.364456, 44.751457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272297, 33.778656, 44.919395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521858, 34.073288, 45.023849>,  <39.671593, 34.250069, 45.086521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521858, 34.073288, 45.023849>,  <39.272297, 33.778656, 44.919395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521858, 34.073288, 45.023849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303747, -0.536429, 0.787389,
		0.720060, -0.411933, -0.558413,
		0.623900, 0.736584, 0.261138,
		39.709030, 34.294262, 45.102192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836365, 33.436962, 45.165997>,  <39.272297, 33.778656, 44.919395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836365, 33.436962, 45.165997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.875420, 33.801212, 45.326607>,  <39.898853, 34.019764, 45.422974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.875420, 33.801212, 45.326607>,  <39.836365, 33.436962, 45.165997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875420, 33.801212, 45.326607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214955, -0.413228, 0.884894,
		0.971731, -0.000090, -0.236091,
		0.097639, 0.910628, 0.401527,
		39.904713, 34.074402, 45.447063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527756, 33.432240, 45.442715>,  <39.836365, 33.436962, 45.165997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527756, 33.432240, 45.442715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338463, 33.726238, 45.636967>,  <40.224888, 33.902637, 45.753517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338463, 33.726238, 45.636967>,  <40.527756, 33.432240, 45.442715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338463, 33.726238, 45.636967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484731, -0.243051, 0.840215,
		0.735589, 0.633012, -0.241258,
		-0.473228, 0.734998, 0.485626,
		40.196495, 33.946739, 45.782654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005844, 33.731071, 45.885269>,  <40.527756, 33.432240, 45.442715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005844, 33.731071, 45.885269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.677116, 33.864456, 46.070057>,  <40.479881, 33.944489, 46.180931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.677116, 33.864456, 46.070057>,  <41.005844, 33.731071, 45.885269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677116, 33.864456, 46.070057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472196, -0.055078, 0.879771,
		0.318814, 0.941154, -0.112195,
		-0.821821, 0.333461, 0.461968,
		40.430569, 33.964493, 46.208649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210320, 34.424129, 46.289452>,  <41.005844, 33.731071, 45.885269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210320, 34.424129, 46.289452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.887238, 34.239521, 46.436211>,  <40.693386, 34.128757, 46.524265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.887238, 34.239521, 46.436211>,  <41.210320, 34.424129, 46.289452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887238, 34.239521, 46.436211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462878, -0.110949, 0.879451,
		-0.365176, 0.880166, 0.303240,
		-0.807707, -0.461518, 0.366894,
		40.644924, 34.101067, 46.546280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.789845, 32.834724, 46.687351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167709, 32.751911, 46.585560>,  <35.394428, 32.702225, 46.524487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167709, 32.751911, 46.585560>,  <34.789845, 32.834724, 46.687351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167709, 32.751911, 46.585560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213401, 0.201361, -0.955988,
		0.249162, 0.957388, 0.146037,
		0.944658, -0.207031, -0.254479,
		35.451107, 32.689800, 46.509216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983528, 33.407722, 46.275974>,  <34.789845, 32.834724, 46.687351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983528, 33.407722, 46.275974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256706, 33.128536, 46.189793>,  <35.420612, 32.961025, 46.138084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256706, 33.128536, 46.189793>,  <34.983528, 33.407722, 46.275974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256706, 33.128536, 46.189793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048736, 0.337840, -0.939941,
		0.728839, 0.631431, 0.264743,
		0.682948, -0.697968, -0.215458,
		35.461590, 32.919147, 46.125156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618748, 33.751743, 45.787083>,  <34.983528, 33.407722, 46.275974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618748, 33.751743, 45.787083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630093, 33.361355, 45.700661>,  <35.636902, 33.127121, 45.648808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630093, 33.361355, 45.700661>,  <35.618748, 33.751743, 45.787083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630093, 33.361355, 45.700661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031821, 0.215153, -0.976062,
		0.999091, 0.034563, -0.024953,
		0.028367, -0.975968, -0.216057,
		35.638603, 33.068565, 45.635845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140854, 33.632500, 45.288944>,  <35.618748, 33.751743, 45.787083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140854, 33.632500, 45.288944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923717, 33.296925, 45.273396>,  <35.793438, 33.095581, 45.264069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923717, 33.296925, 45.273396>,  <36.140854, 33.632500, 45.288944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923717, 33.296925, 45.273396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032136, 0.066998, -0.997235,
		0.839223, -0.540088, -0.063329,
		-0.542838, -0.838938, -0.038870,
		35.760868, 33.045242, 45.261734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398102, 33.304974, 44.698990>,  <36.140854, 33.632500, 45.288944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398102, 33.304974, 44.698990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035271, 33.147316, 44.758114>,  <35.817570, 33.052719, 44.793591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035271, 33.147316, 44.758114>,  <36.398102, 33.304974, 44.698990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035271, 33.147316, 44.758114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161874, 0.002459, -0.986808,
		0.388585, -0.919044, -0.066032,
		-0.907082, -0.394148, 0.147814,
		35.763145, 33.029072, 44.802460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353359, 32.779427, 44.254257>,  <36.398102, 33.304974, 44.698990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353359, 32.779427, 44.254257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971077, 32.863354, 44.336819>,  <35.741707, 32.913712, 44.386356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971077, 32.863354, 44.336819>,  <36.353359, 32.779427, 44.254257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971077, 32.863354, 44.336819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196149, 0.068792, -0.978158,
		-0.219440, -0.975316, -0.024588,
		-0.955705, 0.209824, 0.206403,
		35.684364, 32.926300, 44.398739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954056, 32.524899, 43.701576>,  <36.353359, 32.779427, 44.254257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954056, 32.524899, 43.701576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673622, 32.759968, 43.863129>,  <35.505363, 32.901009, 43.960060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.673622, 32.759968, 43.863129>,  <35.954056, 32.524899, 43.701576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673622, 32.759968, 43.863129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424234, 0.111506, -0.898661,
		-0.573156, -0.801376, 0.171137,
		-0.701083, 0.587675, 0.403881,
		35.463299, 32.936272, 43.984295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353909, 32.333794, 43.350258>,  <35.954056, 32.524899, 43.701576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353909, 32.333794, 43.350258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.253704, 32.683212, 43.517185>,  <35.193581, 32.892864, 43.617340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.253704, 32.683212, 43.517185>,  <35.353909, 32.333794, 43.350258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253704, 32.683212, 43.517185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347980, 0.321003, -0.880833,
		-0.903411, -0.365880, 0.223562,
		-0.250515, 0.873549, 0.417317,
		35.178551, 32.945278, 43.642380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622395, 32.499676, 43.086910>,  <35.353909, 32.333794, 43.350258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622395, 32.499676, 43.086910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.819157, 32.826576, 43.207001>,  <34.937214, 33.022717, 43.279057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.819157, 32.826576, 43.207001>,  <34.622395, 32.499676, 43.086910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819157, 32.826576, 43.207001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318523, 0.489850, -0.811536,
		-0.810292, 0.303569, 0.501272,
		0.491904, 0.817248, 0.300227,
		34.966728, 33.071751, 43.297070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097134, 33.063942, 43.046230>,  <34.622395, 32.499676, 43.086910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097134, 33.063942, 43.046230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.456268, 33.240059, 43.048706>,  <34.671749, 33.345730, 43.050194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.456268, 33.240059, 43.048706>,  <34.097134, 33.063942, 43.046230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456268, 33.240059, 43.048706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259123, 0.539666, -0.801009,
		-0.356018, 0.717569, 0.598620,
		0.897834, 0.440290, 0.006192,
		34.725620, 33.372147, 43.050564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014511, 33.742474, 42.987411>,  <34.097134, 33.063942, 43.046230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014511, 33.742474, 42.987411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395321, 33.719799, 42.867119>,  <34.623806, 33.706192, 42.794945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395321, 33.719799, 42.867119>,  <34.014511, 33.742474, 42.987411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395321, 33.719799, 42.867119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210305, 0.592694, -0.777487,
		0.222316, 0.803431, 0.552336,
		0.952023, -0.056689, -0.300730,
		34.680927, 33.702793, 42.776901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169518, 34.336258, 42.754932>,  <34.014511, 33.742474, 42.987411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169518, 34.336258, 42.754932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457935, 34.113449, 42.590099>,  <34.630985, 33.979763, 42.491199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457935, 34.113449, 42.590099>,  <34.169518, 34.336258, 42.754932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457935, 34.113449, 42.590099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155897, 0.449062, -0.879795,
		0.675119, 0.698617, 0.236957,
		0.721048, -0.557026, -0.412082,
		34.674252, 33.946342, 42.466476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715446, 34.791924, 42.444031>,  <34.169518, 34.336258, 42.754932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715446, 34.791924, 42.444031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738331, 34.442165, 42.251301>,  <34.752060, 34.232311, 42.135662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.738331, 34.442165, 42.251301>,  <34.715446, 34.791924, 42.444031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738331, 34.442165, 42.251301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225595, 0.458810, -0.859419,
		0.972540, 0.157862, -0.171013,
		0.057207, -0.874399, -0.481824,
		34.755493, 34.179844, 42.106754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196781, 34.849842, 41.893902>,  <34.715446, 34.791924, 42.444031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196781, 34.849842, 41.893902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961411, 34.537083, 41.811546>,  <34.820187, 34.349426, 41.762135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961411, 34.537083, 41.811546>,  <35.196781, 34.849842, 41.893902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961411, 34.537083, 41.811546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218816, 0.399132, -0.890401,
		0.778379, -0.478884, -0.405952,
		-0.588427, -0.781897, -0.205889,
		34.784882, 34.302513, 41.749779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833412, 34.947842, 41.513020>,  <35.196781, 34.849842, 41.893902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833412, 34.947842, 41.513020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.991829, 35.315136, 41.513233>,  <36.086880, 35.535511, 41.513359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.991829, 35.315136, 41.513233>,  <35.833412, 34.947842, 41.513020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991829, 35.315136, 41.513233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480006, -0.207525, 0.852366,
		0.782779, -0.337319, -0.522946,
		0.396043, 0.918232, 0.000531,
		36.110641, 35.590607, 41.513393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517445, 34.918736, 41.807690>,  <35.833412, 34.947842, 41.513020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517445, 34.918736, 41.807690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414310, 35.304577, 41.829807>,  <36.352432, 35.536083, 41.843079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414310, 35.304577, 41.829807>,  <36.517445, 34.918736, 41.807690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414310, 35.304577, 41.829807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532589, 0.094139, 0.841122,
		0.806146, 0.246320, -0.538010,
		-0.257833, 0.964606, 0.055298,
		36.336960, 35.593960, 41.846397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151543, 35.322182, 41.908134>,  <36.517445, 34.918736, 41.807690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151543, 35.322182, 41.908134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.857319, 35.562973, 42.032440>,  <36.680782, 35.707447, 42.107021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.857319, 35.562973, 42.032440>,  <37.151543, 35.322182, 41.908134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857319, 35.562973, 42.032440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391999, 0.004078, 0.919957,
		0.552525, 0.798504, -0.238973,
		-0.735563, 0.601976, 0.310760,
		36.636650, 35.743565, 42.125668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445217, 36.010738, 42.239162>,  <37.151543, 35.322182, 41.908134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445217, 36.010738, 42.239162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.073334, 35.936588, 42.366455>,  <36.850204, 35.892097, 42.442829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.073334, 35.936588, 42.366455>,  <37.445217, 36.010738, 42.239162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073334, 35.936588, 42.366455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232084, 0.376028, 0.897073,
		-0.285957, 0.907877, -0.306576,
		-0.929713, -0.185373, 0.318231,
		36.794418, 35.880978, 42.461926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258869, 36.575413, 42.637215>,  <37.445217, 36.010738, 42.239162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258869, 36.575413, 42.637215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979176, 36.310207, 42.744167>,  <36.811359, 36.151085, 42.808338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979176, 36.310207, 42.744167>,  <37.258869, 36.575413, 42.637215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979176, 36.310207, 42.744167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064416, 0.314062, 0.947214,
		-0.711989, 0.679545, -0.176893,
		-0.699230, -0.663011, 0.267382,
		36.769405, 36.111305, 42.824383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588852, 36.943428, 43.014027>,  <37.258869, 36.575413, 42.637215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588852, 36.943428, 43.014027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611008, 36.563644, 43.137611>,  <36.624302, 36.335773, 43.211761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.611008, 36.563644, 43.137611>,  <36.588852, 36.943428, 43.014027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611008, 36.563644, 43.137611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016591, 0.310273, 0.950503,
		-0.998327, -0.047517, 0.032937,
		0.055385, -0.949459, 0.308966,
		36.627625, 36.278805, 43.230301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179150, 36.977081, 43.574936>,  <36.588852, 36.943428, 43.014027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179150, 36.977081, 43.574936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413853, 36.655849, 43.616470>,  <36.554676, 36.463112, 43.641392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.413853, 36.655849, 43.616470>,  <36.179150, 36.977081, 43.574936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413853, 36.655849, 43.616470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041617, 0.098157, 0.994300,
		-0.808691, -0.587736, 0.024172,
		0.586759, -0.803076, 0.103838,
		36.589882, 36.414928, 43.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857960, 36.563713, 44.151482>,  <36.179150, 36.977081, 43.574936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857960, 36.563713, 44.151482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241501, 36.456467, 44.114147>,  <36.471626, 36.392117, 44.091747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.241501, 36.456467, 44.114147>,  <35.857960, 36.563713, 44.151482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241501, 36.456467, 44.114147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086992, -0.035469, 0.995577,
		-0.270244, -0.962732, -0.010685,
		0.958853, -0.268120, -0.093335,
		36.529156, 36.376030, 44.086147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057861, 35.926628, 44.599316>,  <35.857960, 36.563713, 44.151482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057861, 35.926628, 44.599316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405552, 36.111145, 44.528145>,  <36.614166, 36.221855, 44.485443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.405552, 36.111145, 44.528145>,  <36.057861, 35.926628, 44.599316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405552, 36.111145, 44.528145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268618, -0.138485, 0.953240,
		0.415082, -0.876374, -0.244285,
		0.869225, 0.461292, -0.177927,
		36.666321, 36.249531, 44.474766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422401, 35.578320, 45.046535>,  <36.057861, 35.926628, 44.599316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422401, 35.578320, 45.046535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648296, 35.891319, 44.941647>,  <36.783833, 36.079121, 44.878716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.648296, 35.891319, 44.941647>,  <36.422401, 35.578320, 45.046535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648296, 35.891319, 44.941647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467289, -0.041303, 0.883139,
		0.680229, -0.621274, -0.388981,
		0.564738, 0.782504, -0.262220,
		36.817719, 36.126072, 44.862980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136642, 35.404308, 45.158607>,  <36.422401, 35.578320, 45.046535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136642, 35.404308, 45.158607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147224, 35.804104, 45.165798>,  <37.153576, 36.043980, 45.170113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147224, 35.804104, 45.165798>,  <37.136642, 35.404308, 45.158607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147224, 35.804104, 45.165798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581586, -0.030020, 0.812931,
		0.813054, -0.011051, -0.582083,
		0.026458, 0.999488, 0.017980,
		37.155163, 36.103951, 45.171192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865822, 35.551933, 45.361095>,  <37.136642, 35.404308, 45.158607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865822, 35.551933, 45.361095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629387, 35.866425, 45.433167>,  <37.487526, 36.055119, 45.476410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629387, 35.866425, 45.433167>,  <37.865822, 35.551933, 45.361095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629387, 35.866425, 45.433167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399766, 0.091536, 0.912035,
		0.700575, 0.611120, -0.368412,
		-0.591086, 0.786228, 0.180177,
		37.452061, 36.102291, 45.487221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278008, 36.027718, 45.734348>,  <37.865822, 35.551933, 45.361095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278008, 36.027718, 45.734348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895496, 36.113876, 45.813488>,  <37.665989, 36.165569, 45.860973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895496, 36.113876, 45.813488>,  <38.278008, 36.027718, 45.734348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895496, 36.113876, 45.813488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195892, -0.030632, 0.980147,
		0.217179, 0.976046, -0.012901,
		-0.956274, 0.215395, 0.197853,
		37.608616, 36.178493, 45.872845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321686, 36.712772, 46.160309>,  <38.278008, 36.027718, 45.734348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321686, 36.712772, 46.160309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990158, 36.500305, 46.230637>,  <37.791241, 36.372826, 46.272835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990158, 36.500305, 46.230637>,  <38.321686, 36.712772, 46.160309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990158, 36.500305, 46.230637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199598, 0.012874, 0.979793,
		-0.522699, 0.847168, 0.095350,
		-0.828822, -0.531169, 0.175823,
		37.741512, 36.340954, 46.283382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800114, 37.258736, 46.373611>,  <38.321686, 36.712772, 46.160309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800114, 37.258736, 46.373611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.185307, 37.182053, 46.449417>,  <39.416424, 37.136044, 46.494900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.185307, 37.182053, 46.449417>,  <38.800114, 37.258736, 46.373611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185307, 37.182053, 46.449417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247721, 0.352099, -0.902586,
		0.106305, 0.916119, 0.386555,
		0.962982, -0.191707, 0.189512,
		39.474201, 37.124542, 46.506271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146748, 37.814766, 46.151001>,  <38.800114, 37.258736, 46.373611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146748, 37.814766, 46.151001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421783, 37.524658, 46.137062>,  <39.586803, 37.350594, 46.128696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421783, 37.524658, 46.137062>,  <39.146748, 37.814766, 46.151001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421783, 37.524658, 46.137062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228859, 0.262019, -0.937534,
		0.689093, 0.636659, 0.346144,
		0.687585, -0.725267, -0.034850,
		39.628059, 37.307079, 46.126606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708359, 38.137714, 45.977428>,  <39.146748, 37.814766, 46.151001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708359, 38.137714, 45.977428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.758923, 37.753033, 45.880150>,  <39.789261, 37.522224, 45.821781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.758923, 37.753033, 45.880150>,  <39.708359, 38.137714, 45.977428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758923, 37.753033, 45.880150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310890, 0.271222, -0.910926,
		0.942002, 0.039542, 0.333269,
		0.126410, -0.961704, -0.243199,
		39.796844, 37.464523, 45.807190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228050, 38.195087, 45.402248>,  <39.708359, 38.137714, 45.977428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228050, 38.195087, 45.402248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.077732, 37.825623, 45.372246>,  <39.987541, 37.603943, 45.354244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.077732, 37.825623, 45.372246>,  <40.228050, 38.195087, 45.402248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077732, 37.825623, 45.372246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058270, 0.104335, -0.992834,
		0.924868, -0.368735, -0.093031,
		-0.375799, -0.923660, -0.075010,
		39.964993, 37.548523, 45.349743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623604, 37.896076, 44.897064>,  <40.228050, 38.195087, 45.402248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623604, 37.896076, 44.897064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291321, 37.673454, 44.891735>,  <40.091949, 37.539883, 44.888538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.291321, 37.673454, 44.891735>,  <40.623604, 37.896076, 44.897064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291321, 37.673454, 44.891735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096301, 0.167224, -0.981204,
		0.548318, -0.813810, -0.192511,
		-0.830707, -0.556551, -0.013322,
		40.042110, 37.506489, 44.887737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713337, 37.451508, 44.312912>,  <40.623604, 37.896076, 44.897064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713337, 37.451508, 44.312912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329346, 37.420834, 44.420662>,  <40.098949, 37.402431, 44.485313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329346, 37.420834, 44.420662>,  <40.713337, 37.451508, 44.312912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329346, 37.420834, 44.420662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269485, -0.009109, -0.962961,
		0.076301, -0.997014, -0.011922,
		-0.959977, -0.076688, 0.269376,
		40.041351, 37.397827, 44.501476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478210, 37.126629, 43.803120>,  <40.713337, 37.451508, 44.312912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478210, 37.126629, 43.803120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.148212, 37.282948, 43.966415>,  <39.950214, 37.376740, 44.064392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.148212, 37.282948, 43.966415>,  <40.478210, 37.126629, 43.803120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148212, 37.282948, 43.966415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389379, 0.130478, -0.911789,
		-0.409588, -0.911184, 0.044523,
		-0.824998, 0.390794, 0.408238,
		39.900711, 37.400185, 44.088886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972267, 36.911827, 43.457455>,  <40.478210, 37.126629, 43.803120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972267, 36.911827, 43.457455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815136, 37.237858, 43.627789>,  <39.720856, 37.433475, 43.729988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815136, 37.237858, 43.627789>,  <39.972267, 36.911827, 43.457455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815136, 37.237858, 43.627789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511891, 0.190877, -0.837576,
		-0.763972, -0.547002, 0.342250,
		-0.392828, 0.815079, 0.425830,
		39.697289, 37.482380, 43.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237999, 36.896873, 43.352062>,  <39.972267, 36.911827, 43.457455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237999, 36.896873, 43.352062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.331581, 37.278019, 43.429329>,  <39.387730, 37.506706, 43.475689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.331581, 37.278019, 43.429329>,  <39.237999, 36.896873, 43.352062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331581, 37.278019, 43.429329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537362, 0.292303, -0.791076,
		-0.810252, 0.081274, 0.580419,
		0.233952, 0.952866, 0.193166,
		39.401768, 37.563877, 43.487278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732876, 37.269680, 43.007675>,  <39.237999, 36.896873, 43.352062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732876, 37.269680, 43.007675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978283, 37.574902, 43.089008>,  <39.125526, 37.758034, 43.137810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978283, 37.574902, 43.089008>,  <38.732876, 37.269680, 43.007675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978283, 37.574902, 43.089008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384420, 0.513517, -0.767152,
		-0.689794, 0.392495, 0.608385,
		0.613519, 0.763052, 0.203338,
		39.162338, 37.803818, 43.150009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313675, 37.872574, 43.161186>,  <38.732876, 37.269680, 43.007675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313675, 37.872574, 43.161186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673710, 37.975483, 43.020527>,  <38.889732, 38.037228, 42.936131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673710, 37.975483, 43.020527>,  <38.313675, 37.872574, 43.161186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673710, 37.975483, 43.020527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431185, 0.409931, -0.803764,
		-0.062636, 0.875081, 0.479905,
		0.900087, 0.257272, -0.351646,
		38.943737, 38.052666, 42.915031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303097, 38.702591, 43.016380>,  <38.313675, 37.872574, 43.161186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303097, 38.702591, 43.016380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.586105, 38.518646, 42.801743>,  <38.755913, 38.408279, 42.672958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.586105, 38.518646, 42.801743>,  <38.303097, 38.702591, 43.016380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586105, 38.518646, 42.801743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447431, 0.296235, -0.843831,
		0.547006, 0.837120, 0.003835,
		0.707523, -0.459865, -0.536596,
		38.798363, 38.380688, 42.640762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256241, 39.045612, 42.406345>,  <38.303097, 38.702591, 43.016380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256241, 39.045612, 42.406345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.484417, 38.735378, 42.298229>,  <38.621323, 38.549236, 42.233360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.484417, 38.735378, 42.298229>,  <38.256241, 39.045612, 42.406345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484417, 38.735378, 42.298229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341674, 0.075179, -0.936807,
		0.746895, 0.626748, -0.222113,
		0.570444, -0.775587, -0.270295,
		38.655552, 38.502701, 42.217140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759262, 39.303677, 41.888851>,  <38.256241, 39.045612, 42.406345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759262, 39.303677, 41.888851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716053, 38.907166, 41.858631>,  <38.690128, 38.669258, 41.840500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716053, 38.907166, 41.858631>,  <38.759262, 39.303677, 41.888851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716053, 38.907166, 41.858631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466066, 0.117624, -0.876896,
		0.878130, -0.059515, -0.474705,
		-0.108026, -0.991273, -0.075551,
		38.683643, 38.609783, 41.835964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.305059, 32.630928, 27.103310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346275, 32.247311, 27.208855>,  <28.371004, 32.017139, 27.272182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346275, 32.247311, 27.208855>,  <28.305059, 32.630928, 27.103310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346275, 32.247311, 27.208855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420813, 0.198335, 0.885200,
		-0.901277, -0.202247, -0.383140,
		0.103039, -0.959041, 0.263863,
		28.377188, 31.959599, 27.288013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681595, 32.466290, 27.439827>,  <28.305059, 32.630928, 27.103310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681595, 32.466290, 27.439827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977167, 32.225346, 27.560585>,  <28.154510, 32.080780, 27.633039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977167, 32.225346, 27.560585>,  <27.681595, 32.466290, 27.439827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977167, 32.225346, 27.560585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122535, 0.320453, 0.939306,
		-0.662545, -0.731075, 0.162982,
		0.738931, -0.602361, 0.301897,
		28.198847, 32.044636, 27.651154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497641, 32.179821, 28.141115>,  <27.681595, 32.466290, 27.439827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497641, 32.179821, 28.141115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.895336, 32.136974, 28.139700>,  <28.133953, 32.111267, 28.138851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.895336, 32.136974, 28.139700>,  <27.497641, 32.179821, 28.141115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895336, 32.136974, 28.139700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037998, 0.321440, 0.946167,
		-0.100216, -0.940852, 0.323659,
		0.994240, -0.107119, -0.003537,
		28.193607, 32.104839, 28.138639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564085, 31.975098, 28.845156>,  <27.497641, 32.179821, 28.141115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564085, 31.975098, 28.845156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915712, 32.121284, 28.722729>,  <28.126688, 32.208996, 28.649273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915712, 32.121284, 28.722729>,  <27.564085, 31.975098, 28.845156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915712, 32.121284, 28.722729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177999, 0.343970, 0.921955,
		0.442223, -0.864939, 0.237319,
		0.879065, 0.365467, -0.306070,
		28.179432, 32.230923, 28.630907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969864, 31.727776, 29.276974>,  <27.564085, 31.975098, 28.845156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969864, 31.727776, 29.276974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143024, 32.055092, 29.125713>,  <28.246920, 32.251480, 29.034958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.143024, 32.055092, 29.125713>,  <27.969864, 31.727776, 29.276974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143024, 32.055092, 29.125713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152737, 0.346847, 0.925402,
		0.888408, -0.458364, 0.025167,
		0.432900, 0.818291, -0.378151,
		28.272894, 32.300579, 29.012268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534386, 31.796867, 29.712088>,  <27.969864, 31.727776, 29.276974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534386, 31.796867, 29.712088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523203, 32.155014, 29.534306>,  <28.516493, 32.369904, 29.427637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.523203, 32.155014, 29.534306>,  <28.534386, 31.796867, 29.712088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523203, 32.155014, 29.534306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220548, 0.439196, 0.870899,
		0.974975, -0.073677, -0.209749,
		-0.027956, 0.895365, -0.444455,
		28.514816, 32.423622, 29.400969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964865, 32.153645, 30.133720>,  <28.534386, 31.796867, 29.712088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964865, 32.153645, 30.133720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774328, 32.449306, 29.943251>,  <28.660006, 32.626705, 29.828968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774328, 32.449306, 29.943251>,  <28.964865, 32.153645, 30.133720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774328, 32.449306, 29.943251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008989, 0.537443, 0.843252,
		0.879214, 0.405958, -0.249363,
		-0.476343, 0.739157, -0.476176,
		28.631426, 32.671055, 29.800398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299387, 32.807369, 30.345295>,  <28.964865, 32.153645, 30.133720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299387, 32.807369, 30.345295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933659, 32.901844, 30.213699>,  <28.714222, 32.958530, 30.134741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933659, 32.901844, 30.213699>,  <29.299387, 32.807369, 30.345295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933659, 32.901844, 30.213699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137665, 0.582714, 0.800932,
		0.380877, 0.777599, -0.500272,
		-0.914320, 0.236186, -0.328991,
		28.659363, 32.972698, 30.115002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254599, 33.486580, 30.372908>,  <29.299387, 32.807369, 30.345295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254599, 33.486580, 30.372908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875227, 33.364811, 30.408264>,  <28.647604, 33.291752, 30.429478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875227, 33.364811, 30.408264>,  <29.254599, 33.486580, 30.372908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875227, 33.364811, 30.408264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143771, 0.661609, 0.735937,
		-0.282514, 0.685275, -0.671256,
		-0.948428, -0.304420, 0.088391,
		28.590698, 33.273483, 30.434782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854481, 34.129276, 30.488850>,  <29.254599, 33.486580, 30.372908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854481, 34.129276, 30.488850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640627, 33.822678, 30.631203>,  <28.512314, 33.638718, 30.716614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640627, 33.822678, 30.631203>,  <28.854481, 34.129276, 30.488850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640627, 33.822678, 30.631203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227410, 0.536077, 0.812961,
		-0.813910, 0.353707, -0.460914,
		-0.534635, -0.766494, 0.355882,
		28.480236, 33.592728, 30.737967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321068, 34.420975, 30.955862>,  <28.854481, 34.129276, 30.488850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321068, 34.420975, 30.955862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273502, 34.042095, 31.074978>,  <28.244963, 33.814770, 31.146446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.273502, 34.042095, 31.074978>,  <28.321068, 34.420975, 30.955862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273502, 34.042095, 31.074978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368613, 0.320596, 0.872549,
		-0.921946, -0.006013, -0.387272,
		-0.118912, -0.947197, 0.297789,
		28.237829, 33.757935, 31.164314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659447, 34.400116, 31.291809>,  <28.321068, 34.420975, 30.955862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659447, 34.400116, 31.291809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848869, 34.074055, 31.425236>,  <27.962523, 33.878418, 31.505293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.848869, 34.074055, 31.425236>,  <27.659447, 34.400116, 31.291809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848869, 34.074055, 31.425236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321338, 0.192718, 0.927147,
		-0.820052, -0.546245, -0.170677,
		0.473557, -0.815154, 0.333568,
		27.990936, 33.829510, 31.525307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185217, 34.073185, 31.731853>,  <27.659447, 34.400116, 31.291809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185217, 34.073185, 31.731853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.542889, 33.920116, 31.824814>,  <27.757492, 33.828278, 31.880590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.542889, 33.920116, 31.824814>,  <27.185217, 34.073185, 31.731853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542889, 33.920116, 31.824814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154454, 0.223554, 0.962376,
		-0.420224, -0.896431, 0.140793,
		0.894179, -0.382668, 0.232401,
		27.811142, 33.805317, 31.894533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023544, 33.925121, 32.417568>,  <27.185217, 34.073185, 31.731853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023544, 33.925121, 32.417568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419771, 33.921032, 32.362911>,  <27.657507, 33.918579, 32.330116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419771, 33.921032, 32.362911>,  <27.023544, 33.925121, 32.417568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419771, 33.921032, 32.362911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134334, 0.269238, 0.953659,
		0.027036, -0.963019, 0.268072,
		0.990568, -0.010228, -0.136646,
		27.716942, 33.917965, 32.321918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196262, 33.647614, 33.033806>,  <27.023544, 33.925121, 32.417568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196262, 33.647614, 33.033806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535618, 33.806652, 32.894001>,  <27.739231, 33.902077, 32.810120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535618, 33.806652, 32.894001>,  <27.196262, 33.647614, 33.033806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535618, 33.806652, 32.894001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339138, 0.098738, 0.935540,
		0.406478, -0.912232, -0.051072,
		0.848387, 0.397597, -0.349508,
		27.790134, 33.925930, 32.789150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746384, 33.316307, 33.384846>,  <27.196262, 33.647614, 33.033806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746384, 33.316307, 33.384846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880669, 33.673794, 33.265800>,  <27.961239, 33.888287, 33.194374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880669, 33.673794, 33.265800>,  <27.746384, 33.316307, 33.384846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880669, 33.673794, 33.265800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482297, 0.108314, 0.869286,
		0.809128, -0.435369, -0.394673,
		0.335711, 0.893713, -0.297616,
		27.981382, 33.941906, 33.176514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430574, 33.416962, 33.678978>,  <27.746384, 33.316307, 33.384846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430574, 33.416962, 33.678978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287569, 33.776295, 33.576859>,  <28.201765, 33.991894, 33.515587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287569, 33.776295, 33.576859>,  <28.430574, 33.416962, 33.678978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287569, 33.776295, 33.576859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243950, 0.353708, 0.902984,
		0.901483, 0.260550, -0.345604,
		-0.357515, 0.898334, -0.255300,
		28.180315, 34.045795, 33.500267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621454, 33.844330, 34.308189>,  <28.430574, 33.416962, 33.678978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621454, 33.844330, 34.308189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366915, 34.091160, 34.123032>,  <28.214191, 34.239258, 34.011936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366915, 34.091160, 34.123032>,  <28.621454, 33.844330, 34.308189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366915, 34.091160, 34.123032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258193, 0.395080, 0.881617,
		0.726907, 0.680534, -0.092084,
		-0.636351, 0.617078, -0.462896,
		28.176010, 34.276283, 33.984161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725876, 34.512939, 34.594765>,  <28.621454, 33.844330, 34.308189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725876, 34.512939, 34.594765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346201, 34.520493, 34.469105>,  <28.118397, 34.525024, 34.393711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346201, 34.520493, 34.469105>,  <28.725876, 34.512939, 34.594765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346201, 34.520493, 34.469105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289063, 0.342398, 0.893983,
		0.124448, 0.939365, -0.319540,
		-0.949186, 0.018887, -0.314147,
		28.061445, 34.526157, 34.374859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320810, 34.114079, 34.231617>,  <28.725876, 34.512939, 34.594765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320810, 34.114079, 34.231617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649460, 34.324173, 34.320217>,  <29.846649, 34.450230, 34.373375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649460, 34.324173, 34.320217>,  <29.320810, 34.114079, 34.231617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649460, 34.324173, 34.320217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468934, -0.401867, -0.786513,
		-0.324093, 0.750086, -0.576485,
		0.821623, 0.525237, 0.221499,
		29.895947, 34.481743, 34.386665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595556, 34.347115, 33.631840>,  <29.320810, 34.114079, 34.231617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595556, 34.347115, 33.631840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.892265, 34.400032, 33.894829>,  <30.070292, 34.431782, 34.052624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.892265, 34.400032, 33.894829>,  <29.595556, 34.347115, 33.631840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892265, 34.400032, 33.894829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652205, -0.370631, -0.661257,
		0.156203, 0.919311, -0.361204,
		0.741774, 0.132289, 0.657473,
		30.114798, 34.439720, 34.092072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027866, 34.774261, 33.323074>,  <29.595556, 34.347115, 33.631840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027866, 34.774261, 33.323074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249128, 34.550026, 33.569572>,  <30.381886, 34.415485, 33.717472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249128, 34.550026, 33.569572>,  <30.027866, 34.774261, 33.323074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249128, 34.550026, 33.569572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540980, -0.320821, -0.777441,
		0.633529, 0.763423, 0.125803,
		0.553156, -0.560589, 0.616245,
		30.415075, 34.381851, 33.754448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715807, 34.839737, 33.082298>,  <30.027866, 34.774261, 33.323074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715807, 34.839737, 33.082298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708593, 34.504395, 33.300228>,  <30.704266, 34.303188, 33.430984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708593, 34.504395, 33.300228>,  <30.715807, 34.839737, 33.082298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708593, 34.504395, 33.300228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413596, -0.502358, -0.759325,
		0.910282, 0.211644, 0.355801,
		-0.018033, -0.838358, 0.544822,
		30.703184, 34.252888, 33.463676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347403, 34.482731, 32.865021>,  <30.715807, 34.839737, 33.082298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347403, 34.482731, 32.865021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111818, 34.212376, 33.042240>,  <30.970467, 34.050163, 33.148571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111818, 34.212376, 33.042240>,  <31.347403, 34.482731, 32.865021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111818, 34.212376, 33.042240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363062, -0.711069, -0.602135,
		0.722018, -0.193779, 0.664183,
		-0.588962, -0.675892, 0.443051,
		30.935129, 34.009609, 33.175156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856218, 33.932949, 33.053806>,  <31.347403, 34.482731, 32.865021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856218, 33.932949, 33.053806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.486563, 33.780128, 33.052902>,  <31.264771, 33.688435, 33.052361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.486563, 33.780128, 33.052902>,  <31.856218, 33.932949, 33.053806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486563, 33.780128, 33.052902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335725, -0.809223, -0.482127,
		0.182368, -0.446311, 0.876099,
		-0.924138, -0.382053, -0.002261,
		31.209322, 33.665512, 33.052223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934414, 33.236961, 33.277157>,  <31.856218, 33.932949, 33.053806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934414, 33.236961, 33.277157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579973, 33.249817, 33.092205>,  <31.367310, 33.257530, 32.981236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579973, 33.249817, 33.092205>,  <31.934414, 33.236961, 33.277157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579973, 33.249817, 33.092205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174017, -0.901543, -0.396154,
		-0.429584, -0.431494, 0.793266,
		-0.886101, 0.032139, -0.462375,
		31.314142, 33.259460, 32.953491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691050, 32.571049, 33.306644>,  <31.934414, 33.236961, 33.277157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691050, 32.571049, 33.306644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482582, 32.736984, 33.008305>,  <31.357502, 32.836544, 32.829300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482582, 32.736984, 33.008305>,  <31.691050, 32.571049, 33.306644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482582, 32.736984, 33.008305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046686, -0.858754, -0.510257,
		-0.852167, -0.300758, 0.428202,
		-0.521184, 0.414833, -0.745842,
		31.326233, 32.861435, 32.784550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434313, 32.043133, 32.999310>,  <31.691050, 32.571049, 33.306644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434313, 32.043133, 32.999310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352304, 32.314529, 32.717144>,  <31.303099, 32.477367, 32.547844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352304, 32.314529, 32.717144>,  <31.434313, 32.043133, 32.999310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352304, 32.314529, 32.717144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180609, -0.734573, -0.654050,
		-0.961949, -0.006690, 0.273146,
		-0.205022, 0.678496, -0.705414,
		31.290798, 32.518078, 32.505520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812971, 31.777756, 32.753586>,  <31.434313, 32.043133, 32.999310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812971, 31.777756, 32.753586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.006332, 31.993155, 32.477516>,  <31.122349, 32.122395, 32.311874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.006332, 31.993155, 32.477516>,  <30.812971, 31.777756, 32.753586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006332, 31.993155, 32.477516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119404, -0.740485, -0.661381,
		-0.867216, 0.402124, -0.293655,
		0.483405, 0.538496, -0.690175,
		31.151354, 32.154705, 32.270462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390553, 31.661003, 32.064323>,  <30.812971, 31.777756, 32.753586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390553, 31.661003, 32.064323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.737385, 31.821098, 31.945683>,  <30.945484, 31.917156, 31.874496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.737385, 31.821098, 31.945683>,  <30.390553, 31.661003, 32.064323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737385, 31.821098, 31.945683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058423, -0.672989, -0.737342,
		-0.494726, 0.622008, -0.606920,
		0.867083, 0.400240, -0.296606,
		30.997509, 31.941170, 31.856701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241934, 31.964003, 31.305824>,  <30.390553, 31.661003, 32.064323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241934, 31.964003, 31.305824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.614502, 31.863651, 31.411289>,  <30.838043, 31.803440, 31.474567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.614502, 31.863651, 31.411289>,  <30.241934, 31.964003, 31.305824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614502, 31.863651, 31.411289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053060, -0.623108, -0.780334,
		0.360057, 0.740808, -0.567064,
		0.931420, -0.250876, 0.263662,
		30.893929, 31.788389, 31.490387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544004, 31.910059, 30.727970>,  <30.241934, 31.964003, 31.305824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544004, 31.910059, 30.727970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.803652, 31.707783, 30.955275>,  <30.959440, 31.586416, 31.091658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.803652, 31.707783, 30.955275>,  <30.544004, 31.910059, 30.727970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803652, 31.707783, 30.955275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030696, -0.729016, -0.683808,
		0.760068, 0.461316, -0.457695,
		0.649118, -0.505691, 0.568262,
		30.998386, 31.556076, 31.125753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061443, 31.706594, 30.244623>,  <30.544004, 31.910059, 30.727970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061443, 31.706594, 30.244623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096031, 31.465759, 30.562117>,  <31.116783, 31.321259, 30.752613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096031, 31.465759, 30.562117>,  <31.061443, 31.706594, 30.244623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096031, 31.465759, 30.562117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142868, -0.780988, -0.607985,
		0.985957, 0.165971, 0.018488,
		0.086469, -0.602089, 0.793733,
		31.121971, 31.285133, 30.800236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637249, 31.188702, 30.057962>,  <31.061443, 31.706594, 30.244623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637249, 31.188702, 30.057962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433455, 31.015930, 30.355650>,  <31.311178, 30.912268, 30.534262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433455, 31.015930, 30.355650>,  <31.637249, 31.188702, 30.057962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433455, 31.015930, 30.355650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059877, -0.844996, -0.531410,
		0.858394, -0.315307, 0.404650,
		-0.509485, -0.431930, 0.744219,
		31.280609, 30.886351, 30.578917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922747, 30.541834, 30.108341>,  <31.637249, 31.188702, 30.057962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922747, 30.541834, 30.108341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.577883, 30.485161, 30.302910>,  <31.370964, 30.451157, 30.419651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.577883, 30.485161, 30.302910>,  <31.922747, 30.541834, 30.108341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577883, 30.485161, 30.302910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144857, -0.851083, -0.504653,
		0.485486, -0.505553, 0.713246,
		-0.862160, -0.141683, 0.486422,
		31.319235, 30.442656, 30.448835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825506, 29.717949, 30.229498>,  <31.922747, 30.541834, 30.108341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825506, 29.717949, 30.229498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456760, 29.870470, 30.257122>,  <31.235512, 29.961983, 30.273697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456760, 29.870470, 30.257122>,  <31.825506, 29.717949, 30.229498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456760, 29.870470, 30.257122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324907, -0.663449, -0.673996,
		-0.211179, -0.643773, 0.735500,
		-0.921867, 0.381303, 0.069060,
		31.180201, 29.984861, 30.277840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340717, 29.227707, 30.435041>,  <31.825506, 29.717949, 30.229498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340717, 29.227707, 30.435041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.103945, 29.493496, 30.252573>,  <30.961882, 29.652969, 30.143093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.103945, 29.493496, 30.252573>,  <31.340717, 29.227707, 30.435041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103945, 29.493496, 30.252573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442480, -0.740967, -0.505152,
		-0.673667, -0.097170, 0.732619,
		-0.591933, 0.664474, -0.456169,
		30.926365, 29.692839, 30.115723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789633, 28.824421, 30.210875>,  <31.340717, 29.227707, 30.435041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789633, 28.824421, 30.210875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.725117, 29.158764, 30.000986>,  <30.686407, 29.359369, 29.875053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.725117, 29.158764, 30.000986>,  <30.789633, 28.824421, 30.210875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725117, 29.158764, 30.000986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576547, -0.511323, -0.637293,
		-0.800986, 0.199736, 0.564382,
		-0.161291, 0.835856, -0.524719,
		30.676729, 29.409521, 29.843571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044367, 28.834229, 30.048954>,  <30.789633, 28.824421, 30.210875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044367, 28.834229, 30.048954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215181, 29.066227, 29.771467>,  <30.317671, 29.205427, 29.604975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.215181, 29.066227, 29.771467>,  <30.044367, 28.834229, 30.048954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215181, 29.066227, 29.771467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524499, -0.466056, -0.712526,
		-0.736574, 0.668128, 0.105185,
		0.427036, 0.579998, -0.693717,
		30.343292, 29.240227, 29.563353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425510, 29.041111, 29.482275>,  <30.044367, 28.834229, 30.048954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425510, 29.041111, 29.482275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781822, 29.067064, 29.302362>,  <29.995609, 29.082636, 29.194416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781822, 29.067064, 29.302362>,  <29.425510, 29.041111, 29.482275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781822, 29.067064, 29.302362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398615, -0.363710, -0.841915,
		-0.218214, 0.929250, -0.298122,
		0.890780, 0.064882, -0.449780,
		30.049057, 29.086529, 29.167429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206612, 29.302374, 28.909681>,  <29.425510, 29.041111, 29.482275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206612, 29.302374, 28.909681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583210, 29.176136, 28.862370>,  <29.809168, 29.100393, 28.833982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583210, 29.176136, 28.862370>,  <29.206612, 29.302374, 28.909681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583210, 29.176136, 28.862370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199697, -0.239671, -0.950094,
		0.271496, 0.918128, -0.288672,
		0.941494, -0.315594, -0.118278,
		29.865658, 29.081457, 28.826885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366875, 29.559233, 28.284079>,  <29.206612, 29.302374, 28.909681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366875, 29.559233, 28.284079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609245, 29.249380, 28.356524>,  <29.754667, 29.063469, 28.399990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609245, 29.249380, 28.356524>,  <29.366875, 29.559233, 28.284079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609245, 29.249380, 28.356524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194459, -0.364980, -0.910481,
		0.771389, 0.516464, -0.371784,
		0.605924, -0.774632, 0.181111,
		29.791023, 29.016991, 28.410856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.180004, 34.696415, 47.024605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.940304, 34.376522, 47.039154>,  <40.796482, 34.184586, 47.047886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.940304, 34.376522, 47.039154>,  <41.180004, 34.696415, 47.024605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940304, 34.376522, 47.039154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202740, -0.107645, 0.973298,
		-0.774462, 0.590627, 0.226644,
		-0.599254, -0.799732, 0.036377,
		40.760529, 34.136600, 47.050068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714554, 34.799995, 47.574963>,  <41.180004, 34.696415, 47.024605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714554, 34.799995, 47.574963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707680, 34.404072, 47.518425>,  <40.703556, 34.166515, 47.484501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.707680, 34.404072, 47.518425>,  <40.714554, 34.799995, 47.574963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707680, 34.404072, 47.518425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035815, -0.141887, 0.989235,
		-0.999211, 0.011939, 0.037888,
		-0.017186, -0.989811, -0.141347,
		40.702522, 34.107128, 47.476021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341225, 34.549809, 48.101139>,  <40.714554, 34.799995, 47.574963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341225, 34.549809, 48.101139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.518059, 34.212360, 47.979240>,  <40.624161, 34.009892, 47.906101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.518059, 34.212360, 47.979240>,  <40.341225, 34.549809, 48.101139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518059, 34.212360, 47.979240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034045, -0.355287, 0.934137,
		-0.896325, -0.402596, -0.185789,
		0.442088, -0.843616, -0.304747,
		40.650684, 33.959274, 47.887817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044212, 34.003620, 48.505527>,  <40.341225, 34.549809, 48.101139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044212, 34.003620, 48.505527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386139, 33.841080, 48.376431>,  <40.591297, 33.743557, 48.298973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386139, 33.841080, 48.376431>,  <40.044212, 34.003620, 48.505527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386139, 33.841080, 48.376431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117065, -0.454914, 0.882808,
		-0.505554, -0.792421, -0.341298,
		0.854816, -0.406352, -0.322748,
		40.642586, 33.719173, 48.279606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998375, 33.316174, 48.726669>,  <40.044212, 34.003620, 48.505527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998375, 33.316174, 48.726669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.385391, 33.375214, 48.644615>,  <40.617599, 33.410637, 48.595383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.385391, 33.375214, 48.644615>,  <39.998375, 33.316174, 48.726669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385391, 33.375214, 48.644615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250523, -0.453535, 0.855303,
		0.033208, -0.878931, -0.475791,
		0.967541, 0.147600, -0.205132,
		40.675655, 33.419495, 48.583076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323860, 32.733635, 48.848698>,  <39.998375, 33.316174, 48.726669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323860, 32.733635, 48.848698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.613583, 33.009113, 48.861866>,  <40.787415, 33.174400, 48.869766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.613583, 33.009113, 48.861866>,  <40.323860, 32.733635, 48.848698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613583, 33.009113, 48.861866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441779, -0.500223, 0.744720,
		0.529354, -0.524859, -0.666564,
		0.724303, 0.688695, 0.032924,
		40.830875, 33.215721, 48.871742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938099, 32.462818, 48.687737>,  <40.323860, 32.733635, 48.848698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938099, 32.462818, 48.687737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064945, 32.775181, 48.903000>,  <41.141052, 32.962601, 49.032158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.064945, 32.775181, 48.903000>,  <40.938099, 32.462818, 48.687737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064945, 32.775181, 48.903000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459123, -0.622932, 0.633374,
		0.829845, 0.046227, -0.556076,
		0.317118, 0.780909, 0.538160,
		41.160080, 33.009453, 49.064449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703121, 32.438915, 48.837856>,  <40.938099, 32.462818, 48.687737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703121, 32.438915, 48.837856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.532242, 32.653732, 49.128811>,  <41.429714, 32.782623, 49.303383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.532242, 32.653732, 49.128811>,  <41.703121, 32.438915, 48.837856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532242, 32.653732, 49.128811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461081, -0.562627, 0.686189,
		0.777758, 0.628522, -0.007266,
		-0.427196, 0.537039, 0.727387,
		41.404083, 32.814842, 49.347027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282337, 32.668659, 49.350677>,  <41.703121, 32.438915, 48.837856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282337, 32.668659, 49.350677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.946945, 32.733799, 49.558689>,  <41.745708, 32.772884, 49.683495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.946945, 32.733799, 49.558689>,  <42.282337, 32.668659, 49.350677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946945, 32.733799, 49.558689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390335, -0.486421, 0.781687,
		0.380250, 0.858414, 0.344288,
		-0.838480, 0.162849, 0.520030,
		41.695400, 32.782654, 49.714699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483486, 32.861671, 49.975685>,  <42.282337, 32.668659, 49.350677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483486, 32.861671, 49.975685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.110260, 32.732658, 50.039379>,  <41.886322, 32.655251, 50.077595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.110260, 32.732658, 50.039379>,  <42.483486, 32.861671, 49.975685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110260, 32.732658, 50.039379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287229, -0.401619, 0.869599,
		-0.216519, 0.857133, 0.467378,
		-0.933070, -0.322529, 0.159235,
		41.830338, 32.635899, 50.087151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336086, 33.077461, 50.669552>,  <42.483486, 32.861671, 49.975685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336086, 33.077461, 50.669552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.087814, 32.776512, 50.581287>,  <41.938850, 32.595943, 50.528328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.087814, 32.776512, 50.581287>,  <42.336086, 33.077461, 50.669552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087814, 32.776512, 50.581287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119264, -0.368750, 0.921846,
		-0.774942, 0.545852, 0.318606,
		-0.620677, -0.752375, -0.220660,
		41.901611, 32.550800, 50.515091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744854, 33.109524, 51.224766>,  <42.336086, 33.077461, 50.669552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744854, 33.109524, 51.224766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.789227, 32.754726, 51.045460>,  <41.815849, 32.541847, 50.937874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.789227, 32.754726, 51.045460>,  <41.744854, 33.109524, 51.224766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789227, 32.754726, 51.045460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059472, -0.444318, 0.893893,
		-0.992047, -0.125821, 0.003461,
		0.110932, -0.886990, -0.448268,
		41.822506, 32.488628, 50.910980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061378, 33.488293, 51.519348>,  <41.744854, 33.109524, 51.224766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061378, 33.488293, 51.519348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.266884, 33.415928, 51.854805>,  <41.390186, 33.372509, 52.056080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.266884, 33.415928, 51.854805>,  <41.061378, 33.488293, 51.519348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266884, 33.415928, 51.854805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337553, 0.856051, 0.391453,
		-0.788736, -0.484200, 0.378743,
		0.513765, -0.180908, 0.838641,
		41.421013, 33.361656, 52.106396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677582, 33.962910, 51.964214>,  <41.061378, 33.488293, 51.519348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677582, 33.962910, 51.964214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.031532, 33.895149, 52.137791>,  <41.243900, 33.854492, 52.241936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.031532, 33.895149, 52.137791>,  <40.677582, 33.962910, 51.964214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031532, 33.895149, 52.137791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025340, 0.947661, 0.318271,
		-0.465141, -0.270634, 0.842853,
		0.884874, -0.169399, 0.433938,
		41.296993, 33.844330, 52.267971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092949, 34.117043, 51.520184>,  <40.677582, 33.962910, 51.964214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092949, 34.117043, 51.520184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.926517, 34.464916, 51.626408>,  <39.826660, 34.673641, 51.690144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.926517, 34.464916, 51.626408>,  <40.092949, 34.117043, 51.520184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926517, 34.464916, 51.626408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236115, 0.385356, -0.892048,
		-0.878138, -0.308460, -0.365685,
		-0.416080, 0.869686, 0.265564,
		39.801693, 34.725822, 51.706078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814857, 34.267799, 50.907192>,  <40.092949, 34.117043, 51.520184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814857, 34.267799, 50.907192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.822273, 34.612419, 51.110123>,  <39.826725, 34.819191, 51.231880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.822273, 34.612419, 51.110123>,  <39.814857, 34.267799, 50.907192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822273, 34.612419, 51.110123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096189, 0.503526, -0.858609,
		-0.995190, 0.064720, -0.073535,
		0.018543, 0.861552, 0.507330,
		39.827835, 34.870884, 51.262321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308014, 34.625462, 50.760136>,  <39.814857, 34.267799, 50.907192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308014, 34.625462, 50.760136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581188, 34.894215, 50.874798>,  <39.745094, 35.055466, 50.943596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581188, 34.894215, 50.874798>,  <39.308014, 34.625462, 50.760136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581188, 34.894215, 50.874798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036374, 0.423209, -0.905302,
		-0.729574, 0.607835, 0.313463,
		0.682934, 0.671886, 0.286653,
		39.786068, 35.095779, 50.960793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110241, 35.130829, 50.336082>,  <39.308014, 34.625462, 50.760136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110241, 35.130829, 50.336082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467125, 35.260174, 50.462196>,  <39.681255, 35.337780, 50.537865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.467125, 35.260174, 50.462196>,  <39.110241, 35.130829, 50.336082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467125, 35.260174, 50.462196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136663, 0.472076, -0.870901,
		-0.430453, 0.820112, 0.376998,
		0.892207, 0.323360, 0.315285,
		39.734787, 35.357182, 50.556782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046631, 35.819897, 50.342358>,  <39.110241, 35.130829, 50.336082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046631, 35.819897, 50.342358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.437386, 35.738529, 50.316082>,  <39.671837, 35.689709, 50.300316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.437386, 35.738529, 50.316082>,  <39.046631, 35.819897, 50.342358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437386, 35.738529, 50.316082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076061, 0.617969, -0.782515,
		0.199771, 0.759431, 0.619157,
		0.976886, -0.203417, -0.065689,
		39.730450, 35.677505, 50.296375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438305, 36.475922, 50.277565>,  <39.046631, 35.819897, 50.342358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438305, 36.475922, 50.277565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.660355, 36.183582, 50.118717>,  <39.793587, 36.008179, 50.023411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.660355, 36.183582, 50.118717>,  <39.438305, 36.475922, 50.277565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660355, 36.183582, 50.118717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100310, 0.415129, -0.904215,
		0.825695, 0.541789, 0.157138,
		0.555126, -0.730844, -0.397117,
		39.826893, 35.964329, 49.999580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889881, 36.814079, 49.915802>,  <39.438305, 36.475922, 50.277565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889881, 36.814079, 49.915802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.910622, 36.453617, 49.743652>,  <39.923065, 36.237339, 49.640362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.910622, 36.453617, 49.743652>,  <39.889881, 36.814079, 49.915802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910622, 36.453617, 49.743652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084785, 0.425429, -0.901012,
		0.995049, 0.083211, -0.054344,
		0.051855, -0.901158, -0.430378,
		39.926178, 36.183270, 49.614540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340210, 36.940250, 49.394753>,  <39.889881, 36.814079, 49.915802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340210, 36.940250, 49.394753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190250, 36.593254, 49.263966>,  <40.100273, 36.385056, 49.185493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190250, 36.593254, 49.263966>,  <40.340210, 36.940250, 49.394753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190250, 36.593254, 49.263966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034038, 0.339570, -0.939965,
		0.926441, -0.363520, -0.097777,
		-0.374898, -0.867494, -0.326965,
		40.077782, 36.333008, 49.165874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755188, 36.739048, 48.831280>,  <40.340210, 36.940250, 49.394753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755188, 36.739048, 48.831280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.409046, 36.539997, 48.807503>,  <40.201363, 36.420567, 48.793236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.409046, 36.539997, 48.807503>,  <40.755188, 36.739048, 48.831280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409046, 36.539997, 48.807503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107759, 0.300587, -0.947647,
		0.489444, -0.813642, -0.313737,
		-0.865351, -0.497628, -0.059443,
		40.149441, 36.390709, 48.789669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806686, 36.284622, 48.203728>,  <40.755188, 36.739048, 48.831280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806686, 36.284622, 48.203728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.427307, 36.387894, 48.277252>,  <40.199680, 36.449856, 48.321369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.427307, 36.387894, 48.277252>,  <40.806686, 36.284622, 48.203728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427307, 36.387894, 48.277252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146459, 0.157295, -0.976631,
		-0.281061, -0.953206, -0.111373,
		-0.948448, 0.258181, 0.183815,
		40.142773, 36.465347, 48.332397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406528, 36.092850, 47.566715>,  <40.806686, 36.284622, 48.203728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406528, 36.092850, 47.566715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.107166, 36.289639, 47.744637>,  <39.927547, 36.407711, 47.851387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.107166, 36.289639, 47.744637>,  <40.406528, 36.092850, 47.566715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107166, 36.289639, 47.744637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239815, 0.424543, -0.873070,
		-0.618362, -0.760085, -0.199750,
		-0.748410, 0.491970, 0.444801,
		39.882645, 36.437229, 47.878078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826248, 35.798893, 47.232277>,  <40.406528, 36.092850, 47.566715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826248, 35.798893, 47.232277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.745159, 36.157307, 47.390274>,  <39.696507, 36.372356, 47.485073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.745159, 36.157307, 47.390274>,  <39.826248, 35.798893, 47.232277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745159, 36.157307, 47.390274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402706, 0.291398, -0.867707,
		-0.892599, -0.334968, 0.301767,
		-0.202720, 0.896038, 0.394995,
		39.684341, 36.426117, 47.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318989, 35.960911, 46.867085>,  <39.826248, 35.798893, 47.232277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318989, 35.960911, 46.867085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460983, 36.296349, 47.032372>,  <39.546181, 36.497612, 47.131542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460983, 36.296349, 47.032372>,  <39.318989, 35.960911, 46.867085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460983, 36.296349, 47.032372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165245, 0.491329, -0.855155,
		-0.920151, 0.235287, 0.312989,
		0.354987, 0.838592, 0.413217,
		39.567478, 36.547928, 47.156338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856884, 36.551647, 46.667927>,  <39.318989, 35.960911, 46.867085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856884, 36.551647, 46.667927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221825, 36.688820, 46.757378>,  <39.440788, 36.771122, 46.811050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221825, 36.688820, 46.757378>,  <38.856884, 36.551647, 46.667927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221825, 36.688820, 46.757378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062134, 0.423925, -0.903563,
		-0.404661, 0.838264, 0.365462,
		0.912354, 0.342929, 0.223630,
		39.495529, 36.791698, 46.824467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222061, 36.849770, 46.851639>,  <38.856884, 36.551647, 46.667927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222061, 36.849770, 46.851639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963699, 36.553406, 46.778034>,  <37.808681, 36.375587, 46.733871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963699, 36.553406, 46.778034>,  <38.222061, 36.849770, 46.851639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963699, 36.553406, 46.778034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198339, -0.069904, 0.977637,
		-0.737207, 0.667954, -0.101801,
		-0.645901, -0.740912, -0.184015,
		37.769928, 36.331131, 46.722828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613289, 36.829159, 47.408600>,  <38.222061, 36.849770, 46.851639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613289, 36.829159, 47.408600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573261, 36.465527, 47.246834>,  <37.549244, 36.247345, 47.149773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573261, 36.465527, 47.246834>,  <37.613289, 36.829159, 47.408600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573261, 36.465527, 47.246834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384076, -0.339660, 0.858555,
		-0.917862, 0.241246, -0.315166,
		-0.100074, -0.909083, -0.404418,
		37.543240, 36.192802, 47.125507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944038, 36.575581, 47.500042>,  <37.613289, 36.829159, 47.408600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944038, 36.575581, 47.500042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150429, 36.239086, 47.435432>,  <37.274261, 36.037189, 47.396667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.150429, 36.239086, 47.435432>,  <36.944038, 36.575581, 47.500042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150429, 36.239086, 47.435432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469297, -0.435358, 0.768260,
		-0.716610, -0.320599, -0.619424,
		0.515975, -0.841237, -0.161525,
		37.305222, 35.986713, 47.386974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441322, 36.027977, 47.468285>,  <36.944038, 36.575581, 47.500042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441322, 36.027977, 47.468285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792698, 35.862606, 47.564144>,  <37.003521, 35.763386, 47.621658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792698, 35.862606, 47.564144>,  <36.441322, 36.027977, 47.468285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792698, 35.862606, 47.564144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435531, -0.486309, 0.757507,
		-0.196627, -0.769796, -0.607250,
		0.878436, -0.413422, 0.239648,
		37.056229, 35.738579, 47.636040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373512, 35.278210, 47.564823>,  <36.441322, 36.027977, 47.468285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373512, 35.278210, 47.564823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705379, 35.397686, 47.753479>,  <36.904499, 35.469372, 47.866673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705379, 35.397686, 47.753479>,  <36.373512, 35.278210, 47.564823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705379, 35.397686, 47.753479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305240, -0.464648, 0.831223,
		0.467426, -0.833597, -0.294327,
		0.829663, 0.298695, 0.471636,
		36.954277, 35.487293, 47.894970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535622, 34.761631, 48.133835>,  <36.373512, 35.278210, 47.564823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535622, 34.761631, 48.133835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803204, 35.039078, 48.240719>,  <36.963753, 35.205544, 48.304848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803204, 35.039078, 48.240719>,  <36.535622, 34.761631, 48.133835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803204, 35.039078, 48.240719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154965, -0.221445, 0.962782,
		0.726969, -0.685466, -0.040652,
		0.668956, 0.693613, 0.267206,
		37.003891, 35.247162, 48.320881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067772, 34.444839, 48.463768>,  <36.535622, 34.761631, 48.133835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067772, 34.444839, 48.463768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099106, 34.818943, 48.601845>,  <37.117905, 35.043404, 48.684692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099106, 34.818943, 48.601845>,  <37.067772, 34.444839, 48.463768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099106, 34.818943, 48.601845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253243, -0.316233, 0.914256,
		0.964226, -0.159037, 0.212075,
		0.078335, 0.935256, 0.345195,
		37.122608, 35.099522, 48.705402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240818, 33.718155, 48.696091>,  <37.067772, 34.444839, 48.463768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240818, 33.718155, 48.696091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120617, 33.359825, 48.827049>,  <37.048496, 33.144825, 48.905624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120617, 33.359825, 48.827049>,  <37.240818, 33.718155, 48.696091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120617, 33.359825, 48.827049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403682, -0.191539, -0.894625,
		0.864139, -0.401004, -0.304070,
		-0.300507, -0.895828, 0.327395,
		37.030464, 33.091076, 48.925266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398193, 33.294930, 48.112717>,  <37.240818, 33.718155, 48.696091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398193, 33.294930, 48.112717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128887, 33.090183, 48.326149>,  <36.967304, 32.967335, 48.454208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128887, 33.090183, 48.326149>,  <37.398193, 33.294930, 48.112717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128887, 33.090183, 48.326149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557381, -0.122828, -0.821121,
		0.485845, -0.850237, -0.202610,
		-0.673262, -0.511869, 0.533581,
		36.926910, 32.936623, 48.486225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458134, 32.538910, 47.909122>,  <37.398193, 33.294930, 48.112717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458134, 32.538910, 47.909122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099876, 32.607170, 48.073410>,  <36.884922, 32.648129, 48.171982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099876, 32.607170, 48.073410>,  <37.458134, 32.538910, 47.909122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099876, 32.607170, 48.073410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444662, -0.323548, -0.835220,
		-0.009645, -0.930695, 0.365668,
		-0.895647, 0.170654, 0.410724,
		36.831181, 32.658367, 48.196629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077610, 31.918606, 47.753284>,  <37.458134, 32.538910, 47.909122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077610, 31.918606, 47.753284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.777416, 32.171932, 47.828850>,  <36.597301, 32.323929, 47.874187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.777416, 32.171932, 47.828850>,  <37.077610, 31.918606, 47.753284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777416, 32.171932, 47.828850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500461, -0.357899, -0.788319,
		-0.431647, -0.686160, 0.585547,
		-0.750480, 0.633319, 0.188911,
		36.552273, 32.361927, 47.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513748, 31.481903, 47.627224>,  <37.077610, 31.918606, 47.753284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513748, 31.481903, 47.627224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388813, 31.861517, 47.610329>,  <36.313854, 32.089283, 47.600193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388813, 31.861517, 47.610329>,  <36.513748, 31.481903, 47.627224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388813, 31.861517, 47.610329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496249, -0.200907, -0.844614,
		-0.810052, -0.242844, 0.533707,
		-0.312335, 0.949033, -0.042234,
		36.295113, 32.146225, 47.597660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923508, 31.485315, 47.119736>,  <36.513748, 31.481903, 47.627224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923508, 31.485315, 47.119736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954788, 31.881809, 47.162319>,  <35.973557, 32.119705, 47.187870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954788, 31.881809, 47.162319>,  <35.923508, 31.485315, 47.119736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954788, 31.881809, 47.162319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473415, 0.130903, -0.871058,
		-0.877361, 0.017720, 0.479504,
		0.078204, 0.991237, 0.106460,
		35.978249, 32.179180, 47.194256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220081, 31.878996, 47.127525>,  <35.923508, 31.485315, 47.119736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220081, 31.878996, 47.127525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502502, 32.126656, 46.990040>,  <35.671955, 32.275253, 46.907551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.502502, 32.126656, 46.990040>,  <35.220081, 31.878996, 47.127525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502502, 32.126656, 46.990040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471515, 0.048901, -0.880501,
		-0.528354, 0.783749, 0.326465,
		0.706056, 0.619150, -0.343712,
		35.714321, 32.312401, 46.886925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.508900, 29.220800, 50.069790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.618759, 29.604471, 50.096775>,  <41.684673, 29.834673, 50.112968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.618759, 29.604471, 50.096775>,  <41.508900, 29.220800, 50.069790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618759, 29.604471, 50.096775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050796, 0.084541, -0.995125,
		-0.960203, 0.269881, 0.071941,
		0.274647, 0.959175, 0.067467,
		41.701153, 29.892223, 50.117016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069679, 29.507689, 49.692772>,  <41.508900, 29.220800, 50.069790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069679, 29.507689, 49.692772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.370045, 29.771732, 49.700661>,  <41.550262, 29.930159, 49.705395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.370045, 29.771732, 49.700661>,  <41.069679, 29.507689, 49.692772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370045, 29.771732, 49.700661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046159, 0.082249, -0.995542,
		-0.658790, 0.746652, 0.092231,
		0.750909, 0.660111, 0.019720,
		41.595318, 29.969765, 49.706577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888397, 30.185537, 49.273483>,  <41.069679, 29.507689, 49.692772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888397, 30.185537, 49.273483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.286182, 30.152075, 49.298912>,  <41.524853, 30.131996, 49.314171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.286182, 30.152075, 49.298912>,  <40.888397, 30.185537, 49.273483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286182, 30.152075, 49.298912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091820, 0.397787, -0.912872,
		0.051080, 0.913656, 0.403266,
		0.994465, -0.083657, 0.063573,
		41.584522, 30.126978, 49.317986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130898, 30.903015, 49.096943>,  <40.888397, 30.185537, 49.273483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130898, 30.903015, 49.096943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.412762, 30.624762, 49.041016>,  <41.581879, 30.457809, 49.007458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.412762, 30.624762, 49.041016>,  <41.130898, 30.903015, 49.096943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412762, 30.624762, 49.041016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062812, 0.257442, -0.964250,
		0.706760, 0.670686, 0.225103,
		0.704659, -0.695632, -0.139823,
		41.624161, 30.416071, 48.999069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630093, 31.220251, 48.707775>,  <41.130898, 30.903015, 49.096943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630093, 31.220251, 48.707775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.728085, 30.836670, 48.650650>,  <41.786880, 30.606522, 48.616375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.728085, 30.836670, 48.650650>,  <41.630093, 31.220251, 48.707775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728085, 30.836670, 48.650650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164433, 0.186266, -0.968642,
		0.955483, 0.213810, 0.203314,
		0.244976, -0.958952, -0.142817,
		41.801579, 30.548985, 48.607803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232258, 31.251705, 48.191700>,  <41.630093, 31.220251, 48.707775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232258, 31.251705, 48.191700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.039631, 30.901514, 48.175552>,  <41.924053, 30.691399, 48.165863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.039631, 30.901514, 48.175552>,  <42.232258, 31.251705, 48.191700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039631, 30.901514, 48.175552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132115, -0.026979, -0.990867,
		0.866394, -0.482503, 0.128656,
		-0.481567, -0.875479, -0.040371,
		41.895161, 30.638870, 48.163441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556236, 30.934376, 47.574646>,  <42.232258, 31.251705, 48.191700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556236, 30.934376, 47.574646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.235889, 30.719404, 47.680305>,  <42.043682, 30.590422, 47.743702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.235889, 30.719404, 47.680305>,  <42.556236, 30.934376, 47.574646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235889, 30.719404, 47.680305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250989, -0.099251, -0.962888,
		0.543702, -0.837448, -0.055401,
		-0.800870, -0.537429, 0.264153,
		41.995628, 30.558176, 47.759552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429356, 30.668158, 46.964806>,  <42.556236, 30.934376, 47.574646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429356, 30.668158, 46.964806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.084671, 30.587503, 47.151051>,  <41.877861, 30.539112, 47.262798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.084671, 30.587503, 47.151051>,  <42.429356, 30.668158, 46.964806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084671, 30.587503, 47.151051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472851, -0.013694, -0.881036,
		0.184021, -0.979366, -0.083542,
		-0.861713, -0.201632, 0.465614,
		41.826157, 30.527014, 47.290733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114994, 30.067871, 46.592228>,  <42.429356, 30.668158, 46.964806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114994, 30.067871, 46.592228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.804451, 30.240774, 46.775715>,  <41.618126, 30.344517, 46.885807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.804451, 30.240774, 46.775715>,  <42.114994, 30.067871, 46.592228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804451, 30.240774, 46.775715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526210, -0.043901, -0.849221,
		-0.346947, -0.900679, 0.261543,
		-0.776358, 0.432261, 0.458715,
		41.571545, 30.370453, 46.913330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547546, 29.692783, 46.490459>,  <42.114994, 30.067871, 46.592228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547546, 29.692783, 46.490459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.387844, 30.049616, 46.575104>,  <41.292023, 30.263716, 46.625889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.387844, 30.049616, 46.575104>,  <41.547546, 29.692783, 46.490459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387844, 30.049616, 46.575104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436870, 0.017808, -0.899349,
		-0.806062, -0.451520, 0.382614,
		-0.399260, 0.892083, 0.211610,
		41.268066, 30.317242, 46.638588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862103, 29.696548, 46.116009>,  <41.547546, 29.692783, 46.490459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862103, 29.696548, 46.116009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.923004, 30.076982, 46.223534>,  <40.959545, 30.305243, 46.288048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.923004, 30.076982, 46.223534>,  <40.862103, 29.696548, 46.116009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923004, 30.076982, 46.223534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459279, 0.308917, -0.832847,
		-0.875147, 0.003345, 0.483847,
		0.152255, 0.951083, 0.268811,
		40.968681, 30.362307, 46.304176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295757, 30.026251, 45.920681>,  <40.862103, 29.696548, 46.116009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295757, 30.026251, 45.920681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.573261, 30.314331, 45.918999>,  <40.739761, 30.487179, 45.917988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.573261, 30.314331, 45.918999>,  <40.295757, 30.026251, 45.920681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573261, 30.314331, 45.918999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428935, 0.408477, -0.805706,
		-0.578548, 0.560768, 0.592301,
		0.693756, 0.720199, -0.004210,
		40.781387, 30.530390, 45.917736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627430, 30.414127, 46.199661>,  <40.295757, 30.026251, 45.920681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627430, 30.414127, 46.199661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.236355, 30.335413, 46.229080>,  <39.001709, 30.288183, 46.246731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.236355, 30.335413, 46.229080>,  <39.627430, 30.414127, 46.199661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236355, 30.335413, 46.229080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075728, -0.003566, 0.997122,
		-0.195959, 0.980440, 0.018389,
		-0.977684, -0.196787, 0.073548,
		38.943050, 30.276377, 46.251144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312332, 30.983866, 46.597919>,  <39.627430, 30.414127, 46.199661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312332, 30.983866, 46.597919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.120331, 30.634361, 46.629246>,  <39.005131, 30.424658, 46.648041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.120331, 30.634361, 46.629246>,  <39.312332, 30.983866, 46.597919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120331, 30.634361, 46.629246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055156, 0.119154, 0.991343,
		-0.875530, 0.471530, -0.105387,
		-0.480005, -0.873763, 0.078316,
		38.976330, 30.372232, 46.652740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704910, 31.098204, 47.161259>,  <39.312332, 30.983866, 46.597919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704910, 31.098204, 47.161259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.731350, 30.699749, 47.138115>,  <38.747211, 30.460676, 47.124229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.731350, 30.699749, 47.138115>,  <38.704910, 31.098204, 47.161259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731350, 30.699749, 47.138115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106818, -0.064712, 0.992171,
		-0.992079, -0.059398, -0.110683,
		0.066095, -0.996135, -0.057855,
		38.751179, 30.400909, 47.120758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090401, 30.769676, 47.552814>,  <38.704910, 31.098204, 47.161259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090401, 30.769676, 47.552814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377460, 30.491430, 47.539520>,  <38.549694, 30.324484, 47.531544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377460, 30.491430, 47.539520>,  <38.090401, 30.769676, 47.552814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377460, 30.491430, 47.539520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044846, -0.093780, 0.994582,
		-0.694962, -0.712269, -0.098497,
		0.717647, -0.695614, -0.033231,
		38.592754, 30.282745, 47.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829193, 30.386389, 48.154957>,  <38.090401, 30.769676, 47.552814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829193, 30.386389, 48.154957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190536, 30.257486, 48.041752>,  <38.407341, 30.180145, 47.973831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190536, 30.257486, 48.041752>,  <37.829193, 30.386389, 48.154957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190536, 30.257486, 48.041752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206411, -0.251757, 0.945523,
		-0.375949, -0.912562, -0.160910,
		0.903359, -0.322255, -0.283011,
		38.461544, 30.160810, 47.956848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895607, 29.632862, 48.344345>,  <37.829193, 30.386389, 48.154957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895607, 29.632862, 48.344345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.260014, 29.795042, 48.314259>,  <38.478657, 29.892349, 48.296207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.260014, 29.795042, 48.314259>,  <37.895607, 29.632862, 48.344345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260014, 29.795042, 48.314259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218510, -0.319952, 0.921892,
		0.349715, -0.856295, -0.380076,
		0.911017, 0.405450, -0.075217,
		38.533318, 29.916677, 48.291695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330441, 29.030029, 48.635918>,  <37.895607, 29.632862, 48.344345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330441, 29.030029, 48.635918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543018, 29.368652, 48.647942>,  <38.670567, 29.571827, 48.655155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.543018, 29.368652, 48.647942>,  <38.330441, 29.030029, 48.635918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543018, 29.368652, 48.647942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349706, -0.251583, 0.902448,
		0.771536, -0.469092, -0.429749,
		0.531448, 0.846557, 0.030061,
		38.702454, 29.622620, 48.656960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978519, 28.882351, 48.861740>,  <38.330441, 29.030029, 48.635918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978519, 28.882351, 48.861740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942780, 29.273016, 48.939865>,  <38.921337, 29.507416, 48.986740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.942780, 29.273016, 48.939865>,  <38.978519, 28.882351, 48.861740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942780, 29.273016, 48.939865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377874, -0.148192, 0.913920,
		0.921535, 0.155462, -0.355814,
		-0.089351, 0.976663, 0.195309,
		38.915974, 29.566015, 48.998459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555973, 29.029741, 49.090374>,  <38.978519, 28.882351, 48.861740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555973, 29.029741, 49.090374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.342289, 29.346416, 49.208927>,  <39.214077, 29.536423, 49.280060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.342289, 29.346416, 49.208927>,  <39.555973, 29.029741, 49.090374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342289, 29.346416, 49.208927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441600, -0.037609, 0.896424,
		0.720836, 0.609764, -0.329519,
		-0.534214, 0.791690, 0.296382,
		39.182026, 29.583923, 49.297840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859974, 29.515110, 49.432583>,  <39.555973, 29.029741, 49.090374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859974, 29.515110, 49.432583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.510910, 29.653322, 49.570606>,  <39.301472, 29.736250, 49.653419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.510910, 29.653322, 49.570606>,  <39.859974, 29.515110, 49.432583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510910, 29.653322, 49.570606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412035, 0.141773, 0.900071,
		0.262080, 0.927637, -0.266091,
		-0.872663, 0.345529, 0.345063,
		39.249111, 29.756981, 49.674126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099289, 30.039946, 49.867424>,  <39.859974, 29.515110, 49.432583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099289, 30.039946, 49.867424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.726292, 29.982771, 50.000107>,  <39.502495, 29.948467, 50.079716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.726292, 29.982771, 50.000107>,  <40.099289, 30.039946, 49.867424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726292, 29.982771, 50.000107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289436, 0.253685, 0.922969,
		-0.216074, 0.956668, -0.195188,
		-0.932491, -0.142935, 0.331709,
		39.446545, 29.939890, 50.099621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903172, 30.560827, 50.370956>,  <40.099289, 30.039946, 49.867424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903172, 30.560827, 50.370956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.613136, 30.296598, 50.448818>,  <39.439114, 30.138062, 50.495537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.613136, 30.296598, 50.448818>,  <39.903172, 30.560827, 50.370956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613136, 30.296598, 50.448818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170937, 0.446460, 0.878325,
		-0.667103, 0.603589, -0.436639,
		-0.725089, -0.660571, 0.194659,
		39.395611, 30.098427, 50.507217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403683, 30.974598, 50.577194>,  <39.903172, 30.560827, 50.370956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403683, 30.974598, 50.577194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.343987, 30.606398, 50.721638>,  <39.308170, 30.385477, 50.808304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.343987, 30.606398, 50.721638>,  <39.403683, 30.974598, 50.577194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343987, 30.606398, 50.721638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096743, 0.349857, 0.931794,
		-0.984057, 0.173997, 0.036840,
		-0.149241, -0.920503, 0.361113,
		39.299213, 30.330246, 50.829971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948582, 31.026991, 51.190269>,  <39.403683, 30.974598, 50.577194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948582, 31.026991, 51.190269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.122124, 30.667166, 51.210518>,  <39.226250, 30.451271, 51.222668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.122124, 30.667166, 51.210518>,  <38.948582, 31.026991, 51.190269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122124, 30.667166, 51.210518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176627, 0.140011, 0.974269,
		-0.883502, -0.413746, 0.219631,
		0.433851, -0.899561, 0.050621,
		39.252277, 30.397297, 51.225704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712704, 31.717520, 51.052876>,  <38.948582, 31.026991, 51.190269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712704, 31.717520, 51.052876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403122, 31.892117, 51.236382>,  <38.217373, 31.996874, 51.346485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.403122, 31.892117, 51.236382>,  <38.712704, 31.717520, 51.052876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403122, 31.892117, 51.236382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403044, 0.219227, -0.888535,
		-0.488411, -0.872591, 0.006253,
		-0.773957, 0.436491, 0.458766,
		38.170933, 32.023064, 51.374012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996189, 31.409761, 50.767155>,  <38.712704, 31.717520, 51.052876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996189, 31.409761, 50.767155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.980324, 31.784864, 50.905163>,  <37.970806, 32.009926, 50.987968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.980324, 31.784864, 50.905163>,  <37.996189, 31.409761, 50.767155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980324, 31.784864, 50.905163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377961, 0.305555, -0.873946,
		-0.924972, -0.165064, 0.342318,
		-0.039660, 0.937758, 0.345017,
		37.968426, 32.066193, 51.008667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263664, 31.677362, 50.687283>,  <37.996189, 31.409761, 50.767155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263664, 31.677362, 50.687283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.511856, 31.990934, 50.695839>,  <37.660770, 32.179077, 50.700974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.511856, 31.990934, 50.695839>,  <37.263664, 31.677362, 50.687283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511856, 31.990934, 50.695839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461576, 0.387113, -0.798180,
		-0.633998, 0.485382, 0.602039,
		0.620479, 0.783931, 0.021388,
		37.697998, 32.226112, 50.702255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872837, 32.307056, 50.612156>,  <37.263664, 31.677362, 50.687283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872837, 32.307056, 50.612156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.243710, 32.393246, 50.489578>,  <37.466232, 32.444958, 50.416031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.243710, 32.393246, 50.489578>,  <36.872837, 32.307056, 50.612156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243710, 32.393246, 50.489578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374587, 0.542787, -0.751710,
		0.004363, 0.811761, 0.583974,
		0.927181, 0.215469, -0.306443,
		37.521866, 32.457886, 50.397644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757153, 32.982372, 50.510857>,  <36.872837, 32.307056, 50.612156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757153, 32.982372, 50.510857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085087, 32.878361, 50.306797>,  <37.281849, 32.815952, 50.184361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085087, 32.878361, 50.306797>,  <36.757153, 32.982372, 50.510857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085087, 32.878361, 50.306797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399962, 0.377500, -0.835179,
		0.409752, 0.888751, 0.205487,
		0.819837, -0.260029, -0.510148,
		37.331039, 32.800350, 50.153751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777550, 33.502514, 50.034931>,  <36.757153, 32.982372, 50.510857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777550, 33.502514, 50.034931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.044510, 33.237549, 49.898819>,  <37.204685, 33.078571, 49.817150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.044510, 33.237549, 49.898819>,  <36.777550, 33.502514, 50.034931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044510, 33.237549, 49.898819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227040, 0.254194, -0.940127,
		0.709247, 0.704697, 0.019255,
		0.667399, -0.662410, -0.340280,
		37.244728, 33.038826, 49.796734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095222, 33.804550, 49.384304>,  <36.777550, 33.502514, 50.034931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095222, 33.804550, 49.384304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113640, 33.404976, 49.385410>,  <37.124691, 33.165230, 49.386074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113640, 33.404976, 49.385410>,  <37.095222, 33.804550, 49.384304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113640, 33.404976, 49.385410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340093, -0.018281, -0.940214,
		0.939264, 0.042346, -0.340573,
		0.046041, -0.998936, 0.002769,
		37.127453, 33.105293, 49.386242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617233, 34.271114, 48.950710>,  <37.095222, 33.804550, 49.384304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617233, 34.271114, 48.950710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.408016, 34.600304, 49.039379>,  <37.282486, 34.797817, 49.092579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.408016, 34.600304, 49.039379>,  <37.617233, 34.271114, 48.950710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408016, 34.600304, 49.039379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129757, -0.333942, 0.933620,
		0.842371, 0.459560, 0.281453,
		-0.523043, 0.822975, 0.221672,
		37.251102, 34.847195, 49.105881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860111, 34.517265, 49.541420>,  <37.617233, 34.271114, 48.950710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860111, 34.517265, 49.541420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507385, 34.705807, 49.547421>,  <37.295750, 34.818932, 49.551022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507385, 34.705807, 49.547421>,  <37.860111, 34.517265, 49.541420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507385, 34.705807, 49.547421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086299, -0.192563, 0.977482,
		0.463631, 0.860665, 0.210482,
		-0.881816, 0.471355, 0.015004,
		37.242840, 34.847214, 49.551922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877686, 35.040417, 50.029545>,  <37.860111, 34.517265, 49.541420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877686, 35.040417, 50.029545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.481724, 34.989094, 50.005455>,  <37.244148, 34.958302, 49.991001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.481724, 34.989094, 50.005455>,  <37.877686, 35.040417, 50.029545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481724, 34.989094, 50.005455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028506, -0.235973, 0.971341,
		-0.138839, 0.963252, 0.229933,
		-0.989905, -0.128306, -0.060220,
		37.184753, 34.950603, 49.987389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599796, 35.126614, 50.640297>,  <37.877686, 35.040417, 50.029545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599796, 35.126614, 50.640297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.245289, 35.021126, 50.487991>,  <37.032585, 34.957832, 50.396606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.245289, 35.021126, 50.487991>,  <37.599796, 35.126614, 50.640297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245289, 35.021126, 50.487991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343933, -0.175897, 0.922372,
		-0.310220, 0.948427, 0.065191,
		-0.886269, -0.263717, -0.380762,
		36.979408, 34.942009, 50.373764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159199, 35.668789, 50.820377>,  <37.599796, 35.126614, 50.640297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159199, 35.668789, 50.820377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979553, 35.313293, 50.783623>,  <36.871765, 35.099998, 50.761570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.979553, 35.313293, 50.783623>,  <37.159199, 35.668789, 50.820377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979553, 35.313293, 50.783623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171658, -0.015093, 0.985041,
		-0.876828, 0.458171, -0.145780,
		-0.449117, -0.888736, -0.091883,
		36.844818, 35.046673, 50.756058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796501, 35.687222, 51.338917>,  <37.159199, 35.668789, 50.820377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796501, 35.687222, 51.338917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790314, 35.291000, 51.284412>,  <36.786602, 35.053268, 51.251709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.790314, 35.291000, 51.284412>,  <36.796501, 35.687222, 51.338917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790314, 35.291000, 51.284412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086308, -0.137091, 0.986791,
		-0.996148, 0.003509, 0.087614,
		-0.015473, -0.990552, -0.136260,
		36.785671, 34.993835, 51.243534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481106, 35.566868, 51.912621>,  <36.796501, 35.687222, 51.338917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481106, 35.566868, 51.912621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620857, 35.215710, 51.781635>,  <36.704708, 35.005013, 51.703045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.620857, 35.215710, 51.781635>,  <36.481106, 35.566868, 51.912621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620857, 35.215710, 51.781635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164276, -0.286678, 0.943837,
		-0.922468, -0.383550, 0.044059,
		0.349378, -0.877898, -0.327459,
		36.725670, 34.952339, 51.683399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164276, 35.074795, 52.316349>,  <36.481106, 35.566868, 51.912621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164276, 35.074795, 52.316349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488735, 34.891632, 52.170826>,  <36.683411, 34.781734, 52.083511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488735, 34.891632, 52.170826>,  <36.164276, 35.074795, 52.316349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488735, 34.891632, 52.170826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193710, -0.376588, 0.905902,
		-0.551823, -0.805297, -0.216769,
		0.811152, -0.457907, -0.363804,
		36.732082, 34.754261, 52.061684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153442, 34.394798, 52.547333>,  <36.164276, 35.074795, 52.316349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153442, 34.394798, 52.547333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535057, 34.459793, 52.446609>,  <36.764027, 34.498791, 52.386177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535057, 34.459793, 52.446609>,  <36.153442, 34.394798, 52.547333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535057, 34.459793, 52.446609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299625, -0.500977, 0.811940,
		0.005783, -0.850070, -0.526638,
		0.954040, 0.162490, -0.251805,
		36.821270, 34.508541, 52.371067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.777271, 35.718990, 37.214752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844990, 35.332497, 37.292446>,  <34.885620, 35.100601, 37.339062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844990, 35.332497, 37.292446>,  <34.777271, 35.718990, 37.214752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844990, 35.332497, 37.292446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694873, -0.022742, -0.718773,
		0.698921, 0.256655, 0.667561,
		0.169295, -0.966235, 0.194238,
		34.895779, 35.042625, 37.350716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855904, 36.552483, 37.226646>,  <34.777271, 35.718990, 37.214752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855904, 36.552483, 37.226646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139847, 36.825726, 37.295303>,  <35.310215, 36.989670, 37.336498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139847, 36.825726, 37.295303>,  <34.855904, 36.552483, 37.226646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139847, 36.825726, 37.295303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348725, -0.552592, 0.756989,
		0.611955, -0.477500, -0.630480,
		0.709861, 0.683107, 0.171645,
		35.352806, 37.030659, 37.346798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452572, 36.157261, 37.452061>,  <34.855904, 36.552483, 37.226646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452572, 36.157261, 37.452061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529533, 36.530983, 37.572098>,  <35.575710, 36.755215, 37.644119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529533, 36.530983, 37.572098>,  <35.452572, 36.157261, 37.452061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529533, 36.530983, 37.572098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224445, -0.339601, 0.913398,
		0.955304, -0.108385, -0.275039,
		0.192402, 0.934304, 0.300096,
		35.587254, 36.811275, 37.662125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160908, 36.212265, 37.638805>,  <35.452572, 36.157261, 37.452061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160908, 36.212265, 37.638805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950420, 36.485600, 37.841248>,  <35.824127, 36.649601, 37.962715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950420, 36.485600, 37.841248>,  <36.160908, 36.212265, 37.638805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950420, 36.485600, 37.841248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457227, -0.274446, 0.845945,
		0.716966, 0.676556, -0.168023,
		-0.526216, 0.683339, 0.506108,
		35.792557, 36.690601, 37.993080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549732, 36.404018, 38.225941>,  <36.160908, 36.212265, 37.638805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549732, 36.404018, 38.225941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188927, 36.548519, 38.320492>,  <35.972443, 36.635220, 38.377220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188927, 36.548519, 38.320492>,  <36.549732, 36.404018, 38.225941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188927, 36.548519, 38.320492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228449, -0.065172, 0.971372,
		0.366317, 0.930187, -0.023742,
		-0.902010, 0.361254, 0.236374,
		35.918324, 36.656895, 38.391403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687218, 36.851669, 38.725182>,  <36.549732, 36.404018, 38.225941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687218, 36.851669, 38.725182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300869, 36.750286, 38.746510>,  <36.069057, 36.689457, 38.759304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300869, 36.750286, 38.746510>,  <36.687218, 36.851669, 38.725182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300869, 36.750286, 38.746510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047803, 0.027870, 0.998468,
		-0.254556, 0.966945, -0.014803,
		-0.965876, -0.253458, 0.053317,
		36.011105, 36.674248, 38.762505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470135, 37.303696, 39.326015>,  <36.687218, 36.851669, 38.725182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470135, 37.303696, 39.326015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191280, 37.023911, 39.263084>,  <36.023968, 36.856037, 39.225327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191280, 37.023911, 39.263084>,  <36.470135, 37.303696, 39.326015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191280, 37.023911, 39.263084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004611, -0.223807, 0.974623,
		-0.716927, 0.678716, 0.159248,
		-0.697133, -0.699467, -0.157324,
		35.982140, 36.814072, 39.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935471, 37.457134, 39.758244>,  <36.470135, 37.303696, 39.326015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935471, 37.457134, 39.758244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894104, 37.070770, 39.663319>,  <35.869282, 36.838951, 39.606365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894104, 37.070770, 39.663319>,  <35.935471, 37.457134, 39.758244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894104, 37.070770, 39.663319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135752, -0.250065, 0.958665,
		-0.985330, 0.066929, 0.156986,
		-0.103419, -0.965913, -0.237311,
		35.863079, 36.780998, 39.592125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355797, 37.215683, 40.265835>,  <35.935471, 37.457134, 39.758244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355797, 37.215683, 40.265835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580627, 36.918941, 40.119564>,  <35.715527, 36.740894, 40.031803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580627, 36.918941, 40.119564>,  <35.355797, 37.215683, 40.265835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580627, 36.918941, 40.119564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016301, -0.432105, 0.901676,
		-0.826924, -0.512772, -0.230784,
		0.562077, -0.741856, -0.365677,
		35.749252, 36.696384, 40.009861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006363, 36.679474, 40.720043>,  <35.355797, 37.215683, 40.265835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006363, 36.679474, 40.720043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353767, 36.528744, 40.591244>,  <35.562210, 36.438305, 40.513962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353767, 36.528744, 40.591244>,  <35.006363, 36.679474, 40.720043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353767, 36.528744, 40.591244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112565, -0.482713, 0.868514,
		-0.482713, -0.790563, -0.376826,
		-0.868514, 0.376826, 0.322002,
		35.614323, 36.415695, 40.494644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047951, 35.923435, 40.888142>,  <35.006363, 36.679474, 40.720043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047951, 35.923435, 40.888142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437084, 35.995068, 40.829449>,  <35.670563, 36.038048, 40.794231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437084, 35.995068, 40.829449>,  <35.047951, 35.923435, 40.888142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437084, 35.995068, 40.829449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195326, -0.294610, 0.935443,
		0.124288, -0.938688, -0.321584,
		0.972831, 0.179079, -0.146734,
		35.728935, 36.048790, 40.785427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320095, 35.389698, 41.190544>,  <35.047951, 35.923435, 40.888142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320095, 35.389698, 41.190544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629902, 35.641346, 41.164211>,  <35.815784, 35.792336, 41.148411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629902, 35.641346, 41.164211>,  <35.320095, 35.389698, 41.190544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629902, 35.641346, 41.164211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166370, -0.102185, 0.980754,
		0.610288, -0.770560, -0.183811,
		0.774512, 0.629123, -0.065836,
		35.862255, 35.830082, 41.144459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373985, 34.684799, 40.887264>,  <35.320095, 35.389698, 41.190544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373985, 34.684799, 40.887264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064503, 34.449097, 40.980343>,  <34.878811, 34.307674, 41.036190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064503, 34.449097, 40.980343>,  <35.373985, 34.684799, 40.887264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064503, 34.449097, 40.980343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525656, 0.392070, -0.754961,
		0.353627, -0.706444, -0.613094,
		-0.773714, -0.589251, 0.232700,
		34.832390, 34.272320, 41.050152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161366, 34.211643, 40.289936>,  <35.373985, 34.684799, 40.887264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161366, 34.211643, 40.289936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849667, 34.233040, 40.539707>,  <34.662647, 34.245876, 40.689568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849667, 34.233040, 40.539707>,  <35.161366, 34.211643, 40.289936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849667, 34.233040, 40.539707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616169, 0.116586, -0.778937,
		-0.114466, -0.991739, -0.057890,
		-0.779252, 0.053492, 0.624424,
		34.615891, 34.249088, 40.727036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753674, 33.857071, 39.855686>,  <35.161366, 34.211643, 40.289936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753674, 33.857071, 39.855686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521946, 34.064800, 40.106983>,  <34.382908, 34.189438, 40.257763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521946, 34.064800, 40.106983>,  <34.753674, 33.857071, 39.855686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521946, 34.064800, 40.106983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659259, 0.154726, -0.735824,
		-0.479337, -0.840453, 0.252734,
		-0.579321, 0.519325, 0.628242,
		34.348148, 34.220596, 40.295456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087601, 33.515919, 39.852261>,  <34.753674, 33.857071, 39.855686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087601, 33.515919, 39.852261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053204, 33.894722, 39.976048>,  <34.032566, 34.122005, 40.050320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053204, 33.894722, 39.976048>,  <34.087601, 33.515919, 39.852261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053204, 33.894722, 39.976048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596192, 0.199955, -0.777543,
		-0.798223, -0.251367, 0.547408,
		-0.085992, 0.947013, 0.309471,
		34.027405, 34.178825, 40.068890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341984, 33.731110, 39.671261>,  <34.087601, 33.515919, 39.852261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341984, 33.731110, 39.671261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496399, 34.088749, 39.762089>,  <33.589050, 34.303333, 39.816586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496399, 34.088749, 39.762089>,  <33.341984, 33.731110, 39.671261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496399, 34.088749, 39.762089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604034, 0.431044, -0.670331,
		-0.697220, 0.121615, 0.706466,
		0.386041, 0.894097, 0.227073,
		33.612209, 34.356979, 39.830212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819191, 34.273254, 39.779366>,  <33.341984, 33.731110, 39.671261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819191, 34.273254, 39.779366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132271, 34.504368, 39.686798>,  <33.320118, 34.643036, 39.631260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132271, 34.504368, 39.686798>,  <32.819191, 34.273254, 39.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132271, 34.504368, 39.686798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494294, 0.351086, -0.795244,
		-0.378230, 0.736822, 0.560388,
		0.782697, 0.577782, -0.231416,
		33.367081, 34.677704, 39.617374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532833, 34.933357, 39.570358>,  <32.819191, 34.273254, 39.779366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532833, 34.933357, 39.570358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900822, 34.956837, 39.415329>,  <33.121613, 34.970924, 39.322311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900822, 34.956837, 39.415329>,  <32.532833, 34.933357, 39.570358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900822, 34.956837, 39.415329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383582, 0.338541, -0.859218,
		0.080778, 0.939119, 0.333961,
		0.919967, 0.058695, -0.387576,
		33.176811, 34.974445, 39.299057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519127, 35.542362, 39.192436>,  <32.532833, 34.933357, 39.570358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519127, 35.542362, 39.192436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824757, 35.334660, 39.039303>,  <33.008133, 35.210037, 38.947422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824757, 35.334660, 39.039303>,  <32.519127, 35.542362, 39.192436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824757, 35.334660, 39.039303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262138, 0.292333, -0.919687,
		0.589468, 0.803066, 0.087247,
		0.764075, -0.519256, -0.382835,
		33.053978, 35.178883, 38.924454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827114, 35.958176, 38.684811>,  <32.519127, 35.542362, 39.192436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827114, 35.958176, 38.684811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914772, 35.573822, 38.617073>,  <32.967365, 35.343208, 38.576431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914772, 35.573822, 38.617073>,  <32.827114, 35.958176, 38.684811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914772, 35.573822, 38.617073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300569, 0.098637, -0.948646,
		0.928243, 0.258789, -0.267197,
		0.219143, -0.960884, -0.169343,
		32.980515, 35.285557, 38.566269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123886, 36.015984, 38.137051>,  <32.827114, 35.958176, 38.684811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123886, 36.015984, 38.137051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049530, 35.622997, 38.131325>,  <33.004917, 35.387207, 38.127888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049530, 35.622997, 38.131325>,  <33.123886, 36.015984, 38.137051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049530, 35.622997, 38.131325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117637, 0.036721, -0.992378,
		0.975503, -0.182789, -0.122401,
		-0.185891, -0.982466, -0.014319,
		32.993763, 35.328259, 38.127029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500271, 35.754711, 37.602047>,  <33.123886, 36.015984, 38.137051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500271, 35.754711, 37.602047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229286, 35.468319, 37.669472>,  <33.066696, 35.296482, 37.709927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229286, 35.468319, 37.669472>,  <33.500271, 35.754711, 37.602047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229286, 35.468319, 37.669472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161741, -0.078547, -0.983702,
		0.717552, -0.693687, -0.062591,
		-0.677465, -0.715981, 0.168559,
		33.026047, 35.253525, 37.720039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581341, 35.270752, 37.086475>,  <33.500271, 35.754711, 37.602047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581341, 35.270752, 37.086475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212288, 35.186058, 37.215420>,  <32.990856, 35.135242, 37.292786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212288, 35.186058, 37.215420>,  <33.581341, 35.270752, 37.086475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212288, 35.186058, 37.215420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305612, -0.108503, -0.945954,
		0.235271, -0.971285, 0.035399,
		-0.922632, -0.211738, 0.322363,
		32.935497, 35.122536, 37.312130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382240, 34.679718, 36.727085>,  <33.581341, 35.270752, 37.086475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382240, 34.679718, 36.727085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062016, 34.886116, 36.848972>,  <32.869881, 35.009956, 36.922104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062016, 34.886116, 36.848972>,  <33.382240, 34.679718, 36.727085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062016, 34.886116, 36.848972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301494, 0.092641, -0.948957,
		-0.517886, -0.851568, 0.081405,
		-0.800560, 0.515994, 0.304720,
		32.821846, 35.040913, 36.940388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810928, 34.309914, 36.446960>,  <33.382240, 34.679718, 36.727085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810928, 34.309914, 36.446960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729607, 34.695118, 36.517712>,  <32.680813, 34.926239, 36.560162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729607, 34.695118, 36.517712>,  <32.810928, 34.309914, 36.446960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729607, 34.695118, 36.517712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071834, 0.165497, -0.983591,
		-0.976478, -0.212671, 0.035531,
		-0.203301, 0.963007, 0.176881,
		32.668617, 34.984020, 36.570774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075020, 34.047108, 37.050346>,  <32.810928, 34.309914, 36.446960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075020, 34.047108, 37.050346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211060, 34.131771, 37.416851>,  <33.292683, 34.182571, 37.636753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211060, 34.131771, 37.416851>,  <33.075020, 34.047108, 37.050346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211060, 34.131771, 37.416851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873051, 0.433131, 0.224010,
		-0.349446, -0.876127, 0.332099,
		0.340103, 0.211660, 0.916259,
		33.313091, 34.195271, 37.691730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439331, 33.367382, 37.250549>,  <33.075020, 34.047108, 37.050346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439331, 33.367382, 37.250549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809566, 33.317211, 37.107685>,  <34.031708, 33.287109, 37.021969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809566, 33.317211, 37.107685>,  <33.439331, 33.367382, 37.250549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809566, 33.317211, 37.107685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178219, -0.688016, 0.703471,
		-0.333963, -0.714774, -0.614464,
		0.925584, -0.125424, -0.357158,
		34.087242, 33.279583, 37.000538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443146, 32.613003, 37.482750>,  <33.439331, 33.367382, 37.250549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443146, 32.613003, 37.482750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787521, 32.815929, 37.467667>,  <33.994144, 32.937683, 37.458618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787521, 32.815929, 37.467667>,  <33.443146, 32.613003, 37.482750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787521, 32.815929, 37.467667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363585, -0.561794, 0.743097,
		0.355800, -0.653469, -0.668120,
		0.860937, 0.507313, -0.037705,
		34.045803, 32.968124, 37.456356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854069, 32.070351, 37.575352>,  <33.443146, 32.613003, 37.482750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854069, 32.070351, 37.575352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101372, 32.380409, 37.627354>,  <34.249752, 32.566444, 37.658554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101372, 32.380409, 37.627354>,  <33.854069, 32.070351, 37.575352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101372, 32.380409, 37.627354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618015, -0.581637, 0.528919,
		0.485607, -0.246662, -0.838656,
		0.618258, 0.775149, 0.130006,
		34.286850, 32.612953, 37.666355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546196, 31.819555, 37.567394>,  <33.854069, 32.070351, 37.575352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546196, 31.819555, 37.567394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539104, 32.148640, 37.794670>,  <34.534851, 32.346088, 37.931034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539104, 32.148640, 37.794670>,  <34.546196, 31.819555, 37.567394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539104, 32.148640, 37.794670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672561, -0.410679, 0.615633,
		0.739829, 0.393055, -0.546041,
		-0.017730, 0.822709, 0.568186,
		34.533787, 32.395454, 37.965126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111034, 31.685888, 37.859116>,  <34.546196, 31.819555, 37.567394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111034, 31.685888, 37.859116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941956, 31.989628, 38.056992>,  <34.840508, 32.171871, 38.175716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941956, 31.989628, 38.056992>,  <35.111034, 31.685888, 37.859116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941956, 31.989628, 38.056992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532750, -0.233381, 0.813456,
		0.733148, 0.607390, -0.305894,
		-0.422695, 0.759349, 0.494690,
		34.815147, 32.217434, 38.205399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644382, 32.202076, 38.078899>,  <35.111034, 31.685888, 37.859116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644382, 32.202076, 38.078899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338188, 32.284611, 38.322689>,  <35.154472, 32.334133, 38.468964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338188, 32.284611, 38.322689>,  <35.644382, 32.202076, 38.078899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338188, 32.284611, 38.322689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585026, -0.171198, 0.792739,
		0.267911, 0.963388, 0.010338,
		-0.765486, 0.206336, 0.609473,
		35.108543, 32.346512, 38.505531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945202, 32.367584, 38.624821>,  <35.644382, 32.202076, 38.078899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945202, 32.367584, 38.624821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578617, 32.307510, 38.773167>,  <35.358665, 32.271465, 38.862175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578617, 32.307510, 38.773167>,  <35.945202, 32.367584, 38.624821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578617, 32.307510, 38.773167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398572, -0.261133, 0.879176,
		-0.035189, 0.953549, 0.299176,
		-0.916462, -0.150181, 0.370869,
		35.303680, 32.262455, 38.884426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796165, 32.727810, 39.218163>,  <35.945202, 32.367584, 38.624821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796165, 32.727810, 39.218163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585026, 32.388355, 39.231968>,  <35.458344, 32.184681, 39.240250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585026, 32.388355, 39.231968>,  <35.796165, 32.727810, 39.218163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585026, 32.388355, 39.231968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502998, -0.279604, 0.817810,
		-0.684376, 0.449037, 0.574452,
		-0.527847, -0.848638, 0.034511,
		35.426670, 32.133762, 39.242321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437279, 32.741879, 39.866734>,  <35.796165, 32.727810, 39.218163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437279, 32.741879, 39.866734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444469, 32.362118, 39.741310>,  <35.448784, 32.134262, 39.666058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444469, 32.362118, 39.741310>,  <35.437279, 32.741879, 39.866734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444469, 32.362118, 39.741310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392259, -0.281767, 0.875637,
		-0.919679, -0.138734, 0.367346,
		0.017975, -0.949400, -0.313555,
		35.449863, 32.077297, 39.647243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307007, 32.491493, 40.442764>,  <35.437279, 32.741879, 39.866734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307007, 32.491493, 40.442764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422054, 32.165936, 40.240829>,  <35.491081, 31.970602, 40.119667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422054, 32.165936, 40.240829>,  <35.307007, 32.491493, 40.442764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422054, 32.165936, 40.240829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342112, -0.405026, 0.847887,
		-0.894559, -0.416577, 0.161949,
		0.287617, -0.813890, -0.504836,
		35.508339, 31.921768, 40.089378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162155, 31.923447, 40.912788>,  <35.307007, 32.491493, 40.442764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162155, 31.923447, 40.912788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436531, 31.785389, 40.656548>,  <35.601154, 31.702555, 40.502804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436531, 31.785389, 40.656548>,  <35.162155, 31.923447, 40.912788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436531, 31.785389, 40.656548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455559, -0.482786, 0.747920,
		-0.567414, -0.804855, -0.173925,
		0.685935, -0.345147, -0.640599,
		35.642311, 31.681845, 40.464367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247700, 31.368614, 41.196644>,  <35.162155, 31.923447, 40.912788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247700, 31.368614, 41.196644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567272, 31.398085, 40.957886>,  <35.759014, 31.415766, 40.814632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567272, 31.398085, 40.957886>,  <35.247700, 31.368614, 41.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567272, 31.398085, 40.957886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570820, -0.405453, 0.713983,
		-0.189412, -0.911142, -0.365983,
		0.798929, 0.073674, -0.596896,
		35.806950, 31.420187, 40.778816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520111, 30.700907, 41.172577>,  <35.247700, 31.368614, 41.196644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520111, 30.700907, 41.172577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811745, 30.957417, 41.076912>,  <35.986725, 31.111322, 41.019512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811745, 30.957417, 41.076912>,  <35.520111, 30.700907, 41.172577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811745, 30.957417, 41.076912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574384, -0.383272, 0.723315,
		0.372179, -0.664731, -0.647777,
		0.729085, 0.641276, -0.239165,
		36.030472, 31.149799, 41.005161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140072, 30.324451, 41.231632>,  <35.520111, 30.700907, 41.172577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140072, 30.324451, 41.231632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270229, 30.702070, 41.253143>,  <36.348324, 30.928642, 41.266048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270229, 30.702070, 41.253143>,  <36.140072, 30.324451, 41.231632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270229, 30.702070, 41.253143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625965, -0.257688, 0.736047,
		0.708720, -0.205846, -0.674791,
		0.325397, 0.944047, 0.053776,
		36.367847, 30.985285, 41.269276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932919, 30.267794, 41.264923>,  <36.140072, 30.324451, 41.231632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932919, 30.267794, 41.264923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820278, 30.635849, 41.373768>,  <36.752693, 30.856682, 41.439075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820278, 30.635849, 41.373768>,  <36.932919, 30.267794, 41.264923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820278, 30.635849, 41.373768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686240, -0.005086, 0.727358,
		0.670654, 0.391560, -0.630004,
		-0.281600, 0.920139, 0.272115,
		36.735798, 30.911890, 41.455402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528233, 30.625181, 41.382862>,  <36.932919, 30.267794, 41.264923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528233, 30.625181, 41.382862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238804, 30.806747, 41.590866>,  <37.065147, 30.915688, 41.715668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238804, 30.806747, 41.590866>,  <37.528233, 30.625181, 41.382862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238804, 30.806747, 41.590866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613001, 0.076256, 0.786394,
		0.317302, 0.887776, -0.333427,
		-0.723567, 0.453915, 0.520011,
		37.021732, 30.942923, 41.746868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794682, 31.235401, 41.671085>,  <37.528233, 30.625181, 41.382862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794682, 31.235401, 41.671085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476620, 31.141439, 41.894711>,  <37.285782, 31.085062, 42.028885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476620, 31.141439, 41.894711>,  <37.794682, 31.235401, 41.671085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476620, 31.141439, 41.894711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509508, 0.241138, 0.825987,
		-0.328839, 0.941633, -0.072056,
		-0.795152, -0.234903, 0.559065,
		37.238075, 31.070969, 42.062431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801537, 31.726507, 42.321419>,  <37.794682, 31.235401, 41.671085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801537, 31.726507, 42.321419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543324, 31.436426, 42.417221>,  <37.388393, 31.262377, 42.474701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543324, 31.436426, 42.417221>,  <37.801537, 31.726507, 42.321419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543324, 31.436426, 42.417221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395945, -0.049627, 0.916932,
		-0.653077, 0.686743, 0.319177,
		-0.645536, -0.725204, 0.239503,
		37.349663, 31.218864, 42.489071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577023, 31.882715, 43.028316>,  <37.801537, 31.726507, 42.321419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577023, 31.882715, 43.028316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493443, 31.497158, 42.962284>,  <37.443295, 31.265823, 42.922665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493443, 31.497158, 42.962284>,  <37.577023, 31.882715, 43.028316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493443, 31.497158, 42.962284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309304, -0.225280, 0.923894,
		-0.927725, 0.141983, 0.345207,
		-0.208946, -0.963893, -0.165082,
		37.430759, 31.207991, 42.912758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367237, 31.657190, 43.679211>,  <37.577023, 31.882715, 43.028316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367237, 31.657190, 43.679211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447605, 31.298923, 43.520512>,  <37.495827, 31.083963, 43.425293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447605, 31.298923, 43.520512>,  <37.367237, 31.657190, 43.679211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447605, 31.298923, 43.520512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360145, -0.309106, 0.880198,
		-0.911003, -0.319738, 0.260464,
		0.200922, -0.895668, -0.396749,
		37.507881, 31.030224, 43.401485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141315, 31.218748, 44.198570>,  <37.367237, 31.657190, 43.679211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141315, 31.218748, 44.198570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346310, 30.956097, 43.977230>,  <37.469307, 30.798506, 43.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346310, 30.956097, 43.977230>,  <37.141315, 31.218748, 44.198570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346310, 30.956097, 43.977230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405889, -0.382632, 0.829968,
		-0.756709, -0.649948, 0.070423,
		0.512490, -0.656628, -0.553348,
		37.500057, 30.759108, 43.811226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977116, 30.560427, 44.426445>,  <37.141315, 31.218748, 44.198570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977116, 30.560427, 44.426445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342388, 30.562651, 44.263435>,  <37.561550, 30.563986, 44.165630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342388, 30.562651, 44.263435>,  <36.977116, 30.560427, 44.426445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342388, 30.562651, 44.263435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369850, -0.431367, 0.822881,
		-0.171215, -0.902159, -0.395972,
		0.913179, 0.005561, -0.407520,
		37.616341, 30.564320, 44.141178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248302, 29.946192, 44.720486>,  <36.977116, 30.560427, 44.426445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248302, 29.946192, 44.720486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564743, 30.148832, 44.583363>,  <37.754608, 30.270416, 44.501087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564743, 30.148832, 44.583363>,  <37.248302, 29.946192, 44.720486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564743, 30.148832, 44.583363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491900, -0.193765, 0.848817,
		0.363587, -0.840125, -0.402484,
		0.791100, 0.506601, -0.342807,
		37.802074, 30.300812, 44.480522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776455, 29.567238, 44.791145>,  <37.248302, 29.946192, 44.720486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776455, 29.567238, 44.791145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940239, 29.931093, 44.763161>,  <38.038509, 30.149406, 44.746368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940239, 29.931093, 44.763161>,  <37.776455, 29.567238, 44.791145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940239, 29.931093, 44.763161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388369, -0.104398, 0.915571,
		0.825536, -0.402064, -0.396023,
		0.409462, 0.909640, -0.069965,
		38.063076, 30.203985, 44.742172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491619, 29.443373, 44.821243>,  <37.776455, 29.567238, 44.791145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491619, 29.443373, 44.821243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446255, 29.827284, 44.923977>,  <38.419037, 30.057631, 44.985619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446255, 29.827284, 44.923977>,  <38.491619, 29.443373, 44.821243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446255, 29.827284, 44.923977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493399, -0.169968, 0.853035,
		0.862377, 0.223468, -0.454277,
		-0.113413, 0.959778, 0.256835,
		38.412231, 30.115217, 45.001026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070000, 29.578716, 45.170349>,  <38.491619, 29.443373, 44.821243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070000, 29.578716, 45.170349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813053, 29.855999, 45.301094>,  <38.658886, 30.022367, 45.379539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813053, 29.855999, 45.301094>,  <39.070000, 29.578716, 45.170349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813053, 29.855999, 45.301094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456134, 0.003073, 0.889906,
		0.615883, 0.720734, -0.318168,
		-0.642363, 0.693205, 0.326858,
		38.620342, 30.063961, 45.399151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520504, 30.045815, 45.556828>,  <39.070000, 29.578716, 45.170349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520504, 30.045815, 45.556828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139141, 30.092903, 45.667938>,  <38.910324, 30.121157, 45.734604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139141, 30.092903, 45.667938>,  <39.520504, 30.045815, 45.556828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139141, 30.092903, 45.667938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276001, -0.031450, 0.960643,
		0.121826, 0.992548, -0.002507,
		-0.953405, 0.117723, 0.277776,
		38.853119, 30.128220, 45.751270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951145, 30.712597, 45.579433>,  <39.520504, 30.045815, 45.556828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951145, 30.712597, 45.579433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346619, 30.771877, 45.570137>,  <40.583904, 30.807446, 45.564560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346619, 30.771877, 45.570137>,  <39.951145, 30.712597, 45.579433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346619, 30.771877, 45.570137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096478, 0.509559, -0.855009,
		-0.114871, 0.847576, 0.518092,
		0.988684, 0.148201, -0.023239,
		40.643223, 30.816338, 45.563164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969582, 31.504395, 45.386089>,  <39.951145, 30.712597, 45.579433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969582, 31.504395, 45.386089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320812, 31.329458, 45.308403>,  <40.531551, 31.224497, 45.261791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320812, 31.329458, 45.308403>,  <39.969582, 31.504395, 45.386089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320812, 31.329458, 45.308403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122789, 0.598187, -0.791893,
		0.462503, 0.671494, 0.578953,
		0.878074, -0.437342, -0.194211,
		40.584236, 31.198256, 45.250141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447495, 32.069267, 45.193989>,  <39.969582, 31.504395, 45.386089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447495, 32.069267, 45.193989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585865, 31.723534, 45.047966>,  <40.668888, 31.516094, 44.960354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585865, 31.723534, 45.047966>,  <40.447495, 32.069267, 45.193989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585865, 31.723534, 45.047966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206614, 0.449703, -0.868952,
		0.915229, 0.225169, 0.334148,
		0.345928, -0.864330, -0.365058,
		40.689644, 31.464235, 44.938450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075672, 32.227882, 44.861519>,  <40.447495, 32.069267, 45.193989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075672, 32.227882, 44.861519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998791, 31.886238, 44.668209>,  <40.952663, 31.681252, 44.552223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998791, 31.886238, 44.668209>,  <41.075672, 32.227882, 44.861519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998791, 31.886238, 44.668209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228646, 0.439931, -0.868436,
		0.954347, -0.277417, 0.110732,
		-0.192204, -0.854108, -0.483277,
		40.941128, 31.630005, 44.523228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478657, 32.255470, 44.293873>,  <41.075672, 32.227882, 44.861519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478657, 32.255470, 44.293873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259178, 31.944384, 44.171173>,  <41.127491, 31.757732, 44.097553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259178, 31.944384, 44.171173>,  <41.478657, 32.255470, 44.293873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259178, 31.944384, 44.171173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071189, 0.322120, -0.944018,
		0.832988, -0.539813, -0.121381,
		-0.548693, -0.777715, -0.306751,
		41.094570, 31.711069, 44.079147>
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
