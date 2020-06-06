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
	<24.496107, 34.813328, 35.054237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382708, 35.187485, 34.969704>,  <24.314669, 35.411980, 34.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382708, 35.187485, 34.969704>,  <24.496107, 34.813328, 35.054237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382708, 35.187485, 34.969704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146831, 0.175440, 0.973479,
		0.947665, 0.307009, 0.087609,
		-0.283497, 0.935396, -0.211337,
		24.297659, 35.468105, 34.906303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067801, 34.451187, 34.625874>,  <24.496107, 34.813328, 35.054237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067801, 34.451187, 34.625874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289043, 34.543892, 34.305782>,  <25.421789, 34.599514, 34.113728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289043, 34.543892, 34.305782>,  <25.067801, 34.451187, 34.625874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289043, 34.543892, 34.305782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582751, 0.578805, 0.570426,
		0.595377, -0.781839, 0.185081,
		0.553107, 0.231763, -0.800224,
		25.454975, 34.613422, 34.065716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822319, 34.351273, 34.765568>,  <25.067801, 34.451187, 34.625874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822319, 34.351273, 34.765568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785679, 34.652702, 34.505188>,  <25.763695, 34.833561, 34.348961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785679, 34.652702, 34.505188>,  <25.822319, 34.351273, 34.765568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785679, 34.652702, 34.505188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349515, 0.636436, 0.687596,
		0.932442, -0.164530, -0.321686,
		-0.091602, 0.753577, -0.650946,
		25.758198, 34.878777, 34.309906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449707, 34.884911, 34.838135>,  <25.822319, 34.351273, 34.765568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449707, 34.884911, 34.838135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114100, 35.043159, 34.688721>,  <25.912735, 35.138107, 34.599072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114100, 35.043159, 34.688721>,  <26.449707, 34.884911, 34.838135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114100, 35.043159, 34.688721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018498, 0.665381, 0.746275,
		0.543786, 0.633049, -0.550950,
		-0.839020, 0.395623, -0.373535,
		25.862394, 35.161846, 34.576660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385771, 34.871426, 35.632057>,  <26.449707, 34.884911, 34.838135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385771, 34.871426, 35.632057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606415, 34.903385, 35.964165>,  <26.738802, 34.922562, 36.163429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606415, 34.903385, 35.964165>,  <26.385771, 34.871426, 35.632057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606415, 34.903385, 35.964165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105723, 0.980676, -0.164609,
		-0.827373, 0.178579, 0.532506,
		0.551612, 0.079895, 0.830266,
		26.771898, 34.927353, 36.213245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097454, 35.484146, 36.104782>,  <26.385771, 34.871426, 35.632057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097454, 35.484146, 36.104782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484056, 35.403996, 36.168919>,  <26.716019, 35.355904, 36.207401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484056, 35.403996, 36.168919>,  <26.097454, 35.484146, 36.104782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484056, 35.403996, 36.168919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212219, 0.975359, -0.060314,
		-0.144308, 0.092322, 0.985217,
		0.966508, -0.200378, 0.160345,
		26.774010, 35.343884, 36.217022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219294, 36.063549, 36.447872>,  <26.097454, 35.484146, 36.104782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219294, 36.063549, 36.447872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573685, 35.906834, 36.348637>,  <26.786320, 35.812805, 36.289097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573685, 35.906834, 36.348637>,  <26.219294, 36.063549, 36.447872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573685, 35.906834, 36.348637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408528, 0.912572, 0.017796,
		0.219423, -0.117116, 0.968575,
		0.885979, -0.391785, -0.248085,
		26.839478, 35.789299, 36.274212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699261, 36.261623, 37.023220>,  <26.219294, 36.063549, 36.447872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699261, 36.261623, 37.023220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872299, 36.190010, 36.669765>,  <26.976122, 36.147041, 36.457695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872299, 36.190010, 36.669765>,  <26.699261, 36.261623, 37.023220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872299, 36.190010, 36.669765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343969, 0.938728, -0.021805,
		0.833394, -0.294509, 0.467674,
		0.432597, -0.179037, -0.883632,
		27.002079, 36.136299, 36.404675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344507, 36.733746, 37.033630>,  <26.699261, 36.261623, 37.023220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344507, 36.733746, 37.033630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305035, 36.655968, 36.643257>,  <27.281351, 36.609299, 36.409031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305035, 36.655968, 36.643257>,  <27.344507, 36.733746, 37.033630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305035, 36.655968, 36.643257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481147, 0.849143, -0.217838,
		0.871068, -0.491066, 0.009762,
		-0.098683, -0.194449, -0.975936,
		27.275429, 36.597633, 36.350475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023470, 36.903488, 36.737774>,  <27.344507, 36.733746, 37.033630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023470, 36.903488, 36.737774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750872, 36.888588, 36.445423>,  <27.587313, 36.879650, 36.270012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750872, 36.888588, 36.445423>,  <28.023470, 36.903488, 36.737774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750872, 36.888588, 36.445423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296354, 0.899105, -0.322155,
		0.669131, -0.436145, -0.601699,
		-0.681497, -0.037248, -0.730872,
		27.546423, 36.877415, 36.226162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346449, 37.039757, 36.108295>,  <28.023470, 36.903488, 36.737774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346449, 37.039757, 36.108295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967295, 37.101841, 35.996994>,  <27.739803, 37.139091, 35.930214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967295, 37.101841, 35.996994>,  <28.346449, 37.039757, 36.108295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967295, 37.101841, 35.996994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302717, 0.711161, -0.634518,
		0.099398, -0.685681, -0.721083,
		-0.947883, 0.155214, -0.278255,
		27.682930, 37.148407, 35.913517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340248, 37.094082, 35.332474>,  <28.346449, 37.039757, 36.108295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340248, 37.094082, 35.332474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035269, 37.307976, 35.478203>,  <27.852282, 37.436314, 35.565639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035269, 37.307976, 35.478203>,  <28.340248, 37.094082, 35.332474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035269, 37.307976, 35.478203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228155, 0.749062, -0.621973,
		-0.605491, -0.391101, -0.693124,
		-0.762447, 0.534739, 0.364319,
		27.806534, 37.468399, 35.587498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118887, 37.443764, 34.675838>,  <28.340248, 37.094082, 35.332474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118887, 37.443764, 34.675838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943621, 37.632870, 34.981651>,  <27.838461, 37.746334, 35.165138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943621, 37.632870, 34.981651>,  <28.118887, 37.443764, 34.675838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943621, 37.632870, 34.981651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032881, 0.858384, -0.511953,
		-0.898293, -0.199181, -0.391658,
		-0.438164, 0.472763, 0.764531,
		27.812172, 37.774700, 35.211010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631525, 37.791988, 34.412605>,  <28.118887, 37.443764, 34.675838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631525, 37.791988, 34.412605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721939, 37.974762, 34.756725>,  <27.776188, 38.084427, 34.963200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721939, 37.974762, 34.756725>,  <27.631525, 37.791988, 34.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721939, 37.974762, 34.756725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162285, 0.853153, -0.495775,
		-0.960506, 0.251676, 0.118688,
		0.226033, 0.456934, 0.860302,
		27.789749, 38.111843, 35.014816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326340, 38.458473, 34.384930>,  <27.631525, 37.791988, 34.412605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326340, 38.458473, 34.384930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566216, 38.537434, 34.695129>,  <27.710142, 38.584808, 34.881248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566216, 38.537434, 34.695129>,  <27.326340, 38.458473, 34.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566216, 38.537434, 34.695129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178578, 0.911646, -0.370150,
		-0.780052, 0.360463, 0.511455,
		0.599691, 0.197401, 0.775502,
		27.746122, 38.596653, 34.927780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080465, 39.115917, 34.695019>,  <27.326340, 38.458473, 34.384930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080465, 39.115917, 34.695019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456253, 39.070324, 34.824265>,  <27.681726, 39.042969, 34.901814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456253, 39.070324, 34.824265>,  <27.080465, 39.115917, 34.695019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456253, 39.070324, 34.824265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234040, 0.902242, -0.362195,
		-0.250243, 0.415893, 0.874306,
		0.939470, -0.113986, 0.323115,
		27.738094, 39.036129, 34.921200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254099, 39.746967, 34.990353>,  <27.080465, 39.115917, 34.695019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254099, 39.746967, 34.990353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613174, 39.584843, 34.921207>,  <27.828619, 39.487568, 34.879723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613174, 39.584843, 34.921207>,  <27.254099, 39.746967, 34.990353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613174, 39.584843, 34.921207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352498, 0.895955, -0.270203,
		0.264391, 0.181625, 0.947159,
		0.897687, -0.405311, -0.172860,
		27.882481, 39.463249, 34.869350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715057, 40.135452, 35.308189>,  <27.254099, 39.746967, 34.990353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715057, 40.135452, 35.308189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942881, 39.945934, 35.039528>,  <28.079575, 39.832226, 34.878330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942881, 39.945934, 35.039528>,  <27.715057, 40.135452, 35.308189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942881, 39.945934, 35.039528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258403, 0.878932, -0.400881,
		0.780276, 0.054767, 0.623032,
		0.569559, -0.473792, -0.671658,
		28.113749, 39.803795, 34.838032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419521, 40.498428, 35.203800>,  <27.715057, 40.135452, 35.308189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419521, 40.498428, 35.203800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401943, 40.259823, 34.883240>,  <28.391397, 40.116661, 34.690903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401943, 40.259823, 34.883240>,  <28.419521, 40.498428, 35.203800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401943, 40.259823, 34.883240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265391, 0.766381, -0.585001,
		0.963139, -0.238392, 0.124632,
		-0.043944, -0.596514, -0.801399,
		28.388760, 40.080868, 34.642818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109997, 40.514503, 34.901970>,  <28.419521, 40.498428, 35.203800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109997, 40.514503, 34.901970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863960, 40.391445, 34.611588>,  <28.716337, 40.317612, 34.437359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863960, 40.391445, 34.611588>,  <29.109997, 40.514503, 34.901970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863960, 40.391445, 34.611588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466188, 0.600646, -0.649532,
		0.635870, -0.737956, -0.226032,
		-0.615092, -0.307644, -0.725960,
		28.679432, 40.299152, 34.393799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603792, 40.455524, 34.381439>,  <29.109997, 40.514503, 34.901970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603792, 40.455524, 34.381439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236773, 40.492676, 34.226788>,  <29.016562, 40.514969, 34.133999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236773, 40.492676, 34.226788>,  <29.603792, 40.455524, 34.381439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236773, 40.492676, 34.226788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324658, 0.736384, -0.593579,
		0.229572, -0.670158, -0.705822,
		-0.917548, 0.092882, -0.386626,
		28.961508, 40.520542, 34.110802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783094, 40.474236, 33.659931>,  <29.603792, 40.455524, 34.381439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783094, 40.474236, 33.659931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403448, 40.597897, 33.635921>,  <29.175661, 40.672092, 33.621517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403448, 40.597897, 33.635921>,  <29.783094, 40.474236, 33.659931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403448, 40.597897, 33.635921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261899, 0.668994, -0.695598,
		-0.174891, -0.675923, -0.715920,
		-0.949116, 0.309152, -0.060023,
		29.118713, 40.690643, 33.617916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570236, 40.308472, 32.997707>,  <29.783094, 40.474236, 33.659931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570236, 40.308472, 32.997707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337503, 40.597931, 33.146198>,  <29.197865, 40.771606, 33.235294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337503, 40.597931, 33.146198>,  <29.570236, 40.308472, 32.997707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337503, 40.597931, 33.146198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227206, 0.582892, -0.780137,
		-0.780929, -0.369561, -0.503561,
		-0.581830, 0.723644, 0.371231,
		29.162954, 40.815025, 33.257568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125570, 40.506969, 32.432854>,  <29.570236, 40.308472, 32.997707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125570, 40.506969, 32.432854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133730, 40.809155, 32.694805>,  <29.138626, 40.990463, 32.851974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133730, 40.809155, 32.694805>,  <29.125570, 40.506969, 32.432854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133730, 40.809155, 32.694805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168830, 0.643005, -0.747021,
		-0.985434, 0.125803, -0.114426,
		0.020402, 0.755459, 0.654879,
		29.139851, 41.035793, 32.891270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650578, 41.183495, 32.117802>,  <29.125570, 40.506969, 32.432854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650578, 41.183495, 32.117802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890812, 41.338966, 32.397293>,  <29.034952, 41.432251, 32.564987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890812, 41.338966, 32.397293>,  <28.650578, 41.183495, 32.117802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890812, 41.338966, 32.397293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298286, 0.701884, -0.646827,
		-0.741836, 0.596897, 0.305604,
		0.600587, 0.388682, 0.698729,
		29.070988, 41.455570, 32.606911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566460, 41.967072, 32.181377>,  <28.650578, 41.183495, 32.117802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566460, 41.967072, 32.181377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932627, 41.844181, 32.285397>,  <29.152327, 41.770447, 32.347809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932627, 41.844181, 32.285397>,  <28.566460, 41.967072, 32.181377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932627, 41.844181, 32.285397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400003, 0.622419, -0.672750,
		0.044827, 0.719866, 0.692664,
		0.915417, -0.307225, 0.260048,
		29.207253, 41.752014, 32.363411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883678, 42.524788, 32.395859>,  <28.566460, 41.967072, 32.181377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883678, 42.524788, 32.395859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150150, 42.257366, 32.263649>,  <29.310034, 42.096912, 32.184322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150150, 42.257366, 32.263649>,  <28.883678, 42.524788, 32.395859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150150, 42.257366, 32.263649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467473, 0.719638, -0.513410,
		0.581097, 0.187513, 0.791937,
		0.666180, -0.668551, -0.330522,
		29.350004, 42.056801, 32.164494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418520, 42.943974, 32.327469>,  <28.883678, 42.524788, 32.395859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418520, 42.943974, 32.327469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526026, 42.623169, 32.114098>,  <29.590528, 42.430687, 31.986074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526026, 42.623169, 32.114098>,  <29.418520, 42.943974, 32.327469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526026, 42.623169, 32.114098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686174, 0.548077, -0.478305,
		0.675966, -0.237476, 0.697621,
		0.268764, -0.802008, -0.533432,
		29.606655, 42.382568, 31.954067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084593, 42.979752, 32.262150>,  <29.418520, 42.943974, 32.327469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084593, 42.979752, 32.262150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946802, 42.765636, 31.953655>,  <29.864128, 42.637169, 31.768559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946802, 42.765636, 31.953655>,  <30.084593, 42.979752, 32.262150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946802, 42.765636, 31.953655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679994, 0.424132, -0.598097,
		0.647259, -0.730465, 0.217890,
		-0.344475, -0.535288, -0.771235,
		29.843460, 42.605049, 31.722284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659061, 42.700165, 31.986658>,  <30.084593, 42.979752, 32.262150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659061, 42.700165, 31.986658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361153, 42.759888, 31.726498>,  <30.182407, 42.795723, 31.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361153, 42.759888, 31.726498>,  <30.659061, 42.700165, 31.986658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361153, 42.759888, 31.726498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625425, 0.496081, -0.602285,
		0.232725, -0.855342, -0.462849,
		-0.744770, 0.149311, -0.650403,
		30.137722, 42.804680, 31.531376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938398, 42.534817, 31.323988>,  <30.659061, 42.700165, 31.986658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938398, 42.534817, 31.323988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645391, 42.804470, 31.286116>,  <30.469587, 42.966263, 31.263391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645391, 42.804470, 31.286116>,  <30.938398, 42.534817, 31.323988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645391, 42.804470, 31.286116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582223, 0.548342, -0.600282,
		-0.352750, -0.494844, -0.794164,
		-0.732519, 0.674130, -0.094682,
		30.425636, 43.006710, 31.257711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445641, 42.183723, 30.951963>,  <30.938398, 42.534817, 31.323988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445641, 42.183723, 30.951963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582716, 42.360535, 31.283546>,  <31.664961, 42.466621, 31.482496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582716, 42.360535, 31.283546>,  <31.445641, 42.183723, 30.951963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582716, 42.360535, 31.283546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397076, -0.867848, 0.298615,
		0.851407, 0.226828, -0.472922,
		0.342691, 0.442029, 0.828959,
		31.685524, 42.493145, 31.532234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168682, 42.205181, 30.936367>,  <31.445641, 42.183723, 30.951963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168682, 42.205181, 30.936367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064548, 42.225548, 31.322037>,  <32.002068, 42.237766, 31.553438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064548, 42.225548, 31.322037>,  <32.168682, 42.205181, 30.936367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064548, 42.225548, 31.322037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486124, -0.855889, 0.176455,
		0.834211, 0.514647, 0.198068,
		-0.260337, 0.050915, 0.964174,
		31.986448, 42.240822, 31.611290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651726, 41.880817, 31.156794>,  <32.168682, 42.205181, 30.936367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651726, 41.880817, 31.156794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414886, 41.900303, 31.478552>,  <32.272785, 41.911995, 31.671606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414886, 41.900303, 31.478552>,  <32.651726, 41.880817, 31.156794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414886, 41.900303, 31.478552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460761, -0.798461, 0.387505,
		0.661154, 0.600073, 0.450320,
		-0.592094, 0.048710, 0.804395,
		32.237259, 41.914917, 31.719870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008503, 41.856850, 31.805702>,  <32.651726, 41.880817, 31.156794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008503, 41.856850, 31.805702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647785, 41.729408, 31.922497>,  <32.431355, 41.652943, 31.992573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647785, 41.729408, 31.922497>,  <33.008503, 41.856850, 31.805702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647785, 41.729408, 31.922497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430263, -0.725159, 0.537604,
		0.040456, 0.610440, 0.791028,
		-0.901797, -0.318601, 0.291987,
		32.377247, 41.633827, 32.010094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086136, 41.588966, 32.453613>,  <33.008503, 41.856850, 31.805702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086136, 41.588966, 32.453613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706333, 41.473785, 32.403793>,  <32.478451, 41.404678, 32.373901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706333, 41.473785, 32.403793>,  <33.086136, 41.588966, 32.453613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706333, 41.473785, 32.403793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102689, -0.660360, 0.743895,
		-0.296452, 0.693548, 0.656588,
		-0.949511, -0.287953, -0.124545,
		32.421478, 41.387398, 32.366428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837662, 41.184906, 33.084999>,  <33.086136, 41.588966, 32.453613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837662, 41.184906, 33.084999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525097, 41.149052, 32.837982>,  <32.337559, 41.127537, 32.689774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525097, 41.149052, 32.837982>,  <32.837662, 41.184906, 33.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525097, 41.149052, 32.837982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354332, -0.750869, 0.557355,
		-0.513652, 0.654339, 0.554979,
		-0.781416, -0.089640, -0.617539,
		32.290672, 41.122158, 32.652721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306458, 41.122715, 33.561855>,  <32.837662, 41.184906, 33.084999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306458, 41.122715, 33.561855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169086, 40.978020, 33.215168>,  <32.086662, 40.891205, 33.007156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169086, 40.978020, 33.215168>,  <32.306458, 41.122715, 33.561855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169086, 40.978020, 33.215168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519994, -0.695255, 0.496213,
		-0.782089, 0.621103, 0.050671,
		-0.343429, -0.361734, -0.866721,
		32.066059, 40.869499, 32.955151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581312, 40.937675, 33.677307>,  <32.306458, 41.122715, 33.561855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581312, 40.937675, 33.677307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696562, 40.721107, 33.361370>,  <31.765711, 40.591167, 33.171810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696562, 40.721107, 33.361370>,  <31.581312, 40.937675, 33.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696562, 40.721107, 33.361370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598623, -0.745622, 0.292743,
		-0.747423, 0.388478, -0.538928,
		0.288113, -0.541417, -0.789847,
		31.782999, 40.558681, 33.124416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046640, 40.684441, 33.345478>,  <31.581312, 40.937675, 33.677307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046640, 40.684441, 33.345478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340208, 40.432102, 33.244762>,  <31.516348, 40.280701, 33.184334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340208, 40.432102, 33.244762>,  <31.046640, 40.684441, 33.345478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340208, 40.432102, 33.244762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552692, -0.770120, 0.318507,
		-0.394837, -0.094596, -0.913868,
		0.733918, -0.630846, -0.251789,
		31.560383, 40.242847, 33.169224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740356, 40.166248, 32.935730>,  <31.046640, 40.684441, 33.345478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740356, 40.166248, 32.935730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079758, 40.009190, 33.077641>,  <31.283398, 39.914955, 33.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079758, 40.009190, 33.077641>,  <30.740356, 40.166248, 32.935730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079758, 40.009190, 33.077641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514789, -0.767775, 0.381462,
		0.122612, -0.506309, -0.853591,
		0.848504, -0.392648, 0.354781,
		31.334309, 39.891396, 33.184074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626143, 39.449688, 32.782101>,  <30.740356, 40.166248, 32.935730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626143, 39.449688, 32.782101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915771, 39.481422, 33.056160>,  <31.089548, 39.500465, 33.220596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915771, 39.481422, 33.056160>,  <30.626143, 39.449688, 32.782101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915771, 39.481422, 33.056160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298594, -0.859393, 0.415074,
		0.621743, -0.505123, -0.598570,
		0.724070, 0.079340, 0.685148,
		31.132992, 39.505226, 33.261703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791365, 38.801849, 32.957542>,  <30.626143, 39.449688, 32.782101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791365, 38.801849, 32.957542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980104, 38.966011, 33.269680>,  <31.093348, 39.064507, 33.456963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980104, 38.966011, 33.269680>,  <30.791365, 38.801849, 32.957542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980104, 38.966011, 33.269680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201102, -0.811633, 0.548461,
		0.858439, -0.415718, -0.300434,
		0.471847, 0.410403, 0.780339,
		31.121658, 39.089130, 33.503780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243061, 38.278091, 33.381077>,  <30.791365, 38.801849, 32.957542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243061, 38.278091, 33.381077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172911, 38.581238, 33.632435>,  <31.130819, 38.763126, 33.783249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172911, 38.581238, 33.632435>,  <31.243061, 38.278091, 33.381077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172911, 38.581238, 33.632435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050936, -0.644420, 0.762973,
		0.983183, 0.101801, 0.151620,
		-0.175378, 0.757865, 0.628397,
		31.120296, 38.808598, 33.820953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679752, 38.161903, 33.934132>,  <31.243061, 38.278091, 33.381077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679752, 38.161903, 33.934132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395569, 38.410500, 34.066185>,  <31.225058, 38.559658, 34.145416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395569, 38.410500, 34.066185>,  <31.679752, 38.161903, 33.934132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395569, 38.410500, 34.066185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221439, -0.642719, 0.733400,
		0.667989, 0.447947, 0.594250,
		-0.710461, 0.621494, 0.330137,
		31.182430, 38.596947, 34.165226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750050, 38.098804, 34.669128>,  <31.679752, 38.161903, 33.934132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750050, 38.098804, 34.669128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391451, 38.269093, 34.620056>,  <31.176291, 38.371265, 34.590614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391451, 38.269093, 34.620056>,  <31.750050, 38.098804, 34.669128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391451, 38.269093, 34.620056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368677, -0.563284, 0.739451,
		0.245698, 0.708146, 0.661938,
		-0.896499, 0.425722, -0.122679,
		31.122501, 38.396809, 34.583252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523022, 38.363300, 35.390957>,  <31.750050, 38.098804, 34.669128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523022, 38.363300, 35.390957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198387, 38.306721, 35.164219>,  <31.003607, 38.272774, 35.028175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198387, 38.306721, 35.164219>,  <31.523022, 38.363300, 35.390957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198387, 38.306721, 35.164219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343230, -0.669719, 0.658536,
		-0.472778, 0.729019, 0.494987,
		-0.811588, -0.141447, -0.566849,
		30.954910, 38.264286, 34.994164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003483, 38.259525, 35.827953>,  <31.523022, 38.363300, 35.390957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003483, 38.259525, 35.827953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833822, 38.106205, 35.499763>,  <30.732027, 38.014214, 35.302849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833822, 38.106205, 35.499763>,  <31.003483, 38.259525, 35.827953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833822, 38.106205, 35.499763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382216, -0.745584, 0.545909,
		-0.820980, 0.545144, 0.169734,
		-0.424150, -0.383305, -0.820472,
		30.706577, 37.991215, 35.253620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403730, 37.969498, 36.051472>,  <31.003483, 38.259525, 35.827953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403730, 37.969498, 36.051472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467607, 37.789852, 35.699837>,  <30.505934, 37.682064, 35.488857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467607, 37.789852, 35.699837>,  <30.403730, 37.969498, 36.051472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467607, 37.789852, 35.699837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367410, -0.853578, 0.369344,
		-0.916247, 0.264002, -0.301322,
		0.159694, -0.449118, -0.879085,
		30.515516, 37.655117, 35.436111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731115, 37.760105, 35.741055>,  <30.403730, 37.969498, 36.051472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731115, 37.760105, 35.741055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014544, 37.529713, 35.577999>,  <30.184601, 37.391476, 35.480164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014544, 37.529713, 35.577999>,  <29.731115, 37.760105, 35.741055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014544, 37.529713, 35.577999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549240, -0.812868, 0.193860,
		-0.443020, 0.086531, -0.892326,
		0.708568, -0.575985, -0.407643,
		30.227114, 37.356918, 35.455708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349775, 37.333881, 35.361317>,  <29.731115, 37.760105, 35.741055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349775, 37.333881, 35.361317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704178, 37.150360, 35.388142>,  <29.916819, 37.040249, 35.404236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704178, 37.150360, 35.388142>,  <29.349775, 37.333881, 35.361317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704178, 37.150360, 35.388142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463180, -0.869053, 0.173815,
		-0.021468, -0.185061, -0.982493,
		0.886004, -0.458803, 0.067060,
		29.969978, 37.012718, 35.408260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207922, 36.665112, 35.215477>,  <29.349775, 37.333881, 35.361317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207922, 36.665112, 35.215477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573956, 36.611729, 35.367695>,  <29.793575, 36.579697, 35.459026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573956, 36.611729, 35.367695>,  <29.207922, 36.665112, 35.215477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573956, 36.611729, 35.367695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300487, -0.854994, 0.422721,
		0.268944, -0.501173, -0.822493,
		0.915083, -0.133460, 0.380541,
		29.848480, 36.571690, 35.481857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306850, 35.913559, 35.008965>,  <29.207922, 36.665112, 35.215477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306850, 35.913559, 35.008965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568016, 36.017666, 35.293488>,  <29.724716, 36.080132, 35.464203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568016, 36.017666, 35.293488>,  <29.306850, 35.913559, 35.008965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568016, 36.017666, 35.293488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093340, -0.904302, 0.416565,
		0.751659, -0.338374, -0.566137,
		0.652913, 0.260271, 0.711311,
		29.763889, 36.095749, 35.506882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777107, 35.315357, 35.015812>,  <29.306850, 35.913559, 35.008965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777107, 35.315357, 35.015812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801924, 35.513069, 35.362648>,  <29.816813, 35.631695, 35.570747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801924, 35.513069, 35.362648>,  <29.777107, 35.315357, 35.015812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801924, 35.513069, 35.362648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009298, -0.869010, 0.494707,
		0.998030, -0.022629, -0.058509,
		0.062040, 0.494276, 0.867088,
		29.820536, 35.661350, 35.622776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360744, 35.048031, 35.422161>,  <29.777107, 35.315357, 35.015812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360744, 35.048031, 35.422161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085087, 35.214348, 35.659546>,  <29.919693, 35.314140, 35.801975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085087, 35.214348, 35.659546>,  <30.360744, 35.048031, 35.422161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085087, 35.214348, 35.659546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067294, -0.852173, 0.518915,
		0.721493, 0.317671, 0.615250,
		-0.689143, 0.415796, 0.593460,
		29.878344, 35.339088, 35.837585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637754, 35.014439, 36.143665>,  <30.360744, 35.048031, 35.422161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637754, 35.014439, 36.143665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244711, 35.074955, 36.186726>,  <30.008884, 35.111263, 36.212563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244711, 35.074955, 36.186726>,  <30.637754, 35.014439, 36.143665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244711, 35.074955, 36.186726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043169, -0.750013, 0.660013,
		0.180589, 0.643889, 0.743501,
		-0.982611, 0.151287, 0.107647,
		29.949928, 35.120342, 36.219021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547230, 34.935905, 36.788494>,  <30.637754, 35.014439, 36.143665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547230, 34.935905, 36.788494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183304, 34.867542, 36.637218>,  <29.964949, 34.826527, 36.546455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183304, 34.867542, 36.637218>,  <30.547230, 34.935905, 36.788494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183304, 34.867542, 36.637218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147762, -0.718151, 0.680018,
		-0.387813, 0.674574, 0.628133,
		-0.909817, -0.170906, -0.378185,
		29.910358, 34.816269, 36.523762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291426, 35.276707, 36.889694>,  <30.547230, 34.935905, 36.788494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291426, 35.276707, 36.889694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485140, 34.958813, 37.036045>,  <31.601368, 34.768078, 37.123856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485140, 34.958813, 37.036045>,  <31.291426, 35.276707, 36.889694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485140, 34.958813, 37.036045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874904, 0.441575, -0.198885,
		-0.003500, 0.416422, 0.909165,
		0.484284, -0.794736, 0.365874,
		31.630424, 34.720390, 37.145809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590082, 34.818550, 36.476448>,  <31.291426, 35.276707, 36.889694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590082, 34.818550, 36.476448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768892, 35.039032, 36.194641>,  <31.876179, 35.171322, 36.025558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768892, 35.039032, 36.194641>,  <31.590082, 34.818550, 36.476448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768892, 35.039032, 36.194641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574029, 0.427267, 0.698522,
		0.686047, -0.716667, -0.125410,
		0.447025, 0.551208, -0.704513,
		31.903000, 35.204395, 35.983288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274769, 34.845734, 36.681580>,  <31.590082, 34.818550, 36.476448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274769, 34.845734, 36.681580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199432, 35.149860, 36.432922>,  <32.154232, 35.332336, 36.283726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199432, 35.149860, 36.432922>,  <32.274769, 34.845734, 36.681580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199432, 35.149860, 36.432922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656818, 0.568102, 0.495834,
		0.730149, -0.314921, -0.606388,
		-0.188342, 0.760319, -0.621645,
		32.142929, 35.377956, 36.246429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791637, 35.462841, 36.820278>,  <32.274769, 34.845734, 36.681580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791637, 35.462841, 36.820278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494480, 35.631363, 36.612194>,  <32.316185, 35.732475, 36.487343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494480, 35.631363, 36.612194>,  <32.791637, 35.462841, 36.820278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494480, 35.631363, 36.612194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096622, 0.836454, 0.539452,
		0.662405, 0.350490, -0.662100,
		-0.742889, 0.421309, -0.520207,
		32.271614, 35.757755, 36.456131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942017, 36.068295, 36.988258>,  <32.791637, 35.462841, 36.820278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942017, 36.068295, 36.988258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579391, 36.096409, 36.821785>,  <32.361816, 36.113277, 36.721901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579391, 36.096409, 36.821785>,  <32.942017, 36.068295, 36.988258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579391, 36.096409, 36.821785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252680, 0.699440, 0.668533,
		0.338084, 0.711227, -0.616325,
		-0.906561, 0.070287, -0.416182,
		32.307423, 36.117496, 36.696930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684704, 36.343540, 37.245335>,  <32.942017, 36.068295, 36.988258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684704, 36.343540, 37.245335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031761, 36.357140, 37.443741>,  <34.239998, 36.365299, 37.562786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031761, 36.357140, 37.443741>,  <33.684704, 36.343540, 37.245335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031761, 36.357140, 37.443741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059980, 0.983216, -0.172302,
		-0.493549, 0.179249, 0.851046,
		0.867647, 0.033994, 0.496017,
		34.292057, 36.367336, 37.592545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416157, 36.502697, 37.926903>,  <33.684704, 36.343540, 37.245335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416157, 36.502697, 37.926903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164734, 36.194168, 37.886944>,  <33.013878, 36.009052, 37.862968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164734, 36.194168, 37.886944>,  <33.416157, 36.502697, 37.926903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164734, 36.194168, 37.886944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092858, -0.201943, 0.974985,
		-0.772197, 0.603562, 0.198557,
		-0.628562, -0.771318, -0.099894,
		32.976166, 35.962772, 37.856976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750111, 36.492519, 38.430412>,  <33.416157, 36.502697, 37.926903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750111, 36.492519, 38.430412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920685, 36.139412, 38.351551>,  <33.023029, 35.927547, 38.304234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920685, 36.139412, 38.351551>,  <32.750111, 36.492519, 38.430412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920685, 36.139412, 38.351551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076470, -0.182002, 0.980320,
		-0.901280, -0.433119, -0.010106,
		0.426435, -0.882770, -0.197156,
		33.048615, 35.874580, 38.292404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412464, 35.808449, 38.759228>,  <32.750111, 36.492519, 38.430412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412464, 35.808449, 38.759228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795696, 35.698006, 38.728661>,  <33.025635, 35.631741, 38.710320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795696, 35.698006, 38.728661>,  <32.412464, 35.808449, 38.759228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795696, 35.698006, 38.728661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046506, -0.413109, 0.909494,
		-0.282686, -0.867817, -0.408633,
		0.958084, -0.276105, -0.076422,
		33.083122, 35.615173, 38.705734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399223, 35.063309, 38.958988>,  <32.412464, 35.808449, 38.759228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399223, 35.063309, 38.958988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782833, 35.172432, 38.989559>,  <33.013000, 35.237907, 39.007900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782833, 35.172432, 38.989559>,  <32.399223, 35.063309, 38.958988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782833, 35.172432, 38.989559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012784, -0.311167, 0.950269,
		0.283024, -0.910358, -0.301905,
		0.959028, 0.272808, 0.076429,
		33.070541, 35.254276, 39.012489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761131, 34.517765, 39.263084>,  <32.399223, 35.063309, 38.958988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761131, 34.517765, 39.263084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027737, 34.813351, 39.302460>,  <33.187702, 34.990700, 39.326084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027737, 34.813351, 39.302460>,  <32.761131, 34.517765, 39.263084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027737, 34.813351, 39.302460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288895, -0.377759, 0.879681,
		0.687237, -0.557883, -0.465265,
		0.666517, 0.738962, 0.098441,
		33.227692, 35.035038, 39.331993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264500, 34.193291, 39.533409>,  <32.761131, 34.517765, 39.263084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264500, 34.193291, 39.533409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290653, 34.575008, 39.650063>,  <33.306343, 34.804039, 39.720055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290653, 34.575008, 39.650063>,  <33.264500, 34.193291, 39.533409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290653, 34.575008, 39.650063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174951, -0.298696, 0.938175,
		0.982404, -0.010318, -0.186483,
		0.065382, 0.954293, 0.291635,
		33.310268, 34.861298, 39.737553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786720, 34.217628, 39.989700>,  <33.264500, 34.193291, 39.533409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786720, 34.217628, 39.989700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570488, 34.540489, 40.084595>,  <33.440750, 34.734207, 40.141529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570488, 34.540489, 40.084595>,  <33.786720, 34.217628, 39.989700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570488, 34.540489, 40.084595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051808, -0.313388, 0.948211,
		0.839697, 0.500291, 0.211227,
		-0.540578, 0.807153, 0.237232,
		33.408314, 34.782635, 40.155766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215187, 34.575581, 40.526562>,  <33.786720, 34.217628, 39.989700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215187, 34.575581, 40.526562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844807, 34.719707, 40.571804>,  <33.622578, 34.806183, 40.598949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844807, 34.719707, 40.571804>,  <34.215187, 34.575581, 40.526562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844807, 34.719707, 40.571804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110476, -0.027951, 0.993486,
		0.361134, 0.932410, -0.013926,
		-0.925947, 0.360320, 0.113103,
		33.567024, 34.827805, 40.605736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341587, 35.136448, 41.023281>,  <34.215187, 34.575581, 40.526562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341587, 35.136448, 41.023281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956894, 35.028786, 41.002781>,  <33.726078, 34.964188, 40.990482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956894, 35.028786, 41.002781>,  <34.341587, 35.136448, 41.023281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956894, 35.028786, 41.002781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007644, -0.160619, 0.986987,
		-0.273886, 0.949608, 0.152415,
		-0.961732, -0.269157, -0.051250,
		33.668373, 34.948040, 40.987408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992039, 35.431583, 41.593288>,  <34.341587, 35.136448, 41.023281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992039, 35.431583, 41.593288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717880, 35.160488, 41.486782>,  <33.553383, 34.997829, 41.422878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717880, 35.160488, 41.486782>,  <33.992039, 35.431583, 41.593288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717880, 35.160488, 41.486782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159374, -0.217173, 0.963035,
		-0.710511, 0.702500, 0.040837,
		-0.685401, -0.677738, -0.266264,
		33.512260, 34.957165, 41.406902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501869, 35.474808, 42.135876>,  <33.992039, 35.431583, 41.593288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501869, 35.474808, 42.135876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403149, 35.121792, 41.975769>,  <33.343918, 34.909981, 41.879704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403149, 35.121792, 41.975769>,  <33.501869, 35.474808, 42.135876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403149, 35.121792, 41.975769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022591, -0.418172, 0.908087,
		-0.968803, 0.215074, 0.123143,
		-0.246801, -0.882539, -0.400267,
		33.329109, 34.857029, 41.855690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894150, 35.037769, 42.554859>,  <33.501869, 35.474808, 42.135876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894150, 35.037769, 42.554859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125931, 34.787418, 42.346046>,  <33.264999, 34.637207, 42.220760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125931, 34.787418, 42.346046>,  <32.894150, 35.037769, 42.554859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125931, 34.787418, 42.346046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080592, -0.593380, 0.800878,
		-0.811009, -0.506145, -0.293397,
		0.579456, -0.625874, -0.522027,
		33.299767, 34.599655, 42.189438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583534, 34.469616, 42.751915>,  <32.894150, 35.037769, 42.554859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583534, 34.469616, 42.751915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935928, 34.373455, 42.588902>,  <33.147366, 34.315758, 42.491093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935928, 34.373455, 42.588902>,  <32.583534, 34.469616, 42.751915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935928, 34.373455, 42.588902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164825, -0.651433, 0.740586,
		-0.443515, -0.719613, -0.534276,
		0.880980, -0.240399, -0.407531,
		33.200222, 34.301334, 42.466640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582954, 33.725899, 42.586994>,  <32.583534, 34.469616, 42.751915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582954, 33.725899, 42.586994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967850, 33.824005, 42.634228>,  <33.198788, 33.882870, 42.662567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967850, 33.824005, 42.634228>,  <32.582954, 33.725899, 42.586994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967850, 33.824005, 42.634228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160460, -0.861487, 0.481759,
		0.219886, -0.444619, -0.868311,
		0.962238, 0.245262, 0.118086,
		33.256523, 33.897583, 42.669655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875427, 33.156853, 42.465088>,  <32.582954, 33.725899, 42.586994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875427, 33.156853, 42.465088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158512, 33.362610, 42.658810>,  <33.328362, 33.486065, 42.775043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158512, 33.362610, 42.658810>,  <32.875427, 33.156853, 42.465088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158512, 33.362610, 42.658810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121785, -0.764052, 0.633556,
		0.695929, -0.389393, -0.603371,
		0.707709, 0.514392, 0.484303,
		33.370823, 33.516926, 42.804100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448269, 32.654797, 42.651203>,  <32.875427, 33.156853, 42.465088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448269, 32.654797, 42.651203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504066, 32.958080, 42.905968>,  <33.537544, 33.140053, 43.058826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504066, 32.958080, 42.905968>,  <33.448269, 32.654797, 42.651203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504066, 32.958080, 42.905968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382916, -0.634467, 0.671436,
		0.913190, 0.150223, -0.378835,
		0.139494, 0.758211, 0.636912,
		33.545914, 33.185543, 43.097042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089275, 32.486477, 42.871441>,  <33.448269, 32.654797, 42.651203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089275, 32.486477, 42.871441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973804, 32.753067, 43.146389>,  <33.904522, 32.913021, 43.311356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973804, 32.753067, 43.146389>,  <34.089275, 32.486477, 42.871441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973804, 32.753067, 43.146389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272273, -0.631144, 0.726309,
		0.917897, 0.396818, 0.000731,
		-0.288673, 0.666478, 0.687368,
		33.887203, 32.953011, 43.352600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699493, 32.560562, 43.291656>,  <34.089275, 32.486477, 42.871441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699493, 32.560562, 43.291656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366543, 32.650745, 43.494171>,  <34.166775, 32.704853, 43.615681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366543, 32.650745, 43.494171>,  <34.699493, 32.560562, 43.291656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366543, 32.650745, 43.494171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174320, -0.760651, 0.625319,
		0.526088, 0.608754, 0.593844,
		-0.832373, 0.225454, 0.506287,
		34.116833, 32.718380, 43.646057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863895, 32.560169, 44.075096>,  <34.699493, 32.560562, 43.291656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863895, 32.560169, 44.075096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468529, 32.521683, 44.028145>,  <34.231308, 32.498589, 43.999973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468529, 32.521683, 44.028145>,  <34.863895, 32.560169, 44.075096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468529, 32.521683, 44.028145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002593, -0.762543, 0.646933,
		-0.151751, 0.639743, 0.753459,
		-0.988415, -0.096219, -0.117375,
		34.172005, 32.492817, 43.992931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703297, 32.422405, 44.783981>,  <34.863895, 32.560169, 44.075096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703297, 32.422405, 44.783981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404892, 32.295662, 44.549694>,  <34.225849, 32.219616, 44.409122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404892, 32.295662, 44.549694>,  <34.703297, 32.422405, 44.783981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404892, 32.295662, 44.549694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188258, -0.743323, 0.641895,
		-0.638767, 0.589128, 0.494878,
		-0.746013, -0.316857, -0.585719,
		34.181087, 32.200603, 44.373978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011547, 32.411217, 45.172356>,  <34.703297, 32.422405, 44.783981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011547, 32.411217, 45.172356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005489, 32.137661, 44.880585>,  <34.001854, 31.973528, 44.705521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005489, 32.137661, 44.880585>,  <34.011547, 32.411217, 45.172356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005489, 32.137661, 44.880585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333277, -0.684343, 0.648538,
		-0.942707, 0.252926, -0.217559,
		-0.015147, -0.683888, -0.729429,
		34.000946, 31.932495, 44.661755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441807, 32.100624, 45.373257>,  <34.011547, 32.411217, 45.172356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441807, 32.100624, 45.373257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646523, 31.855400, 45.132511>,  <33.769352, 31.708267, 44.988064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646523, 31.855400, 45.132511>,  <33.441807, 32.100624, 45.373257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646523, 31.855400, 45.132511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363710, -0.789295, 0.494699,
		-0.778320, -0.034282, -0.626930,
		0.511793, -0.613056, -0.601856,
		33.800060, 31.671484, 44.951954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011700, 31.632820, 45.355942>,  <33.441807, 32.100624, 45.373257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011700, 31.632820, 45.355942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338722, 31.465137, 45.198021>,  <33.534935, 31.364529, 45.103268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338722, 31.465137, 45.198021>,  <33.011700, 31.632820, 45.355942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338722, 31.465137, 45.198021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168928, -0.830030, 0.531521,
		-0.550513, -0.367855, -0.749412,
		0.817556, -0.419206, -0.394801,
		33.583988, 31.339376, 45.079582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806744, 30.888292, 45.136967>,  <33.011700, 31.632820, 45.355942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806744, 30.888292, 45.136967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204315, 30.905378, 45.177509>,  <33.442860, 30.915630, 45.201836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204315, 30.905378, 45.177509>,  <32.806744, 30.888292, 45.136967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204315, 30.905378, 45.177509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019224, -0.839852, 0.542475,
		0.108294, -0.541132, -0.833935,
		0.993933, 0.042715, 0.101354,
		33.502495, 30.918192, 45.207916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035202, 30.228966, 45.248093>,  <32.806744, 30.888292, 45.136967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035202, 30.228966, 45.248093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341938, 30.446043, 45.385170>,  <33.525978, 30.576290, 45.467415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341938, 30.446043, 45.385170>,  <33.035202, 30.228966, 45.248093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341938, 30.446043, 45.385170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141880, -0.664046, 0.734107,
		0.625960, -0.514321, -0.586215,
		0.766840, 0.542694, 0.342694,
		33.571991, 30.608850, 45.487980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520329, 29.659472, 45.381660>,  <33.035202, 30.228966, 45.248093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520329, 29.659472, 45.381660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671970, 29.966558, 45.588306>,  <33.762955, 30.150810, 45.712292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671970, 29.966558, 45.588306>,  <33.520329, 29.659472, 45.381660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671970, 29.966558, 45.588306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035863, -0.570057, 0.820822,
		0.924657, -0.292654, -0.243646,
		0.379109, 0.767717, 0.516612,
		33.785702, 30.196873, 45.743290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102612, 29.393421, 45.671925>,  <33.520329, 29.659472, 45.381660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102612, 29.393421, 45.671925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003864, 29.715853, 45.887066>,  <33.944614, 29.909311, 46.016151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003864, 29.715853, 45.887066>,  <34.102612, 29.393421, 45.671925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003864, 29.715853, 45.887066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331795, -0.451177, 0.828463,
		0.910476, 0.382981, -0.156070,
		-0.246871, 0.806080, 0.537857,
		33.929802, 29.957676, 46.048424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661228, 29.460741, 46.117214>,  <34.102612, 29.393421, 45.671925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661228, 29.460741, 46.117214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383499, 29.678293, 46.305729>,  <34.216862, 29.808825, 46.418839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383499, 29.678293, 46.305729>,  <34.661228, 29.460741, 46.117214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383499, 29.678293, 46.305729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185698, -0.497292, 0.847477,
		0.695293, 0.675939, 0.244283,
		-0.694323, 0.543881, 0.471284,
		34.175201, 29.841457, 46.447113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988853, 29.744432, 46.621159>,  <34.661228, 29.460741, 46.117214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988853, 29.744432, 46.621159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610798, 29.719057, 46.749344>,  <34.383965, 29.703833, 46.826256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610798, 29.719057, 46.749344>,  <34.988853, 29.744432, 46.621159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610798, 29.719057, 46.749344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323486, -0.318559, 0.890998,
		0.045562, 0.945778, 0.321602,
		-0.945136, -0.063438, 0.320460,
		34.327259, 29.700026, 46.845482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099468, 30.119699, 47.314217>,  <34.988853, 29.744432, 46.621159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099468, 30.119699, 47.314217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752758, 29.922026, 47.287464>,  <34.544731, 29.803421, 47.271412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752758, 29.922026, 47.287464>,  <35.099468, 30.119699, 47.314217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752758, 29.922026, 47.287464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132373, -0.357302, 0.924561,
		-0.480801, 0.792538, 0.375119,
		-0.866780, -0.494186, -0.066881,
		34.492725, 29.773769, 47.267399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666862, 30.379961, 47.911484>,  <35.099468, 30.119699, 47.314217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666862, 30.379961, 47.911484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531895, 30.035748, 47.758839>,  <34.450912, 29.829220, 47.667252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531895, 30.035748, 47.758839>,  <34.666862, 30.379961, 47.911484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531895, 30.035748, 47.758839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029302, -0.414788, 0.909446,
		-0.940897, 0.295685, 0.165174,
		-0.337422, -0.860535, -0.381609,
		34.430668, 29.777586, 47.644356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307713, 30.196312, 48.455521>,  <34.666862, 30.379961, 47.911484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307713, 30.196312, 48.455521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319141, 29.867653, 48.227810>,  <34.325996, 29.670458, 48.091183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319141, 29.867653, 48.227810>,  <34.307713, 30.196312, 48.455521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319141, 29.867653, 48.227810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098926, -0.564389, 0.819560,
		-0.994685, -0.079731, 0.065158,
		0.028570, -0.821650, -0.569276,
		34.327713, 29.621159, 48.057026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716831, 29.805349, 48.675697>,  <34.307713, 30.196312, 48.455521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716831, 29.805349, 48.675697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987171, 29.564129, 48.506199>,  <34.149376, 29.419397, 48.404499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987171, 29.564129, 48.506199>,  <33.716831, 29.805349, 48.675697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987171, 29.564129, 48.506199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057360, -0.616221, 0.785482,
		-0.734807, -0.506559, -0.451061,
		0.675846, -0.603051, -0.423747,
		34.189926, 29.383213, 48.379074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508293, 29.148441, 48.764202>,  <33.716831, 29.805349, 48.675697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508293, 29.148441, 48.764202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894791, 29.101820, 48.672295>,  <34.126690, 29.073847, 48.617149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894791, 29.101820, 48.672295>,  <33.508293, 29.148441, 48.764202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894791, 29.101820, 48.672295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081515, -0.707711, 0.701784,
		-0.244405, -0.696822, -0.674318,
		0.966241, -0.116553, -0.229770,
		34.184662, 29.066854, 48.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642723, 28.508780, 48.577442>,  <33.508293, 29.148441, 48.764202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642723, 28.508780, 48.577442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995159, 28.654484, 48.698105>,  <34.206619, 28.741907, 48.770504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995159, 28.654484, 48.698105>,  <33.642723, 28.508780, 48.577442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995159, 28.654484, 48.698105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185992, -0.853292, 0.487133,
		0.434846, -0.373101, -0.819576,
		0.881088, 0.364263, 0.301657,
		34.259487, 28.763763, 48.788601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042580, 28.008041, 48.466763>,  <33.642723, 28.508780, 48.577442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042580, 28.008041, 48.466763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198593, 28.227718, 48.762402>,  <34.292202, 28.359524, 48.939785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198593, 28.227718, 48.762402>,  <34.042580, 28.008041, 48.466763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198593, 28.227718, 48.762402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053455, -0.814819, 0.577246,
		0.919249, -0.185634, -0.347161,
		0.390030, 0.549191, 0.739098,
		34.315601, 28.392475, 48.984131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671833, 27.703651, 48.684441>,  <34.042580, 28.008041, 48.466763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671833, 27.703651, 48.684441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566204, 27.907784, 49.011814>,  <34.502827, 28.030262, 49.208237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566204, 27.907784, 49.011814>,  <34.671833, 27.703651, 48.684441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566204, 27.907784, 49.011814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086148, -0.832682, 0.547009,
		0.960648, 0.214956, 0.175925,
		-0.264072, 0.510328, 0.818432,
		34.486984, 28.060883, 49.257343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124382, 27.439339, 49.122883>,  <34.671833, 27.703651, 48.684441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124382, 27.439339, 49.122883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871723, 27.604710, 49.385212>,  <34.720127, 27.703932, 49.542610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871723, 27.604710, 49.385212>,  <35.124382, 27.439339, 49.122883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871723, 27.604710, 49.385212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214092, -0.720027, 0.660095,
		0.745112, 0.557352, 0.366288,
		-0.631643, 0.413425, 0.655825,
		34.682232, 27.728737, 49.581959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438877, 27.487350, 49.774513>,  <35.124382, 27.439339, 49.122883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438877, 27.487350, 49.774513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053013, 27.509127, 49.877632>,  <34.821495, 27.522192, 49.939503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053013, 27.509127, 49.877632>,  <35.438877, 27.487350, 49.774513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053013, 27.509127, 49.877632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161066, -0.652497, 0.740476,
		0.208526, 0.755833, 0.620672,
		-0.964663, 0.054439, 0.257802,
		34.763615, 27.525459, 49.954971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527546, 27.598974, 50.502354>,  <35.438877, 27.487350, 49.774513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527546, 27.598974, 50.502354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144562, 27.497860, 50.446690>,  <34.914772, 27.437191, 50.413292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144562, 27.497860, 50.446690>,  <35.527546, 27.598974, 50.502354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144562, 27.497860, 50.446690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021633, -0.543793, 0.838941,
		-0.287749, 0.800243, 0.526129,
		-0.957462, -0.252786, -0.139164,
		34.857323, 27.422024, 50.404942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191383, 27.707319, 51.175392>,  <35.527546, 27.598974, 50.502354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191383, 27.707319, 51.175392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998737, 27.424267, 50.968586>,  <34.883148, 27.254436, 50.844501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998737, 27.424267, 50.968586>,  <35.191383, 27.707319, 51.175392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998737, 27.424267, 50.968586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006860, -0.586882, 0.809643,
		-0.876356, 0.393483, 0.277797,
		-0.481615, -0.707630, -0.517017,
		34.854252, 27.211977, 50.813480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634644, 27.447866, 51.571667>,  <35.191383, 27.707319, 51.175392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634644, 27.447866, 51.571667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752007, 27.154840, 51.325981>,  <34.822426, 26.979025, 51.178570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752007, 27.154840, 51.325981>,  <34.634644, 27.447866, 51.571667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752007, 27.154840, 51.325981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083941, -0.620267, 0.779886,
		-0.952295, -0.280383, -0.120499,
		0.293409, -0.732567, -0.614213,
		34.840031, 26.935070, 51.141716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133251, 26.789408, 51.438866>,  <34.634644, 27.447866, 51.571667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133251, 26.789408, 51.438866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518333, 26.687183, 51.403347>,  <34.749382, 26.625849, 51.382034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518333, 26.687183, 51.403347>,  <34.133251, 26.789408, 51.438866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518333, 26.687183, 51.403347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089355, -0.610138, 0.787240,
		-0.255366, -0.749947, -0.610220,
		0.962707, -0.255561, -0.088797,
		34.807144, 26.610516, 51.376709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195526, 26.043085, 51.326057>,  <34.133251, 26.789408, 51.438866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195526, 26.043085, 51.326057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504456, 26.213455, 51.514568>,  <34.689816, 26.315678, 51.627674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504456, 26.213455, 51.514568>,  <34.195526, 26.043085, 51.326057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504456, 26.213455, 51.514568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249271, -0.479183, 0.841574,
		0.584275, -0.767445, -0.263915,
		0.772326, 0.425925, 0.471276,
		34.736153, 26.341232, 51.655952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681305, 25.501204, 51.539299>,  <34.195526, 26.043085, 51.326057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681305, 25.501204, 51.539299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627140, 25.838774, 51.746937>,  <34.594643, 26.041315, 51.871521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627140, 25.838774, 51.746937>,  <34.681305, 25.501204, 51.539299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627140, 25.838774, 51.746937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379513, -0.528139, 0.759631,
		0.915224, -0.094143, 0.391794,
		-0.135408, 0.843923, 0.519094,
		34.586517, 26.091951, 51.902664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375935, 25.541401, 51.509602>,  <34.681305, 25.501204, 51.539299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375935, 25.541401, 51.509602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708817, 25.440039, 51.312332>,  <35.908546, 25.379221, 51.193970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708817, 25.440039, 51.312332>,  <35.375935, 25.541401, 51.509602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708817, 25.440039, 51.312332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443876, -0.228559, 0.866450,
		-0.332285, -0.939971, -0.077726,
		0.832202, -0.253408, -0.493177,
		35.958477, 25.364017, 51.164379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471695, 24.899578, 51.686798>,  <35.375935, 25.541401, 51.509602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471695, 24.899578, 51.686798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802818, 25.101854, 51.589626>,  <36.001492, 25.223221, 51.531322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802818, 25.101854, 51.589626>,  <35.471695, 24.899578, 51.686798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802818, 25.101854, 51.589626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394624, -0.217082, 0.892831,
		0.398762, -0.834956, -0.379260,
		0.827805, 0.505692, -0.242930,
		36.051159, 25.253561, 51.516747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043400, 24.429304, 51.568581>,  <35.471695, 24.899578, 51.686798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043400, 24.429304, 51.568581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149555, 24.790798, 51.702942>,  <36.213249, 25.007694, 51.783558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149555, 24.790798, 51.702942>,  <36.043400, 24.429304, 51.568581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149555, 24.790798, 51.702942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597397, -0.427591, 0.678441,
		0.756761, 0.020618, -0.653366,
		0.265386, 0.903737, 0.335901,
		36.229172, 25.061920, 51.803711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557072, 24.131950, 52.117584>,  <36.043400, 24.429304, 51.568581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557072, 24.131950, 52.117584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571468, 24.526577, 52.053848>,  <36.580105, 24.763353, 52.015606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571468, 24.526577, 52.053848>,  <36.557072, 24.131950, 52.117584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571468, 24.526577, 52.053848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830964, 0.059031, 0.553185,
		0.555161, -0.152309, -0.817678,
		0.035987, 0.986568, -0.159335,
		36.582264, 24.822548, 52.006046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092663, 24.419941, 51.600410>,  <36.557072, 24.131950, 52.117584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092663, 24.419941, 51.600410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040009, 24.697958, 51.883137>,  <37.008415, 24.864767, 52.052773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040009, 24.697958, 51.883137>,  <37.092663, 24.419941, 51.600410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040009, 24.697958, 51.883137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947596, -0.121147, 0.295610,
		0.291090, 0.708689, -0.642671,
		-0.131638, 0.695042, 0.706816,
		37.000519, 24.906471, 52.095181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382008, 25.043928, 51.330887>,  <37.092663, 24.419941, 51.600410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382008, 25.043928, 51.330887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987125, 24.985029, 51.355343>,  <36.750195, 24.949690, 51.370018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987125, 24.985029, 51.355343>,  <37.382008, 25.043928, 51.330887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987125, 24.985029, 51.355343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095305, 0.237588, -0.966679,
		0.127812, -0.960141, -0.248582,
		-0.987209, -0.147244, 0.061139,
		36.690964, 24.940855, 51.373684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123760, 24.691513, 50.716473>,  <37.382008, 25.043928, 51.330887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123760, 24.691513, 50.716473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785782, 24.872795, 50.830086>,  <36.582996, 24.981564, 50.898254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785782, 24.872795, 50.830086>,  <37.123760, 24.691513, 50.716473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785782, 24.872795, 50.830086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289632, 0.058753, -0.955333,
		-0.449648, -0.889469, 0.081619,
		-0.844943, 0.453204, 0.284037,
		36.532299, 25.008757, 50.915298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648666, 24.502882, 50.282207>,  <37.123760, 24.691513, 50.716473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648666, 24.502882, 50.282207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427528, 24.810202, 50.411247>,  <36.294846, 24.994595, 50.488670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427528, 24.810202, 50.411247>,  <36.648666, 24.502882, 50.282207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427528, 24.810202, 50.411247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432538, 0.066314, -0.899174,
		-0.712229, -0.636644, 0.295658,
		-0.552847, 0.768301, 0.322604,
		36.261673, 25.040691, 50.508030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046551, 24.408669, 49.921192>,  <36.648666, 24.502882, 50.282207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046551, 24.408669, 49.921192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006512, 24.787012, 50.044693>,  <35.982487, 25.014019, 50.118793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006512, 24.787012, 50.044693>,  <36.046551, 24.408669, 49.921192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006512, 24.787012, 50.044693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506185, 0.218745, -0.834223,
		-0.856596, -0.239794, 0.456883,
		-0.100101, 0.945859, 0.308756,
		35.976482, 25.070770, 50.137321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389622, 24.594244, 49.701141>,  <36.046551, 24.408669, 49.921192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389622, 24.594244, 49.701141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616894, 24.920307, 49.746212>,  <35.753258, 25.115944, 49.773254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616894, 24.920307, 49.746212>,  <35.389622, 24.594244, 49.701141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616894, 24.920307, 49.746212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267606, 0.312509, -0.911441,
		-0.778178, 0.487709, 0.395701,
		0.568178, 0.815156, 0.112674,
		35.787346, 25.164854, 49.780014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948471, 25.090078, 49.384399>,  <35.389622, 24.594244, 49.701141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948471, 25.090078, 49.384399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321793, 25.233339, 49.374004>,  <35.545784, 25.319296, 49.367767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321793, 25.233339, 49.374004>,  <34.948471, 25.090078, 49.384399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321793, 25.233339, 49.374004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264589, 0.636953, -0.724074,
		-0.242779, 0.682654, 0.689233,
		0.933301, 0.358153, -0.025984,
		35.601784, 25.340786, 49.366211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825306, 25.797781, 49.140022>,  <34.948471, 25.090078, 49.384399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825306, 25.797781, 49.140022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216999, 25.727213, 49.100060>,  <35.452015, 25.684872, 49.076084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216999, 25.727213, 49.100060>,  <34.825306, 25.797781, 49.140022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216999, 25.727213, 49.100060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018844, 0.569835, -0.821543,
		0.201865, 0.802599, 0.561325,
		0.979232, -0.176418, -0.099905,
		35.510769, 25.674288, 49.070087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110561, 26.394123, 48.930695>,  <34.825306, 25.797781, 49.140022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110561, 26.394123, 48.930695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405331, 26.142019, 48.832947>,  <35.582191, 25.990757, 48.774300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405331, 26.142019, 48.832947>,  <35.110561, 26.394123, 48.930695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405331, 26.142019, 48.832947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102981, 0.461959, -0.880902,
		0.668086, 0.623991, 0.405333,
		0.736923, -0.630261, -0.244369,
		35.626408, 25.952942, 48.759636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588818, 26.876234, 48.602699>,  <35.110561, 26.394123, 48.930695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588818, 26.876234, 48.602699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660408, 26.500328, 48.486210>,  <35.703362, 26.274784, 48.416317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660408, 26.500328, 48.486210>,  <35.588818, 26.876234, 48.602699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660408, 26.500328, 48.486210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087509, 0.310038, -0.946688,
		0.979954, 0.143951, 0.137727,
		0.178978, -0.939763, -0.291226,
		35.714100, 26.218399, 48.398842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143028, 26.959867, 48.261780>,  <35.588818, 26.876234, 48.602699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143028, 26.959867, 48.261780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024033, 26.606760, 48.116329>,  <35.952637, 26.394896, 48.029060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024033, 26.606760, 48.116329>,  <36.143028, 26.959867, 48.261780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024033, 26.606760, 48.116329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177180, 0.323206, -0.929594,
		0.938141, -0.340969, 0.060259,
		-0.297487, -0.882767, -0.363626,
		35.934788, 26.341930, 48.007240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612640, 26.783272, 47.818485>,  <36.143028, 26.959867, 48.261780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612640, 26.783272, 47.818485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299873, 26.558844, 47.709816>,  <36.112213, 26.424187, 47.644615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299873, 26.558844, 47.709816>,  <36.612640, 26.783272, 47.818485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299873, 26.558844, 47.709816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146985, 0.257579, -0.955012,
		0.605806, -0.786672, -0.118937,
		-0.781917, -0.561071, -0.271672,
		36.065300, 26.390522, 47.628315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890232, 26.544199, 47.140102>,  <36.612640, 26.783272, 47.818485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890232, 26.544199, 47.140102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497120, 26.477116, 47.171150>,  <36.261253, 26.436865, 47.189781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497120, 26.477116, 47.171150>,  <36.890232, 26.544199, 47.140102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497120, 26.477116, 47.171150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096513, 0.107579, -0.989501,
		0.157596, -0.979949, -0.121912,
		-0.982776, -0.167708, 0.077623,
		36.202286, 26.426804, 47.194439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759842, 26.091896, 46.483967>,  <36.890232, 26.544199, 47.140102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759842, 26.091896, 46.483967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428154, 26.267042, 46.622921>,  <36.229141, 26.372129, 46.706291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428154, 26.267042, 46.622921>,  <36.759842, 26.091896, 46.483967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428154, 26.267042, 46.622921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237340, 0.286854, -0.928108,
		-0.506033, -0.852051, -0.133942,
		-0.829217, 0.437863, 0.347383,
		36.179390, 26.398401, 46.727135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164478, 25.915802, 46.023514>,  <36.759842, 26.091896, 46.483967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164478, 25.915802, 46.023514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059830, 26.254671, 46.208492>,  <35.997040, 26.457993, 46.319477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059830, 26.254671, 46.208492>,  <36.164478, 25.915802, 46.023514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059830, 26.254671, 46.208492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252227, 0.402470, -0.880000,
		-0.931632, -0.346865, 0.108386,
		-0.261618, 0.847173, 0.462443,
		35.981342, 26.508823, 46.347225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624424, 26.130112, 45.529747>,  <36.164478, 25.915802, 46.023514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624424, 26.130112, 45.529747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690361, 26.458866, 45.747860>,  <35.729923, 26.656118, 45.878727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690361, 26.458866, 45.747860>,  <35.624424, 26.130112, 45.529747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690361, 26.458866, 45.747860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273348, 0.569257, -0.775388,
		-0.947685, -0.021235, 0.318499,
		0.164842, 0.821885, 0.545281,
		35.739815, 26.705431, 45.911446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008091, 26.585617, 45.616558>,  <35.624424, 26.130112, 45.529747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008091, 26.585617, 45.616558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324825, 26.817152, 45.694473>,  <35.514866, 26.956074, 45.741222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324825, 26.817152, 45.694473>,  <35.008091, 26.585617, 45.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324825, 26.817152, 45.694473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294332, 0.641140, -0.708737,
		-0.535132, 0.503869, 0.678048,
		0.791834, 0.578839, 0.194790,
		35.562374, 26.990805, 45.752911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825794, 27.350227, 45.660652>,  <35.008091, 26.585617, 45.616558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825794, 27.350227, 45.660652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219490, 27.367601, 45.592087>,  <35.455708, 27.378025, 45.550949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219490, 27.367601, 45.592087>,  <34.825794, 27.350227, 45.660652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219490, 27.367601, 45.592087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148839, 0.726868, -0.670455,
		0.095472, 0.685402, 0.721879,
		0.984242, 0.043434, -0.171410,
		35.514763, 27.380632, 45.540665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037086, 28.070335, 45.671520>,  <34.825794, 27.350227, 45.660652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037086, 28.070335, 45.671520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325882, 27.894846, 45.457508>,  <35.499157, 27.789553, 45.329102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325882, 27.894846, 45.457508>,  <35.037086, 28.070335, 45.671520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325882, 27.894846, 45.457508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009908, 0.766633, -0.642009,
		0.691839, 0.468821, 0.549150,
		0.721984, -0.438726, -0.535031,
		35.542477, 27.763227, 45.296997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583630, 28.611502, 45.409348>,  <35.037086, 28.070335, 45.671520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583630, 28.611502, 45.409348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642548, 28.312111, 45.150707>,  <35.677898, 28.132477, 44.995525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642548, 28.312111, 45.150707>,  <35.583630, 28.611502, 45.409348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642548, 28.312111, 45.150707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000840, 0.653822, -0.756648,
		0.989092, 0.110911, 0.096936,
		0.147299, -0.748476, -0.646597,
		35.686737, 28.087568, 44.956730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025555, 28.904728, 44.893909>,  <35.583630, 28.611502, 45.409348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025555, 28.904728, 44.893909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871605, 28.574848, 44.728142>,  <35.779236, 28.376921, 44.628681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871605, 28.574848, 44.728142>,  <36.025555, 28.904728, 44.893909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871605, 28.574848, 44.728142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137531, 0.495236, -0.857803,
		0.912663, -0.273154, -0.304027,
		-0.384878, -0.824699, -0.414417,
		35.756142, 28.327438, 44.603817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307438, 28.891954, 44.223579>,  <36.025555, 28.904728, 44.893909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307438, 28.891954, 44.223579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981693, 28.659836, 44.220284>,  <35.786247, 28.520565, 44.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981693, 28.659836, 44.220284>,  <36.307438, 28.891954, 44.223579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981693, 28.659836, 44.220284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295230, 0.426452, -0.854973,
		0.499653, -0.693825, -0.518607,
		-0.814363, -0.580298, -0.008240,
		35.737385, 28.485746, 44.217812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269379, 28.704546, 43.546967>,  <36.307438, 28.891954, 44.223579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269379, 28.704546, 43.546967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899323, 28.626123, 43.676994>,  <35.677288, 28.579071, 43.755013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899323, 28.626123, 43.676994>,  <36.269379, 28.704546, 43.546967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899323, 28.626123, 43.676994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378329, 0.405677, -0.832041,
		0.031250, -0.892743, -0.449482,
		-0.925143, -0.196053, 0.325073,
		35.621780, 28.567307, 43.774517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947304, 28.576349, 42.945080>,  <36.269379, 28.704546, 43.546967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947304, 28.576349, 42.945080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637894, 28.632624, 43.192261>,  <35.452248, 28.666389, 43.340569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637894, 28.632624, 43.192261>,  <35.947304, 28.576349, 42.945080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637894, 28.632624, 43.192261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515932, 0.426478, -0.742920,
		-0.368062, -0.893490, -0.257307,
		-0.773527, 0.140688, 0.617950,
		35.405834, 28.674829, 43.377647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356876, 28.360111, 42.568241>,  <35.947304, 28.576349, 42.945080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356876, 28.360111, 42.568241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236660, 28.596970, 42.867317>,  <35.164532, 28.739084, 43.046764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236660, 28.596970, 42.867317>,  <35.356876, 28.360111, 42.568241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236660, 28.596970, 42.867317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705813, 0.389177, -0.591920,
		-0.641487, -0.705624, 0.300981,
		-0.300538, 0.592146, 0.747690,
		35.146500, 28.774612, 43.091625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631256, 28.226036, 42.647804>,  <35.356876, 28.360111, 42.568241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631256, 28.226036, 42.647804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749535, 28.581312, 42.788475>,  <34.820503, 28.794477, 42.872879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749535, 28.581312, 42.788475>,  <34.631256, 28.226036, 42.647804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749535, 28.581312, 42.788475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678614, 0.454410, -0.577056,
		-0.672344, -0.068022, 0.737107,
		0.295697, 0.888192, 0.351680,
		34.838245, 28.847769, 42.893978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056366, 28.601723, 42.749386>,  <34.631256, 28.226036, 42.647804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056366, 28.601723, 42.749386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342552, 28.880835, 42.735416>,  <34.514263, 29.048302, 42.727036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342552, 28.880835, 42.735416>,  <34.056366, 28.601723, 42.749386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342552, 28.880835, 42.735416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558931, 0.541676, -0.627841,
		-0.419179, 0.468714, 0.777558,
		0.715462, 0.697779, -0.034919,
		34.557190, 29.090168, 42.724941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692299, 29.257196, 42.897976>,  <34.056366, 28.601723, 42.749386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692299, 29.257196, 42.897976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043259, 29.362270, 42.737392>,  <34.253834, 29.425314, 42.641041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043259, 29.362270, 42.737392>,  <33.692299, 29.257196, 42.897976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043259, 29.362270, 42.737392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452416, 0.731497, -0.510129,
		0.159665, 0.629213, 0.760656,
		0.877398, 0.262684, -0.401461,
		34.306477, 29.441076, 42.616955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634411, 29.992039, 42.831642>,  <33.692299, 29.257196, 42.897976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634411, 29.992039, 42.831642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939613, 29.916842, 42.584263>,  <34.122734, 29.871723, 42.435833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939613, 29.916842, 42.584263>,  <33.634411, 29.992039, 42.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939613, 29.916842, 42.584263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343850, 0.692127, -0.634608,
		0.547346, 0.696864, 0.463457,
		0.763007, -0.187991, -0.618450,
		34.168514, 29.860445, 42.398727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020287, 30.643539, 42.608746>,  <33.634411, 29.992039, 42.831642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020287, 30.643539, 42.608746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102207, 30.368099, 42.330498>,  <34.151360, 30.202835, 42.163548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102207, 30.368099, 42.330498>,  <34.020287, 30.643539, 42.608746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102207, 30.368099, 42.330498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217175, 0.661002, -0.718270,
		0.954405, 0.298177, -0.014169,
		0.204806, -0.688598, -0.695620,
		34.163651, 30.161520, 42.121811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292084, 30.985332, 42.005619>,  <34.020287, 30.643539, 42.608746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292084, 30.985332, 42.005619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204590, 30.626259, 41.852615>,  <34.152092, 30.410814, 41.760811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204590, 30.626259, 41.852615>,  <34.292084, 30.985332, 42.005619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204590, 30.626259, 41.852615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413562, 0.440342, -0.796910,
		0.883811, -0.016120, -0.467567,
		-0.218735, -0.897686, -0.382512,
		34.138969, 30.356953, 41.737862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593403, 31.042698, 41.373753>,  <34.292084, 30.985332, 42.005619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593403, 31.042698, 41.373753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292519, 30.779161, 41.369469>,  <34.111988, 30.621040, 41.366898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292519, 30.779161, 41.369469>,  <34.593403, 31.042698, 41.373753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292519, 30.779161, 41.369469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372045, 0.438076, -0.818335,
		0.543844, -0.611573, -0.574641,
		-0.752208, -0.658838, -0.010712,
		34.066856, 30.581509, 41.366257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559029, 30.884928, 40.670502>,  <34.593403, 31.042698, 41.373753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559029, 30.884928, 40.670502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207397, 30.773993, 40.825581>,  <33.996418, 30.707432, 40.918629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207397, 30.773993, 40.825581>,  <34.559029, 30.884928, 40.670502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207397, 30.773993, 40.825581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472653, 0.401565, -0.784439,
		0.061868, -0.872828, -0.484090,
		-0.879074, -0.277338, 0.387701,
		33.943676, 30.690790, 40.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079990, 30.686287, 40.099243>,  <34.559029, 30.884928, 40.670502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079990, 30.686287, 40.099243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850166, 30.780279, 40.412846>,  <33.712273, 30.836674, 40.601006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850166, 30.780279, 40.412846>,  <34.079990, 30.686287, 40.099243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850166, 30.780279, 40.412846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501818, 0.655592, -0.564249,
		-0.646575, -0.717624, -0.258760,
		-0.574560, 0.234979, 0.784006,
		33.677799, 30.850773, 40.648048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428257, 30.641479, 39.886372>,  <34.079990, 30.686287, 40.099243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428257, 30.641479, 39.886372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380005, 30.865675, 40.214104>,  <33.351055, 31.000193, 40.410744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380005, 30.865675, 40.214104>,  <33.428257, 30.641479, 39.886372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380005, 30.865675, 40.214104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489171, 0.684631, -0.540363,
		-0.863806, -0.465974, 0.191591,
		-0.120626, 0.560489, 0.819330,
		33.343819, 31.033821, 40.459904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665154, 30.745672, 39.868370>,  <33.428257, 30.641479, 39.886372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665154, 30.745672, 39.868370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894257, 31.003401, 40.071072>,  <33.031719, 31.158039, 40.192692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894257, 31.003401, 40.071072>,  <32.665154, 30.745672, 39.868370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894257, 31.003401, 40.071072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308826, 0.742257, -0.594711,
		-0.759328, 0.184124, 0.624115,
		0.572754, 0.644324, 0.506754,
		33.066082, 31.196697, 40.223099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348747, 31.427095, 39.802223>,  <32.665154, 30.745672, 39.868370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348747, 31.427095, 39.802223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685688, 31.547234, 39.981216>,  <32.887852, 31.619316, 40.088612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685688, 31.547234, 39.981216>,  <32.348747, 31.427095, 39.802223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685688, 31.547234, 39.981216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055281, 0.777784, -0.626096,
		-0.536092, 0.552128, 0.638561,
		0.842347, 0.300345, 0.447486,
		32.938393, 31.637337, 40.115463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273491, 32.155800, 39.982113>,  <32.348747, 31.427095, 39.802223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273491, 32.155800, 39.982113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666538, 32.081551, 39.982208>,  <32.902367, 32.037003, 39.982265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666538, 32.081551, 39.982208>,  <32.273491, 32.155800, 39.982113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666538, 32.081551, 39.982208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151362, 0.800534, -0.579858,
		0.107445, 0.569816, 0.814718,
		0.982622, -0.185620, 0.000236,
		32.961327, 32.025864, 39.982281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572861, 32.738811, 40.110710>,  <32.273491, 32.155800, 39.982113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572861, 32.738811, 40.110710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868950, 32.540188, 39.929386>,  <33.046604, 32.421013, 39.820591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868950, 32.540188, 39.929386>,  <32.572861, 32.738811, 40.110710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868950, 32.540188, 39.929386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128897, 0.766511, -0.629164,
		0.659888, 0.407293, 0.631396,
		0.740226, -0.496562, -0.453312,
		33.091019, 32.391220, 39.793392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116482, 33.235226, 39.974781>,  <32.572861, 32.738811, 40.110710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116482, 33.235226, 39.974781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203178, 32.944664, 39.713902>,  <33.255196, 32.770329, 39.557373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203178, 32.944664, 39.713902>,  <33.116482, 33.235226, 39.974781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203178, 32.944664, 39.713902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257500, 0.686957, -0.679547,
		0.941656, -0.020652, 0.335943,
		0.216744, -0.726405, -0.652195,
		33.268200, 32.726742, 39.518242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637669, 33.517002, 39.737553>,  <33.116482, 33.235226, 39.974781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637669, 33.517002, 39.737553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503506, 33.237106, 39.485245>,  <33.423008, 33.069168, 39.333858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503506, 33.237106, 39.485245>,  <33.637669, 33.517002, 39.737553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503506, 33.237106, 39.485245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110241, 0.635803, -0.763938,
		0.935602, -0.325764, -0.136110,
		-0.335403, -0.699737, -0.630772,
		33.402885, 33.027184, 39.296013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177715, 33.478100, 39.349545>,  <33.637669, 33.517002, 39.737553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177715, 33.478100, 39.349545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865768, 33.310478, 39.163555>,  <33.678600, 33.209904, 39.051960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865768, 33.310478, 39.163555>,  <34.177715, 33.478100, 39.349545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865768, 33.310478, 39.163555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121596, 0.627265, -0.769255,
		0.614006, -0.656464, -0.438237,
		-0.779879, -0.419040, -0.464968,
		33.631809, 33.184761, 39.024063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377731, 33.469791, 38.699417>,  <34.177715, 33.478100, 39.349545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377731, 33.469791, 38.699417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984600, 33.402809, 38.668396>,  <33.748722, 33.362621, 38.649784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984600, 33.402809, 38.668396>,  <34.377731, 33.469791, 38.699417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984600, 33.402809, 38.668396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052552, 0.656827, -0.752208,
		0.176899, -0.735213, -0.654346,
		-0.982825, -0.167452, -0.077555,
		33.689751, 33.352573, 38.645130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987282, 33.524574, 38.077988>,  <34.377731, 33.469791, 38.699417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987282, 33.524574, 38.077988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385651, 33.560638, 38.078568>,  <35.624672, 33.582275, 38.078915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385651, 33.560638, 38.078568>,  <34.987282, 33.524574, 38.077988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385651, 33.560638, 38.078568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057436, -0.646649, 0.760622,
		0.069513, -0.757440, -0.649193,
		0.995926, 0.090161, 0.001446,
		35.684429, 33.587688, 38.079002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140060, 32.830299, 38.231510>,  <34.987282, 33.524574, 38.077988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140060, 32.830299, 38.231510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487419, 33.024464, 38.272026>,  <35.695835, 33.140965, 38.296333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487419, 33.024464, 38.272026>,  <35.140060, 32.830299, 38.231510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487419, 33.024464, 38.272026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385808, -0.789725, 0.476955,
		0.311509, -0.375110, -0.873072,
		0.868398, 0.485414, 0.101286,
		35.747940, 33.170086, 38.302410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564796, 32.315704, 38.057537>,  <35.140060, 32.830299, 38.231510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564796, 32.315704, 38.057537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783031, 32.573231, 38.272137>,  <35.913975, 32.727745, 38.400898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783031, 32.573231, 38.272137>,  <35.564796, 32.315704, 38.057537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783031, 32.573231, 38.272137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379225, -0.760549, 0.527024,
		0.747342, -0.084083, -0.659098,
		0.545590, 0.643814, 0.536504,
		35.946709, 32.766376, 38.433086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008137, 31.834015, 38.211887>,  <35.564796, 32.315704, 38.057537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008137, 31.834015, 38.211887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057503, 32.150166, 38.451912>,  <36.087120, 32.339855, 38.595924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057503, 32.150166, 38.451912>,  <36.008137, 31.834015, 38.211887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057503, 32.150166, 38.451912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364214, -0.598558, 0.713496,
		0.923102, 0.130497, -0.361736,
		0.123411, 0.790379, 0.600059,
		36.094524, 32.387280, 38.631931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722172, 31.898787, 38.359039>,  <36.008137, 31.834015, 38.211887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722172, 31.898787, 38.359039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487614, 32.035351, 38.652866>,  <36.346878, 32.117290, 38.829163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487614, 32.035351, 38.652866>,  <36.722172, 31.898787, 38.359039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487614, 32.035351, 38.652866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367278, -0.696202, 0.616774,
		0.721977, 0.631460, 0.282855,
		-0.586393, 0.341410, 0.734563,
		36.311695, 32.137775, 38.873234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189892, 31.905121, 39.024788>,  <36.722172, 31.898787, 38.359039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189892, 31.905121, 39.024788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825882, 31.972891, 39.176128>,  <36.607475, 32.013554, 39.266933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825882, 31.972891, 39.176128>,  <37.189892, 31.905121, 39.024788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825882, 31.972891, 39.176128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219988, -0.576204, 0.787144,
		0.351371, 0.799553, 0.487087,
		-0.910024, 0.169426, 0.378353,
		36.552876, 32.023720, 39.289635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285564, 31.897516, 39.701984>,  <37.189892, 31.905121, 39.024788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285564, 31.897516, 39.701984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887440, 31.858824, 39.701042>,  <36.648567, 31.835608, 39.700478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887440, 31.858824, 39.701042>,  <37.285564, 31.897516, 39.701984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887440, 31.858824, 39.701042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055697, -0.592633, 0.803545,
		-0.079124, 0.799643, 0.595240,
		-0.995308, -0.096733, -0.002354,
		36.588848, 31.829803, 39.700336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129753, 31.956511, 40.325840>,  <37.285564, 31.897516, 39.701984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129753, 31.956511, 40.325840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845856, 31.754423, 40.129467>,  <36.675518, 31.633171, 40.011642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845856, 31.754423, 40.129467>,  <37.129753, 31.956511, 40.325840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845856, 31.754423, 40.129467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029804, -0.674736, 0.737457,
		-0.703827, 0.538039, 0.463834,
		-0.709746, -0.505218, -0.490932,
		36.632931, 31.602858, 39.982185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628784, 31.828663, 40.852432>,  <37.129753, 31.956511, 40.325840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628784, 31.828663, 40.852432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597187, 31.559366, 40.558357>,  <36.578228, 31.397787, 40.381912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597187, 31.559366, 40.558357>,  <36.628784, 31.828663, 40.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597187, 31.559366, 40.558357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177079, -0.735243, 0.654264,
		-0.981021, -0.078502, 0.177298,
		-0.078996, -0.673243, -0.735190,
		36.573486, 31.357393, 40.337799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324577, 31.193331, 41.162109>,  <36.628784, 31.828663, 40.852432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324577, 31.193331, 41.162109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499199, 31.059977, 40.827858>,  <36.603970, 30.979963, 40.627308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499199, 31.059977, 40.827858>,  <36.324577, 31.193331, 41.162109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499199, 31.059977, 40.827858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294403, -0.824737, 0.482842,
		-0.850148, -0.456796, -0.261889,
		0.436550, -0.333386, -0.835630,
		36.630165, 30.959961, 40.577168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092312, 30.442907, 41.179207>,  <36.324577, 31.193331, 41.162109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092312, 30.442907, 41.179207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405361, 30.485146, 40.933815>,  <36.593189, 30.510489, 40.786579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405361, 30.485146, 40.933815>,  <36.092312, 30.442907, 41.179207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405361, 30.485146, 40.933815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411313, -0.827452, 0.382289,
		-0.467256, -0.551518, -0.691013,
		0.782619, 0.105596, -0.613479,
		36.640148, 30.516825, 40.749771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231209, 29.754745, 41.013275>,  <36.092312, 30.442907, 41.179207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231209, 29.754745, 41.013275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563404, 29.972832, 40.967625>,  <36.762722, 30.103683, 40.940235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563404, 29.972832, 40.967625>,  <36.231209, 29.754745, 41.013275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563404, 29.972832, 40.967625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546705, -0.758527, 0.354613,
		0.106770, -0.356898, -0.928022,
		0.830490, 0.545216, -0.114130,
		36.812550, 30.136396, 40.933384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677635, 29.312826, 40.565022>,  <36.231209, 29.754745, 41.013275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677635, 29.312826, 40.565022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894718, 29.589506, 40.755608>,  <37.024967, 29.755514, 40.869961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894718, 29.589506, 40.755608>,  <36.677635, 29.312826, 40.565022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894718, 29.589506, 40.755608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610151, -0.714519, 0.342313,
		0.577223, 0.104942, -0.809815,
		0.542706, 0.691701, 0.476467,
		37.057529, 29.797016, 40.898548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352497, 28.996231, 40.550797>,  <36.677635, 29.312826, 40.565022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352497, 28.996231, 40.550797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347637, 29.266077, 40.846024>,  <37.344723, 29.427984, 41.023159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347637, 29.266077, 40.846024>,  <37.352497, 28.996231, 40.550797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347637, 29.266077, 40.846024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437635, -0.660087, 0.610542,
		0.899071, 0.330421, -0.287218,
		-0.012148, 0.674617, 0.738068,
		37.343994, 29.468462, 41.067444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910542, 28.821695, 40.884129>,  <37.352497, 28.996231, 40.550797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910542, 28.821695, 40.884129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743027, 29.077890, 41.141621>,  <37.642517, 29.231607, 41.296116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743027, 29.077890, 41.141621>,  <37.910542, 28.821695, 40.884129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743027, 29.077890, 41.141621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411205, -0.498293, 0.763292,
		0.809646, 0.584365, -0.054692,
		-0.418788, 0.640486, 0.643734,
		37.617390, 29.270037, 41.334740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401344, 28.942087, 41.435936>,  <37.910542, 28.821695, 40.884129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401344, 28.942087, 41.435936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033009, 29.014971, 41.573837>,  <37.812008, 29.058701, 41.656578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033009, 29.014971, 41.573837>,  <38.401344, 28.942087, 41.435936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033009, 29.014971, 41.573837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186626, -0.570346, 0.799923,
		0.342383, 0.800940, 0.491192,
		-0.920839, 0.182211, 0.344753,
		37.756756, 29.069633, 41.677261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486404, 29.098763, 42.166649>,  <38.401344, 28.942087, 41.435936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486404, 29.098763, 42.166649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092049, 29.033676, 42.150875>,  <37.855434, 28.994625, 42.141411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092049, 29.033676, 42.150875>,  <38.486404, 29.098763, 42.166649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092049, 29.033676, 42.150875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055790, -0.541367, 0.838934,
		-0.157856, 0.824892, 0.542803,
		-0.985885, -0.162714, -0.039437,
		37.796284, 28.984861, 42.139046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245075, 29.345974, 42.779984>,  <38.486404, 29.098763, 42.166649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245075, 29.345974, 42.779984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984665, 29.074232, 42.644547>,  <37.828419, 28.911186, 42.563286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984665, 29.074232, 42.644547>,  <38.245075, 29.345974, 42.779984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984665, 29.074232, 42.644547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038885, -0.475331, 0.878947,
		-0.758060, 0.559051, 0.335869,
		-0.651025, -0.679355, -0.338590,
		37.789356, 28.870426, 42.542969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807648, 29.254292, 43.337284>,  <38.245075, 29.345974, 42.779984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807648, 29.254292, 43.337284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748165, 28.937334, 43.100639>,  <37.712475, 28.747160, 42.958652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748165, 28.937334, 43.100639>,  <37.807648, 29.254292, 43.337284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748165, 28.937334, 43.100639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093289, -0.606833, 0.789336,
		-0.984472, 0.062186, 0.164160,
		-0.148704, -0.792393, -0.591608,
		37.703552, 28.699615, 42.923157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338375, 28.821095, 43.704132>,  <37.807648, 29.254292, 43.337284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338375, 28.821095, 43.704132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502277, 28.577829, 43.432182>,  <37.600620, 28.431871, 43.269012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502277, 28.577829, 43.432182>,  <37.338375, 28.821095, 43.704132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502277, 28.577829, 43.432182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038573, -0.733105, 0.679021,
		-0.911377, -0.304461, -0.276939,
		0.409760, -0.608162, -0.679879,
		37.625206, 28.395380, 43.228218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062458, 28.184578, 43.781853>,  <37.338375, 28.821095, 43.704132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062458, 28.184578, 43.781853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385979, 28.076376, 43.572979>,  <37.580090, 28.011456, 43.447655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385979, 28.076376, 43.572979>,  <37.062458, 28.184578, 43.781853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385979, 28.076376, 43.572979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286776, -0.593786, 0.751783,
		-0.513423, -0.757790, -0.402680,
		0.808799, -0.270503, -0.522180,
		37.628616, 27.995224, 43.416325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090012, 27.516079, 43.578060>,  <37.062458, 28.184578, 43.781853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090012, 27.516079, 43.578060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458805, 27.651510, 43.653221>,  <37.680080, 27.732769, 43.698318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458805, 27.651510, 43.653221>,  <37.090012, 27.516079, 43.578060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458805, 27.651510, 43.653221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079097, -0.639690, 0.764552,
		0.379060, -0.690043, -0.616566,
		0.921986, 0.338580, 0.187900,
		37.735401, 27.753084, 43.709591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572578, 26.914228, 43.907051>,  <37.090012, 27.516079, 43.578060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572578, 26.914228, 43.907051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788261, 27.243660, 43.977448>,  <37.917671, 27.441319, 44.019688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788261, 27.243660, 43.977448>,  <37.572578, 26.914228, 43.907051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788261, 27.243660, 43.977448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209845, -0.333774, 0.918999,
		0.815612, -0.458598, -0.352797,
		0.539206, 0.823579, 0.175995,
		37.950024, 27.490734, 44.030247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115482, 26.712786, 44.495926>,  <37.572578, 26.914228, 43.907051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115482, 26.712786, 44.495926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143585, 27.111654, 44.506626>,  <38.160446, 27.350975, 44.513046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143585, 27.111654, 44.506626>,  <38.115482, 26.712786, 44.495926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143585, 27.111654, 44.506626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256660, -0.043986, 0.965501,
		0.963945, -0.060963, -0.259023,
		0.070253, 0.997170, 0.026754,
		38.164661, 27.410805, 44.514652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757122, 26.858503, 44.860996>,  <38.115482, 26.712786, 44.495926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757122, 26.858503, 44.860996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512760, 27.174860, 44.875320>,  <38.366142, 27.364674, 44.883915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512760, 27.174860, 44.875320>,  <38.757122, 26.858503, 44.860996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512760, 27.174860, 44.875320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259487, 0.157297, 0.952851,
		0.747968, 0.591396, -0.301320,
		-0.610909, 0.790891, 0.035806,
		38.329487, 27.412127, 44.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178318, 27.328270, 45.228432>,  <38.757122, 26.858503, 44.860996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178318, 27.328270, 45.228432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793461, 27.432371, 45.260807>,  <38.562546, 27.494833, 45.280231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793461, 27.432371, 45.260807>,  <39.178318, 27.328270, 45.228432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793461, 27.432371, 45.260807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149287, 0.254770, 0.955409,
		0.228028, 0.931322, -0.283977,
		-0.962142, 0.260254, 0.080940,
		38.504818, 27.510447, 45.285088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283653, 27.912991, 45.615452>,  <39.178318, 27.328270, 45.228432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283653, 27.912991, 45.615452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907730, 27.781204, 45.651711>,  <38.682175, 27.702133, 45.673466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907730, 27.781204, 45.651711>,  <39.283653, 27.912991, 45.615452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907730, 27.781204, 45.651711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024758, 0.198914, 0.979704,
		-0.340809, 0.922976, -0.178784,
		-0.939806, -0.329466, 0.090643,
		38.625790, 27.682364, 45.678902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943886, 28.384144, 46.029758>,  <39.283653, 27.912991, 45.615452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943886, 28.384144, 46.029758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691711, 28.074488, 46.052589>,  <38.540405, 27.888695, 46.066288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691711, 28.074488, 46.052589>,  <38.943886, 28.384144, 46.029758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691711, 28.074488, 46.052589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007947, 0.079960, 0.996766,
		-0.776199, 0.627946, -0.056562,
		-0.630439, -0.774138, 0.057075,
		38.502579, 27.842247, 46.069714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337284, 28.564682, 46.282097>,  <38.943886, 28.384144, 46.029758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337284, 28.564682, 46.282097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325127, 28.174513, 46.369392>,  <38.317833, 27.940411, 46.421768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325127, 28.174513, 46.369392>,  <38.337284, 28.564682, 46.282097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325127, 28.174513, 46.369392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140369, 0.220341, 0.965270,
		-0.989632, -0.001293, -0.143617,
		-0.030396, -0.975422, 0.218238,
		38.316010, 27.881886, 46.434864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836605, 28.435543, 46.835426>,  <38.337284, 28.564682, 46.282097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836605, 28.435543, 46.835426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066692, 28.109221, 46.859371>,  <38.204742, 27.913427, 46.873737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066692, 28.109221, 46.859371>,  <37.836605, 28.435543, 46.835426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066692, 28.109221, 46.859371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135052, -0.022534, 0.990582,
		-0.806777, -0.577883, -0.123138,
		0.575215, -0.815809, 0.059864,
		38.239258, 27.864477, 46.877331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549667, 28.080791, 47.398823>,  <37.836605, 28.435543, 46.835426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549667, 28.080791, 47.398823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889713, 27.880545, 47.333477>,  <38.093742, 27.760397, 47.294270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889713, 27.880545, 47.333477>,  <37.549667, 28.080791, 47.398823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889713, 27.880545, 47.333477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097638, -0.154993, 0.983079,
		-0.517465, -0.851681, -0.082883,
		0.850116, -0.500616, -0.163360,
		38.144749, 27.730360, 47.284470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547619, 27.321941, 47.705250>,  <37.549667, 28.080791, 47.398823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547619, 27.321941, 47.705250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931019, 27.430471, 47.670254>,  <38.161060, 27.495590, 47.649258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931019, 27.430471, 47.670254>,  <37.547619, 27.321941, 47.705250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931019, 27.430471, 47.670254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158544, -0.252266, 0.954581,
		0.236933, -0.928840, -0.284815,
		0.958502, 0.271328, -0.087491,
		38.218571, 27.511869, 47.644005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996593, 26.749069, 47.939110>,  <37.547619, 27.321941, 47.705250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996593, 26.749069, 47.939110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228741, 27.074095, 47.960682>,  <38.368031, 27.269110, 47.973625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228741, 27.074095, 47.960682>,  <37.996593, 26.749069, 47.939110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228741, 27.074095, 47.960682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116548, -0.148424, 0.982032,
		0.805971, -0.563655, -0.180843,
		0.580369, 0.812566, 0.053933,
		38.402851, 27.317865, 47.976860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560738, 26.488813, 48.210197>,  <37.996593, 26.749069, 47.939110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560738, 26.488813, 48.210197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544121, 26.879440, 48.294662>,  <38.534149, 27.113817, 48.345341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544121, 26.879440, 48.294662>,  <38.560738, 26.488813, 48.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544121, 26.879440, 48.294662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091597, -0.206731, 0.974101,
		0.994929, 0.059807, -0.080862,
		-0.041542, 0.976568, 0.211161,
		38.531658, 27.172411, 48.358009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138855, 26.650600, 48.705830>,  <38.560738, 26.488813, 48.210197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138855, 26.650600, 48.705830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885193, 26.954000, 48.765865>,  <38.732994, 27.136040, 48.801888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885193, 26.954000, 48.765865>,  <39.138855, 26.650600, 48.705830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885193, 26.954000, 48.765865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253245, 0.020350, 0.967188,
		0.730558, 0.651355, -0.204991,
		-0.634155, 0.758500, 0.150086,
		38.694946, 27.181551, 48.810890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441895, 27.194328, 49.236599>,  <39.138855, 26.650600, 48.705830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441895, 27.194328, 49.236599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051270, 27.280376, 49.234047>,  <38.816895, 27.332006, 49.232513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051270, 27.280376, 49.234047>,  <39.441895, 27.194328, 49.236599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051270, 27.280376, 49.234047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026081, 0.147735, 0.988683,
		0.213630, 0.965348, -0.149884,
		-0.976566, 0.215122, -0.006383,
		38.758301, 27.344913, 49.232132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340862, 27.743816, 49.812233>,  <39.441895, 27.194328, 49.236599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340862, 27.743816, 49.812233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967381, 27.607468, 49.768398>,  <38.743294, 27.525658, 49.742100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967381, 27.607468, 49.768398>,  <39.340862, 27.743816, 49.812233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967381, 27.607468, 49.768398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161658, 0.128243, 0.978478,
		-0.319485, 0.931321, -0.174846,
		-0.933700, -0.340874, -0.109584,
		38.687271, 27.505205, 49.735523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797821, 28.195211, 50.258324>,  <39.340862, 27.743816, 49.812233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797821, 28.195211, 50.258324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802841, 28.439911, 50.574703>,  <39.805851, 28.586731, 50.764530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802841, 28.439911, 50.574703>,  <39.797821, 28.195211, 50.258324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802841, 28.439911, 50.574703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382989, 0.727752, -0.568944,
		-0.923668, 0.310064, -0.225163,
		0.012546, 0.611750, 0.790952,
		39.806606, 28.623436, 50.811989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411858, 28.767782, 50.213699>,  <39.797821, 28.195211, 50.258324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411858, 28.767782, 50.213699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770119, 28.815817, 50.384991>,  <39.985077, 28.844637, 50.487766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770119, 28.815817, 50.384991>,  <39.411858, 28.767782, 50.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770119, 28.815817, 50.384991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400889, 0.198965, -0.894260,
		-0.192590, 0.972622, 0.130063,
		0.895654, 0.120085, 0.428232,
		40.038815, 28.851843, 50.513462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654858, 29.568874, 50.084595>,  <39.411858, 28.767782, 50.213699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654858, 29.568874, 50.084595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988102, 29.362690, 50.164818>,  <40.188049, 29.238979, 50.212952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988102, 29.362690, 50.164818>,  <39.654858, 29.568874, 50.084595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988102, 29.362690, 50.164818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431249, 0.378309, -0.819089,
		0.346335, 0.768883, 0.537466,
		0.833112, -0.515461, 0.200558,
		40.238037, 29.208052, 50.224987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081940, 30.038788, 50.151039>,  <39.654858, 29.568874, 50.084595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081940, 30.038788, 50.151039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286098, 29.704828, 50.068642>,  <40.408596, 29.504452, 50.019203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286098, 29.704828, 50.068642>,  <40.081940, 30.038788, 50.151039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286098, 29.704828, 50.068642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425494, 0.453357, -0.783213,
		0.747292, 0.312105, 0.586639,
		0.510402, -0.834900, -0.205991,
		40.439220, 29.454359, 50.006844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711842, 30.337467, 49.869858>,  <40.081940, 30.038788, 50.151039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711842, 30.337467, 49.869858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726421, 29.952930, 49.760685>,  <40.735168, 29.722208, 49.695183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726421, 29.952930, 49.760685>,  <40.711842, 30.337467, 49.869858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726421, 29.952930, 49.760685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522791, 0.251103, -0.814639,
		0.851681, -0.112990, 0.511735,
		0.036453, -0.961343, -0.272930,
		40.737358, 29.664528, 49.678806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392876, 30.293903, 49.602394>,  <40.711842, 30.337467, 49.869858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392876, 30.293903, 49.602394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201263, 29.974651, 49.456234>,  <41.086296, 29.783100, 49.368538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201263, 29.974651, 49.456234>,  <41.392876, 30.293903, 49.602394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201263, 29.974651, 49.456234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410105, 0.164560, -0.897069,
		0.776107, -0.579579, 0.248487,
		-0.479032, -0.798128, -0.365405,
		41.057552, 29.735212, 49.346611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799690, 30.083046, 49.009525>,  <41.392876, 30.293903, 49.602394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799690, 30.083046, 49.009525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474323, 29.865036, 48.928230>,  <41.279102, 29.734230, 48.879452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474323, 29.865036, 48.928230>,  <41.799690, 30.083046, 49.009525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474323, 29.865036, 48.928230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220309, 0.034706, -0.974812,
		0.538351, -0.837701, 0.091844,
		-0.813414, -0.545025, -0.203237,
		41.230301, 29.701529, 48.867260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003010, 29.532507, 48.680614>,  <41.799690, 30.083046, 49.009525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003010, 29.532507, 48.680614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615612, 29.575964, 48.590981>,  <41.383175, 29.602037, 48.537201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615612, 29.575964, 48.590981>,  <42.003010, 29.532507, 48.680614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615612, 29.575964, 48.590981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219968, -0.048670, -0.974292,
		-0.116751, -0.992889, 0.023240,
		-0.968495, 0.108638, -0.224086,
		41.325062, 29.608557, 48.523754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866028, 29.055965, 48.075542>,  <42.003010, 29.532507, 48.680614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866028, 29.055965, 48.075542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585434, 29.340883, 48.084957>,  <41.417076, 29.511833, 48.090607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585434, 29.340883, 48.084957>,  <41.866028, 29.055965, 48.075542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585434, 29.340883, 48.084957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168906, 0.198242, -0.965490,
		-0.692378, -0.673303, -0.259375,
		-0.701486, 0.712294, 0.023533,
		41.374989, 29.554571, 48.092018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416710, 28.868189, 47.479012>,  <41.866028, 29.055965, 48.075542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416710, 28.868189, 47.479012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365665, 29.262108, 47.526157>,  <41.335041, 29.498459, 47.554447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365665, 29.262108, 47.526157>,  <41.416710, 28.868189, 47.479012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365665, 29.262108, 47.526157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076874, 0.108661, -0.991102,
		-0.988841, -0.135532, 0.061840,
		-0.127607, 0.984796, 0.117867,
		41.327385, 29.557547, 47.561516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046101, 29.065998, 46.932964>,  <41.416710, 28.868189, 47.479012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046101, 29.065998, 46.932964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160072, 29.429911, 47.053703>,  <41.228455, 29.648258, 47.126144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160072, 29.429911, 47.053703>,  <41.046101, 29.065998, 46.932964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160072, 29.429911, 47.053703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019533, 0.320343, -0.947100,
		-0.958349, 0.263962, 0.109046,
		0.284931, 0.909783, 0.301844,
		41.245552, 29.702845, 47.144257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552402, 29.520775, 46.617756>,  <41.046101, 29.065998, 46.932964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552402, 29.520775, 46.617756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900696, 29.693911, 46.711109>,  <41.109673, 29.797792, 46.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900696, 29.693911, 46.711109>,  <40.552402, 29.520775, 46.617756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900696, 29.693911, 46.711109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078220, 0.346642, -0.934730,
		-0.485488, 0.832159, 0.267977,
		0.870737, 0.432839, 0.233382,
		41.161919, 29.823763, 46.781124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541920, 30.222494, 46.344261>,  <40.552402, 29.520775, 46.617756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541920, 30.222494, 46.344261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926315, 30.112930, 46.359573>,  <41.156952, 30.047192, 46.368759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926315, 30.112930, 46.359573>,  <40.541920, 30.222494, 46.344261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926315, 30.112930, 46.359573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098325, 0.209005, -0.972959,
		0.258502, 0.938771, 0.227785,
		0.960994, -0.273909, 0.038276,
		41.214615, 30.030758, 46.371056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843269, 30.843637, 46.214924>,  <40.541920, 30.222494, 46.344261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843269, 30.843637, 46.214924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019043, 30.494711, 46.129166>,  <41.124508, 30.285355, 46.077709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019043, 30.494711, 46.129166>,  <40.843269, 30.843637, 46.214924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019043, 30.494711, 46.129166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083442, 0.198003, -0.976643,
		0.894393, 0.447056, 0.014221,
		0.439431, -0.872316, -0.214395,
		41.150871, 30.233017, 46.064846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436562, 30.925432, 45.748314>,  <40.843269, 30.843637, 46.214924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436562, 30.925432, 45.748314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277664, 30.559298, 45.721893>,  <41.182327, 30.339617, 45.706039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277664, 30.559298, 45.721893>,  <41.436562, 30.925432, 45.748314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277664, 30.559298, 45.721893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275175, 0.187465, -0.942940,
		0.875488, -0.356397, -0.326346,
		-0.397240, -0.915335, -0.066052,
		41.158493, 30.284697, 45.702076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539406, 30.838358, 45.130978>,  <41.436562, 30.925432, 45.748314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539406, 30.838358, 45.130978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342491, 30.491447, 45.160606>,  <41.224342, 30.283300, 45.178383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342491, 30.491447, 45.160606>,  <41.539406, 30.838358, 45.130978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342491, 30.491447, 45.160606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364518, 0.128136, -0.922338,
		0.790432, -0.481053, -0.379217,
		-0.492284, -0.867277, 0.074070,
		41.194805, 30.231264, 45.182827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753284, 30.410686, 44.528675>,  <41.539406, 30.838358, 45.130978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753284, 30.410686, 44.528675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397476, 30.299522, 44.673737>,  <41.183990, 30.232824, 44.760773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397476, 30.299522, 44.673737>,  <41.753284, 30.410686, 44.528675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397476, 30.299522, 44.673737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377965, 0.001657, -0.925818,
		0.256696, -0.960605, -0.106516,
		-0.889522, -0.277913, 0.362650,
		41.130619, 30.216148, 44.782532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471642, 29.792788, 44.093758>,  <41.753284, 30.410686, 44.528675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471642, 29.792788, 44.093758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134171, 29.926065, 44.262135>,  <40.931686, 30.006033, 44.363159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134171, 29.926065, 44.262135>,  <41.471642, 29.792788, 44.093758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134171, 29.926065, 44.262135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468385, -0.073683, -0.880447,
		-0.262345, -0.939974, 0.218229,
		-0.843676, 0.333196, 0.420939,
		40.881069, 30.026024, 44.388416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013329, 29.249086, 43.943420>,  <41.471642, 29.792788, 44.093758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013329, 29.249086, 43.943420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791889, 29.563705, 44.052876>,  <40.659027, 29.752478, 44.118549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791889, 29.563705, 44.052876>,  <41.013329, 29.249086, 43.943420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791889, 29.563705, 44.052876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585337, -0.133774, -0.799678,
		-0.592379, -0.602866, 0.534453,
		-0.553595, 0.786547, 0.273635,
		40.625813, 29.799669, 44.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301483, 29.084288, 43.663326>,  <41.013329, 29.249086, 43.943420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301483, 29.084288, 43.663326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304775, 29.483450, 43.688984>,  <40.306751, 29.722948, 43.704376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304775, 29.483450, 43.688984>,  <40.301483, 29.084288, 43.663326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304775, 29.483450, 43.688984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388794, 0.062290, -0.919217,
		-0.921288, -0.017370, 0.388493,
		0.008232, 0.997907, 0.064141,
		40.307243, 29.782822, 43.708225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656143, 29.274010, 43.302170>,  <40.301483, 29.084288, 43.663326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656143, 29.274010, 43.302170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818573, 29.636387, 43.350124>,  <39.916031, 29.853813, 43.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818573, 29.636387, 43.350124>,  <39.656143, 29.274010, 43.302170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818573, 29.636387, 43.350124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357524, 0.278226, -0.891497,
		-0.841000, 0.319151, 0.436876,
		0.406073, 0.905943, 0.119884,
		39.940395, 29.908171, 43.386089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081387, 29.762222, 43.345253>,  <39.656143, 29.274010, 43.302170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081387, 29.762222, 43.345253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401123, 29.944445, 43.188526>,  <39.592964, 30.053778, 43.094490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401123, 29.944445, 43.188526>,  <39.081387, 29.762222, 43.345253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401123, 29.944445, 43.188526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468651, 0.064572, -0.881020,
		-0.376054, 0.887862, 0.265112,
		0.799343, 0.455556, -0.391815,
		39.640926, 30.081112, 43.070980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854443, 30.407745, 42.980103>,  <39.081387, 29.762222, 43.345253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854443, 30.407745, 42.980103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207523, 30.300068, 42.826027>,  <39.419373, 30.235462, 42.733582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207523, 30.300068, 42.826027>,  <38.854443, 30.407745, 42.980103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207523, 30.300068, 42.826027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290796, 0.330981, -0.897713,
		0.369146, 0.904426, 0.213879,
		0.882705, -0.269192, -0.385184,
		39.472336, 30.219311, 42.710472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062546, 31.002661, 42.555996>,  <38.854443, 30.407745, 42.980103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062546, 31.002661, 42.555996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282631, 30.698151, 42.418751>,  <39.414680, 30.515444, 42.336403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282631, 30.698151, 42.418751>,  <39.062546, 31.002661, 42.555996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282631, 30.698151, 42.418751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351980, 0.161172, -0.922027,
		0.757218, 0.628078, -0.179276,
		0.550211, -0.761276, -0.343113,
		39.447693, 30.469769, 42.315815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360397, 31.302948, 41.967922>,  <39.062546, 31.002661, 42.555996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360397, 31.302948, 41.967922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455223, 30.916323, 41.928822>,  <39.512119, 30.684347, 41.905361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455223, 30.916323, 41.928822>,  <39.360397, 31.302948, 41.967922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455223, 30.916323, 41.928822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064237, 0.116000, -0.991170,
		0.969368, 0.228692, 0.089589,
		0.237065, -0.966563, -0.097756,
		39.526344, 30.626354, 41.899494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061348, 31.219040, 41.689651>,  <39.360397, 31.302948, 41.967922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061348, 31.219040, 41.689651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838375, 30.897118, 41.608109>,  <39.704590, 30.703964, 41.559181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838375, 30.897118, 41.608109>,  <40.061348, 31.219040, 41.689651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838375, 30.897118, 41.608109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095746, 0.181595, -0.978701,
		0.824683, -0.565079, -0.024170,
		-0.557432, -0.804804, -0.203862,
		39.671146, 30.655676, 41.546951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392410, 30.868929, 41.139172>,  <40.061348, 31.219040, 41.689651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392410, 30.868929, 41.139172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000343, 30.789875, 41.133289>,  <39.765102, 30.742443, 41.129761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000343, 30.789875, 41.133289>,  <40.392410, 30.868929, 41.139172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000343, 30.789875, 41.133289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031996, 0.231034, -0.972420,
		0.195579, -0.952662, -0.232775,
		-0.980166, -0.197632, -0.014704,
		39.706295, 30.730583, 41.128880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316330, 30.453129, 40.543076>,  <40.392410, 30.868929, 41.139172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316330, 30.453129, 40.543076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959988, 30.607311, 40.639248>,  <39.746181, 30.699820, 40.696949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959988, 30.607311, 40.639248>,  <40.316330, 30.453129, 40.543076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959988, 30.607311, 40.639248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079482, 0.388828, -0.917876,
		-0.447285, -0.836802, -0.315752,
		-0.890853, 0.385455, 0.240428,
		39.692730, 30.722948, 40.711376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117107, 30.499500, 39.904095>,  <40.316330, 30.453129, 40.543076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117107, 30.499500, 39.904095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857155, 30.706038, 40.127178>,  <39.701183, 30.829960, 40.261028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857155, 30.706038, 40.127178>,  <40.117107, 30.499500, 39.904095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857155, 30.706038, 40.127178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113537, 0.659610, -0.742983,
		-0.751508, -0.546171, -0.370044,
		-0.649880, 0.516344, 0.557713,
		39.662189, 30.860941, 40.294491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528458, 30.600815, 39.517330>,  <40.117107, 30.499500, 39.904095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528458, 30.600815, 39.517330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556290, 30.903093, 39.777817>,  <39.572987, 31.084459, 39.934109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556290, 30.903093, 39.777817>,  <39.528458, 30.600815, 39.517330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556290, 30.903093, 39.777817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061349, 0.654806, -0.753303,
		-0.995688, 0.012462, 0.091921,
		0.069578, 0.755694, 0.651219,
		39.577164, 31.129801, 39.973183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156288, 31.181566, 39.123329>,  <39.528458, 30.600815, 39.517330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156288, 31.181566, 39.123329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335690, 31.356447, 39.435150>,  <39.443333, 31.461376, 39.622242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335690, 31.356447, 39.435150>,  <39.156288, 31.181566, 39.123329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335690, 31.356447, 39.435150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021998, 0.877328, -0.479387,
		-0.893509, 0.197859, 0.403104,
		0.448505, 0.437204, 0.779548,
		39.470242, 31.487608, 39.669014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854759, 31.868153, 39.134636>,  <39.156288, 31.181566, 39.123329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854759, 31.868153, 39.134636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206028, 31.904917, 39.322407>,  <39.416790, 31.926975, 39.435070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206028, 31.904917, 39.322407>,  <38.854759, 31.868153, 39.134636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206028, 31.904917, 39.322407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224496, 0.787378, -0.574141,
		-0.422384, 0.609580, 0.670823,
		0.878176, 0.091911, 0.469424,
		39.469482, 31.932489, 39.463234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940617, 32.581985, 39.061047>,  <38.854759, 31.868153, 39.134636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940617, 32.581985, 39.061047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303394, 32.442226, 39.155178>,  <39.521061, 32.358372, 39.211658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303394, 32.442226, 39.155178>,  <38.940617, 32.581985, 39.061047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303394, 32.442226, 39.155178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420347, 0.787328, -0.451023,
		-0.027694, 0.507971, 0.860928,
		0.906941, -0.349398, 0.235329,
		39.575478, 32.337406, 39.225777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364986, 33.162251, 39.382740>,  <38.940617, 32.581985, 39.061047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364986, 33.162251, 39.382740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647247, 32.901779, 39.271011>,  <39.816605, 32.745495, 39.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647247, 32.901779, 39.271011>,  <39.364986, 33.162251, 39.382740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647247, 32.901779, 39.271011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445074, 0.714089, -0.540358,
		0.551332, 0.256984, 0.793720,
		0.705650, -0.651181, -0.279324,
		39.858944, 32.706425, 39.187214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839916, 33.522476, 39.446774>,  <39.364986, 33.162251, 39.382740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839916, 33.522476, 39.446774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987881, 33.248581, 39.195602>,  <40.076660, 33.084244, 39.044899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987881, 33.248581, 39.195602>,  <39.839916, 33.522476, 39.446774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987881, 33.248581, 39.195602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340316, 0.728759, -0.594218,
		0.864495, 0.006112, 0.502604,
		0.369909, -0.684743, -0.627929,
		40.098854, 33.043159, 39.007225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573658, 33.707417, 39.245579>,  <39.839916, 33.522476, 39.446774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573658, 33.707417, 39.245579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392960, 33.501041, 38.954449>,  <40.284542, 33.377216, 38.779770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392960, 33.501041, 38.954449>,  <40.573658, 33.707417, 39.245579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392960, 33.501041, 38.954449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544413, 0.486888, -0.683048,
		0.706783, -0.704801, 0.060936,
		-0.451744, -0.515941, -0.727827,
		40.257435, 33.346260, 38.736099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109734, 33.437599, 38.896156>,  <40.573658, 33.707417, 39.245579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109734, 33.437599, 38.896156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838814, 33.346447, 38.616344>,  <40.676262, 33.291756, 38.448456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838814, 33.346447, 38.616344>,  <41.109734, 33.437599, 38.896156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838814, 33.346447, 38.616344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621225, 0.332249, -0.709712,
		0.394146, -0.915250, -0.083467,
		-0.677295, -0.227879, -0.699530,
		40.635624, 33.278084, 38.406487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535267, 33.335072, 38.309525>,  <41.109734, 33.437599, 38.896156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535267, 33.335072, 38.309525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167084, 33.380463, 38.159924>,  <40.946175, 33.407696, 38.070164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167084, 33.380463, 38.159924>,  <41.535267, 33.335072, 38.309525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167084, 33.380463, 38.159924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371194, 0.553358, -0.745661,
		0.122343, -0.825178, -0.551465,
		-0.920460, 0.113474, -0.374001,
		40.890945, 33.414505, 38.047722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636360, 33.123123, 37.641251>,  <41.535267, 33.335072, 38.309525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636360, 33.123123, 37.641251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307610, 33.347416, 37.681458>,  <41.110359, 33.481991, 37.705582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307610, 33.347416, 37.681458>,  <41.636360, 33.123123, 37.641251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307610, 33.347416, 37.681458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362081, 0.650416, -0.667725,
		-0.439792, -0.512390, -0.737590,
		-0.821876, 0.560727, 0.100522,
		41.061047, 33.515633, 37.711613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379433, 33.323593, 36.992287>,  <41.636360, 33.123123, 37.641251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379433, 33.323593, 36.992287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226154, 33.613937, 37.220776>,  <41.134190, 33.788143, 37.357868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226154, 33.613937, 37.220776>,  <41.379433, 33.323593, 36.992287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226154, 33.613937, 37.220776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304534, 0.683130, -0.663772,
		-0.872022, -0.080398, -0.482819,
		-0.383194, 0.725858, 0.571220,
		41.111195, 33.831696, 37.392143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180389, 33.827045, 36.525799>,  <41.379433, 33.323593, 36.992287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180389, 33.827045, 36.525799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121708, 34.053669, 36.850143>,  <41.086498, 34.189644, 37.044750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121708, 34.053669, 36.850143>,  <41.180389, 33.827045, 36.525799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121708, 34.053669, 36.850143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113565, 0.823953, -0.555162,
		-0.982640, 0.010641, -0.185217,
		-0.146702, 0.566558, 0.810858,
		41.077698, 34.223637, 37.093399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512844, 34.299911, 36.517578>,  <41.180389, 33.827045, 36.525799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512844, 34.299911, 36.517578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817959, 34.444740, 36.731888>,  <41.001030, 34.531639, 36.860474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817959, 34.444740, 36.731888>,  <40.512844, 34.299911, 36.517578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817959, 34.444740, 36.731888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109755, 0.744029, -0.659071,
		-0.637264, 0.561537, 0.527798,
		0.762790, 0.362074, 0.535775,
		41.046795, 34.553364, 36.892620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356674, 35.000999, 36.829918>,  <40.512844, 34.299911, 36.517578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356674, 35.000999, 36.829918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729958, 34.936295, 36.701572>,  <40.953930, 34.897472, 36.624565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729958, 34.936295, 36.701572>,  <40.356674, 35.000999, 36.829918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729958, 34.936295, 36.701572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126839, 0.687159, -0.715349,
		0.336200, 0.708269, 0.620745,
		0.933210, -0.161766, -0.320859,
		41.009922, 34.887764, 36.605316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521641, 35.694508, 36.669052>,  <40.356674, 35.000999, 36.829918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521641, 35.694508, 36.669052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784115, 35.446468, 36.497055>,  <40.941601, 35.297646, 36.393856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784115, 35.446468, 36.497055>,  <40.521641, 35.694508, 36.669052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784115, 35.446468, 36.497055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093376, 0.632179, -0.769175,
		0.748800, 0.464570, 0.472729,
		0.656186, -0.620100, -0.429996,
		40.980972, 35.260437, 36.368057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234856, 36.102570, 36.447338>,  <40.521641, 35.694508, 36.669052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234856, 36.102570, 36.447338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207741, 35.759300, 36.243790>,  <41.191471, 35.553341, 36.121662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207741, 35.759300, 36.243790>,  <41.234856, 36.102570, 36.447338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207741, 35.759300, 36.243790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283018, 0.472552, -0.834623,
		0.956716, -0.200599, 0.210844,
		-0.067790, -0.858170, -0.508871,
		41.187405, 35.501850, 36.091129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823963, 36.498508, 36.153263>,  <41.234856, 36.102570, 36.447338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823963, 36.498508, 36.153263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128521, 36.741123, 36.061714>,  <42.311256, 36.886692, 36.006783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128521, 36.741123, 36.061714>,  <41.823963, 36.498508, 36.153263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128521, 36.741123, 36.061714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516198, -0.780806, -0.351969,
		-0.392191, 0.149843, -0.907598,
		0.761397, 0.606539, -0.228877,
		42.356941, 36.923084, 35.993050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804554, 36.608753, 35.508427>,  <41.823963, 36.498508, 36.153263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804554, 36.608753, 35.508427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190636, 36.611343, 35.612991>,  <42.422283, 36.612896, 35.675732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190636, 36.611343, 35.612991>,  <41.804554, 36.608753, 35.508427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190636, 36.611343, 35.612991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106626, -0.922558, -0.370833,
		0.238768, 0.385804, -0.891148,
		0.965205, 0.006476, 0.261414,
		42.480198, 36.613285, 35.691414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221600, 36.554241, 34.888584>,  <41.804554, 36.608753, 35.508427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221600, 36.554241, 34.888584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605350, 36.443752, 34.865616>,  <42.835602, 36.377460, 34.851837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605350, 36.443752, 34.865616>,  <42.221600, 36.554241, 34.888584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605350, 36.443752, 34.865616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251970, 0.930448, -0.266040,
		0.126911, 0.240765, 0.962250,
		0.959377, -0.276222, -0.057419,
		42.893162, 36.360886, 34.848389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688404, 37.004841, 35.303658>,  <42.221600, 36.554241, 34.888584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688404, 37.004841, 35.303658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866066, 36.845001, 34.982899>,  <42.972664, 36.749096, 34.790443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866066, 36.845001, 34.982899>,  <42.688404, 37.004841, 35.303658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866066, 36.845001, 34.982899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122269, 0.913689, -0.387586,
		0.887567, 0.074101, 0.454679,
		0.444156, -0.399602, -0.801900,
		42.999313, 36.725121, 34.742329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386868, 37.341667, 35.285206>,  <42.688404, 37.004841, 35.303658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386868, 37.341667, 35.285206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329685, 37.199814, 34.915600>,  <43.295376, 37.114700, 34.693836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329685, 37.199814, 34.915600>,  <43.386868, 37.341667, 35.285206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329685, 37.199814, 34.915600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132382, 0.918361, -0.372947,
		0.980836, -0.175638, -0.084338,
		-0.142957, -0.354635, -0.924012,
		43.286797, 37.093422, 34.638397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847126, 37.728142, 34.867680>,  <43.386868, 37.341667, 35.285206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847126, 37.728142, 34.867680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572426, 37.549110, 34.638580>,  <43.407604, 37.441692, 34.501122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572426, 37.549110, 34.638580>,  <43.847126, 37.728142, 34.867680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572426, 37.549110, 34.638580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010628, 0.781681, -0.623589,
		0.726809, -0.434341, -0.532068,
		-0.686758, -0.447575, -0.572749,
		43.366398, 37.414837, 34.466755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976391, 37.842728, 34.160873>,  <43.847126, 37.728142, 34.867680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976391, 37.842728, 34.160873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617592, 37.698116, 34.059135>,  <43.402313, 37.611347, 33.998093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617592, 37.698116, 34.059135>,  <43.976391, 37.842728, 34.160873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617592, 37.698116, 34.059135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015221, 0.549799, -0.835159,
		0.441775, -0.753006, -0.487665,
		-0.896997, -0.361530, -0.254349,
		43.348492, 37.589657, 33.982830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993019, 37.672844, 33.372444>,  <43.976391, 37.842728, 34.160873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993019, 37.672844, 33.372444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625927, 37.786102, 33.483868>,  <43.405670, 37.854057, 33.550720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.625927, 37.786102, 33.483868>,  <43.993019, 37.672844, 33.372444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625927, 37.786102, 33.483868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050853, 0.611768, -0.789401,
		-0.393929, -0.738625, -0.547041,
		-0.917733, 0.283150, 0.278554,
		43.350609, 37.871048, 33.567432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482643, 37.611446, 32.722408>,  <43.993019, 37.672844, 33.372444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482643, 37.611446, 32.722408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279812, 37.847656, 32.973534>,  <43.158112, 37.989380, 33.124210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.279812, 37.847656, 32.973534>,  <43.482643, 37.611446, 32.722408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279812, 37.847656, 32.973534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163927, 0.649037, -0.742886,
		-0.846166, -0.479619, -0.232312,
		-0.507082, 0.590522, 0.627815,
		43.127686, 38.024815, 33.161877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035385, 37.815773, 32.330898>,  <43.482643, 37.611446, 32.722408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035385, 37.815773, 32.330898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011440, 38.068550, 32.639977>,  <42.997074, 38.220215, 32.825424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011440, 38.068550, 32.639977>,  <43.035385, 37.815773, 32.330898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011440, 38.068550, 32.639977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349899, 0.711688, -0.609156,
		-0.934873, -0.306834, 0.178510,
		-0.059866, 0.631944, 0.772698,
		42.993481, 38.258133, 32.871784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338142, 38.186630, 32.248974>,  <43.035385, 37.815773, 32.330898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338142, 38.186630, 32.248974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603592, 38.395538, 32.463203>,  <42.762863, 38.520882, 32.591740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603592, 38.395538, 32.463203>,  <42.338142, 38.186630, 32.248974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603592, 38.395538, 32.463203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120717, 0.781325, -0.612339,
		-0.738260, 0.341712, 0.581555,
		0.663626, 0.522268, 0.535570,
		42.802681, 38.552219, 32.623875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019466, 38.808495, 32.302879>,  <42.338142, 38.186630, 32.248974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019466, 38.808495, 32.302879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397499, 38.898945, 32.397263>,  <42.624321, 38.953217, 32.453892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397499, 38.898945, 32.397263>,  <42.019466, 38.808495, 32.302879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397499, 38.898945, 32.397263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064177, 0.836339, -0.544443,
		-0.320459, 0.499402, 0.804925,
		0.945086, 0.226129, 0.235962,
		42.681026, 38.966785, 32.468052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008625, 39.495331, 32.524647>,  <42.019466, 38.808495, 32.302879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008625, 39.495331, 32.524647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383282, 39.404514, 32.417942>,  <42.608074, 39.350025, 32.353920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383282, 39.404514, 32.417942>,  <42.008625, 39.495331, 32.524647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383282, 39.404514, 32.417942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079152, 0.879000, -0.470206,
		0.341235, 0.419299, 0.841277,
		0.936639, -0.227040, -0.266757,
		42.664272, 39.336403, 32.337914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382042, 40.142727, 32.533085>,  <42.008625, 39.495331, 32.524647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382042, 40.142727, 32.533085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617538, 39.899849, 32.319656>,  <42.758835, 39.754124, 32.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617538, 39.899849, 32.319656>,  <42.382042, 40.142727, 32.533085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617538, 39.899849, 32.319656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337112, 0.784396, -0.520652,
		0.734670, 0.126654, 0.666497,
		0.588741, -0.607191, -0.533576,
		42.794159, 39.717693, 32.159584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126381, 40.425095, 32.559525>,  <42.382042, 40.142727, 32.533085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126381, 40.425095, 32.559525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112244, 40.187141, 32.238312>,  <43.103760, 40.044369, 32.045586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112244, 40.187141, 32.238312>,  <43.126381, 40.425095, 32.559525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112244, 40.187141, 32.238312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291214, 0.762531, -0.577702,
		0.956005, -0.254275, 0.146286,
		-0.035348, -0.594886, -0.803032,
		43.101639, 40.008675, 31.997402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754696, 40.601669, 32.162743>,  <43.126381, 40.425095, 32.559525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754696, 40.601669, 32.162743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519909, 40.413017, 31.899521>,  <43.379036, 40.299828, 31.741587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519909, 40.413017, 31.899521>,  <43.754696, 40.601669, 32.162743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519909, 40.413017, 31.899521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320180, 0.611323, -0.723719,
		0.743611, -0.635495, -0.207820,
		-0.586965, -0.471626, -0.658059,
		43.343819, 40.271530, 31.702103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024982, 40.769806, 31.592987>,  <43.754696, 40.601669, 32.162743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024982, 40.769806, 31.592987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691723, 40.620033, 31.430178>,  <43.491768, 40.530170, 31.332493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691723, 40.620033, 31.430178>,  <44.024982, 40.769806, 31.592987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691723, 40.620033, 31.430178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133943, 0.577439, -0.805371,
		0.536581, -0.725514, -0.430942,
		-0.833151, -0.374425, -0.407020,
		43.441780, 40.507706, 31.308071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188873, 40.713882, 30.795595>,  <44.024982, 40.769806, 31.592987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188873, 40.713882, 30.795595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791721, 40.740681, 30.834976>,  <43.553429, 40.756760, 30.858604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791721, 40.740681, 30.834976>,  <44.188873, 40.713882, 30.795595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791721, 40.740681, 30.834976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035509, 0.622568, -0.781759,
		-0.113667, -0.779692, -0.615759,
		-0.992884, 0.066995, 0.098451,
		43.493855, 40.760780, 30.864511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813580, 40.446316, 30.182207>,  <44.188873, 40.713882, 30.795595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813580, 40.446316, 30.182207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595264, 40.727188, 30.365095>,  <43.464275, 40.895714, 30.474829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595264, 40.727188, 30.365095>,  <43.813580, 40.446316, 30.182207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595264, 40.727188, 30.365095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052494, 0.515934, -0.855018,
		-0.836276, -0.490661, -0.244731,
		-0.545789, 0.702185, 0.457221,
		43.431526, 40.937843, 30.502262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593307, 40.722073, 29.628748>,  <43.813580, 40.446316, 30.182207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593307, 40.722073, 29.628748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406204, 40.974373, 29.876410>,  <43.293941, 41.125755, 30.025007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406204, 40.974373, 29.876410>,  <43.593307, 40.722073, 29.628748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406204, 40.974373, 29.876410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222514, 0.593913, -0.773146,
		-0.855389, -0.499415, -0.137456,
		-0.467758, 0.630755, 0.619154,
		43.265877, 41.163601, 30.062155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800278, 40.839367, 29.466959>,  <43.593307, 40.722073, 29.628748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800278, 40.839367, 29.466959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909336, 41.138855, 29.708647>,  <42.974770, 41.318546, 29.853661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909336, 41.138855, 29.708647>,  <42.800278, 40.839367, 29.466959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909336, 41.138855, 29.708647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384475, 0.660478, -0.644940,
		-0.881954, -0.056467, 0.467941,
		0.272647, 0.748719, 0.604221,
		42.991131, 41.363472, 29.889914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216656, 41.309441, 29.515268>,  <42.800278, 40.839367, 29.466959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216656, 41.309441, 29.515268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569107, 41.485386, 29.584703>,  <42.780579, 41.590954, 29.626364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569107, 41.485386, 29.584703>,  <42.216656, 41.309441, 29.515268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569107, 41.485386, 29.584703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190680, 0.666420, -0.720781,
		-0.432724, 0.602003, 0.671075,
		0.881131, 0.439860, 0.173586,
		42.833447, 41.617344, 29.636780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067436, 42.042992, 29.487480>,  <42.216656, 41.309441, 29.515268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067436, 42.042992, 29.487480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466522, 42.030209, 29.463699>,  <42.705975, 42.022537, 29.449430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466522, 42.030209, 29.463699>,  <42.067436, 42.042992, 29.487480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466522, 42.030209, 29.463699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010155, 0.799690, -0.600328,
		0.066732, 0.599562, 0.797541,
		0.997719, -0.031962, -0.059453,
		42.765839, 42.020618, 29.445864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403187, 42.669254, 29.798946>,  <42.067436, 42.042992, 29.487480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403187, 42.669254, 29.798946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622330, 42.491100, 29.515686>,  <42.753815, 42.384209, 29.345730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622330, 42.491100, 29.515686>,  <42.403187, 42.669254, 29.798946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622330, 42.491100, 29.515686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133929, 0.882272, -0.451286,
		0.825781, 0.152398, 0.543011,
		0.547859, -0.445388, -0.708153,
		42.786686, 42.357483, 29.303240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192631, 42.875031, 29.897734>,  <42.403187, 42.669254, 29.798946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192631, 42.875031, 29.897734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036335, 42.811596, 29.535038>,  <42.942558, 42.773537, 29.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036335, 42.811596, 29.535038>,  <43.192631, 42.875031, 29.897734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036335, 42.811596, 29.535038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363590, 0.878359, -0.310304,
		0.845651, -0.450928, -0.285549,
		-0.390739, -0.158586, -0.906738,
		42.919113, 42.764019, 29.263016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629032, 43.142113, 29.353281>,  <43.192631, 42.875031, 29.897734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629032, 43.142113, 29.353281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280106, 43.141464, 29.157701>,  <43.070751, 43.141075, 29.040354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280106, 43.141464, 29.157701>,  <43.629032, 43.142113, 29.353281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280106, 43.141464, 29.157701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287735, 0.806810, -0.516010,
		0.395323, -0.590809, -0.703323,
		-0.872312, -0.001620, -0.488947,
		43.018414, 43.140980, 29.011017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678764, 43.108833, 28.597847>,  <43.629032, 43.142113, 29.353281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678764, 43.108833, 28.597847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351559, 43.309010, 28.711271>,  <43.155235, 43.429115, 28.779325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351559, 43.309010, 28.711271>,  <43.678764, 43.108833, 28.597847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351559, 43.309010, 28.711271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202138, 0.711648, -0.672828,
		-0.538509, -0.493065, -0.683297,
		-0.818015, 0.500444, 0.283562,
		43.106155, 43.459145, 28.796339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099266, 42.593857, 28.178274>,  <43.678764, 43.108833, 28.597847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099266, 42.593857, 28.178274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149857, 42.875412, 27.898689>,  <44.180210, 43.044346, 27.730938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149857, 42.875412, 27.898689>,  <44.099266, 42.593857, 28.178274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149857, 42.875412, 27.898689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979604, 0.022286, 0.199700,
		0.156143, -0.709964, -0.686710,
		0.126476, 0.703885, -0.698964,
		44.187798, 43.086578, 27.689001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674225, 42.174084, 28.296127>,  <44.099266, 42.593857, 28.178274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674225, 42.174084, 28.296127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477852, 42.345123, 28.599743>,  <44.360027, 42.447746, 28.781912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477852, 42.345123, 28.599743>,  <44.674225, 42.174084, 28.296127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477852, 42.345123, 28.599743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845170, 0.022379, 0.534029,
		0.211366, 0.903690, -0.372383,
		-0.490930, 0.427602, 0.759041,
		44.330574, 42.473404, 28.827456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088589, 42.818863, 28.612709>,  <44.674225, 42.174084, 28.296127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088589, 42.818863, 28.612709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892441, 42.623989, 28.901758>,  <44.774750, 42.507065, 29.075188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892441, 42.623989, 28.901758>,  <45.088589, 42.818863, 28.612709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892441, 42.623989, 28.901758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858073, -0.124849, 0.498120,
		-0.152458, 0.864328, 0.479264,
		-0.490375, -0.487186, 0.722622,
		44.745327, 42.477833, 29.118546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139824, 43.129742, 29.261618>,  <45.088589, 42.818863, 28.612709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139824, 43.129742, 29.261618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098423, 42.734333, 29.305643>,  <45.073582, 42.497089, 29.332058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098423, 42.734333, 29.305643>,  <45.139824, 43.129742, 29.261618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098423, 42.734333, 29.305643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816659, -0.021291, 0.576727,
		-0.567763, 0.149575, 0.809489,
		-0.103499, -0.988521, 0.110064,
		45.067375, 42.437778, 29.338663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694523, 43.149837, 29.776844>,  <45.139824, 43.129742, 29.261618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694523, 43.149837, 29.776844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572048, 42.800327, 29.625708>,  <45.498562, 42.590622, 29.535027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572048, 42.800327, 29.625708>,  <45.694523, 43.149837, 29.776844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572048, 42.800327, 29.625708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617240, -0.484387, 0.619987,
		-0.724751, -0.043385, 0.687644,
		-0.306187, -0.873778, -0.377839,
		45.480190, 42.538193, 29.512356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107658, 43.625252, 30.136730>,  <45.694523, 43.149837, 29.776844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107658, 43.625252, 30.136730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953541, 43.687016, 30.500643>,  <45.861069, 43.724075, 30.718990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953541, 43.687016, 30.500643>,  <46.107658, 43.625252, 30.136730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953541, 43.687016, 30.500643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199831, -0.948546, 0.245619,
		0.900898, 0.276438, 0.334612,
		-0.385293, 0.154411, 0.909784,
		45.837952, 43.733337, 30.773579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570511, 43.224987, 30.498543>,  <46.107658, 43.625252, 30.136730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570511, 43.224987, 30.498543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272007, 43.267326, 30.761417>,  <46.092903, 43.292732, 30.919142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.272007, 43.267326, 30.761417>,  <46.570511, 43.224987, 30.498543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272007, 43.267326, 30.761417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287031, -0.839605, 0.461169,
		0.600590, 0.532784, 0.596181,
		-0.746260, 0.105851, 0.657184,
		46.048130, 43.299080, 30.958572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774189, 43.130829, 31.217514>,  <46.570511, 43.224987, 30.498543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774189, 43.130829, 31.217514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378971, 43.069633, 31.225031>,  <46.141838, 43.032917, 31.229542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378971, 43.069633, 31.225031>,  <46.774189, 43.130829, 31.217514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378971, 43.069633, 31.225031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132010, -0.776957, 0.615558,
		-0.079572, 0.610683, 0.787867,
		-0.988049, -0.152988, 0.018792,
		46.082558, 43.023739, 31.230669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.597183, 43.082333, 31.968258>,  <46.774189, 43.130829, 31.217514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.597183, 43.082333, 31.968258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300274, 42.922607, 31.753008>,  <46.122128, 42.826771, 31.623857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300274, 42.922607, 31.753008>,  <46.597183, 43.082333, 31.968258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300274, 42.922607, 31.753008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020306, -0.816090, 0.577568,
		-0.669788, 0.417787, 0.613871,
		-0.742274, -0.399314, -0.538124,
		46.077591, 42.802814, 31.591570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130337, 42.872337, 32.453846>,  <46.597183, 43.082333, 31.968258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130337, 42.872337, 32.453846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003296, 42.666496, 32.135269>,  <45.927071, 42.542992, 31.944124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.003296, 42.666496, 32.135269>,  <46.130337, 42.872337, 32.453846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003296, 42.666496, 32.135269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110320, -0.814170, 0.570050,
		-0.941785, 0.268911, 0.201810,
		-0.317601, -0.514601, -0.796440,
		45.908016, 42.512115, 31.896338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425056, 42.541809, 32.642506>,  <46.130337, 42.872337, 32.453846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425056, 42.541809, 32.642506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616322, 42.344875, 32.351582>,  <45.731079, 42.226715, 32.177029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616322, 42.344875, 32.351582>,  <45.425056, 42.541809, 32.642506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616322, 42.344875, 32.351582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157435, -0.862743, 0.480509,
		-0.864038, -0.115266, -0.490053,
		0.478176, -0.492329, -0.727296,
		45.759769, 42.197178, 32.133389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024353, 41.902729, 32.654881>,  <45.425056, 42.541809, 32.642506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024353, 41.902729, 32.654881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350124, 41.778557, 32.458778>,  <45.545586, 41.704056, 32.341118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350124, 41.778557, 32.458778>,  <45.024353, 41.902729, 32.654881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350124, 41.778557, 32.458778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152605, -0.929714, 0.335178,
		-0.559844, -0.198162, -0.804554,
		0.814424, -0.310426, -0.490254,
		45.594452, 41.685429, 32.311703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892090, 41.257740, 32.303051>,  <45.024353, 41.902729, 32.654881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892090, 41.257740, 32.303051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288708, 41.280575, 32.349667>,  <45.526680, 41.294273, 32.377636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288708, 41.280575, 32.349667>,  <44.892090, 41.257740, 32.303051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288708, 41.280575, 32.349667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008848, -0.925707, 0.378138,
		0.129470, -0.373909, -0.918384,
		0.991544, 0.057083, 0.116543,
		45.586170, 41.297699, 32.384628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131519, 40.515297, 32.103462>,  <44.892090, 41.257740, 32.303051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131519, 40.515297, 32.103462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413105, 40.700325, 32.319042>,  <45.582054, 40.811340, 32.448391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413105, 40.700325, 32.319042>,  <45.131519, 40.515297, 32.103462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413105, 40.700325, 32.319042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207420, -0.859645, 0.466891,
		0.679275, -0.216884, -0.701104,
		0.703961, 0.462570, 0.538950,
		45.624294, 40.839096, 32.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688816, 40.211395, 31.843895>,  <45.131519, 40.515297, 32.103462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688816, 40.211395, 31.843895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763767, 40.352936, 32.210430>,  <45.808739, 40.437859, 32.430351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763767, 40.352936, 32.210430>,  <45.688816, 40.211395, 31.843895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763767, 40.352936, 32.210430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196593, -0.927498, 0.317959,
		0.962413, 0.120567, -0.243360,
		0.187380, 0.353851, 0.916339,
		45.819981, 40.459091, 32.485332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128891, 39.767708, 32.059311>,  <45.688816, 40.211395, 31.843895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128891, 39.767708, 32.059311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002281, 39.929535, 32.402504>,  <45.926315, 40.026630, 32.608421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002281, 39.929535, 32.402504>,  <46.128891, 39.767708, 32.059311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002281, 39.929535, 32.402504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131431, -0.877059, 0.462054,
		0.939434, 0.259019, 0.224441,
		-0.316528, 0.404571, 0.857982,
		45.907322, 40.050907, 32.659897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632954, 39.582790, 32.669388>,  <46.128891, 39.767708, 32.059311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632954, 39.582790, 32.669388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296207, 39.710819, 32.843201>,  <46.094158, 39.787636, 32.947487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296207, 39.710819, 32.843201>,  <46.632954, 39.582790, 32.669388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296207, 39.710819, 32.843201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032766, -0.773350, 0.633133,
		0.538693, 0.547249, 0.640568,
		-0.841865, 0.320076, 0.434529,
		46.043648, 39.806843, 32.973560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782574, 39.524380, 33.404579>,  <46.632954, 39.582790, 32.669388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782574, 39.524380, 33.404579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382957, 39.537094, 33.392471>,  <46.143188, 39.544724, 33.385208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382957, 39.537094, 33.392471>,  <46.782574, 39.524380, 33.404579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382957, 39.537094, 33.392471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043746, -0.777648, 0.627176,
		-0.003600, 0.627895, 0.778289,
		-0.999036, 0.031789, -0.030268,
		46.083248, 39.546631, 33.383392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546799, 39.455963, 34.145500>,  <46.782574, 39.524380, 33.404579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.546799, 39.455963, 34.145500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260059, 39.348370, 33.888195>,  <46.088017, 39.283813, 33.733814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260059, 39.348370, 33.888195>,  <46.546799, 39.455963, 34.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260059, 39.348370, 33.888195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189136, -0.812974, 0.550727,
		-0.671090, 0.516449, 0.531901,
		-0.716844, -0.268986, -0.643258,
		46.045006, 39.267673, 33.695217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018230, 39.168610, 34.564541>,  <46.546799, 39.455963, 34.145500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018230, 39.168610, 34.564541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929775, 39.018101, 34.204647>,  <45.876701, 38.927795, 33.988712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929775, 39.018101, 34.204647>,  <46.018230, 39.168610, 34.564541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929775, 39.018101, 34.204647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037941, -0.918555, 0.393467,
		-0.974504, 0.121148, 0.188853,
		-0.221140, -0.376270, -0.899732,
		45.863434, 38.905220, 33.934727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364147, 38.700142, 34.683064>,  <46.018230, 39.168610, 34.564541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364147, 38.700142, 34.683064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550808, 38.572506, 34.353115>,  <45.662804, 38.495926, 34.155144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550808, 38.572506, 34.353115>,  <45.364147, 38.700142, 34.683064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550808, 38.572506, 34.353115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353839, -0.922115, 0.156530,
		-0.810575, 0.218828, -0.543214,
		0.466653, -0.319090, -0.824873,
		45.690804, 38.476780, 34.105652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908955, 38.330528, 34.294270>,  <45.364147, 38.700142, 34.683064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908955, 38.330528, 34.294270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270481, 38.225239, 34.159313>,  <45.487396, 38.162064, 34.078339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270481, 38.225239, 34.159313>,  <44.908955, 38.330528, 34.294270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270481, 38.225239, 34.159313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207250, -0.959052, 0.193044,
		-0.374386, -0.104552, -0.921360,
		0.903815, -0.263224, -0.337388,
		45.541626, 38.146271, 34.058098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757767, 37.799419, 33.904415>,  <44.908955, 38.330528, 34.294270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757767, 37.799419, 33.904415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149807, 37.742580, 33.959858>,  <45.385033, 37.708477, 33.993126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149807, 37.742580, 33.959858>,  <44.757767, 37.799419, 33.904415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149807, 37.742580, 33.959858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176116, -0.944605, 0.276956,
		0.091578, -0.295856, -0.950832,
		0.980100, -0.142094, 0.138610,
		45.443836, 37.699951, 34.001442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002460, 37.339924, 33.353870>,  <44.757767, 37.799419, 33.904415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002460, 37.339924, 33.353870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288780, 37.321056, 33.632553>,  <45.460571, 37.309734, 33.799763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288780, 37.321056, 33.632553>,  <45.002460, 37.339924, 33.353870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288780, 37.321056, 33.632553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104131, -0.993771, 0.039705,
		0.690498, -0.100970, -0.716252,
		0.715799, -0.047167, 0.696711,
		45.503521, 37.306908, 33.841568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574215, 36.934772, 33.130951>,  <45.002460, 37.339924, 33.353870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574215, 36.934772, 33.130951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.589394, 36.916409, 33.530239>,  <45.598499, 36.905388, 33.769814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.589394, 36.916409, 33.530239>,  <45.574215, 36.934772, 33.130951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589394, 36.916409, 33.530239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204924, -0.977356, -0.052743,
		0.978042, 0.206562, -0.027680,
		0.037948, -0.045913, 0.998224,
		45.600777, 36.902634, 33.829708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935303, 36.374264, 33.302464>,  <45.574215, 36.934772, 33.130951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935303, 36.374264, 33.302464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759148, 36.423416, 33.658207>,  <45.653454, 36.452908, 33.871655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759148, 36.423416, 33.658207>,  <45.935303, 36.374264, 33.302464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759148, 36.423416, 33.658207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086532, -0.991787, 0.094184,
		0.893628, -0.035481, 0.447404,
		-0.440388, 0.122880, 0.889359,
		45.627029, 36.460281, 33.925014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219482, 35.936436, 33.785316>,  <45.935303, 36.374264, 33.302464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219482, 35.936436, 33.785316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869137, 36.010910, 33.963398>,  <45.658932, 36.055595, 34.070248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869137, 36.010910, 33.963398>,  <46.219482, 35.936436, 33.785316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869137, 36.010910, 33.963398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150970, -0.981983, 0.113657,
		0.458343, 0.032335, 0.888187,
		-0.875859, 0.186183, 0.445203,
		45.606380, 36.066765, 34.096958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583008, 35.596752, 33.359898>,  <46.219482, 35.936436, 33.785316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583008, 35.596752, 33.359898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900330, 35.365795, 33.282654>,  <47.090721, 35.227222, 33.236309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900330, 35.365795, 33.282654>,  <46.583008, 35.596752, 33.359898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900330, 35.365795, 33.282654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208659, -0.040123, 0.977165,
		-0.571957, -0.815479, 0.088648,
		0.793301, -0.577394, -0.193105,
		47.138321, 35.192577, 33.224724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628105, 34.865959, 33.553387>,  <46.583008, 35.596752, 33.359898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628105, 34.865959, 33.553387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994190, 35.025909, 33.573322>,  <47.213840, 35.121880, 33.585285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994190, 35.025909, 33.573322>,  <46.628105, 34.865959, 33.553387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.994190, 35.025909, 33.573322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040304, -0.213892, 0.976025,
		0.400952, -0.891261, -0.211873,
		0.915212, 0.399879, 0.049839,
		47.268753, 35.145874, 33.588272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110226, 34.424145, 33.976292>,  <46.628105, 34.865959, 33.553387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110226, 34.424145, 33.976292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216755, 34.809227, 33.995319>,  <47.280674, 35.040276, 34.006737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216755, 34.809227, 33.995319>,  <47.110226, 34.424145, 33.976292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216755, 34.809227, 33.995319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199804, -0.103417, 0.974363,
		0.942947, -0.249993, -0.219895,
		0.266325, 0.962709, 0.047567,
		47.296654, 35.098042, 34.009590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827030, 34.600903, 34.182175>,  <47.110226, 34.424145, 33.976292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827030, 34.600903, 34.182175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.545723, 34.866119, 34.284767>,  <47.376938, 35.025249, 34.346321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.545723, 34.866119, 34.284767>,  <47.827030, 34.600903, 34.182175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.545723, 34.866119, 34.284767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201912, -0.159622, 0.966309,
		0.681647, 0.731362, -0.021620,
		-0.703270, 0.663047, 0.256477,
		47.334743, 35.065033, 34.361710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.059193, 35.138172, 34.799328>,  <47.827030, 34.600903, 34.182175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.059193, 35.138172, 34.799328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667614, 35.057007, 34.790440>,  <47.432667, 35.008308, 34.785107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667614, 35.057007, 34.790440>,  <48.059193, 35.138172, 34.799328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.667614, 35.057007, 34.790440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032472, -0.262264, 0.964450,
		-0.201523, 0.943422, 0.263331,
		-0.978945, -0.202909, -0.022217,
		47.373932, 34.996136, 34.783775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.702492, 33.891045, 46.702492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333187, 33.741684, 46.666348>,  <36.111607, 33.652065, 46.644661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333187, 33.741684, 46.666348>,  <36.702492, 33.891045, 46.702492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333187, 33.741684, 46.666348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111654, 0.485840, -0.866887,
		0.367598, -0.790271, -0.490248,
		-0.923258, -0.373404, -0.090357,
		36.056210, 33.629662, 46.639240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684299, 33.905872, 46.001564>,  <36.702492, 33.891045, 46.702492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684299, 33.905872, 46.001564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312737, 33.844875, 46.136547>,  <36.089798, 33.808277, 46.217537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312737, 33.844875, 46.136547>,  <36.684299, 33.905872, 46.001564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312737, 33.844875, 46.136547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340567, 0.709655, -0.616769,
		-0.145427, -0.687849, -0.711137,
		-0.928905, -0.152495, 0.337462,
		36.034065, 33.799126, 46.237785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304401, 33.601933, 45.377052>,  <36.684299, 33.905872, 46.001564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304401, 33.601933, 45.377052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058697, 33.779125, 45.638264>,  <35.911274, 33.885441, 45.794991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058697, 33.779125, 45.638264>,  <36.304401, 33.601933, 45.377052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058697, 33.779125, 45.638264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344975, 0.593542, -0.727118,
		-0.709701, -0.671920, -0.211773,
		-0.614262, 0.442980, 0.653033,
		35.874416, 33.912018, 45.834175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661476, 33.538330, 45.171825>,  <36.304401, 33.601933, 45.377052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661476, 33.538330, 45.171825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655704, 33.872139, 45.392136>,  <35.652241, 34.072426, 45.524323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655704, 33.872139, 45.392136>,  <35.661476, 33.538330, 45.171825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655704, 33.872139, 45.392136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391854, 0.502055, -0.770968,
		-0.919914, -0.226952, 0.319767,
		-0.014432, 0.834526, 0.550779,
		35.651375, 34.122498, 45.557369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952305, 33.810951, 45.095772>,  <35.661476, 33.538330, 45.171825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952305, 33.810951, 45.095772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177315, 34.119682, 45.214336>,  <35.312321, 34.304920, 45.285473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177315, 34.119682, 45.214336>,  <34.952305, 33.810951, 45.095772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177315, 34.119682, 45.214336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379608, 0.559593, -0.736718,
		-0.734485, 0.301900, 0.607773,
		0.562521, 0.771824, 0.296409,
		35.346069, 34.351231, 45.303261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547356, 34.392540, 44.868881>,  <34.952305, 33.810951, 45.095772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547356, 34.392540, 44.868881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921520, 34.519230, 44.931744>,  <35.146019, 34.595242, 44.969460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.921520, 34.519230, 44.931744>,  <34.547356, 34.392540, 44.868881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921520, 34.519230, 44.931744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083254, 0.629294, -0.772696,
		-0.343625, 0.709703, 0.615015,
		0.935409, 0.316720, 0.157156,
		35.202145, 34.614246, 44.978889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518860, 35.031540, 44.702469>,  <34.547356, 34.392540, 44.868881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518860, 35.031540, 44.702469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911922, 34.958366, 44.714615>,  <35.147758, 34.914463, 44.721905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911922, 34.958366, 44.714615>,  <34.518860, 35.031540, 44.702469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911922, 34.958366, 44.714615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129883, 0.562067, -0.816830,
		0.132360, 0.806606, 0.576079,
		0.982655, -0.182938, 0.030369,
		35.206718, 34.903484, 44.723724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861706, 35.680195, 44.487911>,  <34.518860, 35.031540, 44.702469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861706, 35.680195, 44.487911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144154, 35.399441, 44.450500>,  <35.313622, 35.230988, 44.428055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.144154, 35.399441, 44.450500>,  <34.861706, 35.680195, 44.487911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144154, 35.399441, 44.450500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277318, 0.395652, -0.875531,
		0.651526, 0.592296, 0.474025,
		0.706123, -0.701886, -0.093523,
		35.355991, 35.188873, 44.422443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424801, 36.048340, 44.276028>,  <34.861706, 35.680195, 44.487911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424801, 36.048340, 44.276028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451290, 35.665943, 44.161694>,  <35.467186, 35.436504, 44.093094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.451290, 35.665943, 44.161694>,  <35.424801, 36.048340, 44.276028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451290, 35.665943, 44.161694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208890, 0.293398, -0.932890,
		0.975694, 0.002076, 0.219127,
		0.066228, -0.955988, -0.285833,
		35.471157, 35.379147, 44.075943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939617, 36.058952, 43.826359>,  <35.424801, 36.048340, 44.276028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939617, 36.058952, 43.826359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815746, 35.694263, 43.718388>,  <35.741425, 35.475449, 43.653603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815746, 35.694263, 43.718388>,  <35.939617, 36.058952, 43.826359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815746, 35.694263, 43.718388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360595, 0.150072, -0.920570,
		0.879814, -0.382412, 0.282290,
		-0.309674, -0.911723, -0.269931,
		35.722843, 35.420746, 43.637409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509800, 35.697231, 43.590721>,  <35.939617, 36.058952, 43.826359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509800, 35.697231, 43.590721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175514, 35.533592, 43.444180>,  <35.974941, 35.435410, 43.356255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175514, 35.533592, 43.444180>,  <36.509800, 35.697231, 43.590721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175514, 35.533592, 43.444180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361925, 0.091433, -0.927712,
		0.413024, -0.907897, 0.071651,
		-0.835716, -0.409100, -0.366355,
		35.924801, 35.410862, 43.334274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771397, 35.266476, 43.103584>,  <36.509800, 35.697231, 43.590721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771397, 35.266476, 43.103584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388374, 35.323242, 43.003227>,  <36.158562, 35.357300, 42.943012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388374, 35.323242, 43.003227>,  <36.771397, 35.266476, 43.103584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388374, 35.323242, 43.003227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268403, 0.121597, -0.955602,
		-0.105107, -0.982382, -0.154526,
		-0.957555, 0.141916, -0.250893,
		36.101109, 35.365818, 42.927959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670971, 35.024990, 42.491074>,  <36.771397, 35.266476, 43.103584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670971, 35.024990, 42.491074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333241, 35.239319, 42.492050>,  <36.130600, 35.367916, 42.492638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333241, 35.239319, 42.492050>,  <36.670971, 35.024990, 42.491074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333241, 35.239319, 42.492050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113747, 0.183689, -0.976381,
		-0.523612, -0.824109, -0.216042,
		-0.844329, 0.535819, 0.002442,
		36.079941, 35.400066, 42.492783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329163, 34.818985, 41.889736>,  <36.670971, 35.024990, 42.491074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329163, 34.818985, 41.889736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191399, 35.179245, 41.995720>,  <36.108738, 35.395401, 42.059311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191399, 35.179245, 41.995720>,  <36.329163, 34.818985, 41.889736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191399, 35.179245, 41.995720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327337, 0.379724, -0.865251,
		-0.879903, -0.211273, -0.425599,
		-0.344415, 0.900651, 0.264963,
		36.088074, 35.449440, 42.075211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130051, 34.982189, 41.323441>,  <36.329163, 34.818985, 41.889736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130051, 34.982189, 41.323441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139507, 35.326279, 41.527187>,  <36.145184, 35.532730, 41.649437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139507, 35.326279, 41.527187>,  <36.130051, 34.982189, 41.323441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139507, 35.326279, 41.527187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280202, 0.483389, -0.829350,
		-0.959650, 0.162336, -0.229607,
		0.023644, 0.860222, 0.509371,
		36.146599, 35.584347, 41.680000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775261, 35.426376, 40.917164>,  <36.130051, 34.982189, 41.323441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775261, 35.426376, 40.917164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022476, 35.645458, 41.142746>,  <36.170807, 35.776909, 41.278095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022476, 35.645458, 41.142746>,  <35.775261, 35.426376, 40.917164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022476, 35.645458, 41.142746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265228, 0.530034, -0.805430,
		-0.740053, 0.647366, 0.182316,
		0.618042, 0.547706, 0.563953,
		36.207890, 35.809769, 41.311932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663292, 36.149445, 40.650928>,  <35.775261, 35.426376, 40.917164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663292, 36.149445, 40.650928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030144, 36.125320, 40.808529>,  <36.250256, 36.110844, 40.903088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.030144, 36.125320, 40.808529>,  <35.663292, 36.149445, 40.650928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030144, 36.125320, 40.808529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383951, 0.399130, -0.832632,
		-0.107038, 0.914908, 0.389212,
		0.917128, -0.060315, 0.394002,
		36.305283, 36.107227, 40.926731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925072, 36.727230, 40.336922>,  <35.663292, 36.149445, 40.650928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925072, 36.727230, 40.336922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242386, 36.524784, 40.472298>,  <36.432774, 36.403316, 40.553524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.242386, 36.524784, 40.472298>,  <35.925072, 36.727230, 40.336922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242386, 36.524784, 40.472298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474354, 0.165284, -0.864679,
		0.381690, 0.846479, 0.371196,
		0.793285, -0.506118, 0.338444,
		36.480370, 36.372948, 40.573830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525955, 37.137047, 40.279827>,  <35.925072, 36.727230, 40.336922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525955, 37.137047, 40.279827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680447, 36.768085, 40.280136>,  <36.773144, 36.546711, 40.280323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680447, 36.768085, 40.280136>,  <36.525955, 37.137047, 40.279827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680447, 36.768085, 40.280136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539492, 0.225221, -0.811310,
		0.748180, 0.313771, 0.584615,
		0.386233, -0.922401, 0.000772,
		36.796318, 36.491364, 40.280369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246380, 37.213669, 40.229321>,  <36.525955, 37.137047, 40.279827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246380, 37.213669, 40.229321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203247, 36.827236, 40.135460>,  <37.177368, 36.595375, 40.079144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203247, 36.827236, 40.135460>,  <37.246380, 37.213669, 40.229321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203247, 36.827236, 40.135460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585711, 0.128986, -0.800191,
		0.803316, -0.223721, 0.551936,
		-0.107827, -0.966081, -0.234652,
		37.170898, 36.537411, 40.065063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905716, 36.968021, 40.089203>,  <37.246380, 37.213669, 40.229321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905716, 36.968021, 40.089203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657589, 36.714382, 39.904541>,  <37.508713, 36.562199, 39.793743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657589, 36.714382, 39.904541>,  <37.905716, 36.968021, 40.089203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657589, 36.714382, 39.904541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629689, -0.051680, -0.775126,
		0.467649, -0.771523, 0.431344,
		-0.620319, -0.634099, -0.461652,
		37.471493, 36.524151, 39.766045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275814, 36.279797, 39.969040>,  <37.905716, 36.968021, 40.089203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275814, 36.279797, 39.969040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002975, 36.277966, 39.676540>,  <37.839272, 36.276867, 39.501041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002975, 36.277966, 39.676540>,  <38.275814, 36.279797, 39.969040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002975, 36.277966, 39.676540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730205, 0.049476, -0.681435,
		0.039287, -0.998765, -0.030417,
		-0.682098, -0.004561, -0.731246,
		37.798347, 36.276592, 39.457165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743477, 35.729053, 39.512718>,  <38.275814, 36.279797, 39.969040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743477, 35.729053, 39.512718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096584, 35.895424, 39.425331>,  <39.308449, 35.995247, 39.372898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096584, 35.895424, 39.425331>,  <38.743477, 35.729053, 39.512718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096584, 35.895424, 39.425331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347839, -0.266035, 0.899018,
		0.315807, -0.869614, -0.379523,
		0.882765, 0.415929, -0.218470,
		39.361412, 36.020203, 39.359791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170483, 35.219448, 39.758488>,  <38.743477, 35.729053, 39.512718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170483, 35.219448, 39.758488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375492, 35.562073, 39.734406>,  <39.498497, 35.767647, 39.719955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.375492, 35.562073, 39.734406>,  <39.170483, 35.219448, 39.758488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375492, 35.562073, 39.734406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338801, -0.137306, 0.930785,
		0.789006, -0.497449, -0.360575,
		0.512527, 0.856558, -0.060201,
		39.529251, 35.819038, 39.716347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683849, 34.989841, 40.133869>,  <39.170483, 35.219448, 39.758488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683849, 34.989841, 40.133869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726254, 35.387577, 40.136658>,  <39.751694, 35.626221, 40.138332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726254, 35.387577, 40.136658>,  <39.683849, 34.989841, 40.133869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726254, 35.387577, 40.136658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298289, -0.038491, 0.953699,
		0.948571, -0.099019, -0.300681,
		0.106008, 0.994341, 0.006975,
		39.758057, 35.685879, 40.138752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288181, 35.174267, 40.444626>,  <39.683849, 34.989841, 40.133869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288181, 35.174267, 40.444626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065887, 35.505962, 40.468330>,  <39.932510, 35.704979, 40.482552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065887, 35.505962, 40.468330>,  <40.288181, 35.174267, 40.444626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065887, 35.505962, 40.468330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097503, -0.005778, 0.995218,
		0.825620, 0.558859, -0.077643,
		-0.555738, 0.829242, 0.059261,
		39.899166, 35.754734, 40.486107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676071, 35.707989, 40.853729>,  <40.288181, 35.174267, 40.444626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676071, 35.707989, 40.853729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285454, 35.785198, 40.891888>,  <40.051083, 35.831524, 40.914783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285454, 35.785198, 40.891888>,  <40.676071, 35.707989, 40.853729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285454, 35.785198, 40.891888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096331, -0.004546, 0.995339,
		0.192559, 0.981183, -0.014155,
		-0.976546, 0.193025, 0.095394,
		39.992489, 35.843105, 40.920506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668648, 36.240410, 41.348488>,  <40.676071, 35.707989, 40.853729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668648, 36.240410, 41.348488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.292416, 36.104748, 41.341816>,  <40.066677, 36.023350, 41.337814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.292416, 36.104748, 41.341816>,  <40.668648, 36.240410, 41.348488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292416, 36.104748, 41.341816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004735, -0.062216, 0.998051,
		-0.339535, 0.938670, 0.060125,
		-0.940581, -0.339159, -0.016680,
		40.010242, 36.002998, 41.336811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168045, 36.665913, 41.751419>,  <40.668648, 36.240410, 41.348488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168045, 36.665913, 41.751419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998703, 36.305061, 41.718105>,  <39.897099, 36.088551, 41.698116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998703, 36.305061, 41.718105>,  <40.168045, 36.665913, 41.751419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998703, 36.305061, 41.718105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133121, -0.028983, 0.990676,
		-0.896129, 0.430497, -0.107821,
		-0.423358, -0.902126, -0.083281,
		39.871696, 36.034424, 41.693123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665424, 36.726257, 42.261791>,  <40.168045, 36.665913, 41.751419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665424, 36.726257, 42.261791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706902, 36.338882, 42.171116>,  <39.731789, 36.106457, 42.116711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706902, 36.338882, 42.171116>,  <39.665424, 36.726257, 42.261791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706902, 36.338882, 42.171116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013060, -0.229220, 0.973287,
		-0.994524, -0.097959, -0.036416,
		0.103689, -0.968433, -0.226685,
		39.738007, 36.048351, 42.103111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143326, 36.351280, 42.711533>,  <39.665424, 36.726257, 42.261791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143326, 36.351280, 42.711533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417313, 36.091797, 42.578869>,  <39.581703, 35.936108, 42.499271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417313, 36.091797, 42.578869>,  <39.143326, 36.351280, 42.711533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417313, 36.091797, 42.578869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080940, -0.520151, 0.850230,
		-0.724066, -0.555533, -0.408792,
		0.684965, -0.648711, -0.331659,
		39.622803, 35.897182, 42.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846127, 35.764042, 42.942696>,  <39.143326, 36.351280, 42.711533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846127, 35.764042, 42.942696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232540, 35.683819, 42.877510>,  <39.464390, 35.635685, 42.838398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232540, 35.683819, 42.877510>,  <38.846127, 35.764042, 42.942696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232540, 35.683819, 42.877510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069982, -0.404039, 0.912061,
		-0.248762, -0.892486, -0.376280,
		0.966033, -0.200554, -0.162967,
		39.522350, 35.623653, 42.828621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828495, 35.132519, 43.081089>,  <38.846127, 35.764042, 42.942696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828495, 35.132519, 43.081089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194176, 35.286396, 43.132080>,  <39.413582, 35.378723, 43.162674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.194176, 35.286396, 43.132080>,  <38.828495, 35.132519, 43.081089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194176, 35.286396, 43.132080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040375, -0.399450, 0.915866,
		0.403250, -0.832136, -0.380708,
		0.914199, 0.384694, 0.127481,
		39.468437, 35.401806, 43.170322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231457, 34.619743, 43.277851>,  <38.828495, 35.132519, 43.081089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231457, 34.619743, 43.277851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440121, 34.940399, 43.394634>,  <39.565319, 35.132793, 43.464703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440121, 34.940399, 43.394634>,  <39.231457, 34.619743, 43.277851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440121, 34.940399, 43.394634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149481, -0.251035, 0.956366,
		0.839957, -0.542539, -0.011124,
		0.521659, 0.801644, 0.291958,
		39.596619, 35.180893, 43.482220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602707, 34.356346, 43.853615>,  <39.231457, 34.619743, 43.277851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602707, 34.356346, 43.853615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.604988, 34.755116, 43.884888>,  <39.606358, 34.994377, 43.903652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.604988, 34.755116, 43.884888>,  <39.602707, 34.356346, 43.853615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604988, 34.755116, 43.884888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204632, -0.075367, 0.975933,
		0.978822, -0.021561, 0.203573,
		0.005700, 0.996923, 0.078183,
		39.606697, 35.054192, 43.908344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916485, 34.391201, 44.485634>,  <39.602707, 34.356346, 43.853615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916485, 34.391201, 44.485634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759899, 34.751087, 44.408417>,  <39.665947, 34.967018, 44.362087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759899, 34.751087, 44.408417>,  <39.916485, 34.391201, 44.485634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759899, 34.751087, 44.408417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107246, 0.163742, 0.980656,
		0.913924, 0.404591, 0.032393,
		-0.391461, 0.899719, -0.193038,
		39.642460, 35.021004, 44.350506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405991, 34.905342, 44.850540>,  <39.916485, 34.391201, 44.485634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405991, 34.905342, 44.850540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014698, 34.974514, 44.804668>,  <39.779922, 35.016018, 44.777145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.014698, 34.974514, 44.804668>,  <40.405991, 34.905342, 44.850540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014698, 34.974514, 44.804668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108418, 0.045282, 0.993074,
		0.176926, 0.983893, -0.025548,
		-0.978235, 0.172930, -0.114683,
		39.721230, 35.026394, 44.770264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233250, 34.946449, 45.505184>,  <40.405991, 34.905342, 44.850540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233250, 34.946449, 45.505184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881256, 34.998783, 45.322533>,  <39.670059, 35.030182, 45.212944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.881256, 34.998783, 45.322533>,  <40.233250, 34.946449, 45.505184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881256, 34.998783, 45.322533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438283, 0.146943, 0.886744,
		0.183115, 0.980454, -0.071965,
		-0.879987, 0.130835, -0.456624,
		39.617260, 35.038033, 45.185547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967014, 35.547550, 45.894794>,  <40.233250, 34.946449, 45.505184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967014, 35.547550, 45.894794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.671085, 35.340775, 45.722542>,  <39.493530, 35.216709, 45.619190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.671085, 35.340775, 45.722542>,  <39.967014, 35.547550, 45.894794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671085, 35.340775, 45.722542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509399, 0.012249, 0.860443,
		-0.439523, 0.855934, -0.272391,
		-0.739819, -0.516940, -0.430628,
		39.449139, 35.185692, 45.593353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276546, 35.934341, 45.980278>,  <39.967014, 35.547550, 45.894794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276546, 35.934341, 45.980278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222298, 35.540630, 45.935009>,  <39.189751, 35.304405, 45.907848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.222298, 35.540630, 45.935009>,  <39.276546, 35.934341, 45.980278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222298, 35.540630, 45.935009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520842, -0.026343, 0.853247,
		-0.842811, 0.174664, -0.509079,
		-0.135620, -0.984276, -0.113175,
		39.181610, 35.245346, 45.901058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.241207, 35.560055, 46.258289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492760, 35.255089, 46.197323>,  <38.643692, 35.072109, 46.160744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.492760, 35.255089, 46.197323>,  <38.241207, 35.560055, 46.258289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492760, 35.255089, 46.197323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511335, -0.553241, 0.657618,
		-0.585705, -0.335623, -0.737772,
		0.628878, -0.762418, -0.152420,
		38.681423, 35.026363, 46.151600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880276, 34.976650, 46.140083>,  <38.241207, 35.560055, 46.258289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880276, 34.976650, 46.140083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230755, 34.823494, 46.257156>,  <38.441044, 34.731598, 46.327400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230755, 34.823494, 46.257156>,  <37.880276, 34.976650, 46.140083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230755, 34.823494, 46.257156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479564, -0.632404, 0.608345,
		-0.047837, -0.673393, -0.737736,
		0.876202, -0.382893, 0.292683,
		38.493614, 34.708626, 46.344959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702015, 34.318176, 46.349178>,  <37.880276, 34.976650, 46.140083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702015, 34.318176, 46.349178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068275, 34.377674, 46.498554>,  <38.288033, 34.413372, 46.588181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068275, 34.377674, 46.498554>,  <37.702015, 34.318176, 46.349178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068275, 34.377674, 46.498554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124058, -0.779090, 0.614515,
		0.382349, -0.609010, -0.694922,
		0.915652, 0.148749, 0.373437,
		38.342972, 34.422298, 46.610584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933990, 33.649532, 46.397293>,  <37.702015, 34.318176, 46.349178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933990, 33.649532, 46.397293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165760, 33.870907, 46.636620>,  <38.304821, 34.003731, 46.780216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165760, 33.870907, 46.636620>,  <37.933990, 33.649532, 46.397293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165760, 33.870907, 46.636620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063548, -0.701191, 0.710136,
		0.812547, -0.449489, -0.371116,
		0.579422, 0.553435, 0.598315,
		38.339588, 34.036938, 46.816113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330704, 33.080559, 46.649372>,  <37.933990, 33.649532, 46.397293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330704, 33.080559, 46.649372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372509, 33.388939, 46.900677>,  <38.397591, 33.573967, 47.051460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372509, 33.388939, 46.900677>,  <38.330704, 33.080559, 46.649372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372509, 33.388939, 46.900677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073359, -0.624025, 0.777953,
		0.991814, -0.127396, -0.008663,
		0.104514, 0.770949, 0.628263,
		38.403862, 33.620224, 47.089157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816460, 32.912361, 47.096901>,  <38.330704, 33.080559, 46.649372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816460, 32.912361, 47.096901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608196, 33.191170, 47.294109>,  <38.483238, 33.358456, 47.412434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608196, 33.191170, 47.294109>,  <38.816460, 32.912361, 47.096901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608196, 33.191170, 47.294109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054645, -0.549076, 0.833984,
		0.852014, 0.461163, 0.247793,
		-0.520660, 0.697025, 0.493021,
		38.452000, 33.400276, 47.442017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196724, 33.054165, 47.710308>,  <38.816460, 32.912361, 47.096901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196724, 33.054165, 47.710308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818581, 33.173096, 47.763821>,  <38.591694, 33.244453, 47.795929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818581, 33.173096, 47.763821>,  <39.196724, 33.054165, 47.710308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818581, 33.173096, 47.763821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037635, -0.507105, 0.861062,
		0.323860, 0.808975, 0.490585,
		-0.945356, 0.297327, 0.133786,
		38.534973, 33.262295, 47.803955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068604, 33.286270, 48.488003>,  <39.196724, 33.054165, 47.710308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068604, 33.286270, 48.488003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712254, 33.183075, 48.338451>,  <38.498444, 33.121159, 48.248722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.712254, 33.183075, 48.338451>,  <39.068604, 33.286270, 48.488003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712254, 33.183075, 48.338451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227509, -0.458987, 0.858819,
		-0.393168, 0.850161, 0.350206,
		-0.890875, -0.257985, -0.373878,
		38.444992, 33.105679, 48.226288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666985, 33.617825, 48.857460>,  <39.068604, 33.286270, 48.488003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666985, 33.617825, 48.857460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.467415, 33.300117, 48.718769>,  <38.347675, 33.109493, 48.635555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.467415, 33.300117, 48.718769>,  <38.666985, 33.617825, 48.857460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467415, 33.300117, 48.718769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134093, -0.324511, 0.936329,
		-0.856210, 0.513649, 0.055400,
		-0.498922, -0.794265, -0.346727,
		38.317738, 33.061836, 48.614750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156311, 33.439289, 49.348335>,  <38.666985, 33.617825, 48.857460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156311, 33.439289, 49.348335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.170685, 33.106987, 49.126144>,  <38.179310, 32.907604, 48.992828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.170685, 33.106987, 49.126144>,  <38.156311, 33.439289, 49.348335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170685, 33.106987, 49.126144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069112, -0.556572, 0.827920,
		-0.996962, 0.008642, -0.077413,
		0.035931, -0.830755, -0.555478,
		38.181465, 32.857761, 48.959499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632816, 32.956200, 49.641453>,  <38.156311, 33.439289, 49.348335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632816, 32.956200, 49.641453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891319, 32.717541, 49.451141>,  <38.046421, 32.574345, 49.336952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891319, 32.717541, 49.451141>,  <37.632816, 32.956200, 49.641453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891319, 32.717541, 49.451141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102990, -0.549574, 0.829073,
		-0.756141, -0.584792, -0.293716,
		0.646254, -0.596646, -0.475783,
		38.085194, 32.538548, 49.308407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467201, 32.287323, 49.795650>,  <37.632816, 32.956200, 49.641453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467201, 32.287323, 49.795650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837894, 32.212147, 49.665512>,  <38.060310, 32.167042, 49.587429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837894, 32.212147, 49.665512>,  <37.467201, 32.287323, 49.795650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837894, 32.212147, 49.665512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167090, -0.569432, 0.804878,
		-0.336531, -0.800266, -0.496307,
		0.926730, -0.187939, -0.325348,
		38.115913, 32.155766, 49.567909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561405, 31.582346, 49.841534>,  <37.467201, 32.287323, 49.795650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561405, 31.582346, 49.841534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930046, 31.736473, 49.822834>,  <38.151230, 31.828949, 49.811615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.930046, 31.736473, 49.822834>,  <37.561405, 31.582346, 49.841534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930046, 31.736473, 49.822834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268804, -0.546698, 0.793011,
		0.280003, -0.743405, -0.607411,
		0.921598, 0.385320, -0.046754,
		38.206524, 31.852070, 49.808807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039745, 31.021936, 49.742817>,  <37.561405, 31.582346, 49.841534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039745, 31.021936, 49.742817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246155, 31.323015, 49.906361>,  <38.369999, 31.503662, 50.004486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.246155, 31.323015, 49.906361>,  <38.039745, 31.021936, 49.742817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246155, 31.323015, 49.906361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334626, -0.616531, 0.712681,
		0.788509, -0.230944, -0.570016,
		0.516022, 0.752698, 0.408861,
		38.400963, 31.548824, 50.029018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719185, 30.799261, 49.924419>,  <38.039745, 31.021936, 49.742817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719185, 30.799261, 49.924419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685879, 31.115166, 50.167515>,  <38.665897, 31.304708, 50.313370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685879, 31.115166, 50.167515>,  <38.719185, 30.799261, 49.924419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685879, 31.115166, 50.167515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378454, -0.539104, 0.752422,
		0.921868, 0.292648, -0.254001,
		-0.083262, 0.789762, 0.607737,
		38.660900, 31.352095, 50.349834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369282, 30.864906, 50.365501>,  <38.719185, 30.799261, 49.924419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369282, 30.864906, 50.365501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091263, 31.062906, 50.574070>,  <38.924450, 31.181707, 50.699211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091263, 31.062906, 50.574070>,  <39.369282, 30.864906, 50.365501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091263, 31.062906, 50.574070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162486, -0.598324, 0.784606,
		0.700358, 0.630065, 0.335435,
		-0.695051, 0.495002, 0.521418,
		38.882748, 31.211407, 50.730495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738766, 30.948067, 51.036903>,  <39.369282, 30.864906, 50.365501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738766, 30.948067, 51.036903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.356289, 31.015348, 51.132744>,  <39.126804, 31.055717, 51.190250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.356289, 31.015348, 51.132744>,  <39.738766, 30.948067, 51.036903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356289, 31.015348, 51.132744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085614, -0.622008, 0.778316,
		0.279950, 0.764731, 0.580357,
		-0.956189, 0.168203, 0.239603,
		39.069431, 31.065809, 51.204624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654644, 31.031578, 51.828350>,  <39.738766, 30.948067, 51.036903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654644, 31.031578, 51.828350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303585, 30.921373, 51.671467>,  <39.092949, 30.855251, 51.577339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.303585, 30.921373, 51.671467>,  <39.654644, 31.031578, 51.828350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303585, 30.921373, 51.671467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100068, -0.694921, 0.712089,
		-0.468740, 0.664212, 0.582328,
		-0.877650, -0.275512, -0.392204,
		39.040291, 30.838720, 51.553806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224304, 30.951569, 52.383591>,  <39.654644, 31.031578, 51.828350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224304, 30.951569, 52.383591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040100, 30.750525, 52.090931>,  <38.929577, 30.629898, 51.915333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040100, 30.750525, 52.090931>,  <39.224304, 30.951569, 52.383591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040100, 30.750525, 52.090931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153270, -0.766849, 0.623259,
		-0.874324, 0.399155, 0.276103,
		-0.460506, -0.502612, -0.731653,
		38.901947, 30.599741, 51.871433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969913, 30.337540, 52.773235>,  <39.224304, 30.951569, 52.383591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969913, 30.337540, 52.773235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893036, 30.234425, 52.394478>,  <38.846909, 30.172556, 52.167225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893036, 30.234425, 52.394478>,  <38.969913, 30.337540, 52.773235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893036, 30.234425, 52.394478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109059, -0.964516, 0.240447,
		-0.975277, -0.057054, 0.213492,
		-0.192198, -0.257786, -0.946893,
		38.835377, 30.157089, 52.110409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359344, 29.934103, 52.838509>,  <38.969913, 30.337540, 52.773235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359344, 29.934103, 52.838509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528206, 29.810070, 52.497772>,  <38.629524, 29.735649, 52.293331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.528206, 29.810070, 52.497772>,  <38.359344, 29.934103, 52.838509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528206, 29.810070, 52.497772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192215, -0.948930, 0.250169,
		-0.885912, 0.058127, -0.460197,
		0.422153, -0.310084, -0.851841,
		38.654854, 29.717045, 52.242218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888435, 29.443104, 52.540962>,  <38.359344, 29.934103, 52.838509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888435, 29.443104, 52.540962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244678, 29.364004, 52.377151>,  <38.458424, 29.316544, 52.278866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244678, 29.364004, 52.377151>,  <37.888435, 29.443104, 52.540962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244678, 29.364004, 52.377151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083272, -0.956198, 0.280628,
		-0.447081, -0.215828, -0.868065,
		0.890609, -0.197749, -0.409526,
		38.511860, 29.304680, 52.254295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851940, 28.751707, 52.202446>,  <37.888435, 29.443104, 52.540962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851940, 28.751707, 52.202446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228725, 28.843267, 52.300674>,  <38.454796, 28.898203, 52.359612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228725, 28.843267, 52.300674>,  <37.851940, 28.751707, 52.202446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228725, 28.843267, 52.300674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059811, -0.834224, 0.548173,
		0.330339, -0.501672, -0.799501,
		0.941966, 0.228901, 0.245571,
		38.511314, 28.911938, 52.374344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795071, 27.950508, 52.125473>,  <37.851940, 28.751707, 52.202446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795071, 27.950508, 52.125473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492439, 27.691639, 52.088051>,  <37.310860, 27.536318, 52.065598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492439, 27.691639, 52.088051>,  <37.795071, 27.950508, 52.125473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492439, 27.691639, 52.088051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436341, 0.606223, -0.664906,
		0.487024, -0.462234, -0.741045,
		-0.756580, -0.647173, -0.093553,
		37.265465, 27.497486, 52.059986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656609, 27.725998, 51.374187>,  <37.795071, 27.950508, 52.125473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656609, 27.725998, 51.374187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345837, 27.758677, 51.623894>,  <37.159374, 27.778284, 51.773716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345837, 27.758677, 51.623894>,  <37.656609, 27.725998, 51.374187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345837, 27.758677, 51.623894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410678, 0.685791, -0.600862,
		-0.477201, -0.723199, -0.499261,
		-0.776932, 0.081697, 0.624262,
		37.112759, 27.783186, 51.811172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036388, 27.628746, 50.883572>,  <37.656609, 27.725998, 51.374187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036388, 27.628746, 50.883572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904572, 27.803757, 51.218231>,  <36.825481, 27.908762, 51.419025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904572, 27.803757, 51.218231>,  <37.036388, 27.628746, 50.883572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904572, 27.803757, 51.218231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366171, 0.757557, -0.540395,
		-0.870242, -0.484438, -0.089438,
		-0.329542, 0.437524, 0.836644,
		36.805710, 27.935015, 51.469223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341461, 28.018711, 50.663235>,  <37.036388, 27.628746, 50.883572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341461, 28.018711, 50.663235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445293, 28.164417, 51.020988>,  <36.507591, 28.251841, 51.235641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.445293, 28.164417, 51.020988>,  <36.341461, 28.018711, 50.663235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445293, 28.164417, 51.020988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549312, 0.817410, -0.173485,
		-0.794276, -0.446265, 0.412278,
		0.259580, 0.364264, 0.894388,
		36.523167, 28.273697, 51.289307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773499, 28.163826, 51.004025>,  <36.341461, 28.018711, 50.663235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773499, 28.163826, 51.004025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054939, 28.402811, 51.157898>,  <36.223804, 28.546202, 51.250221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054939, 28.402811, 51.157898>,  <35.773499, 28.163826, 51.004025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054939, 28.402811, 51.157898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577663, 0.796181, -0.180005,
		-0.413828, -0.095569, 0.905325,
		0.703599, 0.597464, 0.384688,
		36.266018, 28.582050, 51.273304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366436, 28.750610, 51.171509>,  <35.773499, 28.163826, 51.004025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366436, 28.750610, 51.171509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749935, 28.862238, 51.193142>,  <35.980034, 28.929214, 51.206123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749935, 28.862238, 51.193142>,  <35.366436, 28.750610, 51.171509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749935, 28.862238, 51.193142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256738, 0.931769, -0.256694,
		-0.122028, 0.232220, 0.964978,
		0.958747, 0.279071, 0.054083,
		36.037560, 28.945959, 51.209366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442730, 29.367413, 51.566547>,  <35.366436, 28.750610, 51.171509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442730, 29.367413, 51.566547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760143, 29.344732, 51.324196>,  <35.950592, 29.331125, 51.178783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760143, 29.344732, 51.324196>,  <35.442730, 29.367413, 51.566547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760143, 29.344732, 51.324196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166875, 0.937207, -0.306262,
		0.585203, 0.344135, 0.734240,
		0.793530, -0.056700, -0.605884,
		35.998203, 29.327723, 51.142429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766186, 30.131289, 51.572517>,  <35.442730, 29.367413, 51.566547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766186, 30.131289, 51.572517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919498, 29.967419, 51.241394>,  <36.011486, 29.869097, 51.042721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919498, 29.967419, 51.241394>,  <35.766186, 30.131289, 51.572517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919498, 29.967419, 51.241394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233412, 0.824198, -0.515962,
		0.893652, 0.390979, 0.220277,
		0.383282, -0.409675, -0.827805,
		36.034485, 29.844517, 50.993053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343613, 30.599070, 51.300983>,  <35.766186, 30.131289, 51.572517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343613, 30.599070, 51.300983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193924, 30.367655, 51.011086>,  <36.104111, 30.228806, 50.837147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193924, 30.367655, 51.011086>,  <36.343613, 30.599070, 51.300983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193924, 30.367655, 51.011086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190250, 0.812804, -0.550595,
		0.907613, -0.068164, -0.414238,
		-0.374224, -0.578536, -0.724743,
		36.081657, 30.194094, 50.793663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614082, 31.011341, 50.723907>,  <36.343613, 30.599070, 51.300983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614082, 31.011341, 50.723907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323509, 30.767189, 50.597588>,  <36.149166, 30.620697, 50.521797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323509, 30.767189, 50.597588>,  <36.614082, 31.011341, 50.723907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323509, 30.767189, 50.597588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253552, 0.665142, -0.702351,
		0.638747, -0.430145, -0.637948,
		-0.726439, -0.610378, -0.315794,
		36.105579, 30.584074, 50.502850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945736, 30.833675, 50.086014>,  <36.614082, 31.011341, 50.723907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945736, 30.833675, 50.086014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703102, 30.625612, 49.845516>,  <36.557522, 30.500774, 49.701218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703102, 30.625612, 49.845516>,  <36.945736, 30.833675, 50.086014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703102, 30.625612, 49.845516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136289, 0.813101, -0.565943,
		0.783249, -0.261350, -0.564108,
		-0.606586, -0.520156, -0.601241,
		36.521126, 30.469564, 49.665142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217617, 30.766172, 49.375858>,  <36.945736, 30.833675, 50.086014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217617, 30.766172, 49.375858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819607, 30.729670, 49.359905>,  <36.580799, 30.707767, 49.350334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819607, 30.729670, 49.359905>,  <37.217617, 30.766172, 49.375858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819607, 30.729670, 49.359905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026620, 0.629593, -0.776469,
		0.095970, -0.771547, -0.628892,
		-0.995028, -0.091259, -0.039884,
		36.521099, 30.702291, 49.347939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122345, 30.610840, 48.721489>,  <37.217617, 30.766172, 49.375858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122345, 30.610840, 48.721489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768326, 30.730057, 48.864517>,  <36.555912, 30.801586, 48.950333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768326, 30.730057, 48.864517>,  <37.122345, 30.610840, 48.721489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768326, 30.730057, 48.864517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119087, 0.597618, -0.792887,
		-0.450005, -0.744327, -0.493429,
		-0.885050, 0.298042, 0.357571,
		36.502811, 30.819469, 48.971790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710453, 30.629303, 48.165382>,  <37.122345, 30.610840, 48.721489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710453, 30.629303, 48.165382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500946, 30.859236, 48.416851>,  <36.375240, 30.997196, 48.567734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.500946, 30.859236, 48.416851>,  <36.710453, 30.629303, 48.165382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500946, 30.859236, 48.416851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046043, 0.717818, -0.694706,
		-0.850614, -0.392813, -0.349505,
		-0.523771, 0.574834, 0.628673,
		36.343815, 31.031687, 48.605453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033295, 30.844404, 47.804146>,  <36.710453, 30.629303, 48.165382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033295, 30.844404, 47.804146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109787, 31.103809, 48.098862>,  <36.155682, 31.259453, 48.275692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.109787, 31.103809, 48.098862>,  <36.033295, 30.844404, 47.804146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109787, 31.103809, 48.098862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128448, 0.760723, -0.636240,
		-0.973105, 0.027028, 0.228772,
		0.191229, 0.648514, 0.736791,
		36.167156, 31.298363, 48.319901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643105, 31.302914, 47.573250>,  <36.033295, 30.844404, 47.804146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643105, 31.302914, 47.573250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848732, 31.491940, 47.859581>,  <35.972107, 31.605356, 48.031380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848732, 31.491940, 47.859581>,  <35.643105, 31.302914, 47.573250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848732, 31.491940, 47.859581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055282, 0.814558, -0.577442,
		-0.855966, 0.336418, 0.392614,
		0.514069, 0.472566, 0.715831,
		36.002953, 31.633709, 48.074329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213646, 31.736160, 47.899296>,  <35.643105, 31.302914, 47.573250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213646, 31.736160, 47.899296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594131, 31.859020, 47.910923>,  <35.822422, 31.932735, 47.917900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594131, 31.859020, 47.910923>,  <35.213646, 31.736160, 47.899296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594131, 31.859020, 47.910923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228867, 0.765670, -0.601140,
		-0.206893, 0.565163, 0.798615,
		0.951217, 0.307149, 0.029064,
		35.879498, 31.951164, 47.919643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202843, 32.407833, 47.987514>,  <35.213646, 31.736160, 47.899296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202843, 32.407833, 47.987514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575626, 32.353596, 47.853016>,  <35.799297, 32.321053, 47.772316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575626, 32.353596, 47.853016>,  <35.202843, 32.407833, 47.987514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575626, 32.353596, 47.853016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085931, 0.818399, -0.568189,
		0.352231, 0.558424, 0.751064,
		0.931960, -0.135594, -0.336251,
		35.855213, 32.312916, 47.752140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435738, 33.074551, 48.105957>,  <35.202843, 32.407833, 47.987514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435738, 33.074551, 48.105957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652794, 32.875553, 47.835243>,  <35.783028, 32.756157, 47.672813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652794, 32.875553, 47.835243>,  <35.435738, 33.074551, 48.105957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652794, 32.875553, 47.835243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039585, 0.789693, -0.612223,
		0.839029, 0.359010, 0.408830,
		0.542644, -0.497490, -0.676787,
		35.815586, 32.726307, 47.632206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893799, 33.573322, 47.930874>,  <35.435738, 33.074551, 48.105957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893799, 33.573322, 47.930874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878628, 33.310341, 47.629860>,  <35.869526, 33.152554, 47.449249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878628, 33.310341, 47.629860>,  <35.893799, 33.573322, 47.930874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878628, 33.310341, 47.629860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120552, 0.750591, -0.649677,
		0.991982, 0.066082, -0.107722,
		-0.037923, -0.657455, -0.752539,
		35.867252, 33.113106, 47.404099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351185, 33.867596, 47.433083>,  <35.893799, 33.573322, 47.930874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351185, 33.867596, 47.433083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131416, 33.607449, 47.223263>,  <35.999554, 33.451359, 47.097370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.131416, 33.607449, 47.223263>,  <36.351185, 33.867596, 47.433083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131416, 33.607449, 47.223263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034083, 0.644720, -0.763659,
		0.834850, -0.401692, -0.376389,
		-0.549421, -0.650369, -0.524553,
		35.966591, 33.412338, 47.065895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.697132, 41.618000, 28.816927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492634, 41.936565, 28.946142>,  <43.369934, 42.127705, 29.023672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.492634, 41.936565, 28.946142>,  <43.697132, 41.618000, 28.816927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492634, 41.936565, 28.946142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056585, -0.406250, 0.912008,
		0.857571, 0.447979, 0.252758,
		-0.511244, 0.796414, 0.323040,
		43.339260, 42.175491, 29.043055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055763, 41.987911, 29.275970>,  <43.697132, 41.618000, 28.816927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055763, 41.987911, 29.275970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658947, 41.990479, 29.326275>,  <43.420856, 41.992020, 29.356457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.658947, 41.990479, 29.326275>,  <44.055763, 41.987911, 29.275970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658947, 41.990479, 29.326275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099469, -0.572457, 0.813879,
		0.077217, 0.819910, 0.567261,
		-0.992040, 0.006421, 0.125759,
		43.361336, 41.992405, 29.364002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949627, 42.170788, 29.959209>,  <44.055763, 41.987911, 29.275970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949627, 42.170788, 29.959209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604008, 41.996532, 29.858297>,  <43.396637, 41.891979, 29.797750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604008, 41.996532, 29.858297>,  <43.949627, 42.170788, 29.959209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604008, 41.996532, 29.858297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031070, -0.454033, 0.890443,
		-0.502457, 0.777220, 0.378769,
		-0.864044, -0.435641, -0.252280,
		43.344795, 41.865841, 29.782614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500744, 42.316299, 30.557871>,  <43.949627, 42.170788, 29.959209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500744, 42.316299, 30.557871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307884, 42.028076, 30.358540>,  <43.192169, 41.855141, 30.238941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307884, 42.028076, 30.358540>,  <43.500744, 42.316299, 30.557871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307884, 42.028076, 30.358540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004849, -0.566605, 0.823975,
		-0.876076, 0.399695, 0.269694,
		-0.482149, -0.720557, -0.498327,
		43.163239, 41.811909, 30.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067646, 42.051224, 30.998245>,  <43.500744, 42.316299, 30.557871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067646, 42.051224, 30.998245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084808, 41.765316, 30.719027>,  <43.095104, 41.593773, 30.551497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084808, 41.765316, 30.719027>,  <43.067646, 42.051224, 30.998245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084808, 41.765316, 30.719027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124920, -0.697043, 0.706064,
		-0.991239, 0.056905, -0.119196,
		0.042906, -0.714768, -0.698045,
		43.097679, 41.550884, 30.509613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508221, 41.594200, 31.079363>,  <43.067646, 42.051224, 30.998245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508221, 41.594200, 31.079363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784130, 41.379986, 30.884464>,  <42.949677, 41.251457, 30.767525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.784130, 41.379986, 30.884464>,  <42.508221, 41.594200, 31.079363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784130, 41.379986, 30.884464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104104, -0.739338, 0.665238,
		-0.716497, -0.408143, -0.565732,
		0.689779, -0.535536, -0.487244,
		42.991062, 41.219322, 30.738289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228344, 40.934219, 31.044659>,  <42.508221, 41.594200, 31.079363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228344, 40.934219, 31.044659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616840, 40.871075, 30.973354>,  <42.849937, 40.833187, 30.930571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.616840, 40.871075, 30.973354>,  <42.228344, 40.934219, 31.044659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616840, 40.871075, 30.973354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022924, -0.807162, 0.589885,
		-0.237006, -0.568832, -0.787565,
		0.971238, -0.157861, -0.178262,
		42.908211, 40.823715, 30.919876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249329, 40.285866, 30.818520>,  <42.228344, 40.934219, 31.044659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249329, 40.285866, 30.818520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.622654, 40.340145, 30.951490>,  <42.846649, 40.372715, 31.031273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.622654, 40.340145, 30.951490>,  <42.249329, 40.285866, 30.818520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622654, 40.340145, 30.951490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108815, -0.775391, 0.622036,
		0.342172, -0.616728, -0.708918,
		0.933315, 0.135703, 0.332426,
		42.902649, 40.380856, 31.051218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438766, 39.612617, 30.942017>,  <42.249329, 40.285866, 30.818520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438766, 39.612617, 30.942017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.716148, 39.824287, 31.137608>,  <42.882576, 39.951290, 31.254963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.716148, 39.824287, 31.137608>,  <42.438766, 39.612617, 30.942017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716148, 39.824287, 31.137608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085883, -0.734532, 0.673117,
		0.715366, -0.424779, -0.554810,
		0.693452, 0.529174, 0.488978,
		42.924183, 39.983040, 31.284302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013874, 39.126019, 31.044880>,  <42.438766, 39.612617, 30.942017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013874, 39.126019, 31.044880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047680, 39.401230, 31.333178>,  <43.067963, 39.566357, 31.506155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047680, 39.401230, 31.333178>,  <43.013874, 39.126019, 31.044880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047680, 39.401230, 31.333178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051724, -0.725384, 0.686399,
		0.995079, -0.020732, -0.096893,
		0.084515, 0.688032, 0.720742,
		43.073036, 39.607639, 31.549400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560013, 39.029270, 31.416859>,  <43.013874, 39.126019, 31.044880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560013, 39.029270, 31.416859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340168, 39.242111, 31.674479>,  <43.208263, 39.369816, 31.829050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340168, 39.242111, 31.674479>,  <43.560013, 39.029270, 31.416859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340168, 39.242111, 31.674479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163913, -0.687261, 0.707676,
		0.819184, 0.494513, 0.290507,
		-0.549609, 0.532099, 0.644051,
		43.175285, 39.401741, 31.867693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886368, 38.958244, 32.088608>,  <43.560013, 39.029270, 31.416859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886368, 38.958244, 32.088608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519489, 39.101906, 32.157608>,  <43.299362, 39.188103, 32.199009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519489, 39.101906, 32.157608>,  <43.886368, 38.958244, 32.088608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519489, 39.101906, 32.157608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091752, -0.611716, 0.785738,
		0.387722, 0.704851, 0.594018,
		-0.917199, 0.359150, 0.172504,
		43.244331, 39.209652, 32.209358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885971, 39.200829, 32.776691>,  <43.886368, 38.958244, 32.088608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885971, 39.200829, 32.776691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513119, 39.127426, 32.651817>,  <43.289406, 39.083385, 32.576893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513119, 39.127426, 32.651817>,  <43.885971, 39.200829, 32.776691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513119, 39.127426, 32.651817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127863, -0.639780, 0.757847,
		-0.338798, 0.746329, 0.572895,
		-0.932130, -0.183505, -0.312184,
		43.233479, 39.072376, 32.558163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501163, 39.416458, 33.307632>,  <43.885971, 39.200829, 32.776691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501163, 39.416458, 33.307632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275089, 39.153656, 33.108070>,  <43.139442, 38.995975, 32.988335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275089, 39.153656, 33.108070>,  <43.501163, 39.416458, 33.307632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275089, 39.153656, 33.108070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054070, -0.573956, 0.817099,
		-0.823187, 0.488792, 0.288870,
		-0.565190, -0.657006, -0.498902,
		43.105534, 38.956554, 32.958401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111256, 39.106342, 33.816353>,  <43.501163, 39.416458, 33.307632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111256, 39.106342, 33.816353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046257, 38.851357, 33.515091>,  <43.007259, 38.698364, 33.334335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046257, 38.851357, 33.515091>,  <43.111256, 39.106342, 33.816353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046257, 38.851357, 33.515091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213454, -0.722511, 0.657583,
		-0.963344, 0.267618, -0.018663,
		-0.162497, -0.637463, -0.753151,
		42.997509, 38.660118, 33.289146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448589, 38.725796, 33.990669>,  <43.111256, 39.106342, 33.816353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448589, 38.725796, 33.990669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653412, 38.501736, 33.730198>,  <42.776306, 38.367298, 33.573917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653412, 38.501736, 33.730198>,  <42.448589, 38.725796, 33.990669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653412, 38.501736, 33.730198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068772, -0.782405, 0.618961,
		-0.856197, -0.272157, -0.439155,
		0.512052, -0.560154, -0.651176,
		42.807026, 38.333691, 33.534843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074089, 38.044464, 33.946453>,  <42.448589, 38.725796, 33.990669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074089, 38.044464, 33.946453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454849, 37.989937, 33.836681>,  <42.683304, 37.957218, 33.770817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.454849, 37.989937, 33.836681>,  <42.074089, 38.044464, 33.946453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454849, 37.989937, 33.836681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064868, -0.785644, 0.615269,
		-0.299476, -0.603474, -0.739008,
		0.951896, -0.136321, -0.274428,
		42.740417, 37.949039, 33.754353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090195, 37.412979, 33.963337>,  <42.074089, 38.044464, 33.946453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090195, 37.412979, 33.963337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481991, 37.492142, 33.978432>,  <42.717068, 37.539639, 33.987488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481991, 37.492142, 33.978432>,  <42.090195, 37.412979, 33.963337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481991, 37.492142, 33.978432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162414, -0.886454, 0.433384,
		0.119219, -0.418369, -0.900419,
		0.979494, 0.197908, 0.037734,
		42.775841, 37.551514, 33.989750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393093, 36.924015, 33.567661>,  <42.090195, 37.412979, 33.963337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393093, 36.924015, 33.567661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667477, 37.068344, 33.820412>,  <42.832108, 37.154942, 33.972061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667477, 37.068344, 33.820412>,  <42.393093, 36.924015, 33.567661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667477, 37.068344, 33.820412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209267, -0.929531, 0.303610,
		0.696898, -0.076033, -0.713129,
		0.685960, 0.360819, 0.631877,
		42.873264, 37.176590, 34.009975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016186, 36.531700, 33.506798>,  <42.393093, 36.924015, 33.567661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016186, 36.531700, 33.506798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.098671, 36.702721, 33.858860>,  <43.148163, 36.805332, 34.070099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.098671, 36.702721, 33.858860>,  <43.016186, 36.531700, 33.506798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098671, 36.702721, 33.858860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228765, -0.895627, 0.381470,
		0.951390, 0.122686, -0.282497,
		0.206211, 0.427553, 0.880157,
		43.160534, 36.830986, 34.122906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595886, 36.145432, 33.752438>,  <43.016186, 36.531700, 33.506798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595886, 36.145432, 33.752438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404793, 36.330795, 34.050976>,  <43.290138, 36.442013, 34.230099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404793, 36.330795, 34.050976>,  <43.595886, 36.145432, 33.752438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404793, 36.330795, 34.050976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018403, -0.854651, 0.518877,
		0.878314, 0.234147, 0.416820,
		-0.477729, 0.463408, 0.746343,
		43.261475, 36.469818, 34.274879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000996, 36.094261, 34.484104>,  <43.595886, 36.145432, 33.752438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000996, 36.094261, 34.484104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.603836, 36.141304, 34.476894>,  <43.365540, 36.169529, 34.472569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.603836, 36.141304, 34.476894>,  <44.000996, 36.094261, 34.484104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603836, 36.141304, 34.476894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101297, -0.756100, 0.646569,
		0.062414, 0.643802, 0.762642,
		-0.992896, 0.117608, -0.018024,
		43.305965, 36.176586, 34.471485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619164, 36.344631, 34.894341>,  <44.000996, 36.094261, 34.484104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619164, 36.344631, 34.894341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906708, 36.290882, 34.621525>,  <45.079235, 36.258633, 34.457836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906708, 36.290882, 34.621525>,  <44.619164, 36.344631, 34.894341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906708, 36.290882, 34.621525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274164, 0.956413, 0.100543,
		0.638802, -0.259267, 0.724370,
		0.718865, -0.134369, -0.682040,
		45.122368, 36.250572, 34.416912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153137, 36.753651, 35.068588>,  <44.619164, 36.344631, 34.894341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153137, 36.753651, 35.068588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.303074, 36.656734, 34.710640>,  <45.393036, 36.598583, 34.495872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.303074, 36.656734, 34.710640>,  <45.153137, 36.753651, 35.068588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303074, 36.656734, 34.710640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385168, 0.918698, -0.087405,
		0.843292, -0.311913, 0.437686,
		0.374839, -0.242291, -0.894869,
		45.415527, 36.584045, 34.442181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.821518, 36.855125, 35.094944>,  <45.153137, 36.753651, 35.068588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.821518, 36.855125, 35.094944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729809, 36.895260, 34.707672>,  <45.674782, 36.919338, 34.475311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729809, 36.895260, 34.707672>,  <45.821518, 36.855125, 35.094944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729809, 36.895260, 34.707672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393559, 0.919297, 0.002067,
		0.890250, -0.380561, -0.250259,
		-0.229276, 0.100332, -0.968177,
		45.661026, 36.925358, 34.417217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351471, 37.277687, 34.770645>,  <45.821518, 36.855125, 35.094944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351471, 37.277687, 34.770645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083733, 37.278309, 34.473465>,  <45.923092, 37.278683, 34.295155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083733, 37.278309, 34.473465>,  <46.351471, 37.277687, 34.770645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083733, 37.278309, 34.473465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375657, 0.863459, -0.336630,
		0.640986, -0.504416, -0.578534,
		-0.669342, 0.001555, -0.742953,
		45.882931, 37.278774, 34.250580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707840, 37.619236, 34.202557>,  <46.351471, 37.277687, 34.770645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707840, 37.619236, 34.202557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.315315, 37.646072, 34.130428>,  <46.079800, 37.662174, 34.087151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.315315, 37.646072, 34.130428>,  <46.707840, 37.619236, 34.202557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315315, 37.646072, 34.130428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148121, 0.861608, -0.485481,
		0.122795, -0.503120, -0.855448,
		-0.981316, 0.067095, -0.180324,
		46.020920, 37.666203, 34.076332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666344, 37.811630, 33.508884>,  <46.707840, 37.619236, 34.202557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666344, 37.811630, 33.508884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331841, 37.921608, 33.698654>,  <46.131138, 37.987595, 33.812515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331841, 37.921608, 33.698654>,  <46.666344, 37.811630, 33.508884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331841, 37.921608, 33.698654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010262, 0.857208, -0.514868,
		-0.548241, -0.435431, -0.714025,
		-0.836258, 0.274944, 0.474425,
		46.080963, 38.004089, 33.840981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222309, 38.026688, 32.942272>,  <46.666344, 37.811630, 33.508884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222309, 38.026688, 32.942272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.097099, 38.186047, 33.287132>,  <46.021973, 38.281662, 33.494049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.097099, 38.186047, 33.287132>,  <46.222309, 38.026688, 32.942272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097099, 38.186047, 33.287132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235920, 0.846697, -0.476912,
		-0.919977, -0.352683, -0.171048,
		-0.313025, 0.398394, 0.862147,
		46.003193, 38.305565, 33.545776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631157, 38.404934, 32.740997>,  <46.222309, 38.026688, 32.942272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631157, 38.404934, 32.740997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.726524, 38.541191, 33.104782>,  <45.783745, 38.622944, 33.323051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.726524, 38.541191, 33.104782>,  <45.631157, 38.404934, 32.740997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726524, 38.541191, 33.104782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276791, 0.921461, -0.272575,
		-0.930884, -0.186745, 0.313977,
		0.238416, 0.340641, 0.909462,
		45.798050, 38.643383, 33.377621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078300, 38.901272, 32.944199>,  <45.631157, 38.404934, 32.740997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078300, 38.901272, 32.944199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380661, 39.022427, 33.176361>,  <45.562077, 39.095119, 33.315659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380661, 39.022427, 33.176361>,  <45.078300, 38.901272, 32.944199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380661, 39.022427, 33.176361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251103, 0.952873, -0.170233,
		-0.604615, -0.017062, 0.796335,
		0.755902, 0.302888, 0.580406,
		45.607433, 39.113293, 33.350483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807831, 39.475033, 33.377533>,  <45.078300, 38.901272, 32.944199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807831, 39.475033, 33.377533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207050, 39.488571, 33.356529>,  <45.446583, 39.496693, 33.343929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207050, 39.488571, 33.356529>,  <44.807831, 39.475033, 33.377533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207050, 39.488571, 33.356529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046244, 0.965345, -0.256846,
		0.041993, 0.258773, 0.965025,
		0.998047, 0.033841, -0.052505,
		45.506466, 39.498722, 33.340778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953476, 40.112598, 33.570404>,  <44.807831, 39.475033, 33.377533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953476, 40.112598, 33.570404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.292034, 40.013966, 33.381596>,  <45.495171, 39.954784, 33.268311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.292034, 40.013966, 33.381596>,  <44.953476, 40.112598, 33.570404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292034, 40.013966, 33.381596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080660, 0.935475, -0.344064,
		0.526405, 0.253143, 0.811675,
		0.846399, -0.246586, -0.472020,
		45.545956, 39.939991, 33.239990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516441, 40.583866, 33.774685>,  <44.953476, 40.112598, 33.570404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516441, 40.583866, 33.774685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.631550, 40.422504, 33.427246>,  <45.700615, 40.325687, 33.218784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.631550, 40.422504, 33.427246>,  <45.516441, 40.583866, 33.774685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631550, 40.422504, 33.427246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014248, 0.908661, -0.417290,
		0.957592, 0.107710, 0.267236,
		0.287774, -0.403402, -0.868593,
		45.717880, 40.301483, 33.166668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085632, 41.058350, 33.579132>,  <45.516441, 40.583866, 33.774685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085632, 41.058350, 33.579132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004543, 40.855320, 33.244164>,  <45.955891, 40.733501, 33.043182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.004543, 40.855320, 33.244164>,  <46.085632, 41.058350, 33.579132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004543, 40.855320, 33.244164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180364, 0.821188, -0.541404,
		0.962482, -0.260796, -0.074925,
		-0.202724, -0.507578, -0.837417,
		45.943726, 40.703045, 32.992939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622623, 41.263054, 33.119038>,  <46.085632, 41.058350, 33.579132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622623, 41.263054, 33.119038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.306351, 41.128384, 32.914501>,  <46.116585, 41.047581, 32.791779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.306351, 41.128384, 32.914501>,  <46.622623, 41.263054, 33.119038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306351, 41.128384, 32.914501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075725, 0.775019, -0.627384,
		0.607522, -0.534784, -0.587301,
		-0.790684, -0.336677, -0.511338,
		46.069145, 41.027382, 32.761101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872181, 41.395031, 32.372463>,  <46.622623, 41.263054, 33.119038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872181, 41.395031, 32.372463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.473831, 41.358826, 32.374825>,  <46.234821, 41.337101, 32.376240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.473831, 41.358826, 32.374825>,  <46.872181, 41.395031, 32.372463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473831, 41.358826, 32.374825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074847, 0.783238, -0.617200,
		0.051242, -0.615098, -0.786784,
		-0.995878, -0.090515, 0.005904,
		46.175068, 41.331673, 32.376595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642410, 41.230427, 31.572552>,  <46.872181, 41.395031, 32.372463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642410, 41.230427, 31.572552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369595, 41.406750, 31.805964>,  <46.205906, 41.512543, 31.946011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369595, 41.406750, 31.805964>,  <46.642410, 41.230427, 31.572552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369595, 41.406750, 31.805964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112591, 0.725111, -0.679366,
		-0.722594, -0.529056, -0.444924,
		-0.682041, 0.440811, 0.583528,
		46.164982, 41.538994, 31.981022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.079105, 41.424217, 31.160673>,  <46.642410, 41.230427, 31.572552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.079105, 41.424217, 31.160673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998985, 41.654297, 31.477919>,  <45.950912, 41.792343, 31.668266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998985, 41.654297, 31.477919>,  <46.079105, 41.424217, 31.160673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998985, 41.654297, 31.477919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182657, 0.773402, -0.607030,
		-0.962558, -0.266455, -0.049847,
		-0.200298, 0.575196, 0.793114,
		45.938896, 41.826855, 31.715853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462250, 41.738613, 30.922066>,  <46.079105, 41.424217, 31.160673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462250, 41.738613, 30.922066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577400, 41.977100, 31.221840>,  <45.646492, 42.120193, 31.401705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.577400, 41.977100, 31.221840>,  <45.462250, 41.738613, 30.922066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577400, 41.977100, 31.221840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183148, 0.802394, -0.567997,
		-0.939991, 0.026257, 0.340189,
		0.287879, 0.596217, 0.749434,
		45.663765, 42.155964, 31.446671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118340, 42.332180, 30.823942>,  <45.462250, 41.738613, 30.922066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118340, 42.332180, 30.823942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413513, 42.446297, 31.068584>,  <45.590618, 42.514767, 31.215370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413513, 42.446297, 31.068584>,  <45.118340, 42.332180, 30.823942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413513, 42.446297, 31.068584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054241, 0.878250, -0.475115,
		-0.672687, 0.383779, 0.632619,
		0.737937, 0.285289, 0.611604,
		45.634895, 42.531883, 31.252066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809093, 42.892815, 31.099503>,  <45.118340, 42.332180, 30.823942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809093, 42.892815, 31.099503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207241, 42.905605, 31.135748>,  <45.446129, 42.913280, 31.157495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207241, 42.905605, 31.135748>,  <44.809093, 42.892815, 31.099503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207241, 42.905605, 31.135748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017695, 0.865869, -0.499958,
		-0.094445, 0.499248, 0.861297,
		0.995373, 0.031978, 0.090611,
		45.505852, 42.915199, 31.162931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.416267, 36.170864, 43.710487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185669, 35.847115, 43.665653>,  <40.047310, 35.652863, 43.638752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185669, 35.847115, 43.665653>,  <40.416267, 36.170864, 43.710487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185669, 35.847115, 43.665653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213405, -0.016732, -0.976821,
		0.788741, -0.587051, 0.182371,
		-0.576494, -0.809377, -0.112083,
		40.012722, 35.604301, 43.632027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756393, 35.794792, 43.239410>,  <40.416267, 36.170864, 43.710487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756393, 35.794792, 43.239410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379383, 35.662666, 43.219227>,  <40.153179, 35.583393, 43.207115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379383, 35.662666, 43.219227>,  <40.756393, 35.794792, 43.239410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379383, 35.662666, 43.219227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082963, -0.085047, -0.992917,
		0.323681, -0.940033, 0.107562,
		-0.942522, -0.330312, -0.050460,
		40.096626, 35.563572, 43.204090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750504, 35.306324, 42.732586>,  <40.756393, 35.794792, 43.239410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750504, 35.306324, 42.732586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361622, 35.397598, 42.753536>,  <40.128292, 35.452362, 42.766106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361622, 35.397598, 42.753536>,  <40.750504, 35.306324, 42.732586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361622, 35.397598, 42.753536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058275, -0.019172, -0.998116,
		-0.226757, -0.973428, 0.031936,
		-0.972206, 0.228191, 0.052379,
		40.069962, 35.466057, 42.769249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496357, 34.966534, 42.116951>,  <40.750504, 35.306324, 42.732586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496357, 34.966534, 42.116951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234398, 35.243450, 42.238174>,  <40.077221, 35.409599, 42.310909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234398, 35.243450, 42.238174>,  <40.496357, 34.966534, 42.116951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234398, 35.243450, 42.238174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309956, 0.119683, -0.943188,
		-0.689229, -0.711628, 0.136198,
		-0.654898, 0.692287, 0.303062,
		40.037930, 35.451138, 42.329094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940487, 34.794003, 41.700851>,  <40.496357, 34.966534, 42.116951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940487, 34.794003, 41.700851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857994, 35.163837, 41.828979>,  <39.808498, 35.385738, 41.905857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857994, 35.163837, 41.828979>,  <39.940487, 34.794003, 41.700851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857994, 35.163837, 41.828979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391109, 0.222181, -0.893123,
		-0.896940, -0.309474, 0.315793,
		-0.206235, 0.924587, 0.320321,
		39.796124, 35.441212, 41.925076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172394, 34.959267, 41.503109>,  <39.940487, 34.794003, 41.700851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172394, 34.959267, 41.503109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372520, 35.298866, 41.571091>,  <39.492596, 35.502625, 41.611881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372520, 35.298866, 41.571091>,  <39.172394, 34.959267, 41.503109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372520, 35.298866, 41.571091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169402, 0.288481, -0.942381,
		-0.849107, 0.442702, 0.288154,
		0.500321, 0.848996, 0.169956,
		39.522617, 35.553566, 41.622078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740051, 35.510983, 41.326031>,  <39.172394, 34.959267, 41.503109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740051, 35.510983, 41.326031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114914, 35.650261, 41.317108>,  <39.339832, 35.733826, 41.311756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114914, 35.650261, 41.317108>,  <38.740051, 35.510983, 41.326031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114914, 35.650261, 41.317108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118703, 0.258059, -0.958809,
		-0.328093, 0.901203, 0.283174,
		0.937158, 0.348192, -0.022308,
		39.396061, 35.754719, 41.310417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767662, 36.220695, 40.957844>,  <38.740051, 35.510983, 41.326031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767662, 36.220695, 40.957844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147320, 36.095009, 40.949886>,  <39.375114, 36.019596, 40.945110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147320, 36.095009, 40.949886>,  <38.767662, 36.220695, 40.957844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147320, 36.095009, 40.949886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070453, 0.273549, -0.959274,
		0.306866, 0.909085, 0.281775,
		0.949142, -0.314220, -0.019895,
		39.432064, 36.000744, 40.943916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166985, 36.749287, 40.638596>,  <38.767662, 36.220695, 40.957844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166985, 36.749287, 40.638596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409676, 36.440369, 40.563293>,  <39.555290, 36.255016, 40.518112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409676, 36.440369, 40.563293>,  <39.166985, 36.749287, 40.638596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409676, 36.440369, 40.563293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095674, 0.306051, -0.947195,
		0.789132, 0.556678, 0.259578,
		0.606727, -0.772297, -0.188255,
		39.591694, 36.208679, 40.506817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529125, 36.987602, 40.087643>,  <39.166985, 36.749287, 40.638596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529125, 36.987602, 40.087643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631184, 36.600986, 40.077034>,  <39.692421, 36.369019, 40.070671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631184, 36.600986, 40.077034>,  <39.529125, 36.987602, 40.087643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631184, 36.600986, 40.077034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221722, 0.085181, -0.971382,
		0.941136, 0.241969, 0.236037,
		0.255150, -0.966538, -0.026518,
		39.707729, 36.311024, 40.069080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189095, 36.897869, 39.707344>,  <39.529125, 36.987602, 40.087643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189095, 36.897869, 39.707344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025093, 36.533035, 39.707058>,  <39.926693, 36.314137, 39.706886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025093, 36.533035, 39.707058>,  <40.189095, 36.897869, 39.707344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025093, 36.533035, 39.707058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027500, 0.013144, -0.999535,
		0.911668, -0.409797, -0.030471,
		-0.410007, -0.912082, -0.000713,
		39.902092, 36.259411, 39.706844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541222, 36.558266, 39.195847>,  <40.189095, 36.897869, 39.707344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541222, 36.558266, 39.195847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173897, 36.408279, 39.246597>,  <39.953503, 36.318287, 39.277046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173897, 36.408279, 39.246597>,  <40.541222, 36.558266, 39.195847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173897, 36.408279, 39.246597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162200, 0.064058, -0.984676,
		0.361094, -0.924822, -0.119645,
		-0.918315, -0.374967, 0.126875,
		39.898403, 36.295788, 39.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461037, 36.088314, 38.560215>,  <40.541222, 36.558266, 39.195847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461037, 36.088314, 38.560215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098732, 36.195278, 38.691715>,  <39.881348, 36.259457, 38.770615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098732, 36.195278, 38.691715>,  <40.461037, 36.088314, 38.560215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098732, 36.195278, 38.691715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346514, -0.020763, -0.937815,
		-0.243957, -0.963359, 0.111468,
		-0.905766, 0.267412, 0.328753,
		39.827003, 36.275501, 38.790340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778622, 35.342140, 38.374531>,  <40.461037, 36.088314, 38.560215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778622, 35.342140, 38.374531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707249, 35.035900, 38.621761>,  <40.664425, 34.852158, 38.770100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707249, 35.035900, 38.621761>,  <40.778622, 35.342140, 38.374531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707249, 35.035900, 38.621761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938225, 0.056886, 0.341318,
		-0.296473, 0.640799, 0.708153,
		-0.178433, -0.765598, 0.618079,
		40.653717, 34.806221, 38.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266426, 34.824772, 38.158466>,  <40.778622, 35.342140, 38.374531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266426, 34.824772, 38.158466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146507, 34.671883, 37.808830>,  <41.074558, 34.580151, 37.599049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146507, 34.671883, 37.808830>,  <41.266426, 34.824772, 38.158466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146507, 34.671883, 37.808830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285319, -0.838373, 0.464460,
		-0.910338, 0.388637, 0.142286,
		-0.299795, -0.382219, -0.874089,
		41.056568, 34.557217, 37.546604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530945, 34.715664, 38.121902>,  <41.266426, 34.824772, 38.158466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530945, 34.715664, 38.121902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700321, 34.449387, 37.876122>,  <40.801945, 34.289619, 37.728653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700321, 34.449387, 37.876122>,  <40.530945, 34.715664, 38.121902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700321, 34.449387, 37.876122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399848, -0.745955, 0.532610,
		-0.812910, 0.020161, -0.582041,
		0.423438, -0.665691, -0.614455,
		40.827354, 34.249680, 37.691784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979733, 34.329609, 37.842407>,  <40.530945, 34.715664, 38.121902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979733, 34.329609, 37.842407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298241, 34.088715, 37.819557>,  <40.489346, 33.944180, 37.805847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298241, 34.088715, 37.819557>,  <39.979733, 34.329609, 37.842407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298241, 34.088715, 37.819557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548808, -0.758887, 0.350571,
		-0.254475, -0.247802, -0.934792,
		0.796274, -0.602233, -0.057122,
		40.537125, 33.908043, 37.802422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669308, 33.695889, 37.629910>,  <39.979733, 34.329609, 37.842407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669308, 33.695889, 37.629910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040874, 33.611137, 37.751377>,  <40.263817, 33.560287, 37.824257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040874, 33.611137, 37.751377>,  <39.669308, 33.695889, 37.629910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040874, 33.611137, 37.751377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318690, -0.875050, 0.364314,
		0.188538, -0.435195, -0.880374,
		0.928919, -0.211879, 0.303673,
		40.319550, 33.547573, 37.842480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708939, 33.025192, 37.540337>,  <39.669308, 33.695889, 37.629910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708939, 33.025192, 37.540337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988190, 33.105808, 37.815147>,  <40.155739, 33.154179, 37.980034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988190, 33.105808, 37.815147>,  <39.708939, 33.025192, 37.540337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988190, 33.105808, 37.815147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247310, -0.832621, 0.495559,
		0.671906, -0.515871, -0.531432,
		0.698126, 0.201541, 0.687023,
		40.197628, 33.166271, 38.021255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896191, 32.478241, 37.896015>,  <39.708939, 33.025192, 37.540337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896191, 32.478241, 37.896015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111069, 32.695477, 38.154156>,  <40.239998, 32.825817, 38.309040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111069, 32.695477, 38.154156>,  <39.896191, 32.478241, 37.896015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111069, 32.695477, 38.154156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160188, -0.685508, 0.710224,
		0.828104, -0.484909, -0.281259,
		0.537200, 0.543085, 0.645349,
		40.272228, 32.858402, 38.347759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429840, 32.083218, 38.194115>,  <39.896191, 32.478241, 37.896015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429840, 32.083218, 38.194115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344284, 32.388615, 38.437862>,  <40.292950, 32.571854, 38.584110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344284, 32.388615, 38.437862>,  <40.429840, 32.083218, 38.194115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344284, 32.388615, 38.437862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241054, -0.645769, 0.724483,
		0.946648, 0.008069, 0.322167,
		-0.213892, 0.763490, 0.609371,
		40.280117, 32.617661, 38.620674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746269, 31.853189, 38.827694>,  <40.429840, 32.083218, 38.194115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746269, 31.853189, 38.827694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462112, 32.118755, 38.921124>,  <40.291618, 32.278095, 38.977180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462112, 32.118755, 38.921124>,  <40.746269, 31.853189, 38.827694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462112, 32.118755, 38.921124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289947, -0.578474, 0.762429,
		0.641306, 0.473900, 0.603445,
		-0.710393, 0.663917, 0.233573,
		40.248993, 32.317932, 38.991196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678352, 31.733488, 39.444065>,  <40.746269, 31.853189, 38.827694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678352, 31.733488, 39.444065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342258, 31.948366, 39.414585>,  <40.140602, 32.077293, 39.396896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342258, 31.948366, 39.414585>,  <40.678352, 31.733488, 39.444065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342258, 31.948366, 39.414585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487168, -0.688235, 0.537587,
		0.238069, 0.487600, 0.839982,
		-0.840232, 0.537195, -0.073696,
		40.090187, 32.109524, 39.392475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512959, 31.981283, 40.182674>,  <40.678352, 31.733488, 39.444065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512959, 31.981283, 40.182674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173805, 31.966158, 39.971142>,  <39.970314, 31.957083, 39.844223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173805, 31.966158, 39.971142>,  <40.512959, 31.981283, 40.182674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173805, 31.966158, 39.971142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360061, -0.691089, 0.626699,
		-0.389170, 0.721780, 0.572346,
		-0.847881, -0.037813, -0.528836,
		39.919441, 31.954815, 39.812492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022732, 32.175152, 40.613445>,  <40.512959, 31.981283, 40.182674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022732, 32.175152, 40.613445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854595, 31.965488, 40.317181>,  <39.753712, 31.839691, 40.139423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854595, 31.965488, 40.317181>,  <40.022732, 32.175152, 40.613445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854595, 31.965488, 40.317181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329250, -0.672527, 0.662799,
		-0.845521, 0.522465, 0.110114,
		-0.420344, -0.524155, -0.740657,
		39.728493, 31.808243, 40.094982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395752, 32.024651, 40.904316>,  <40.022732, 32.175152, 40.613445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395752, 32.024651, 40.904316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452003, 31.757135, 40.612301>,  <39.485756, 31.596626, 40.437092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452003, 31.757135, 40.612301>,  <39.395752, 32.024651, 40.904316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452003, 31.757135, 40.612301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204233, -0.741099, 0.639578,
		-0.968769, 0.059154, -0.240808,
		0.140629, -0.668784, -0.730035,
		39.494194, 31.556499, 40.393291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829082, 31.672266, 40.940720>,  <39.395752, 32.024651, 40.904316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829082, 31.672266, 40.940720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080971, 31.419907, 40.759426>,  <39.232101, 31.268490, 40.650650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080971, 31.419907, 40.759426>,  <38.829082, 31.672266, 40.940720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080971, 31.419907, 40.759426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163930, -0.678231, 0.716330,
		-0.759332, -0.376785, -0.530517,
		0.629715, -0.630900, -0.453236,
		39.269886, 31.230637, 40.623455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499683, 31.050455, 41.083298>,  <38.829082, 31.672266, 40.940720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499683, 31.050455, 41.083298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874973, 30.971260, 40.969784>,  <39.100147, 30.923742, 40.901676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874973, 30.971260, 40.969784>,  <38.499683, 31.050455, 41.083298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874973, 30.971260, 40.969784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120240, -0.582486, 0.803898,
		-0.324465, -0.788359, -0.522696,
		0.938224, -0.197988, -0.283789,
		39.156441, 30.911863, 40.884647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999001, 30.756741, 40.637871>,  <38.499683, 31.050455, 41.083298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999001, 30.756741, 40.637871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648140, 30.575016, 40.700104>,  <37.437622, 30.465981, 40.737442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648140, 30.575016, 40.700104>,  <37.999001, 30.756741, 40.637871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648140, 30.575016, 40.700104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410293, 0.540668, -0.734397,
		0.249528, -0.708011, -0.660649,
		-0.877152, -0.454312, 0.155579,
		37.384995, 30.438723, 40.746777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664284, 30.706623, 39.964535>,  <37.999001, 30.756741, 40.637871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664284, 30.706623, 39.964535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350349, 30.632481, 40.201069>,  <37.161987, 30.587996, 40.342991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350349, 30.632481, 40.201069>,  <37.664284, 30.706623, 39.964535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350349, 30.632481, 40.201069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608739, 0.409307, -0.679635,
		-0.116062, -0.893371, -0.434072,
		-0.784835, -0.185357, 0.591335,
		37.114899, 30.576874, 40.378468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090401, 30.383665, 39.517757>,  <37.664284, 30.706623, 39.964535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090401, 30.383665, 39.517757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971882, 30.581820, 39.844387>,  <36.900768, 30.700712, 40.040367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971882, 30.581820, 39.844387>,  <37.090401, 30.383665, 39.517757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971882, 30.581820, 39.844387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723711, 0.441466, -0.530425,
		-0.623256, -0.748131, 0.227709,
		-0.296301, 0.495386, 0.816577,
		36.882992, 30.730434, 40.089359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405193, 30.406086, 39.360504>,  <37.090401, 30.383665, 39.517757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405193, 30.406086, 39.360504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458111, 30.694159, 39.632927>,  <36.489861, 30.867002, 39.796379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458111, 30.694159, 39.632927>,  <36.405193, 30.406086, 39.360504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458111, 30.694159, 39.632927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555106, 0.623071, -0.551036,
		-0.821191, -0.305156, 0.482209,
		0.132298, 0.720182, 0.681054,
		36.497799, 30.910213, 39.837242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776760, 30.760159, 39.522488>,  <36.405193, 30.406086, 39.360504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776760, 30.760159, 39.522488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025612, 31.034456, 39.673595>,  <36.174923, 31.199036, 39.764259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025612, 31.034456, 39.673595>,  <35.776760, 30.760159, 39.522488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025612, 31.034456, 39.673595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435145, 0.703987, -0.561294,
		-0.650846, 0.184816, 0.736371,
		0.622132, 0.685744, 0.377766,
		36.212250, 31.240179, 39.786926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481739, 31.369902, 39.397015>,  <35.776760, 30.760159, 39.522488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481739, 31.369902, 39.397015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813984, 31.535606, 39.545860>,  <36.013332, 31.635029, 39.635166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813984, 31.535606, 39.545860>,  <35.481739, 31.369902, 39.397015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813984, 31.535606, 39.545860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155705, 0.814373, -0.559063,
		-0.534638, 0.406426, 0.740932,
		0.830613, 0.414263, 0.372112,
		36.063168, 31.659885, 39.657494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410969, 32.128784, 39.807056>,  <35.481739, 31.369902, 39.397015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410969, 32.128784, 39.807056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760296, 32.076405, 39.619370>,  <35.969894, 32.044979, 39.506760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760296, 32.076405, 39.619370>,  <35.410969, 32.128784, 39.807056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760296, 32.076405, 39.619370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160134, 0.832501, -0.530376,
		0.460072, 0.538326, 0.706072,
		0.873322, -0.130945, -0.469215,
		36.022293, 32.037121, 39.478603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754372, 32.744213, 39.851631>,  <35.410969, 32.128784, 39.807056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754372, 32.744213, 39.851631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892609, 32.538509, 39.537663>,  <35.975552, 32.415089, 39.349281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892609, 32.538509, 39.537663>,  <35.754372, 32.744213, 39.851631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892609, 32.538509, 39.537663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137866, 0.799562, -0.584547,
		0.928202, 0.310230, 0.205425,
		0.345593, -0.514256, -0.784924,
		35.996288, 32.384232, 39.302185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156342, 33.244061, 39.574242>,  <35.754372, 32.744213, 39.851631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156342, 33.244061, 39.574242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121914, 32.966400, 39.288376>,  <36.101257, 32.799805, 39.116856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121914, 32.966400, 39.288376>,  <36.156342, 33.244061, 39.574242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121914, 32.966400, 39.288376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080392, 0.710144, -0.699451,
		0.993040, -0.117658, -0.005320,
		-0.086074, -0.694155, -0.714660,
		36.096092, 32.758152, 39.073978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632812, 33.575386, 39.166000>,  <36.156342, 33.244061, 39.574242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632812, 33.575386, 39.166000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443050, 33.322502, 38.920971>,  <36.329193, 33.170773, 38.773952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443050, 33.322502, 38.920971>,  <36.632812, 33.575386, 39.166000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443050, 33.322502, 38.920971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161791, 0.746633, -0.645262,
		0.865312, -0.207005, -0.456491,
		-0.474403, -0.632209, -0.612579,
		36.300728, 33.132839, 38.737198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970318, 33.685558, 38.498894>,  <36.632812, 33.575386, 39.166000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970318, 33.685558, 38.498894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605843, 33.529102, 38.447128>,  <36.387157, 33.435226, 38.416069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605843, 33.529102, 38.447128>,  <36.970318, 33.685558, 38.498894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605843, 33.529102, 38.447128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161544, 0.628158, -0.761131,
		0.379006, -0.672625, -0.635555,
		-0.911185, -0.391144, -0.129418,
		36.332489, 33.411758, 38.408302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913284, 33.362537, 37.904449>,  <36.970318, 33.685558, 38.498894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913284, 33.362537, 37.904449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575172, 33.541893, 38.020699>,  <36.372307, 33.649506, 38.090446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575172, 33.541893, 38.020699>,  <36.913284, 33.362537, 37.904449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575172, 33.541893, 38.020699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024769, 0.510427, -0.859564,
		-0.533756, -0.733767, -0.420345,
		-0.845275, 0.448386, 0.290619,
		36.321590, 33.676411, 38.107883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.757072, 27.705418, 42.851238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401138, 27.801882, 43.006172>,  <38.187576, 27.859760, 43.099133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401138, 27.801882, 43.006172>,  <38.757072, 27.705418, 42.851238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401138, 27.801882, 43.006172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321957, 0.269669, -0.907536,
		-0.323313, -0.932266, -0.162319,
		-0.889838, 0.241159, 0.387338,
		38.134186, 27.874229, 43.122372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207905, 27.662989, 42.285824>,  <38.757072, 27.705418, 42.851238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207905, 27.662989, 42.285824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024269, 27.876022, 42.570244>,  <37.914085, 28.003843, 42.740894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024269, 27.876022, 42.570244>,  <38.207905, 27.662989, 42.285824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024269, 27.876022, 42.570244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389927, 0.598364, -0.699941,
		-0.798243, -0.598594, -0.067036,
		-0.459092, 0.532584, 0.711048,
		37.886543, 28.035797, 42.783558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479908, 27.716934, 42.091450>,  <38.207905, 27.662989, 42.285824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479908, 27.716934, 42.091450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548820, 28.006960, 42.358162>,  <37.590168, 28.180975, 42.518188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548820, 28.006960, 42.358162>,  <37.479908, 27.716934, 42.091450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548820, 28.006960, 42.358162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424602, 0.665455, -0.613908,
		-0.888837, -0.177352, 0.422510,
		0.172283, 0.725063, 0.666785,
		37.600506, 28.224480, 42.558197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834515, 28.078659, 42.224979>,  <37.479908, 27.716934, 42.091450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834515, 28.078659, 42.224979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144894, 28.317904, 42.305153>,  <37.331120, 28.461451, 42.353256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144894, 28.317904, 42.305153>,  <36.834515, 28.078659, 42.224979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144894, 28.317904, 42.305153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425808, 0.731070, -0.533126,
		-0.465400, 0.328330, 0.821950,
		0.775945, 0.598110, 0.200435,
		37.377678, 28.497337, 42.365284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562138, 28.684103, 42.103207>,  <36.834515, 28.078659, 42.224979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562138, 28.684103, 42.103207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945663, 28.796522, 42.119675>,  <37.175777, 28.863974, 42.129555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945663, 28.796522, 42.119675>,  <36.562138, 28.684103, 42.103207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945663, 28.796522, 42.119675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219929, 0.826272, -0.518561,
		-0.179760, 0.488146, 0.854049,
		0.958811, 0.281047, 0.041173,
		37.233307, 28.880836, 42.132027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602825, 29.379429, 42.176922>,  <36.562138, 28.684103, 42.103207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602825, 29.379429, 42.176922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961861, 29.287838, 42.026241>,  <37.177280, 29.232883, 41.935833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961861, 29.287838, 42.026241>,  <36.602825, 29.379429, 42.176922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961861, 29.287838, 42.026241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071495, 0.767591, -0.636940,
		0.434997, 0.598643, 0.672610,
		0.897589, -0.228979, -0.376700,
		37.231136, 29.219145, 41.913231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073582, 29.969263, 42.269306>,  <36.602825, 29.379429, 42.176922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073582, 29.969263, 42.269306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.222012, 29.745279, 41.972996>,  <37.311069, 29.610889, 41.795208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.222012, 29.745279, 41.972996>,  <37.073582, 29.969263, 42.269306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222012, 29.745279, 41.972996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067440, 0.779374, -0.622919,
		0.926153, 0.281105, 0.251439,
		0.371071, -0.559962, -0.740776,
		37.333332, 29.577291, 41.750763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500637, 30.412523, 41.965313>,  <37.073582, 29.969263, 42.269306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500637, 30.412523, 41.965313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445591, 30.125849, 41.691837>,  <37.412563, 29.953844, 41.527752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445591, 30.125849, 41.691837>,  <37.500637, 30.412523, 41.965313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445591, 30.125849, 41.691837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353313, 0.680362, -0.642088,
		0.925329, 0.153197, -0.346840,
		-0.137611, -0.716686, -0.683684,
		37.404308, 29.910843, 41.486732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907055, 30.589979, 41.356155>,  <37.500637, 30.412523, 41.965313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907055, 30.589979, 41.356155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603863, 30.366213, 41.221981>,  <37.421947, 30.231953, 41.141476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603863, 30.366213, 41.221981>,  <37.907055, 30.589979, 41.356155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603863, 30.366213, 41.221981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117936, 0.623316, -0.773025,
		0.641529, -0.546377, -0.538436,
		-0.757979, -0.559419, -0.335437,
		37.376469, 30.198389, 41.121349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508888, 30.144566, 41.087917>,  <37.907055, 30.589979, 41.356155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508888, 30.144566, 41.087917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873096, 30.309557, 41.099300>,  <39.091621, 30.408552, 41.106129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873096, 30.309557, 41.099300>,  <38.508888, 30.144566, 41.087917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873096, 30.309557, 41.099300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145914, -0.384968, 0.911322,
		0.386859, -0.825626, -0.410709,
		0.910522, 0.412481, 0.028458,
		39.146252, 30.433302, 41.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951439, 29.637466, 41.360790>,  <38.508888, 30.144566, 41.087917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951439, 29.637466, 41.360790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184406, 29.957830, 41.416405>,  <39.324188, 30.150049, 41.449772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.184406, 29.957830, 41.416405>,  <38.951439, 29.637466, 41.360790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184406, 29.957830, 41.416405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348978, -0.400826, 0.847085,
		0.734165, -0.444842, -0.512950,
		0.582423, 0.800908, 0.139032,
		39.359135, 30.198103, 41.458115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627018, 29.385977, 41.619698>,  <38.951439, 29.637466, 41.360790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627018, 29.385977, 41.619698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.597137, 29.771479, 41.722149>,  <39.579208, 30.002779, 41.783619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.597137, 29.771479, 41.722149>,  <39.627018, 29.385977, 41.619698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597137, 29.771479, 41.722149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484801, -0.189350, 0.853882,
		0.871429, 0.187955, -0.453084,
		-0.074700, 0.963753, 0.256126,
		39.574726, 30.060604, 41.798988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204369, 29.547604, 41.796360>,  <39.627018, 29.385977, 41.619698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204369, 29.547604, 41.796360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.973537, 29.818485, 41.978951>,  <39.835037, 29.981014, 42.088505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.973537, 29.818485, 41.978951>,  <40.204369, 29.547604, 41.796360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973537, 29.818485, 41.978951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387361, -0.265096, 0.882992,
		0.718977, 0.686379, -0.109341,
		-0.577082, 0.677205, 0.456475,
		39.800411, 30.021646, 42.115894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533394, 30.256023, 42.011261>,  <40.204369, 29.547604, 41.796360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533394, 30.256023, 42.011261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225140, 30.247522, 42.266033>,  <40.040188, 30.242422, 42.418896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225140, 30.247522, 42.266033>,  <40.533394, 30.256023, 42.011261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225140, 30.247522, 42.266033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632909, 0.091330, 0.768820,
		-0.074510, 0.995594, -0.056931,
		-0.770632, -0.021252, 0.636926,
		39.993950, 30.241146, 42.457111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699265, 30.685919, 42.586796>,  <40.533394, 30.256023, 42.011261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699265, 30.685919, 42.586796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.375469, 30.500481, 42.730911>,  <40.181190, 30.389217, 42.817379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.375469, 30.500481, 42.730911>,  <40.699265, 30.685919, 42.586796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375469, 30.500481, 42.730911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448400, -0.091999, 0.889086,
		-0.379031, 0.881257, 0.282349,
		-0.809489, -0.463597, 0.360285,
		40.132622, 30.361401, 42.838997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496716, 31.047636, 43.216965>,  <40.699265, 30.685919, 42.586796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496716, 31.047636, 43.216965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333939, 30.686367, 43.271629>,  <40.236271, 30.469606, 43.304428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333939, 30.686367, 43.271629>,  <40.496716, 31.047636, 43.216965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333939, 30.686367, 43.271629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191116, 0.062112, 0.979600,
		-0.893236, 0.424761, 0.147335,
		-0.406945, -0.903172, 0.136660,
		40.211857, 30.415415, 43.312626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307999, 31.075930, 43.866554>,  <40.496716, 31.047636, 43.216965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307999, 31.075930, 43.866554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315887, 30.682085, 43.797100>,  <40.320621, 30.445778, 43.755428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315887, 30.682085, 43.797100>,  <40.307999, 31.075930, 43.866554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315887, 30.682085, 43.797100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442344, -0.147152, 0.884691,
		-0.896629, -0.094252, 0.432636,
		0.019721, -0.984613, -0.173632,
		40.321804, 30.386702, 43.745010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856060, 30.883535, 44.331493>,  <40.307999, 31.075930, 43.866554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856060, 30.883535, 44.331493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102024, 30.574169, 44.269901>,  <40.249603, 30.388550, 44.232948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102024, 30.574169, 44.269901>,  <39.856060, 30.883535, 44.331493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102024, 30.574169, 44.269901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332750, 0.077448, 0.939829,
		-0.714955, -0.629148, 0.304978,
		0.614912, -0.773417, -0.153977,
		40.286499, 30.342144, 44.223709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761127, 30.429346, 44.872005>,  <39.856060, 30.883535, 44.331493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761127, 30.429346, 44.872005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.120049, 30.324553, 44.729897>,  <40.335400, 30.261677, 44.644630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.120049, 30.324553, 44.729897>,  <39.761127, 30.429346, 44.872005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120049, 30.324553, 44.729897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323242, -0.158116, 0.933013,
		-0.300608, -0.952032, -0.057194,
		0.897301, -0.261983, -0.355268,
		40.389240, 30.245958, 44.623318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965542, 29.845470, 45.256168>,  <39.761127, 30.429346, 44.872005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965542, 29.845470, 45.256168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307976, 29.946997, 45.076084>,  <40.513435, 30.007914, 44.968033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307976, 29.946997, 45.076084>,  <39.965542, 29.845470, 45.256168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307976, 29.946997, 45.076084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516479, -0.388138, 0.763281,
		0.018991, -0.885960, -0.463372,
		0.856089, 0.253818, -0.450209,
		40.564804, 30.023142, 44.941021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392345, 29.264980, 45.245441>,  <39.965542, 29.845470, 45.256168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392345, 29.264980, 45.245441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.652397, 29.568785, 45.236706>,  <40.808430, 29.751066, 45.231464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.652397, 29.568785, 45.236706>,  <40.392345, 29.264980, 45.245441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652397, 29.568785, 45.236706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430165, -0.344218, 0.834549,
		0.626331, -0.551959, -0.550501,
		0.650129, 0.759510, -0.021839,
		40.847435, 29.796638, 45.230152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031128, 29.085926, 45.539154>,  <40.392345, 29.264980, 45.245441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031128, 29.085926, 45.539154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086945, 29.481354, 45.562000>,  <41.120434, 29.718611, 45.575710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.086945, 29.481354, 45.562000>,  <41.031128, 29.085926, 45.539154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086945, 29.481354, 45.562000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496531, -0.119763, 0.859717,
		0.856729, -0.091606, -0.507566,
		0.139543, 0.988567, 0.057119,
		41.128807, 29.777924, 45.579136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655106, 29.063690, 45.793552>,  <41.031128, 29.085926, 45.539154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655106, 29.063690, 45.793552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.515728, 29.426920, 45.886490>,  <41.432102, 29.644857, 45.942253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.515728, 29.426920, 45.886490>,  <41.655106, 29.063690, 45.793552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515728, 29.426920, 45.886490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459325, -0.050658, 0.886823,
		0.817073, 0.415729, -0.399451,
		-0.348443, 0.908077, 0.232346,
		41.411194, 29.699343, 45.956192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.197308, 30.529007, 47.000137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496868, 30.312725, 46.846889>,  <33.676605, 30.182955, 46.754940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496868, 30.312725, 46.846889>,  <33.197308, 30.529007, 47.000137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496868, 30.312725, 46.846889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009289, 0.569514, -0.821929,
		0.662615, 0.619104, 0.421488,
		0.748903, -0.540707, -0.383120,
		33.721539, 30.150513, 46.731953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793282, 30.999928, 46.864285>,  <33.197308, 30.529007, 47.000137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793282, 30.999928, 46.864285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797173, 30.682306, 46.621178>,  <33.799507, 30.491734, 46.475311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.797173, 30.682306, 46.621178>,  <33.793282, 30.999928, 46.864285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797173, 30.682306, 46.621178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180527, 0.599207, -0.779975,
		0.983522, -0.102129, 0.149179,
		0.009731, -0.794053, -0.607770,
		33.800091, 30.444090, 46.438847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353542, 31.095032, 46.463676>,  <33.793282, 30.999928, 46.864285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353542, 31.095032, 46.463676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155674, 30.830194, 46.238487>,  <34.036953, 30.671291, 46.103374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155674, 30.830194, 46.238487>,  <34.353542, 31.095032, 46.463676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155674, 30.830194, 46.238487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213102, 0.535596, -0.817144,
		0.842551, -0.524184, -0.123849,
		-0.494667, -0.662093, -0.562972,
		34.007275, 30.631567, 46.069595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624573, 31.203772, 45.837021>,  <34.353542, 31.095032, 46.463676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624573, 31.203772, 45.837021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300354, 31.002234, 45.717583>,  <34.105824, 30.881311, 45.645920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300354, 31.002234, 45.717583>,  <34.624573, 31.203772, 45.837021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300354, 31.002234, 45.717583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017250, 0.530146, -0.847731,
		0.585423, -0.681973, -0.438398,
		-0.810544, -0.503844, -0.298596,
		34.057190, 30.851080, 45.628002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749641, 31.152077, 45.209705>,  <34.624573, 31.203772, 45.837021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749641, 31.152077, 45.209705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358761, 31.067177, 45.207977>,  <34.124233, 31.016237, 45.206940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358761, 31.067177, 45.207977>,  <34.749641, 31.152077, 45.209705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358761, 31.067177, 45.207977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091158, 0.437918, -0.894382,
		0.191725, -0.873601, -0.447284,
		-0.977206, -0.212249, -0.004324,
		34.065598, 31.003502, 45.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694633, 30.870331, 44.576599>,  <34.749641, 31.152077, 45.209705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694633, 30.870331, 44.576599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352394, 31.021107, 44.718517>,  <34.147053, 31.111572, 44.803669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352394, 31.021107, 44.718517>,  <34.694633, 30.870331, 44.576599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352394, 31.021107, 44.718517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082416, 0.577454, -0.812252,
		-0.511045, -0.724199, -0.463000,
		-0.855594, 0.376939, 0.354791,
		34.095715, 31.134188, 44.824955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304676, 30.852755, 44.053997>,  <34.694633, 30.870331, 44.576599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304676, 30.852755, 44.053997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130161, 31.114126, 44.301445>,  <34.025452, 31.270948, 44.449913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.130161, 31.114126, 44.301445>,  <34.304676, 30.852755, 44.053997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130161, 31.114126, 44.301445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007556, 0.690135, -0.723641,
		-0.899775, -0.311041, -0.306035,
		-0.436288, 0.653427, 0.618616,
		33.999275, 31.310154, 44.487030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774788, 31.200201, 43.613842>,  <34.304676, 30.852755, 44.053997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774788, 31.200201, 43.613842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835419, 31.408941, 43.949627>,  <33.871799, 31.534185, 44.151096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835419, 31.408941, 43.949627>,  <33.774788, 31.200201, 43.613842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835419, 31.408941, 43.949627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113096, 0.852854, -0.509754,
		-0.981953, -0.017671, 0.188296,
		0.151581, 0.521850, 0.839462,
		33.880894, 31.565496, 44.201466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279400, 31.694767, 43.621773>,  <33.774788, 31.200201, 43.613842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279400, 31.694767, 43.621773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562309, 31.842510, 43.862885>,  <33.732056, 31.931156, 44.007553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562309, 31.842510, 43.862885>,  <33.279400, 31.694767, 43.621773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562309, 31.842510, 43.862885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168329, 0.916121, -0.363853,
		-0.686610, 0.155877, 0.710119,
		0.707271, 0.369358, 0.602779,
		33.774490, 31.953318, 44.043716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953415, 32.256355, 43.961979>,  <33.279400, 31.694767, 43.621773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953415, 32.256355, 43.961979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340679, 32.351219, 43.994034>,  <33.573036, 32.408138, 44.013268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340679, 32.351219, 43.994034>,  <32.953415, 32.256355, 43.961979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340679, 32.351219, 43.994034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195833, 0.916921, -0.347714,
		-0.155941, 0.320950, 0.934170,
		0.968159, 0.237164, 0.080133,
		33.631126, 32.422367, 44.018074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993397, 33.050831, 44.228268>,  <32.953415, 32.256355, 43.961979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993397, 33.050831, 44.228268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.337158, 32.948479, 44.051201>,  <33.543415, 32.887070, 43.944962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.337158, 32.948479, 44.051201>,  <32.993397, 33.050831, 44.228268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337158, 32.948479, 44.051201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003711, 0.862622, -0.505836,
		0.511284, 0.436360, 0.740391,
		0.859404, -0.255878, -0.442664,
		33.594978, 32.871716, 43.918400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360153, 33.687439, 44.283882>,  <32.993397, 33.050831, 44.228268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360153, 33.687439, 44.283882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499977, 33.450176, 43.993786>,  <33.583870, 33.307819, 43.819729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499977, 33.450176, 43.993786>,  <33.360153, 33.687439, 44.283882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499977, 33.450176, 43.993786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057459, 0.759045, -0.648497,
		0.935151, 0.268360, 0.231249,
		0.349559, -0.593155, -0.725241,
		33.604843, 33.272228, 43.776215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790405, 34.156200, 43.870205>,  <33.360153, 33.687439, 44.283882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790405, 34.156200, 43.870205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733109, 33.843681, 43.627205>,  <33.698730, 33.656170, 43.481407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733109, 33.843681, 43.627205>,  <33.790405, 34.156200, 43.870205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733109, 33.843681, 43.627205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006234, 0.614526, -0.788872,
		0.989668, -0.109210, -0.092894,
		-0.143239, -0.781301, -0.607496,
		33.690136, 33.609291, 43.444958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309303, 34.183929, 43.354000>,  <33.790405, 34.156200, 43.870205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309303, 34.183929, 43.354000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002724, 33.970654, 43.210743>,  <33.818775, 33.842686, 43.124786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002724, 33.970654, 43.210743>,  <34.309303, 34.183929, 43.354000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002724, 33.970654, 43.210743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131921, 0.676376, -0.724646,
		0.628617, -0.508155, -0.588744,
		-0.766445, -0.533192, -0.358145,
		33.772789, 33.810696, 43.103298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072216, 34.312218, 43.386189>,  <34.309303, 34.183929, 43.354000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072216, 34.312218, 43.386189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282227, 34.641354, 43.473164>,  <35.408234, 34.838837, 43.525349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282227, 34.641354, 43.473164>,  <35.072216, 34.312218, 43.386189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282227, 34.641354, 43.473164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105543, -0.316456, 0.942717,
		0.844517, -0.472002, -0.252993,
		0.525025, 0.822843, 0.217436,
		35.439735, 34.888206, 43.538395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758877, 34.173183, 43.737488>,  <35.072216, 34.312218, 43.386189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758877, 34.173183, 43.737488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637470, 34.538612, 43.845749>,  <35.564625, 34.757870, 43.910706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637470, 34.538612, 43.845749>,  <35.758877, 34.173183, 43.737488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637470, 34.538612, 43.845749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089109, -0.255592, 0.962669,
		0.948649, 0.316308, -0.003830,
		-0.303521, 0.913576, 0.270653,
		35.546413, 34.812687, 43.926945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355389, 34.535694, 44.065804>,  <35.758877, 34.173183, 43.737488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355389, 34.535694, 44.065804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011150, 34.696754, 44.190536>,  <35.804607, 34.793392, 44.265377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011150, 34.696754, 44.190536>,  <36.355389, 34.535694, 44.065804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011150, 34.696754, 44.190536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262652, -0.173688, 0.949129,
		0.436331, 0.898723, 0.043719,
		-0.860598, 0.402652, 0.311837,
		35.752972, 34.817551, 44.284088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487690, 34.665161, 44.707726>,  <36.355389, 34.535694, 44.065804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487690, 34.665161, 44.707726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098019, 34.754864, 44.718159>,  <35.864216, 34.808685, 44.724419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.098019, 34.754864, 44.718159>,  <36.487690, 34.665161, 44.707726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098019, 34.754864, 44.718159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000066, -0.115231, 0.993339,
		0.225770, 0.967693, 0.112241,
		-0.974181, 0.224258, 0.026079,
		35.805763, 34.822140, 44.725983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399975, 35.023960, 45.349758>,  <36.487690, 34.665161, 44.707726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399975, 35.023960, 45.349758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026215, 34.938507, 45.235733>,  <35.801960, 34.887234, 45.167316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026215, 34.938507, 45.235733>,  <36.399975, 35.023960, 45.349758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026215, 34.938507, 45.235733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237819, -0.221679, 0.945675,
		-0.265221, 0.951430, 0.156330,
		-0.934398, -0.213635, -0.285062,
		35.745895, 34.874416, 45.150215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016644, 35.310204, 45.818096>,  <36.399975, 35.023960, 45.349758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016644, 35.310204, 45.818096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.777340, 35.026054, 45.669800>,  <35.633759, 34.855564, 45.580822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.777340, 35.026054, 45.669800>,  <36.016644, 35.310204, 45.818096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777340, 35.026054, 45.669800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066275, -0.504959, 0.860595,
		-0.798556, 0.490289, 0.349178,
		-0.598261, -0.710375, -0.370744,
		35.597862, 34.812943, 45.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520954, 35.168339, 46.407948>,  <36.016644, 35.310204, 45.818096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520954, 35.168339, 46.407948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533550, 34.856171, 46.158161>,  <35.541107, 34.668869, 46.008289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.533550, 34.856171, 46.158161>,  <35.520954, 35.168339, 46.407948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533550, 34.856171, 46.158161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136382, -0.615577, 0.776186,
		-0.990156, -0.109605, 0.087053,
		0.031486, -0.780418, -0.624465,
		35.542995, 34.622044, 45.970821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091084, 34.593170, 46.618229>,  <35.520954, 35.168339, 46.407948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091084, 34.593170, 46.618229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350323, 34.398617, 46.383827>,  <35.505867, 34.281883, 46.243187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350323, 34.398617, 46.383827>,  <35.091084, 34.593170, 46.618229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350323, 34.398617, 46.383827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035687, -0.749240, 0.661336,
		-0.760731, -0.449515, -0.468214,
		0.648085, -0.486390, -0.586013,
		35.544750, 34.252701, 46.208027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781570, 33.879921, 46.708210>,  <35.091084, 34.593170, 46.618229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781570, 33.879921, 46.708210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139275, 33.832470, 46.535595>,  <35.353897, 33.804001, 46.432026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139275, 33.832470, 46.535595>,  <34.781570, 33.879921, 46.708210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139275, 33.832470, 46.535595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089500, -0.897353, 0.432143,
		-0.438509, -0.425070, -0.791849,
		0.894259, -0.118628, -0.431541,
		35.407551, 33.796883, 46.406132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835686, 33.220638, 46.398285>,  <34.781570, 33.879921, 46.708210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835686, 33.220638, 46.398285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205395, 33.342766, 46.489944>,  <35.427219, 33.416042, 46.544941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205395, 33.342766, 46.489944>,  <34.835686, 33.220638, 46.398285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205395, 33.342766, 46.489944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201367, -0.899904, 0.386812,
		0.324315, -0.311374, -0.893233,
		0.924268, 0.305317, 0.229152,
		35.482674, 33.434361, 46.558689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240379, 32.636997, 46.369789>,  <34.835686, 33.220638, 46.398285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240379, 32.636997, 46.369789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.471031, 32.874851, 46.593899>,  <35.609425, 33.017563, 46.728363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.471031, 32.874851, 46.593899>,  <35.240379, 32.636997, 46.369789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471031, 32.874851, 46.593899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249953, -0.781283, 0.571944,
		0.777830, -0.189758, -0.599143,
		0.576632, 0.594633, 0.560275,
		35.644020, 33.053242, 46.761982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830559, 32.275677, 46.438099>,  <35.240379, 32.636997, 46.369789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830559, 32.275677, 46.438099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882481, 32.538326, 46.735287>,  <35.913635, 32.695915, 46.913597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882481, 32.538326, 46.735287>,  <35.830559, 32.275677, 46.438099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882481, 32.538326, 46.735287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393198, -0.721961, 0.569356,
		0.910244, 0.218226, -0.351898,
		0.129809, 0.656619, 0.742968,
		35.921425, 32.735313, 46.958176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515461, 32.139256, 46.705967>,  <35.830559, 32.275677, 46.438099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515461, 32.139256, 46.705967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306416, 32.343189, 46.979298>,  <36.180988, 32.465549, 47.143295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.306416, 32.343189, 46.979298>,  <36.515461, 32.139256, 46.705967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306416, 32.343189, 46.979298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239571, -0.681385, 0.691607,
		0.818218, 0.525150, 0.233960,
		-0.522615, 0.509835, 0.683331,
		36.149632, 32.496140, 47.184296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023540, 32.242798, 47.286472>,  <36.515461, 32.139256, 46.705967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023540, 32.242798, 47.286472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650829, 32.262257, 47.430374>,  <36.427204, 32.273933, 47.516716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650829, 32.262257, 47.430374>,  <37.023540, 32.242798, 47.286472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650829, 32.262257, 47.430374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219557, -0.713688, 0.665165,
		0.289115, 0.698772, 0.654317,
		-0.931777, 0.048649, 0.359758,
		36.371296, 32.276852, 47.538303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323887, 32.742863, 47.721436>,  <37.023540, 32.242798, 47.286472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323887, 32.742863, 47.721436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.671726, 32.847435, 47.888985>,  <37.880428, 32.910179, 47.989513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.671726, 32.847435, 47.888985>,  <37.323887, 32.742863, 47.721436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671726, 32.847435, 47.888985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105323, 0.730593, -0.674642,
		-0.482402, 0.630782, 0.607785,
		0.869595, 0.261435, 0.418875,
		37.932606, 32.925865, 48.014648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260849, 33.549545, 47.727451>,  <37.323887, 32.742863, 47.721436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260849, 33.549545, 47.727451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646271, 33.467472, 47.796112>,  <37.877525, 33.418228, 47.837307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646271, 33.467472, 47.796112>,  <37.260849, 33.549545, 47.727451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646271, 33.467472, 47.796112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267492, 0.747178, -0.608418,
		-0.003420, 0.632160, 0.774831,
		0.963554, -0.205180, 0.171653,
		37.935337, 33.405918, 47.847607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589535, 34.182289, 48.041508>,  <37.260849, 33.549545, 47.727451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589535, 34.182289, 48.041508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.867619, 33.944099, 47.880463>,  <38.034470, 33.801186, 47.783836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.867619, 33.944099, 47.880463>,  <37.589535, 34.182289, 48.041508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867619, 33.944099, 47.880463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279372, 0.739910, -0.611952,
		0.662300, 0.312953, 0.680749,
		0.695205, -0.595478, -0.402611,
		38.076180, 33.765457, 47.759678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241360, 34.579750, 48.005974>,  <37.589535, 34.182289, 48.041508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241360, 34.579750, 48.005974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.275394, 34.293846, 47.728302>,  <38.295815, 34.122303, 47.561699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.275394, 34.293846, 47.728302>,  <38.241360, 34.579750, 48.005974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275394, 34.293846, 47.728302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402310, 0.662031, -0.632346,
		0.911540, -0.225467, 0.343888,
		0.085091, -0.714759, -0.694175,
		38.300922, 34.079418, 47.520050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857784, 34.628540, 47.775681>,  <38.241360, 34.579750, 48.005974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857784, 34.628540, 47.775681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705841, 34.436188, 47.459587>,  <38.614677, 34.320778, 47.269932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705841, 34.436188, 47.459587>,  <38.857784, 34.628540, 47.775681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705841, 34.436188, 47.459587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488544, 0.621123, -0.612806,
		0.785516, -0.618841, -0.001006,
		-0.379854, -0.480878, -0.790232,
		38.591885, 34.291924, 47.222519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424789, 34.445469, 47.295963>,  <38.857784, 34.628540, 47.775681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424789, 34.445469, 47.295963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.082233, 34.453522, 47.089592>,  <38.876698, 34.458355, 46.965767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.082233, 34.453522, 47.089592>,  <39.424789, 34.445469, 47.295963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082233, 34.453522, 47.089592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463127, 0.471711, -0.750335,
		0.228260, -0.881524, -0.413296,
		-0.856394, 0.020138, -0.515930,
		38.825314, 34.459564, 46.934814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617218, 34.168640, 46.681458>,  <39.424789, 34.445469, 47.295963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617218, 34.168640, 46.681458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273689, 34.352261, 46.590504>,  <39.067574, 34.462433, 46.535931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273689, 34.352261, 46.590504>,  <39.617218, 34.168640, 46.681458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273689, 34.352261, 46.590504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428232, 0.399718, -0.810458,
		-0.281152, -0.793410, -0.539866,
		-0.858820, 0.459050, -0.227382,
		39.016045, 34.489975, 46.522289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610828, 34.102406, 46.012028>,  <39.617218, 34.168640, 46.681458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610828, 34.102406, 46.012028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.330681, 34.379509, 46.080803>,  <39.162594, 34.545773, 46.122066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.330681, 34.379509, 46.080803>,  <39.610828, 34.102406, 46.012028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330681, 34.379509, 46.080803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112007, 0.344567, -0.932056,
		-0.704937, -0.633526, -0.318919,
		-0.700370, 0.692762, 0.171939,
		39.120571, 34.587337, 46.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976330, 34.041481, 45.598927>,  <39.610828, 34.102406, 46.012028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976330, 34.041481, 45.598927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994888, 34.427086, 45.703632>,  <39.006023, 34.658451, 45.766457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.994888, 34.427086, 45.703632>,  <38.976330, 34.041481, 45.598927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994888, 34.427086, 45.703632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069425, 0.258297, -0.963567,
		-0.996508, 0.062880, -0.054942,
		0.046398, 0.964017, 0.261761,
		39.008808, 34.716290, 45.782162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464199, 34.458122, 45.137806>,  <38.976330, 34.041481, 45.598927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464199, 34.458122, 45.137806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761734, 34.691105, 45.268925>,  <38.940254, 34.830894, 45.347595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761734, 34.691105, 45.268925>,  <38.464199, 34.458122, 45.137806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761734, 34.691105, 45.268925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220231, 0.249455, -0.943011,
		-0.631035, 0.773637, 0.057278,
		0.743837, 0.582458, 0.327794,
		38.984886, 34.865841, 45.367264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426216, 34.936337, 44.693928>,  <38.464199, 34.458122, 45.137806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426216, 34.936337, 44.693928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.787758, 34.995998, 44.854328>,  <39.004684, 35.031796, 44.950569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.787758, 34.995998, 44.854328>,  <38.426216, 34.936337, 44.693928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787758, 34.995998, 44.854328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330475, 0.351864, -0.875773,
		-0.271720, 0.924092, 0.268743,
		0.903855, 0.149152, 0.400997,
		39.058914, 35.040745, 44.974628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625973, 35.664883, 44.632824>,  <38.426216, 34.936337, 44.693928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625973, 35.664883, 44.632824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954380, 35.440727, 44.676460>,  <39.151424, 35.306236, 44.702641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954380, 35.440727, 44.676460>,  <38.625973, 35.664883, 44.632824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954380, 35.440727, 44.676460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307546, 0.273152, -0.911484,
		0.480984, 0.781893, 0.396607,
		0.821017, -0.560384, 0.109087,
		39.200684, 35.272614, 44.709187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064365, 36.143276, 44.254078>,  <38.625973, 35.664883, 44.632824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064365, 36.143276, 44.254078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.282433, 35.809414, 44.285416>,  <39.413273, 35.609097, 44.304218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.282433, 35.809414, 44.285416>,  <39.064365, 36.143276, 44.254078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282433, 35.809414, 44.285416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422805, 0.193054, -0.885419,
		0.723899, 0.515824, 0.458145,
		0.545167, -0.834659, 0.078341,
		39.445984, 35.559017, 44.308918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641529, 36.384735, 43.978992>,  <39.064365, 36.143276, 44.254078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641529, 36.384735, 43.978992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636833, 35.985214, 43.960026>,  <39.634014, 35.745502, 43.948647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.636833, 35.985214, 43.960026>,  <39.641529, 36.384735, 43.978992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636833, 35.985214, 43.960026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329494, 0.040909, -0.943271,
		0.944085, -0.026702, 0.328620,
		-0.011744, -0.998806, -0.047420,
		39.633308, 35.685574, 43.945801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.894289, 41.904633, 33.540398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663643, 41.771282, 33.242035>,  <29.525255, 41.691273, 33.063015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663643, 41.771282, 33.242035>,  <29.894289, 41.904633, 33.540398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663643, 41.771282, 33.242035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539993, -0.529628, 0.654142,
		-0.613127, 0.779973, 0.125372,
		-0.576613, -0.333372, -0.745909,
		29.490660, 41.671272, 33.018261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206940, 42.056919, 33.743019>,  <29.894289, 41.904633, 33.540398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206940, 42.056919, 33.743019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195459, 41.751278, 33.485237>,  <29.188572, 41.567894, 33.330566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.195459, 41.751278, 33.485237>,  <29.206940, 42.056919, 33.743019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195459, 41.751278, 33.485237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545888, -0.528111, 0.650465,
		-0.837366, 0.370470, -0.401957,
		-0.028699, -0.764101, -0.644458,
		29.186850, 41.522049, 33.291901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541889, 41.859524, 33.724411>,  <29.206940, 42.056919, 33.743019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541889, 41.859524, 33.724411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.716518, 41.527485, 33.585648>,  <28.821295, 41.328262, 33.502392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.716518, 41.527485, 33.585648>,  <28.541889, 41.859524, 33.724411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716518, 41.527485, 33.585648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606455, -0.556349, 0.568056,
		-0.664543, -0.037613, -0.746302,
		0.436571, -0.830097, -0.346908,
		28.847490, 41.278458, 33.481575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988995, 41.303623, 33.741795>,  <28.541889, 41.859524, 33.724411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988995, 41.303623, 33.741795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.328760, 41.095879, 33.704353>,  <28.532619, 40.971233, 33.681889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.328760, 41.095879, 33.704353>,  <27.988995, 41.303623, 33.741795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328760, 41.095879, 33.704353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417081, -0.769346, 0.483891,
		-0.323329, -0.371983, -0.870108,
		0.849413, -0.519361, -0.093605,
		28.583584, 40.940071, 33.676273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780102, 40.608364, 33.608994>,  <27.988995, 41.303623, 33.741795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780102, 40.608364, 33.608994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147596, 40.587364, 33.765541>,  <28.368093, 40.574764, 33.859470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147596, 40.587364, 33.765541>,  <27.780102, 40.608364, 33.608994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147596, 40.587364, 33.765541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283464, -0.777695, 0.561105,
		0.274902, -0.626446, -0.729379,
		0.918736, -0.052504, 0.391365,
		28.423218, 40.571613, 33.882950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865446, 39.972496, 33.478760>,  <27.780102, 40.608364, 33.608994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865446, 39.972496, 33.478760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125618, 40.076443, 33.764252>,  <28.281721, 40.138813, 33.935547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125618, 40.076443, 33.764252>,  <27.865446, 39.972496, 33.478760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125618, 40.076443, 33.764252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158613, -0.872469, 0.462213,
		0.742822, -0.413843, -0.526259,
		0.650428, 0.259871, 0.713730,
		28.320747, 40.154404, 33.978371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262108, 39.405590, 33.519478>,  <27.865446, 39.972496, 33.478760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262108, 39.405590, 33.519478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.301058, 39.601410, 33.866085>,  <28.324427, 39.718903, 34.074051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.301058, 39.601410, 33.866085>,  <28.262108, 39.405590, 33.519478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301058, 39.601410, 33.866085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033081, -0.868585, 0.494435,
		0.994698, -0.076810, -0.068382,
		0.097373, 0.489552, 0.866521,
		28.330269, 39.748276, 34.126041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780071, 39.062401, 33.893482>,  <28.262108, 39.405590, 33.519478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780071, 39.062401, 33.893482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590683, 39.285072, 34.166523>,  <28.477051, 39.418674, 34.330345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590683, 39.285072, 34.166523>,  <28.780071, 39.062401, 33.893482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590683, 39.285072, 34.166523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071895, -0.796804, 0.599945,
		0.877872, 0.234980, 0.417284,
		-0.473468, 0.556676, 0.682598,
		28.448643, 39.452076, 34.371304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969999, 38.761482, 34.519970>,  <28.780071, 39.062401, 33.893482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969999, 38.761482, 34.519970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660286, 38.980824, 34.646336>,  <28.474459, 39.112427, 34.722157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660286, 38.980824, 34.646336>,  <28.969999, 38.761482, 34.519970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660286, 38.980824, 34.646336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309695, -0.763662, 0.566489,
		0.551885, 0.340785, 0.761110,
		-0.774282, 0.548349, 0.315914,
		28.428001, 39.145329, 34.741108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022242, 38.783749, 35.280910>,  <28.969999, 38.761482, 34.519970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022242, 38.783749, 35.280910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648851, 38.861271, 35.160202>,  <28.424818, 38.907784, 35.087776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648851, 38.861271, 35.160202>,  <29.022242, 38.783749, 35.280910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648851, 38.861271, 35.160202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346269, -0.706141, 0.617626,
		-0.093392, 0.681032, 0.726274,
		-0.933475, 0.193805, -0.301768,
		28.368809, 38.919411, 35.069672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607677, 38.789070, 35.875267>,  <29.022242, 38.783749, 35.280910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607677, 38.789070, 35.875267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.348843, 38.724049, 35.577312>,  <28.193541, 38.685036, 35.398540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.348843, 38.724049, 35.577312>,  <28.607677, 38.789070, 35.875267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348843, 38.724049, 35.577312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355168, -0.800250, 0.483173,
		-0.674634, 0.577215, 0.460100,
		-0.647089, -0.162552, -0.744884,
		28.154716, 38.675282, 35.353848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022896, 38.655968, 36.168064>,  <28.607677, 38.789070, 35.875267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022896, 38.655968, 36.168064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956545, 38.491539, 35.809509>,  <27.916735, 38.392879, 35.594376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956545, 38.491539, 35.809509>,  <28.022896, 38.655968, 36.168064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956545, 38.491539, 35.809509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491341, -0.753664, 0.436547,
		-0.855025, 0.512844, -0.076961,
		-0.165877, -0.411073, -0.896384,
		27.906782, 38.368217, 35.540596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265162, 38.526154, 36.147881>,  <28.022896, 38.655968, 36.168064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265162, 38.526154, 36.147881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442808, 38.281330, 35.886150>,  <27.549397, 38.134438, 35.729111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442808, 38.281330, 35.886150>,  <27.265162, 38.526154, 36.147881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442808, 38.281330, 35.886150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539322, -0.765797, 0.350267,
		-0.715468, 0.197336, -0.670198,
		0.444115, -0.612057, -0.654331,
		27.576042, 38.097713, 35.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744425, 38.137947, 35.839336>,  <27.265162, 38.526154, 36.147881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744425, 38.137947, 35.839336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074711, 37.925411, 35.763584>,  <27.272882, 37.797890, 35.718132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.074711, 37.925411, 35.763584>,  <26.744425, 38.137947, 35.839336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074711, 37.925411, 35.763584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425193, -0.806901, 0.410026,
		-0.370679, -0.258041, -0.892195,
		0.825717, -0.531343, -0.189384,
		27.322426, 37.766006, 35.706768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508385, 37.552834, 35.550072>,  <26.744425, 38.137947, 35.839336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508385, 37.552834, 35.550072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.872356, 37.419609, 35.648945>,  <27.090740, 37.339676, 35.708267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.872356, 37.419609, 35.648945>,  <26.508385, 37.552834, 35.550072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872356, 37.419609, 35.648945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404213, -0.845667, 0.348511,
		0.092958, -0.417034, -0.904125,
		0.909929, -0.333062, 0.247182,
		27.145334, 37.319691, 35.723099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591589, 36.877472, 35.320095>,  <26.508385, 37.552834, 35.550072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591589, 36.877472, 35.320095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888102, 36.884647, 35.588478>,  <27.066010, 36.888950, 35.749508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888102, 36.884647, 35.588478>,  <26.591589, 36.877472, 35.320095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888102, 36.884647, 35.588478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146268, -0.971301, 0.187563,
		0.655065, -0.237176, -0.717383,
		0.741280, 0.017936, 0.670956,
		27.110485, 36.890030, 35.789764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096243, 36.239788, 35.112988>,  <26.591589, 36.877472, 35.320095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096243, 36.239788, 35.112988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139177, 36.346058, 35.496216>,  <27.164938, 36.409821, 35.726154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139177, 36.346058, 35.496216>,  <27.096243, 36.239788, 35.112988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139177, 36.346058, 35.496216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000598, -0.963619, 0.267278,
		0.994223, -0.029261, -0.103270,
		0.107333, 0.265672, 0.958070,
		27.171377, 36.425758, 35.783638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775833, 35.943890, 35.359211>,  <27.096243, 36.239788, 35.112988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775833, 35.943890, 35.359211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514479, 35.980534, 35.659794>,  <27.357666, 36.002518, 35.840145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514479, 35.980534, 35.659794>,  <27.775833, 35.943890, 35.359211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514479, 35.980534, 35.659794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019033, -0.990350, 0.137275,
		0.756785, 0.103996, 0.645338,
		-0.653386, 0.091605, 0.751462,
		27.318462, 36.008015, 35.885231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902309, 35.328831, 35.668011>,  <27.775833, 35.943890, 35.359211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902309, 35.328831, 35.668011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585300, 35.468868, 35.867748>,  <27.395096, 35.552891, 35.987591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.585300, 35.468868, 35.867748>,  <27.902309, 35.328831, 35.668011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585300, 35.468868, 35.867748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090307, -0.877146, 0.471656,
		0.603119, 0.328704, 0.726775,
		-0.792523, 0.350097, 0.499339,
		27.347544, 35.573898, 36.017551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045795, 35.084980, 36.370712>,  <27.902309, 35.328831, 35.668011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045795, 35.084980, 36.370712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.654980, 35.143883, 36.309120>,  <27.420490, 35.179222, 36.272167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.654980, 35.143883, 36.309120>,  <28.045795, 35.084980, 36.370712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654980, 35.143883, 36.309120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177261, -0.962781, 0.204037,
		-0.118202, 0.226647, 0.966778,
		-0.977040, 0.147254, -0.153978,
		27.361868, 35.188061, 36.262928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681379, 34.687477, 36.340286>,  <28.045795, 35.084980, 36.370712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681379, 34.687477, 36.340286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073452, 34.758232, 36.375969>,  <29.308695, 34.800686, 36.397377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073452, 34.758232, 36.375969>,  <28.681379, 34.687477, 36.340286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073452, 34.758232, 36.375969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097885, 0.823907, -0.558207,
		-0.172234, 0.538412, 0.824892,
		0.980181, 0.176887, 0.089203,
		29.367506, 34.811298, 36.402729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688015, 35.451969, 36.330681>,  <28.681379, 34.687477, 36.340286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688015, 35.451969, 36.330681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067875, 35.326664, 36.333004>,  <29.295790, 35.251480, 36.334400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067875, 35.326664, 36.333004>,  <28.688015, 35.451969, 36.330681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067875, 35.326664, 36.333004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302318, 0.911277, -0.279603,
		0.082294, 0.267281, 0.960098,
		0.949648, -0.313265, 0.005811,
		29.352770, 35.232685, 36.334747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120405, 35.986790, 36.627403>,  <28.688015, 35.451969, 36.330681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120405, 35.986790, 36.627403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374924, 35.763725, 36.414181>,  <29.527636, 35.629887, 36.286247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374924, 35.763725, 36.414181>,  <29.120405, 35.986790, 36.627403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374924, 35.763725, 36.414181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417208, 0.829966, -0.370262,
		0.648895, 0.013202, 0.760763,
		0.636296, -0.557658, -0.533053,
		29.565813, 35.596428, 36.254265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846855, 36.296249, 36.774746>,  <29.120405, 35.986790, 36.627403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846855, 36.296249, 36.774746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825432, 36.108154, 36.422382>,  <29.812578, 35.995296, 36.210964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825432, 36.108154, 36.422382>,  <29.846855, 36.296249, 36.774746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825432, 36.108154, 36.422382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478620, 0.762152, -0.435944,
		0.876387, -0.444970, 0.184248,
		-0.053557, -0.470240, -0.880912,
		29.809364, 35.967083, 36.158108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524748, 36.360752, 36.560287>,  <29.846855, 36.296249, 36.774746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524748, 36.360752, 36.560287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304161, 36.287086, 36.234844>,  <30.171808, 36.242886, 36.039577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304161, 36.287086, 36.234844>,  <30.524748, 36.360752, 36.560287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304161, 36.287086, 36.234844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491954, 0.715871, -0.495489,
		0.673694, -0.673506, -0.304179,
		-0.551468, -0.184166, -0.813613,
		30.138721, 36.231838, 35.990761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997297, 36.349163, 36.050179>,  <30.524748, 36.360752, 36.560287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997297, 36.349163, 36.050179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.648291, 36.417698, 35.867157>,  <30.438887, 36.458817, 35.757343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.648291, 36.417698, 35.867157>,  <30.997297, 36.349163, 36.050179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648291, 36.417698, 35.867157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453046, 0.634344, -0.626385,
		0.182926, -0.753825, -0.631099,
		-0.872518, 0.171335, -0.457555,
		30.386536, 36.469097, 35.729889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120506, 36.349350, 35.375252>,  <30.997297, 36.349163, 36.050179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120506, 36.349350, 35.375252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.779135, 36.556019, 35.402714>,  <30.574312, 36.680019, 35.419189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.779135, 36.556019, 35.402714>,  <31.120506, 36.349350, 35.375252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779135, 36.556019, 35.402714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344115, 0.657468, -0.670314,
		-0.391469, -0.548440, -0.738895,
		-0.853427, 0.516672, 0.068652,
		30.523108, 36.711021, 35.423309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038956, 36.607826, 34.805134>,  <31.120506, 36.349350, 35.375252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038956, 36.607826, 34.805134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.796328, 36.842987, 35.019215>,  <30.650751, 36.984085, 35.147663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.796328, 36.842987, 35.019215>,  <31.038956, 36.607826, 34.805134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796328, 36.842987, 35.019215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290463, 0.790525, -0.539168,
		-0.740070, -0.171586, -0.650273,
		-0.606571, 0.587902, 0.535204,
		30.614357, 37.019360, 35.179775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825071, 37.092838, 34.314720>,  <31.038956, 36.607826, 34.805134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825071, 37.092838, 34.314720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715694, 37.257610, 34.662407>,  <30.650068, 37.356472, 34.871021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.715694, 37.257610, 34.662407>,  <30.825071, 37.092838, 34.314720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715694, 37.257610, 34.662407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376687, 0.877345, -0.297276,
		-0.885063, 0.246136, -0.395071,
		-0.273443, 0.411926, 0.869221,
		30.633661, 37.381187, 34.923172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275257, 37.516178, 34.127819>,  <30.825071, 37.092838, 34.314720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275257, 37.516178, 34.127819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.397457, 37.658421, 34.481140>,  <30.470778, 37.743767, 34.693130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.397457, 37.658421, 34.481140>,  <30.275257, 37.516178, 34.127819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397457, 37.658421, 34.481140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219371, 0.876409, -0.428701,
		-0.926578, 0.324738, 0.189734,
		0.305500, 0.355602, 0.883299,
		30.489107, 37.765102, 34.746128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940998, 38.071831, 34.273361>,  <30.275257, 37.516178, 34.127819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940998, 38.071831, 34.273361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260580, 38.138359, 34.504536>,  <30.452330, 38.178276, 34.643238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.260580, 38.138359, 34.504536>,  <29.940998, 38.071831, 34.273361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260580, 38.138359, 34.504536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220340, 0.813216, -0.538638,
		-0.559572, 0.557689, 0.613076,
		0.798955, 0.166322, 0.577934,
		30.500267, 38.188255, 34.677917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906355, 38.800282, 34.398853>,  <29.940998, 38.071831, 34.273361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906355, 38.800282, 34.398853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283484, 38.691967, 34.476585>,  <30.509760, 38.626976, 34.523224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283484, 38.691967, 34.476585>,  <29.906355, 38.800282, 34.398853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283484, 38.691967, 34.476585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328182, 0.856019, -0.399409,
		-0.058191, 0.440346, 0.895941,
		0.942820, -0.270789, 0.194326,
		30.566330, 38.610729, 34.534882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228661, 39.344475, 34.517193>,  <29.906355, 38.800282, 34.398853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228661, 39.344475, 34.517193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.541758, 39.107250, 34.441723>,  <30.729616, 38.964916, 34.396442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.541758, 39.107250, 34.441723>,  <30.228661, 39.344475, 34.517193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541758, 39.107250, 34.441723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510124, 0.785059, -0.351363,
		0.356497, 0.178781, 0.917032,
		0.782741, -0.593060, -0.188671,
		30.776579, 38.929333, 34.385120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878992, 39.628983, 34.773453>,  <30.228661, 39.344475, 34.517193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878992, 39.628983, 34.773453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.958509, 39.399925, 34.455318>,  <31.006220, 39.262493, 34.264439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.958509, 39.399925, 34.455318>,  <30.878992, 39.628983, 34.773453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958509, 39.399925, 34.455318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352946, 0.798915, -0.486995,
		0.914281, -0.183900, 0.360931,
		0.198795, -0.572640, -0.795339,
		31.018148, 39.228134, 34.216717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586348, 39.764587, 34.537197>,  <30.878992, 39.628983, 34.773453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586348, 39.764587, 34.537197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.450832, 39.561630, 34.220268>,  <31.369522, 39.439854, 34.030113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.450832, 39.561630, 34.220268>,  <31.586348, 39.764587, 34.537197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450832, 39.561630, 34.220268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530656, 0.592349, -0.606241,
		0.776934, -0.625837, 0.068572,
		-0.338789, -0.507397, -0.792320,
		31.349195, 39.409412, 33.982571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098740, 39.620396, 34.171555>,  <31.586348, 39.764587, 34.537197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098740, 39.620396, 34.171555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.809633, 39.566841, 33.900356>,  <31.636169, 39.534710, 33.737637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.809633, 39.566841, 33.900356>,  <32.098740, 39.620396, 34.171555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809633, 39.566841, 33.900356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483220, 0.603461, -0.634297,
		0.494067, -0.786072, -0.371468,
		-0.722769, -0.133885, -0.677997,
		31.592802, 39.526676, 33.696957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484543, 39.406189, 33.520557>,  <32.098740, 39.620396, 34.171555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484543, 39.406189, 33.520557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122681, 39.559509, 33.446060>,  <31.905563, 39.651501, 33.401363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.122681, 39.559509, 33.446060>,  <32.484543, 39.406189, 33.520557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122681, 39.559509, 33.446060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401565, 0.620436, -0.673650,
		-0.142659, -0.684207, -0.715199,
		-0.904652, 0.383300, -0.186243,
		31.851286, 39.674500, 33.390186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529255, 39.520103, 32.734631>,  <32.484543, 39.406189, 33.520557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529255, 39.520103, 32.734631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256462, 39.753731, 32.910706>,  <32.092789, 39.893906, 33.016350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256462, 39.753731, 32.910706>,  <32.529255, 39.520103, 32.734631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256462, 39.753731, 32.910706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228760, 0.742019, -0.630140,
		-0.694674, -0.329045, -0.639654,
		-0.681980, 0.584069, 0.440189,
		32.051868, 39.928951, 33.042763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108627, 39.749233, 32.132187>,  <32.529255, 39.520103, 32.734631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108627, 39.749233, 32.132187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046402, 39.993576, 32.442711>,  <32.009068, 40.140182, 32.629025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046402, 39.993576, 32.442711>,  <32.108627, 39.749233, 32.132187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046402, 39.993576, 32.442711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095553, 0.791493, -0.603662,
		-0.983194, -0.019729, -0.181497,
		-0.155563, 0.610859, 0.776306,
		31.999733, 40.176834, 32.675602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679941, 40.191265, 31.923986>,  <32.108627, 39.749233, 32.132187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679941, 40.191265, 31.923986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.828491, 40.398720, 32.232037>,  <31.917622, 40.523193, 32.416866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.828491, 40.398720, 32.232037>,  <31.679941, 40.191265, 31.923986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828491, 40.398720, 32.232037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111224, 0.798623, -0.591465,
		-0.921798, 0.305311, 0.238902,
		0.371373, 0.518640, 0.770127,
		31.939903, 40.554310, 32.463074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367390, 40.767841, 31.826796>,  <31.679941, 40.191265, 31.923986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367390, 40.767841, 31.826796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.635534, 40.878880, 32.102058>,  <31.796421, 40.945503, 32.267216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.635534, 40.878880, 32.102058>,  <31.367390, 40.767841, 31.826796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635534, 40.878880, 32.102058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183374, 0.836652, -0.516128,
		-0.719021, 0.472181, 0.509954,
		0.670360, 0.277595, 0.688156,
		31.836641, 40.962158, 32.308506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221256, 41.489868, 32.144680>,  <31.367390, 40.767841, 31.826796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221256, 41.489868, 32.144680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.613888, 41.423656, 32.106506>,  <31.849466, 41.383930, 32.083603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.613888, 41.423656, 32.106506>,  <31.221256, 41.489868, 32.144680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613888, 41.423656, 32.106506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085435, 0.827012, -0.555655,
		0.170902, 0.537265, 0.825917,
		0.981577, -0.165525, -0.095437,
		31.908361, 41.374001, 32.077877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.528305, 29.816669, 46.458389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.136662, 29.895807, 46.439640>,  <41.901676, 29.943291, 46.428391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.136662, 29.895807, 46.439640>,  <42.528305, 29.816669, 46.458389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136662, 29.895807, 46.439640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002331, 0.219586, 0.975590,
		0.203307, 0.955322, -0.214538,
		-0.979112, 0.197845, -0.046871,
		41.842926, 29.955160, 46.425579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316914, 30.336609, 47.070587>,  <42.528305, 29.816669, 46.458389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316914, 30.336609, 47.070587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954075, 30.203699, 46.967232>,  <41.736370, 30.123953, 46.905220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954075, 30.203699, 46.967232>,  <42.316914, 30.336609, 47.070587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954075, 30.203699, 46.967232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263674, -0.029930, 0.964148,
		-0.328094, 0.942708, -0.060462,
		-0.907100, -0.332273, -0.258387,
		41.681946, 30.104017, 46.889717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786434, 30.789986, 47.452320>,  <42.316914, 30.336609, 47.070587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786434, 30.789986, 47.452320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609760, 30.438614, 47.379356>,  <41.503757, 30.227791, 47.335579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.609760, 30.438614, 47.379356>,  <41.786434, 30.789986, 47.452320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609760, 30.438614, 47.379356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218509, -0.091867, 0.971501,
		-0.870154, 0.468956, -0.151369,
		-0.441685, -0.878431, -0.182409,
		41.477253, 30.175085, 47.324635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121254, 30.802668, 47.834274>,  <41.786434, 30.789986, 47.452320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121254, 30.802668, 47.834274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.168835, 30.416054, 47.743359>,  <41.197384, 30.184086, 47.688808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.168835, 30.416054, 47.743359>,  <41.121254, 30.802668, 47.834274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168835, 30.416054, 47.743359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363320, -0.255406, 0.895972,
		-0.924040, -0.023999, -0.381542,
		0.118950, -0.966536, -0.227286,
		41.204521, 30.126093, 47.675171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482189, 30.507229, 48.047504>,  <41.121254, 30.802668, 47.834274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482189, 30.507229, 48.047504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.763042, 30.222486, 48.054108>,  <40.931553, 30.051641, 48.058071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.763042, 30.222486, 48.054108>,  <40.482189, 30.507229, 48.047504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763042, 30.222486, 48.054108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342896, -0.317706, 0.884016,
		-0.624047, -0.626357, -0.467164,
		0.702131, -0.711857, 0.016512,
		40.973682, 30.008930, 48.059063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106422, 29.964592, 48.313972>,  <40.482189, 30.507229, 48.047504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106422, 29.964592, 48.313972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.486061, 29.848322, 48.362514>,  <40.713844, 29.778561, 48.391640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.486061, 29.848322, 48.362514>,  <40.106422, 29.964592, 48.313972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486061, 29.848322, 48.362514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214396, -0.313882, 0.924939,
		-0.230762, -0.903874, -0.360223,
		0.949096, -0.290671, 0.121355,
		40.770790, 29.761120, 48.398922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988430, 29.329609, 48.641125>,  <40.106422, 29.964592, 48.313972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988430, 29.329609, 48.641125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.369457, 29.434889, 48.702236>,  <40.598072, 29.498056, 48.738903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.369457, 29.434889, 48.702236>,  <39.988430, 29.329609, 48.641125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369457, 29.434889, 48.702236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034674, -0.404890, 0.913708,
		0.302346, -0.875666, -0.376558,
		0.952568, 0.263200, 0.152780,
		40.655228, 29.513849, 48.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361294, 28.710859, 48.853668>,  <39.988430, 29.329609, 48.641125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361294, 28.710859, 48.853668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.567116, 29.019930, 49.002373>,  <40.690609, 29.205372, 49.091595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.567116, 29.019930, 49.002373>,  <40.361294, 28.710859, 48.853668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567116, 29.019930, 49.002373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107652, -0.371915, 0.922003,
		0.850672, -0.514444, -0.108192,
		0.514557, 0.772675, 0.371759,
		40.721481, 29.251732, 49.113899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914528, 28.412006, 49.184063>,  <40.361294, 28.710859, 48.853668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914528, 28.412006, 49.184063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852196, 28.774210, 49.341934>,  <40.814796, 28.991531, 49.436657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852196, 28.774210, 49.341934>,  <40.914528, 28.412006, 49.184063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852196, 28.774210, 49.341934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002203, -0.399881, 0.916565,
		0.987781, 0.141960, 0.064309,
		-0.155832, 0.905507, 0.394682,
		40.805447, 29.045862, 49.460339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212818, 28.356674, 49.817528>,  <40.914528, 28.412006, 49.184063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212818, 28.356674, 49.817528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976936, 28.673697, 49.879627>,  <40.835407, 28.863909, 49.916889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976936, 28.673697, 49.879627>,  <41.212818, 28.356674, 49.817528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976936, 28.673697, 49.879627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087481, -0.253789, 0.963296,
		0.802864, 0.554482, 0.218995,
		-0.589708, 0.792553, 0.155252,
		40.800022, 28.911463, 49.926201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190811, 28.395657, 50.557556>,  <41.212818, 28.356674, 49.817528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190811, 28.395657, 50.557556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.926735, 28.679941, 50.460361>,  <40.768291, 28.850512, 50.402046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.926735, 28.679941, 50.460361>,  <41.190811, 28.395657, 50.557556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926735, 28.679941, 50.460361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372304, -0.028680, 0.927668,
		0.652337, 0.702896, 0.283536,
		-0.660186, 0.710714, -0.242982,
		40.728680, 28.893156, 50.387466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233200, 28.900003, 51.061245>,  <41.190811, 28.395657, 50.557556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233200, 28.900003, 51.061245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.865868, 28.901541, 50.902931>,  <40.645466, 28.902462, 50.807941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.865868, 28.901541, 50.902931>,  <41.233200, 28.900003, 51.061245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865868, 28.901541, 50.902931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395142, -0.066688, 0.916196,
		-0.022874, 0.997766, 0.062760,
		-0.918335, 0.003842, -0.395785,
		40.590366, 28.902693, 50.784195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818714, 29.414459, 51.415379>,  <41.233200, 28.900003, 51.061245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818714, 29.414459, 51.415379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555798, 29.156021, 51.260185>,  <40.398048, 29.000957, 51.167068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.555798, 29.156021, 51.260185>,  <40.818714, 29.414459, 51.415379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555798, 29.156021, 51.260185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419706, -0.113782, 0.900500,
		-0.625955, 0.754728, -0.196382,
		-0.657288, -0.646096, -0.387986,
		40.358612, 28.962193, 51.143791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355919, 29.060270, 51.920151>,  <40.818714, 29.414459, 51.415379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355919, 29.060270, 51.920151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.257717, 29.415092, 52.076542>,  <40.198795, 29.627985, 52.170376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.257717, 29.415092, 52.076542>,  <40.355919, 29.060270, 51.920151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257717, 29.415092, 52.076542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940740, 0.120668, 0.316934,
		0.233959, 0.445618, -0.864111,
		-0.245503, 0.887054, 0.390979,
		40.184067, 29.681208, 52.193836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619751, 28.937109, 51.723335>,  <40.355919, 29.060270, 51.920151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619751, 28.937109, 51.723335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283169, 29.057293, 51.902969>,  <39.081219, 29.129402, 52.010750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283169, 29.057293, 51.902969>,  <39.619751, 28.937109, 51.723335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283169, 29.057293, 51.902969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013347, 0.842444, -0.538619,
		-0.540164, -0.447229, -0.712888,
		-0.841454, 0.300458, 0.449089,
		39.030731, 29.147430, 52.037697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342010, 29.277987, 51.231628>,  <39.619751, 28.937109, 51.723335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342010, 29.277987, 51.231628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104294, 29.414978, 51.522701>,  <38.961662, 29.497173, 51.697346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.104294, 29.414978, 51.522701>,  <39.342010, 29.277987, 51.231628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104294, 29.414978, 51.522701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087050, 0.872093, -0.481535,
		-0.799525, -0.349517, -0.488464,
		-0.594291, 0.342479, 0.727686,
		38.926006, 29.517721, 51.741009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689316, 29.446909, 51.087849>,  <39.342010, 29.277987, 51.231628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689316, 29.446909, 51.087849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739868, 29.713366, 51.381866>,  <38.770199, 29.873240, 51.558277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739868, 29.713366, 51.381866>,  <38.689316, 29.446909, 51.087849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739868, 29.713366, 51.381866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287109, 0.733830, -0.615680,
		-0.949524, -0.133226, 0.283997,
		0.126381, 0.666141, 0.735040,
		38.777782, 29.913208, 51.602379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341919, 29.934450, 50.896763>,  <38.689316, 29.446909, 51.087849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341919, 29.934450, 50.896763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495293, 30.125767, 51.212791>,  <38.587318, 30.240557, 51.402409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.495293, 30.125767, 51.212791>,  <38.341919, 29.934450, 50.896763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495293, 30.125767, 51.212791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201195, 0.878170, -0.433980,
		-0.901386, 0.007446, 0.432953,
		0.383437, 0.478291, 0.790072,
		38.610325, 30.269255, 51.449814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884441, 30.553429, 51.046062>,  <38.341919, 29.934450, 50.896763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884441, 30.553429, 51.046062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.231579, 30.647579, 51.221081>,  <38.439861, 30.704069, 51.326092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.231579, 30.647579, 51.221081>,  <37.884441, 30.553429, 51.046062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231579, 30.647579, 51.221081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077543, 0.934037, -0.348657,
		-0.490753, 0.268650, 0.828848,
		0.867842, 0.235376, 0.437549,
		38.491932, 30.718191, 51.352345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823196, 31.318987, 51.461613>,  <37.884441, 30.553429, 51.046062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823196, 31.318987, 51.461613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.193840, 31.209366, 51.358631>,  <38.416225, 31.143593, 51.296841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.193840, 31.209366, 51.358631>,  <37.823196, 31.318987, 51.461613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193840, 31.209366, 51.358631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054988, 0.776088, -0.628222,
		0.371973, 0.567962, 0.734204,
		0.926613, -0.274055, -0.257453,
		38.471825, 31.127150, 51.281395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061016, 31.961012, 51.315788>,  <37.823196, 31.318987, 51.461613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061016, 31.961012, 51.315788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345940, 31.727983, 51.159210>,  <38.516891, 31.588167, 51.065262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345940, 31.727983, 51.159210>,  <38.061016, 31.961012, 51.315788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345940, 31.727983, 51.159210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089134, 0.628291, -0.772855,
		0.696185, 0.515619, 0.499463,
		0.712307, -0.582570, -0.391448,
		38.559631, 31.553213, 51.041775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638470, 32.395176, 51.137665>,  <38.061016, 31.961012, 51.315788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638470, 32.395176, 51.137665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624084, 32.064297, 50.913361>,  <38.615452, 31.865768, 50.778778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.624084, 32.064297, 50.913361>,  <38.638470, 32.395176, 51.137665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624084, 32.064297, 50.913361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105704, 0.561122, -0.820956,
		0.993747, 0.029750, -0.107618,
		-0.035963, -0.827199, -0.560758,
		38.613297, 31.816137, 50.745132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098057, 32.567894, 50.568649>,  <38.638470, 32.395176, 51.137665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098057, 32.567894, 50.568649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869362, 32.276070, 50.418522>,  <38.732143, 32.100975, 50.328445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869362, 32.276070, 50.418522>,  <39.098057, 32.567894, 50.568649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869362, 32.276070, 50.418522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160261, 0.547959, -0.821010,
		0.804633, -0.409252, -0.430208,
		-0.571736, -0.729557, -0.375319,
		38.697842, 32.057201, 50.305927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362492, 32.508549, 49.908688>,  <39.098057, 32.567894, 50.568649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362492, 32.508549, 49.908688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.025402, 32.295944, 49.874485>,  <38.823147, 32.168381, 49.853966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.025402, 32.295944, 49.874485>,  <39.362492, 32.508549, 49.908688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025402, 32.295944, 49.874485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113140, 0.330142, -0.937126,
		0.526320, -0.780066, -0.338354,
		-0.842725, -0.531510, -0.085504,
		38.772583, 32.136490, 49.848835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358765, 32.110958, 49.254761>,  <39.362492, 32.508549, 49.908688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358765, 32.110958, 49.254761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.974613, 32.155354, 49.357014>,  <38.744122, 32.181992, 49.418365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.974613, 32.155354, 49.357014>,  <39.358765, 32.110958, 49.254761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974613, 32.155354, 49.357014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210268, 0.313413, -0.926045,
		-0.182901, -0.943108, -0.277658,
		-0.960383, 0.110992, 0.255629,
		38.686497, 32.188652, 49.433701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971603, 31.881317, 48.663425>,  <39.358765, 32.110958, 49.254761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971603, 31.881317, 48.663425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.706879, 32.098186, 48.870522>,  <38.548046, 32.228310, 48.994781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.706879, 32.098186, 48.870522>,  <38.971603, 31.881317, 48.663425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706879, 32.098186, 48.870522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254172, 0.487444, -0.835341,
		-0.705271, -0.684431, -0.184789,
		-0.661808, 0.542174, 0.517743,
		38.508335, 32.260838, 49.025845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338947, 31.701595, 48.282230>,  <38.971603, 31.881317, 48.663425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338947, 31.701595, 48.282230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297283, 32.047054, 48.479519>,  <38.272285, 32.254330, 48.597893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297283, 32.047054, 48.479519>,  <38.338947, 31.701595, 48.282230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297283, 32.047054, 48.479519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353811, 0.431299, -0.829939,
		-0.929499, -0.260954, 0.260643,
		-0.104161, 0.863646, 0.493220,
		38.266033, 32.306149, 48.627483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800343, 32.059914, 48.011501>,  <38.338947, 31.701595, 48.282230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800343, 32.059914, 48.011501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973289, 32.365978, 48.202328>,  <38.077057, 32.549618, 48.316822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973289, 32.365978, 48.202328>,  <37.800343, 32.059914, 48.011501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973289, 32.365978, 48.202328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246697, 0.609263, -0.753617,
		-0.867296, 0.208147, 0.452186,
		0.432364, 0.765162, 0.477062,
		38.102997, 32.595528, 48.345448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058754, 32.202820, 48.181469>,  <37.800343, 32.059914, 48.011501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058754, 32.202820, 48.181469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671257, 32.176533, 48.085785>,  <36.438759, 32.160759, 48.028374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671257, 32.176533, 48.085785>,  <37.058754, 32.202820, 48.181469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671257, 32.176533, 48.085785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130949, -0.683513, 0.718096,
		-0.210698, 0.726973, 0.653541,
		-0.968741, -0.065720, -0.239211,
		36.380634, 32.156818, 48.014023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728954, 32.337841, 48.827812>,  <37.058754, 32.202820, 48.181469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728954, 32.337841, 48.827812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470181, 32.128143, 48.606308>,  <36.314919, 32.002327, 48.473404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470181, 32.128143, 48.606308>,  <36.728954, 32.337841, 48.827812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470181, 32.128143, 48.606308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057068, -0.690876, 0.720718,
		-0.760410, 0.497857, 0.417031,
		-0.646931, -0.524242, -0.553761,
		36.276100, 31.970871, 48.440178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291107, 32.207287, 49.345997>,  <36.728954, 32.337841, 48.827812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291107, 32.207287, 49.345997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226315, 31.935320, 49.059925>,  <36.187439, 31.772141, 48.888283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226315, 31.935320, 49.059925>,  <36.291107, 32.207287, 49.345997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226315, 31.935320, 49.059925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073996, -0.714339, 0.695877,
		-0.984016, 0.165637, 0.065396,
		-0.161978, -0.679915, -0.715178,
		36.177723, 31.731346, 48.845371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757290, 31.783878, 49.498241>,  <36.291107, 32.207287, 49.345997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757290, 31.783878, 49.498241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960560, 31.557295, 49.238739>,  <36.082520, 31.421345, 49.083038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960560, 31.557295, 49.238739>,  <35.757290, 31.783878, 49.498241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960560, 31.557295, 49.238739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185792, -0.807633, 0.559652,
		-0.840978, -0.163865, -0.515659,
		0.508170, -0.566460, -0.648757,
		36.113010, 31.387358, 49.044113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358166, 31.219519, 49.539402>,  <35.757290, 31.783878, 49.498241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358166, 31.219519, 49.539402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689926, 31.102480, 49.349041>,  <35.888981, 31.032257, 49.234825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689926, 31.102480, 49.349041>,  <35.358166, 31.219519, 49.539402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689926, 31.102480, 49.349041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011970, -0.860982, 0.508495,
		-0.558526, -0.416050, -0.717601,
		0.829400, -0.292597, -0.475900,
		35.938747, 31.014700, 49.206272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235691, 30.529299, 49.176132>,  <35.358166, 31.219519, 49.539402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235691, 30.529299, 49.176132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625240, 30.597132, 49.236546>,  <35.858971, 30.637831, 49.272793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625240, 30.597132, 49.236546>,  <35.235691, 30.529299, 49.176132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625240, 30.597132, 49.236546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109573, -0.933456, 0.341546,
		0.198905, -0.316073, -0.927650,
		0.973874, 0.169581, 0.151036,
		35.917404, 30.648006, 49.281857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628525, 29.885250, 48.907261>,  <35.235691, 30.529299, 49.176132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628525, 29.885250, 48.907261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891392, 30.065954, 49.148605>,  <36.049110, 30.174376, 49.293411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891392, 30.065954, 49.148605>,  <35.628525, 29.885250, 48.907261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891392, 30.065954, 49.148605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366767, -0.890984, 0.267639,
		0.658494, 0.045410, -0.751214,
		0.657166, 0.451759, 0.603363,
		36.088543, 30.201483, 49.329613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354839, 29.206144, 49.253933>,  <35.628525, 29.885250, 48.907261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354839, 29.206144, 49.253933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989391, 29.082447, 49.148357>,  <34.770123, 29.008228, 49.085011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989391, 29.082447, 49.148357>,  <35.354839, 29.206144, 49.253933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989391, 29.082447, 49.148357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085234, 0.489087, -0.868061,
		0.397533, -0.815575, -0.420482,
		-0.913621, -0.309243, -0.263943,
		34.715305, 28.989674, 49.069176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522446, 29.157726, 48.505447>,  <35.354839, 29.206144, 49.253933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522446, 29.157726, 48.505447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125202, 29.122248, 48.536083>,  <34.886856, 29.100960, 48.554466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.125202, 29.122248, 48.536083>,  <35.522446, 29.157726, 48.505447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125202, 29.122248, 48.536083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098818, 0.282519, -0.954158,
		0.062993, -0.955152, -0.289337,
		-0.993109, -0.088697, 0.076590,
		34.827271, 29.095638, 48.559059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225887, 28.715355, 47.827850>,  <35.522446, 29.157726, 48.505447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225887, 28.715355, 47.827850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906677, 28.902819, 47.979382>,  <34.715153, 29.015297, 48.070301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906677, 28.902819, 47.979382>,  <35.225887, 28.715355, 47.827850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906677, 28.902819, 47.979382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283114, 0.263370, -0.922216,
		-0.531978, -0.843205, -0.077492,
		-0.798026, 0.468660, 0.378830,
		34.667271, 29.043417, 48.093029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644840, 28.536470, 47.437069>,  <35.225887, 28.715355, 47.827850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644840, 28.536470, 47.437069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533070, 28.872160, 47.623669>,  <34.466007, 29.073574, 47.735630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533070, 28.872160, 47.623669>,  <34.644840, 28.536470, 47.437069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533070, 28.872160, 47.623669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377820, 0.350556, -0.856950,
		-0.882707, -0.415711, 0.219119,
		-0.279429, 0.839223, 0.466502,
		34.449242, 29.123926, 47.763618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879326, 28.684965, 47.277267>,  <34.644840, 28.536470, 47.437069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879326, 28.684965, 47.277267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067307, 29.022449, 47.381039>,  <34.180096, 29.224939, 47.443302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067307, 29.022449, 47.381039>,  <33.879326, 28.684965, 47.277267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067307, 29.022449, 47.381039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300713, 0.429352, -0.851604,
		-0.829892, 0.322197, 0.455487,
		0.469948, 0.843710, 0.259427,
		34.208290, 29.275562, 47.458866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346413, 29.221090, 47.272354>,  <33.879326, 28.684965, 47.277267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346413, 29.221090, 47.272354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717846, 29.367979, 47.250900>,  <33.940708, 29.456112, 47.238029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.717846, 29.367979, 47.250900>,  <33.346413, 29.221090, 47.272354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717846, 29.367979, 47.250900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270865, 0.571836, -0.774361,
		-0.253693, 0.733588, 0.630467,
		0.928586, 0.367221, -0.053633,
		33.996422, 29.478146, 47.234810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175739, 29.910442, 47.346745>,  <33.346413, 29.221090, 47.272354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175739, 29.910442, 47.346745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537834, 29.842346, 47.191017>,  <33.755089, 29.801489, 47.097580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537834, 29.842346, 47.191017>,  <33.175739, 29.910442, 47.346745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537834, 29.842346, 47.191017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221534, 0.592769, -0.774305,
		0.362593, 0.787175, 0.498881,
		0.905234, -0.170238, -0.389320,
		33.809406, 29.791275, 47.074223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.921322, 28.243151, 49.078320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.859638, 28.342182, 48.695713>,  <36.822628, 28.401600, 48.466148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.859638, 28.342182, 48.695713>,  <36.921322, 28.243151, 49.078320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859638, 28.342182, 48.695713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305202, -0.932689, -0.192205,
		-0.939718, 0.262290, 0.219392,
		-0.154211, 0.247577, -0.956517,
		36.813374, 28.416456, 48.408756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541649, 28.459221, 49.581245>,  <36.921322, 28.243151, 49.078320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541649, 28.459221, 49.581245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.404018, 28.152563, 49.798084>,  <37.321442, 27.968569, 49.928188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.404018, 28.152563, 49.798084>,  <37.541649, 28.459221, 49.581245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404018, 28.152563, 49.798084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797204, -0.066499, -0.600036,
		0.496064, -0.638617, -0.588293,
		-0.344072, -0.766646, 0.542096,
		37.300797, 27.922569, 49.960712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572910, 27.826509, 49.155117>,  <37.541649, 28.459221, 49.581245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572910, 27.826509, 49.155117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.946117, 27.684643, 49.179413>,  <38.170040, 27.599524, 49.193989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.946117, 27.684643, 49.179413>,  <37.572910, 27.826509, 49.155117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946117, 27.684643, 49.179413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089201, 0.064449, -0.993926,
		0.348599, 0.932769, 0.091769,
		0.933018, -0.354667, 0.060737,
		38.226021, 27.578243, 49.197636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030411, 28.332518, 48.947189>,  <37.572910, 27.826509, 49.155117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030411, 28.332518, 48.947189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.224380, 27.986395, 48.896450>,  <38.340763, 27.778721, 48.866005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.224380, 27.986395, 48.896450>,  <38.030411, 28.332518, 48.947189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224380, 27.986395, 48.896450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175685, 0.238472, -0.955126,
		0.856725, 0.440883, 0.267663,
		0.484929, -0.865305, -0.126848,
		38.369858, 27.726803, 48.858395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573952, 28.468939, 48.489155>,  <38.030411, 28.332518, 48.947189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573952, 28.468939, 48.489155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.576988, 28.069357, 48.471138>,  <38.578812, 27.829607, 48.460327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.576988, 28.069357, 48.471138>,  <38.573952, 28.468939, 48.489155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576988, 28.069357, 48.471138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117732, 0.045624, -0.991997,
		0.993016, 0.002232, 0.117956,
		0.007596, -0.998956, -0.045043,
		38.579266, 27.769670, 48.457626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083157, 28.343029, 48.014896>,  <38.573952, 28.468939, 48.489155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083157, 28.343029, 48.014896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.840389, 28.025204, 48.007694>,  <38.694729, 27.834509, 48.003372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.840389, 28.025204, 48.007694>,  <39.083157, 28.343029, 48.014896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840389, 28.025204, 48.007694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172614, -0.109666, -0.978866,
		0.775796, -0.597195, 0.203710,
		-0.606914, -0.794564, -0.018006,
		38.658314, 27.786835, 48.002293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433056, 27.852972, 47.563976>,  <39.083157, 28.343029, 48.014896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433056, 27.852972, 47.563976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044979, 27.757870, 47.582745>,  <38.812134, 27.700809, 47.594006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044979, 27.757870, 47.582745>,  <39.433056, 27.852972, 47.563976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044979, 27.757870, 47.582745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005271, -0.214260, -0.976762,
		0.242282, -0.947399, 0.209127,
		-0.970191, -0.237754, 0.046918,
		38.753922, 27.686544, 47.596821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328709, 27.244110, 47.256927>,  <39.433056, 27.852972, 47.563976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328709, 27.244110, 47.256927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.964214, 27.408485, 47.245754>,  <38.745518, 27.507111, 47.239052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.964214, 27.408485, 47.245754>,  <39.328709, 27.244110, 47.256927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964214, 27.408485, 47.245754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073711, -0.229414, -0.970534,
		-0.405239, -0.882325, 0.239341,
		-0.911234, 0.410940, -0.027931,
		38.690845, 27.531767, 47.237373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933659, 26.795933, 46.888123>,  <39.328709, 27.244110, 47.256927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933659, 26.795933, 46.888123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.705994, 27.124767, 46.882084>,  <38.569393, 27.322067, 46.878460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.705994, 27.124767, 46.882084>,  <38.933659, 26.795933, 46.888123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705994, 27.124767, 46.882084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335437, -0.248916, -0.908583,
		-0.750691, -0.512069, 0.417432,
		-0.569162, 0.822086, -0.015092,
		38.535244, 27.371393, 46.877556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365551, 26.583765, 46.522717>,  <38.933659, 26.795933, 46.888123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365551, 26.583765, 46.522717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365002, 26.983528, 46.508957>,  <38.364670, 27.223387, 46.500702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.365002, 26.983528, 46.508957>,  <38.365551, 26.583765, 46.522717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365002, 26.983528, 46.508957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273672, -0.033461, -0.961241,
		-0.961822, 0.008089, 0.273556,
		-0.001378, 0.999407, -0.034397,
		38.364590, 27.283350, 46.498638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726429, 26.799614, 46.194176>,  <38.365551, 26.583765, 46.522717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726429, 26.799614, 46.194176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974987, 27.110447, 46.154160>,  <38.124123, 27.296947, 46.130150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974987, 27.110447, 46.154160>,  <37.726429, 26.799614, 46.194176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974987, 27.110447, 46.154160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291248, 0.110562, -0.950237,
		-0.727354, 0.619609, 0.295027,
		0.621394, 0.777085, -0.100042,
		38.161404, 27.343573, 46.124146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394596, 27.344748, 45.833523>,  <37.726429, 26.799614, 46.194176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394596, 27.344748, 45.833523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.772522, 27.452770, 45.759331>,  <37.999275, 27.517584, 45.714817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.772522, 27.452770, 45.759331>,  <37.394596, 27.344748, 45.833523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772522, 27.452770, 45.759331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265555, 0.299705, -0.916328,
		-0.191871, 0.915011, 0.354879,
		0.944810, 0.270057, -0.185481,
		38.055965, 27.533787, 45.703686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658474, 27.577221, 46.028809>,  <37.394596, 27.344748, 45.833523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658474, 27.577221, 46.028809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.306671, 27.409569, 45.938660>,  <36.095589, 27.308977, 45.884571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.306671, 27.409569, 45.938660>,  <36.658474, 27.577221, 46.028809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306671, 27.409569, 45.938660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050239, -0.552714, 0.831855,
		-0.473220, 0.720303, 0.507174,
		-0.879511, -0.419131, -0.225368,
		36.042816, 27.283829, 45.871048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153660, 27.772842, 46.651054>,  <36.658474, 27.577221, 46.028809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153660, 27.772842, 46.651054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.022537, 27.456696, 46.444031>,  <35.943863, 27.267008, 46.319817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.022537, 27.456696, 46.444031>,  <36.153660, 27.772842, 46.651054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022537, 27.456696, 46.444031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355658, -0.404285, 0.842652,
		-0.875243, 0.460300, -0.148572,
		-0.327807, -0.790366, -0.517557,
		35.924194, 27.219585, 46.288765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523499, 27.587233, 46.903141>,  <36.153660, 27.772842, 46.651054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523499, 27.587233, 46.903141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.664505, 27.257402, 46.726139>,  <35.749107, 27.059505, 46.619938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.664505, 27.257402, 46.726139>,  <35.523499, 27.587233, 46.903141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664505, 27.257402, 46.726139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094043, -0.501681, 0.859926,
		-0.931068, -0.261523, -0.254396,
		0.352516, -0.824574, -0.442505,
		35.770260, 27.010031, 46.593388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076801, 26.981628, 47.089439>,  <35.523499, 27.587233, 46.903141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076801, 26.981628, 47.089439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423492, 26.809086, 46.989269>,  <35.631508, 26.705561, 46.929169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423492, 26.809086, 46.989269>,  <35.076801, 26.981628, 47.089439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423492, 26.809086, 46.989269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009557, -0.516344, 0.856328,
		-0.498678, -0.739816, -0.451656,
		0.866734, -0.431349, -0.250419,
		35.683510, 26.679678, 46.914143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967968, 26.357843, 47.025574>,  <35.076801, 26.981628, 47.089439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967968, 26.357843, 47.025574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357334, 26.383469, 47.113544>,  <35.590954, 26.398844, 47.166325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.357334, 26.383469, 47.113544>,  <34.967968, 26.357843, 47.025574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357334, 26.383469, 47.113544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129165, -0.639393, 0.757953,
		0.189172, -0.766207, -0.614118,
		0.973412, 0.064061, 0.219923,
		35.649357, 26.402687, 47.179520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011074, 25.675232, 47.240921>,  <34.967968, 26.357843, 47.025574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011074, 25.675232, 47.240921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324318, 25.891336, 47.364120>,  <35.512264, 26.021000, 47.438038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324318, 25.891336, 47.364120>,  <35.011074, 25.675232, 47.240921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324318, 25.891336, 47.364120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045312, -0.444371, 0.894696,
		0.620236, -0.714597, -0.323509,
		0.783105, 0.540263, 0.307995,
		35.559250, 26.053415, 47.456520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418713, 25.190237, 47.666931>,  <35.011074, 25.675232, 47.240921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418713, 25.190237, 47.666931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592113, 25.538488, 47.759953>,  <35.696156, 25.747438, 47.815765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592113, 25.538488, 47.759953>,  <35.418713, 25.190237, 47.666931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592113, 25.538488, 47.759953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144377, -0.321829, 0.935725,
		0.889510, -0.372068, -0.265213,
		0.433507, 0.870627, 0.232552,
		35.722164, 25.799677, 47.829720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058128, 25.056688, 47.968746>,  <35.418713, 25.190237, 47.666931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058128, 25.056688, 47.968746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929005, 25.408579, 48.108387>,  <35.851532, 25.619713, 48.192173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929005, 25.408579, 48.108387>,  <36.058128, 25.056688, 47.968746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929005, 25.408579, 48.108387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112999, -0.330389, 0.937056,
		0.939694, 0.341939, 0.007245,
		-0.322810, 0.879727, 0.349104,
		35.832161, 25.672497, 48.213120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576702, 25.199135, 48.391380>,  <36.058128, 25.056688, 47.968746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576702, 25.199135, 48.391380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296371, 25.453802, 48.520058>,  <36.128174, 25.606604, 48.597263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296371, 25.453802, 48.520058>,  <36.576702, 25.199135, 48.391380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296371, 25.453802, 48.520058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138072, -0.321377, 0.936831,
		0.699838, 0.700977, 0.137325,
		-0.700830, 0.636669, 0.321697,
		36.086121, 25.644802, 48.616566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856022, 25.494505, 48.933731>,  <36.576702, 25.199135, 48.391380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856022, 25.494505, 48.933731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470394, 25.585884, 48.987957>,  <36.239017, 25.640713, 49.020493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470394, 25.585884, 48.987957>,  <36.856022, 25.494505, 48.933731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470394, 25.585884, 48.987957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092125, -0.191133, 0.977231,
		0.249159, 0.954609, 0.163220,
		-0.964071, 0.228449, 0.135565,
		36.181171, 25.654419, 49.028625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733112, 25.825447, 49.582489>,  <36.856022, 25.494505, 48.933731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733112, 25.825447, 49.582489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.369305, 25.682455, 49.497654>,  <36.151020, 25.596661, 49.446754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.369305, 25.682455, 49.497654>,  <36.733112, 25.825447, 49.582489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369305, 25.682455, 49.497654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177963, -0.126199, 0.975911,
		-0.375633, 0.925355, 0.051163,
		-0.909521, -0.357479, -0.212083,
		36.096447, 25.575211, 49.434029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375599, 26.277330, 49.892494>,  <36.733112, 25.825447, 49.582489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375599, 26.277330, 49.892494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.197399, 25.919594, 49.876049>,  <36.090481, 25.704952, 49.866180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.197399, 25.919594, 49.876049>,  <36.375599, 26.277330, 49.892494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197399, 25.919594, 49.876049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043722, -0.067603, 0.996754,
		-0.894216, 0.442251, 0.069219,
		-0.445495, -0.894340, -0.041115,
		36.063751, 25.651291, 49.863716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814732, 26.328075, 50.345051>,  <36.375599, 26.277330, 49.892494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814732, 26.328075, 50.345051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.854080, 25.932041, 50.304935>,  <35.877689, 25.694422, 50.280865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.854080, 25.932041, 50.304935>,  <35.814732, 26.328075, 50.345051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854080, 25.932041, 50.304935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143063, -0.085661, 0.986000,
		-0.984813, -0.111341, 0.133218,
		0.098370, -0.990084, -0.100288,
		35.883591, 25.635015, 50.274849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499020, 26.018883, 50.900410>,  <35.814732, 26.328075, 50.345051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499020, 26.018883, 50.900410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.766544, 25.748362, 50.776924>,  <35.927059, 25.586050, 50.702831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.766544, 25.748362, 50.776924>,  <35.499020, 26.018883, 50.900410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766544, 25.748362, 50.776924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341763, -0.089081, 0.935555,
		-0.660218, -0.731218, 0.171556,
		0.668813, -0.676302, -0.308716,
		35.967190, 25.545471, 50.684311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947296, 26.176954, 50.405560>,  <35.499020, 26.018883, 50.900410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947296, 26.176954, 50.405560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765888, 26.408400, 50.676712>,  <34.657043, 26.547266, 50.839405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765888, 26.408400, 50.676712>,  <34.947296, 26.176954, 50.405560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765888, 26.408400, 50.676712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181383, 0.684762, -0.705834,
		-0.872591, -0.443069, -0.205606,
		-0.453524, 0.578611, 0.677883,
		34.629829, 26.581984, 50.880077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184940, 26.339691, 50.184410>,  <34.947296, 26.176954, 50.405560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184940, 26.339691, 50.184410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366802, 26.622845, 50.400627>,  <34.475922, 26.792738, 50.530357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366802, 26.622845, 50.400627>,  <34.184940, 26.339691, 50.184410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366802, 26.622845, 50.400627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248620, 0.683639, -0.686168,
		-0.855263, 0.177582, 0.486816,
		0.454657, 0.707886, 0.540540,
		34.503201, 26.835211, 50.562790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681622, 26.864677, 50.188744>,  <34.184940, 26.339691, 50.184410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681622, 26.864677, 50.188744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028740, 27.052225, 50.254578>,  <34.237011, 27.164755, 50.294079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028740, 27.052225, 50.254578>,  <33.681622, 26.864677, 50.188744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028740, 27.052225, 50.254578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232685, 0.676071, -0.699132,
		-0.439074, 0.568409, 0.695791,
		0.867797, 0.468871, 0.164585,
		34.289078, 27.192886, 50.303951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455494, 27.561312, 50.269413>,  <33.681622, 26.864677, 50.188744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455494, 27.561312, 50.269413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843849, 27.561964, 50.173603>,  <34.076862, 27.562355, 50.116119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843849, 27.561964, 50.173603>,  <33.455494, 27.561312, 50.269413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843849, 27.561964, 50.173603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165283, 0.728318, -0.665007,
		0.173364, 0.685238, 0.707386,
		0.970890, 0.001631, -0.239522,
		34.135117, 27.562452, 50.101746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736210, 28.262251, 50.236282>,  <33.455494, 27.561312, 50.269413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736210, 28.262251, 50.236282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.027737, 28.077484, 50.034107>,  <34.202652, 27.966625, 49.912804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.027737, 28.077484, 50.034107>,  <33.736210, 28.262251, 50.236282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027737, 28.077484, 50.034107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059741, 0.778254, -0.625101,
		0.682100, 0.425388, 0.594798,
		0.728815, -0.461915, -0.505434,
		34.246380, 27.938910, 49.882477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298229, 28.785793, 50.314587>,  <33.736210, 28.262251, 50.236282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298229, 28.785793, 50.314587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346100, 28.555931, 49.990746>,  <34.374821, 28.418015, 49.796440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346100, 28.555931, 49.990746>,  <34.298229, 28.785793, 50.314587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346100, 28.555931, 49.990746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135998, 0.817261, -0.559991,
		0.983455, -0.043088, 0.175955,
		0.119672, -0.574655, -0.809599,
		34.382000, 28.383535, 49.747868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832890, 29.134192, 49.912346>,  <34.298229, 28.785793, 50.314587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832890, 29.134192, 49.912346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.637634, 28.905811, 49.648304>,  <34.520481, 28.768784, 49.489880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.637634, 28.905811, 49.648304>,  <34.832890, 29.134192, 49.912346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637634, 28.905811, 49.648304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009942, 0.752648, -0.658348,
		0.872708, -0.327930, -0.361723,
		-0.488142, -0.570949, -0.660102,
		34.491192, 28.734528, 49.450272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235237, 29.703941, 50.092617>,  <34.832890, 29.134192, 49.912346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235237, 29.703941, 50.092617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.506378, 29.974955, 50.206787>,  <35.669064, 30.137564, 50.275288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.506378, 29.974955, 50.206787>,  <35.235237, 29.703941, 50.092617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506378, 29.974955, 50.206787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605859, -0.734706, 0.305191,
		0.416479, -0.033949, -0.908511,
		0.677850, 0.677536, 0.285422,
		35.709732, 30.178215, 50.292412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808041, 29.556908, 49.672207>,  <35.235237, 29.703941, 50.092617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808041, 29.556908, 49.672207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.896057, 29.740881, 50.016312>,  <35.948868, 29.851265, 50.222775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.896057, 29.740881, 50.016312>,  <35.808041, 29.556908, 49.672207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896057, 29.740881, 50.016312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456914, -0.827747, 0.325677,
		0.861865, 0.321402, -0.392288,
		0.220042, 0.459931, 0.860259,
		35.962070, 29.878860, 50.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275867, 29.182108, 49.956009>,  <35.808041, 29.556908, 49.672207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275867, 29.182108, 49.956009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.193077, 29.386890, 50.289490>,  <36.143402, 29.509760, 50.489578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.193077, 29.386890, 50.289490>,  <36.275867, 29.182108, 49.956009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193077, 29.386890, 50.289490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488147, -0.684462, 0.541502,
		0.847863, 0.519048, -0.108243,
		-0.206978, 0.511958, 0.833702,
		36.130985, 29.540478, 50.539600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976822, 29.364426, 50.325584>,  <36.275867, 29.182108, 49.956009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976822, 29.364426, 50.325584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.667519, 29.341709, 50.578201>,  <36.481937, 29.328079, 50.729771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.667519, 29.341709, 50.578201>,  <36.976822, 29.364426, 50.325584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667519, 29.341709, 50.578201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517879, -0.631272, 0.577319,
		0.365890, 0.773480, 0.517545,
		-0.773256, -0.056791, 0.631545,
		36.435543, 29.324673, 50.767666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197098, 29.412556, 50.999603>,  <36.976822, 29.364426, 50.325584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197098, 29.412556, 50.999603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.832859, 29.264374, 51.072906>,  <36.614315, 29.175465, 51.116886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.832859, 29.264374, 51.072906>,  <37.197098, 29.412556, 50.999603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832859, 29.264374, 51.072906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391107, -0.629014, 0.671846,
		-0.133618, 0.683451, 0.717663,
		-0.910594, -0.370454, 0.183255,
		36.559681, 29.153238, 51.127884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174980, 29.334692, 51.809845>,  <37.197098, 29.412556, 50.999603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174980, 29.334692, 51.809845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.892075, 29.109882, 51.638306>,  <36.722332, 28.974997, 51.535381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.892075, 29.109882, 51.638306>,  <37.174980, 29.334692, 51.809845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892075, 29.109882, 51.638306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299879, -0.787844, 0.537934,
		-0.640198, 0.251857, 0.725751,
		-0.707262, -0.562022, -0.428849,
		36.679897, 28.941277, 51.509651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975384, 28.891911, 52.325832>,  <37.174980, 29.334692, 51.809845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975384, 28.891911, 52.325832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.793415, 28.703449, 52.023560>,  <36.684235, 28.590372, 51.842194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.793415, 28.703449, 52.023560>,  <36.975384, 28.891911, 52.325832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793415, 28.703449, 52.023560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024243, -0.854817, 0.518363,
		-0.890200, 0.217496, 0.400299,
		-0.454924, -0.471151, -0.755685,
		36.656937, 28.562103, 51.796852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424393, 28.458344, 52.570904>,  <36.975384, 28.891911, 52.325832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424393, 28.458344, 52.570904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.537018, 28.299124, 52.221668>,  <36.604591, 28.203592, 52.012127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.537018, 28.299124, 52.221668>,  <36.424393, 28.458344, 52.570904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537018, 28.299124, 52.221668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138432, -0.883529, 0.447452,
		-0.949504, -0.246850, -0.193668,
		0.281565, -0.398048, -0.873086,
		36.621487, 28.179710, 51.959743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109989, 27.789284, 52.554951>,  <36.424393, 28.458344, 52.570904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109989, 27.789284, 52.554951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.435326, 27.792887, 52.322262>,  <36.630527, 27.795048, 52.182648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.435326, 27.792887, 52.322262>,  <36.109989, 27.789284, 52.554951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435326, 27.792887, 52.322262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271470, -0.890232, 0.365774,
		-0.514574, -0.455418, -0.726504,
		0.813337, 0.009007, -0.581723,
		36.679325, 27.795589, 52.147743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.921158, 35.987198, 38.605770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203365, 36.103497, 38.864296>,  <37.372688, 36.173275, 39.019409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203365, 36.103497, 38.864296>,  <36.921158, 35.987198, 38.605770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203365, 36.103497, 38.864296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588448, -0.267893, 0.762864,
		0.394940, -0.918532, -0.017915,
		0.705515, 0.290743, 0.646310,
		37.415020, 36.190720, 39.058189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774857, 35.614876, 39.132431>,  <36.921158, 35.987198, 38.605770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774857, 35.614876, 39.132431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007427, 35.874851, 39.328197>,  <37.146969, 36.030834, 39.445660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007427, 35.874851, 39.328197>,  <36.774857, 35.614876, 39.132431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007427, 35.874851, 39.328197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443281, -0.251364, 0.860417,
		0.682238, -0.717217, 0.141955,
		0.581423, 0.649935, 0.489419,
		37.181854, 36.069832, 39.475021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038212, 35.286102, 39.717434>,  <36.774857, 35.614876, 39.132431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038212, 35.286102, 39.717434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102402, 35.663101, 39.834698>,  <37.140915, 35.889301, 39.905056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102402, 35.663101, 39.834698>,  <37.038212, 35.286102, 39.717434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102402, 35.663101, 39.834698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345260, -0.224646, 0.911224,
		0.924686, -0.247442, 0.289358,
		0.160472, 0.942500, 0.293159,
		37.150543, 35.945850, 39.922646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326412, 35.277599, 40.406738>,  <37.038212, 35.286102, 39.717434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326412, 35.277599, 40.406738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197697, 35.654495, 40.369560>,  <37.120468, 35.880630, 40.347256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197697, 35.654495, 40.369560>,  <37.326412, 35.277599, 40.406738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197697, 35.654495, 40.369560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305459, -0.010400, 0.952148,
		0.896183, 0.334784, 0.291161,
		-0.321792, 0.942237, -0.092943,
		37.101158, 35.937168, 40.341679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474014, 35.695156, 41.051373>,  <37.326412, 35.277599, 40.406738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474014, 35.695156, 41.051373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178371, 35.915905, 40.896889>,  <37.000984, 36.048355, 40.804199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178371, 35.915905, 40.896889>,  <37.474014, 35.695156, 41.051373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178371, 35.915905, 40.896889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470873, -0.013319, 0.882100,
		0.481659, 0.833825, 0.269704,
		-0.739110, 0.551868, -0.386211,
		36.956638, 36.081467, 40.781025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425632, 36.129868, 41.555981>,  <37.474014, 35.695156, 41.051373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425632, 36.129868, 41.555981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080189, 36.123001, 41.354435>,  <36.872921, 36.118881, 41.233505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080189, 36.123001, 41.354435>,  <37.425632, 36.129868, 41.555981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080189, 36.123001, 41.354435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495004, -0.160750, 0.853891,
		-0.095653, 0.986846, 0.130330,
		-0.863610, -0.017163, -0.503868,
		36.821106, 36.117851, 41.203274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030090, 36.535145, 41.982887>,  <37.425632, 36.129868, 41.555981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030090, 36.535145, 41.982887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767334, 36.314877, 41.776871>,  <36.609680, 36.182716, 41.653263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767334, 36.314877, 41.776871>,  <37.030090, 36.535145, 41.982887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767334, 36.314877, 41.776871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572728, -0.079855, 0.815847,
		-0.490388, 0.830896, -0.262926,
		-0.656888, -0.550667, -0.515038,
		36.570267, 36.149677, 41.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360500, 36.673615, 42.310398>,  <37.030090, 36.535145, 41.982887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360500, 36.673615, 42.310398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261623, 36.351818, 42.094364>,  <36.202297, 36.158741, 41.964745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261623, 36.351818, 42.094364>,  <36.360500, 36.673615, 42.310398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261623, 36.351818, 42.094364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527057, -0.356080, 0.771634,
		-0.813084, 0.475400, -0.335990,
		-0.247196, -0.804489, -0.540085,
		36.187466, 36.110470, 41.932339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676483, 36.613937, 42.453678>,  <36.360500, 36.673615, 42.310398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676483, 36.613937, 42.453678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763920, 36.247936, 42.318039>,  <35.816380, 36.028336, 42.236656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763920, 36.247936, 42.318039>,  <35.676483, 36.613937, 42.453678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763920, 36.247936, 42.318039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599975, -0.400082, 0.692794,
		-0.769577, 0.052015, -0.636432,
		0.218590, -0.915002, -0.339101,
		35.829498, 35.973434, 42.216309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069881, 36.183483, 42.547710>,  <35.676483, 36.613937, 42.453678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069881, 36.183483, 42.547710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381268, 35.932961, 42.531029>,  <35.568100, 35.782646, 42.521019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381268, 35.932961, 42.531029>,  <35.069881, 36.183483, 42.547710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381268, 35.932961, 42.531029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432812, -0.583705, 0.686995,
		-0.454610, -0.516750, -0.725465,
		0.778462, -0.626305, -0.041703,
		35.614807, 35.745068, 42.518517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897697, 35.416973, 42.517780>,  <35.069881, 36.183483, 42.547710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897697, 35.416973, 42.517780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272011, 35.393837, 42.656898>,  <35.496597, 35.379955, 42.740368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272011, 35.393837, 42.656898>,  <34.897697, 35.416973, 42.517780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272011, 35.393837, 42.656898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332166, -0.475364, 0.814675,
		0.118209, -0.877886, -0.464050,
		0.935785, -0.057840, 0.347796,
		35.552746, 35.376484, 42.761238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771908, 34.864746, 42.913357>,  <34.897697, 35.416973, 42.517780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771908, 34.864746, 42.913357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122063, 35.018959, 43.030014>,  <35.332157, 35.111488, 43.100010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122063, 35.018959, 43.030014>,  <34.771908, 34.864746, 42.913357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122063, 35.018959, 43.030014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092401, -0.458733, 0.883757,
		0.474505, -0.800580, -0.365946,
		0.875390, 0.385533, 0.291645,
		35.384678, 35.134621, 43.117508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485634, 34.275661, 42.670151>,  <34.771908, 34.864746, 42.913357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485634, 34.275661, 42.670151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109383, 34.139931, 42.673611>,  <33.883633, 34.058491, 42.675686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109383, 34.139931, 42.673611>,  <34.485634, 34.275661, 42.670151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109383, 34.139931, 42.673611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105972, 0.269364, -0.957190,
		0.322477, -0.901275, -0.289331,
		-0.940627, -0.339333, 0.008646,
		33.827194, 34.038132, 42.676205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465927, 34.160759, 41.969799>,  <34.485634, 34.275661, 42.670151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465927, 34.160759, 41.969799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097946, 34.186977, 42.124409>,  <33.877159, 34.202709, 42.217175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097946, 34.186977, 42.124409>,  <34.465927, 34.160759, 41.969799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097946, 34.186977, 42.124409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321640, 0.437510, -0.839721,
		-0.224148, -0.896821, -0.381404,
		-0.919949, 0.065547, 0.386521,
		33.821960, 34.206642, 42.240364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990112, 33.742680, 41.525928>,  <34.465927, 34.160759, 41.969799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990112, 33.742680, 41.525928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797287, 34.040581, 41.710518>,  <33.681591, 34.219322, 41.821274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797287, 34.040581, 41.710518>,  <33.990112, 33.742680, 41.525928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797287, 34.040581, 41.710518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326640, 0.335972, -0.883419,
		-0.812971, -0.576600, 0.081306,
		-0.482063, 0.744752, 0.461476,
		33.652668, 34.264008, 41.848961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384197, 33.769123, 41.121342>,  <33.990112, 33.742680, 41.525928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384197, 33.769123, 41.121342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364697, 34.095692, 41.351498>,  <33.352997, 34.291634, 41.489594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364697, 34.095692, 41.351498>,  <33.384197, 33.769123, 41.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364697, 34.095692, 41.351498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288871, 0.539934, -0.790585,
		-0.956126, -0.204756, 0.209519,
		-0.048751, 0.816423, 0.575393,
		33.350071, 34.340618, 41.524117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689575, 34.047108, 40.980793>,  <33.384197, 33.769123, 41.121342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689575, 34.047108, 40.980793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925251, 34.343052, 41.110695>,  <33.066658, 34.520618, 41.188637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925251, 34.343052, 41.110695>,  <32.689575, 34.047108, 40.980793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925251, 34.343052, 41.110695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184409, 0.514446, -0.837459,
		-0.786668, 0.433537, 0.439544,
		0.589191, 0.739859, 0.324750,
		33.102009, 34.565010, 41.208118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304218, 34.810246, 40.938602>,  <32.689575, 34.047108, 40.980793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304218, 34.810246, 40.938602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703568, 34.829807, 40.926884>,  <32.943176, 34.841545, 40.919853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703568, 34.829807, 40.926884>,  <32.304218, 34.810246, 40.938602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703568, 34.829807, 40.926884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048749, 0.466055, -0.883412,
		-0.029548, 0.883403, 0.467681,
		0.998374, 0.048903, -0.029294,
		33.003078, 34.844479, 40.918095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401623, 35.397327, 40.647190>,  <32.304218, 34.810246, 40.938602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401623, 35.397327, 40.647190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760735, 35.221149, 40.646290>,  <32.976200, 35.115440, 40.645748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760735, 35.221149, 40.646290>,  <32.401623, 35.397327, 40.647190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760735, 35.221149, 40.646290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217206, 0.447172, -0.867674,
		0.383171, 0.778488, 0.497128,
		0.897776, -0.440447, -0.002251,
		33.030067, 35.089016, 40.645615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819431, 35.896454, 40.298531>,  <32.401623, 35.397327, 40.647190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819431, 35.896454, 40.298531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021065, 35.552097, 40.270920>,  <33.142044, 35.345482, 40.254353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021065, 35.552097, 40.270920>,  <32.819431, 35.896454, 40.298531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021065, 35.552097, 40.270920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359449, 0.281796, -0.889600,
		0.785299, 0.423624, 0.451495,
		0.504085, -0.860891, -0.069023,
		33.172291, 35.293831, 40.250214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460045, 36.054935, 40.181847>,  <32.819431, 35.896454, 40.298531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460045, 36.054935, 40.181847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393517, 35.693092, 40.024864>,  <33.353600, 35.475986, 39.930676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393517, 35.693092, 40.024864>,  <33.460045, 36.054935, 40.181847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393517, 35.693092, 40.024864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220151, 0.353893, -0.909007,
		0.961183, -0.237583, 0.140292,
		-0.166316, -0.904607, -0.392460,
		33.343620, 35.421711, 39.907127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964756, 36.098232, 39.548969>,  <33.460045, 36.054935, 40.181847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964756, 36.098232, 39.548969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744530, 35.769680, 39.489357>,  <33.612392, 35.572548, 39.453590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744530, 35.769680, 39.489357>,  <33.964756, 36.098232, 39.548969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744530, 35.769680, 39.489357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061511, 0.138121, -0.988504,
		0.832521, -0.553406, -0.025521,
		-0.550569, -0.821380, -0.149029,
		33.579361, 35.523266, 39.444649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237812, 35.780075, 39.112003>,  <33.964756, 36.098232, 39.548969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237812, 35.780075, 39.112003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872181, 35.620621, 39.082191>,  <33.652802, 35.524948, 39.064304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872181, 35.620621, 39.082191>,  <34.237812, 35.780075, 39.112003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872181, 35.620621, 39.082191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027887, 0.121567, -0.992191,
		0.404582, -0.909017, -0.100005,
		-0.914076, -0.398634, -0.074534,
		33.597958, 35.501030, 39.059830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314472, 35.349915, 38.559040>,  <34.237812, 35.780075, 39.112003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314472, 35.349915, 38.559040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921818, 35.422306, 38.583153>,  <33.686226, 35.465740, 38.597622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921818, 35.422306, 38.583153>,  <34.314472, 35.349915, 38.559040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921818, 35.422306, 38.583153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059400, 0.010286, -0.998181,
		-0.181275, -0.983432, 0.000653,
		-0.981637, 0.180984, 0.060280,
		33.627327, 35.476601, 38.601238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887512, 34.870827, 38.213226>,  <34.314472, 35.349915, 38.559040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887512, 34.870827, 38.213226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644276, 35.188217, 38.223152>,  <33.498333, 35.378651, 38.229107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644276, 35.188217, 38.223152>,  <33.887512, 34.870827, 38.213226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644276, 35.188217, 38.223152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096825, -0.043109, -0.994367,
		-0.787940, -0.607069, 0.103042,
		-0.608092, 0.793479, 0.024812,
		33.461849, 35.426262, 38.230595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337513, 34.779629, 37.820698>,  <33.887512, 34.870827, 38.213226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337513, 34.779629, 37.820698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376335, 35.177551, 37.832916>,  <33.399628, 35.416306, 37.840248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376335, 35.177551, 37.832916>,  <33.337513, 34.779629, 37.820698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376335, 35.177551, 37.832916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073429, 0.037766, -0.996585,
		-0.992566, 0.094485, 0.076714,
		0.097060, 0.994810, 0.030547,
		33.405453, 35.475994, 37.842079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373764, 34.406082, 38.592083>,  <33.337513, 34.779629, 37.820698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373764, 34.406082, 38.592083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311623, 34.122742, 38.316662>,  <33.274338, 33.952740, 38.151409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311623, 34.122742, 38.316662>,  <33.373764, 34.406082, 38.592083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311623, 34.122742, 38.316662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025098, -0.693963, 0.719573,
		-0.987540, 0.129071, 0.090033,
		-0.155356, -0.708347, -0.688556,
		33.265015, 33.910236, 38.110096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700291, 34.068729, 38.687069>,  <33.373764, 34.406082, 38.592083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700291, 34.068729, 38.687069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973293, 33.827972, 38.521221>,  <33.137093, 33.683517, 38.421715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973293, 33.827972, 38.521221>,  <32.700291, 34.068729, 38.687069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973293, 33.827972, 38.521221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046469, -0.601872, 0.797239,
		-0.729403, -0.524852, -0.438750,
		0.682504, -0.601897, -0.414618,
		33.178043, 33.647404, 38.396835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419418, 33.389961, 38.488140>,  <32.700291, 34.068729, 38.687069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419418, 33.389961, 38.488140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813900, 33.353386, 38.543324>,  <33.050591, 33.331440, 38.576435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813900, 33.353386, 38.543324>,  <32.419418, 33.389961, 38.488140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813900, 33.353386, 38.543324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158713, -0.758852, 0.631628,
		0.046937, -0.644813, -0.762898,
		0.986209, -0.091435, 0.137958,
		33.109764, 33.325954, 38.584709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603745, 32.674259, 38.294701>,  <32.419418, 33.389961, 38.488140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603745, 32.674259, 38.294701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894997, 32.825489, 38.523396>,  <33.069748, 32.916225, 38.660614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894997, 32.825489, 38.523396>,  <32.603745, 32.674259, 38.294701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894997, 32.825489, 38.523396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034994, -0.853537, 0.519855,
		0.684545, -0.358515, -0.634717,
		0.728130, 0.378076, 0.571739,
		33.113434, 32.938911, 38.694916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007069, 32.079704, 38.418903>,  <32.603745, 32.674259, 38.294701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007069, 32.079704, 38.418903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123230, 32.355396, 38.684425>,  <33.192928, 32.520809, 38.843739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123230, 32.355396, 38.684425>,  <33.007069, 32.079704, 38.418903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123230, 32.355396, 38.684425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273216, -0.724542, 0.632765,
		0.917071, -0.002395, -0.398716,
		0.290402, 0.689226, 0.663803,
		33.210350, 32.562164, 38.883568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567123, 31.766680, 38.708328>,  <33.007069, 32.079704, 38.418903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567123, 31.766680, 38.708328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455921, 32.058235, 38.958588>,  <33.389198, 32.233170, 39.108742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455921, 32.058235, 38.958588>,  <33.567123, 31.766680, 38.708328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455921, 32.058235, 38.958588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181920, -0.599584, 0.779362,
		0.943195, 0.330487, 0.034091,
		-0.278010, 0.728888, 0.625646,
		33.372517, 32.276901, 39.146282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027287, 31.658920, 39.253967>,  <33.567123, 31.766680, 38.708328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027287, 31.658920, 39.253967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726250, 31.873779, 39.406319>,  <33.545628, 32.002693, 39.497730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726250, 31.873779, 39.406319>,  <34.027287, 31.658920, 39.253967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726250, 31.873779, 39.406319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031698, -0.607304, 0.793836,
		0.657719, 0.585365, 0.474082,
		-0.752596, 0.537149, 0.380881,
		33.500469, 32.034924, 39.520584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222122, 31.884359, 39.853336>,  <34.027287, 31.658920, 39.253967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222122, 31.884359, 39.853336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824970, 31.908897, 39.894196>,  <33.586681, 31.923620, 39.918713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824970, 31.908897, 39.894196>,  <34.222122, 31.884359, 39.853336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824970, 31.908897, 39.894196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048747, -0.573115, 0.818024,
		0.108725, 0.817176, 0.566042,
		-0.992876, 0.061347, 0.102147,
		33.527107, 31.927301, 39.924839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044090, 32.006985, 40.633770>,  <34.222122, 31.884359, 39.853336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044090, 32.006985, 40.633770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711689, 31.864916, 40.462521>,  <33.512249, 31.779675, 40.359772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711689, 31.864916, 40.462521>,  <34.044090, 32.006985, 40.633770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711689, 31.864916, 40.462521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103123, -0.657931, 0.745985,
		-0.546630, 0.664063, 0.510114,
		-0.831000, -0.355173, -0.428125,
		33.462387, 31.758364, 40.334084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654167, 32.048458, 41.108795>,  <34.044090, 32.006985, 40.633770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654167, 32.048458, 41.108795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451431, 31.800064, 40.869633>,  <33.329788, 31.651028, 40.726135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451431, 31.800064, 40.869633>,  <33.654167, 32.048458, 41.108795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451431, 31.800064, 40.869633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051683, -0.714237, 0.697993,
		-0.860490, 0.322869, 0.394098,
		-0.506840, -0.620984, -0.597907,
		33.299381, 31.613770, 40.690262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162239, 31.697296, 41.558136>,  <33.654167, 32.048458, 41.108795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162239, 31.697296, 41.558136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215080, 31.486198, 41.222507>,  <33.246784, 31.359541, 41.021130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215080, 31.486198, 41.222507>,  <33.162239, 31.697296, 41.558136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215080, 31.486198, 41.222507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240463, -0.804139, 0.543634,
		-0.961627, -0.273582, 0.020672,
		0.132105, -0.527743, -0.839068,
		33.254711, 31.327875, 40.970787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860939, 31.019068, 41.684261>,  <33.162239, 31.697296, 41.558136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860939, 31.019068, 41.684261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109032, 30.970348, 41.374298>,  <33.257885, 30.941116, 41.188320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109032, 30.970348, 41.374298>,  <32.860939, 31.019068, 41.684261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109032, 30.970348, 41.374298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418238, -0.784394, 0.458043,
		-0.663621, -0.608187, -0.435563,
		0.620229, -0.121798, -0.774907,
		33.295101, 30.933809, 41.141827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730068, 30.441940, 41.343231>,  <32.860939, 31.019068, 41.684261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730068, 30.441940, 41.343231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117664, 30.509951, 41.271503>,  <33.350220, 30.550756, 41.228466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117664, 30.509951, 41.271503>,  <32.730068, 30.441940, 41.343231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117664, 30.509951, 41.271503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241603, -0.804210, 0.543023,
		-0.051884, -0.569506, -0.820348,
		0.968987, 0.170024, -0.179321,
		33.408360, 30.560959, 41.217709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042423, 29.766979, 41.369011>,  <32.730068, 30.441940, 41.343231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042423, 29.766979, 41.369011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357288, 30.013668, 41.371128>,  <33.546207, 30.161682, 41.372398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357288, 30.013668, 41.371128>,  <33.042423, 29.766979, 41.369011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357288, 30.013668, 41.371128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556363, -0.713772, 0.425429,
		0.266153, -0.331935, -0.904976,
		0.787162, 0.616724, 0.005296,
		33.593437, 30.198685, 41.372715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677940, 29.358978, 41.114899>,  <33.042423, 29.766979, 41.369011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677940, 29.358978, 41.114899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784668, 29.664726, 41.349693>,  <33.848705, 29.848175, 41.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784668, 29.664726, 41.349693>,  <33.677940, 29.358978, 41.114899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784668, 29.664726, 41.349693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522314, -0.626549, 0.578468,
		0.809936, 0.152242, -0.566416,
		0.266820, 0.764369, 0.586982,
		33.864716, 29.894037, 41.525787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371521, 29.341902, 41.185684>,  <33.677940, 29.358978, 41.114899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371521, 29.341902, 41.185684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281704, 29.574919, 41.498150>,  <34.227814, 29.714729, 41.685631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281704, 29.574919, 41.498150>,  <34.371521, 29.341902, 41.185684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281704, 29.574919, 41.498150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719143, -0.441892, 0.536251,
		0.657580, 0.682185, -0.319705,
		-0.224547, 0.582541, 0.781168,
		34.214340, 29.749681, 41.732502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091217, 29.488245, 41.517994>,  <34.371521, 29.341902, 41.185684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091217, 29.488245, 41.517994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825150, 29.612520, 41.789589>,  <34.665508, 29.687084, 41.952545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825150, 29.612520, 41.789589>,  <35.091217, 29.488245, 41.517994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825150, 29.612520, 41.789589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599637, -0.319618, 0.733676,
		0.444960, 0.895164, 0.026300,
		-0.665166, 0.310686, 0.678991,
		34.625599, 29.705727, 41.993286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449390, 29.658340, 42.090218>,  <35.091217, 29.488245, 41.517994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449390, 29.658340, 42.090218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086239, 29.607365, 42.249973>,  <34.868347, 29.576780, 42.345825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086239, 29.607365, 42.249973>,  <35.449390, 29.658340, 42.090218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086239, 29.607365, 42.249973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417747, -0.354977, 0.836348,
		0.035191, 0.926148, 0.375514,
		-0.907882, -0.127438, 0.399388,
		34.813873, 29.569134, 42.369789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464565, 29.977924, 42.834908>,  <35.449390, 29.658340, 42.090218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464565, 29.977924, 42.834908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182732, 29.697563, 42.790554>,  <35.013630, 29.529346, 42.763943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182732, 29.697563, 42.790554>,  <35.464565, 29.977924, 42.834908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182732, 29.697563, 42.790554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338712, -0.469485, 0.815388,
		-0.623567, 0.536952, 0.568196,
		-0.704584, -0.700904, -0.110883,
		34.971355, 29.487291, 42.757290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121964, 29.986013, 43.509594>,  <35.464565, 29.977924, 42.834908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121964, 29.986013, 43.509594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038685, 29.640409, 43.326229>,  <34.988716, 29.433046, 43.216209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038685, 29.640409, 43.326229>,  <35.121964, 29.986013, 43.509594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038685, 29.640409, 43.326229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300644, -0.502524, 0.810607,
		-0.930734, 0.030951, 0.364385,
		-0.208201, -0.864009, -0.458410,
		34.976223, 29.381207, 43.188705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701073, 29.587523, 43.998363>,  <35.121964, 29.986013, 43.509594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701073, 29.587523, 43.998363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832455, 29.325840, 43.725853>,  <34.911282, 29.168831, 43.562347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832455, 29.325840, 43.725853>,  <34.701073, 29.587523, 43.998363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832455, 29.325840, 43.725853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344327, -0.588718, 0.731335,
		-0.879522, -0.474788, 0.031896,
		0.328451, -0.654208, -0.681272,
		34.930988, 29.129578, 43.521473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422672, 28.968287, 44.187515>,  <34.701073, 29.587523, 43.998363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422672, 28.968287, 44.187515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728653, 28.850485, 43.958385>,  <34.912239, 28.779804, 43.820908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728653, 28.850485, 43.958385>,  <34.422672, 28.968287, 44.187515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728653, 28.850485, 43.958385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286303, -0.641180, 0.711982,
		-0.576963, -0.708629, -0.406150,
		0.764947, -0.294506, -0.572820,
		34.958138, 28.762133, 43.786541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412071, 28.260765, 44.069424>,  <34.422672, 28.968287, 44.187515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412071, 28.260765, 44.069424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795841, 28.358438, 44.013023>,  <35.026104, 28.417042, 43.979183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795841, 28.358438, 44.013023>,  <34.412071, 28.260765, 44.069424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795841, 28.358438, 44.013023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280531, -0.776168, 0.564682,
		0.028445, -0.581325, -0.813174,
		0.959423, 0.244183, -0.141001,
		35.083668, 28.431694, 43.970722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714504, 27.620428, 44.128887>,  <34.412071, 28.260765, 44.069424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714504, 27.620428, 44.128887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012787, 27.886894, 44.133682>,  <35.191757, 28.046774, 44.136559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012787, 27.886894, 44.133682>,  <34.714504, 27.620428, 44.128887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012787, 27.886894, 44.133682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498436, -0.569712, 0.653445,
		0.442131, -0.481304, -0.756879,
		0.745709, 0.666164, 0.011989,
		35.236500, 28.086744, 44.137280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294975, 27.231361, 44.025661>,  <34.714504, 27.620428, 44.128887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294975, 27.231361, 44.025661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416542, 27.567886, 44.204468>,  <35.489483, 27.769802, 44.311752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416542, 27.567886, 44.204468>,  <35.294975, 27.231361, 44.025661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416542, 27.567886, 44.204468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485873, -0.540480, 0.686883,
		0.819490, 0.008441, -0.573031,
		0.303914, 0.841315, 0.447019,
		35.507717, 27.820280, 44.338573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989254, 27.144697, 44.117874>,  <35.294975, 27.231361, 44.025661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989254, 27.144697, 44.117874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863541, 27.425497, 44.373505>,  <35.788113, 27.593977, 44.526882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863541, 27.425497, 44.373505>,  <35.989254, 27.144697, 44.117874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863541, 27.425497, 44.373505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443483, -0.486653, 0.752656,
		0.839376, 0.519966, -0.158380,
		-0.314279, 0.702000, 0.639081,
		35.769257, 27.636097, 44.565228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569931, 27.290976, 44.558472>,  <35.989254, 27.144697, 44.117874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569931, 27.290976, 44.558472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259670, 27.403069, 44.784687>,  <36.073513, 27.470324, 44.920418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259670, 27.403069, 44.784687>,  <36.569931, 27.290976, 44.558472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259670, 27.403069, 44.784687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362316, -0.536003, 0.762514,
		0.516812, 0.796349, 0.314218,
		-0.775650, 0.280230, 0.565543,
		36.026974, 27.487137, 44.954350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799622, 27.392179, 45.261227>,  <36.569931, 27.290976, 44.558472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799622, 27.392179, 45.261227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407391, 27.382578, 45.339081>,  <36.172050, 27.376818, 45.385796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407391, 27.382578, 45.339081>,  <36.799622, 27.392179, 45.261227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407391, 27.382578, 45.339081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177659, -0.529049, 0.829786,
		0.083056, 0.848252, 0.523040,
		-0.980581, -0.024004, 0.194640,
		36.113216, 27.375376, 45.397472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274387, 27.847887, 45.314480>,  <36.799622, 27.392179, 45.261227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274387, 27.847887, 45.314480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664810, 27.761070, 45.308750>,  <37.899063, 27.708981, 45.305313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664810, 27.761070, 45.308750>,  <37.274387, 27.847887, 45.314480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664810, 27.761070, 45.308750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021377, 0.161254, -0.986681,
		0.216461, 0.962751, 0.162033,
		0.976057, -0.217042, -0.014325,
		37.957626, 27.695957, 45.304451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577480, 28.445839, 45.081924>,  <37.274387, 27.847887, 45.314480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577480, 28.445839, 45.081924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802719, 28.124750, 45.003376>,  <37.937862, 27.932096, 44.956249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802719, 28.124750, 45.003376>,  <37.577480, 28.445839, 45.081924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802719, 28.124750, 45.003376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072119, 0.284446, -0.955975,
		0.823239, 0.524143, 0.218062,
		0.563095, -0.802723, -0.196367,
		37.971649, 27.883934, 44.944466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057640, 28.651909, 44.621178>,  <37.577480, 28.445839, 45.081924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057640, 28.651909, 44.621178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082287, 28.254263, 44.585529>,  <38.097076, 28.015676, 44.564140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082287, 28.254263, 44.585529>,  <38.057640, 28.651909, 44.621178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082287, 28.254263, 44.585529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244221, 0.101594, -0.964383,
		0.967760, 0.037660, 0.249043,
		0.061620, -0.994113, -0.089121,
		38.100773, 27.956030, 44.558792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691490, 28.555910, 44.213291>,  <38.057640, 28.651909, 44.621178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691490, 28.555910, 44.213291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486271, 28.214884, 44.173454>,  <38.363140, 28.010269, 44.149551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486271, 28.214884, 44.173454>,  <38.691490, 28.555910, 44.213291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486271, 28.214884, 44.173454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079794, 0.068151, -0.994479,
		0.854644, -0.518160, 0.033065,
		-0.513046, -0.852564, -0.099591,
		38.332355, 27.959114, 44.143578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110714, 28.183971, 43.767063>,  <38.691490, 28.555910, 44.213291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110714, 28.183971, 43.767063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724499, 28.079865, 43.766087>,  <38.492771, 28.017401, 43.765499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724499, 28.079865, 43.766087>,  <39.110714, 28.183971, 43.767063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724499, 28.079865, 43.766087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065463, 0.251911, -0.965534,
		0.251911, -0.932096, -0.260266,
		0.965534, 0.260266, 0.002441,
		38.434837, 28.001785, 43.765354>
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
