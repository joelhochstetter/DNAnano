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
	<24.439548, 35.003704, 34.110752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387949, 34.862717, 34.481510>,  <24.356989, 34.778126, 34.703964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.387949, 34.862717, 34.481510>,  <24.439548, 35.003704, 34.110752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387949, 34.862717, 34.481510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635865, -0.746647, -0.195430,
		0.760943, 0.564167, 0.320439,
		-0.129000, -0.352467, 0.926890,
		24.349249, 34.756977, 34.759579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157722, 34.910267, 34.461208>,  <24.439548, 35.003704, 34.110752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157722, 34.910267, 34.461208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855356, 34.671886, 34.569603>,  <24.673937, 34.528858, 34.634640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855356, 34.671886, 34.569603>,  <25.157722, 34.910267, 34.461208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855356, 34.671886, 34.569603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600711, -0.795959, -0.074803,
		0.260271, 0.106238, 0.959673,
		-0.755913, -0.595955, 0.270983,
		24.628582, 34.493099, 34.650898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454580, 34.298153, 34.783886>,  <25.157722, 34.910267, 34.461208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454580, 34.298153, 34.783886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092627, 34.152699, 34.695381>,  <24.875454, 34.065426, 34.642277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092627, 34.152699, 34.695381>,  <25.454580, 34.298153, 34.783886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092627, 34.152699, 34.695381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387645, -0.918714, -0.075476,
		-0.175831, -0.154069, 0.972289,
		-0.904884, -0.363632, -0.221263,
		24.821161, 34.043610, 34.629002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210722, 33.681953, 35.181408>,  <25.454580, 34.298153, 34.783886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210722, 33.681953, 35.181408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115683, 33.706394, 34.793633>,  <25.058659, 33.721058, 34.560966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115683, 33.706394, 34.793633>,  <25.210722, 33.681953, 35.181408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115683, 33.706394, 34.793633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575621, -0.795052, -0.191189,
		-0.782437, -0.603456, 0.153731,
		-0.237599, 0.061102, -0.969440,
		25.044403, 33.724724, 34.502800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107819, 33.371056, 35.798790>,  <25.210722, 33.681953, 35.181408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107819, 33.371056, 35.798790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139803, 33.724655, 35.983032>,  <25.158995, 33.936813, 36.093578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139803, 33.724655, 35.983032>,  <25.107819, 33.371056, 35.798790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139803, 33.724655, 35.983032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718095, -0.371566, 0.588454,
		0.691336, 0.283703, -0.664506,
		0.079962, 0.883997, 0.460603,
		25.163792, 33.989853, 36.121212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755791, 33.466026, 35.800621>,  <25.107819, 33.371056, 35.798790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755791, 33.466026, 35.800621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624500, 33.726234, 36.074581>,  <25.545725, 33.882359, 36.238956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624500, 33.726234, 36.074581>,  <25.755791, 33.466026, 35.800621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624500, 33.726234, 36.074581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798105, -0.196857, 0.569452,
		0.505267, 0.733534, -0.454569,
		-0.328227, 0.650519, 0.684903,
		25.526031, 33.921391, 36.280052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435217, 33.343231, 35.756115>,  <25.755791, 33.466026, 35.800621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435217, 33.343231, 35.756115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558752, 33.593819, 36.042377>,  <26.632874, 33.744171, 36.214134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558752, 33.593819, 36.042377>,  <26.435217, 33.343231, 35.756115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558752, 33.593819, 36.042377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950831, -0.184971, -0.248406,
		-0.023241, 0.757184, -0.652788,
		0.308836, 0.626464, 0.715655,
		26.651403, 33.781757, 36.257072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984428, 33.784935, 35.464069>,  <26.435217, 33.343231, 35.756115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984428, 33.784935, 35.464069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220085, 34.039379, 35.663376>,  <27.361479, 34.192047, 35.782959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220085, 34.039379, 35.663376>,  <26.984428, 33.784935, 35.464069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220085, 34.039379, 35.663376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299556, -0.400764, 0.865826,
		0.750450, -0.659355, -0.045557,
		0.589144, 0.636112, 0.498268,
		27.396828, 34.230213, 35.812855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347557, 33.418564, 36.039024>,  <26.984428, 33.784935, 35.464069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347557, 33.418564, 36.039024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346983, 33.808167, 36.129623>,  <27.346638, 34.041927, 36.183983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.346983, 33.808167, 36.129623>,  <27.347557, 33.418564, 36.039024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346983, 33.808167, 36.129623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475525, -0.199919, 0.856685,
		0.879701, -0.106476, 0.463453,
		-0.001437, 0.974010, 0.226501,
		27.346552, 34.100368, 36.197575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694464, 33.527405, 36.747814>,  <27.347557, 33.418564, 36.039024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694464, 33.527405, 36.747814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496918, 33.870831, 36.692738>,  <27.378389, 34.076885, 36.659691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496918, 33.870831, 36.692738>,  <27.694464, 33.527405, 36.747814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496918, 33.870831, 36.692738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342404, -0.046466, 0.938403,
		0.799286, 0.510589, 0.316925,
		-0.493864, 0.858569, -0.137687,
		27.348759, 34.128403, 36.651432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894901, 33.939674, 37.348469>,  <27.694464, 33.527405, 36.747814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894901, 33.939674, 37.348469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551319, 34.088303, 37.207542>,  <27.345169, 34.177479, 37.122986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551319, 34.088303, 37.207542>,  <27.894901, 33.939674, 37.348469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551319, 34.088303, 37.207542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399918, -0.057114, 0.914769,
		0.319776, 0.926647, 0.197655,
		-0.858958, 0.371568, -0.352320,
		27.293633, 34.199772, 37.101845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657644, 34.495667, 37.837688>,  <27.894901, 33.939674, 37.348469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657644, 34.495667, 37.837688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336628, 34.349407, 37.649124>,  <27.144018, 34.261650, 37.535988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336628, 34.349407, 37.649124>,  <27.657644, 34.495667, 37.837688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336628, 34.349407, 37.649124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467934, -0.104367, 0.877579,
		-0.370085, 0.924883, -0.087341,
		-0.802543, -0.365649, -0.471409,
		27.095865, 34.239712, 37.507702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422726, 34.000504, 38.295486>,  <27.657644, 34.495667, 37.837688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422726, 34.000504, 38.295486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224272, 33.655167, 38.332336>,  <27.105200, 33.447964, 38.354446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224272, 33.655167, 38.332336>,  <27.422726, 34.000504, 38.295486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224272, 33.655167, 38.332336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592473, -0.259073, 0.762795,
		-0.634687, 0.433032, 0.640043,
		-0.496133, -0.863345, 0.092129,
		27.075432, 33.396164, 38.359974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634546, 33.733997, 38.150055>,  <27.422726, 34.000504, 38.295486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634546, 33.733997, 38.150055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417213, 34.048847, 38.033279>,  <26.286814, 34.237755, 37.963215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417213, 34.048847, 38.033279>,  <26.634546, 33.733997, 38.150055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417213, 34.048847, 38.033279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630067, 0.152517, -0.761415,
		-0.554801, -0.597644, -0.578807,
		-0.543333, 0.787121, -0.291940,
		26.254213, 34.284985, 37.945698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192747, 33.639858, 37.467396>,  <26.634546, 33.733997, 38.150055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192747, 33.639858, 37.467396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339609, 34.006077, 37.533085>,  <26.427727, 34.225807, 37.572498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339609, 34.006077, 37.533085>,  <26.192747, 33.639858, 37.467396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339609, 34.006077, 37.533085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435497, -0.013194, -0.900094,
		-0.821913, 0.401991, -0.403563,
		0.367154, 0.915548, 0.164222,
		26.449755, 34.280743, 37.582352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031853, 34.042427, 36.884346>,  <26.192747, 33.639858, 37.467396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031853, 34.042427, 36.884346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344017, 34.213745, 37.066566>,  <26.531315, 34.316536, 37.175900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344017, 34.213745, 37.066566>,  <26.031853, 34.042427, 36.884346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344017, 34.213745, 37.066566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436045, 0.149385, -0.887440,
		-0.448136, 0.891207, -0.070173,
		0.780410, 0.428292, 0.455551,
		26.578140, 34.342232, 37.203232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205826, 34.634418, 36.521755>,  <26.031853, 34.042427, 36.884346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205826, 34.634418, 36.521755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541832, 34.536755, 36.715565>,  <26.743437, 34.478157, 36.831848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541832, 34.536755, 36.715565>,  <26.205826, 34.634418, 36.521755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541832, 34.536755, 36.715565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517918, 0.094765, -0.850165,
		0.161660, 0.965094, 0.206058,
		0.840016, -0.244159, 0.484520,
		26.793837, 34.463509, 36.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702044, 35.227608, 36.530373>,  <26.205826, 34.634418, 36.521755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702044, 35.227608, 36.530373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883022, 34.873978, 36.577202>,  <26.991610, 34.661800, 36.605301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883022, 34.873978, 36.577202>,  <26.702044, 35.227608, 36.530373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883022, 34.873978, 36.577202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458710, 0.118130, -0.880699,
		0.764773, 0.452171, 0.458981,
		0.452446, -0.884074, 0.117072,
		27.018757, 34.608757, 36.612324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443163, 35.395691, 36.521351>,  <26.702044, 35.227608, 36.530373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443163, 35.395691, 36.521351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406111, 35.007820, 36.430893>,  <27.383879, 34.775097, 36.376617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406111, 35.007820, 36.430893>,  <27.443163, 35.395691, 36.521351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406111, 35.007820, 36.430893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631302, 0.118443, -0.766439,
		0.769985, -0.213765, 0.601189,
		-0.092631, -0.969678, -0.226149,
		27.378321, 34.716915, 36.363049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108757, 35.073669, 36.510384>,  <27.443163, 35.395691, 36.521351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108757, 35.073669, 36.510384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860603, 34.854404, 36.286015>,  <27.711710, 34.722843, 36.151394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860603, 34.854404, 36.286015>,  <28.108757, 35.073669, 36.510384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860603, 34.854404, 36.286015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673098, -0.005030, -0.739536,
		0.402566, -0.836355, 0.372090,
		-0.620386, -0.548165, -0.560924,
		27.674488, 34.689957, 36.117737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549620, 34.722443, 36.173950>,  <28.108757, 35.073669, 36.510384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549620, 34.722443, 36.173950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200031, 34.713402, 35.979767>,  <27.990278, 34.707977, 35.863258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200031, 34.713402, 35.979767>,  <28.549620, 34.722443, 36.173950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200031, 34.713402, 35.979767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484461, 0.038388, -0.873970,
		0.038388, -0.999007, -0.022601,
		0.873970, 0.022601, 0.485454,
		27.937840, 34.706623, 35.834129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438223, 34.094742, 35.776077>,  <28.549620, 34.722443, 36.173950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438223, 34.094742, 35.776077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246082, 34.383842, 35.577328>,  <28.130798, 34.557304, 35.458076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246082, 34.383842, 35.577328>,  <28.438223, 34.094742, 35.776077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246082, 34.383842, 35.577328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531052, -0.211199, -0.820597,
		-0.698030, -0.658044, -0.282371,
		-0.480352, 0.722755, -0.496878,
		28.101976, 34.600670, 35.428265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114273, 34.308105, 35.469696>,  <28.438223, 34.094742, 35.776077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114273, 34.308105, 35.469696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163794, 33.961014, 35.662243>,  <29.193506, 33.752758, 35.777771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163794, 33.961014, 35.662243>,  <29.114273, 34.308105, 35.469696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163794, 33.961014, 35.662243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882318, 0.318241, 0.346753,
		-0.454079, 0.381789, 0.805015,
		0.123802, -0.867732, 0.481366,
		29.200933, 33.700695, 35.806652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433922, 34.424976, 36.166252>,  <29.114273, 34.308105, 35.469696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433922, 34.424976, 36.166252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497581, 34.046764, 36.052654>,  <29.535778, 33.819839, 35.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497581, 34.046764, 36.052654>,  <29.433922, 34.424976, 36.166252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497581, 34.046764, 36.052654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920307, 0.037962, 0.389351,
		-0.357360, -0.323327, 0.876215,
		0.159150, -0.945526, -0.283994,
		29.545326, 33.763107, 35.967457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098873, 34.663189, 36.089302>,  <29.433922, 34.424976, 36.166252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098873, 34.663189, 36.089302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904074, 34.934872, 35.869663>,  <29.787195, 35.097881, 35.737881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.904074, 34.934872, 35.869663>,  <30.098873, 34.663189, 36.089302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904074, 34.934872, 35.869663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270770, -0.715120, -0.644427,
		-0.830373, -0.165154, 0.532170,
		-0.486996, 0.679210, -0.549098,
		29.757975, 35.138634, 35.704933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326340, 33.946373, 36.360409>,  <30.098873, 34.663189, 36.089302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326340, 33.946373, 36.360409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079048, 34.077465, 36.646175>,  <29.930674, 34.156120, 36.817635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079048, 34.077465, 36.646175>,  <30.326340, 33.946373, 36.360409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079048, 34.077465, 36.646175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719384, 0.130265, -0.682288,
		-0.316669, -0.935748, 0.155230,
		-0.618228, 0.327730, 0.714413,
		29.893579, 34.175785, 36.860500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262239, 33.784863, 35.726570>,  <30.326340, 33.946373, 36.360409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262239, 33.784863, 35.726570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619587, 33.621120, 35.800678>,  <30.833996, 33.522877, 35.845142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619587, 33.621120, 35.800678>,  <30.262239, 33.784863, 35.726570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619587, 33.621120, 35.800678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041912, -0.486448, -0.872704,
		0.447368, 0.771880, -0.451733,
		0.893367, -0.409353, 0.185270,
		30.887598, 33.498314, 35.856258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354681, 33.559181, 34.970867>,  <30.262239, 33.784863, 35.726570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354681, 33.559181, 34.970867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646471, 33.404037, 35.196232>,  <30.821545, 33.310951, 35.331451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646471, 33.404037, 35.196232>,  <30.354681, 33.559181, 34.970867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646471, 33.404037, 35.196232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133572, -0.727063, -0.673452,
		0.670840, 0.566522, -0.478567,
		0.729474, -0.387855, 0.563415,
		30.865313, 33.287682, 35.365257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975685, 33.457901, 34.556431>,  <30.354681, 33.559181, 34.970867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975685, 33.457901, 34.556431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966974, 33.208473, 34.869019>,  <30.961748, 33.058819, 35.056572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966974, 33.208473, 34.869019>,  <30.975685, 33.457901, 34.556431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966974, 33.208473, 34.869019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091674, -0.779605, -0.619526,
		0.995551, 0.058148, 0.074143,
		-0.021778, -0.623567, 0.781467,
		30.960442, 33.021404, 35.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476494, 32.824890, 34.488167>,  <30.975685, 33.457901, 34.556431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476494, 32.824890, 34.488167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182316, 32.705948, 34.731709>,  <31.005808, 32.634583, 34.877834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182316, 32.705948, 34.731709>,  <31.476494, 32.824890, 34.488167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182316, 32.705948, 34.731709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130002, -0.819950, -0.557478,
		0.664996, -0.489147, 0.564372,
		-0.735446, -0.297351, 0.608853,
		30.961681, 32.616741, 34.914364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610678, 32.048252, 34.665604>,  <31.476494, 32.824890, 34.488167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610678, 32.048252, 34.665604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233891, 32.113873, 34.782761>,  <31.007818, 32.153244, 34.853054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233891, 32.113873, 34.782761>,  <31.610678, 32.048252, 34.665604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233891, 32.113873, 34.782761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254846, -0.917355, -0.305799,
		0.218520, -0.362695, 0.905926,
		-0.941968, 0.164049, 0.292892,
		30.951300, 32.163086, 34.870628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496170, 31.698000, 35.300846>,  <31.610678, 32.048252, 34.665604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496170, 31.698000, 35.300846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155470, 31.746117, 35.096863>,  <30.951050, 31.774986, 34.974472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155470, 31.746117, 35.096863>,  <31.496170, 31.698000, 35.300846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155470, 31.746117, 35.096863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064635, -0.989977, -0.125570,
		-0.519948, -0.073993, 0.850987,
		-0.851749, 0.120294, -0.509954,
		30.899944, 31.782206, 34.943878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011900, 31.186886, 35.613762>,  <31.496170, 31.698000, 35.300846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011900, 31.186886, 35.613762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850954, 31.266556, 35.256340>,  <30.754387, 31.314358, 35.041889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850954, 31.266556, 35.256340>,  <31.011900, 31.186886, 35.613762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850954, 31.266556, 35.256340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158266, -0.976484, -0.146392,
		-0.901695, 0.082516, 0.424425,
		-0.402365, 0.199173, -0.893551,
		30.730246, 31.326307, 34.988274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378468, 30.832552, 35.495792>,  <31.011900, 31.186886, 35.613762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378468, 30.832552, 35.495792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533506, 30.919651, 35.137497>,  <30.626530, 30.971910, 34.922520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533506, 30.919651, 35.137497>,  <30.378468, 30.832552, 35.495792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533506, 30.919651, 35.137497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093834, -0.957335, -0.273324,
		-0.917040, 0.189991, -0.350630,
		0.387599, 0.217748, -0.895742,
		30.649786, 30.984976, 34.868774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882303, 30.537827, 34.949951>,  <30.378468, 30.832552, 35.495792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882303, 30.537827, 34.949951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259970, 30.550280, 34.818752>,  <30.486570, 30.557751, 34.740032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259970, 30.550280, 34.818752>,  <29.882303, 30.537827, 34.949951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259970, 30.550280, 34.818752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057905, -0.964350, -0.258215,
		-0.324342, 0.262791, -0.908704,
		0.944166, 0.031131, -0.327996,
		30.543219, 30.559620, 34.720352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943213, 30.293880, 34.282173>,  <29.882303, 30.537827, 34.949951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943213, 30.293880, 34.282173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301390, 30.244253, 34.453190>,  <30.516296, 30.214478, 34.555801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301390, 30.244253, 34.453190>,  <29.943213, 30.293880, 34.282173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301390, 30.244253, 34.453190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023890, -0.945605, -0.324437,
		0.444539, 0.300729, -0.843770,
		0.895441, -0.124067, 0.427543,
		30.570023, 30.207033, 34.581451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225534, 30.855513, 33.845982>,  <29.943213, 30.293880, 34.282173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225534, 30.855513, 33.845982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344515, 31.002058, 34.198639>,  <30.415903, 31.089985, 34.410233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344515, 31.002058, 34.198639>,  <30.225534, 30.855513, 33.845982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344515, 31.002058, 34.198639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081794, 0.929827, -0.358790,
		-0.951227, 0.034608, 0.306543,
		0.297449, 0.366365, 0.881647,
		30.433750, 31.111967, 34.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253616, 31.615423, 33.767574>,  <30.225534, 30.855513, 33.845982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253616, 31.615423, 33.767574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422937, 31.550257, 34.124062>,  <30.524530, 31.511158, 34.337955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422937, 31.550257, 34.124062>,  <30.253616, 31.615423, 33.767574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422937, 31.550257, 34.124062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034581, 0.980078, 0.195582,
		-0.905328, -0.113609, 0.409236,
		0.423303, -0.162914, 0.891221,
		30.549929, 31.501383, 34.391426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818710, 32.075058, 34.295383>,  <30.253616, 31.615423, 33.767574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818710, 32.075058, 34.295383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160225, 31.978809, 34.480057>,  <30.365133, 31.921059, 34.590858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160225, 31.978809, 34.480057>,  <29.818710, 32.075058, 34.295383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160225, 31.978809, 34.480057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032231, 0.909512, 0.414427,
		-0.519626, -0.338951, 0.784284,
		0.853785, -0.240625, 0.461681,
		30.416361, 31.906622, 34.618561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015776, 31.553944, 34.803730>,  <29.818710, 32.075058, 34.295383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015776, 31.553944, 34.803730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793352, 31.269178, 34.632156>,  <29.659899, 31.098320, 34.529213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793352, 31.269178, 34.632156>,  <30.015776, 31.553944, 34.803730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793352, 31.269178, 34.632156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073960, 0.471641, -0.878684,
		0.827847, -0.520321, -0.209606,
		-0.556056, -0.711913, -0.428930,
		29.626535, 31.055605, 34.503479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696106, 32.246429, 35.080070>,  <30.015776, 31.553944, 34.803730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696106, 32.246429, 35.080070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091078, 32.237366, 35.017494>,  <30.328060, 32.231926, 34.979950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091078, 32.237366, 35.017494>,  <29.696106, 32.246429, 35.080070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091078, 32.237366, 35.017494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092559, 0.885156, 0.455996,
		0.128136, -0.464742, 0.876125,
		0.987428, -0.022664, -0.156437,
		30.387306, 32.230568, 34.970562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081354, 32.301811, 35.751682>,  <29.696106, 32.246429, 35.080070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081354, 32.301811, 35.751682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328238, 32.405144, 35.454411>,  <30.476368, 32.467144, 35.276047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328238, 32.405144, 35.454411>,  <30.081354, 32.301811, 35.751682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328238, 32.405144, 35.454411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222585, 0.848648, 0.479846,
		0.754659, -0.461587, 0.466292,
		0.617208, 0.258331, -0.743182,
		30.513399, 32.482643, 35.231457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821999, 32.242489, 36.015465>,  <30.081354, 32.301811, 35.751682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821999, 32.242489, 36.015465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752228, 32.518387, 35.734371>,  <30.710365, 32.683926, 35.565716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752228, 32.518387, 35.734371>,  <30.821999, 32.242489, 36.015465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752228, 32.518387, 35.734371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294477, 0.717548, 0.631195,
		0.939606, -0.096842, -0.328272,
		-0.174425, 0.689743, -0.702730,
		30.699900, 32.725311, 35.523552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376507, 32.570019, 35.763634>,  <30.821999, 32.242489, 36.015465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376507, 32.570019, 35.763634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059776, 32.813454, 35.784138>,  <30.869738, 32.959515, 35.796440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059776, 32.813454, 35.784138>,  <31.376507, 32.570019, 35.763634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059776, 32.813454, 35.784138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346768, 0.378909, 0.858009,
		0.502754, 0.697169, -0.511071,
		-0.791827, 0.608591, 0.051258,
		30.822227, 32.996033, 35.799515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674240, 33.211243, 35.987354>,  <31.376507, 32.570019, 35.763634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674240, 33.211243, 35.987354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288708, 33.197121, 36.093018>,  <31.057388, 33.188648, 36.156418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288708, 33.197121, 36.093018>,  <31.674240, 33.211243, 35.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288708, 33.197121, 36.093018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221363, 0.445915, 0.867270,
		-0.148410, 0.894379, -0.421973,
		-0.963832, -0.035302, 0.264161,
		30.999557, 33.186531, 36.172264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565485, 33.740475, 36.470261>,  <31.674240, 33.211243, 35.987354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565485, 33.740475, 36.470261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238937, 33.518665, 36.534809>,  <31.043009, 33.385578, 36.573540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238937, 33.518665, 36.534809>,  <31.565485, 33.740475, 36.470261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238937, 33.518665, 36.534809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120441, 0.436745, 0.891486,
		-0.564831, 0.708347, -0.423333,
		-0.816370, -0.554525, 0.161373,
		30.994026, 33.352306, 36.583221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771576, 34.172047, 35.936047>,  <31.565485, 33.740475, 36.470261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771576, 34.172047, 35.936047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503159, 33.997917, 35.695984>,  <31.342108, 33.893440, 35.551945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503159, 33.997917, 35.695984>,  <31.771576, 34.172047, 35.936047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503159, 33.997917, 35.695984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168945, 0.698399, -0.695483,
		0.721916, -0.568091, -0.395107,
		-0.671040, -0.435329, -0.600161,
		31.301846, 33.867317, 35.515934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143734, 34.042656, 35.277760>,  <31.771576, 34.172047, 35.936047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143734, 34.042656, 35.277760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749252, 34.104145, 35.253193>,  <31.512564, 34.141037, 35.238453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749252, 34.104145, 35.253193>,  <32.143734, 34.042656, 35.277760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749252, 34.104145, 35.253193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153081, 0.705766, -0.691708,
		-0.062985, -0.691567, -0.719561,
		-0.986204, 0.153719, -0.061413,
		31.453390, 34.150261, 35.234768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285057, 34.771049, 35.603806>,  <32.143734, 34.042656, 35.277760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285057, 34.771049, 35.603806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373390, 34.514687, 35.897873>,  <32.426388, 34.360867, 36.074314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373390, 34.514687, 35.897873>,  <32.285057, 34.771049, 35.603806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373390, 34.514687, 35.897873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911493, 0.403805, 0.078237,
		-0.347007, 0.652822, 0.673357,
		0.220830, -0.640909, 0.735166,
		32.439640, 34.322414, 36.118423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605949, 35.123177, 36.086109>,  <32.285057, 34.771049, 35.603806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605949, 35.123177, 36.086109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753899, 34.789463, 36.249653>,  <32.842670, 34.589237, 36.347778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753899, 34.789463, 36.249653>,  <32.605949, 35.123177, 36.086109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753899, 34.789463, 36.249653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863390, 0.471186, 0.180392,
		-0.343147, 0.286284, 0.894590,
		0.369875, -0.834282, 0.408860,
		32.864861, 34.539177, 36.372311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811195, 35.099281, 36.822701>,  <32.605949, 35.123177, 36.086109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811195, 35.099281, 36.822701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035072, 34.875618, 36.578053>,  <33.169399, 34.741421, 36.431263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035072, 34.875618, 36.578053>,  <32.811195, 35.099281, 36.822701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035072, 34.875618, 36.578053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757754, 0.644108, 0.104565,
		0.335483, -0.521985, 0.784208,
		0.559696, -0.559157, -0.611624,
		33.202980, 34.707870, 36.394566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565998, 34.964020, 37.178341>,  <32.811195, 35.099281, 36.822701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565998, 34.964020, 37.178341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569298, 34.929817, 36.779819>,  <33.571278, 34.909294, 36.540707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569298, 34.929817, 36.779819>,  <33.565998, 34.964020, 37.178341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569298, 34.929817, 36.779819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914915, 0.402744, -0.026985,
		0.403562, -0.911310, 0.081554,
		0.008253, -0.085505, -0.996303,
		33.571774, 34.904167, 36.480930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251526, 34.940548, 37.036339>,  <33.565998, 34.964020, 37.178341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251526, 34.940548, 37.036339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090691, 35.004341, 36.675697>,  <33.994190, 35.042618, 36.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090691, 35.004341, 36.675697>,  <34.251526, 34.940548, 37.036339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090691, 35.004341, 36.675697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728043, 0.652830, -0.209202,
		0.555231, -0.740525, -0.378604,
		-0.402084, 0.159485, -0.901606,
		33.970066, 35.052185, 36.405216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815922, 35.155869, 36.649853>,  <34.251526, 34.940548, 37.036339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815922, 35.155869, 36.649853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531513, 35.232948, 36.379353>,  <34.360867, 35.279198, 36.217052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531513, 35.232948, 36.379353>,  <34.815922, 35.155869, 36.649853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531513, 35.232948, 36.379353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652887, 0.538052, -0.533140,
		0.261118, -0.820588, -0.508382,
		-0.711024, 0.192704, -0.676246,
		34.318207, 35.290760, 36.176479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334965, 34.950706, 37.149765>,  <34.815922, 35.155869, 36.649853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334965, 34.950706, 37.149765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663292, 34.790703, 37.312859>,  <35.860291, 34.694702, 37.410713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663292, 34.790703, 37.312859>,  <35.334965, 34.950706, 37.149765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663292, 34.790703, 37.312859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419979, 0.061154, 0.905471,
		-0.387132, -0.914468, -0.117800,
		0.820821, -0.400010, 0.407731,
		35.909538, 34.670700, 37.435177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177818, 34.465096, 37.515591>,  <35.334965, 34.950706, 37.149765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177818, 34.465096, 37.515591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530960, 34.588367, 37.657349>,  <35.742844, 34.662331, 37.742405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530960, 34.588367, 37.657349>,  <35.177818, 34.465096, 37.515591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530960, 34.588367, 37.657349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397939, 0.090094, 0.912977,
		0.249434, -0.947052, 0.202177,
		0.882852, 0.308182, 0.354396,
		35.795815, 34.680820, 37.763668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404427, 34.011909, 38.136341>,  <35.177818, 34.465096, 37.515591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404427, 34.011909, 38.136341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565342, 34.377991, 38.145844>,  <35.661892, 34.597641, 38.151546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565342, 34.377991, 38.145844>,  <35.404427, 34.011909, 38.136341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565342, 34.377991, 38.145844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396791, 0.150907, 0.905419,
		0.825059, -0.373666, 0.423853,
		0.402287, 0.915205, 0.023760,
		35.686028, 34.652554, 38.152973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577015, 34.141418, 38.922756>,  <35.404427, 34.011909, 38.136341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577015, 34.141418, 38.922756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566090, 34.494762, 38.735596>,  <35.559532, 34.706768, 38.623299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566090, 34.494762, 38.735596>,  <35.577015, 34.141418, 38.922756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566090, 34.494762, 38.735596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329447, 0.433973, 0.838530,
		0.943779, 0.177056, 0.279164,
		-0.027317, 0.883356, -0.467905,
		35.557896, 34.759769, 38.595222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476891, 33.305038, 38.873287>,  <35.577015, 34.141418, 38.922756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476891, 33.305038, 38.873287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371922, 33.190910, 39.242012>,  <35.308941, 33.122433, 39.463245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371922, 33.190910, 39.242012>,  <35.476891, 33.305038, 38.873287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371922, 33.190910, 39.242012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342333, 0.865624, 0.365382,
		-0.902188, 0.411449, -0.129484,
		-0.262420, -0.285316, 0.921808,
		35.293194, 33.105316, 39.518555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065144, 33.808857, 39.303379>,  <35.476891, 33.305038, 38.873287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065144, 33.808857, 39.303379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119175, 34.144917, 39.513485>,  <35.151596, 34.346554, 39.639549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119175, 34.144917, 39.513485>,  <35.065144, 33.808857, 39.303379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119175, 34.144917, 39.513485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219700, 0.491532, -0.842691,
		-0.966170, 0.229232, -0.118185,
		0.135080, 0.840148, 0.525266,
		35.159698, 34.396961, 39.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826111, 34.456680, 38.954033>,  <35.065144, 33.808857, 39.303379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826111, 34.456680, 38.954033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124184, 34.555691, 39.201721>,  <35.303028, 34.615097, 39.350334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124184, 34.555691, 39.201721>,  <34.826111, 34.456680, 38.954033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124184, 34.555691, 39.201721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437056, 0.520046, -0.733849,
		-0.503666, 0.817486, 0.279350,
		0.745186, 0.247523, 0.619217,
		35.347740, 34.629948, 39.387486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965912, 35.176472, 38.884342>,  <34.826111, 34.456680, 38.954033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965912, 35.176472, 38.884342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292980, 34.995914, 39.027260>,  <35.489220, 34.887581, 39.113010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292980, 34.995914, 39.027260>,  <34.965912, 35.176472, 38.884342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292980, 34.995914, 39.027260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503112, 0.258660, -0.824605,
		0.279804, 0.854014, 0.438600,
		0.817672, -0.451393, 0.357290,
		35.538280, 34.860497, 39.134445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500690, 35.668999, 38.654205>,  <34.965912, 35.176472, 38.884342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500690, 35.668999, 38.654205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678349, 35.311241, 38.675335>,  <35.784943, 35.096584, 38.688011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678349, 35.311241, 38.675335>,  <35.500690, 35.668999, 38.654205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678349, 35.311241, 38.675335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467283, 0.180938, -0.865395,
		0.764450, 0.409041, 0.498299,
		0.444143, -0.894398, 0.052820,
		35.811592, 35.042923, 38.691181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293571, 35.744633, 38.366066>,  <35.500690, 35.668999, 38.654205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293571, 35.744633, 38.366066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139999, 35.380550, 38.303932>,  <36.047855, 35.162102, 38.266651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139999, 35.380550, 38.303932>,  <36.293571, 35.744633, 38.366066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139999, 35.380550, 38.303932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375959, -0.000446, -0.926637,
		0.843357, -0.414164, 0.342369,
		-0.383932, -0.910202, -0.155333,
		36.024818, 35.107491, 38.257332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839012, 35.282688, 38.222946>,  <36.293571, 35.744633, 38.366066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839012, 35.282688, 38.222946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515709, 35.107239, 38.065807>,  <36.321728, 35.001968, 37.971523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515709, 35.107239, 38.065807>,  <36.839012, 35.282688, 38.222946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515709, 35.107239, 38.065807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496222, -0.148234, -0.855448,
		0.316989, -0.886360, 0.337468,
		-0.808258, -0.438627, -0.392842,
		36.273232, 34.975651, 37.947956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229591, 35.217442, 37.629166>,  <36.839012, 35.282688, 38.222946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229591, 35.217442, 37.629166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868435, 35.068848, 37.542637>,  <36.651741, 34.979691, 37.490719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868435, 35.068848, 37.542637>,  <37.229591, 35.217442, 37.629166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868435, 35.068848, 37.542637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347669, -0.335071, -0.875702,
		0.252823, -0.865869, 0.431684,
		-0.902888, -0.371481, -0.216322,
		36.597569, 34.957405, 37.477741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270214, 34.438267, 37.423206>,  <37.229591, 35.217442, 37.629166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270214, 34.438267, 37.423206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974709, 34.648361, 37.254276>,  <36.797405, 34.774418, 37.152920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974709, 34.648361, 37.254276>,  <37.270214, 34.438267, 37.423206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974709, 34.648361, 37.254276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326518, -0.269246, -0.906031,
		-0.589592, -0.807236, 0.027408,
		-0.738761, 0.525239, -0.422322,
		36.753078, 34.805931, 37.127579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721569, 34.046997, 36.981236>,  <37.270214, 34.438267, 37.423206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721569, 34.046997, 36.981236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795403, 34.424847, 36.872711>,  <36.839703, 34.651558, 36.807594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795403, 34.424847, 36.872711>,  <36.721569, 34.046997, 36.981236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795403, 34.424847, 36.872711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227477, -0.309625, -0.923248,
		-0.956129, 0.108702, -0.272033,
		0.184587, 0.944625, -0.271314,
		36.850777, 34.708233, 36.791317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364029, 34.180470, 36.345589>,  <36.721569, 34.046997, 36.981236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364029, 34.180470, 36.345589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656746, 34.452740, 36.359207>,  <36.832375, 34.616104, 36.367378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656746, 34.452740, 36.359207>,  <36.364029, 34.180470, 36.345589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656746, 34.452740, 36.359207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246942, -0.218254, -0.944132,
		-0.635220, 0.699314, -0.327804,
		0.731789, 0.680680, 0.034051,
		36.876282, 34.656944, 36.369423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278122, 34.601543, 35.796837>,  <36.364029, 34.180470, 36.345589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278122, 34.601543, 35.796837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659290, 34.614044, 35.917484>,  <36.887989, 34.621544, 35.989872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659290, 34.614044, 35.917484>,  <36.278122, 34.601543, 35.796837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659290, 34.614044, 35.917484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296394, -0.305994, -0.904720,
		0.064020, 0.951520, -0.300849,
		0.952918, 0.031250, 0.301615,
		36.945168, 34.623421, 36.007969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552479, 35.045101, 35.254211>,  <36.278122, 34.601543, 35.796837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552479, 35.045101, 35.254211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829548, 34.822651, 35.437916>,  <36.995789, 34.689182, 35.548138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829548, 34.822651, 35.437916>,  <36.552479, 35.045101, 35.254211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829548, 34.822651, 35.437916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156402, -0.505794, -0.848357,
		0.704086, 0.659468, -0.263373,
		0.692677, -0.556124, 0.459265,
		37.037350, 34.655815, 35.575695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101616, 35.069893, 34.824848>,  <36.552479, 35.045101, 35.254211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101616, 35.069893, 34.824848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194042, 34.755417, 35.054111>,  <37.249500, 34.566730, 35.191669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194042, 34.755417, 35.054111>,  <37.101616, 35.069893, 34.824848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194042, 34.755417, 35.054111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420838, -0.450376, -0.787437,
		0.877213, 0.423159, 0.226791,
		0.231070, -0.786192, 0.573157,
		37.263363, 34.519558, 35.226059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657433, 34.850266, 34.527245>,  <37.101616, 35.069893, 34.824848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657433, 34.850266, 34.527245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540161, 34.527996, 34.733135>,  <37.469799, 34.334637, 34.856670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540161, 34.527996, 34.733135>,  <37.657433, 34.850266, 34.527245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540161, 34.527996, 34.733135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154010, -0.571149, -0.806269,
		0.943571, -0.157111, 0.291532,
		-0.293182, -0.805671, 0.514722,
		37.452206, 34.286293, 34.887550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110600, 34.300335, 34.306587>,  <37.657433, 34.850266, 34.527245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110600, 34.300335, 34.306587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810112, 34.102047, 34.480907>,  <37.629818, 33.983074, 34.585499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810112, 34.102047, 34.480907>,  <38.110600, 34.300335, 34.306587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810112, 34.102047, 34.480907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037097, -0.690925, -0.721974,
		0.659007, -0.526195, 0.537427,
		-0.751221, -0.495723, 0.435804,
		37.584747, 33.953331, 34.611649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329468, 33.619534, 34.159527>,  <38.110600, 34.300335, 34.306587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329468, 33.619534, 34.159527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945576, 33.583752, 34.266041>,  <37.715240, 33.562283, 34.329948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945576, 33.583752, 34.266041>,  <38.329468, 33.619534, 34.159527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945576, 33.583752, 34.266041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178969, -0.535940, -0.825069,
		0.216522, -0.839503, 0.498349,
		-0.959733, -0.089457, 0.266287,
		37.657654, 33.556915, 34.345928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145840, 32.976761, 33.923019>,  <38.329468, 33.619534, 34.159527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145840, 32.976761, 33.923019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797981, 33.164017, 33.985699>,  <37.589264, 33.276371, 34.023308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797981, 33.164017, 33.985699>,  <38.145840, 32.976761, 33.923019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797981, 33.164017, 33.985699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405366, -0.495993, -0.767900,
		-0.281765, -0.731323, 0.621108,
		-0.869648, 0.468143, 0.156700,
		37.537086, 33.304459, 34.032707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597866, 32.495712, 34.140343>,  <38.145840, 32.976761, 33.923019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597866, 32.495712, 34.140343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423344, 32.806168, 33.958248>,  <37.318630, 32.992439, 33.848991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423344, 32.806168, 33.958248>,  <37.597866, 32.495712, 34.140343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423344, 32.806168, 33.958248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380939, -0.617690, -0.688000,
		-0.815181, -0.126761, 0.565165,
		-0.436309, 0.776138, -0.455241,
		37.292450, 33.039009, 33.821674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964027, 32.263996, 33.947895>,  <37.597866, 32.495712, 34.140343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964027, 32.263996, 33.947895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992851, 32.589172, 33.716747>,  <37.010147, 32.784279, 33.578056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992851, 32.589172, 33.716747>,  <36.964027, 32.263996, 33.947895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992851, 32.589172, 33.716747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608115, -0.423425, -0.671497,
		-0.790572, 0.399800, 0.463849,
		0.072060, 0.812940, -0.577872,
		37.014469, 32.833054, 33.543385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426903, 32.190689, 33.479580>,  <36.964027, 32.263996, 33.947895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426903, 32.190689, 33.479580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605278, 32.513222, 33.324162>,  <36.712303, 32.706741, 33.230911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605278, 32.513222, 33.324162>,  <36.426903, 32.190689, 33.479580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605278, 32.513222, 33.324162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452659, -0.171332, -0.875069,
		-0.772166, 0.566106, 0.288589,
		0.445937, 0.806331, -0.388550,
		36.739059, 32.755119, 33.207596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927952, 32.506508, 33.107441>,  <36.426903, 32.190689, 33.479580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927952, 32.506508, 33.107441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282665, 32.614697, 32.957527>,  <36.495495, 32.679611, 32.867580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282665, 32.614697, 32.957527>,  <35.927952, 32.506508, 33.107441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282665, 32.614697, 32.957527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410466, 0.088153, -0.907605,
		-0.212442, 0.958684, 0.189192,
		0.886784, 0.270470, -0.374780,
		36.548702, 32.695839, 32.845093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778645, 32.997364, 32.595963>,  <35.927952, 32.506508, 33.107441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778645, 32.997364, 32.595963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159012, 32.916389, 32.502354>,  <36.387234, 32.867805, 32.446190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159012, 32.916389, 32.502354>,  <35.778645, 32.997364, 32.595963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159012, 32.916389, 32.502354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223400, 0.074141, -0.971903,
		0.214103, 0.976484, 0.025277,
		0.950922, -0.202441, -0.234020,
		36.444290, 32.855656, 32.432148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074558, 33.511219, 32.075394>,  <35.778645, 32.997364, 32.595963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074558, 33.511219, 32.075394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293106, 33.180332, 32.022945>,  <36.424236, 32.981800, 31.991476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293106, 33.180332, 32.022945>,  <36.074558, 33.511219, 32.075394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293106, 33.180332, 32.022945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293408, -0.042408, -0.955046,
		0.784466, 0.560285, -0.265882,
		0.546374, -0.827213, -0.131125,
		36.457020, 32.932167, 31.983608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420044, 33.646336, 31.529276>,  <36.074558, 33.511219, 32.075394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420044, 33.646336, 31.529276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434822, 33.246830, 31.542587>,  <36.443691, 33.007126, 31.550573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434822, 33.246830, 31.542587>,  <36.420044, 33.646336, 31.529276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434822, 33.246830, 31.542587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285676, -0.042466, -0.957385,
		0.957614, 0.025867, -0.286892,
		0.036948, -0.998763, 0.033277,
		36.445908, 32.947201, 31.552570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891521, 33.490520, 30.968866>,  <36.420044, 33.646336, 31.529276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891521, 33.490520, 30.968866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649956, 33.177357, 31.028641>,  <36.505016, 32.989456, 31.064507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649956, 33.177357, 31.028641>,  <36.891521, 33.490520, 30.968866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649956, 33.177357, 31.028641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094020, -0.116204, -0.988765,
		0.791483, -0.611182, -0.003432,
		-0.603917, -0.782913, 0.149437,
		36.468781, 32.942482, 31.073471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160561, 32.799915, 30.608765>,  <36.891521, 33.490520, 30.968866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160561, 32.799915, 30.608765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767689, 32.744720, 30.659811>,  <36.531967, 32.711605, 30.690439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767689, 32.744720, 30.659811>,  <37.160561, 32.799915, 30.608765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767689, 32.744720, 30.659811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082308, -0.294645, -0.952056,
		0.168970, -0.945592, 0.278037,
		-0.982178, -0.137984, 0.127616,
		36.473034, 32.703327, 30.698095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023777, 32.320206, 30.133924>,  <37.160561, 32.799915, 30.608765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023777, 32.320206, 30.133924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644726, 32.405628, 30.228916>,  <36.417294, 32.456882, 30.285912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644726, 32.405628, 30.228916>,  <37.023777, 32.320206, 30.133924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644726, 32.405628, 30.228916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298376, -0.326800, -0.896757,
		-0.113897, -0.920651, 0.373403,
		-0.947628, 0.213553, 0.237478,
		36.360435, 32.469696, 30.300159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666759, 31.792110, 29.829065>,  <37.023777, 32.320206, 30.133924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666759, 31.792110, 29.829065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362839, 32.040154, 29.907213>,  <36.180485, 32.188980, 29.954102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362839, 32.040154, 29.907213>,  <36.666759, 31.792110, 29.829065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362839, 32.040154, 29.907213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363116, -0.155480, -0.918680,
		-0.539303, -0.768957, 0.343304,
		-0.759802, 0.620106, 0.195370,
		36.134899, 32.226185, 29.965824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107628, 31.332901, 29.606655>,  <36.666759, 31.792110, 29.829065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107628, 31.332901, 29.606655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967705, 31.707582, 29.600645>,  <35.883751, 31.932390, 29.597038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967705, 31.707582, 29.600645>,  <36.107628, 31.332901, 29.606655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967705, 31.707582, 29.600645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347960, -0.144803, -0.926259,
		-0.869805, -0.318781, 0.376588,
		-0.349805, 0.936702, -0.015028,
		35.862762, 31.988594, 29.596136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352596, 31.303005, 29.504530>,  <36.107628, 31.332901, 29.606655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352596, 31.303005, 29.504530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474678, 31.659227, 29.369616>,  <35.547928, 31.872961, 29.288668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474678, 31.659227, 29.369616>,  <35.352596, 31.303005, 29.504530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474678, 31.659227, 29.369616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456723, -0.173904, -0.872445,
		-0.835618, 0.420317, 0.353662,
		0.305200, 0.890557, -0.337286,
		35.566238, 31.926394, 29.268431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839371, 31.619390, 29.136068>,  <35.352596, 31.303005, 29.504530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839371, 31.619390, 29.136068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163998, 31.809307, 28.999868>,  <35.358772, 31.923256, 28.918148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163998, 31.809307, 28.999868>,  <34.839371, 31.619390, 29.136068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163998, 31.809307, 28.999868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266217, -0.218277, -0.938873,
		-0.520091, 0.852602, -0.050749,
		0.811563, 0.474789, -0.340501,
		35.407467, 31.951744, 28.897718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695560, 31.891752, 28.500856>,  <34.839371, 31.619390, 29.136068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695560, 31.891752, 28.500856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092789, 31.936626, 28.486843>,  <35.331127, 31.963551, 28.478436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092789, 31.936626, 28.486843>,  <34.695560, 31.891752, 28.500856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092789, 31.936626, 28.486843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041473, 0.055581, -0.997593,
		-0.109967, 0.992132, 0.059849,
		0.993070, 0.112185, -0.035034,
		35.390709, 31.970282, 28.476334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823418, 32.485023, 28.078714>,  <34.695560, 31.891752, 28.500856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823418, 32.485023, 28.078714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159039, 32.267960, 28.063173>,  <35.360413, 32.137722, 28.053848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159039, 32.267960, 28.063173>,  <34.823418, 32.485023, 28.078714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159039, 32.267960, 28.063173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000834, 0.072698, -0.997354,
		0.544045, 0.836803, 0.061450,
		0.839056, -0.542656, -0.038853,
		35.410755, 32.105164, 28.051517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127403, 32.851822, 27.652805>,  <34.823418, 32.485023, 28.078714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127403, 32.851822, 27.652805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326946, 32.505756, 27.632246>,  <35.446671, 32.298119, 27.619911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326946, 32.505756, 27.632246>,  <35.127403, 32.851822, 27.652805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326946, 32.505756, 27.632246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051673, 0.088887, -0.994701,
		0.865143, 0.493557, 0.089047,
		0.498857, -0.865159, -0.051396,
		35.476604, 32.246208, 27.616827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757343, 32.962769, 27.168076>,  <35.127403, 32.851822, 27.652805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757343, 32.962769, 27.168076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695366, 32.567806, 27.180822>,  <35.658180, 32.330830, 27.188471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695366, 32.567806, 27.180822>,  <35.757343, 32.962769, 27.168076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695366, 32.567806, 27.180822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343439, -0.084081, -0.935404,
		0.926305, -0.133993, 0.352143,
		-0.154946, -0.987409, 0.031866,
		35.648884, 32.271584, 27.190382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421333, 32.626369, 26.963245>,  <35.757343, 32.962769, 27.168076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421333, 32.626369, 26.963245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118286, 32.375748, 26.890102>,  <35.936459, 32.225372, 26.846216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118286, 32.375748, 26.890102>,  <36.421333, 32.626369, 26.963245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118286, 32.375748, 26.890102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335767, -0.133894, -0.932380,
		0.559705, -0.767789, 0.311818,
		-0.757622, -0.626556, -0.182857,
		35.890999, 32.187782, 26.835245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742016, 32.067669, 26.675093>,  <36.421333, 32.626369, 26.963245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742016, 32.067669, 26.675093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357864, 32.056511, 26.564173>,  <36.127373, 32.049816, 26.497622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357864, 32.056511, 26.564173>,  <36.742016, 32.067669, 26.675093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357864, 32.056511, 26.564173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268663, -0.357252, -0.894534,
		-0.074111, -0.933591, 0.350592,
		-0.960379, -0.027896, -0.277297,
		36.069752, 32.048141, 26.480984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642708, 31.517986, 26.163530>,  <36.742016, 32.067669, 26.675093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642708, 31.517986, 26.163530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330502, 31.762712, 26.112185>,  <36.143177, 31.909548, 26.081377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330502, 31.762712, 26.112185>,  <36.642708, 31.517986, 26.163530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330502, 31.762712, 26.112185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005821, -0.212446, -0.977156,
		-0.625112, -0.761936, 0.169378,
		-0.780514, 0.611818, -0.128367,
		36.096348, 31.946259, 26.073675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144382, 31.081493, 25.661163>,  <36.642708, 31.517986, 26.163530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144382, 31.081493, 25.661163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027866, 31.462481, 25.625494>,  <35.957958, 31.691072, 25.604092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027866, 31.462481, 25.625494>,  <36.144382, 31.081493, 25.661163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027866, 31.462481, 25.625494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001755, -0.093749, -0.995594,
		-0.956633, -0.289852, 0.028980,
		-0.291291, 0.952469, -0.089175,
		35.940479, 31.748220, 25.598742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675205, 31.137447, 25.152189>,  <36.144382, 31.081493, 25.661163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675205, 31.137447, 25.152189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814320, 31.511995, 25.171213>,  <35.897789, 31.736723, 25.182629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814320, 31.511995, 25.171213>,  <35.675205, 31.137447, 25.152189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814320, 31.511995, 25.171213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008081, 0.053720, -0.998523,
		-0.937540, 0.346886, 0.026249,
		0.347784, 0.936368, 0.047561,
		35.918655, 31.792906, 25.185482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530766, 31.387512, 24.567926>,  <35.675205, 31.137447, 25.152189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530766, 31.387512, 24.567926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796154, 31.664909, 24.680262>,  <35.955387, 31.831348, 24.747662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796154, 31.664909, 24.680262>,  <35.530766, 31.387512, 24.567926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796154, 31.664909, 24.680262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113564, 0.277660, -0.953944,
		-0.739530, 0.664810, 0.105465,
		0.663475, 0.693493, 0.280836,
		35.995197, 31.872957, 24.764513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274525, 32.003342, 24.210058>,  <35.530766, 31.387512, 24.567926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274525, 32.003342, 24.210058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658165, 32.075588, 24.297247>,  <35.888348, 32.118935, 24.349560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658165, 32.075588, 24.297247>,  <35.274525, 32.003342, 24.210058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658165, 32.075588, 24.297247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137351, 0.376387, -0.916225,
		-0.247523, 0.908687, 0.336184,
		0.959097, 0.180612, 0.217974,
		35.945892, 32.129772, 24.362638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422382, 32.740284, 24.079931>,  <35.274525, 32.003342, 24.210058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422382, 32.740284, 24.079931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772724, 32.547817, 24.065191>,  <35.982929, 32.432339, 24.056347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772724, 32.547817, 24.065191>,  <35.422382, 32.740284, 24.079931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772724, 32.547817, 24.065191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225508, 0.475604, -0.850263,
		0.426642, 0.736398, 0.525067,
		0.875856, -0.481164, -0.036848,
		36.035480, 32.403469, 24.054136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874897, 33.252274, 23.831837>,  <35.422382, 32.740284, 24.079931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874897, 33.252274, 23.831837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050133, 32.900043, 23.759548>,  <36.155273, 32.688705, 23.716175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050133, 32.900043, 23.759548>,  <35.874897, 33.252274, 23.831837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050133, 32.900043, 23.759548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446397, 0.387606, -0.806530,
		0.780261, 0.272660, 0.562894,
		0.438090, -0.880578, -0.180719,
		36.181561, 32.635872, 23.705332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423824, 33.438950, 23.445017>,  <35.874897, 33.252274, 23.831837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423824, 33.438950, 23.445017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415932, 33.043499, 23.385389>,  <36.411198, 32.806229, 23.349613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415932, 33.043499, 23.385389>,  <36.423824, 33.438950, 23.445017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415932, 33.043499, 23.385389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472209, 0.122206, -0.872974,
		0.881266, -0.087614, 0.464429,
		-0.019729, -0.988630, -0.149068,
		36.410011, 32.746910, 23.340670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021862, 33.164665, 23.170307>,  <36.423824, 33.438950, 23.445017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021862, 33.164665, 23.170307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756012, 32.886616, 23.060705>,  <36.596504, 32.719788, 22.994944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756012, 32.886616, 23.060705>,  <37.021862, 33.164665, 23.170307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756012, 32.886616, 23.060705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327592, 0.058497, -0.943007,
		0.671536, -0.716505, 0.188839,
		-0.664622, -0.695125, -0.274003,
		36.556625, 32.678078, 22.978504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310196, 32.884315, 22.551460>,  <37.021862, 33.164665, 23.170307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310196, 32.884315, 22.551460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931801, 32.754719, 22.546844>,  <36.704762, 32.676960, 22.544075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931801, 32.754719, 22.546844>,  <37.310196, 32.884315, 22.551460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931801, 32.754719, 22.546844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011592, 0.069374, -0.997523,
		0.323987, -0.943514, -0.069383,
		-0.945991, -0.323989, -0.011539,
		36.648003, 32.657524, 22.543383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230362, 32.506058, 21.929308>,  <37.310196, 32.884315, 22.551460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230362, 32.506058, 21.929308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858112, 32.612022, 22.030315>,  <36.634762, 32.675602, 22.090919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858112, 32.612022, 22.030315>,  <37.230362, 32.506058, 21.929308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858112, 32.612022, 22.030315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180620, 0.267647, -0.946436,
		-0.318307, -0.926384, -0.201230,
		-0.930622, 0.264911, 0.252518,
		36.578926, 32.691494, 22.106071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944370, 32.283337, 21.429543>,  <37.230362, 32.506058, 21.929308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944370, 32.283337, 21.429543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692955, 32.556873, 21.577757>,  <36.542107, 32.720997, 21.666685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692955, 32.556873, 21.577757>,  <36.944370, 32.283337, 21.429543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692955, 32.556873, 21.577757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207652, 0.311568, -0.927257,
		-0.749548, -0.659758, -0.053830,
		-0.628537, 0.683845, 0.370535,
		36.504395, 32.762028, 21.688917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414356, 32.283073, 20.893738>,  <36.944370, 32.283337, 21.429543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414356, 32.283073, 20.893738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374001, 32.624939, 21.097454>,  <36.349789, 32.830059, 21.219685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374001, 32.624939, 21.097454>,  <36.414356, 32.283073, 20.893738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374001, 32.624939, 21.097454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021568, 0.513662, -0.857722,
		-0.994664, -0.075551, -0.070256,
		-0.100890, 0.854660, 0.509291,
		36.343735, 32.881336, 21.250242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738113, 32.637058, 20.615114>,  <36.414356, 32.283073, 20.893738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738113, 32.637058, 20.615114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967220, 32.926834, 20.768539>,  <36.104687, 33.100700, 20.860594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967220, 32.926834, 20.768539>,  <35.738113, 32.637058, 20.615114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967220, 32.926834, 20.768539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139956, 0.547476, -0.825035,
		-0.807680, 0.418874, 0.414968,
		0.572770, 0.724441, 0.383561,
		36.139050, 33.144165, 20.883608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354153, 33.204563, 20.497049>,  <35.738113, 32.637058, 20.615114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354153, 33.204563, 20.497049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752777, 33.225151, 20.523003>,  <35.991951, 33.237503, 20.538574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752777, 33.225151, 20.523003>,  <35.354153, 33.204563, 20.497049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752777, 33.225151, 20.523003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023193, 0.578643, -0.815251,
		-0.079502, 0.813955, 0.575461,
		0.996565, 0.051467, 0.064882,
		36.051746, 33.240593, 20.542467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567123, 33.759148, 20.074413>,  <35.354153, 33.204563, 20.497049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567123, 33.759148, 20.074413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176258, 33.814301, 20.009739>,  <34.941738, 33.847393, 19.970934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176258, 33.814301, 20.009739>,  <35.567123, 33.759148, 20.074413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176258, 33.814301, 20.009739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210438, 0.733624, -0.646152,
		0.029522, -0.665420, -0.745886,
		-0.977161, 0.137887, -0.161687,
		34.883110, 33.855667, 19.961233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220207, 34.041748, 19.989309>,  <35.567123, 33.759148, 20.074413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220207, 34.041748, 19.989309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098904, 34.070366, 20.369396>,  <36.026119, 34.087536, 20.597448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098904, 34.070366, 20.369396>,  <36.220207, 34.041748, 19.989309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098904, 34.070366, 20.369396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928360, 0.202695, -0.311547,
		-0.214894, -0.976625, 0.004948,
		-0.303262, 0.071543, 0.950218,
		36.007923, 34.091827, 20.654461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593094, 34.473640, 19.762922>,  <36.220207, 34.041748, 19.989309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593094, 34.473640, 19.762922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300735, 34.279053, 19.571447>,  <35.125320, 34.162300, 19.456562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300735, 34.279053, 19.571447>,  <35.593094, 34.473640, 19.762922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300735, 34.279053, 19.571447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043010, 0.732822, -0.679060,
		0.681132, -0.475733, -0.556539,
		-0.730896, -0.486467, -0.478687,
		35.081467, 34.133114, 19.427841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576233, 34.618332, 19.037380>,  <35.593094, 34.473640, 19.762922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576233, 34.618332, 19.037380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227585, 34.424797, 19.068815>,  <35.018394, 34.308678, 19.087675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227585, 34.424797, 19.068815>,  <35.576233, 34.618332, 19.037380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227585, 34.424797, 19.068815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398210, 0.605447, -0.689102,
		0.285831, -0.631932, -0.720390,
		-0.871624, -0.483834, 0.078586,
		34.966099, 34.279648, 19.092390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234398, 35.338264, 19.214203>,  <35.576233, 34.618332, 19.037380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234398, 35.338264, 19.214203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584057, 35.532299, 19.223635>,  <35.793850, 35.648720, 19.229294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584057, 35.532299, 19.223635>,  <35.234398, 35.338264, 19.214203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584057, 35.532299, 19.223635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061200, -0.158185, 0.985511,
		0.481792, -0.860037, -0.167965,
		0.874146, 0.485091, 0.023578,
		35.846302, 35.677826, 19.230709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966087, 35.050476, 19.448406>,  <35.234398, 35.338264, 19.214203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966087, 35.050476, 19.448406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937130, 35.428646, 19.575483>,  <35.919758, 35.655548, 19.651730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937130, 35.428646, 19.575483>,  <35.966087, 35.050476, 19.448406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937130, 35.428646, 19.575483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165574, -0.325502, 0.930932,
		0.983537, 0.014788, 0.180101,
		-0.072390, 0.945426, 0.317694,
		35.915413, 35.712273, 19.670792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389160, 35.233513, 20.122828>,  <35.966087, 35.050476, 19.448406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389160, 35.233513, 20.122828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047581, 35.439106, 20.090324>,  <35.842632, 35.562462, 20.070822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047581, 35.439106, 20.090324>,  <36.389160, 35.233513, 20.122828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047581, 35.439106, 20.090324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245683, -0.260577, 0.933670,
		0.458714, 0.817266, 0.348794,
		-0.853944, 0.513981, -0.081258,
		35.791397, 35.593300, 20.065947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222034, 35.848419, 20.649895>,  <36.389160, 35.233513, 20.122828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222034, 35.848419, 20.649895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886734, 35.669716, 20.524841>,  <35.685555, 35.562496, 20.449810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886734, 35.669716, 20.524841>,  <36.222034, 35.848419, 20.649895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886734, 35.669716, 20.524841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187888, -0.301581, 0.934744,
		-0.511886, 0.842294, 0.168862,
		-0.838255, -0.446755, -0.312632,
		35.635258, 35.535690, 20.431051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599133, 36.263840, 20.855061>,  <36.222034, 35.848419, 20.649895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599133, 36.263840, 20.855061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609890, 35.863995, 20.852194>,  <35.616344, 35.624088, 20.850473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609890, 35.863995, 20.852194>,  <35.599133, 36.263840, 20.855061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609890, 35.863995, 20.852194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019283, -0.007688, 0.999785,
		-0.999452, -0.026748, -0.019483,
		0.026892, -0.999613, -0.007168,
		35.617958, 35.564110, 20.850044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090725, 36.055550, 21.226791>,  <35.599133, 36.263840, 20.855061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090725, 36.055550, 21.226791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356472, 35.757500, 21.250139>,  <35.515919, 35.578671, 21.264149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356472, 35.757500, 21.250139>,  <35.090725, 36.055550, 21.226791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356472, 35.757500, 21.250139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073052, 0.012986, 0.997244,
		-0.743827, -0.666801, -0.045805,
		0.664368, -0.745122, 0.058370,
		35.555782, 35.533962, 21.267651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851742, 35.628460, 21.820385>,  <35.090725, 36.055550, 21.226791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851742, 35.628460, 21.820385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239418, 35.549099, 21.761992>,  <35.472023, 35.501484, 21.726955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239418, 35.549099, 21.761992>,  <34.851742, 35.628460, 21.820385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239418, 35.549099, 21.761992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140733, -0.040399, 0.989223,
		-0.202164, -0.979287, -0.011233,
		0.969188, -0.198404, -0.145985,
		35.530174, 35.489578, 21.718195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979305, 35.145172, 22.344980>,  <34.851742, 35.628460, 21.820385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979305, 35.145172, 22.344980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357086, 35.224628, 22.240255>,  <35.583755, 35.272301, 22.177420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357086, 35.224628, 22.240255>,  <34.979305, 35.145172, 22.344980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357086, 35.224628, 22.240255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293578, -0.151916, 0.943787,
		0.147697, -0.968228, -0.201793,
		0.944456, 0.198637, -0.261813,
		35.640423, 35.284218, 22.161711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420368, 34.575844, 22.617031>,  <34.979305, 35.145172, 22.344980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420368, 34.575844, 22.617031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680531, 34.873810, 22.557600>,  <35.836628, 35.052589, 22.521942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680531, 34.873810, 22.557600>,  <35.420368, 34.575844, 22.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680531, 34.873810, 22.557600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261068, -0.035542, 0.964666,
		0.713310, -0.666216, -0.217590,
		0.650410, 0.744911, -0.148575,
		35.875652, 35.097282, 22.513027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077126, 34.377274, 22.893404>,  <35.420368, 34.575844, 22.617031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077126, 34.377274, 22.893404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056709, 34.776386, 22.876280>,  <36.044460, 35.015854, 22.866005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056709, 34.776386, 22.876280>,  <36.077126, 34.377274, 22.893404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056709, 34.776386, 22.876280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426446, 0.060539, 0.902485,
		0.903072, 0.027810, -0.428589,
		-0.051045, 0.997778, -0.042811,
		36.041397, 35.075718, 22.863436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687542, 34.468517, 23.186733>,  <36.077126, 34.377274, 22.893404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687542, 34.468517, 23.186733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473454, 34.805016, 23.217310>,  <36.345001, 35.006916, 23.235655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473454, 34.805016, 23.217310>,  <36.687542, 34.468517, 23.186733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473454, 34.805016, 23.217310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291437, 0.098965, 0.951457,
		0.792844, 0.531518, -0.298139,
		-0.535222, 0.841246, 0.076440,
		36.312885, 35.057388, 23.240242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215584, 34.899937, 23.491964>,  <36.687542, 34.468517, 23.186733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215584, 34.899937, 23.491964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855247, 35.063499, 23.550312>,  <36.639046, 35.161636, 23.585320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855247, 35.063499, 23.550312>,  <37.215584, 34.899937, 23.491964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855247, 35.063499, 23.550312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258772, 0.235947, 0.936678,
		0.348600, 0.881545, -0.318365,
		-0.900841, 0.408910, 0.145868,
		36.584995, 35.186172, 23.594072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349747, 35.650085, 23.687305>,  <37.215584, 34.899937, 23.491964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349747, 35.650085, 23.687305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986698, 35.550037, 23.822157>,  <36.768867, 35.490009, 23.903067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986698, 35.550037, 23.822157>,  <37.349747, 35.650085, 23.687305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986698, 35.550037, 23.822157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245550, 0.335036, 0.909646,
		-0.340471, 0.908400, -0.242670,
		-0.907626, -0.250120, 0.337127,
		36.714409, 35.475002, 23.923296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181339, 36.215542, 24.083990>,  <37.349747, 35.650085, 23.687305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181339, 36.215542, 24.083990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930901, 35.927898, 24.204582>,  <36.780636, 35.755314, 24.276937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930901, 35.927898, 24.204582>,  <37.181339, 36.215542, 24.083990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930901, 35.927898, 24.204582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112531, 0.299264, 0.947511,
		-0.771584, 0.627159, -0.106446,
		-0.626095, -0.719106, 0.301482,
		36.743073, 35.712166, 24.295027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808949, 36.549797, 24.664812>,  <37.181339, 36.215542, 24.083990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808949, 36.549797, 24.664812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760147, 36.154064, 24.696653>,  <36.730865, 35.916626, 24.715757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760147, 36.154064, 24.696653>,  <36.808949, 36.549797, 24.664812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760147, 36.154064, 24.696653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142275, 0.061942, 0.987887,
		-0.982280, 0.131849, 0.133200,
		-0.122002, -0.989333, 0.079603,
		36.723545, 35.857265, 24.720533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284702, 36.476196, 25.135025>,  <36.808949, 36.549797, 24.664812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284702, 36.476196, 25.135025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503155, 36.141117, 25.134144>,  <36.634228, 35.940071, 25.133615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503155, 36.141117, 25.134144>,  <36.284702, 36.476196, 25.135025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503155, 36.141117, 25.134144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055359, 0.033467, 0.997905,
		-0.835866, -0.545114, 0.064651,
		0.546136, -0.837694, -0.002203,
		36.666996, 35.889809, 25.133482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999752, 36.057537, 25.645399>,  <36.284702, 36.476196, 25.135025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999752, 36.057537, 25.645399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371677, 35.921005, 25.590351>,  <36.594833, 35.839088, 25.557323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371677, 35.921005, 25.590351>,  <35.999752, 36.057537, 25.645399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371677, 35.921005, 25.590351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161244, 0.041694, 0.986033,
		-0.330823, -0.939019, 0.093805,
		0.929815, -0.341328, -0.137618,
		36.650623, 35.818607, 25.549067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071045, 35.411751, 26.103523>,  <35.999752, 36.057537, 25.645399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071045, 35.411751, 26.103523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436096, 35.551704, 26.018970>,  <36.655128, 35.635677, 25.968239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436096, 35.551704, 26.018970>,  <36.071045, 35.411751, 26.103523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436096, 35.551704, 26.018970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154576, 0.183329, 0.970823,
		0.378430, -0.918678, 0.113228,
		0.912632, 0.349886, -0.211383,
		36.709885, 35.656670, 25.955555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571228, 34.981640, 26.475451>,  <36.071045, 35.411751, 26.103523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571228, 34.981640, 26.475451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738422, 35.335358, 26.392199>,  <36.838737, 35.547588, 26.342247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738422, 35.335358, 26.392199>,  <36.571228, 34.981640, 26.475451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738422, 35.335358, 26.392199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313221, 0.074775, 0.946732,
		0.852750, -0.460909, -0.245724,
		0.417983, 0.884291, -0.208131,
		36.863819, 35.600647, 26.329760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163132, 34.931812, 26.762892>,  <36.571228, 34.981640, 26.475451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163132, 34.931812, 26.762892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102089, 35.324787, 26.719948>,  <37.065464, 35.560574, 26.694181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102089, 35.324787, 26.719948>,  <37.163132, 34.931812, 26.762892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102089, 35.324787, 26.719948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267275, 0.145610, 0.952555,
		0.951459, 0.116674, -0.284803,
		-0.152609, 0.982438, -0.107358,
		37.056305, 35.619518, 26.687740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674126, 35.269871, 27.197756>,  <37.163132, 34.931812, 26.762892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674126, 35.269871, 27.197756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418896, 35.574333, 27.151266>,  <37.265759, 35.757011, 27.123373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418896, 35.574333, 27.151266>,  <37.674126, 35.269871, 27.197756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418896, 35.574333, 27.151266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149621, 0.270636, 0.950984,
		0.755297, 0.589410, -0.286570,
		-0.638075, 0.761152, -0.116223,
		37.227474, 35.802677, 27.116400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050083, 35.799870, 27.475019>,  <37.674126, 35.269871, 27.197756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050083, 35.799870, 27.475019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683506, 35.959618, 27.464993>,  <37.463558, 36.055466, 27.458977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683506, 35.959618, 27.464993>,  <38.050083, 35.799870, 27.475019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683506, 35.959618, 27.464993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035335, 0.143163, 0.989068,
		0.398597, 0.905541, -0.145313,
		-0.916445, 0.399375, -0.025067,
		37.408573, 36.079430, 27.457472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087940, 36.400772, 27.693295>,  <38.050083, 35.799870, 27.475019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087940, 36.400772, 27.693295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699505, 36.320698, 27.745321>,  <37.466446, 36.272652, 27.776537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699505, 36.320698, 27.745321>,  <38.087940, 36.400772, 27.693295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699505, 36.320698, 27.745321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070083, 0.281770, 0.956919,
		-0.228211, 0.938366, -0.259594,
		-0.971086, -0.200186, 0.130066,
		37.408180, 36.260643, 27.784342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705467, 37.023537, 27.831020>,  <38.087940, 36.400772, 27.693295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705467, 37.023537, 27.831020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488312, 36.725471, 27.985939>,  <37.358017, 36.546631, 28.078890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488312, 36.725471, 27.985939>,  <37.705467, 37.023537, 27.831020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488312, 36.725471, 27.985939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092360, 0.405399, 0.909462,
		-0.834711, 0.529506, -0.151262,
		-0.542888, -0.745168, 0.387296,
		37.325447, 36.501923, 28.102127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122910, 37.204563, 28.240162>,  <37.705467, 37.023537, 27.831020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122910, 37.204563, 28.240162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082745, 36.820629, 28.344952>,  <37.058647, 36.590267, 28.407825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082745, 36.820629, 28.344952>,  <37.122910, 37.204563, 28.240162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082745, 36.820629, 28.344952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107134, 0.272204, 0.956257,
		-0.989161, 0.067955, -0.130164,
		-0.100413, -0.959837, 0.261973,
		37.052620, 36.532677, 28.423544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589474, 37.232796, 28.617105>,  <37.122910, 37.204563, 28.240162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589474, 37.232796, 28.617105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789417, 36.904484, 28.727707>,  <36.909382, 36.707497, 28.794067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789417, 36.904484, 28.727707>,  <36.589474, 37.232796, 28.617105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789417, 36.904484, 28.727707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051953, 0.290259, 0.955537,
		-0.864547, -0.491999, 0.102446,
		0.499859, -0.820784, 0.276503,
		36.939377, 36.658249, 28.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195171, 36.977448, 29.183750>,  <36.589474, 37.232796, 28.617105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195171, 36.977448, 29.183750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560719, 36.815853, 29.199913>,  <36.780048, 36.718895, 29.209610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560719, 36.815853, 29.199913>,  <36.195171, 36.977448, 29.183750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560719, 36.815853, 29.199913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021627, 0.050940, 0.998468,
		-0.405429, -0.913344, 0.037816,
		0.913871, -0.403989, 0.040406,
		36.834881, 36.694656, 29.212034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136116, 36.445927, 29.729319>,  <36.195171, 36.977448, 29.183750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136116, 36.445927, 29.729319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520996, 36.545242, 29.684553>,  <36.751923, 36.604832, 29.657694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520996, 36.545242, 29.684553>,  <36.136116, 36.445927, 29.729319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520996, 36.545242, 29.684553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123905, -0.033150, 0.991740,
		0.242526, -0.968119, -0.062661,
		0.962200, 0.248287, -0.111915,
		36.809654, 36.619728, 29.650978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442482, 35.981251, 30.231285>,  <36.136116, 36.445927, 29.729319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442482, 35.981251, 30.231285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725498, 36.252251, 30.150900>,  <36.895306, 36.414852, 30.102669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725498, 36.252251, 30.150900>,  <36.442482, 35.981251, 30.231285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725498, 36.252251, 30.150900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062703, 0.223070, 0.972784,
		0.703890, -0.700881, 0.115349,
		0.707536, 0.677500, -0.200964,
		36.937759, 36.455502, 30.090611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013340, 35.832260, 30.591309>,  <36.442482, 35.981251, 30.231285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013340, 35.832260, 30.591309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005077, 36.225288, 30.517414>,  <37.000118, 36.461105, 30.473078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005077, 36.225288, 30.517414>,  <37.013340, 35.832260, 30.591309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005077, 36.225288, 30.517414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028644, 0.185280, 0.982269,
		0.999376, 0.014999, -0.031972,
		-0.020657, 0.982571, -0.184735,
		36.998878, 36.520061, 30.461994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356449, 36.027229, 31.145140>,  <37.013340, 35.832260, 30.591309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356449, 36.027229, 31.145140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232010, 36.381416, 31.007061>,  <37.157345, 36.593929, 30.924213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232010, 36.381416, 31.007061>,  <37.356449, 36.027229, 31.145140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232010, 36.381416, 31.007061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013750, 0.358987, 0.933241,
		0.950278, 0.295077, -0.099505,
		-0.311100, 0.885470, -0.345195,
		37.138680, 36.647057, 30.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762325, 36.519241, 31.412115>,  <37.356449, 36.027229, 31.145140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762325, 36.519241, 31.412115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432262, 36.725281, 31.319336>,  <37.234226, 36.848904, 31.263668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432262, 36.725281, 31.319336>,  <37.762325, 36.519241, 31.412115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432262, 36.725281, 31.319336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080627, 0.299003, 0.950840,
		0.559126, 0.803290, -0.205193,
		-0.825153, 0.515095, -0.231947,
		37.184715, 36.879810, 31.249752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864445, 37.261337, 31.708292>,  <37.762325, 36.519241, 31.412115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864445, 37.261337, 31.708292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471859, 37.204971, 31.656343>,  <37.236305, 37.171150, 31.625175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471859, 37.204971, 31.656343>,  <37.864445, 37.261337, 31.708292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471859, 37.204971, 31.656343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167119, 0.297735, 0.939907,
		-0.093784, 0.944191, -0.315768,
		-0.981466, -0.140919, -0.129870,
		37.177418, 37.162697, 31.617382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566620, 37.798855, 32.082134>,  <37.864445, 37.261337, 31.708292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566620, 37.798855, 32.082134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244083, 37.568558, 32.027977>,  <37.050560, 37.430378, 31.995483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244083, 37.568558, 32.027977>,  <37.566620, 37.798855, 32.082134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244083, 37.568558, 32.027977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288936, 0.183714, 0.939556,
		-0.516068, 0.796725, -0.314489,
		-0.806343, -0.575742, -0.135394,
		37.002182, 37.395836, 31.987358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954872, 38.204849, 32.375320>,  <37.566620, 37.798855, 32.082134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954872, 38.204849, 32.375320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855953, 37.817913, 32.353039>,  <36.796600, 37.585751, 32.339668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855953, 37.817913, 32.353039>,  <36.954872, 38.204849, 32.375320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855953, 37.817913, 32.353039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298943, 0.021486, 0.954029,
		-0.921670, 0.252584, -0.294492,
		-0.247300, -0.967337, -0.055706,
		36.781765, 37.527714, 32.336327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322243, 38.078533, 32.751560>,  <36.954872, 38.204849, 32.375320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322243, 38.078533, 32.751560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509079, 37.724854, 32.753197>,  <36.621181, 37.512646, 32.754177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509079, 37.724854, 32.753197>,  <36.322243, 38.078533, 32.751560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509079, 37.724854, 32.753197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152866, -0.076197, 0.985305,
		-0.870895, -0.460853, -0.170755,
		0.467092, -0.884200, 0.004089,
		36.649208, 37.459595, 32.754425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785187, 37.718143, 32.978249>,  <36.322243, 38.078533, 32.751560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785187, 37.718143, 32.978249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116718, 37.501541, 33.034538>,  <36.315639, 37.371578, 33.068314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116718, 37.501541, 33.034538>,  <35.785187, 37.718143, 32.978249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116718, 37.501541, 33.034538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327026, -0.264794, 0.907159,
		-0.453973, -0.797904, -0.396558,
		0.828832, -0.541511, 0.140726,
		36.365368, 37.339088, 33.076756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638332, 37.057148, 33.387783>,  <35.785187, 37.718143, 32.978249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638332, 37.057148, 33.387783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030350, 37.107697, 33.449146>,  <36.265560, 37.138027, 33.485966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030350, 37.107697, 33.449146>,  <35.638332, 37.057148, 33.387783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030350, 37.107697, 33.449146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150278, -0.034032, 0.988058,
		0.130088, -0.991398, -0.014361,
		0.980048, 0.126376, 0.153413,
		36.324364, 37.145607, 33.495171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685360, 36.872265, 33.985043>,  <35.638332, 37.057148, 33.387783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685360, 36.872265, 33.985043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058308, 37.010288, 33.941921>,  <36.282078, 37.093102, 33.916050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058308, 37.010288, 33.941921>,  <35.685360, 36.872265, 33.985043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058308, 37.010288, 33.941921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149681, -0.097043, 0.983960,
		0.329059, -0.933552, -0.142129,
		0.932371, 0.345055, -0.107802,
		36.338020, 37.113804, 33.909580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997894, 36.487408, 34.424465>,  <35.685360, 36.872265, 33.985043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997894, 36.487408, 34.424465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226727, 36.812912, 34.383430>,  <36.364025, 37.008213, 34.358810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226727, 36.812912, 34.383430>,  <35.997894, 36.487408, 34.424465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226727, 36.812912, 34.383430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300638, -0.091668, 0.949323,
		0.763116, -0.573928, -0.297088,
		0.572076, 0.813759, -0.102591,
		36.398350, 37.057041, 34.352654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670887, 36.357258, 34.675346>,  <35.997894, 36.487408, 34.424465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670887, 36.357258, 34.675346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617554, 36.753281, 34.693310>,  <36.585552, 36.990894, 34.704086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617554, 36.753281, 34.693310>,  <36.670887, 36.357258, 34.675346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617554, 36.753281, 34.693310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342241, 0.003471, 0.939606,
		0.930103, 0.140654, -0.339300,
		-0.133337, 0.990053, 0.044909,
		36.577553, 37.050297, 34.706783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284622, 36.643906, 35.029728>,  <36.670887, 36.357258, 34.675346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284622, 36.643906, 35.029728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968948, 36.885857, 35.072289>,  <36.779545, 37.031025, 35.097824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968948, 36.885857, 35.072289>,  <37.284622, 36.643906, 35.029728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968948, 36.885857, 35.072289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219443, 0.115901, 0.968716,
		0.573618, 0.787842, -0.224202,
		-0.789181, 0.604873, 0.106404,
		36.732193, 37.067318, 35.104210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509552, 37.278091, 35.435104>,  <37.284622, 36.643906, 35.029728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509552, 37.278091, 35.435104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112267, 37.267628, 35.480434>,  <36.873894, 37.261349, 35.507633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112267, 37.267628, 35.480434>,  <37.509552, 37.278091, 35.435104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112267, 37.267628, 35.480434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111447, 0.064767, 0.991658,
		-0.033280, 0.997558, -0.061412,
		-0.993213, -0.026158, 0.113330,
		36.814304, 37.259781, 35.514435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300343, 37.816471, 35.818970>,  <37.509552, 37.278091, 35.435104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300343, 37.816471, 35.818970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990688, 37.565231, 35.850471>,  <36.804897, 37.414486, 35.869373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990688, 37.565231, 35.850471>,  <37.300343, 37.816471, 35.818970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990688, 37.565231, 35.850471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108833, -0.009504, 0.994015,
		-0.623595, 0.778072, 0.075716,
		-0.774135, -0.628103, 0.078754,
		36.758450, 37.376801, 35.874096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015675, 37.916939, 35.710083>,  <37.300343, 37.816471, 35.818970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015675, 37.916939, 35.710083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404877, 37.961979, 35.790657>,  <38.638397, 37.989002, 35.839001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404877, 37.961979, 35.790657>,  <38.015675, 37.916939, 35.710083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404877, 37.961979, 35.790657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196590, 0.052696, -0.979069,
		-0.120858, 0.992242, 0.029137,
		0.973009, 0.112600, 0.201433,
		38.696781, 37.995758, 35.851086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277882, 38.495441, 35.373299>,  <38.015675, 37.916939, 35.710083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277882, 38.495441, 35.373299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575230, 38.237064, 35.442764>,  <38.753639, 38.082039, 35.484444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575230, 38.237064, 35.442764>,  <38.277882, 38.495441, 35.373299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575230, 38.237064, 35.442764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213253, -0.017203, -0.976846,
		0.633974, 0.763192, 0.124961,
		0.743371, -0.645943, 0.173659,
		38.798241, 38.043282, 35.494862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884571, 38.745525, 34.984211>,  <38.277882, 38.495441, 35.373299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884571, 38.745525, 34.984211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940128, 38.351540, 35.025318>,  <38.973465, 38.115150, 35.049984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940128, 38.351540, 35.025318>,  <38.884571, 38.745525, 34.984211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940128, 38.351540, 35.025318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310123, -0.055294, -0.949087,
		0.940495, 0.163697, 0.297779,
		0.138897, -0.984960, 0.102770,
		38.981796, 38.056053, 35.056149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482861, 38.645317, 34.616516>,  <38.884571, 38.745525, 34.984211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482861, 38.645317, 34.616516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329891, 38.278522, 34.661930>,  <39.238110, 38.058445, 34.689178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329891, 38.278522, 34.661930>,  <39.482861, 38.645317, 34.616516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329891, 38.278522, 34.661930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318504, -0.246168, -0.915400,
		0.867356, -0.313911, 0.386204,
		-0.382424, -0.916985, 0.113533,
		39.215164, 38.003426, 34.695992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964359, 38.081501, 34.529041>,  <39.482861, 38.645317, 34.616516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964359, 38.081501, 34.529041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612816, 37.924294, 34.420860>,  <39.401890, 37.829971, 34.355949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612816, 37.924294, 34.420860>,  <39.964359, 38.081501, 34.529041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612816, 37.924294, 34.420860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391558, -0.270340, -0.879545,
		0.272559, -0.878895, 0.391479,
		-0.878860, -0.393014, -0.270455,
		39.349159, 37.806389, 34.339725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118687, 37.537445, 34.103218>,  <39.964359, 38.081501, 34.529041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118687, 37.537445, 34.103218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728279, 37.546459, 34.016605>,  <39.494034, 37.551868, 33.964638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728279, 37.546459, 34.016605>,  <40.118687, 37.537445, 34.103218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728279, 37.546459, 34.016605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207947, -0.197940, -0.957903,
		-0.064442, -0.979955, 0.188507,
		-0.976015, 0.022530, -0.216535,
		39.435474, 37.553219, 33.951645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936199, 36.878510, 33.744625>,  <40.118687, 37.537445, 34.103218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936199, 36.878510, 33.744625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625729, 37.120892, 33.674923>,  <39.439445, 37.266323, 33.633102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625729, 37.120892, 33.674923>,  <39.936199, 36.878510, 33.744625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625729, 37.120892, 33.674923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027795, -0.308988, -0.950660,
		-0.629906, -0.733034, 0.256672,
		-0.776174, 0.605960, -0.174259,
		39.392876, 37.302681, 33.622646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387924, 36.528564, 33.290337>,  <39.936199, 36.878510, 33.744625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387924, 36.528564, 33.290337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321861, 36.913177, 33.202545>,  <39.282223, 37.143948, 33.149868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321861, 36.913177, 33.202545>,  <39.387924, 36.528564, 33.290337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321861, 36.913177, 33.202545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008685, -0.223947, -0.974562,
		-0.986228, -0.159053, 0.045338,
		-0.165160, 0.961535, -0.219481,
		39.272312, 37.201637, 33.136700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993015, 36.635754, 32.641060>,  <39.387924, 36.528564, 33.290337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993015, 36.635754, 32.641060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187984, 36.982788, 32.680485>,  <39.304966, 37.191010, 32.704140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187984, 36.982788, 32.680485>,  <38.993015, 36.635754, 32.641060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187984, 36.982788, 32.680485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056281, 0.081427, -0.995089,
		-0.871348, 0.490581, -0.009139,
		0.487427, 0.867583, 0.098562,
		39.334213, 37.243065, 32.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704636, 37.111656, 32.233120>,  <38.993015, 36.635754, 32.641060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704636, 37.111656, 32.233120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061138, 37.282627, 32.293743>,  <39.275040, 37.385212, 32.330116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061138, 37.282627, 32.293743>,  <38.704636, 37.111656, 32.233120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061138, 37.282627, 32.293743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081364, 0.178055, -0.980651,
		-0.446145, 0.886341, 0.123914,
		0.891254, 0.427430, 0.151555,
		39.328514, 37.410858, 32.339211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652618, 37.706593, 31.890335>,  <38.704636, 37.111656, 32.233120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652618, 37.706593, 31.890335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045826, 37.656067, 31.943588>,  <39.281750, 37.625751, 31.975540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045826, 37.656067, 31.943588>,  <38.652618, 37.706593, 31.890335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045826, 37.656067, 31.943588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162637, 0.263533, -0.950842,
		0.085022, 0.956345, 0.279600,
		0.983016, -0.126315, 0.133131,
		39.340733, 37.618172, 31.983528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985500, 38.244152, 31.714951>,  <38.652618, 37.706593, 31.890335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985500, 38.244152, 31.714951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251671, 37.951347, 31.656477>,  <39.411373, 37.775665, 31.621393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251671, 37.951347, 31.656477>,  <38.985500, 38.244152, 31.714951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251671, 37.951347, 31.656477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136865, 0.312158, -0.940120,
		0.733808, 0.605575, 0.307905,
		0.665428, -0.732009, -0.146182,
		39.451298, 37.731743, 31.612623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317894, 38.534191, 31.177263>,  <38.985500, 38.244152, 31.714951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317894, 38.534191, 31.177263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487228, 38.171883, 31.184896>,  <39.588829, 37.954498, 31.189476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487228, 38.171883, 31.184896>,  <39.317894, 38.534191, 31.177263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487228, 38.171883, 31.184896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257737, 0.100217, -0.961004,
		0.868536, 0.411749, 0.275876,
		0.423340, -0.905770, 0.019081,
		39.614231, 37.900150, 31.190620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854881, 38.675587, 30.793015>,  <39.317894, 38.534191, 31.177263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854881, 38.675587, 30.793015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822796, 38.276909, 30.798298>,  <39.803547, 38.037704, 30.801468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822796, 38.276909, 30.798298>,  <39.854881, 38.675587, 30.793015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822796, 38.276909, 30.798298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247990, -0.032786, -0.968208,
		0.965436, -0.074385, 0.249799,
		-0.080210, -0.996691, 0.013206,
		39.798733, 37.977901, 30.802259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357578, 38.437637, 30.329504>,  <39.854881, 38.675587, 30.793015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357578, 38.437637, 30.329504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107502, 38.127235, 30.362867>,  <39.957455, 37.940994, 30.382885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107502, 38.127235, 30.362867>,  <40.357578, 38.437637, 30.329504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107502, 38.127235, 30.362867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011826, -0.116275, -0.993147,
		0.780381, -0.619921, 0.081871,
		-0.625192, -0.776001, 0.083408,
		39.919945, 37.894436, 30.387890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693535, 37.889553, 29.926325>,  <40.357578, 38.437637, 30.329504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693535, 37.889553, 29.926325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296204, 37.850876, 29.951462>,  <40.057804, 37.827671, 29.966543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296204, 37.850876, 29.951462>,  <40.693535, 37.889553, 29.926325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296204, 37.850876, 29.951462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055871, -0.073198, -0.995751,
		0.100880, -0.992619, 0.067308,
		-0.993328, -0.096691, 0.062843,
		39.998203, 37.821869, 29.970314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555916, 37.294674, 29.535946>,  <40.693535, 37.889553, 29.926325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555916, 37.294674, 29.535946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207203, 37.486095, 29.577864>,  <39.997974, 37.600948, 29.603014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207203, 37.486095, 29.577864>,  <40.555916, 37.294674, 29.535946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207203, 37.486095, 29.577864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215018, -0.181565, -0.959584,
		-0.440185, -0.859082, 0.261182,
		-0.871782, 0.478553, 0.104796,
		39.945667, 37.629662, 29.609303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120621, 36.855015, 29.239233>,  <40.555916, 37.294674, 29.535946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120621, 36.855015, 29.239233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913013, 37.196716, 29.251011>,  <39.788448, 37.401737, 29.258078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913013, 37.196716, 29.251011>,  <40.120621, 36.855015, 29.239233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913013, 37.196716, 29.251011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458779, -0.249340, -0.852849,
		-0.721210, -0.456151, 0.521327,
		-0.519016, 0.854257, 0.029446,
		39.757309, 37.452995, 29.259844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501701, 36.647827, 29.054016>,  <40.120621, 36.855015, 29.239233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501701, 36.647827, 29.054016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491539, 37.037289, 28.963377>,  <39.485443, 37.270966, 28.908993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491539, 37.037289, 28.963377>,  <39.501701, 36.647827, 29.054016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491539, 37.037289, 28.963377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468085, -0.211872, -0.857908,
		-0.883318, 0.084273, 0.461137,
		-0.025403, 0.973657, -0.226597,
		39.483917, 37.329388, 28.895397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750076, 36.876854, 28.802532>,  <39.501701, 36.647827, 29.054016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750076, 36.876854, 28.802532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024548, 37.113537, 28.633280>,  <39.189232, 37.255547, 28.531729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024548, 37.113537, 28.633280>,  <38.750076, 36.876854, 28.802532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024548, 37.113537, 28.633280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447999, -0.114530, -0.886668,
		-0.573111, 0.797974, 0.186497,
		0.686179, 0.591709, -0.423130,
		39.230400, 37.291050, 28.506340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310951, 37.123569, 28.332819>,  <38.750076, 36.876854, 28.802532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310951, 37.123569, 28.332819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673073, 37.257786, 28.228634>,  <38.890347, 37.338318, 28.166122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673073, 37.257786, 28.228634>,  <38.310951, 37.123569, 28.332819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673073, 37.257786, 28.228634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249341, -0.076640, -0.965378,
		-0.343889, 0.938902, 0.014283,
		0.905301, 0.335545, -0.260462,
		38.944664, 37.358448, 28.150496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179531, 37.672295, 27.876249>,  <38.310951, 37.123569, 28.332819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179531, 37.672295, 27.876249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551418, 37.530811, 27.835232>,  <38.774551, 37.445923, 27.810621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551418, 37.530811, 27.835232>,  <38.179531, 37.672295, 27.876249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551418, 37.530811, 27.835232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129437, -0.053163, -0.990161,
		0.344778, 0.933843, -0.095209,
		0.929717, -0.353710, -0.102545,
		38.830334, 37.424698, 27.804468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329094, 37.843273, 27.236872>,  <38.179531, 37.672295, 27.876249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329094, 37.843273, 27.236872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625721, 37.580578, 27.291662>,  <38.803699, 37.422958, 27.324537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625721, 37.580578, 27.291662>,  <38.329094, 37.843273, 27.236872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625721, 37.580578, 27.291662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062723, -0.135410, -0.988802,
		0.667935, 0.741860, -0.059224,
		0.741572, -0.656741, 0.136977,
		38.848194, 37.383556, 27.332756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868408, 37.966652, 26.798216>,  <38.329094, 37.843273, 27.236872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868408, 37.966652, 26.798216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959782, 37.589165, 26.893890>,  <39.014606, 37.362671, 26.951296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959782, 37.589165, 26.893890>,  <38.868408, 37.966652, 26.798216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959782, 37.589165, 26.893890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106281, -0.220041, -0.969684,
		0.967741, 0.246928, 0.050035,
		0.228433, -0.943721, 0.239186,
		39.028313, 37.306049, 26.965647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407188, 37.806423, 26.391460>,  <38.868408, 37.966652, 26.798216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407188, 37.806423, 26.391460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271374, 37.440887, 26.480564>,  <39.189884, 37.221565, 26.534027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271374, 37.440887, 26.480564>,  <39.407188, 37.806423, 26.391460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271374, 37.440887, 26.480564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141294, -0.283695, -0.948448,
		0.929921, -0.290554, 0.225444,
		-0.339533, -0.913835, 0.222760,
		39.169514, 37.166737, 26.547392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897778, 37.328590, 26.049547>,  <39.407188, 37.806423, 26.391460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897778, 37.328590, 26.049547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586189, 37.090950, 26.129789>,  <39.399235, 36.948364, 26.177935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586189, 37.090950, 26.129789>,  <39.897778, 37.328590, 26.049547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586189, 37.090950, 26.129789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160310, -0.497968, -0.852249,
		0.606220, -0.631719, 0.483144,
		-0.778973, -0.594103, 0.200607,
		39.352497, 36.912720, 26.189972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120018, 36.738808, 25.781298>,  <39.897778, 37.328590, 26.049547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120018, 36.738808, 25.781298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720028, 36.736893, 25.779469>,  <39.480034, 36.735744, 25.778372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720028, 36.736893, 25.779469>,  <40.120018, 36.738808, 25.781298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720028, 36.736893, 25.779469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006137, -0.411033, -0.911600,
		0.002489, -0.911608, 0.411053,
		-0.999978, -0.004792, -0.004571,
		39.420036, 36.735455, 25.778097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920818, 36.014843, 25.545532>,  <40.120018, 36.738808, 25.781298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920818, 36.014843, 25.545532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625229, 36.275871, 25.478516>,  <39.447876, 36.432487, 25.438305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625229, 36.275871, 25.478516>,  <39.920818, 36.014843, 25.545532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625229, 36.275871, 25.478516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012531, -0.235319, -0.971837,
		-0.673621, -0.720259, 0.165717,
		-0.738971, 0.652573, -0.167541,
		39.403538, 36.471642, 25.428253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563290, 35.654022, 25.057613>,  <39.920818, 36.014843, 25.545532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563290, 35.654022, 25.057613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498436, 36.048561, 25.046021>,  <39.459522, 36.285282, 25.039064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498436, 36.048561, 25.046021>,  <39.563290, 35.654022, 25.057613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498436, 36.048561, 25.046021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156670, -0.003267, -0.987646,
		-0.974252, -0.164671, -0.154001,
		-0.162134, 0.986343, -0.028982,
		39.449795, 36.344463, 25.037327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146763, 35.714085, 24.557785>,  <39.563290, 35.654022, 25.057613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146763, 35.714085, 24.557785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293102, 36.085995, 24.574091>,  <39.380905, 36.309143, 24.583876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293102, 36.085995, 24.574091>,  <39.146763, 35.714085, 24.557785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293102, 36.085995, 24.574091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092294, 0.007341, -0.995705,
		-0.926086, 0.368043, -0.083127,
		0.365852, 0.929780, 0.040767,
		39.402859, 36.364929, 24.586321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657440, 36.197495, 24.061951>,  <39.146763, 35.714085, 24.557785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657440, 36.197495, 24.061951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022743, 36.349209, 24.121408>,  <39.241924, 36.440239, 24.157084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022743, 36.349209, 24.121408>,  <38.657440, 36.197495, 24.061951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022743, 36.349209, 24.121408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171102, -0.025995, -0.984910,
		-0.369698, 0.924914, -0.088637,
		0.913262, 0.379286, 0.148645,
		39.296722, 36.462994, 24.166002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606525, 36.648575, 23.493820>,  <38.657440, 36.197495, 24.061951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606525, 36.648575, 23.493820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992867, 36.649170, 23.597458>,  <39.224670, 36.649529, 23.659641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992867, 36.649170, 23.597458>,  <38.606525, 36.648575, 23.493820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992867, 36.649170, 23.597458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259098, -0.001141, -0.965850,
		-0.001141, 0.999998, -0.001488,
		0.965850, 0.001488, 0.259096,
		39.282623, 36.649616, 23.675186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915028, 37.147434, 23.070681>,  <38.606525, 36.648575, 23.493820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915028, 37.147434, 23.070681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218185, 36.906261, 23.170336>,  <39.400082, 36.761559, 23.230129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218185, 36.906261, 23.170336>,  <38.915028, 37.147434, 23.070681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218185, 36.906261, 23.170336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186896, -0.165218, -0.968387,
		0.625030, 0.780500, -0.012533,
		0.757897, -0.602929, 0.249139,
		39.445553, 36.725384, 23.245077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537960, 37.469467, 22.682205>,  <38.915028, 37.147434, 23.070681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537960, 37.469467, 22.682205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637627, 37.093719, 22.776445>,  <39.697426, 36.868271, 22.832989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637627, 37.093719, 22.776445>,  <39.537960, 37.469467, 22.682205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637627, 37.093719, 22.776445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378364, -0.129514, -0.916551,
		0.891490, 0.317520, 0.323151,
		0.249171, -0.939365, 0.235599,
		39.712379, 36.811909, 22.847124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089191, 37.357975, 22.285299>,  <39.537960, 37.469467, 22.682205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089191, 37.357975, 22.285299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012466, 36.981663, 22.397118>,  <39.966431, 36.755875, 22.464209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012466, 36.981663, 22.397118>,  <40.089191, 37.357975, 22.285299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012466, 36.981663, 22.397118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427530, -0.336485, -0.839045,
		0.883418, -0.041422, 0.466752,
		-0.191810, -0.940777, 0.279548,
		39.954922, 36.699429, 22.480982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741589, 36.919998, 22.122229>,  <40.089191, 37.357975, 22.285299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741589, 36.919998, 22.122229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425049, 36.675934, 22.137535>,  <40.235123, 36.529495, 22.146719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425049, 36.675934, 22.137535>,  <40.741589, 36.919998, 22.122229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425049, 36.675934, 22.137535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353201, -0.507380, -0.786012,
		0.499010, -0.608497, 0.617026,
		-0.791352, -0.610162, 0.038266,
		40.187645, 36.492886, 22.149015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040840, 36.135151, 22.010227>,  <40.741589, 36.919998, 22.122229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040840, 36.135151, 22.010227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650948, 36.155258, 21.923162>,  <40.417011, 36.167320, 21.870924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650948, 36.155258, 21.923162>,  <41.040840, 36.135151, 22.010227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650948, 36.155258, 21.923162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147566, -0.586626, -0.796300,
		-0.167711, -0.808296, 0.564384,
		-0.974729, 0.050265, -0.217661,
		40.358528, 36.170338, 21.857864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883175, 35.459023, 22.023275>,  <41.040840, 36.135151, 22.010227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883175, 35.459023, 22.023275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618717, 35.664207, 21.804276>,  <40.460041, 35.787319, 21.672874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618717, 35.664207, 21.804276>,  <40.883175, 35.459023, 22.023275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618717, 35.664207, 21.804276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175426, -0.603826, -0.777573,
		-0.729462, -0.610134, 0.309228,
		-0.661144, 0.512963, -0.547501,
		40.420372, 35.818096, 21.640026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725262, 34.878101, 21.585209>,  <40.883175, 35.459023, 22.023275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725262, 34.878101, 21.585209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094082, 34.727901, 21.547649>,  <41.315376, 34.637783, 21.525114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094082, 34.727901, 21.547649>,  <40.725262, 34.878101, 21.585209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094082, 34.727901, 21.547649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209777, 0.280928, 0.936521,
		-0.325287, -0.883220, 0.337803,
		0.922053, -0.375501, -0.093897,
		41.370697, 34.615250, 21.519480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799835, 34.414257, 22.072515>,  <40.725262, 34.878101, 21.585209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799835, 34.414257, 22.072515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181450, 34.498268, 21.987007>,  <41.410419, 34.548676, 21.935701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181450, 34.498268, 21.987007>,  <40.799835, 34.414257, 22.072515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181450, 34.498268, 21.987007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172188, 0.199661, 0.964617,
		0.245282, -0.957090, 0.154319,
		0.954038, 0.210032, -0.213773,
		41.467663, 34.561275, 21.922874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278675, 33.884724, 22.409433>,  <40.799835, 34.414257, 22.072515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278675, 33.884724, 22.409433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466320, 34.233822, 22.355389>,  <41.578907, 34.443279, 22.322962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466320, 34.233822, 22.355389>,  <41.278675, 33.884724, 22.409433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466320, 34.233822, 22.355389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198520, 0.044865, 0.979069,
		0.860536, -0.486117, -0.152210,
		0.469113, 0.872741, -0.135112,
		41.607056, 34.495644, 22.314856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774181, 33.909550, 22.984438>,  <41.278675, 33.884724, 22.409433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774181, 33.909550, 22.984438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769356, 34.287552, 22.853704>,  <41.766460, 34.514355, 22.775265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769356, 34.287552, 22.853704>,  <41.774181, 33.909550, 22.984438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769356, 34.287552, 22.853704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079510, 0.326730, 0.941767,
		0.996761, -0.014625, -0.079079,
		-0.012064, 0.945005, -0.326835,
		41.765736, 34.571053, 22.755653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289551, 34.159718, 23.434067>,  <41.774181, 33.909550, 22.984438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289551, 34.159718, 23.434067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111557, 34.475868, 23.265644>,  <42.004761, 34.665558, 23.164591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111557, 34.475868, 23.265644>,  <42.289551, 34.159718, 23.434067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111557, 34.475868, 23.265644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130997, 0.522560, 0.842479,
		0.885906, 0.319733, -0.336069,
		-0.444984, 0.790381, -0.421055,
		41.978062, 34.712982, 23.139328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775890, 34.796619, 23.387115>,  <42.289551, 34.159718, 23.434067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775890, 34.796619, 23.387115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388561, 34.893993, 23.409319>,  <42.156162, 34.952419, 23.422640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388561, 34.893993, 23.409319>,  <42.775890, 34.796619, 23.387115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388561, 34.893993, 23.409319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130474, 0.303798, 0.943760,
		0.212883, 0.921111, -0.325938,
		-0.968327, 0.243437, 0.055507,
		42.098064, 34.967026, 23.425972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779091, 35.484257, 23.602961>,  <42.775890, 34.796619, 23.387115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779091, 35.484257, 23.602961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423740, 35.330227, 23.702967>,  <42.210529, 35.237808, 23.762970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423740, 35.330227, 23.702967>,  <42.779091, 35.484257, 23.602961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423740, 35.330227, 23.702967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046065, 0.467043, 0.883034,
		-0.456805, 0.795981, -0.397170,
		-0.888373, -0.385079, 0.250014,
		42.157227, 35.214703, 23.777971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499413, 35.959488, 24.057739>,  <42.779091, 35.484257, 23.602961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499413, 35.959488, 24.057739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278954, 35.632458, 24.124439>,  <42.146679, 35.436237, 24.164459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278954, 35.632458, 24.124439>,  <42.499413, 35.959488, 24.057739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278954, 35.632458, 24.124439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146796, 0.291729, 0.945169,
		-0.821394, 0.496449, -0.280803,
		-0.551147, -0.817577, 0.166748,
		42.113609, 35.387184, 24.174463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971283, 36.234348, 24.475636>,  <42.499413, 35.959488, 24.057739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971283, 36.234348, 24.475636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938675, 35.838615, 24.523932>,  <41.919109, 35.601177, 24.552908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938675, 35.838615, 24.523932>,  <41.971283, 36.234348, 24.475636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938675, 35.838615, 24.523932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039657, 0.117826, 0.992242,
		-0.995883, 0.085673, 0.029629,
		-0.081517, -0.989332, 0.120738,
		41.914219, 35.541817, 24.560152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355091, 36.051437, 24.948980>,  <41.971283, 36.234348, 24.475636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355091, 36.051437, 24.948980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601276, 35.736290, 24.957613>,  <41.748989, 35.547203, 24.962791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601276, 35.736290, 24.957613>,  <41.355091, 36.051437, 24.948980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601276, 35.736290, 24.957613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054708, 0.070019, 0.996044,
		-0.786261, -0.611852, 0.086197,
		0.615467, -0.787867, 0.021580,
		41.785915, 35.499931, 24.964087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086887, 35.603973, 25.586357>,  <41.355091, 36.051437, 24.948980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086887, 35.603973, 25.586357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458225, 35.494770, 25.485453>,  <41.681030, 35.429249, 25.424910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458225, 35.494770, 25.485453>,  <41.086887, 35.603973, 25.586357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458225, 35.494770, 25.485453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226249, -0.123438, 0.966216,
		-0.294929, -0.954058, -0.052825,
		0.928347, -0.273014, -0.252261,
		41.736729, 35.412865, 25.409775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249062, 35.033115, 26.025532>,  <41.086887, 35.603973, 25.586357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249062, 35.033115, 26.025532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612064, 35.144890, 25.900091>,  <41.829865, 35.211956, 25.824827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612064, 35.144890, 25.900091>,  <41.249062, 35.033115, 26.025532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612064, 35.144890, 25.900091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310150, 0.057708, 0.948935,
		0.283263, -0.958429, -0.034297,
		0.907507, 0.279435, -0.313603,
		41.884315, 35.228722, 25.806011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713867, 34.737835, 26.472239>,  <41.249062, 35.033115, 26.025532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713867, 34.737835, 26.472239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966049, 34.999115, 26.304499>,  <42.117359, 35.155884, 26.203856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.966049, 34.999115, 26.304499>,  <41.713867, 34.737835, 26.472239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966049, 34.999115, 26.304499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430845, 0.154907, 0.889031,
		0.645675, -0.741170, -0.183766,
		0.630457, 0.653200, -0.419349,
		42.155186, 35.195076, 26.178694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486355, 34.565086, 26.578039>,  <41.713867, 34.737835, 26.472239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486355, 34.565086, 26.578039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438725, 34.959221, 26.529154>,  <42.410149, 35.195702, 26.499823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438725, 34.959221, 26.529154>,  <42.486355, 34.565086, 26.578039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438725, 34.959221, 26.529154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292709, 0.152455, 0.943969,
		0.948759, 0.076627, -0.306570,
		-0.119072, 0.985335, -0.122214,
		42.403004, 35.254822, 26.492489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970898, 34.854855, 27.073542>,  <42.486355, 34.565086, 26.578039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970898, 34.854855, 27.073542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746552, 35.170395, 26.973030>,  <42.611942, 35.359718, 26.912724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746552, 35.170395, 26.973030>,  <42.970898, 34.854855, 27.073542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746552, 35.170395, 26.973030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285755, 0.469315, 0.835516,
		0.777026, 0.396812, -0.488642,
		-0.560870, 0.788850, -0.251279,
		42.578289, 35.407051, 26.897646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394165, 35.397091, 27.162083>,  <42.970898, 34.854855, 27.073542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394165, 35.397091, 27.162083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025723, 35.552368, 27.173912>,  <42.804657, 35.645535, 27.181009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025723, 35.552368, 27.173912>,  <43.394165, 35.397091, 27.162083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025723, 35.552368, 27.173912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212092, 0.436651, 0.874273,
		0.326472, 0.811568, -0.484533,
		-0.921104, 0.388191, 0.029572,
		42.749390, 35.668827, 27.182783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428741, 36.109169, 27.313301>,  <43.394165, 35.397091, 27.162083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428741, 36.109169, 27.313301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051628, 36.020878, 27.413250>,  <42.825359, 35.967903, 27.473219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051628, 36.020878, 27.413250>,  <43.428741, 36.109169, 27.313301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051628, 36.020878, 27.413250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133140, 0.437850, 0.889135,
		-0.305662, 0.871531, -0.383411,
		-0.942785, -0.220727, 0.249870,
		42.768791, 35.954659, 27.488211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214458, 36.614174, 27.756100>,  <43.428741, 36.109169, 27.313301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214458, 36.614174, 27.756100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911209, 36.368282, 27.843143>,  <42.729259, 36.220745, 27.895369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911209, 36.368282, 27.843143>,  <43.214458, 36.614174, 27.756100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911209, 36.368282, 27.843143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062501, 0.400658, 0.914094,
		-0.649111, 0.679394, -0.342169,
		-0.758122, -0.614734, 0.217608,
		42.683773, 36.183861, 27.908426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544243, 36.994404, 28.140034>,  <43.214458, 36.614174, 27.756100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544243, 36.994404, 28.140034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538380, 36.610260, 28.251379>,  <42.534863, 36.379772, 28.318186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538380, 36.610260, 28.251379>,  <42.544243, 36.994404, 28.140034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538380, 36.610260, 28.251379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485294, 0.250241, 0.837776,
		-0.874228, -0.122805, -0.469728,
		-0.014662, -0.960364, 0.278365,
		42.533981, 36.322151, 28.334888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892540, 36.881569, 28.334993>,  <42.544243, 36.994404, 28.140034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892540, 36.881569, 28.334993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090824, 36.585758, 28.517147>,  <42.209793, 36.408272, 28.626438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090824, 36.585758, 28.517147>,  <41.892540, 36.881569, 28.334993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090824, 36.585758, 28.517147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450462, 0.229364, 0.862830,
		-0.742535, -0.632844, -0.219431,
		0.495707, -0.739527, 0.455383,
		42.239536, 36.363899, 28.653763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372726, 36.674454, 28.800735>,  <41.892540, 36.881569, 28.334993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372726, 36.674454, 28.800735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704731, 36.504200, 28.944916>,  <41.903934, 36.402050, 29.031425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704731, 36.504200, 28.944916>,  <41.372726, 36.674454, 28.800735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704731, 36.504200, 28.944916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356530, 0.092103, 0.929733,
		-0.428921, -0.900198, -0.075303,
		0.830008, -0.425630, 0.360453,
		41.953732, 36.376511, 29.053051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077869, 36.111771, 29.256096>,  <41.372726, 36.674454, 28.800735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077869, 36.111771, 29.256096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453445, 36.185349, 29.372412>,  <41.678791, 36.229496, 29.442202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453445, 36.185349, 29.372412>,  <41.077869, 36.111771, 29.256096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453445, 36.185349, 29.372412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312424, 0.101645, 0.944489,
		0.144179, -0.977666, 0.152908,
		0.938938, 0.183948, 0.290791,
		41.735126, 36.240532, 29.459650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196732, 35.672024, 29.927532>,  <41.077869, 36.111771, 29.256096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196732, 35.672024, 29.927532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485218, 35.948952, 29.936844>,  <41.658310, 36.115108, 29.942430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485218, 35.948952, 29.936844>,  <41.196732, 35.672024, 29.927532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485218, 35.948952, 29.936844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071882, 0.041374, 0.996555,
		0.688970, -0.720405, 0.079605,
		0.721216, 0.692319, 0.023279,
		41.701584, 36.156647, 29.943827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666748, 35.389011, 30.388777>,  <41.196732, 35.672024, 29.927532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666748, 35.389011, 30.388777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733677, 35.782890, 30.369287>,  <41.773834, 36.019218, 30.357594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733677, 35.782890, 30.369287>,  <41.666748, 35.389011, 30.388777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733677, 35.782890, 30.369287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043363, 0.042020, 0.998176,
		0.984948, -0.169129, -0.035669,
		0.167321, 0.984698, -0.048722,
		41.783875, 36.078300, 30.354671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309471, 35.551311, 30.906864>,  <41.666748, 35.389011, 30.388777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309471, 35.551311, 30.906864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112679, 35.894707, 30.848963>,  <41.994602, 36.100746, 30.814222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112679, 35.894707, 30.848963>,  <42.309471, 35.551311, 30.906864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112679, 35.894707, 30.848963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021255, 0.154372, 0.987784,
		0.870349, 0.489044, -0.057701,
		-0.491977, 0.858490, -0.144752,
		41.965084, 36.152252, 30.805538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581024, 36.013096, 31.409700>,  <42.309471, 35.551311, 30.906864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581024, 36.013096, 31.409700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256569, 36.210640, 31.284382>,  <42.061897, 36.329166, 31.209190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256569, 36.210640, 31.284382>,  <42.581024, 36.013096, 31.409700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256569, 36.210640, 31.284382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136717, 0.360724, 0.922598,
		0.568651, 0.791187, -0.225077,
		-0.811138, 0.493864, -0.313295,
		42.013229, 36.358799, 31.190393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669029, 36.767162, 31.522390>,  <42.581024, 36.013096, 31.409700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669029, 36.767162, 31.522390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279423, 36.676662, 31.518183>,  <42.045658, 36.622364, 31.515659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279423, 36.676662, 31.518183>,  <42.669029, 36.767162, 31.522390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279423, 36.676662, 31.518183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071287, 0.262156, 0.962389,
		-0.214984, 0.938129, -0.271472,
		-0.974012, -0.226250, -0.010517,
		41.987221, 36.608788, 31.515028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492580, 37.360081, 31.807831>,  <42.669029, 36.767162, 31.522390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492580, 37.360081, 31.807831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192726, 37.102169, 31.867582>,  <42.012814, 36.947422, 31.903433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192726, 37.102169, 31.867582>,  <42.492580, 37.360081, 31.807831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192726, 37.102169, 31.867582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009571, 0.215115, 0.976542,
		-0.661785, 0.733477, -0.155086,
		-0.749632, -0.644777, 0.149380,
		41.967838, 36.908737, 31.912397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958839, 37.754711, 32.180523>,  <42.492580, 37.360081, 31.807831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958839, 37.754711, 32.180523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898640, 37.362259, 32.229065>,  <41.862518, 37.126785, 32.258190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898640, 37.362259, 32.229065>,  <41.958839, 37.754711, 32.180523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898640, 37.362259, 32.229065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041881, 0.116314, 0.992329,
		-0.987722, 0.154428, 0.023585,
		-0.150500, -0.981134, 0.121354,
		41.853489, 37.067921, 32.265472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025089, 37.717937, 32.863472>,  <41.958839, 37.754711, 32.180523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025089, 37.717937, 32.863472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936268, 37.331615, 32.809921>,  <41.882977, 37.099823, 32.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936268, 37.331615, 32.809921>,  <42.025089, 37.717937, 32.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936268, 37.331615, 32.809921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021882, -0.132332, 0.990964,
		-0.974790, 0.222972, 0.008251,
		-0.222049, -0.965801, -0.133875,
		41.869652, 37.041874, 32.769760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410618, 37.582623, 33.113716>,  <42.025089, 37.717937, 32.863472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410618, 37.582623, 33.113716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640289, 37.258797, 33.162579>,  <41.778091, 37.064503, 33.191898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640289, 37.258797, 33.162579>,  <41.410618, 37.582623, 33.113716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640289, 37.258797, 33.162579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269063, -0.045664, 0.962040,
		-0.773255, -0.585252, -0.244043,
		0.574179, -0.809565, 0.122159,
		41.812542, 37.015926, 33.199226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058422, 37.280598, 33.674133>,  <41.410618, 37.582623, 33.113716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058422, 37.280598, 33.674133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410496, 37.091572, 33.656406>,  <41.621738, 36.978157, 33.645771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410496, 37.091572, 33.656406>,  <41.058422, 37.280598, 33.674133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410496, 37.091572, 33.656406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036216, -0.159972, 0.986457,
		-0.473255, -0.866655, -0.157919,
		0.880180, -0.472565, -0.044321,
		41.674549, 36.949802, 33.643108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016781, 36.683819, 34.000290>,  <41.058422, 37.280598, 33.674133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016781, 36.683819, 34.000290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414509, 36.726406, 34.000568>,  <41.653145, 36.751961, 34.000736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414509, 36.726406, 34.000568>,  <41.016781, 36.683819, 34.000290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414509, 36.726406, 34.000568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013465, -0.132248, 0.991125,
		0.105621, -0.985482, -0.132930,
		0.994315, 0.106473, 0.000699,
		41.712803, 36.758347, 34.000778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315304, 36.018738, 34.189701>,  <41.016781, 36.683819, 34.000290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315304, 36.018738, 34.189701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574856, 36.302868, 34.298798>,  <41.730587, 36.473347, 34.364254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574856, 36.302868, 34.298798>,  <41.315304, 36.018738, 34.189701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574856, 36.302868, 34.298798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057740, -0.311442, 0.948509,
		0.758696, -0.631218, -0.161074,
		0.648881, 0.710329, 0.272737,
		41.769520, 36.515968, 34.380619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837158, 35.660545, 34.613960>,  <41.315304, 36.018738, 34.189701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837158, 35.660545, 34.613960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896751, 36.049164, 34.687607>,  <41.932507, 36.282333, 34.731796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896751, 36.049164, 34.687607>,  <41.837158, 35.660545, 34.613960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896751, 36.049164, 34.687607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090335, -0.198792, 0.975869,
		0.984705, -0.128752, -0.117381,
		0.148979, 0.971548, 0.184120,
		41.941444, 36.340630, 34.742844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421867, 35.692150, 35.126133>,  <41.837158, 35.660545, 34.613960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421867, 35.692150, 35.126133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217247, 36.035583, 35.139668>,  <42.094475, 36.241646, 35.147789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217247, 36.035583, 35.139668>,  <42.421867, 35.692150, 35.126133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217247, 36.035583, 35.139668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103755, -0.100818, 0.989480,
		0.852964, 0.502660, 0.140656,
		-0.511553, 0.858585, 0.033841,
		42.063782, 36.293159, 35.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792564, 36.166046, 35.589054>,  <42.421867, 35.692150, 35.126133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792564, 36.166046, 35.589054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432026, 36.339283, 35.587730>,  <42.215702, 36.443226, 35.586937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432026, 36.339283, 35.587730>,  <42.792564, 36.166046, 35.589054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432026, 36.339283, 35.587730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037344, -0.070103, 0.996840,
		0.431491, 0.898620, 0.079360,
		-0.901344, 0.433091, -0.003309,
		42.161621, 36.469212, 35.586739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865898, 36.669506, 36.124290>,  <42.792564, 36.166046, 35.589054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865898, 36.669506, 36.124290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475544, 36.593567, 36.081211>,  <42.241329, 36.548004, 36.055363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475544, 36.593567, 36.081211>,  <42.865898, 36.669506, 36.124290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475544, 36.593567, 36.081211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108783, -0.004746, 0.994054,
		-0.189227, 0.981803, -0.016021,
		-0.975889, -0.189845, -0.107702,
		42.182777, 36.536613, 36.048901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546066, 37.213268, 36.527523>,  <42.865898, 36.669506, 36.124290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546066, 37.213268, 36.527523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272518, 36.929230, 36.460487>,  <42.108387, 36.758808, 36.420265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272518, 36.929230, 36.460487>,  <42.546066, 37.213268, 36.527523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272518, 36.929230, 36.460487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273179, 0.036216, 0.961281,
		-0.676529, 0.703176, -0.218750,
		-0.683872, -0.710093, -0.167591,
		42.067356, 36.716202, 36.410210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017933, 37.435867, 36.850281>,  <42.546066, 37.213268, 36.527523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017933, 37.435867, 36.850281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931431, 37.046070, 36.826263>,  <41.879528, 36.812191, 36.811852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931431, 37.046070, 36.826263>,  <42.017933, 37.435867, 36.850281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931431, 37.046070, 36.826263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145692, -0.028601, 0.988916,
		-0.965405, 0.222606, -0.135790,
		-0.216255, -0.974489, -0.060044,
		41.866554, 36.753723, 36.808250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247406, 37.249645, 37.031853>,  <42.017933, 37.435867, 36.850281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247406, 37.249645, 37.031853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499554, 36.949810, 37.112614>,  <41.650841, 36.769909, 37.161072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499554, 36.949810, 37.112614>,  <41.247406, 37.249645, 37.031853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499554, 36.949810, 37.112614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360419, -0.052240, 0.931327,
		-0.687560, -0.659845, -0.303094,
		0.630365, -0.749584, 0.201902,
		41.688663, 36.724934, 37.173183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902794, 36.639454, 37.255058>,  <41.247406, 37.249645, 37.031853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902794, 36.639454, 37.255058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270191, 36.669510, 37.410347>,  <41.490631, 36.687546, 37.503521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270191, 36.669510, 37.410347>,  <40.902794, 36.639454, 37.255058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270191, 36.669510, 37.410347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394061, 0.092385, 0.914429,
		0.032848, -0.992884, 0.114466,
		0.918497, 0.075144, 0.388223,
		41.545742, 36.692055, 37.526814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870384, 36.174213, 37.783421>,  <40.902794, 36.639454, 37.255058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870384, 36.174213, 37.783421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192707, 36.400509, 37.853413>,  <41.386101, 36.536285, 37.895409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192707, 36.400509, 37.853413>,  <40.870384, 36.174213, 37.783421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192707, 36.400509, 37.853413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268465, 0.085623, 0.959476,
		0.527835, -0.820124, 0.220877,
		0.805802, 0.565743, 0.174979,
		41.434448, 36.570232, 37.905907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218056, 35.807617, 38.299759>,  <40.870384, 36.174213, 37.783421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218056, 35.807617, 38.299759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271339, 36.204044, 38.302280>,  <41.303310, 36.441902, 38.303795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271339, 36.204044, 38.302280>,  <41.218056, 35.807617, 38.299759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271339, 36.204044, 38.302280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172867, 0.016972, 0.984799,
		0.975896, -0.132270, 0.173584,
		0.133205, 0.991068, 0.006303,
		41.311302, 36.501366, 38.304173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371849, 35.924774, 38.946224>,  <41.218056, 35.807617, 38.299759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371849, 35.924774, 38.946224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338104, 36.300743, 38.813900>,  <41.317856, 36.526325, 38.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338104, 36.300743, 38.813900>,  <41.371849, 35.924774, 38.946224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338104, 36.300743, 38.813900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189780, 0.310763, 0.931349,
		0.978195, 0.141354, 0.152161,
		-0.084364, 0.939918, -0.330813,
		41.312794, 36.582718, 38.714657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654865, 36.282768, 39.410770>,  <41.371849, 35.924774, 38.946224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654865, 36.282768, 39.410770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450108, 36.576687, 39.232765>,  <41.327251, 36.753036, 39.125961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450108, 36.576687, 39.232765>,  <41.654865, 36.282768, 39.410770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450108, 36.576687, 39.232765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385458, 0.266488, 0.883406,
		0.767713, 0.623747, 0.146818,
		-0.511897, 0.734795, -0.445014,
		41.296539, 36.797127, 39.099262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631172, 36.769299, 39.889832>,  <41.654865, 36.282768, 39.410770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631172, 36.769299, 39.889832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325157, 36.875713, 39.655243>,  <41.141548, 36.939564, 39.514488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325157, 36.875713, 39.655243>,  <41.631172, 36.769299, 39.889832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325157, 36.875713, 39.655243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542234, 0.225203, 0.809485,
		0.347429, 0.937287, -0.028033,
		-0.765033, 0.266038, -0.586471,
		41.095646, 36.955524, 39.479301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489563, 37.418472, 40.060925>,  <41.631172, 36.769299, 39.889832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489563, 37.418472, 40.060925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163181, 37.244808, 39.908234>,  <40.967350, 37.140610, 39.816620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163181, 37.244808, 39.908234>,  <41.489563, 37.418472, 40.060925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163181, 37.244808, 39.908234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493939, 0.180458, 0.850564,
		-0.300397, 0.882574, -0.361696,
		-0.815957, -0.434163, -0.381729,
		40.918396, 37.114559, 39.793716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992302, 37.914864, 40.004303>,  <41.489563, 37.418472, 40.060925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992302, 37.914864, 40.004303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812443, 37.558926, 40.035275>,  <40.704525, 37.345364, 40.053856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812443, 37.558926, 40.035275>,  <40.992302, 37.914864, 40.004303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812443, 37.558926, 40.035275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511669, 0.327664, 0.794248,
		-0.732125, 0.317518, -0.602640,
		-0.449652, -0.889842, 0.077427,
		40.677547, 37.291973, 40.058502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322060, 38.074482, 40.236355>,  <40.992302, 37.914864, 40.004303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322060, 38.074482, 40.236355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320827, 37.677002, 40.281162>,  <40.320087, 37.438515, 40.308048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320827, 37.677002, 40.281162>,  <40.322060, 38.074482, 40.236355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320827, 37.677002, 40.281162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634420, 0.088531, 0.767902,
		-0.772982, -0.068705, -0.630697,
		-0.003077, -0.993701, 0.112021,
		40.319904, 37.378891, 40.314770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622849, 37.998493, 40.429146>,  <40.322060, 38.074482, 40.236355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622849, 37.998493, 40.429146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850918, 37.705986, 40.578892>,  <39.987759, 37.530483, 40.668739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850918, 37.705986, 40.578892>,  <39.622849, 37.998493, 40.429146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850918, 37.705986, 40.578892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444341, 0.108782, 0.889228,
		-0.690988, -0.673361, -0.262908,
		0.570172, -0.731267, 0.374369,
		40.021969, 37.486607, 40.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130508, 37.789997, 40.869400>,  <39.622849, 37.998493, 40.429146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130508, 37.789997, 40.869400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476620, 37.627724, 40.987194>,  <39.684284, 37.530361, 41.057873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476620, 37.627724, 40.987194>,  <39.130508, 37.789997, 40.869400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476620, 37.627724, 40.987194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308576, 0.031937, 0.950663,
		-0.395071, -0.913457, -0.097549,
		0.865274, -0.405681, 0.294489,
		39.736202, 37.506020, 41.075542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986858, 37.220673, 41.303196>,  <39.130508, 37.789997, 40.869400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986858, 37.220673, 41.303196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338001, 37.388412, 41.395725>,  <39.548687, 37.489056, 41.451241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338001, 37.388412, 41.395725>,  <38.986858, 37.220673, 41.303196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338001, 37.388412, 41.395725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370110, 0.287494, 0.883383,
		0.303940, -0.861102, 0.407583,
		0.877860, 0.419346, 0.231322,
		39.601360, 37.514217, 41.465122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116962, 36.917889, 41.932480>,  <38.986858, 37.220673, 41.303196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116962, 36.917889, 41.932480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356453, 37.237812, 41.915337>,  <39.500145, 37.429768, 41.905052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356453, 37.237812, 41.915337>,  <39.116962, 36.917889, 41.932480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356453, 37.237812, 41.915337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331886, 0.296431, 0.895534,
		0.728960, -0.521953, 0.442925,
		0.598724, 0.799808, -0.042857,
		39.536072, 37.477753, 41.902481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302326, 36.925541, 42.585690>,  <39.116962, 36.917889, 41.932480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302326, 36.925541, 42.585690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381508, 37.276207, 42.410294>,  <39.429016, 37.486607, 42.305054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381508, 37.276207, 42.410294>,  <39.302326, 36.925541, 42.585690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381508, 37.276207, 42.410294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151726, 0.469357, 0.869875,
		0.968398, -0.105662, 0.225922,
		0.197951, 0.876664, -0.438492,
		39.440891, 37.539207, 42.278748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795612, 37.336678, 42.986000>,  <39.302326, 36.925541, 42.585690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795612, 37.336678, 42.986000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614613, 37.640167, 42.798561>,  <39.506012, 37.822262, 42.686100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614613, 37.640167, 42.798561>,  <39.795612, 37.336678, 42.986000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614613, 37.640167, 42.798561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187804, 0.432606, 0.881806,
		0.871764, 0.487021, -0.053263,
		-0.452500, 0.758724, -0.468595,
		39.478863, 37.867783, 42.657982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041687, 37.960014, 43.338974>,  <39.795612, 37.336678, 42.986000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041687, 37.960014, 43.338974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695297, 38.054085, 43.162437>,  <39.487465, 38.110527, 43.056515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695297, 38.054085, 43.162437>,  <40.041687, 37.960014, 43.338974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695297, 38.054085, 43.162437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281242, 0.500728, 0.818642,
		0.413516, 0.833046, -0.367476,
		-0.865972, 0.235172, -0.441346,
		39.435505, 38.124638, 43.030033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934193, 38.732090, 43.490463>,  <40.041687, 37.960014, 43.338974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934193, 38.732090, 43.490463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576225, 38.572952, 43.409626>,  <39.361446, 38.477470, 43.361122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576225, 38.572952, 43.409626>,  <39.934193, 38.732090, 43.490463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576225, 38.572952, 43.409626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369898, 0.408074, 0.834656,
		-0.249596, 0.821702, -0.512355,
		-0.894917, -0.397846, -0.202093,
		39.307751, 38.453598, 43.348999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561497, 39.214310, 43.560867>,  <39.934193, 38.732090, 43.490463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561497, 39.214310, 43.560867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316460, 38.903011, 43.616104>,  <39.169437, 38.716232, 43.649246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316460, 38.903011, 43.616104>,  <39.561497, 39.214310, 43.560867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316460, 38.903011, 43.616104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314181, 0.400079, 0.860946,
		-0.725273, 0.484022, -0.489594,
		-0.612592, -0.778242, 0.138096,
		39.132683, 38.669540, 43.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756786, 39.365055, 43.451851>,  <39.561497, 39.214310, 43.560867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756786, 39.365055, 43.451851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917492, 39.123150, 43.726906>,  <39.013916, 38.978004, 43.891937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917492, 39.123150, 43.726906>,  <38.756786, 39.365055, 43.451851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917492, 39.123150, 43.726906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172598, 0.687438, 0.705436,
		-0.899330, -0.402103, 0.171807,
		0.401764, -0.604766, 0.687636,
		39.038021, 38.941719, 43.933197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284451, 39.450001, 44.019466>,  <38.756786, 39.365055, 43.451851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284451, 39.450001, 44.019466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655151, 39.334251, 44.115299>,  <38.877571, 39.264801, 44.172798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655151, 39.334251, 44.115299>,  <38.284451, 39.450001, 44.019466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655151, 39.334251, 44.115299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009915, 0.656343, 0.754398,
		-0.375553, -0.696761, 0.611134,
		0.926748, -0.289376, 0.239583,
		38.933174, 39.247440, 44.187176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322128, 39.288212, 44.793785>,  <38.284451, 39.450001, 44.019466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322128, 39.288212, 44.793785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632072, 39.433250, 44.586666>,  <38.818039, 39.520275, 44.462395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632072, 39.433250, 44.586666>,  <38.322128, 39.288212, 44.793785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632072, 39.433250, 44.586666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046367, 0.849525, 0.525507,
		0.630427, -0.383187, 0.675078,
		0.774863, 0.362595, -0.517796,
		38.864532, 39.542030, 44.431328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768723, 39.616669, 45.220734>,  <38.322128, 39.288212, 44.793785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768723, 39.616669, 45.220734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866451, 39.796021, 44.876812>,  <38.925087, 39.903629, 44.670460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866451, 39.796021, 44.876812>,  <38.768723, 39.616669, 45.220734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866451, 39.796021, 44.876812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025855, 0.883349, 0.468002,
		0.969350, -0.136572, 0.204226,
		0.244319, 0.448377, -0.859806,
		38.939747, 39.930534, 44.618870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131363, 38.919926, 45.062122>,  <38.768723, 39.616669, 45.220734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131363, 38.919926, 45.062122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268089, 39.217056, 44.831863>,  <39.350124, 39.395336, 44.693710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268089, 39.217056, 44.831863>,  <39.131363, 38.919926, 45.062122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268089, 39.217056, 44.831863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648238, 0.257118, 0.716713,
		0.680404, -0.618139, -0.393643,
		0.341815, 0.742829, -0.575646,
		39.370632, 39.439903, 44.659168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054710, 38.239567, 44.831726>,  <39.131363, 38.919926, 45.062122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054710, 38.239567, 44.831726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753304, 38.416138, 44.636848>,  <38.572460, 38.522079, 44.519920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753304, 38.416138, 44.636848>,  <39.054710, 38.239567, 44.831726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753304, 38.416138, 44.636848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417322, -0.251453, -0.873277,
		-0.507993, -0.861345, 0.005257,
		-0.753515, 0.441425, -0.487195,
		38.527248, 38.548565, 44.490688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675812, 37.728077, 44.457317>,  <39.054710, 38.239567, 44.831726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675812, 37.728077, 44.457317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654842, 38.080223, 44.268761>,  <38.642262, 38.291512, 44.155628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654842, 38.080223, 44.268761>,  <38.675812, 37.728077, 44.457317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654842, 38.080223, 44.268761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446549, -0.401550, -0.799595,
		-0.893222, -0.252416, -0.372075,
		-0.052424, 0.880366, -0.471390,
		38.639114, 38.344334, 44.127342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373203, 37.640835, 43.807133>,  <38.675812, 37.728077, 44.457317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373203, 37.640835, 43.807133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619164, 37.953514, 43.765461>,  <38.766739, 38.141121, 43.740459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619164, 37.953514, 43.765461>,  <38.373203, 37.640835, 43.807133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619164, 37.953514, 43.765461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280274, -0.340098, -0.897652,
		-0.737120, 0.522768, -0.428215,
		0.614899, 0.781695, -0.104175,
		38.803635, 38.188023, 43.734207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074009, 37.962563, 43.131153>,  <38.373203, 37.640835, 43.807133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074009, 37.962563, 43.131153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452808, 38.075325, 43.192760>,  <38.680088, 38.142982, 43.229725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452808, 38.075325, 43.192760>,  <38.074009, 37.962563, 43.131153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452808, 38.075325, 43.192760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185739, -0.089316, -0.978531,
		-0.262102, 0.955274, -0.136944,
		0.946997, 0.281910, 0.154022,
		38.736908, 38.159897, 43.238968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290619, 38.201618, 42.401989>,  <38.074009, 37.962563, 43.131153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290619, 38.201618, 42.401989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629078, 38.205723, 42.615131>,  <38.832153, 38.208187, 42.743015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629078, 38.205723, 42.615131>,  <38.290619, 38.201618, 42.401989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629078, 38.205723, 42.615131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531073, -0.100114, -0.841391,
		0.044709, 0.994923, -0.090163,
		0.846146, 0.010265, 0.532853,
		38.882923, 38.208801, 42.774986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725494, 38.580910, 41.991997>,  <38.290619, 38.201618, 42.401989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725494, 38.580910, 41.991997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968769, 38.370564, 42.229847>,  <39.114735, 38.244354, 42.372555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968769, 38.370564, 42.229847>,  <38.725494, 38.580910, 41.991997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968769, 38.370564, 42.229847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536486, -0.279807, -0.796172,
		0.585061, 0.803226, 0.111947,
		0.608182, -0.525868, 0.594624,
		39.151222, 38.212803, 42.408234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487797, 38.716782, 41.682842>,  <38.725494, 38.580910, 41.991997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487797, 38.716782, 41.682842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466469, 38.361671, 41.865711>,  <39.453671, 38.148605, 41.975433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466469, 38.361671, 41.865711>,  <39.487797, 38.716782, 41.682842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466469, 38.361671, 41.865711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528146, -0.413619, -0.741607,
		0.847478, 0.201906, 0.490933,
		-0.053324, -0.887780, 0.457169,
		39.450470, 38.095337, 42.002861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868149, 38.717377, 42.274994>,  <39.487797, 38.716782, 41.682842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868149, 38.717377, 42.274994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802940, 38.322727, 42.275040>,  <39.763813, 38.085938, 42.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802940, 38.322727, 42.275040>,  <39.868149, 38.717377, 42.274994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802940, 38.322727, 42.275040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625422, -0.103431, -0.773401,
		0.763067, -0.126011, 0.633917,
		-0.163024, -0.986622, 0.000114,
		39.754032, 38.026741, 42.275074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433769, 38.418900, 41.854404>,  <39.868149, 38.717377, 42.274994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433769, 38.418900, 41.854404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167679, 38.123417, 41.897846>,  <40.008026, 37.946129, 41.923912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167679, 38.123417, 41.897846>,  <40.433769, 38.418900, 41.854404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167679, 38.123417, 41.897846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435124, -0.501759, -0.747600,
		0.606749, -0.450063, 0.655209,
		-0.665224, -0.738702, 0.108609,
		39.968113, 37.901806, 41.930428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825241, 37.846996, 41.750217>,  <40.433769, 38.418900, 41.854404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825241, 37.846996, 41.750217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444813, 37.741108, 41.686474>,  <40.216557, 37.677574, 41.648228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444813, 37.741108, 41.686474>,  <40.825241, 37.846996, 41.750217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444813, 37.741108, 41.686474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276312, -0.497823, -0.822085,
		0.138290, -0.825891, 0.546608,
		-0.951067, -0.264720, -0.159359,
		40.159492, 37.661694, 41.638664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857189, 37.174427, 41.543411>,  <40.825241, 37.846996, 41.750217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857189, 37.174427, 41.543411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496162, 37.283924, 41.410484>,  <40.279545, 37.349621, 41.330730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496162, 37.283924, 41.410484>,  <40.857189, 37.174427, 41.543411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496162, 37.283924, 41.410484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133639, -0.555604, -0.820637,
		-0.409274, -0.785093, 0.464890,
		-0.902571, 0.273738, -0.332313,
		40.225391, 37.366047, 41.310791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567280, 36.518692, 41.288223>,  <40.857189, 37.174427, 41.543411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567280, 36.518692, 41.288223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417061, 36.831760, 41.089672>,  <40.326927, 37.019600, 40.970539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417061, 36.831760, 41.089672>,  <40.567280, 36.518692, 41.288223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417061, 36.831760, 41.089672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385445, -0.355174, -0.851636,
		-0.842849, -0.511160, -0.168289,
		-0.375550, 0.782667, -0.496382,
		40.304398, 37.066559, 40.940758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512341, 36.158119, 40.588467>,  <40.567280, 36.518692, 41.288223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512341, 36.158119, 40.588467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455944, 36.545517, 40.506355>,  <40.422104, 36.777954, 40.457088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455944, 36.545517, 40.506355>,  <40.512341, 36.158119, 40.588467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455944, 36.545517, 40.506355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347498, -0.145744, -0.926285,
		-0.927020, -0.201937, -0.316000,
		-0.140996, 0.968494, -0.205280,
		40.413647, 36.836063, 40.444771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990200, 36.206486, 39.903587>,  <40.512341, 36.158119, 40.588467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990200, 36.206486, 39.903587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186192, 36.554909, 39.917351>,  <40.303787, 36.763962, 39.925610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186192, 36.554909, 39.917351>,  <39.990200, 36.206486, 39.903587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186192, 36.554909, 39.917351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264660, -0.111036, -0.957928,
		-0.830590, 0.478466, -0.284939,
		0.489974, 0.871058, 0.034406,
		40.333183, 36.816227, 39.927673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774212, 36.670650, 39.330967>,  <39.990200, 36.206486, 39.903587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774212, 36.670650, 39.330967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129456, 36.799839, 39.461788>,  <40.342602, 36.877350, 39.540279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129456, 36.799839, 39.461788>,  <39.774212, 36.670650, 39.330967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129456, 36.799839, 39.461788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319261, 0.078446, -0.944415,
		-0.330671, 0.943154, -0.033443,
		0.888105, 0.322967, 0.327052,
		40.395885, 36.896729, 39.559902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976276, 37.304493, 38.882195>,  <39.774212, 36.670650, 39.330967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976276, 37.304493, 38.882195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315392, 37.164764, 39.041813>,  <40.518860, 37.080925, 39.137585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315392, 37.164764, 39.041813>,  <39.976276, 37.304493, 38.882195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315392, 37.164764, 39.041813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406102, -0.056328, -0.912090,
		0.341093, 0.935307, 0.094108,
		0.847783, -0.349325, 0.399043,
		40.569725, 37.059967, 39.161526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474113, 37.590324, 38.486141>,  <39.976276, 37.304493, 38.882195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474113, 37.590324, 38.486141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697903, 37.320332, 38.678555>,  <40.832176, 37.158337, 38.794003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697903, 37.320332, 38.678555>,  <40.474113, 37.590324, 38.486141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697903, 37.320332, 38.678555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618628, -0.046190, -0.784325,
		0.551622, 0.736390, 0.391718,
		0.559476, -0.674979, 0.481031,
		40.865746, 37.117836, 38.822865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237034, 37.859245, 38.520596>,  <40.474113, 37.590324, 38.486141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237034, 37.859245, 38.520596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253918, 37.460907, 38.552872>,  <41.264050, 37.221905, 38.572239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253918, 37.460907, 38.552872>,  <41.237034, 37.859245, 38.520596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253918, 37.460907, 38.552872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741807, -0.022860, -0.670224,
		0.669284, 0.088149, 0.737760,
		0.042214, -0.995845, 0.080689,
		41.266582, 37.162155, 38.577080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908173, 37.725567, 38.526703>,  <41.237034, 37.859245, 38.520596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908173, 37.725567, 38.526703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728817, 37.383289, 38.423370>,  <41.621204, 37.177921, 38.361370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728817, 37.383289, 38.423370>,  <41.908173, 37.725567, 38.526703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728817, 37.383289, 38.423370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740927, -0.194155, -0.642908,
		0.499977, -0.479678, 0.721064,
		-0.448387, -0.855694, -0.258333,
		41.594299, 37.126579, 38.345871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400692, 37.355812, 38.197338>,  <41.908173, 37.725567, 38.526703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400692, 37.355812, 38.197338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108311, 37.093765, 38.120892>,  <41.932880, 36.936535, 38.075024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108311, 37.093765, 38.120892>,  <42.400692, 37.355812, 38.197338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108311, 37.093765, 38.120892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379777, -0.157826, -0.911516,
		0.566988, -0.738857, 0.364163,
		-0.730954, -0.655119, -0.191116,
		41.889023, 36.897228, 38.063557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752743, 36.651554, 37.964401>,  <42.400692, 37.355812, 38.197338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752743, 36.651554, 37.964401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376446, 36.647762, 37.828800>,  <42.150669, 36.645485, 37.747440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376446, 36.647762, 37.828800>,  <42.752743, 36.651554, 37.964401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376446, 36.647762, 37.828800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320372, -0.352719, -0.879176,
		-0.111235, -0.935681, 0.334854,
		-0.940738, -0.009483, -0.339000,
		42.094223, 36.644917, 37.727100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636318, 35.983742, 37.617516>,  <42.752743, 36.651554, 37.964401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636318, 35.983742, 37.617516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368874, 36.243980, 37.473473>,  <42.208408, 36.400124, 37.387047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368874, 36.243980, 37.473473>,  <42.636318, 35.983742, 37.617516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368874, 36.243980, 37.473473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284386, -0.223740, -0.932237,
		-0.687084, -0.725714, -0.035426,
		-0.668611, 0.650599, -0.360111,
		42.168289, 36.439159, 37.365440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924145, 35.516617, 38.158306>,  <42.636318, 35.983742, 37.617516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924145, 35.516617, 38.158306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616230, 35.478642, 37.905827>,  <42.431480, 35.455856, 37.754337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616230, 35.478642, 37.905827>,  <42.924145, 35.516617, 38.158306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616230, 35.478642, 37.905827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143661, -0.937736, 0.316248,
		-0.621924, 0.334123, 0.708217,
		-0.769787, -0.094939, -0.631201,
		42.385296, 35.450161, 37.716465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264694, 35.481258, 38.484451>,  <42.924145, 35.516617, 38.158306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264694, 35.481258, 38.484451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333111, 35.256916, 38.160431>,  <42.374161, 35.122311, 37.966019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333111, 35.256916, 38.160431>,  <42.264694, 35.481258, 38.484451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333111, 35.256916, 38.160431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342795, -0.804677, 0.484754,
		-0.923707, 0.194767, -0.329895,
		0.171045, -0.560858, -0.810051,
		42.384426, 35.088657, 37.917416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636940, 35.145023, 38.472275>,  <42.264694, 35.481258, 38.484451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636940, 35.145023, 38.472275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927181, 34.946461, 38.281662>,  <42.101326, 34.827324, 38.167294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927181, 34.946461, 38.281662>,  <41.636940, 35.145023, 38.472275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927181, 34.946461, 38.281662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322582, -0.857099, 0.401649,
		-0.607817, -0.137716, -0.782044,
		0.725603, -0.496402, -0.476535,
		42.144863, 34.797539, 38.138702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285900, 34.636250, 38.286713>,  <41.636940, 35.145023, 38.472275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285900, 34.636250, 38.286713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667492, 34.519554, 38.314472>,  <41.896446, 34.449535, 38.331127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667492, 34.519554, 38.314472>,  <41.285900, 34.636250, 38.286713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667492, 34.519554, 38.314472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287061, -0.821483, 0.492709,
		-0.086736, -0.489954, -0.867423,
		0.953977, -0.291739, 0.069395,
		41.953686, 34.432034, 38.335289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479843, 33.913776, 38.050655>,  <41.285900, 34.636250, 38.286713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479843, 33.913776, 38.050655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727955, 34.003040, 38.351440>,  <41.876820, 34.056599, 38.531914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727955, 34.003040, 38.351440>,  <41.479843, 33.913776, 38.050655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727955, 34.003040, 38.351440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215185, -0.873479, 0.436727,
		0.754289, -0.432704, -0.493778,
		0.620278, 0.223164, 0.751966,
		41.914040, 34.069988, 38.577030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272751, 33.923065, 38.130493>,  <41.479843, 33.913776, 38.050655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272751, 33.923065, 38.130493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401096, 33.786079, 37.777275>,  <42.478104, 33.703888, 37.565346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401096, 33.786079, 37.777275>,  <42.272751, 33.923065, 38.130493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401096, 33.786079, 37.777275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917322, 0.344415, 0.199747,
		0.235727, -0.874126, 0.424661,
		0.320864, -0.342465, -0.883043,
		42.497356, 33.683338, 37.512363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847286, 33.485203, 38.179596>,  <42.272751, 33.923065, 38.130493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847286, 33.485203, 38.179596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872051, 33.646721, 37.814495>,  <42.886909, 33.743633, 37.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872051, 33.646721, 37.814495>,  <42.847286, 33.485203, 38.179596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872051, 33.646721, 37.814495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950351, 0.255574, 0.177526,
		0.304960, -0.878425, -0.367926,
		0.061911, 0.403797, -0.912751,
		42.890625, 33.767860, 37.540668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381252, 33.221848, 37.707569>,  <42.847286, 33.485203, 38.179596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381252, 33.221848, 37.707569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344837, 33.614548, 37.640774>,  <43.322987, 33.850166, 37.600697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344837, 33.614548, 37.640774>,  <43.381252, 33.221848, 37.707569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344837, 33.614548, 37.640774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990050, 0.107297, 0.091041,
		0.107297, -0.157041, -0.981746,
		-0.091041, 0.981746, -0.166992,
		43.317524, 33.909073, 37.590675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815014, 33.490589, 37.075958>,  <43.381252, 33.221848, 37.707569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815014, 33.490589, 37.075958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762970, 33.786137, 37.340427>,  <43.731743, 33.963467, 37.499107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762970, 33.786137, 37.340427>,  <43.815014, 33.490589, 37.075958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762970, 33.786137, 37.340427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990111, 0.132103, 0.047219,
		-0.052454, 0.660775, -0.748749,
		-0.130113, 0.738867, 0.661170,
		43.723934, 34.007797, 37.538780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067207, 34.152122, 36.826096>,  <43.815014, 33.490589, 37.075958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067207, 34.152122, 36.826096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047356, 34.186234, 37.224144>,  <44.035446, 34.206699, 37.462975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047356, 34.186234, 37.224144>,  <44.067207, 34.152122, 36.826096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047356, 34.186234, 37.224144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861966, 0.506965, -0.000460,
		-0.504531, 0.857737, -0.098668,
		-0.049627, 0.085280, 0.995120,
		44.032467, 34.211819, 37.522678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284966, 34.809101, 36.994736>,  <44.067207, 34.152122, 36.826096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284966, 34.809101, 36.994736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404610, 34.576450, 37.297325>,  <44.476398, 34.436859, 37.478878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.404610, 34.576450, 37.297325>,  <44.284966, 34.809101, 36.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404610, 34.576450, 37.297325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935272, 0.335885, -0.111565,
		-0.189198, 0.740875, 0.644444,
		0.299115, -0.581623, 0.756469,
		44.494343, 34.401962, 37.524265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614910, 35.231365, 37.507450>,  <44.284966, 34.809101, 36.994736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614910, 35.231365, 37.507450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744240, 34.853310, 37.526081>,  <44.821838, 34.626476, 37.537258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744240, 34.853310, 37.526081>,  <44.614910, 35.231365, 37.507450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744240, 34.853310, 37.526081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900111, 0.291990, -0.323328,
		0.291990, 0.146464, 0.945140,
		0.323328, -0.945140, 0.046575,
		44.841240, 34.569767, 37.540054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153309, 35.201141, 37.956486>,  <44.614910, 35.231365, 37.507450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153309, 35.201141, 37.956486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189777, 34.911049, 37.683510>,  <45.211658, 34.736992, 37.519722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.189777, 34.911049, 37.683510>,  <45.153309, 35.201141, 37.956486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189777, 34.911049, 37.683510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918751, 0.325628, -0.223301,
		0.384167, -0.606634, 0.695996,
		0.091173, -0.725232, -0.682441,
		45.217129, 34.693478, 37.478779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856457, 35.257576, 37.845879>,  <45.153309, 35.201141, 37.956486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856457, 35.257576, 37.845879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789497, 35.006138, 37.542076>,  <45.749321, 34.855274, 37.359795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789497, 35.006138, 37.542076>,  <45.856457, 35.257576, 37.845879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789497, 35.006138, 37.542076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921641, 0.173772, -0.346959,
		0.350077, -0.758071, 0.550250,
		-0.167401, -0.628595, -0.759503,
		45.739277, 34.817558, 37.314224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432812, 34.735962, 37.771622>,  <45.856457, 35.257576, 37.845879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432812, 34.735962, 37.771622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236248, 34.751102, 37.423580>,  <46.118309, 34.760185, 37.214756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236248, 34.751102, 37.423580>,  <46.432812, 34.735962, 37.771622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236248, 34.751102, 37.423580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870244, -0.018292, -0.492281,
		-0.034552, -0.999116, -0.023954,
		-0.491408, 0.037855, -0.870107,
		46.088825, 34.762459, 37.162548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634045, 34.150833, 37.258450>,  <46.432812, 34.735962, 37.771622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634045, 34.150833, 37.258450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499775, 34.462231, 37.046310>,  <46.419212, 34.649071, 36.919029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499775, 34.462231, 37.046310>,  <46.634045, 34.150833, 37.258450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499775, 34.462231, 37.046310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783125, -0.082252, -0.616400,
		-0.523488, -0.622234, -0.582052,
		-0.335671, 0.778498, -0.530345,
		46.399075, 34.695782, 36.887207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876785, 34.003345, 36.571903>,  <46.634045, 34.150833, 37.258450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876785, 34.003345, 36.571903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.790756, 34.391945, 36.611763>,  <46.739140, 34.625107, 36.635681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.790756, 34.391945, 36.611763>,  <46.876785, 34.003345, 36.571903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.790756, 34.391945, 36.611763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696443, 0.224105, -0.681721,
		-0.684626, -0.077214, -0.724793,
		-0.215069, 0.971501, 0.099653,
		46.726234, 34.683395, 36.641659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081223, 34.286983, 35.993385>,  <46.876785, 34.003345, 36.571903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081223, 34.286983, 35.993385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079926, 34.612377, 36.226017>,  <47.079147, 34.807613, 36.365597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.079926, 34.612377, 36.226017>,  <47.081223, 34.286983, 35.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.079926, 34.612377, 36.226017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916015, 0.235707, -0.324591,
		-0.401131, 0.531686, -0.745925,
		-0.003239, 0.813482, 0.581582,
		47.078953, 34.856422, 36.400490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.730316, 34.437103, 35.906258>,  <47.081223, 34.286983, 35.993385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.730316, 34.437103, 35.906258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626026, 34.666988, 36.216541>,  <47.563450, 34.804920, 36.402710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.626026, 34.666988, 36.216541>,  <47.730316, 34.437103, 35.906258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.626026, 34.666988, 36.216541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956538, 0.262483, 0.127036,
		-0.130601, 0.775115, -0.618174,
		-0.260727, 0.574716, 0.775708,
		47.547810, 34.839405, 36.449253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.393627, 34.709476, 35.290901>,  <47.730316, 34.437103, 35.906258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.393627, 34.709476, 35.290901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039410, 34.829109, 35.148708>,  <46.826881, 34.900890, 35.063393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039410, 34.829109, 35.148708>,  <47.393627, 34.709476, 35.290901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039410, 34.829109, 35.148708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449678, 0.359731, -0.817547,
		-0.116638, -0.883823, -0.453048,
		-0.885542, 0.299083, -0.355478,
		46.773746, 34.918835, 35.042065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575169, 34.985737, 34.650433>,  <47.393627, 34.709476, 35.290901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575169, 34.985737, 34.650433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795830, 34.812901, 34.935802>,  <47.928226, 34.709198, 35.107025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795830, 34.812901, 34.935802>,  <47.575169, 34.985737, 34.650433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.795830, 34.812901, 34.935802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432874, -0.582822, -0.687706,
		0.712950, 0.688200, -0.134477,
		0.551655, -0.432088, 0.713426,
		47.961327, 34.683273, 35.149830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.121277, 32.047970, 27.931908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788349, 31.835077, 27.869967>,  <39.588593, 31.707342, 27.832802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788349, 31.835077, 27.869967>,  <40.121277, 32.047970, 27.931908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788349, 31.835077, 27.869967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232985, 0.082425, 0.968981,
		-0.502958, 0.842577, -0.192606,
		-0.832317, -0.532231, -0.154851,
		39.538654, 31.675407, 27.823511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599541, 32.422203, 28.265602>,  <40.121277, 32.047970, 27.931908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599541, 32.422203, 28.265602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428947, 32.061703, 28.234959>,  <39.326591, 31.845404, 28.216572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.428947, 32.061703, 28.234959>,  <39.599541, 32.422203, 28.265602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428947, 32.061703, 28.234959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344236, 0.083404, 0.935171,
		-0.836431, 0.425203, -0.345811,
		-0.426480, -0.901247, -0.076609,
		39.301003, 31.791328, 28.211977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968048, 32.505875, 28.651476>,  <39.599541, 32.422203, 28.265602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968048, 32.505875, 28.651476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012299, 32.111362, 28.602455>,  <39.038849, 31.874657, 28.573042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012299, 32.111362, 28.602455>,  <38.968048, 32.505875, 28.651476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012299, 32.111362, 28.602455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303710, -0.150957, 0.940729,
		-0.946321, -0.066846, -0.316242,
		0.110623, -0.986278, -0.122552,
		39.045486, 31.815479, 28.565689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301640, 32.127975, 28.797890>,  <38.968048, 32.505875, 28.651476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301640, 32.127975, 28.797890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580780, 31.849535, 28.865345>,  <38.748264, 31.682470, 28.905817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580780, 31.849535, 28.865345>,  <38.301640, 32.127975, 28.797890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580780, 31.849535, 28.865345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343767, -0.118971, 0.931488,
		-0.628351, -0.708014, -0.322322,
		0.697853, -0.696105, 0.168636,
		38.790134, 31.640703, 28.915936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008030, 31.685163, 29.256618>,  <38.301640, 32.127975, 28.797890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008030, 31.685163, 29.256618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399117, 31.614351, 29.301748>,  <38.633770, 31.571863, 29.328827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399117, 31.614351, 29.301748>,  <38.008030, 31.685163, 29.256618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399117, 31.614351, 29.301748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107032, 0.041968, 0.993370,
		-0.180594, -0.983310, 0.022085,
		0.977717, -0.177033, 0.112825,
		38.692432, 31.561241, 29.335596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023853, 31.118950, 29.762672>,  <38.008030, 31.685163, 29.256618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023853, 31.118950, 29.762672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390991, 31.277208, 29.749882>,  <38.611275, 31.372164, 29.742207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390991, 31.277208, 29.749882>,  <38.023853, 31.118950, 29.762672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390991, 31.277208, 29.749882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120253, -0.200389, 0.972308,
		0.378283, -0.896275, -0.231504,
		0.917846, 0.395647, -0.031976,
		38.666344, 31.395903, 29.740290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419586, 30.638365, 30.199038>,  <38.023853, 31.118950, 29.762672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419586, 30.638365, 30.199038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596027, 30.996897, 30.181051>,  <38.701893, 31.212015, 30.170259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.596027, 30.996897, 30.181051>,  <38.419586, 30.638365, 30.199038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596027, 30.996897, 30.181051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304738, -0.102463, 0.946909,
		0.844135, -0.431386, -0.318342,
		0.441101, 0.896330, -0.044967,
		38.728359, 31.265797, 30.167561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989658, 30.525835, 30.604027>,  <38.419586, 30.638365, 30.199038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989658, 30.525835, 30.604027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941795, 30.922678, 30.589012>,  <38.913078, 31.160784, 30.580004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941795, 30.922678, 30.589012>,  <38.989658, 30.525835, 30.604027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941795, 30.922678, 30.589012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203116, 0.061470, 0.977223,
		0.971816, 0.109305, -0.208868,
		-0.119655, 0.992106, -0.037536,
		38.905899, 31.220310, 30.577751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471420, 30.901052, 31.002884>,  <38.989658, 30.525835, 30.604027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471420, 30.901052, 31.002884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184597, 31.174911, 30.950609>,  <39.012501, 31.339228, 30.919245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184597, 31.174911, 30.950609>,  <39.471420, 30.901052, 31.002884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184597, 31.174911, 30.950609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260995, 0.437599, 0.860458,
		0.646299, 0.582894, -0.492476,
		-0.717063, 0.684647, -0.130688,
		38.969479, 31.380306, 30.911404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759552, 31.540270, 31.039711>,  <39.471420, 30.901052, 31.002884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759552, 31.540270, 31.039711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.376457, 31.614214, 31.127859>,  <39.146599, 31.658581, 31.180748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.376457, 31.614214, 31.127859>,  <39.759552, 31.540270, 31.039711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376457, 31.614214, 31.127859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287627, 0.608857, 0.739299,
		0.002492, 0.771440, -0.636297,
		-0.957739, 0.184858, 0.220370,
		39.089134, 31.669672, 31.193970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703484, 32.280830, 31.187687>,  <39.759552, 31.540270, 31.039711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703484, 32.280830, 31.187687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362968, 32.166042, 31.363396>,  <39.158661, 32.097168, 31.468821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362968, 32.166042, 31.363396>,  <39.703484, 32.280830, 31.187687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362968, 32.166042, 31.363396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278658, 0.462099, 0.841911,
		-0.444591, 0.839114, -0.313412,
		-0.851287, -0.286971, 0.439271,
		39.107582, 32.079952, 31.495176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542301, 32.853085, 31.667194>,  <39.703484, 32.280830, 31.187687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542301, 32.853085, 31.667194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333668, 32.546238, 31.816584>,  <39.208488, 32.362129, 31.906218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.333668, 32.546238, 31.816584>,  <39.542301, 32.853085, 31.667194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333668, 32.546238, 31.816584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166779, 0.337619, 0.926390,
		-0.836743, 0.545474, -0.048156,
		-0.521580, -0.767119, 0.373474,
		39.177193, 32.316101, 31.928625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094688, 33.069683, 32.203156>,  <39.542301, 32.853085, 31.667194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094688, 33.069683, 32.203156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095661, 32.679386, 32.290714>,  <39.096245, 32.445206, 32.343250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095661, 32.679386, 32.290714>,  <39.094688, 33.069683, 32.203156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095661, 32.679386, 32.290714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005273, 0.218912, 0.975730,
		-0.999983, -0.001222, 0.005678,
		0.002435, -0.975744, 0.218901,
		39.096394, 32.386662, 32.356384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579773, 32.971664, 32.671764>,  <39.094688, 33.069683, 32.203156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579773, 32.971664, 32.671764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825901, 32.661293, 32.727371>,  <38.973576, 32.475071, 32.760735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825901, 32.661293, 32.727371>,  <38.579773, 32.971664, 32.671764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825901, 32.661293, 32.727371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002147, 0.174704, 0.984619,
		-0.788276, -0.606152, 0.105833,
		0.615318, -0.775924, 0.139017,
		39.010498, 32.428516, 32.769077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345459, 32.640007, 33.251080>,  <38.579773, 32.971664, 32.671764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345459, 32.640007, 33.251080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721756, 32.506824, 33.225342>,  <38.947533, 32.426914, 33.209900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.721756, 32.506824, 33.225342>,  <38.345459, 32.640007, 33.251080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721756, 32.506824, 33.225342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045895, -0.062993, 0.996958,
		-0.336000, -0.940835, -0.043979,
		0.940743, -0.332960, -0.064345,
		39.003979, 32.406937, 33.206039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280312, 32.162899, 33.705547>,  <38.345459, 32.640007, 33.251080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280312, 32.162899, 33.705547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667782, 32.245346, 33.650143>,  <38.900265, 32.294815, 33.616898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667782, 32.245346, 33.650143>,  <38.280312, 32.162899, 33.705547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667782, 32.245346, 33.650143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142731, -0.005647, 0.989745,
		0.203227, -0.978510, -0.034890,
		0.968672, 0.206123, -0.138516,
		38.958385, 32.307182, 33.608589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624237, 31.751078, 34.121498>,  <38.280312, 32.162899, 33.705547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624237, 31.751078, 34.121498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.908428, 32.023472, 34.050522>,  <39.078941, 32.186909, 34.007938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.908428, 32.023472, 34.050522>,  <38.624237, 31.751078, 34.121498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908428, 32.023472, 34.050522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220055, 0.024511, 0.975179,
		0.668434, -0.731885, -0.132440,
		0.710473, 0.680987, -0.177439,
		39.121571, 32.227768, 33.997292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257175, 31.568640, 34.472054>,  <38.624237, 31.751078, 34.121498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257175, 31.568640, 34.472054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295189, 31.963371, 34.419689>,  <39.317997, 32.200211, 34.388271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.295189, 31.963371, 34.419689>,  <39.257175, 31.568640, 34.472054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295189, 31.963371, 34.419689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210368, 0.108623, 0.971569,
		0.972992, -0.119871, -0.197274,
		0.095034, 0.986829, -0.130906,
		39.323700, 32.259418, 34.380417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877789, 31.744627, 34.849380>,  <39.257175, 31.568640, 34.472054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877789, 31.744627, 34.849380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681999, 32.089172, 34.795025>,  <39.564526, 32.295898, 34.762413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.681999, 32.089172, 34.795025>,  <39.877789, 31.744627, 34.849380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681999, 32.089172, 34.795025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276727, 0.301211, 0.912521,
		0.826943, 0.409053, -0.385798,
		-0.489476, 0.861364, -0.135888,
		39.535156, 32.347580, 34.754257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419682, 32.260418, 34.971046>,  <39.877789, 31.744627, 34.849380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419682, 32.260418, 34.971046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.047718, 32.394650, 35.031246>,  <39.824539, 32.475189, 35.067368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.047718, 32.394650, 35.031246>,  <40.419682, 32.260418, 34.971046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047718, 32.394650, 35.031246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244611, 0.258744, 0.934461,
		0.274643, 0.905781, -0.322695,
		-0.929912, 0.335578, 0.150501,
		39.768745, 32.495323, 35.076397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528008, 32.866096, 35.364571>,  <40.419682, 32.260418, 34.971046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528008, 32.866096, 35.364571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.142719, 32.772961, 35.418236>,  <39.911549, 32.717079, 35.450436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.142719, 32.772961, 35.418236>,  <40.528008, 32.866096, 35.364571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142719, 32.772961, 35.418236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033934, 0.389852, 0.920252,
		-0.266577, 0.890954, -0.367611,
		-0.963216, -0.232843, 0.134159,
		39.853756, 32.703106, 35.458485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739368, 33.400787, 35.926788>,  <40.528008, 32.866096, 35.364571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739368, 33.400787, 35.926788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.064251, 33.629887, 35.971127>,  <41.259178, 33.767345, 35.997730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.064251, 33.629887, 35.971127>,  <40.739368, 33.400787, 35.926788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064251, 33.629887, 35.971127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007512, 0.179720, -0.983689,
		-0.583327, 0.799788, 0.141666,
		0.812203, 0.572748, 0.110843,
		41.307911, 33.801712, 36.004379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525867, 33.988029, 35.562103>,  <40.739368, 33.400787, 35.926788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525867, 33.988029, 35.562103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.925308, 34.008331, 35.568039>,  <41.164974, 34.020512, 35.571602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.925308, 34.008331, 35.568039>,  <40.525867, 33.988029, 35.562103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925308, 34.008331, 35.568039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017039, -0.043173, -0.998922,
		-0.050057, 0.997778, -0.043978,
		0.998601, 0.050753, 0.014840,
		41.224888, 34.023556, 35.572491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717091, 34.478870, 35.134529>,  <40.525867, 33.988029, 35.562103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717091, 34.478870, 35.134529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047962, 34.256603, 35.168018>,  <41.246487, 34.123245, 35.188114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.047962, 34.256603, 35.168018>,  <40.717091, 34.478870, 35.134529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047962, 34.256603, 35.168018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220613, 0.184091, -0.957831,
		0.516820, 0.810769, 0.274863,
		0.827180, -0.555665, 0.083725,
		41.296116, 34.089905, 35.193134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220558, 34.808388, 34.643414>,  <40.717091, 34.478870, 35.134529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220558, 34.808388, 34.643414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.369003, 34.445110, 34.720833>,  <41.458069, 34.227142, 34.767284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.369003, 34.445110, 34.720833>,  <41.220558, 34.808388, 34.643414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369003, 34.445110, 34.720833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268082, -0.094767, -0.958724,
		0.889049, 0.407679, 0.208301,
		0.371112, -0.908194, 0.193544,
		41.480335, 34.172653, 34.778896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855812, 34.754410, 34.327477>,  <41.220558, 34.808388, 34.643414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855812, 34.754410, 34.327477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.760925, 34.370041, 34.384556>,  <41.703995, 34.139420, 34.418804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.760925, 34.370041, 34.384556>,  <41.855812, 34.754410, 34.327477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760925, 34.370041, 34.384556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192092, -0.190389, -0.962732,
		0.952277, -0.200962, 0.229748,
		-0.237214, -0.960920, 0.142699,
		41.689762, 34.081764, 34.427364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360199, 34.446976, 33.984596>,  <41.855812, 34.754410, 34.327477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360199, 34.446976, 33.984596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.074848, 34.167717, 34.008850>,  <41.903637, 34.000160, 34.023403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.074848, 34.167717, 34.008850>,  <42.360199, 34.446976, 33.984596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074848, 34.167717, 34.008850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180248, -0.266416, -0.946854,
		0.677201, -0.664536, 0.315896,
		-0.713379, -0.698150, 0.060636,
		41.860836, 33.958271, 34.027042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651340, 33.694660, 33.824348>,  <42.360199, 34.446976, 33.984596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651340, 33.694660, 33.824348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.263897, 33.690701, 33.724987>,  <42.031433, 33.688324, 33.665371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.263897, 33.690701, 33.724987>,  <42.651340, 33.694660, 33.824348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263897, 33.690701, 33.724987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224026, -0.467964, -0.854881,
		-0.107780, -0.883692, 0.455491,
		-0.968605, -0.009903, -0.248407,
		41.973316, 33.687729, 33.650463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631824, 33.074238, 33.449230>,  <42.651340, 33.694660, 33.824348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631824, 33.074238, 33.449230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.288181, 33.269382, 33.387363>,  <42.081997, 33.386471, 33.350243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.288181, 33.269382, 33.387363>,  <42.631824, 33.074238, 33.449230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288181, 33.269382, 33.387363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074019, -0.417469, -0.905671,
		-0.506413, -0.766621, 0.394763,
		-0.859108, 0.487863, -0.154667,
		42.030449, 33.415741, 33.340961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219265, 32.573524, 33.231304>,  <42.631824, 33.074238, 33.449230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219265, 32.573524, 33.231304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.079403, 32.927731, 33.108921>,  <41.995483, 33.140255, 33.035492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.079403, 32.927731, 33.108921>,  <42.219265, 32.573524, 33.231304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079403, 32.927731, 33.108921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140944, -0.372573, -0.917238,
		-0.926215, -0.277597, 0.255080,
		-0.349659, 0.885511, -0.305957,
		41.974506, 33.193382, 33.017136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774311, 32.414062, 32.638920>,  <42.219265, 32.573524, 33.231304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774311, 32.414062, 32.638920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.862411, 32.802490, 32.602020>,  <41.915272, 33.035545, 32.579880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.862411, 32.802490, 32.602020>,  <41.774311, 32.414062, 32.638920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862411, 32.802490, 32.602020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040480, -0.085391, -0.995525,
		-0.974602, 0.223002, 0.020502,
		0.220253, 0.971071, -0.092249,
		41.928486, 33.093811, 32.574345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197868, 32.703922, 32.264202>,  <41.774311, 32.414062, 32.638920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197868, 32.703922, 32.264202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.525368, 32.930775, 32.228394>,  <41.721867, 33.066887, 32.206909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.525368, 32.930775, 32.228394>,  <41.197868, 32.703922, 32.264202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525368, 32.930775, 32.228394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045130, -0.091875, -0.994747,
		-0.572375, 0.818489, -0.049628,
		0.818749, 0.567129, -0.089525,
		41.770992, 33.100914, 32.201534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143120, 32.871872, 31.583021>,  <41.197868, 32.703922, 32.264202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143120, 32.871872, 31.583021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500870, 33.027611, 31.671116>,  <41.715519, 33.121056, 31.723972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.500870, 33.027611, 31.671116>,  <41.143120, 32.871872, 31.583021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500870, 33.027611, 31.671116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278322, -0.098920, -0.955380,
		-0.350192, 0.915762, -0.196836,
		0.894373, 0.389351, 0.220235,
		41.769180, 33.144417, 31.737186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257706, 33.465042, 31.154890>,  <41.143120, 32.871872, 31.583021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257706, 33.465042, 31.154890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.613621, 33.305489, 31.243591>,  <41.827171, 33.209759, 31.296812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.613621, 33.305489, 31.243591>,  <41.257706, 33.465042, 31.154890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613621, 33.305489, 31.243591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177243, -0.145724, -0.973319,
		0.420553, 0.905350, -0.058965,
		0.889787, -0.398881, 0.221752,
		41.880558, 33.185825, 31.310118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688686, 33.689022, 30.698154>,  <41.257706, 33.465042, 31.154890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688686, 33.689022, 30.698154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.913460, 33.382061, 30.821651>,  <42.048325, 33.197884, 30.895750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.913460, 33.382061, 30.821651>,  <41.688686, 33.689022, 30.698154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913460, 33.382061, 30.821651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052795, -0.339213, -0.939227,
		0.825493, 0.544087, -0.150101,
		0.561938, -0.767401, 0.308743,
		42.082043, 33.151840, 30.914274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271984, 33.664246, 30.224640>,  <41.688686, 33.689022, 30.698154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271984, 33.664246, 30.224640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.206257, 33.309856, 30.398100>,  <42.166821, 33.097221, 30.502176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.206257, 33.309856, 30.398100>,  <42.271984, 33.664246, 30.224640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206257, 33.309856, 30.398100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044956, -0.432444, -0.900539,
		0.985382, -0.167472, 0.031229,
		-0.164320, -0.885971, 0.433651,
		42.156960, 33.044064, 30.528194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799114, 33.288010, 30.011589>,  <42.271984, 33.664246, 30.224640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799114, 33.288010, 30.011589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.548630, 33.003223, 30.138691>,  <42.398338, 32.832352, 30.214952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.548630, 33.003223, 30.138691>,  <42.799114, 33.288010, 30.011589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548630, 33.003223, 30.138691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203994, -0.542983, -0.814590,
		0.752493, -0.445286, 0.485258,
		-0.626212, -0.711963, 0.317755,
		42.360767, 32.789635, 30.234016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097824, 32.738014, 29.762808>,  <42.799114, 33.288010, 30.011589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097824, 32.738014, 29.762808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.729179, 32.609554, 29.849981>,  <42.507992, 32.532478, 29.902285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.729179, 32.609554, 29.849981>,  <43.097824, 32.738014, 29.762808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729179, 32.609554, 29.849981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043880, -0.644140, -0.763648,
		0.385622, -0.694225, 0.607740,
		-0.921613, -0.321147, 0.217932,
		42.452694, 32.513210, 29.915361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081573, 32.014183, 29.614908>,  <43.097824, 32.738014, 29.762808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081573, 32.014183, 29.614908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.687008, 32.079830, 29.611885>,  <42.450268, 32.119217, 29.610071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.687008, 32.079830, 29.611885>,  <43.081573, 32.014183, 29.614908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687008, 32.079830, 29.611885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092396, -0.592188, -0.800485,
		-0.135849, -0.788910, 0.599305,
		-0.986412, 0.164118, -0.007556,
		42.391083, 32.129066, 29.609619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814098, 31.326435, 29.455715>,  <43.081573, 32.014183, 29.614908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814098, 31.326435, 29.455715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.577343, 31.636648, 29.367887>,  <42.435287, 31.822777, 29.315191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.577343, 31.636648, 29.367887>,  <42.814098, 31.326435, 29.455715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577343, 31.636648, 29.367887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145298, -0.370615, -0.917351,
		-0.792813, -0.511069, 0.332047,
		-0.591892, 0.775534, -0.219571,
		42.399776, 31.869308, 29.302015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.230003, 31.017160, 29.037582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.223572, 31.408207, 28.953669>,  <42.219711, 31.642834, 28.903320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.223572, 31.408207, 28.953669>,  <42.230003, 31.017160, 29.037582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223572, 31.408207, 28.953669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184146, -0.209120, -0.960395,
		-0.982767, 0.023189, 0.183386,
		-0.016079, 0.977615, -0.209787,
		42.218750, 31.701492, 28.890732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641743, 31.106892, 28.641609>,  <42.230003, 31.017160, 29.037582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641743, 31.106892, 28.641609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857658, 31.432636, 28.556337>,  <41.987206, 31.628082, 28.505175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857658, 31.432636, 28.556337>,  <41.641743, 31.106892, 28.641609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857658, 31.432636, 28.556337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065611, -0.211771, -0.975115,
		-0.839241, 0.540341, -0.060880,
		0.539787, 0.814362, -0.213179,
		42.019596, 31.676945, 28.492384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203499, 31.467360, 28.111053>,  <41.641743, 31.106892, 28.641609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203499, 31.467360, 28.111053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.546520, 31.664761, 28.053003>,  <41.752335, 31.783201, 28.018173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.546520, 31.664761, 28.053003>,  <41.203499, 31.467360, 28.111053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546520, 31.664761, 28.053003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096301, -0.123119, -0.987708,
		-0.505303, 0.860987, -0.058056,
		0.857552, 0.493501, -0.145126,
		41.803787, 31.812811, 28.009466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026649, 31.956650, 27.593739>,  <41.203499, 31.467360, 28.111053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026649, 31.956650, 27.593739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.425037, 31.927389, 27.572968>,  <41.664070, 31.909832, 27.560505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.425037, 31.927389, 27.572968>,  <41.026649, 31.956650, 27.593739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425037, 31.927389, 27.572968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038742, 0.171335, -0.984451,
		0.080911, 0.982493, 0.167810,
		0.995968, -0.073152, -0.051927,
		41.723827, 31.905443, 27.557390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206078, 32.534809, 27.162792>,  <41.026649, 31.956650, 27.593739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206078, 32.534809, 27.162792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516411, 32.282806, 27.176432>,  <41.702610, 32.131603, 27.184616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516411, 32.282806, 27.176432>,  <41.206078, 32.534809, 27.162792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516411, 32.282806, 27.176432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115616, 0.088830, -0.989314,
		0.620250, 0.771489, 0.141757,
		0.775837, -0.630011, 0.034100,
		41.749161, 32.093803, 27.186661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659645, 32.869938, 26.761189>,  <41.206078, 32.534809, 27.162792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659645, 32.869938, 26.761189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.763512, 32.484417, 26.785400>,  <41.825832, 32.253105, 26.799929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.763512, 32.484417, 26.785400>,  <41.659645, 32.869938, 26.761189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763512, 32.484417, 26.785400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091076, -0.086842, -0.992050,
		0.961394, 0.252087, -0.110328,
		0.259664, -0.963800, 0.060531,
		41.841412, 32.195278, 26.803560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250530, 32.716633, 26.232605>,  <41.659645, 32.869938, 26.761189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250530, 32.716633, 26.232605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081806, 32.367722, 26.331570>,  <41.980572, 32.158375, 26.390949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.081806, 32.367722, 26.331570>,  <42.250530, 32.716633, 26.232605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081806, 32.367722, 26.331570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067241, -0.242031, -0.967936,
		0.904188, -0.424920, 0.043438,
		-0.421809, -0.872275, 0.247413,
		41.955265, 32.106041, 26.405794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603081, 32.216499, 25.842278>,  <42.250530, 32.716633, 26.232605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603081, 32.216499, 25.842278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.246517, 32.057789, 25.929871>,  <42.032578, 31.962563, 25.982426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.246517, 32.057789, 25.929871>,  <42.603081, 32.216499, 25.842278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246517, 32.057789, 25.929871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162979, -0.170204, -0.971838,
		0.422873, -0.901998, 0.087056,
		-0.891413, -0.396775, 0.218981,
		41.979092, 31.938757, 25.995565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545815, 31.555521, 25.405029>,  <42.603081, 32.216499, 25.842278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545815, 31.555521, 25.405029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.177376, 31.646610, 25.531345>,  <41.956314, 31.701263, 25.607136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.177376, 31.646610, 25.531345>,  <42.545815, 31.555521, 25.405029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177376, 31.646610, 25.531345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311312, 0.056312, -0.948638,
		-0.233811, -0.972096, 0.019024,
		-0.921096, 0.227725, 0.315792,
		41.901047, 31.714928, 25.626083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174080, 31.122475, 25.098076>,  <42.545815, 31.555521, 25.405029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174080, 31.122475, 25.098076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907017, 31.407522, 25.184240>,  <41.746777, 31.578550, 25.235939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907017, 31.407522, 25.184240>,  <42.174080, 31.122475, 25.098076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907017, 31.407522, 25.184240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390405, -0.088778, -0.916353,
		-0.633887, -0.695911, 0.337484,
		-0.667661, 0.712620, 0.215411,
		41.706718, 31.621307, 25.248863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524715, 30.868814, 24.804638>,  <42.174080, 31.122475, 25.098076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524715, 30.868814, 24.804638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.484707, 31.264746, 24.845106>,  <41.460701, 31.502304, 24.869387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.484707, 31.264746, 24.845106>,  <41.524715, 30.868814, 24.804638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484707, 31.264746, 24.845106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390404, 0.054485, -0.919030,
		-0.915194, -0.131424, 0.380983,
		-0.100024, 0.989828, 0.101173,
		41.454700, 31.561693, 24.875458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913002, 30.906717, 24.417212>,  <41.524715, 30.868814, 24.804638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913002, 30.906717, 24.417212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066170, 31.272339, 24.470701>,  <41.158070, 31.491711, 24.502794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066170, 31.272339, 24.470701>,  <40.913002, 30.906717, 24.417212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066170, 31.272339, 24.470701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166652, 0.210734, -0.963233,
		-0.908626, 0.346553, 0.233022,
		0.382917, 0.914053, 0.133725,
		41.181046, 31.546555, 24.510818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331669, 31.417233, 24.279615>,  <40.913002, 30.906717, 24.417212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331669, 31.417233, 24.279615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688259, 31.595337, 24.246128>,  <40.902214, 31.702200, 24.226036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688259, 31.595337, 24.246128>,  <40.331669, 31.417233, 24.279615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688259, 31.595337, 24.246128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165857, 0.148778, -0.974862,
		-0.421613, 0.882954, 0.206482,
		0.891479, 0.445261, -0.083718,
		40.955704, 31.728914, 24.221012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245449, 32.077961, 24.102711>,  <40.331669, 31.417233, 24.279615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245449, 32.077961, 24.102711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.621914, 31.998381, 23.993437>,  <40.847794, 31.950632, 23.927872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.621914, 31.998381, 23.993437>,  <40.245449, 32.077961, 24.102711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621914, 31.998381, 23.993437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211615, 0.283331, -0.935384,
		0.263500, 0.938158, 0.224559,
		0.941162, -0.198954, -0.273186,
		40.904263, 31.938694, 23.911482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433094, 32.754303, 23.910189>,  <40.245449, 32.077961, 24.102711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433094, 32.754303, 23.910189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706879, 32.514317, 23.744518>,  <40.871151, 32.370323, 23.645117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706879, 32.514317, 23.744518>,  <40.433094, 32.754303, 23.910189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706879, 32.514317, 23.744518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094622, 0.490194, -0.866462,
		0.722878, 0.632254, 0.278751,
		0.684466, -0.599970, -0.414175,
		40.912220, 32.334324, 23.620266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706600, 33.095676, 23.380320>,  <40.433094, 32.754303, 23.910189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706600, 33.095676, 23.380320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810883, 32.726460, 23.267166>,  <40.873451, 32.504929, 23.199274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810883, 32.726460, 23.267166>,  <40.706600, 33.095676, 23.380320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810883, 32.726460, 23.267166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124477, 0.258433, -0.957976,
		0.957361, 0.284959, -0.047524,
		0.260702, -0.923044, -0.282885,
		40.889091, 32.449547, 23.182301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298546, 33.102295, 22.798744>,  <40.706600, 33.095676, 23.380320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298546, 33.102295, 22.798744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.068798, 32.775005, 22.788918>,  <40.930950, 32.578632, 22.783022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.068798, 32.775005, 22.788918>,  <41.298546, 33.102295, 22.798744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068798, 32.775005, 22.788918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309493, 0.244842, -0.918840,
		0.757834, -0.520151, -0.393866,
		-0.574371, -0.818226, -0.024567,
		40.896488, 32.529537, 22.781548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529381, 32.853779, 22.204248>,  <41.298546, 33.102295, 22.798744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529381, 32.853779, 22.204248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.182281, 32.664852, 22.266115>,  <40.974022, 32.551495, 22.303236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.182281, 32.664852, 22.266115>,  <41.529381, 32.853779, 22.204248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182281, 32.664852, 22.266115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274063, 0.195134, -0.941707,
		0.414608, -0.859555, -0.298773,
		-0.867750, -0.472322, 0.154668,
		40.921955, 32.523155, 22.312515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429234, 32.412441, 21.691580>,  <41.529381, 32.853779, 22.204248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429234, 32.412441, 21.691580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049278, 32.446522, 21.811882>,  <40.821304, 32.466969, 21.884064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.049278, 32.446522, 21.811882>,  <41.429234, 32.412441, 21.691580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049278, 32.446522, 21.811882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286943, 0.144002, -0.947062,
		-0.124003, -0.985903, -0.112337,
		-0.949888, 0.085204, 0.300755,
		40.764313, 32.472084, 21.902109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034939, 31.883257, 21.403246>,  <41.429234, 32.412441, 21.691580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034939, 31.883257, 21.403246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777790, 32.178360, 21.485638>,  <40.623501, 32.355423, 21.535072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.777790, 32.178360, 21.485638>,  <41.034939, 31.883257, 21.403246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777790, 32.178360, 21.485638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262100, 0.040804, -0.964178,
		-0.719735, -0.673831, 0.167135,
		-0.642873, 0.737758, 0.205979,
		40.584927, 32.399689, 21.547432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426033, 31.741785, 20.945158>,  <41.034939, 31.883257, 21.403246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426033, 31.741785, 20.945158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388313, 32.125668, 21.051039>,  <40.365681, 32.355999, 21.114567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388313, 32.125668, 21.051039>,  <40.426033, 31.741785, 20.945158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388313, 32.125668, 21.051039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280427, 0.229517, -0.932031,
		-0.955233, -0.162116, 0.247485,
		-0.094295, 0.959708, 0.264704,
		40.360023, 32.413582, 21.130449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774620, 31.892132, 20.808119>,  <40.426033, 31.741785, 20.945158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774620, 31.892132, 20.808119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004017, 32.218636, 20.780334>,  <40.141655, 32.414539, 20.763664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004017, 32.218636, 20.780334>,  <39.774620, 31.892132, 20.808119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004017, 32.218636, 20.780334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139150, 0.013505, -0.990179,
		-0.807306, 0.577526, 0.121327,
		0.573492, 0.816261, -0.069460,
		40.176064, 32.463512, 20.759497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239853, 31.443434, 20.690493>,  <39.774620, 31.892132, 20.808119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239853, 31.443434, 20.690493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317558, 31.204437, 20.379297>,  <39.364182, 31.061039, 20.192579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317558, 31.204437, 20.379297>,  <39.239853, 31.443434, 20.690493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317558, 31.204437, 20.379297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865949, -0.477061, 0.150152,
		-0.460863, 0.644528, -0.610073,
		0.194265, -0.597492, -0.777988,
		39.375839, 31.025190, 20.145901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812328, 31.648508, 20.128519>,  <39.239853, 31.443434, 20.690493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812328, 31.648508, 20.128519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924675, 31.264624, 20.125292>,  <38.992085, 31.034292, 20.123356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924675, 31.264624, 20.125292>,  <38.812328, 31.648508, 20.128519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924675, 31.264624, 20.125292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959024, -0.280975, 0.036416,
		-0.037216, -0.002489, -0.999304,
		0.280870, -0.959712, -0.008069,
		39.008938, 30.976709, 20.122871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437107, 30.978603, 19.837978>,  <38.812328, 31.648508, 20.128519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437107, 30.978603, 19.837978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136982, 30.735359, 19.941698>,  <37.956909, 30.589413, 20.003929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136982, 30.735359, 19.941698>,  <38.437107, 30.978603, 19.837978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136982, 30.735359, 19.941698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082125, 0.303453, 0.949301,
		-0.655965, 0.733565, -0.177743,
		-0.750311, -0.608110, 0.259298,
		37.911888, 30.552925, 20.019487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979382, 31.365313, 20.240601>,  <38.437107, 30.978603, 19.837978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979382, 31.365313, 20.240601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876221, 30.988611, 20.326933>,  <37.814323, 30.762590, 20.378733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876221, 30.988611, 20.326933>,  <37.979382, 31.365313, 20.240601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876221, 30.988611, 20.326933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053183, 0.236885, 0.970081,
		-0.964706, 0.238710, -0.111179,
		-0.257904, -0.941755, 0.215829,
		37.798851, 30.706085, 20.391682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343575, 31.411333, 20.701685>,  <37.979382, 31.365313, 20.240601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343575, 31.411333, 20.701685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513462, 31.059483, 20.787357>,  <37.615395, 30.848372, 20.838760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513462, 31.059483, 20.787357>,  <37.343575, 31.411333, 20.701685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513462, 31.059483, 20.787357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085721, 0.196445, 0.976761,
		-0.901260, -0.433204, 0.008031,
		0.424714, -0.879627, 0.214183,
		37.640877, 30.795595, 20.851612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006111, 31.279016, 21.259575>,  <37.343575, 31.411333, 20.701685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006111, 31.279016, 21.259575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331970, 31.047071, 21.255344>,  <37.527485, 30.907904, 21.252806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.331970, 31.047071, 21.255344>,  <37.006111, 31.279016, 21.259575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331970, 31.047071, 21.255344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085548, 0.102109, 0.991088,
		-0.573615, -0.808290, 0.132789,
		0.814646, -0.579863, -0.010576,
		37.576363, 30.873114, 21.252172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942841, 30.891087, 21.870922>,  <37.006111, 31.279016, 21.259575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942841, 30.891087, 21.870922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329582, 30.838923, 21.783119>,  <37.561626, 30.807623, 21.730438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329582, 30.838923, 21.783119>,  <36.942841, 30.891087, 21.870922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329582, 30.838923, 21.783119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224817, 0.027316, 0.974018,
		-0.121028, -0.991083, 0.055730,
		0.966856, -0.130412, -0.219507,
		37.619640, 30.799799, 21.717268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095062, 30.393246, 22.406788>,  <36.942841, 30.891087, 21.870922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095062, 30.393246, 22.406788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437305, 30.528786, 22.250271>,  <37.642651, 30.610109, 22.156361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.437305, 30.528786, 22.250271>,  <37.095062, 30.393246, 22.406788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437305, 30.528786, 22.250271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476930, -0.222287, 0.850368,
		0.201168, -0.914204, -0.351798,
		0.855610, 0.338850, -0.391294,
		37.693989, 30.630440, 22.132883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635708, 29.988140, 22.527449>,  <37.095062, 30.393246, 22.406788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635708, 29.988140, 22.527449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824455, 30.339270, 22.494549>,  <37.937702, 30.549948, 22.474810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824455, 30.339270, 22.494549>,  <37.635708, 29.988140, 22.527449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824455, 30.339270, 22.494549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413572, -0.137991, 0.899954,
		0.778652, -0.458675, -0.428157,
		0.471868, 0.877825, -0.082248,
		37.966015, 30.602617, 22.469873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243061, 29.900141, 22.947271>,  <37.635708, 29.988140, 22.527449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243061, 29.900141, 22.947271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248680, 30.293953, 22.877413>,  <38.252052, 30.530241, 22.835499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248680, 30.293953, 22.877413>,  <38.243061, 29.900141, 22.947271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248680, 30.293953, 22.877413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314456, 0.161452, 0.935441,
		0.949168, -0.068055, -0.307324,
		0.014043, 0.984531, -0.174645,
		38.252892, 30.589312, 22.825020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933186, 30.203272, 23.057951>,  <38.243061, 29.900141, 22.947271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933186, 30.203272, 23.057951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661541, 30.493584, 23.101875>,  <38.498554, 30.667770, 23.128231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661541, 30.493584, 23.101875>,  <38.933186, 30.203272, 23.057951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661541, 30.493584, 23.101875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382619, 0.222334, 0.896755,
		0.626431, 0.651010, -0.428685,
		-0.679107, 0.725778, 0.109812,
		38.457809, 30.711317, 23.134819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382248, 30.711369, 23.281357>,  <38.933186, 30.203272, 23.057951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382248, 30.711369, 23.281357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009808, 30.819092, 23.379768>,  <38.786343, 30.883726, 23.438814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009808, 30.819092, 23.379768>,  <39.382248, 30.711369, 23.281357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009808, 30.819092, 23.379768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341672, 0.407709, 0.846778,
		0.127736, 0.872495, -0.471632,
		-0.931098, 0.269308, 0.246028,
		38.730476, 30.899883, 23.453577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446457, 31.452627, 23.437614>,  <39.382248, 30.711369, 23.281357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446457, 31.452627, 23.437614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125664, 31.314672, 23.632702>,  <38.933186, 31.231899, 23.749754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.125664, 31.314672, 23.632702>,  <39.446457, 31.452627, 23.437614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125664, 31.314672, 23.632702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374891, 0.345058, 0.860460,
		-0.465055, 0.872919, -0.147435,
		-0.801985, -0.344889, 0.487721,
		38.885067, 31.211206, 23.779018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401157, 31.835171, 23.998938>,  <39.446457, 31.452627, 23.437614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401157, 31.835171, 23.998938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148129, 31.548597, 24.116636>,  <38.996311, 31.376654, 24.187256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.148129, 31.548597, 24.116636>,  <39.401157, 31.835171, 23.998938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148129, 31.548597, 24.116636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239538, 0.180315, 0.953996,
		-0.736531, 0.673952, 0.057551,
		-0.632570, -0.716433, 0.294245,
		38.958359, 31.333668, 24.204910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974003, 32.116920, 24.675156>,  <39.401157, 31.835171, 23.998938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974003, 32.116920, 24.675156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938732, 31.719112, 24.697605>,  <38.917572, 31.480427, 24.711075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938732, 31.719112, 24.697605>,  <38.974003, 32.116920, 24.675156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938732, 31.719112, 24.697605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156942, 0.041769, 0.986724,
		-0.983664, 0.095812, 0.152399,
		-0.088175, -0.994523, 0.056124,
		38.912281, 31.420755, 24.714441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338440, 31.960804, 25.054811>,  <38.974003, 32.116920, 24.675156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338440, 31.960804, 25.054811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624447, 31.681242, 25.061497>,  <38.796051, 31.513504, 25.065508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624447, 31.681242, 25.061497>,  <38.338440, 31.960804, 25.054811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624447, 31.681242, 25.061497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075303, 0.100761, 0.992057,
		-0.695039, -0.708080, 0.124676,
		0.715018, -0.698907, 0.016713,
		38.838951, 31.471571, 25.066511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352699, 31.698492, 25.750597>,  <38.338440, 31.960804, 25.054811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352699, 31.698492, 25.750597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675892, 31.504032, 25.617437>,  <38.869808, 31.387356, 25.537542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675892, 31.504032, 25.617437>,  <38.352699, 31.698492, 25.750597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675892, 31.504032, 25.617437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157389, -0.366385, 0.917055,
		-0.567795, -0.793361, -0.219518,
		0.807984, -0.486149, -0.332898,
		38.918285, 31.358187, 25.517569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310139, 30.942482, 26.027300>,  <38.352699, 31.698492, 25.750597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310139, 30.942482, 26.027300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680283, 31.064213, 25.936880>,  <38.902367, 31.137251, 25.882627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680283, 31.064213, 25.936880>,  <38.310139, 30.942482, 26.027300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680283, 31.064213, 25.936880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291278, -0.189132, 0.937756,
		0.242633, -0.933602, -0.263658,
		0.925357, 0.304328, -0.226049,
		38.957890, 31.155512, 25.869066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759220, 30.403425, 26.265333>,  <38.310139, 30.942482, 26.027300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759220, 30.403425, 26.265333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998455, 30.723938, 26.259169>,  <39.141994, 30.916246, 26.255470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998455, 30.723938, 26.259169>,  <38.759220, 30.403425, 26.265333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998455, 30.723938, 26.259169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303047, -0.208314, 0.929929,
		0.741925, -0.560850, -0.367417,
		0.598088, 0.801282, -0.015411,
		39.177883, 30.964323, 26.254545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340252, 30.298639, 26.707821>,  <38.759220, 30.403425, 26.265333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340252, 30.298639, 26.707821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370609, 30.695461, 26.667688>,  <39.388824, 30.933554, 26.643608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370609, 30.695461, 26.667688>,  <39.340252, 30.298639, 26.707821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370609, 30.695461, 26.667688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152573, 0.087883, 0.984377,
		0.985374, -0.090013, -0.144691,
		0.075891, 0.992056, -0.100331,
		39.393375, 30.993078, 26.637589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849541, 30.443676, 27.152374>,  <39.340252, 30.298639, 26.707821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849541, 30.443676, 27.152374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640118, 30.779013, 27.091610>,  <39.514465, 30.980215, 27.055151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640118, 30.779013, 27.091610>,  <39.849541, 30.443676, 27.152374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640118, 30.779013, 27.091610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096598, 0.118742, 0.988215,
		0.846498, 0.532059, 0.018814,
		-0.523555, 0.838340, -0.151911,
		39.483051, 31.030514, 27.046038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190426, 30.885283, 27.564478>,  <39.849541, 30.443676, 27.152374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190426, 30.885283, 27.564478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827866, 31.038673, 27.493626>,  <39.610329, 31.130709, 27.451115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.827866, 31.038673, 27.493626>,  <40.190426, 30.885283, 27.564478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827866, 31.038673, 27.493626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081529, 0.252622, 0.964124,
		0.414468, 0.888328, -0.197713,
		-0.906405, 0.383479, -0.177128,
		39.555943, 31.153717, 27.440487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.059597, 32.655231, 31.618231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705696, 32.824150, 31.539351>,  <42.493355, 32.925499, 31.492022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705696, 32.824150, 31.539351>,  <43.059597, 32.655231, 31.618231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705696, 32.824150, 31.539351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053492, 0.512325, 0.857124,
		0.462988, 0.747791, -0.475868,
		-0.884749, 0.422293, -0.197200,
		42.440273, 32.950840, 31.480190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995434, 33.305954, 31.904285>,  <43.059597, 32.655231, 31.618231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995434, 33.305954, 31.904285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.601986, 33.259590, 31.849079>,  <42.365917, 33.231773, 31.815954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.601986, 33.259590, 31.849079>,  <42.995434, 33.305954, 31.904285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601986, 33.259590, 31.849079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178021, 0.505267, 0.844402,
		-0.028136, 0.855144, -0.517626,
		-0.983624, -0.115906, -0.138018,
		42.306900, 33.224819, 31.807674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749767, 33.967243, 32.060108>,  <42.995434, 33.305954, 31.904285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749767, 33.967243, 32.060108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459335, 33.694836, 32.098106>,  <42.285076, 33.531391, 32.120903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459335, 33.694836, 32.098106>,  <42.749767, 33.967243, 32.060108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459335, 33.694836, 32.098106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189330, 0.330812, 0.924509,
		-0.661034, 0.653280, -0.369133,
		-0.726077, -0.681020, 0.094993,
		42.241512, 33.490528, 32.126606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150307, 34.313309, 32.334293>,  <42.749767, 33.967243, 32.060108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150307, 34.313309, 32.334293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123810, 33.925144, 32.427166>,  <42.107914, 33.692245, 32.482887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123810, 33.925144, 32.427166>,  <42.150307, 34.313309, 32.334293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123810, 33.925144, 32.427166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191033, 0.240718, 0.951610,
		-0.979346, 0.018680, -0.201326,
		-0.066239, -0.970415, 0.232178,
		42.103939, 33.634018, 32.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509766, 34.340130, 32.661247>,  <42.150307, 34.313309, 32.334293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509766, 34.340130, 32.661247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673603, 33.996799, 32.784870>,  <41.771908, 33.790802, 32.859043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.673603, 33.996799, 32.784870>,  <41.509766, 34.340130, 32.661247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673603, 33.996799, 32.784870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214811, 0.238506, 0.947086,
		-0.886616, -0.454310, -0.086686,
		0.409596, -0.858322, 0.309054,
		41.796482, 33.739304, 32.877586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940983, 33.941807, 33.015343>,  <41.509766, 34.340130, 32.661247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940983, 33.941807, 33.015343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310783, 33.831280, 33.120377>,  <41.532661, 33.764965, 33.183399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310783, 33.831280, 33.120377>,  <40.940983, 33.941807, 33.015343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310783, 33.831280, 33.120377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242996, 0.103555, 0.964484,
		-0.293697, -0.955471, 0.028592,
		0.924497, -0.276319, 0.262589,
		41.588131, 33.748383, 33.199154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729679, 33.513599, 33.417603>,  <40.940983, 33.941807, 33.015343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729679, 33.513599, 33.417603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110542, 33.587654, 33.514858>,  <41.339062, 33.632088, 33.573212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110542, 33.587654, 33.514858>,  <40.729679, 33.513599, 33.417603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110542, 33.587654, 33.514858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269018, 0.130343, 0.954275,
		0.144999, -0.974027, 0.173917,
		0.952158, 0.185155, 0.243132,
		41.396191, 33.643196, 33.587799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754093, 33.346535, 34.170017>,  <40.729679, 33.513599, 33.417603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754093, 33.346535, 34.170017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116413, 33.508270, 34.119350>,  <41.333805, 33.605312, 34.088951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116413, 33.508270, 34.119350>,  <40.754093, 33.346535, 34.170017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116413, 33.508270, 34.119350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000461, 0.297997, 0.954567,
		0.423717, -0.864700, 0.269737,
		0.905795, 0.404342, -0.126665,
		41.388153, 33.629574, 34.081352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139835, 32.939640, 34.684414>,  <40.754093, 33.346535, 34.170017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139835, 32.939640, 34.684414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.337467, 33.276810, 34.599224>,  <41.456047, 33.479111, 34.548111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.337467, 33.276810, 34.599224>,  <41.139835, 32.939640, 34.684414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337467, 33.276810, 34.599224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078935, 0.200458, 0.976517,
		0.865825, -0.499290, 0.032506,
		0.494081, 0.842927, -0.212973,
		41.485691, 33.529686, 34.535332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792637, 32.924675, 35.129662>,  <41.139835, 32.939640, 34.684414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792637, 32.924675, 35.129662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742813, 33.300468, 35.001999>,  <41.712921, 33.525944, 34.925400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.742813, 33.300468, 35.001999>,  <41.792637, 32.924675, 35.129662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742813, 33.300468, 35.001999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157728, 0.336322, 0.928444,
		0.979596, 0.065302, -0.190073,
		-0.124555, 0.939480, -0.319160,
		41.705448, 33.582314, 34.906250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365990, 33.382046, 35.361629>,  <41.792637, 32.924675, 35.129662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365990, 33.382046, 35.361629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043285, 33.606953, 35.288982>,  <41.849663, 33.741898, 35.245396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043285, 33.606953, 35.288982>,  <42.365990, 33.382046, 35.361629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043285, 33.606953, 35.288982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031177, 0.347452, 0.937179,
		0.590051, 0.750420, -0.297842,
		-0.806764, 0.562269, -0.181619,
		41.801258, 33.775635, 35.234497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540775, 34.009502, 35.672932>,  <42.365990, 33.382046, 35.361629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540775, 34.009502, 35.672932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142498, 33.974930, 35.659515>,  <41.903530, 33.954185, 35.651466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142498, 33.974930, 35.659515>,  <42.540775, 34.009502, 35.672932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142498, 33.974930, 35.659515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052941, 0.233019, 0.971030,
		-0.076109, 0.968624, -0.236591,
		-0.995693, -0.086429, -0.033545,
		41.843792, 33.949001, 35.649452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331490, 34.574837, 36.100670>,  <42.540775, 34.009502, 35.672932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331490, 34.574837, 36.100670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010864, 34.339191, 36.059803>,  <41.818489, 34.197803, 36.035282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010864, 34.339191, 36.059803>,  <42.331490, 34.574837, 36.100670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010864, 34.339191, 36.059803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125737, -0.000967, 0.992063,
		-0.584538, 0.808048, -0.073298,
		-0.801564, -0.589115, -0.102167,
		41.770393, 34.162457, 36.029152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719257, 34.883762, 36.339172>,  <42.331490, 34.574837, 36.100670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719257, 34.883762, 36.339172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707062, 34.486423, 36.383598>,  <41.699745, 34.248020, 36.410255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707062, 34.486423, 36.383598>,  <41.719257, 34.883762, 36.339172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707062, 34.486423, 36.383598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067438, 0.112909, 0.991314,
		-0.997258, 0.022732, -0.070432,
		-0.030487, -0.993346, 0.111067,
		41.697914, 34.188419, 36.416920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575413, 35.509308, 36.671333>,  <41.719257, 34.883762, 36.339172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575413, 35.509308, 36.671333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.667412, 35.896027, 36.715893>,  <41.722610, 36.128056, 36.742630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.667412, 35.896027, 36.715893>,  <41.575413, 35.509308, 36.671333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667412, 35.896027, 36.715893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011635, 0.111727, -0.993671,
		-0.973122, 0.229836, 0.014447,
		0.229995, 0.966795, 0.111398,
		41.736412, 36.186066, 36.749313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096184, 35.850231, 36.270706>,  <41.575413, 35.509308, 36.671333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096184, 35.850231, 36.270706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411236, 36.092495, 36.315987>,  <41.600269, 36.237854, 36.343155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.411236, 36.092495, 36.315987>,  <41.096184, 35.850231, 36.270706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411236, 36.092495, 36.315987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048833, 0.121792, -0.991354,
		-0.614206, 0.786352, 0.066352,
		0.787634, 0.605655, 0.113205,
		41.647526, 36.274193, 36.349949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938194, 36.431316, 35.875206>,  <41.096184, 35.850231, 36.270706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938194, 36.431316, 35.875206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334846, 36.422905, 35.926167>,  <41.572838, 36.417858, 35.956745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334846, 36.422905, 35.926167>,  <40.938194, 36.431316, 35.875206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334846, 36.422905, 35.926167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127341, 0.322778, -0.937869,
		-0.021404, 0.946241, 0.322753,
		0.991628, -0.021025, 0.127404,
		41.632336, 36.416599, 35.964386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081139, 37.088615, 35.660461>,  <40.938194, 36.431316, 35.875206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081139, 37.088615, 35.660461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422691, 36.882759, 35.629391>,  <41.627621, 36.759247, 35.610748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.422691, 36.882759, 35.629391>,  <41.081139, 37.088615, 35.660461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422691, 36.882759, 35.629391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045855, 0.223058, -0.973726,
		0.518448, 0.827882, 0.214063,
		0.853879, -0.514642, -0.077681,
		41.678856, 36.728367, 35.606087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265373, 37.338558, 35.089996>,  <41.081139, 37.088615, 35.660461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265373, 37.338558, 35.089996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523685, 37.035591, 35.128536>,  <41.678673, 36.853809, 35.151661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.523685, 37.035591, 35.128536>,  <41.265373, 37.338558, 35.089996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523685, 37.035591, 35.128536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413552, 0.240901, -0.878033,
		0.641827, 0.606864, 0.468801,
		0.645781, -0.757419, 0.096353,
		41.717419, 36.808365, 35.157444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012321, 37.600941, 34.978252>,  <41.265373, 37.338558, 35.089996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012321, 37.600941, 34.978252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004124, 37.206886, 34.910023>,  <41.999203, 36.970455, 34.869087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004124, 37.206886, 34.910023>,  <42.012321, 37.600941, 34.978252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004124, 37.206886, 34.910023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440874, 0.144216, -0.885907,
		0.897335, -0.093360, 0.431363,
		-0.020499, -0.985132, -0.170570,
		41.997974, 36.911346, 34.858852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667889, 37.421970, 34.575760>,  <42.012321, 37.600941, 34.978252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667889, 37.421970, 34.575760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376793, 37.157124, 34.504208>,  <42.202137, 36.998215, 34.461277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376793, 37.157124, 34.504208>,  <42.667889, 37.421970, 34.575760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376793, 37.157124, 34.504208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227229, 0.013330, -0.973750,
		0.647124, -0.749280, 0.140752,
		-0.727735, -0.662119, -0.178884,
		42.158474, 36.958488, 34.450542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006672, 36.966545, 34.044392>,  <42.667889, 37.421970, 34.575760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006672, 36.966545, 34.044392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612892, 36.897446, 34.031654>,  <42.376625, 36.855988, 34.024010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.612892, 36.897446, 34.031654>,  <43.006672, 36.966545, 34.044392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612892, 36.897446, 34.031654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043145, -0.062049, -0.997140,
		0.170275, -0.983010, 0.068537,
		-0.984452, -0.172746, -0.031846,
		42.317558, 36.845623, 34.022099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934811, 36.455090, 33.478619>,  <43.006672, 36.966545, 34.044392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934811, 36.455090, 33.478619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559032, 36.580151, 33.534756>,  <42.333565, 36.655190, 33.568439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.559032, 36.580151, 33.534756>,  <42.934811, 36.455090, 33.478619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559032, 36.580151, 33.534756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210599, -0.203610, -0.956133,
		-0.270372, -0.927785, 0.257125,
		-0.939440, 0.312662, 0.140340,
		42.277199, 36.673946, 33.576859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478577, 35.910130, 33.170891>,  <42.934811, 36.455090, 33.478619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478577, 35.910130, 33.170891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295723, 36.265850, 33.176025>,  <42.186012, 36.479282, 33.179108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.295723, 36.265850, 33.176025>,  <42.478577, 35.910130, 33.170891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295723, 36.265850, 33.176025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082165, -0.027853, -0.996230,
		-0.885594, -0.456466, 0.085802,
		-0.457135, 0.889305, 0.012839,
		42.158581, 36.532642, 33.179878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307983, 35.935135, 32.594070>,  <42.478577, 35.910130, 33.170891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307983, 35.935135, 32.594070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058125, 36.226940, 32.705513>,  <41.908207, 36.402023, 32.772377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.058125, 36.226940, 32.705513>,  <42.307983, 35.935135, 32.594070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058125, 36.226940, 32.705513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273954, 0.129384, -0.953000,
		-0.731273, -0.671618, 0.119033,
		-0.624651, 0.729513, 0.278608,
		41.870728, 36.445793, 32.789097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640495, 35.793953, 32.359344>,  <42.307983, 35.935135, 32.594070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640495, 35.793953, 32.359344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668552, 36.192680, 32.344227>,  <41.685387, 36.431919, 32.335155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668552, 36.192680, 32.344227>,  <41.640495, 35.793953, 32.359344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668552, 36.192680, 32.344227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247773, -0.019292, -0.968626,
		-0.966276, 0.077305, 0.245632,
		0.070141, 0.996821, -0.037795,
		41.689594, 36.491726, 32.332890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003677, 35.987049, 32.073284>,  <41.640495, 35.793953, 32.359344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003677, 35.987049, 32.073284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262272, 36.289303, 32.031185>,  <41.417427, 36.470654, 32.005928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262272, 36.289303, 32.031185>,  <41.003677, 35.987049, 32.073284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262272, 36.289303, 32.031185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206844, 0.040817, -0.977522,
		-0.734351, 0.653724, 0.182685,
		0.646486, 0.755631, -0.105245,
		41.456219, 36.515991, 31.999611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725452, 36.432777, 31.597982>,  <41.003677, 35.987049, 32.073284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725452, 36.432777, 31.597982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124073, 36.461639, 31.581551>,  <41.363243, 36.478958, 31.571692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124073, 36.461639, 31.581551>,  <40.725452, 36.432777, 31.597982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124073, 36.461639, 31.581551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038743, -0.033519, -0.998687,
		-0.073437, 0.996830, -0.030608,
		0.996547, 0.072155, -0.041081,
		41.423038, 36.483284, 31.569225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439171, 37.084946, 31.703947>,  <40.725452, 36.432777, 31.597982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439171, 37.084946, 31.703947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.167473, 37.378368, 31.694788>,  <40.004456, 37.554420, 31.689293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.167473, 37.378368, 31.694788>,  <40.439171, 37.084946, 31.703947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167473, 37.378368, 31.694788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213896, -0.168021, 0.962298,
		0.702052, 0.658532, 0.271032,
		-0.679243, 0.733556, -0.022898,
		39.963699, 37.598434, 31.687918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624222, 37.403328, 32.240028>,  <40.439171, 37.084946, 31.703947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624222, 37.403328, 32.240028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241280, 37.476772, 32.150799>,  <40.011517, 37.520840, 32.097260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.241280, 37.476772, 32.150799>,  <40.624222, 37.403328, 32.240028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241280, 37.476772, 32.150799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217733, 0.049034, 0.974776,
		0.189921, 0.981775, -0.006964,
		-0.957352, 0.183614, -0.223077,
		39.954075, 37.531857, 32.083874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471882, 38.058270, 32.563793>,  <40.624222, 37.403328, 32.240028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471882, 38.058270, 32.563793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.137428, 37.847515, 32.502781>,  <39.936756, 37.721062, 32.466171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.137428, 37.847515, 32.502781>,  <40.471882, 38.058270, 32.563793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137428, 37.847515, 32.502781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280277, 0.171348, 0.944502,
		-0.471508, 0.832486, -0.290944,
		-0.836137, -0.526885, -0.152535,
		39.886585, 37.689449, 32.457020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875484, 38.420647, 32.779839>,  <40.471882, 38.058270, 32.563793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875484, 38.420647, 32.779839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700935, 38.060799, 32.773319>,  <39.596207, 37.844891, 32.769409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700935, 38.060799, 32.773319>,  <39.875484, 38.420647, 32.779839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700935, 38.060799, 32.773319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322090, 0.139272, 0.936409,
		-0.840140, 0.413874, -0.350533,
		-0.436375, -0.899617, -0.016297,
		39.570023, 37.790913, 32.768429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137306, 38.463573, 33.035831>,  <39.875484, 38.420647, 32.779839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137306, 38.463573, 33.035831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.189167, 38.067776, 33.061428>,  <39.220284, 37.830299, 33.076786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.189167, 38.067776, 33.061428>,  <39.137306, 38.463573, 33.035831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189167, 38.067776, 33.061428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400105, 0.006844, 0.916443,
		-0.907251, -0.144427, -0.395014,
		0.129655, -0.989492, 0.063995,
		39.228065, 37.770927, 33.080627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495277, 38.353199, 33.404793>,  <39.137306, 38.463573, 33.035831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495277, 38.353199, 33.404793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759586, 38.056023, 33.447536>,  <38.918171, 37.877716, 33.473183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759586, 38.056023, 33.447536>,  <38.495277, 38.353199, 33.404793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759586, 38.056023, 33.447536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258451, -0.091548, 0.961677,
		-0.704684, -0.663070, -0.252505,
		0.660775, -0.742938, 0.106859,
		38.957817, 37.833141, 33.479595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172413, 37.678005, 33.657326>,  <38.495277, 38.353199, 33.404793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172413, 37.678005, 33.657326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558239, 37.655636, 33.760460>,  <38.789734, 37.642216, 33.822342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558239, 37.655636, 33.760460>,  <38.172413, 37.678005, 33.657326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558239, 37.655636, 33.760460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263652, -0.168330, 0.949817,
		-0.009711, -0.984143, -0.177109,
		0.964569, -0.055918, 0.257837,
		38.847610, 37.638859, 33.837811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271542, 37.117252, 34.158974>,  <38.172413, 37.678005, 33.657326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271542, 37.117252, 34.158974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.590214, 37.355583, 34.199539>,  <38.781418, 37.498581, 34.223877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.590214, 37.355583, 34.199539>,  <38.271542, 37.117252, 34.158974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590214, 37.355583, 34.199539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070664, -0.074810, 0.994691,
		0.600253, -0.799619, -0.017496,
		0.796682, 0.595830, 0.101409,
		38.829220, 37.534332, 34.229961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593910, 36.882378, 34.815456>,  <38.271542, 37.117252, 34.158974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593910, 36.882378, 34.815456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770596, 37.239502, 34.780170>,  <38.876606, 37.453777, 34.758999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770596, 37.239502, 34.780170>,  <38.593910, 36.882378, 34.815456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770596, 37.239502, 34.780170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100225, 0.048607, 0.993777,
		0.891539, -0.447808, -0.068012,
		0.441716, 0.892807, -0.088216,
		38.903111, 37.507343, 34.753704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240101, 36.816132, 35.288361>,  <38.593910, 36.882378, 34.815456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240101, 36.816132, 35.288361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139271, 37.196598, 35.217102>,  <39.078773, 37.424877, 35.174347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139271, 37.196598, 35.217102>,  <39.240101, 36.816132, 35.288361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139271, 37.196598, 35.217102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135364, 0.216944, 0.966753,
		0.958192, 0.219583, -0.183441,
		-0.252079, 0.951167, -0.178150,
		39.063648, 37.481949, 35.163658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732296, 37.147968, 35.669697>,  <39.240101, 36.816132, 35.288361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732296, 37.147968, 35.669697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.440792, 37.415054, 35.608955>,  <39.265888, 37.575306, 35.572510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.440792, 37.415054, 35.608955>,  <39.732296, 37.147968, 35.669697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440792, 37.415054, 35.608955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036119, 0.258938, 0.965218,
		0.683815, 0.697929, -0.212821,
		-0.728761, 0.667717, -0.151857,
		39.222164, 37.615368, 35.563396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925392, 37.735882, 36.075218>,  <39.732296, 37.147968, 35.669697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925392, 37.735882, 36.075218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543877, 37.825146, 35.994732>,  <39.314968, 37.878704, 35.946438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543877, 37.825146, 35.994732>,  <39.925392, 37.735882, 36.075218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543877, 37.825146, 35.994732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079426, 0.458592, 0.885090,
		0.289797, 0.860170, -0.419674,
		-0.953787, 0.223163, -0.201218,
		39.257740, 37.892094, 35.934368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.106300, 37.775928, 27.674648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750881, 37.674290, 27.827446>,  <39.537628, 37.613304, 27.919125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750881, 37.674290, 27.827446>,  <40.106300, 37.775928, 27.674648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750881, 37.674290, 27.827446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278782, 0.362226, 0.889423,
		-0.364370, 0.896786, -0.251016,
		-0.888546, -0.254100, 0.381993,
		39.484318, 37.598061, 27.942043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911198, 38.328102, 28.117510>,  <40.106300, 37.775928, 27.674648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911198, 38.328102, 28.117510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708271, 38.008873, 28.247566>,  <39.586517, 37.817337, 28.325600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708271, 38.008873, 28.247566>,  <39.911198, 38.328102, 28.117510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708271, 38.008873, 28.247566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136652, 0.298024, 0.944726,
		-0.850857, 0.523704, -0.042134,
		-0.507314, -0.798070, 0.325141,
		39.556076, 37.769451, 28.345108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504288, 38.599686, 28.711691>,  <39.911198, 38.328102, 28.117510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504288, 38.599686, 28.711691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515289, 38.203289, 28.764116>,  <39.521893, 37.965450, 28.795570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515289, 38.203289, 28.764116>,  <39.504288, 38.599686, 28.711691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515289, 38.203289, 28.764116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094006, 0.133095, 0.986635,
		-0.995192, -0.014819, 0.096820,
		0.027507, -0.990992, 0.131062,
		39.523540, 37.905991, 28.803434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083691, 38.565964, 29.312063>,  <39.504288, 38.599686, 28.711691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083691, 38.565964, 29.312063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279003, 38.217716, 29.288046>,  <39.396191, 38.008770, 29.273636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279003, 38.217716, 29.288046>,  <39.083691, 38.565964, 29.312063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279003, 38.217716, 29.288046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144301, 0.012692, 0.989452,
		-0.860672, -0.491797, 0.131828,
		0.488283, -0.870617, -0.060044,
		39.425488, 37.956532, 29.270033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739162, 38.088284, 29.812838>,  <39.083691, 38.565964, 29.312063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739162, 38.088284, 29.812838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098587, 37.930588, 29.735723>,  <39.314243, 37.835972, 29.689455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098587, 37.930588, 29.735723>,  <38.739162, 38.088284, 29.812838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098587, 37.930588, 29.735723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092713, -0.258845, 0.961459,
		-0.428946, -0.881802, -0.196037,
		0.898560, -0.394238, -0.192785,
		39.368156, 37.812317, 29.677889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765972, 37.459549, 30.116451>,  <38.739162, 38.088284, 29.812838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765972, 37.459549, 30.116451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142006, 37.587051, 30.068064>,  <39.367626, 37.663551, 30.039032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142006, 37.587051, 30.068064>,  <38.765972, 37.459549, 30.116451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142006, 37.587051, 30.068064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162974, -0.108494, 0.980647,
		0.299463, -0.941607, -0.153943,
		0.940086, 0.318756, -0.120967,
		39.424030, 37.682678, 30.031773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056564, 36.923206, 30.435606>,  <38.765972, 37.459549, 30.116451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056564, 36.923206, 30.435606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334202, 37.210896, 30.423233>,  <39.500782, 37.383511, 30.415810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334202, 37.210896, 30.423233>,  <39.056564, 36.923206, 30.435606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334202, 37.210896, 30.423233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149734, -0.102206, 0.983429,
		0.704142, -0.687222, -0.178632,
		0.694092, 0.719222, -0.030933,
		39.542431, 37.426662, 30.413954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643166, 36.648628, 30.718618>,  <39.056564, 36.923206, 30.435606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643166, 36.648628, 30.718618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697796, 37.043602, 30.750439>,  <39.730576, 37.280586, 30.769531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697796, 37.043602, 30.750439>,  <39.643166, 36.648628, 30.718618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697796, 37.043602, 30.750439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055216, -0.087767, 0.994609,
		0.989089, -0.131448, -0.066509,
		0.136576, 0.987430, 0.079551,
		39.738770, 37.339832, 30.774303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177818, 36.687721, 31.167936>,  <39.643166, 36.648628, 30.718618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177818, 36.687721, 31.167936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982155, 37.036343, 31.181311>,  <39.864758, 37.245514, 31.189335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982155, 37.036343, 31.181311>,  <40.177818, 36.687721, 31.167936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982155, 37.036343, 31.181311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002928, -0.039975, 0.999196,
		0.872190, 0.488667, 0.022106,
		-0.489158, 0.871554, 0.033435,
		39.835407, 37.297810, 31.191341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852734, 36.817173, 30.899160>,  <40.177818, 36.687721, 31.167936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852734, 36.817173, 30.899160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227139, 36.718319, 30.999407>,  <41.451782, 36.659004, 31.059555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227139, 36.718319, 30.999407>,  <40.852734, 36.817173, 30.899160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227139, 36.718319, 30.999407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189624, -0.245796, -0.950593,
		0.296530, 0.937287, -0.183204,
		0.936009, -0.247139, 0.250618,
		41.507942, 36.644176, 31.074593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293728, 37.270821, 30.556587>,  <40.852734, 36.817173, 30.899160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293728, 37.270821, 30.556587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494247, 36.930676, 30.620567>,  <41.614559, 36.726589, 30.658955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494247, 36.930676, 30.620567>,  <41.293728, 37.270821, 30.556587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494247, 36.930676, 30.620567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170413, -0.084207, -0.981768,
		0.848325, 0.519420, 0.102699,
		0.501302, -0.850360, 0.159951,
		41.644638, 36.675568, 30.668552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939976, 37.379776, 30.256371>,  <41.293728, 37.270821, 30.556587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939976, 37.379776, 30.256371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878960, 36.986656, 30.298027>,  <41.842350, 36.750786, 30.323021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878960, 36.986656, 30.298027>,  <41.939976, 37.379776, 30.256371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878960, 36.986656, 30.298027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139616, -0.125746, -0.982189,
		0.978386, -0.135285, 0.156396,
		-0.152542, -0.982795, 0.104140,
		41.833199, 36.691818, 30.329269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640015, 37.030781, 30.098902>,  <41.939976, 37.379776, 30.256371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640015, 37.030781, 30.098902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344250, 36.772785, 30.021692>,  <42.166790, 36.617989, 29.975367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344250, 36.772785, 30.021692>,  <42.640015, 37.030781, 30.098902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344250, 36.772785, 30.021692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344010, -0.115506, -0.931834,
		0.578730, -0.755410, 0.307289,
		-0.739411, -0.644991, -0.193022,
		42.122425, 36.579288, 29.963785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993404, 36.556271, 29.724073>,  <42.640015, 37.030781, 30.098902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993404, 36.556271, 29.724073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609379, 36.483742, 29.638847>,  <42.378963, 36.440224, 29.587711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609379, 36.483742, 29.638847>,  <42.993404, 36.556271, 29.724073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609379, 36.483742, 29.638847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249276, -0.208595, -0.945701,
		0.127036, -0.961046, 0.245465,
		-0.960064, -0.181327, -0.213067,
		42.321358, 36.429344, 29.574926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072842, 35.929096, 29.553537>,  <42.993404, 36.556271, 29.724073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072842, 35.929096, 29.553537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734917, 36.056961, 29.381908>,  <42.532162, 36.133678, 29.278931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734917, 36.056961, 29.381908>,  <43.072842, 35.929096, 29.553537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734917, 36.056961, 29.381908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300879, -0.379295, -0.874990,
		-0.442446, -0.868304, 0.224255,
		-0.844816, 0.319662, -0.429072,
		42.481472, 36.152859, 29.253187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830700, 35.326836, 29.112047>,  <43.072842, 35.929096, 29.553537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830700, 35.326836, 29.112047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643349, 35.656429, 28.984505>,  <42.530937, 35.854187, 28.907980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643349, 35.656429, 28.984505>,  <42.830700, 35.326836, 29.112047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643349, 35.656429, 28.984505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192735, -0.256911, -0.947022,
		-0.862251, -0.505017, -0.038481,
		-0.468376, 0.823987, -0.318856,
		42.502834, 35.903625, 28.888847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473770, 35.028816, 28.503155>,  <42.830700, 35.326836, 29.112047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473770, 35.028816, 28.503155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473679, 35.426613, 28.461214>,  <42.473621, 35.665291, 28.436049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473679, 35.426613, 28.461214>,  <42.473770, 35.028816, 28.503155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473679, 35.426613, 28.461214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073861, -0.104584, -0.991769,
		-0.997268, 0.007515, 0.073478,
		-0.000232, 0.994488, -0.104853,
		42.473610, 35.724960, 28.429758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912510, 35.200932, 28.143375>,  <42.473770, 35.028816, 28.503155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912510, 35.200932, 28.143375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150967, 35.516113, 28.081739>,  <42.294041, 35.705223, 28.044758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150967, 35.516113, 28.081739>,  <41.912510, 35.200932, 28.143375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150967, 35.516113, 28.081739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207739, -0.034005, -0.977593,
		-0.775539, 0.614793, 0.143417,
		0.596141, 0.787955, -0.154089,
		42.329807, 35.752499, 28.035513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532932, 35.627075, 27.770071>,  <41.912510, 35.200932, 28.143375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532932, 35.627075, 27.770071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907619, 35.743347, 27.692036>,  <42.132431, 35.813110, 27.645214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907619, 35.743347, 27.692036>,  <41.532932, 35.627075, 27.770071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907619, 35.743347, 27.692036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180676, -0.075907, -0.980609,
		-0.299853, 0.953804, -0.018584,
		0.936720, 0.290681, -0.195090,
		42.188637, 35.830551, 27.633509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532406, 36.143948, 27.278299>,  <41.532932, 35.627075, 27.770071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532406, 36.143948, 27.278299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910854, 36.031185, 27.214561>,  <42.137924, 35.963528, 27.176319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910854, 36.031185, 27.214561>,  <41.532406, 36.143948, 27.278299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910854, 36.031185, 27.214561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194139, -0.099955, -0.975868,
		0.259171, 0.954223, -0.149298,
		0.946118, -0.281902, -0.159346,
		42.194691, 35.946613, 27.166758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804020, 36.454891, 26.616098>,  <41.532406, 36.143948, 27.278299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804020, 36.454891, 26.616098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033218, 36.134418, 26.685122>,  <42.170738, 35.942135, 26.726536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033218, 36.134418, 26.685122>,  <41.804020, 36.454891, 26.616098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033218, 36.134418, 26.685122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078838, -0.155688, -0.984655,
		0.815756, 0.577809, -0.026046,
		0.572998, -0.801185, 0.172557,
		42.205116, 35.894062, 26.736889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366222, 36.509949, 26.230068>,  <41.804020, 36.454891, 26.616098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366222, 36.509949, 26.230068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390018, 36.119156, 26.312016>,  <42.404297, 35.884682, 26.361185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390018, 36.119156, 26.312016>,  <42.366222, 36.509949, 26.230068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390018, 36.119156, 26.312016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009693, -0.204658, -0.978786,
		0.998182, 0.060216, -0.002706,
		0.059492, -0.976980, 0.204870,
		42.407867, 35.826061, 26.373476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966900, 36.214924, 25.761501>,  <42.366222, 36.509949, 26.230068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966900, 36.214924, 25.761501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713005, 35.925961, 25.871220>,  <42.560669, 35.752583, 25.937052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713005, 35.925961, 25.871220>,  <42.966900, 36.214924, 25.761501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713005, 35.925961, 25.871220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030039, -0.331635, -0.942929,
		0.772147, -0.606749, 0.188799,
		-0.634734, -0.722408, 0.274297,
		42.522583, 35.709240, 25.953508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.853226, 31.474915, 26.613003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189842, 31.683432, 26.669668>,  <35.391811, 31.808542, 26.703669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189842, 31.683432, 26.669668>,  <34.853226, 31.474915, 26.613003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189842, 31.683432, 26.669668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028365, -0.219243, 0.975258,
		0.539453, -0.824735, -0.169715,
		0.841538, 0.521292, 0.141665,
		35.442303, 31.839819, 26.712168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416607, 31.052338, 27.141455>,  <34.853226, 31.474915, 26.613003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416607, 31.052338, 27.141455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488476, 31.445301, 27.161802>,  <35.531597, 31.681080, 27.174011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488476, 31.445301, 27.161802>,  <35.416607, 31.052338, 27.141455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488476, 31.445301, 27.161802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226861, -0.091699, 0.969601,
		0.957210, -0.162671, -0.239347,
		0.179673, 0.982410, 0.050871,
		35.542377, 31.740025, 27.177063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026260, 31.059284, 27.483814>,  <35.416607, 31.052338, 27.141455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026260, 31.059284, 27.483814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878487, 31.429527, 27.516722>,  <35.789822, 31.651672, 27.536467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.878487, 31.429527, 27.516722>,  <36.026260, 31.059284, 27.483814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878487, 31.429527, 27.516722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206384, -0.004591, 0.978460,
		0.906048, 0.378457, -0.189334,
		-0.369436, 0.925607, 0.082267,
		35.767654, 31.707209, 27.541401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516777, 31.425087, 27.919830>,  <36.026260, 31.059284, 27.483814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516777, 31.425087, 27.919830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185371, 31.647024, 27.950077>,  <35.986530, 31.780186, 27.968225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185371, 31.647024, 27.950077>,  <36.516777, 31.425087, 27.919830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185371, 31.647024, 27.950077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196103, 0.161004, 0.967275,
		0.524511, 0.816228, -0.242200,
		-0.828512, 0.554842, 0.075616,
		35.936817, 31.813477, 27.972761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663273, 31.979618, 28.369467>,  <36.516777, 31.425087, 27.919830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663273, 31.979618, 28.369467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263386, 31.974689, 28.377535>,  <36.023453, 31.971731, 28.382376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263386, 31.974689, 28.377535>,  <36.663273, 31.979618, 28.369467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263386, 31.974689, 28.377535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013779, 0.389540, 0.920906,
		-0.019205, 0.920927, -0.389262,
		-0.999721, -0.012322, 0.020171,
		35.963470, 31.970993, 28.383587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569042, 32.682262, 28.708731>,  <36.663273, 31.979618, 28.369467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569042, 32.682262, 28.708731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224842, 32.480698, 28.738689>,  <36.018322, 32.359760, 28.756664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.224842, 32.480698, 28.738689>,  <36.569042, 32.682262, 28.708731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224842, 32.480698, 28.738689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094281, 0.301993, 0.948636,
		-0.500643, 0.809245, -0.307375,
		-0.860504, -0.503908, 0.074895,
		35.966690, 32.329525, 28.761158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121452, 33.164276, 28.998236>,  <36.569042, 32.682262, 28.708731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121452, 33.164276, 28.998236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991497, 32.790424, 29.056068>,  <35.913525, 32.566113, 29.090769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991497, 32.790424, 29.056068>,  <36.121452, 33.164276, 28.998236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991497, 32.790424, 29.056068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013740, 0.148197, 0.988862,
		-0.945651, 0.323260, -0.035306,
		-0.324891, -0.934634, 0.144584,
		35.894028, 32.510033, 29.099443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591095, 33.252956, 29.450996>,  <36.121452, 33.164276, 28.998236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591095, 33.252956, 29.450996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682381, 32.865582, 29.491104>,  <35.737152, 32.633156, 29.515169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.682381, 32.865582, 29.491104>,  <35.591095, 33.252956, 29.450996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682381, 32.865582, 29.491104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018738, 0.107336, 0.994046,
		-0.973432, -0.224972, 0.042641,
		0.228210, -0.968435, 0.100269,
		35.750843, 32.575050, 29.521185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169113, 33.092110, 30.069344>,  <35.591095, 33.252956, 29.450996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169113, 33.092110, 30.069344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.478077, 32.839333, 30.043968>,  <35.663456, 32.687668, 30.028744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.478077, 32.839333, 30.043968>,  <35.169113, 33.092110, 30.069344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478077, 32.839333, 30.043968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127933, 0.056976, 0.990145,
		-0.622102, -0.772917, 0.124856,
		0.772413, -0.631944, -0.063436,
		35.709801, 32.649750, 30.024937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124245, 32.717266, 30.685978>,  <35.169113, 33.092110, 30.069344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124245, 32.717266, 30.685978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501442, 32.643890, 30.574898>,  <35.727760, 32.599865, 30.508249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501442, 32.643890, 30.574898>,  <35.124245, 32.717266, 30.685978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501442, 32.643890, 30.574898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293417, 0.064425, 0.953811,
		-0.157077, -0.980917, 0.114576,
		0.942992, -0.183441, -0.277699,
		35.784340, 32.588860, 30.491589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335011, 32.251377, 31.139471>,  <35.124245, 32.717266, 30.685978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335011, 32.251377, 31.139471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.679600, 32.387814, 30.988993>,  <35.886353, 32.469673, 30.898706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.679600, 32.387814, 30.988993>,  <35.335011, 32.251377, 31.139471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679600, 32.387814, 30.988993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419118, -0.059310, 0.905993,
		0.286713, -0.938158, -0.194051,
		0.861473, 0.341090, -0.376194,
		35.938042, 32.490139, 30.876135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775005, 31.828840, 31.524836>,  <35.335011, 32.251377, 31.139471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775005, 31.828840, 31.524836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990105, 32.135921, 31.385429>,  <36.119164, 32.320171, 31.301786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990105, 32.135921, 31.385429>,  <35.775005, 31.828840, 31.524836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990105, 32.135921, 31.385429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466114, 0.073745, 0.881646,
		0.702542, -0.636550, -0.318181,
		0.537747, 0.767702, -0.348514,
		36.151428, 32.366234, 31.280874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458454, 31.655739, 31.578707>,  <35.775005, 31.828840, 31.524836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458454, 31.655739, 31.578707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474110, 32.055405, 31.574074>,  <36.483501, 32.295204, 31.571293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474110, 32.055405, 31.574074>,  <36.458454, 31.655739, 31.578707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474110, 32.055405, 31.574074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404820, -0.005256, 0.914381,
		0.913558, -0.040478, -0.404688,
		0.039139, 0.999167, -0.011584,
		36.485851, 32.355156, 31.570599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176498, 31.892256, 31.756163>,  <36.458454, 31.655739, 31.578707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176498, 31.892256, 31.756163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934734, 32.199177, 31.841888>,  <36.789677, 32.383327, 31.893324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934734, 32.199177, 31.841888>,  <37.176498, 31.892256, 31.756163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934734, 32.199177, 31.841888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474984, 0.131102, 0.870174,
		0.639588, 0.627743, -0.443696,
		-0.604415, 0.767301, 0.214317,
		36.753410, 32.429367, 31.906183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872383, 32.027878, 31.403130>,  <37.176498, 31.892256, 31.756163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872383, 32.027878, 31.403130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252995, 31.922758, 31.339226>,  <38.481361, 31.859686, 31.300882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252995, 31.922758, 31.339226>,  <37.872383, 32.027878, 31.403130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252995, 31.922758, 31.339226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206359, -0.160385, -0.965242,
		0.228045, 0.951426, -0.206843,
		0.951531, -0.262802, -0.159761,
		38.538452, 31.843918, 31.291298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114147, 32.279793, 30.809122>,  <37.872383, 32.027878, 31.403130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114147, 32.279793, 30.809122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.416183, 32.022415, 30.859430>,  <38.597404, 31.867990, 30.889616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.416183, 32.022415, 30.859430>,  <38.114147, 32.279793, 30.809122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416183, 32.022415, 30.859430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168341, 0.004876, -0.985717,
		0.633636, 0.765482, 0.111999,
		0.755094, -0.643439, 0.125772,
		38.642712, 31.829384, 30.897161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638794, 32.544037, 30.519585>,  <38.114147, 32.279793, 30.809122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638794, 32.544037, 30.519585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.742058, 32.158039, 30.538078>,  <38.804016, 31.926441, 30.549175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.742058, 32.158039, 30.538078>,  <38.638794, 32.544037, 30.519585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742058, 32.158039, 30.538078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236648, 0.016764, -0.971451,
		0.936670, 0.261732, 0.232692,
		0.258160, -0.964995, 0.046236,
		38.819508, 31.868540, 30.551949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358124, 32.396591, 30.204794>,  <38.638794, 32.544037, 30.519585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358124, 32.396591, 30.204794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.171093, 32.044418, 30.173277>,  <39.058876, 31.833115, 30.154367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.171093, 32.044418, 30.173277>,  <39.358124, 32.396591, 30.204794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171093, 32.044418, 30.173277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175439, -0.005066, -0.984477,
		0.866369, -0.474139, 0.156832,
		-0.467574, -0.880435, -0.078793,
		39.030819, 31.780289, 30.149639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740116, 32.062840, 29.667704>,  <39.358124, 32.396591, 30.204794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740116, 32.062840, 29.667704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430378, 31.812382, 29.704237>,  <39.244537, 31.662107, 29.726156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430378, 31.812382, 29.704237>,  <39.740116, 32.062840, 29.667704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430378, 31.812382, 29.704237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048093, -0.202159, -0.978171,
		0.630938, -0.753046, 0.186653,
		-0.774341, -0.626142, 0.091334,
		39.198074, 31.624538, 29.731638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958496, 31.290771, 29.389971>,  <39.740116, 32.062840, 29.667704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958496, 31.290771, 29.389971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567780, 31.373745, 29.368641>,  <39.333347, 31.423529, 29.355843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567780, 31.373745, 29.368641>,  <39.958496, 31.290771, 29.389971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567780, 31.373745, 29.368641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025371, -0.135169, -0.990498,
		-0.212672, -0.968865, 0.126769,
		-0.976794, 0.207435, -0.053327,
		39.274742, 31.435974, 29.352642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678158, 30.731762, 29.015024>,  <39.958496, 31.290771, 29.389971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678158, 30.731762, 29.015024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.413250, 31.029510, 28.980831>,  <39.254303, 31.208160, 28.960316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.413250, 31.029510, 28.980831>,  <39.678158, 30.731762, 29.015024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413250, 31.029510, 28.980831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120003, -0.217996, -0.968544,
		-0.739592, -0.631181, 0.233699,
		-0.662271, 0.744372, -0.085484,
		39.214569, 31.252821, 28.955187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236191, 30.565081, 28.426458>,  <39.678158, 30.731762, 29.015024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236191, 30.565081, 28.426458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.166992, 30.955162, 28.481663>,  <39.125473, 31.189211, 28.514786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.166992, 30.955162, 28.481663>,  <39.236191, 30.565081, 28.426458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166992, 30.955162, 28.481663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020590, 0.143675, -0.989411,
		-0.984707, -0.168326, -0.044935,
		-0.173000, 0.975205, 0.138011,
		39.115093, 31.247723, 28.523066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670658, 30.669777, 28.026222>,  <39.236191, 30.565081, 28.426458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670658, 30.669777, 28.026222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.854366, 31.020029, 28.086012>,  <38.964592, 31.230181, 28.121885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.854366, 31.020029, 28.086012>,  <38.670658, 30.669777, 28.026222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854366, 31.020029, 28.086012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159536, 0.084227, -0.983593,
		-0.873854, 0.475580, -0.101012,
		0.459269, 0.875631, 0.149474,
		38.992146, 31.282719, 28.130854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341282, 31.046040, 27.626665>,  <38.670658, 30.669777, 28.026222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341282, 31.046040, 27.626665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705265, 31.203211, 27.679707>,  <38.923656, 31.297514, 27.711533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705265, 31.203211, 27.679707>,  <38.341282, 31.046040, 27.626665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705265, 31.203211, 27.679707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108138, 0.083872, -0.990592,
		-0.400354, 0.915736, 0.033830,
		0.909958, 0.392929, 0.132605,
		38.978252, 31.321089, 27.719488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409618, 31.741922, 27.302811>,  <38.341282, 31.046040, 27.626665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409618, 31.741922, 27.302811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771778, 31.572783, 27.318016>,  <38.989075, 31.471298, 27.327139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771778, 31.572783, 27.318016>,  <38.409618, 31.741922, 27.302811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771778, 31.572783, 27.318016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123914, 0.177552, -0.976279,
		0.406071, 0.888635, 0.213153,
		0.905401, -0.422851, 0.038016,
		39.043400, 31.445927, 27.329420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874443, 32.177830, 26.866581>,  <38.409618, 31.741922, 27.302811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874443, 32.177830, 26.866581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041431, 31.817015, 26.910473>,  <39.141624, 31.600525, 26.936808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041431, 31.817015, 26.910473>,  <38.874443, 32.177830, 26.866581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041431, 31.817015, 26.910473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249751, -0.002207, -0.968307,
		0.873696, 0.431642, 0.224365,
		0.417467, -0.902042, 0.109731,
		39.166672, 31.546402, 26.943392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472240, 32.253399, 26.621607>,  <38.874443, 32.177830, 26.866581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472240, 32.253399, 26.621607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416721, 31.857489, 26.608473>,  <39.383408, 31.619942, 26.600594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416721, 31.857489, 26.608473>,  <39.472240, 32.253399, 26.621607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416721, 31.857489, 26.608473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270146, -0.005945, -0.962801,
		0.952762, -0.142506, 0.268209,
		-0.138799, -0.989776, -0.032834,
		39.375080, 31.560556, 26.598623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098476, 31.860746, 26.369619>,  <39.472240, 32.253399, 26.621607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098476, 31.860746, 26.369619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791176, 31.612402, 26.307228>,  <39.606796, 31.463396, 26.269793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791176, 31.612402, 26.307228>,  <40.098476, 31.860746, 26.369619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791176, 31.612402, 26.307228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234675, -0.046451, -0.970963,
		0.595587, -0.782544, 0.181386,
		-0.768247, -0.620860, -0.155978,
		39.560703, 31.426144, 26.260435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837635, 31.439222, 26.379490>,  <40.098476, 31.860746, 26.369619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837635, 31.439222, 26.379490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.197975, 31.570042, 26.265287>,  <41.414177, 31.648533, 26.196766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.197975, 31.570042, 26.265287>,  <40.837635, 31.439222, 26.379490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197975, 31.570042, 26.265287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308616, -0.019891, 0.950979,
		0.305335, -0.944799, -0.118851,
		0.900848, 0.327046, -0.285507,
		41.468231, 31.668156, 26.179636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335773, 30.985203, 26.654549>,  <40.837635, 31.439222, 26.379490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335773, 30.985203, 26.654549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.536625, 31.322351, 26.577162>,  <41.657135, 31.524641, 26.530729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.536625, 31.322351, 26.577162>,  <41.335773, 30.985203, 26.654549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536625, 31.322351, 26.577162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368025, -0.005826, 0.929798,
		0.782575, -0.538080, -0.313124,
		0.502130, 0.842874, -0.193468,
		41.687263, 31.575214, 26.519121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129333, 30.914228, 26.855957>,  <41.335773, 30.985203, 26.654549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129333, 30.914228, 26.855957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.027733, 31.301085, 26.851555>,  <41.966770, 31.533197, 26.848913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.027733, 31.301085, 26.851555>,  <42.129333, 30.914228, 26.855957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027733, 31.301085, 26.851555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395135, 0.114149, 0.911504,
		0.882808, 0.227178, -0.411145,
		-0.254005, 0.967140, -0.011006,
		41.951530, 31.591227, 26.848253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701344, 31.199247, 27.127409>,  <42.129333, 30.914228, 26.855957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701344, 31.199247, 27.127409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.405689, 31.466457, 27.161856>,  <42.228294, 31.626783, 27.182524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.405689, 31.466457, 27.161856>,  <42.701344, 31.199247, 27.127409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405689, 31.466457, 27.161856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318310, 0.233761, 0.918714,
		0.593593, 0.706469, -0.385420,
		-0.739139, 0.668025, 0.086117,
		42.183949, 31.666864, 27.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000763, 31.813635, 27.388191>,  <42.701344, 31.199247, 27.127409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000763, 31.813635, 27.388191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.607296, 31.829021, 27.458517>,  <42.371216, 31.838253, 27.500711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.607296, 31.829021, 27.458517>,  <43.000763, 31.813635, 27.388191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607296, 31.829021, 27.458517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179906, 0.236794, 0.954758,
		-0.004904, 0.970798, -0.239848,
		-0.983672, 0.038468, 0.175813,
		42.312195, 31.840563, 27.511261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961357, 32.355385, 27.859489>,  <43.000763, 31.813635, 27.388191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961357, 32.355385, 27.859489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.618301, 32.159859, 27.923378>,  <42.412468, 32.042542, 27.961712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.618301, 32.159859, 27.923378>,  <42.961357, 32.355385, 27.859489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618301, 32.159859, 27.923378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047788, 0.233489, 0.971185,
		-0.512026, 0.840559, -0.176889,
		-0.857639, -0.488819, 0.159721,
		42.361008, 32.013214, 27.971294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690220, 32.767761, 28.302479>,  <42.961357, 32.355385, 27.859489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690220, 32.767761, 28.302479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.472725, 32.434952, 28.346468>,  <42.342228, 32.235268, 28.372862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.472725, 32.434952, 28.346468>,  <42.690220, 32.767761, 28.302479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472725, 32.434952, 28.346468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179483, 0.243285, 0.953204,
		-0.819842, 0.498550, -0.281616,
		-0.543733, -0.832022, 0.109974,
		42.309605, 32.185345, 28.379459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134743, 32.964348, 28.695066>,  <42.690220, 32.767761, 28.302479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134743, 32.964348, 28.695066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.168644, 32.568501, 28.741488>,  <42.188984, 32.330990, 28.769341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.168644, 32.568501, 28.741488>,  <42.134743, 32.964348, 28.695066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168644, 32.568501, 28.741488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129270, 0.104564, 0.986081,
		-0.987980, -0.098580, -0.119066,
		0.084757, -0.989620, 0.116051,
		42.194073, 32.271614, 28.776302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638992, 32.832901, 29.112228>,  <42.134743, 32.964348, 28.695066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638992, 32.832901, 29.112228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.860420, 32.505272, 29.172472>,  <41.993279, 32.308697, 29.208618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.860420, 32.505272, 29.172472>,  <41.638992, 32.832901, 29.112228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860420, 32.505272, 29.172472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287371, -0.018131, 0.957648,
		-0.781650, -0.573406, -0.245414,
		0.553571, -0.819071, 0.150608,
		42.026493, 32.259552, 29.217655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152164, 32.512798, 29.458372>,  <41.638992, 32.832901, 29.112228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152164, 32.512798, 29.458372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.525517, 32.383621, 29.521000>,  <41.749527, 32.306114, 29.558577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.525517, 32.383621, 29.521000>,  <41.152164, 32.512798, 29.458372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525517, 32.383621, 29.521000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132730, 0.094718, 0.986616,
		-0.333452, -0.941666, 0.045543,
		0.933377, -0.322944, 0.156572,
		41.805531, 32.286739, 29.567972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152687, 32.157520, 30.055552>,  <41.152164, 32.512798, 29.458372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152687, 32.157520, 30.055552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.541180, 32.246212, 30.020788>,  <41.774273, 32.299427, 29.999929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.541180, 32.246212, 30.020788>,  <41.152687, 32.157520, 30.055552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541180, 32.246212, 30.020788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007303, 0.337017, 0.941470,
		0.238044, -0.915016, 0.325700,
		0.971227, 0.221732, -0.086907,
		41.832546, 32.312733, 29.994717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478420, 31.912521, 30.646925>,  <41.152687, 32.157520, 30.055552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478420, 31.912521, 30.646925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.749001, 32.174187, 30.511587>,  <41.911350, 32.331184, 30.430384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.749001, 32.174187, 30.511587>,  <41.478420, 31.912521, 30.646925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749001, 32.174187, 30.511587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198821, 0.280145, 0.939143,
		0.709139, -0.702558, 0.059444,
		0.676455, 0.654164, -0.338345,
		41.951939, 32.370438, 30.410084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036236, 31.849955, 31.018791>,  <41.478420, 31.912521, 30.646925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036236, 31.849955, 31.018791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.120995, 32.215397, 30.879984>,  <42.171852, 32.434662, 30.796700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.120995, 32.215397, 30.879984>,  <42.036236, 31.849955, 31.018791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120995, 32.215397, 30.879984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186748, 0.310686, 0.931987,
		0.959283, -0.262293, -0.104780,
		0.211900, 0.913607, -0.347019,
		42.184563, 32.489479, 30.775879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634701, 32.040447, 31.382366>,  <42.036236, 31.849955, 31.018791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634701, 32.040447, 31.382366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.480610, 32.381981, 31.242329>,  <42.388157, 32.586903, 31.158306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.480610, 32.381981, 31.242329>,  <42.634701, 32.040447, 31.382366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480610, 32.381981, 31.242329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107381, 0.418268, 0.901954,
		0.916553, 0.309863, -0.252814,
		-0.385226, 0.853836, -0.350092,
		42.365044, 32.638130, 31.137300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.034077, 35.628769, 25.338718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682060, 35.518665, 25.493511>,  <42.470848, 35.452602, 25.586386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682060, 35.518665, 25.493511>,  <43.034077, 35.628769, 25.338718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682060, 35.518665, 25.493511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296955, -0.316943, -0.900758,
		0.370594, -0.907623, 0.197184,
		-0.880044, -0.275261, 0.386981,
		42.418049, 35.436089, 25.609606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894577, 35.005852, 25.023739>,  <43.034077, 35.628769, 25.338718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894577, 35.005852, 25.023739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.538124, 35.147743, 25.136908>,  <42.324253, 35.232880, 25.204809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.538124, 35.147743, 25.136908>,  <42.894577, 35.005852, 25.023739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538124, 35.147743, 25.136908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389222, -0.277154, -0.878460,
		-0.233204, -0.892946, 0.385051,
		-0.891135, 0.354731, 0.282921,
		42.270782, 35.254162, 25.221785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523075, 34.519871, 24.754652>,  <42.894577, 35.005852, 25.023739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523075, 34.519871, 24.754652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.281960, 34.816227, 24.873129>,  <42.137291, 34.994041, 24.944216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.281960, 34.816227, 24.873129>,  <42.523075, 34.519871, 24.754652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281960, 34.816227, 24.873129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563918, -0.132963, -0.815056,
		-0.564481, -0.658337, 0.497949,
		-0.602791, 0.740886, 0.296193,
		42.101124, 35.038494, 24.961987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868649, 34.245274, 24.748167>,  <42.523075, 34.519871, 24.754652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868649, 34.245274, 24.748167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.884930, 34.640079, 24.686024>,  <41.894699, 34.876965, 24.648737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.884930, 34.640079, 24.686024>,  <41.868649, 34.245274, 24.748167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884930, 34.640079, 24.686024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434569, -0.122523, -0.892265,
		-0.899718, 0.103834, 0.423941,
		0.040705, 0.987019, -0.155359,
		41.897141, 34.936184, 24.639416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369133, 34.339268, 24.239611>,  <41.868649, 34.245274, 24.748167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369133, 34.339268, 24.239611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.577469, 34.680378, 24.224150>,  <41.702469, 34.885044, 24.214872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.577469, 34.680378, 24.224150>,  <41.369133, 34.339268, 24.239611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577469, 34.680378, 24.224150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271900, 0.122802, -0.954458,
		-0.809195, 0.507629, 0.295831,
		0.520840, 0.852779, -0.038653,
		41.733719, 34.936211, 24.212553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934616, 34.826424, 23.902239>,  <41.369133, 34.339268, 24.239611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934616, 34.826424, 23.902239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.315414, 34.943161, 23.865290>,  <41.543892, 35.013203, 23.843121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.315414, 34.943161, 23.865290>,  <40.934616, 34.826424, 23.902239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315414, 34.943161, 23.865290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067109, -0.095438, -0.993171,
		-0.298670, 0.951691, -0.071271,
		0.951994, 0.291848, -0.092372,
		41.601013, 35.030716, 23.837578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909584, 35.409641, 23.354469>,  <40.934616, 34.826424, 23.902239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909584, 35.409641, 23.354469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.277889, 35.257000, 23.386904>,  <41.498871, 35.165417, 23.406364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.277889, 35.257000, 23.386904>,  <40.909584, 35.409641, 23.354469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277889, 35.257000, 23.386904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001457, -0.204488, -0.978868,
		0.390119, 0.901424, -0.187729,
		0.920763, -0.381601, 0.081088,
		41.554119, 35.142521, 23.411230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228264, 35.669338, 22.694763>,  <40.909584, 35.409641, 23.354469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228264, 35.669338, 22.694763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453598, 35.369984, 22.834805>,  <41.588799, 35.190372, 22.918829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453598, 35.369984, 22.834805>,  <41.228264, 35.669338, 22.694763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453598, 35.369984, 22.834805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152073, -0.322579, -0.934247,
		0.812112, 0.579536, -0.067911,
		0.563336, -0.748386, 0.350102,
		41.622601, 35.145470, 22.939835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943981, 35.748737, 22.307930>,  <41.228264, 35.669338, 22.694763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943981, 35.748737, 22.307930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893871, 35.376060, 22.444317>,  <41.863804, 35.152454, 22.526148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893871, 35.376060, 22.444317>,  <41.943981, 35.748737, 22.307930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893871, 35.376060, 22.444317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052552, -0.349422, -0.935491,
		0.990729, -0.099277, 0.092737,
		-0.125277, -0.931691, 0.340965,
		41.856289, 35.096554, 22.546606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504902, 35.407135, 22.093435>,  <41.943981, 35.748737, 22.307930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504902, 35.407135, 22.093435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.203831, 35.145889, 22.126705>,  <42.023190, 34.989143, 22.146667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.203831, 35.145889, 22.126705>,  <42.504902, 35.407135, 22.093435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203831, 35.145889, 22.126705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139583, -0.281754, -0.949279,
		0.643421, -0.702893, 0.303234,
		-0.752679, -0.653113, 0.083174,
		41.978027, 34.949955, 22.151657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735378, 34.863644, 21.736803>,  <42.504902, 35.407135, 22.093435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735378, 34.863644, 21.736803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353439, 34.759834, 21.794653>,  <42.124275, 34.697548, 21.829363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353439, 34.759834, 21.794653>,  <42.735378, 34.863644, 21.736803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353439, 34.759834, 21.794653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029587, -0.401307, -0.915466,
		0.295621, -0.878409, 0.375508,
		-0.954847, -0.259521, 0.144624,
		42.066986, 34.681976, 21.838039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615273, 34.142937, 21.607357>,  <42.735378, 34.863644, 21.736803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615273, 34.142937, 21.607357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244709, 34.288673, 21.569370>,  <42.022369, 34.376114, 21.546577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244709, 34.288673, 21.569370>,  <42.615273, 34.142937, 21.607357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244709, 34.288673, 21.569370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059759, -0.391317, -0.918314,
		-0.371730, -0.845065, 0.384294,
		-0.926415, 0.364330, -0.094964,
		41.966785, 34.397976, 21.540880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354622, 33.492100, 21.586485>,  <42.615273, 34.142937, 21.607357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354622, 33.492100, 21.586485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.184971, 33.745792, 21.327917>,  <42.083179, 33.898006, 21.172775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.184971, 33.745792, 21.327917>,  <42.354622, 33.492100, 21.586485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184971, 33.745792, 21.327917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106792, -0.673796, -0.731160,
		-0.899282, -0.379141, 0.218047,
		-0.424132, 0.634233, -0.646421,
		42.057732, 33.936062, 21.133991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668774, 33.254517, 21.290365>,  <42.354622, 33.492100, 21.586485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668774, 33.254517, 21.290365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.913418, 33.435879, 21.031025>,  <42.060204, 33.544697, 20.875422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.913418, 33.435879, 21.031025>,  <41.668774, 33.254517, 21.290365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913418, 33.435879, 21.031025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004148, -0.817645, -0.575708,
		-0.791148, 0.354798, -0.498200,
		0.611611, 0.453404, -0.648350,
		42.096901, 33.571899, 20.836519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939613, 33.569523, 21.092062>,  <41.668774, 33.254517, 21.290365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939613, 33.569523, 21.092062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.680943, 33.279636, 20.996912>,  <40.525738, 33.105705, 20.939821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.680943, 33.279636, 20.996912>,  <40.939613, 33.569523, 21.092062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680943, 33.279636, 20.996912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010123, -0.303679, 0.952720,
		-0.762694, 0.618513, 0.189047,
		-0.646680, -0.724721, -0.237876,
		40.486938, 33.062222, 20.925549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238903, 33.645798, 21.461033>,  <40.939613, 33.569523, 21.092062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238903, 33.645798, 21.461033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278496, 33.262730, 21.352901>,  <40.302250, 33.032890, 21.288023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278496, 33.262730, 21.352901>,  <40.238903, 33.645798, 21.461033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278496, 33.262730, 21.352901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175342, -0.284195, 0.942596,
		-0.979520, -0.045895, -0.196049,
		0.098977, -0.957667, -0.270327,
		40.308189, 32.975430, 21.271803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754211, 33.303734, 21.928499>,  <40.238903, 33.645798, 21.461033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754211, 33.303734, 21.928499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.002792, 33.022652, 21.789930>,  <40.151939, 32.854004, 21.706789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.002792, 33.022652, 21.789930>,  <39.754211, 33.303734, 21.928499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002792, 33.022652, 21.789930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011979, -0.433597, 0.901027,
		-0.783364, -0.564092, -0.261040,
		0.621448, -0.702705, -0.346421,
		40.189228, 32.811840, 21.686005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571400, 32.685627, 22.363684>,  <39.754211, 33.303734, 21.928499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571400, 32.685627, 22.363684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.916801, 32.574432, 22.195356>,  <40.124043, 32.507717, 22.094360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.916801, 32.574432, 22.195356>,  <39.571400, 32.685627, 22.363684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916801, 32.574432, 22.195356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358625, -0.248237, 0.899870,
		-0.354616, -0.927955, -0.114660,
		0.863502, -0.277989, -0.420817,
		40.175854, 32.491035, 22.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768475, 31.936291, 22.460020>,  <39.571400, 32.685627, 22.363684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768475, 31.936291, 22.460020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123169, 32.118828, 22.430475>,  <40.335983, 32.228348, 22.412748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.123169, 32.118828, 22.430475>,  <39.768475, 31.936291, 22.460020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123169, 32.118828, 22.430475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339812, -0.535114, 0.773422,
		0.313418, -0.710919, -0.629573,
		0.886734, 0.456341, -0.073864,
		40.389191, 32.255730, 22.408316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314354, 31.413218, 22.656181>,  <39.768475, 31.936291, 22.460020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314354, 31.413218, 22.656181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464741, 31.782009, 22.693272>,  <40.554974, 32.003284, 22.715525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.464741, 31.782009, 22.693272>,  <40.314354, 31.413218, 22.656181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464741, 31.782009, 22.693272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333521, -0.228003, 0.914756,
		0.864529, -0.312996, -0.393222,
		0.375971, 0.921981, 0.092724,
		40.577534, 32.058601, 22.721088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022400, 31.228827, 22.921473>,  <40.314354, 31.413218, 22.656181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022400, 31.228827, 22.921473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029202, 31.621300, 22.998400>,  <41.033283, 31.856785, 23.044556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029202, 31.621300, 22.998400>,  <41.022400, 31.228827, 22.921473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029202, 31.621300, 22.998400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479870, -0.176753, 0.859350,
		0.877175, 0.077675, -0.473847,
		0.017004, 0.981185, 0.192318,
		41.034302, 31.915655, 23.056095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691902, 31.414997, 23.034885>,  <41.022400, 31.228827, 22.921473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691902, 31.414997, 23.034885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.458149, 31.687923, 23.210585>,  <41.317898, 31.851679, 23.316004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.458149, 31.687923, 23.210585>,  <41.691902, 31.414997, 23.034885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458149, 31.687923, 23.210585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479771, -0.146044, 0.865153,
		0.654458, 0.716321, -0.242010,
		-0.584384, 0.682316, 0.439250,
		41.282833, 31.892618, 23.342360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091618, 31.774700, 23.508377>,  <41.691902, 31.414997, 23.034885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091618, 31.774700, 23.508377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724857, 31.876167, 23.631628>,  <41.504799, 31.937048, 23.705578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.724857, 31.876167, 23.631628>,  <42.091618, 31.774700, 23.508377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724857, 31.876167, 23.631628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333412, 0.062485, 0.940708,
		0.219373, 0.965271, -0.141868,
		-0.916904, 0.253667, 0.308125,
		41.449787, 31.952267, 23.724066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245739, 32.257912, 24.131014>,  <42.091618, 31.774700, 23.508377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245739, 32.257912, 24.131014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.875946, 32.105579, 24.137909>,  <41.654068, 32.014179, 24.142046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.875946, 32.105579, 24.137909>,  <42.245739, 32.257912, 24.131014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875946, 32.105579, 24.137909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001836, 0.040766, 0.999167,
		-0.381212, 0.923748, -0.036988,
		-0.924486, -0.380826, 0.017237,
		41.598598, 31.991331, 24.143080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870796, 32.640213, 24.568766>,  <42.245739, 32.257912, 24.131014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870796, 32.640213, 24.568766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671219, 32.293560, 24.568853>,  <41.551472, 32.085567, 24.568907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671219, 32.293560, 24.568853>,  <41.870796, 32.640213, 24.568766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671219, 32.293560, 24.568853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115148, 0.066546, 0.991117,
		-0.858953, 0.494482, -0.132994,
		-0.498940, -0.866637, 0.000221,
		41.521538, 32.033569, 24.568920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356930, 32.814217, 24.957592>,  <41.870796, 32.640213, 24.568766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356930, 32.814217, 24.957592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.355030, 32.414391, 24.969297>,  <41.353889, 32.174496, 24.976320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.355030, 32.414391, 24.969297>,  <41.356930, 32.814217, 24.957592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355030, 32.414391, 24.969297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008853, 0.029306, 0.999532,
		-0.999950, 0.004486, -0.008988,
		-0.004747, -0.999561, 0.029264,
		41.353607, 32.114521, 24.978077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969707, 32.645977, 25.600956>,  <41.356930, 32.814217, 24.957592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969707, 32.645977, 25.600956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.186272, 32.326820, 25.494944>,  <41.316212, 32.135326, 25.431335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.186272, 32.326820, 25.494944>,  <40.969707, 32.645977, 25.600956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186272, 32.326820, 25.494944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201808, -0.182682, 0.962237,
		-0.816177, -0.574454, 0.062114,
		0.541414, -0.797891, -0.265031,
		41.348698, 32.087452, 25.415434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693920, 32.088612, 25.950426>,  <40.969707, 32.645977, 25.600956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693920, 32.088612, 25.950426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.064503, 31.965952, 25.863111>,  <41.286850, 31.892357, 25.810722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.064503, 31.965952, 25.863111>,  <40.693920, 32.088612, 25.950426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064503, 31.965952, 25.863111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148473, -0.235190, 0.960542,
		-0.345890, -0.922307, -0.172363,
		0.926453, -0.306650, -0.218288,
		41.342438, 31.873957, 25.797625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102318, 31.628965, 25.645721>,  <40.693920, 32.088612, 25.950426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102318, 31.628965, 25.645721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752052, 31.449989, 25.718390>,  <39.541893, 31.342604, 25.761990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752052, 31.449989, 25.718390>,  <40.102318, 31.628965, 25.645721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752052, 31.449989, 25.718390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146713, -0.111921, -0.982827,
		0.460087, -0.887284, 0.032360,
		-0.875668, -0.447439, 0.181670,
		39.489353, 31.315758, 25.772890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138821, 31.032600, 25.195930>,  <40.102318, 31.628965, 25.645721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138821, 31.032600, 25.195930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.762821, 31.123142, 25.298044>,  <39.537224, 31.177467, 25.359312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.762821, 31.123142, 25.298044>,  <40.138821, 31.032600, 25.195930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762821, 31.123142, 25.298044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282670, -0.097680, -0.954231,
		-0.191059, -0.969135, 0.155803,
		-0.939997, 0.226356, 0.255283,
		39.480824, 31.191050, 25.374628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706425, 30.566532, 24.885180>,  <40.138821, 31.032600, 25.195930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706425, 30.566532, 24.885180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417896, 30.824226, 24.986889>,  <39.244778, 30.978842, 25.047915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417896, 30.824226, 24.986889>,  <39.706425, 30.566532, 24.885180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417896, 30.824226, 24.986889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499395, -0.229407, -0.835450,
		-0.479894, -0.729612, 0.487204,
		-0.721323, 0.644235, 0.254273,
		39.201500, 31.017496, 25.063171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957367, 30.165380, 24.859875>,  <39.706425, 30.566532, 24.885180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957367, 30.165380, 24.859875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959736, 30.558069, 24.783785>,  <38.961159, 30.793682, 24.738131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.959736, 30.558069, 24.783785>,  <38.957367, 30.165380, 24.859875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959736, 30.558069, 24.783785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458630, -0.166375, -0.872914,
		-0.888608, 0.092412, 0.449262,
		0.005922, 0.981723, -0.190225,
		38.961514, 30.852587, 24.726717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254528, 30.355198, 24.616753>,  <38.957367, 30.165380, 24.859875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254528, 30.355198, 24.616753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470806, 30.667393, 24.491222>,  <38.600574, 30.854710, 24.415905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470806, 30.667393, 24.491222>,  <38.254528, 30.355198, 24.616753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470806, 30.667393, 24.491222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396951, -0.092191, -0.913198,
		-0.741673, 0.618335, 0.259969,
		0.540695, 0.780489, -0.313824,
		38.633015, 30.901539, 24.397076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797382, 30.816259, 24.365194>,  <38.254528, 30.355198, 24.616753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797382, 30.816259, 24.365194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138554, 30.924603, 24.186691>,  <38.343258, 30.989609, 24.079590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138554, 30.924603, 24.186691>,  <37.797382, 30.816259, 24.365194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138554, 30.924603, 24.186691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465603, 0.008159, -0.884956,
		-0.236057, 0.962585, 0.133071,
		0.852931, 0.270858, -0.446256,
		38.394432, 31.005859, 24.052814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532761, 31.215782, 23.802364>,  <37.797382, 30.816259, 24.365194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532761, 31.215782, 23.802364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.910873, 31.133001, 23.701485>,  <38.137741, 31.083332, 23.640957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.910873, 31.133001, 23.701485>,  <37.532761, 31.215782, 23.802364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910873, 31.133001, 23.701485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279371, -0.114273, -0.953359,
		0.168480, 0.971654, -0.165837,
		0.945286, -0.206952, -0.252199,
		38.194458, 31.070915, 23.625826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150166, 31.762239, 24.131773>,  <37.532761, 31.215782, 23.802364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150166, 31.762239, 24.131773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811237, 31.972454, 24.101149>,  <36.607880, 32.098583, 24.082773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811237, 31.972454, 24.101149>,  <37.150166, 31.762239, 24.131773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811237, 31.972454, 24.101149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247730, -0.263597, 0.932280,
		0.469765, 0.808906, 0.353542,
		-0.847320, 0.525535, -0.076561,
		36.557041, 32.130116, 24.078180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226402, 32.180798, 24.663767>,  <37.150166, 31.762239, 24.131773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226402, 32.180798, 24.663767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836586, 32.193916, 24.575054>,  <36.602695, 32.201790, 24.521826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.836586, 32.193916, 24.575054>,  <37.226402, 32.180798, 24.663767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836586, 32.193916, 24.575054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224064, -0.108833, 0.968478,
		0.007630, 0.993519, 0.113413,
		-0.974544, 0.032801, -0.221782,
		36.544224, 32.203758, 24.508520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922504, 32.681549, 25.165894>,  <37.226402, 32.180798, 24.663767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922504, 32.681549, 25.165894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630974, 32.441353, 25.034309>,  <36.456055, 32.297234, 24.955359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.630974, 32.441353, 25.034309>,  <36.922504, 32.681549, 25.165894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630974, 32.441353, 25.034309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364671, -0.066195, 0.928781,
		-0.579501, 0.796886, -0.170737,
		-0.728831, -0.600492, -0.328962,
		36.412323, 32.261204, 24.935621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448933, 32.967968, 25.479887>,  <36.922504, 32.681549, 25.165894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448933, 32.967968, 25.479887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285027, 32.617558, 25.378172>,  <36.186684, 32.407310, 25.317142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.285027, 32.617558, 25.378172>,  <36.448933, 32.967968, 25.479887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285027, 32.617558, 25.378172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356634, -0.102727, 0.928579,
		-0.839586, 0.471188, -0.270328,
		-0.409766, -0.876030, -0.254290,
		36.162098, 32.354748, 25.301886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736248, 33.014904, 25.620741>,  <36.448933, 32.967968, 25.479887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736248, 33.014904, 25.620741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.834984, 32.627895, 25.598936>,  <35.894226, 32.395691, 25.585854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.834984, 32.627895, 25.598936>,  <35.736248, 33.014904, 25.620741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834984, 32.627895, 25.598936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394890, -0.151796, 0.906102,
		-0.884949, -0.202132, -0.419534,
		0.246836, -0.967523, -0.054512,
		35.909035, 32.337639, 25.582582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116901, 32.715019, 25.717653>,  <35.736248, 33.014904, 25.620741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116901, 32.715019, 25.717653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385315, 32.444519, 25.839237>,  <35.546364, 32.282219, 25.912188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385315, 32.444519, 25.839237>,  <35.116901, 32.715019, 25.717653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385315, 32.444519, 25.839237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418517, -0.007080, 0.908181,
		-0.612010, -0.736634, -0.287775,
		0.671035, -0.676255, 0.303961,
		35.586624, 32.241642, 25.930426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820038, 32.069279, 26.191893>,  <35.116901, 32.715019, 25.717653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820038, 32.069279, 26.191893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213917, 32.075859, 26.261293>,  <35.450245, 32.079807, 26.302933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.213917, 32.075859, 26.261293>,  <34.820038, 32.069279, 26.191893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213917, 32.075859, 26.261293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172228, -0.060408, 0.983203,
		0.026662, -0.998038, -0.056649,
		0.984696, 0.016458, 0.173501,
		35.509327, 32.080795, 26.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.495575, 36.392101, 20.901926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779377, 36.207035, 21.114544>,  <39.949657, 36.095997, 21.242115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779377, 36.207035, 21.114544>,  <39.495575, 36.392101, 20.901926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779377, 36.207035, 21.114544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329271, 0.449227, 0.830527,
		-0.623041, -0.764287, 0.166387,
		0.709507, -0.462667, 0.531545,
		39.992229, 36.068233, 21.274008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141724, 36.113617, 21.520901>,  <39.495575, 36.392101, 20.901926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141724, 36.113617, 21.520901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.526123, 36.151043, 21.624994>,  <39.756763, 36.173500, 21.687450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.526123, 36.151043, 21.624994>,  <39.141724, 36.113617, 21.520901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526123, 36.151043, 21.624994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273714, 0.187496, 0.943359,
		0.039473, -0.977799, 0.205794,
		0.961001, 0.093565, 0.260236,
		39.814423, 36.179111, 21.703066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048481, 35.878304, 22.117552>,  <39.141724, 36.113617, 21.520901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048481, 35.878304, 22.117552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401962, 36.065395, 22.110687>,  <39.614052, 36.177650, 22.106569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401962, 36.065395, 22.110687>,  <39.048481, 35.878304, 22.117552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401962, 36.065395, 22.110687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104583, 0.233066, 0.966821,
		0.456206, -0.852592, 0.254878,
		0.883707, 0.467726, -0.017160,
		39.667076, 36.205711, 22.105539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370399, 35.542419, 22.620026>,  <39.048481, 35.878304, 22.117552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370399, 35.542419, 22.620026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548927, 35.896442, 22.567141>,  <39.656044, 36.108856, 22.535410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548927, 35.896442, 22.567141>,  <39.370399, 35.542419, 22.620026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548927, 35.896442, 22.567141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065827, 0.114875, 0.991196,
		0.892450, -0.451092, -0.006989,
		0.446318, 0.885053, -0.132215,
		39.682823, 36.161957, 22.527475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015533, 35.543808, 23.021082>,  <39.370399, 35.542419, 22.620026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015533, 35.543808, 23.021082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.923317, 35.931259, 22.983978>,  <39.867989, 36.163731, 22.961716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.923317, 35.931259, 22.983978>,  <40.015533, 35.543808, 23.021082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923317, 35.931259, 22.983978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069841, 0.111551, 0.991302,
		0.970554, 0.222055, -0.093367,
		-0.230539, 0.968632, -0.092758,
		39.854156, 36.221848, 22.956150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444965, 35.961235, 23.521559>,  <40.015533, 35.543808, 23.021082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444965, 35.961235, 23.521559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.117538, 36.178150, 23.445789>,  <39.921082, 36.308300, 23.400328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.117538, 36.178150, 23.445789>,  <40.444965, 35.961235, 23.521559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117538, 36.178150, 23.445789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001765, 0.327390, 0.944888,
		0.574413, 0.773785, -0.267032,
		-0.818563, 0.542285, -0.189423,
		39.871971, 36.340836, 23.388962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576492, 36.525501, 23.985491>,  <40.444965, 35.961235, 23.521559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576492, 36.525501, 23.985491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191734, 36.571537, 23.886282>,  <39.960880, 36.599159, 23.826757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.191734, 36.571537, 23.886282>,  <40.576492, 36.525501, 23.985491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191734, 36.571537, 23.886282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204741, 0.298041, 0.932337,
		0.181225, 0.947589, -0.263119,
		-0.961893, 0.115092, -0.248023,
		39.903168, 36.606064, 23.811874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369999, 37.143005, 24.230410>,  <40.576492, 36.525501, 23.985491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369999, 37.143005, 24.230410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030907, 36.931461, 24.214113>,  <39.827450, 36.804535, 24.204334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030907, 36.931461, 24.214113>,  <40.369999, 37.143005, 24.230410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030907, 36.931461, 24.214113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266596, 0.358414, 0.894687,
		-0.458560, 0.769317, -0.444830,
		-0.847732, -0.528858, -0.040743,
		39.776588, 36.772804, 24.201891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846355, 37.616013, 24.652557>,  <40.369999, 37.143005, 24.230410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846355, 37.616013, 24.652557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.715576, 37.239128, 24.623346>,  <39.637108, 37.012997, 24.605820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.715576, 37.239128, 24.623346>,  <39.846355, 37.616013, 24.652557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715576, 37.239128, 24.623346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402147, 0.068785, 0.912987,
		-0.855207, 0.327872, -0.401398,
		-0.326953, -0.942215, -0.073028,
		39.617489, 36.956463, 24.601439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194866, 37.591312, 24.800617>,  <39.846355, 37.616013, 24.652557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194866, 37.591312, 24.800617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306667, 37.218754, 24.893888>,  <39.373749, 36.995216, 24.949852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306667, 37.218754, 24.893888>,  <39.194866, 37.591312, 24.800617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306667, 37.218754, 24.893888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544475, 0.046278, 0.837499,
		-0.790838, -0.361043, -0.494190,
		0.279503, -0.931400, 0.233177,
		39.390518, 36.939335, 24.963842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525223, 37.349670, 25.228331>,  <39.194866, 37.591312, 24.800617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525223, 37.349670, 25.228331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.768322, 37.037319, 25.286121>,  <38.914181, 36.849907, 25.320795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.768322, 37.037319, 25.286121>,  <38.525223, 37.349670, 25.228331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768322, 37.037319, 25.286121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256039, -0.020461, 0.966450,
		-0.751723, -0.624349, -0.212371,
		0.607748, -0.780877, 0.144477,
		38.950645, 36.803055, 25.329464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157345, 36.798561, 25.569271>,  <38.525223, 37.349670, 25.228331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157345, 36.798561, 25.569271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545429, 36.755390, 25.656021>,  <38.778282, 36.729488, 25.708071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.545429, 36.755390, 25.656021>,  <38.157345, 36.798561, 25.569271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545429, 36.755390, 25.656021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202846, 0.127470, 0.970879,
		-0.132434, -0.985952, 0.101779,
		0.970214, -0.107931, 0.216877,
		38.836494, 36.723011, 25.721085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907169, 36.039268, 25.614393>,  <38.157345, 36.798561, 25.569271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907169, 36.039268, 25.614393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554432, 35.908550, 25.750370>,  <37.342789, 35.830120, 25.831957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554432, 35.908550, 25.750370>,  <37.907169, 36.039268, 25.614393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554432, 35.908550, 25.750370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182291, -0.428609, -0.884909,
		0.434889, -0.842317, 0.318393,
		-0.881840, -0.326797, 0.339944,
		37.289879, 35.810513, 25.852354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830914, 35.257832, 25.528040>,  <37.907169, 36.039268, 25.614393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830914, 35.257832, 25.528040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.484619, 35.457611, 25.515036>,  <37.276844, 35.577480, 25.507233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.484619, 35.457611, 25.515036>,  <37.830914, 35.257832, 25.528040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484619, 35.457611, 25.515036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169359, -0.353447, -0.919996,
		-0.470982, -0.790964, 0.390577,
		-0.865732, 0.499450, -0.032510,
		37.224899, 35.607445, 25.505283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362320, 34.829777, 25.222343>,  <37.830914, 35.257832, 25.528040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362320, 34.829777, 25.222343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.133675, 35.155571, 25.182589>,  <36.996487, 35.351048, 25.158735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.133675, 35.155571, 25.182589>,  <37.362320, 34.829777, 25.222343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133675, 35.155571, 25.182589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375765, -0.367524, -0.850721,
		-0.729424, -0.448938, 0.516135,
		-0.571613, 0.814482, -0.099385,
		36.962189, 35.399914, 25.152773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655518, 34.607910, 25.043585>,  <37.362320, 34.829777, 25.222343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655518, 34.607910, 25.043585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.682991, 34.987259, 24.919733>,  <36.699474, 35.214867, 24.845423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.682991, 34.987259, 24.919733>,  <36.655518, 34.607910, 25.043585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682991, 34.987259, 24.919733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478868, -0.240929, -0.844179,
		-0.875196, 0.206255, 0.437597,
		0.068686, 0.948373, -0.309629,
		36.703598, 35.271770, 24.826845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939926, 34.792938, 24.691408>,  <36.655518, 34.607910, 25.043585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939926, 34.792938, 24.691408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163616, 35.103676, 24.575630>,  <36.297829, 35.290119, 24.506163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163616, 35.103676, 24.575630>,  <35.939926, 34.792938, 24.691408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163616, 35.103676, 24.575630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339530, -0.103897, -0.934839,
		-0.756301, 0.621058, 0.205662,
		0.559222, 0.776848, -0.289445,
		36.331383, 35.336731, 24.488796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493835, 35.186054, 24.246828>,  <35.939926, 34.792938, 24.691408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493835, 35.186054, 24.246828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872078, 35.274063, 24.150982>,  <36.099022, 35.326870, 24.093473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872078, 35.274063, 24.150982>,  <35.493835, 35.186054, 24.246828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872078, 35.274063, 24.150982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262299, 0.079991, -0.961666,
		-0.192421, 0.972209, 0.133352,
		0.945607, 0.220023, -0.239617,
		36.155762, 35.340069, 24.079096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327267, 35.663513, 23.696344>,  <35.493835, 35.186054, 24.246828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327267, 35.663513, 23.696344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710938, 35.553516, 23.669928>,  <35.941139, 35.487518, 23.654078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710938, 35.553516, 23.669928>,  <35.327267, 35.663513, 23.696344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710938, 35.553516, 23.669928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064454, 0.014811, -0.997811,
		0.275370, 0.961332, -0.003518,
		0.959175, -0.274994, -0.066040,
		35.998692, 35.471020, 23.650116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615273, 36.165520, 23.331175>,  <35.327267, 35.663513, 23.696344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615273, 36.165520, 23.331175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836926, 35.833862, 23.301619>,  <35.969917, 35.634869, 23.283884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836926, 35.833862, 23.301619>,  <35.615273, 36.165520, 23.331175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836926, 35.833862, 23.301619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058591, 0.049698, -0.997044,
		0.830361, 0.556828, -0.021041,
		0.554136, -0.829140, -0.073892,
		36.003166, 35.585121, 23.279451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932755, 36.373810, 22.744999>,  <35.615273, 36.165520, 23.331175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932755, 36.373810, 22.744999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.008385, 35.983639, 22.790222>,  <36.053764, 35.749535, 22.817356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.008385, 35.983639, 22.790222>,  <35.932755, 36.373810, 22.744999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008385, 35.983639, 22.790222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053661, -0.125228, -0.990676,
		0.980495, 0.181246, -0.076020,
		0.189075, -0.975432, 0.113060,
		36.065105, 35.691010, 22.824141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609554, 36.214081, 22.332899>,  <35.932755, 36.373810, 22.744999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609554, 36.214081, 22.332899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.377251, 35.892582, 22.384604>,  <36.237869, 35.699684, 22.415627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.377251, 35.892582, 22.384604>,  <36.609554, 36.214081, 22.332899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377251, 35.892582, 22.384604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024045, -0.141778, -0.989606,
		0.813720, -0.577831, 0.063013,
		-0.580759, -0.803747, 0.129262,
		36.203022, 35.651459, 22.423382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767689, 35.663589, 21.770489>,  <36.609554, 36.214081, 22.332899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767689, 35.663589, 21.770489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.411667, 35.531330, 21.896011>,  <36.198055, 35.451973, 21.971325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.411667, 35.531330, 21.896011>,  <36.767689, 35.663589, 21.770489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411667, 35.531330, 21.896011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211248, -0.310836, -0.926690,
		0.403953, -0.891095, 0.206812,
		-0.890054, -0.330651, 0.313805,
		36.144650, 35.432137, 21.990152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748402, 34.992622, 21.566612>,  <36.767689, 35.663589, 21.770489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748402, 34.992622, 21.566612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.375862, 35.130577, 21.613335>,  <36.152340, 35.213348, 21.641367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.375862, 35.130577, 21.613335>,  <36.748402, 34.992622, 21.566612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375862, 35.130577, 21.613335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217638, -0.270077, -0.937919,
		-0.291932, -0.898950, 0.326596,
		-0.931348, 0.344888, 0.116802,
		36.096458, 35.234043, 21.648376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316597, 34.504574, 21.255718>,  <36.748402, 34.992622, 21.566612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316597, 34.504574, 21.255718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115433, 34.850296, 21.252689>,  <35.994732, 35.057728, 21.250872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115433, 34.850296, 21.252689>,  <36.316597, 34.504574, 21.255718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115433, 34.850296, 21.252689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258241, -0.158615, -0.952970,
		-0.824857, -0.477306, 0.302969,
		-0.502914, 0.864303, -0.007574,
		35.964558, 35.109589, 21.250418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839825, 33.980755, 21.521305>,  <36.316597, 34.504574, 21.255718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839825, 33.980755, 21.521305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.575073, 33.760006, 21.318386>,  <36.416222, 33.627556, 21.196634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.575073, 33.760006, 21.318386>,  <36.839825, 33.980755, 21.521305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575073, 33.760006, 21.318386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171649, -0.547188, 0.819220,
		-0.729695, 0.629300, 0.267443,
		-0.661877, -0.551875, -0.507299,
		36.376511, 33.594444, 21.166197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212803, 34.050220, 21.866274>,  <36.839825, 33.980755, 21.521305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212803, 34.050220, 21.866274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.269558, 33.702866, 21.676216>,  <36.303612, 33.494453, 21.562181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.269558, 33.702866, 21.676216>,  <36.212803, 34.050220, 21.866274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269558, 33.702866, 21.676216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112351, -0.491028, 0.863868,
		-0.983486, -0.069191, -0.167236,
		0.141889, -0.868392, -0.475146,
		36.312126, 33.442348, 21.533672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757645, 33.658978, 22.257345>,  <36.212803, 34.050220, 21.866274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757645, 33.658978, 22.257345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.988457, 33.391953, 22.069134>,  <36.126945, 33.231739, 21.956207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.988457, 33.391953, 22.069134>,  <35.757645, 33.658978, 22.257345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988457, 33.391953, 22.069134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065346, -0.612008, 0.788148,
		-0.814106, -0.424037, -0.396768,
		0.577029, -0.667562, -0.470530,
		36.161564, 33.191685, 21.927975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389347, 32.973377, 22.349339>,  <35.757645, 33.658978, 22.257345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389347, 32.973377, 22.349339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777512, 32.893620, 22.294859>,  <36.010410, 32.845764, 22.262171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777512, 32.893620, 22.294859>,  <35.389347, 32.973377, 22.349339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777512, 32.893620, 22.294859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024311, -0.480492, 0.876662,
		-0.240242, -0.854031, -0.461426,
		0.970409, -0.199393, -0.136197,
		36.068634, 32.833801, 22.254000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416668, 32.348404, 22.512342>,  <35.389347, 32.973377, 22.349339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416668, 32.348404, 22.512342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.807720, 32.432369, 22.507126>,  <36.042351, 32.482750, 22.503996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.807720, 32.432369, 22.507126>,  <35.416668, 32.348404, 22.512342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807720, 32.432369, 22.507126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125942, -0.534631, 0.835649,
		0.168441, -0.818600, -0.549110,
		0.977633, 0.209913, -0.013042,
		36.101009, 32.495342, 22.503214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745937, 31.725262, 22.703909>,  <35.416668, 32.348404, 22.512342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745937, 31.725262, 22.703909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.991039, 32.034504, 22.769430>,  <36.138100, 32.220051, 22.808743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.991039, 32.034504, 22.769430>,  <35.745937, 31.725262, 22.703909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991039, 32.034504, 22.769430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182909, -0.340391, 0.922322,
		0.768812, -0.535199, -0.349986,
		0.612758, 0.773108, 0.163804,
		36.174866, 32.266438, 22.818571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357994, 31.466030, 23.066320>,  <35.745937, 31.725262, 22.703909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357994, 31.466030, 23.066320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354473, 31.857904, 23.146461>,  <36.352360, 32.093029, 23.194546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354473, 31.857904, 23.146461>,  <36.357994, 31.466030, 23.066320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354473, 31.857904, 23.146461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164783, -0.196200, 0.966619,
		0.986291, 0.041523, -0.159708,
		-0.008802, 0.979684, 0.200353,
		36.351833, 32.151810, 23.206568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932697, 31.645683, 23.459698>,  <36.357994, 31.466030, 23.066320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932697, 31.645683, 23.459698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.695129, 31.952799, 23.555832>,  <36.552589, 32.137070, 23.613512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.695129, 31.952799, 23.555832>,  <36.932697, 31.645683, 23.459698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695129, 31.952799, 23.555832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193260, -0.153827, 0.969014,
		0.780969, 0.621961, -0.057023,
		-0.593917, 0.767790, 0.240334,
		36.516953, 32.183136, 23.627932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666023, 31.691618, 23.265759>,  <36.932697, 31.645683, 23.459698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666023, 31.691618, 23.265759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920326, 31.386814, 23.216516>,  <38.072906, 31.203932, 23.186972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920326, 31.386814, 23.216516>,  <37.666023, 31.691618, 23.265759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920326, 31.386814, 23.216516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260133, -0.061359, -0.963621,
		0.726734, 0.644653, -0.237234,
		0.635758, -0.762009, -0.123104,
		38.111053, 31.158211, 23.179585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095390, 31.886848, 22.668070>,  <37.666023, 31.691618, 23.265759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095390, 31.886848, 22.668070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143520, 31.491938, 22.709656>,  <38.172398, 31.254992, 22.734608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.143520, 31.491938, 22.709656>,  <38.095390, 31.886848, 22.668070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143520, 31.491938, 22.709656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048222, -0.110414, -0.992715,
		0.991563, 0.114435, -0.060894,
		0.120325, -0.987276, 0.103964,
		38.179619, 31.195755, 22.740845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664558, 31.675259, 22.168230>,  <38.095390, 31.886848, 22.668070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664558, 31.675259, 22.168230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441269, 31.357283, 22.263268>,  <38.307293, 31.166496, 22.320290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441269, 31.357283, 22.263268>,  <38.664558, 31.675259, 22.168230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441269, 31.357283, 22.263268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050020, -0.253601, -0.966015,
		0.828179, -0.551140, 0.101804,
		-0.558227, -0.794941, 0.237595,
		38.273800, 31.118801, 22.334545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895313, 31.147776, 21.775841>,  <38.664558, 31.675259, 22.168230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895313, 31.147776, 21.775841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538498, 30.996527, 21.874866>,  <38.324409, 30.905777, 21.934282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.538498, 30.996527, 21.874866>,  <38.895313, 31.147776, 21.775841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538498, 30.996527, 21.874866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136382, -0.297022, -0.945081,
		0.430889, -0.876813, 0.213387,
		-0.892040, -0.378123, 0.247565,
		38.270885, 30.883089, 21.949137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847057, 30.540709, 21.456200>,  <38.895313, 31.147776, 21.775841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847057, 30.540709, 21.456200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460808, 30.623234, 21.519457>,  <38.229057, 30.672749, 21.557411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460808, 30.623234, 21.519457>,  <38.847057, 30.540709, 21.456200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460808, 30.623234, 21.519457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224156, -0.352803, -0.908451,
		-0.131631, -0.912670, 0.386921,
		-0.965623, 0.206311, 0.158141,
		38.171120, 30.685127, 21.566898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469044, 29.941130, 21.305111>,  <38.847057, 30.540709, 21.456200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469044, 29.941130, 21.305111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.188881, 30.224810, 21.272951>,  <38.020782, 30.395018, 21.253654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.188881, 30.224810, 21.272951>,  <38.469044, 29.941130, 21.305111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188881, 30.224810, 21.272951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269075, -0.366703, -0.890577,
		-0.661080, -0.602134, 0.447670,
		-0.700408, 0.709199, -0.080401,
		37.978760, 30.437569, 21.248831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955948, 29.540049, 21.111921>,  <38.469044, 29.941130, 21.305111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955948, 29.540049, 21.111921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884048, 29.922743, 21.020403>,  <37.840908, 30.152359, 20.965492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.884048, 29.922743, 21.020403>,  <37.955948, 29.540049, 21.111921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884048, 29.922743, 21.020403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367933, -0.281092, -0.886348,
		-0.912313, -0.075139, 0.402540,
		-0.179750, 0.956734, -0.228798,
		37.830124, 30.209763, 20.951763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432873, 29.507925, 20.623182>,  <37.955948, 29.540049, 21.111921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432873, 29.507925, 20.623182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522854, 29.893789, 20.568300>,  <37.576843, 30.125307, 20.535372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522854, 29.893789, 20.568300>,  <37.432873, 29.507925, 20.623182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522854, 29.893789, 20.568300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393504, -0.038876, -0.918501,
		-0.891375, 0.260614, 0.370852,
		0.224957, 0.964660, -0.137205,
		37.590340, 30.183187, 20.527138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823547, 29.902317, 20.287945>,  <37.432873, 29.507925, 20.623182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823547, 29.902317, 20.287945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166470, 30.087000, 20.196863>,  <37.372223, 30.197809, 20.142214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.166470, 30.087000, 20.196863>,  <36.823547, 29.902317, 20.287945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166470, 30.087000, 20.196863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225521, -0.060782, -0.972340,
		-0.462776, 0.884948, 0.052015,
		0.857309, 0.461706, -0.227703,
		37.423664, 30.225512, 20.128551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.131588, 32.061180, 36.001221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191044, 32.456738, 36.001118>,  <39.226719, 32.694073, 36.001057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191044, 32.456738, 36.001118>,  <39.131588, 32.061180, 36.001221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191044, 32.456738, 36.001118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126793, -0.019316, -0.991741,
		-0.980729, 0.147379, -0.128256,
		0.148639, 0.988892, -0.000258,
		39.235634, 32.753407, 36.001041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606441, 32.507103, 35.599640>,  <39.131588, 32.061180, 36.001221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606441, 32.507103, 35.599640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984840, 32.636162, 35.587013>,  <39.211880, 32.713596, 35.579437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984840, 32.636162, 35.587013>,  <38.606441, 32.507103, 35.599640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984840, 32.636162, 35.587013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017245, -0.147319, -0.988939,
		-0.323724, 0.934986, -0.144927,
		0.945994, 0.322643, -0.031567,
		39.268639, 32.732956, 35.577541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714569, 33.171883, 35.212715>,  <38.606441, 32.507103, 35.599640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714569, 33.171883, 35.212715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.033360, 32.934422, 35.168167>,  <39.224632, 32.791943, 35.141438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.033360, 32.934422, 35.168167>,  <38.714569, 33.171883, 35.212715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033360, 32.934422, 35.168167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059524, 0.106300, -0.992551,
		0.601072, 0.797668, 0.049382,
		0.796975, -0.593655, -0.111374,
		39.272453, 32.756325, 35.134754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932964, 33.462440, 34.661201>,  <38.714569, 33.171883, 35.212715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932964, 33.462440, 34.661201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119122, 33.109074, 34.683033>,  <39.230816, 32.897053, 34.696133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119122, 33.109074, 34.683033>,  <38.932964, 33.462440, 34.661201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119122, 33.109074, 34.683033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064461, -0.095325, -0.993357,
		0.882754, 0.458784, -0.101310,
		0.465393, -0.883420, 0.054575,
		39.258739, 32.844048, 34.699406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494316, 33.520355, 34.180489>,  <38.932964, 33.462440, 34.661201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494316, 33.520355, 34.180489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458492, 33.128326, 34.251400>,  <39.436996, 32.893108, 34.293949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458492, 33.128326, 34.251400>,  <39.494316, 33.520355, 34.180489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458492, 33.128326, 34.251400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006223, -0.178544, -0.983912,
		0.995962, -0.087020, 0.022090,
		-0.089564, -0.980076, 0.177282,
		39.431622, 32.834305, 34.304585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920734, 33.163242, 33.670311>,  <39.494316, 33.520355, 34.180489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920734, 33.163242, 33.670311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.688828, 32.859421, 33.788254>,  <39.549683, 32.677128, 33.859020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.688828, 32.859421, 33.788254>,  <39.920734, 33.163242, 33.670311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688828, 32.859421, 33.788254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006865, -0.357322, -0.933956,
		0.814750, -0.543505, 0.201951,
		-0.579771, -0.759555, 0.294859,
		39.514896, 32.631554, 33.876713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268051, 32.506069, 33.490685>,  <39.920734, 33.163242, 33.670311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268051, 32.506069, 33.490685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.872990, 32.448063, 33.514412>,  <39.635952, 32.413258, 33.528648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.872990, 32.448063, 33.514412>,  <40.268051, 32.506069, 33.490685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872990, 32.448063, 33.514412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024755, -0.229439, -0.973008,
		0.154716, -0.962459, 0.223016,
		-0.987649, -0.145019, 0.059323,
		39.576694, 32.404556, 33.532207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152504, 31.847687, 33.260765>,  <40.268051, 32.506069, 33.490685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152504, 31.847687, 33.260765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805542, 32.042988, 33.222359>,  <39.597366, 32.160168, 33.199314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805542, 32.042988, 33.222359>,  <40.152504, 31.847687, 33.260765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805542, 32.042988, 33.222359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108742, -0.374280, -0.920918,
		-0.485579, -0.788366, 0.377746,
		-0.867403, 0.488255, -0.096014,
		39.545322, 32.189465, 33.193554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929554, 31.501556, 32.751919>,  <40.152504, 31.847687, 33.260765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929554, 31.501556, 32.751919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651958, 31.787317, 32.787701>,  <39.485401, 31.958775, 32.809170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651958, 31.787317, 32.787701>,  <39.929554, 31.501556, 32.751919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651958, 31.787317, 32.787701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359661, -0.236358, -0.902651,
		-0.623714, -0.658606, 0.420973,
		-0.693992, 0.714404, 0.089455,
		39.443760, 32.001640, 32.814537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313206, 31.170715, 32.568516>,  <39.929554, 31.501556, 32.751919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313206, 31.170715, 32.568516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.224182, 31.556269, 32.510006>,  <39.170769, 31.787601, 32.474899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.224182, 31.556269, 32.510006>,  <39.313206, 31.170715, 32.568516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224182, 31.556269, 32.510006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315986, -0.213258, -0.924486,
		-0.922292, -0.159528, 0.352036,
		-0.222556, 0.963883, -0.146278,
		39.157413, 31.845434, 32.466122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526848, 31.270275, 32.436924>,  <39.313206, 31.170715, 32.568516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526848, 31.270275, 32.436924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715931, 31.580889, 32.270290>,  <38.829380, 31.767258, 32.170311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715931, 31.580889, 32.270290>,  <38.526848, 31.270275, 32.436924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715931, 31.580889, 32.270290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329912, -0.282409, -0.900779,
		-0.817135, 0.563238, 0.122693,
		0.472703, 0.776536, -0.416586,
		38.857742, 31.813850, 32.145313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063786, 31.613087, 32.093403>,  <38.526848, 31.270275, 32.436924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063786, 31.613087, 32.093403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403645, 31.713243, 31.907757>,  <38.607559, 31.773338, 31.796370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403645, 31.713243, 31.907757>,  <38.063786, 31.613087, 32.093403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403645, 31.713243, 31.907757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436037, -0.161417, -0.885334,
		-0.296597, 0.954593, -0.027968,
		0.849648, 0.250392, -0.464114,
		38.658539, 31.788361, 31.768522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610340, 32.363068, 32.069912>,  <38.063786, 31.613087, 32.093403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610340, 32.363068, 32.069912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255131, 32.524529, 32.157986>,  <37.042004, 32.621403, 32.210831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255131, 32.524529, 32.157986>,  <37.610340, 32.363068, 32.069912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255131, 32.524529, 32.157986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378437, 0.369646, 0.848615,
		0.261150, 0.836917, -0.481010,
		-0.888024, 0.403648, 0.220187,
		36.988724, 32.645622, 32.224041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687435, 33.047512, 32.318466>,  <37.610340, 32.363068, 32.069912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687435, 33.047512, 32.318466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.338921, 32.937450, 32.481018>,  <37.129810, 32.871414, 32.578548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.338921, 32.937450, 32.481018>,  <37.687435, 33.047512, 32.318466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338921, 32.937450, 32.481018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332294, 0.278612, 0.901086,
		-0.361156, 0.920146, -0.151321,
		-0.871290, -0.275150, 0.406381,
		37.077534, 32.854904, 32.602932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547962, 33.594189, 32.610645>,  <37.687435, 33.047512, 32.318466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547962, 33.594189, 32.610645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287533, 33.335602, 32.769737>,  <37.131275, 33.180450, 32.865192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.287533, 33.335602, 32.769737>,  <37.547962, 33.594189, 32.610645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287533, 33.335602, 32.769737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092876, 0.452216, 0.887060,
		-0.753311, 0.614481, -0.234384,
		-0.651073, -0.646463, 0.397730,
		37.092213, 33.141663, 32.889057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969055, 33.962997, 32.902615>,  <37.547962, 33.594189, 32.610645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969055, 33.962997, 32.902615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989826, 33.618637, 33.105064>,  <37.002289, 33.412022, 33.226532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.989826, 33.618637, 33.105064>,  <36.969055, 33.962997, 32.902615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989826, 33.618637, 33.105064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120012, 0.508512, 0.852651,
		-0.991414, 0.016468, 0.129722,
		0.051924, -0.860898, 0.506122,
		37.005402, 33.360367, 33.256901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625328, 34.125416, 33.440533>,  <36.969055, 33.962997, 32.902615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625328, 34.125416, 33.440533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809101, 33.791588, 33.562134>,  <36.919365, 33.591290, 33.635094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.809101, 33.791588, 33.562134>,  <36.625328, 34.125416, 33.440533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809101, 33.791588, 33.562134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125060, 0.399629, 0.908106,
		-0.879366, -0.379192, 0.287973,
		0.459429, -0.834572, 0.303999,
		36.946930, 33.541218, 33.653332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524609, 34.073029, 34.097603>,  <36.625328, 34.125416, 33.440533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524609, 34.073029, 34.097603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808903, 33.792202, 34.115295>,  <36.979481, 33.623707, 34.125912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808903, 33.792202, 34.115295>,  <36.524609, 34.073029, 34.097603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808903, 33.792202, 34.115295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212271, 0.273992, 0.938014,
		-0.670665, -0.657294, 0.343764,
		0.710739, -0.702064, 0.044233,
		37.022125, 33.581581, 34.128567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412357, 33.660030, 34.652466>,  <36.524609, 34.073029, 34.097603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412357, 33.660030, 34.652466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797523, 33.600258, 34.562607>,  <37.028622, 33.564396, 34.508690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797523, 33.600258, 34.562607>,  <36.412357, 33.660030, 34.652466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797523, 33.600258, 34.562607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263557, 0.342784, 0.901686,
		-0.057733, -0.927454, 0.369455,
		0.962915, -0.149430, -0.224647,
		37.086399, 33.555428, 34.495213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648235, 33.228180, 35.212727>,  <36.412357, 33.660030, 34.652466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648235, 33.228180, 35.212727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922379, 33.456123, 35.031376>,  <37.086864, 33.592888, 34.922565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.922379, 33.456123, 35.031376>,  <36.648235, 33.228180, 35.212727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922379, 33.456123, 35.031376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283379, 0.364812, 0.886909,
		0.670811, -0.736324, 0.088539,
		0.685353, 0.569858, -0.453379,
		37.127983, 33.627079, 34.895363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194309, 33.188969, 35.596245>,  <36.648235, 33.228180, 35.212727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194309, 33.188969, 35.596245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.263485, 33.522743, 35.386940>,  <37.304989, 33.723007, 35.261356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.263485, 33.522743, 35.386940>,  <37.194309, 33.188969, 35.596245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263485, 33.522743, 35.386940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147959, 0.503231, 0.851391,
		0.973756, -0.224658, -0.036435,
		0.172937, 0.834439, -0.523264,
		37.315365, 33.773075, 35.229961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716133, 33.521523, 35.837715>,  <37.194309, 33.188969, 35.596245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716133, 33.521523, 35.837715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560505, 33.839867, 35.652142>,  <37.467129, 34.030872, 35.540798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560505, 33.839867, 35.652142>,  <37.716133, 33.521523, 35.837715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560505, 33.839867, 35.652142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211881, 0.567424, 0.795699,
		0.896509, 0.211286, -0.389396,
		-0.389072, 0.795857, -0.463933,
		37.443783, 34.078625, 35.512962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167660, 34.071804, 36.083733>,  <37.716133, 33.521523, 35.837715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167660, 34.071804, 36.083733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840870, 34.251217, 35.938747>,  <37.644798, 34.358864, 35.851757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840870, 34.251217, 35.938747>,  <38.167660, 34.071804, 36.083733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840870, 34.251217, 35.938747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061554, 0.557112, 0.828153,
		0.573385, 0.698887, -0.427535,
		-0.816971, 0.448534, -0.362459,
		37.595779, 34.385777, 35.830009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190639, 34.829285, 36.292015>,  <38.167660, 34.071804, 36.083733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190639, 34.829285, 36.292015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802105, 34.764935, 36.222012>,  <37.568985, 34.726326, 36.180012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802105, 34.764935, 36.222012>,  <38.190639, 34.829285, 36.292015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802105, 34.764935, 36.222012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234063, 0.518767, 0.822250,
		-0.041490, 0.839643, -0.541552,
		-0.971336, -0.160872, -0.175005,
		37.510704, 34.716671, 36.169510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867092, 35.487438, 36.459373>,  <38.190639, 34.829285, 36.292015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867092, 35.487438, 36.459373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569775, 35.220284, 36.444183>,  <37.391384, 35.059990, 36.435070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569775, 35.220284, 36.444183>,  <37.867092, 35.487438, 36.459373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569775, 35.220284, 36.444183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443773, 0.449804, 0.775075,
		-0.500580, 0.592962, -0.630726,
		-0.743294, -0.667886, -0.037978,
		37.346786, 35.019917, 36.432789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218803, 35.848892, 36.456520>,  <37.867092, 35.487438, 36.459373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218803, 35.848892, 36.456520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132118, 35.478024, 36.578758>,  <37.080109, 35.255501, 36.652100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132118, 35.478024, 36.578758>,  <37.218803, 35.848892, 36.456520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132118, 35.478024, 36.578758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634800, 0.371651, 0.677425,
		-0.741664, -0.047185, -0.669110,
		-0.216711, -0.927172, 0.305593,
		37.067104, 35.199871, 36.670437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410461, 35.789822, 36.409870>,  <37.218803, 35.848892, 36.456520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410461, 35.789822, 36.409870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548916, 35.557663, 36.704716>,  <36.631989, 35.418369, 36.881622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548916, 35.557663, 36.704716>,  <36.410461, 35.789822, 36.409870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548916, 35.557663, 36.704716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555164, 0.506644, 0.659625,
		-0.756294, -0.637540, -0.146843,
		0.346140, -0.580392, 0.737110,
		36.652760, 35.383545, 36.925850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176487, 36.444279, 36.474804>,  <36.410461, 35.789822, 36.409870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176487, 36.444279, 36.474804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275845, 36.827114, 36.415108>,  <36.335461, 37.056816, 36.379292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275845, 36.827114, 36.415108>,  <36.176487, 36.444279, 36.474804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275845, 36.827114, 36.415108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353243, -0.053959, -0.933974,
		-0.901952, 0.284716, 0.324683,
		0.248398, 0.957092, -0.149242,
		36.350365, 37.114243, 36.370335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655308, 36.790035, 36.132637>,  <36.176487, 36.444279, 36.474804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655308, 36.790035, 36.132637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988007, 36.997059, 36.052319>,  <36.187626, 37.121273, 36.004128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988007, 36.997059, 36.052319>,  <35.655308, 36.790035, 36.132637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988007, 36.997059, 36.052319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319544, 0.150576, -0.935531,
		-0.453962, 0.842292, 0.290626,
		0.831751, 0.517563, -0.200794,
		36.237534, 37.152328, 35.992081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531761, 37.412136, 35.643932>,  <35.655308, 36.790035, 36.132637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531761, 37.412136, 35.643932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927757, 37.382854, 35.595665>,  <36.165356, 37.365284, 35.566704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927757, 37.382854, 35.595665>,  <35.531761, 37.412136, 35.643932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927757, 37.382854, 35.595665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091614, 0.317102, -0.943956,
		0.107366, 0.945562, 0.307222,
		0.989990, -0.073203, -0.120673,
		36.224754, 37.360893, 35.559464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779686, 37.996880, 35.278809>,  <35.531761, 37.412136, 35.643932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779686, 37.996880, 35.278809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048100, 37.708298, 35.210438>,  <36.209148, 37.535149, 35.169415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048100, 37.708298, 35.210438>,  <35.779686, 37.996880, 35.278809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048100, 37.708298, 35.210438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016222, 0.244773, -0.969445,
		0.741247, 0.647760, 0.175955,
		0.671036, -0.721452, -0.170929,
		36.249409, 37.491863, 35.159161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243713, 38.333035, 34.708027>,  <35.779686, 37.996880, 35.278809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243713, 38.333035, 34.708027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360744, 37.950550, 34.711140>,  <36.430962, 37.721058, 34.713009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360744, 37.950550, 34.711140>,  <36.243713, 38.333035, 34.708027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360744, 37.950550, 34.711140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121553, 0.029114, -0.992158,
		0.948485, 0.291229, 0.124749,
		0.292577, -0.956210, 0.007786,
		36.448517, 37.663689, 34.713474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757042, 38.262295, 34.202400>,  <36.243713, 38.333035, 34.708027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757042, 38.262295, 34.202400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655804, 37.879520, 34.259266>,  <36.595058, 37.649857, 34.293385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655804, 37.879520, 34.259266>,  <36.757042, 38.262295, 34.202400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655804, 37.879520, 34.259266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290101, -0.215254, -0.932474,
		0.922920, -0.194768, 0.332089,
		-0.253100, -0.956938, 0.142160,
		36.579872, 37.592438, 34.301914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345810, 37.858589, 33.848179>,  <36.757042, 38.262295, 34.202400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345810, 37.858589, 33.848179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018784, 37.628681, 33.862156>,  <36.822567, 37.490738, 33.870544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018784, 37.628681, 33.862156>,  <37.345810, 37.858589, 33.848179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018784, 37.628681, 33.862156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200891, -0.341574, -0.918134,
		0.539652, -0.743617, 0.394726,
		-0.817569, -0.574770, 0.034945,
		36.773514, 37.456249, 33.872639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574402, 37.255718, 33.606213>,  <37.345810, 37.858589, 33.848179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574402, 37.255718, 33.606213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176586, 37.247593, 33.565250>,  <36.937897, 37.242718, 33.540672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.176586, 37.247593, 33.565250>,  <37.574402, 37.255718, 33.606213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176586, 37.247593, 33.565250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103721, -0.303679, -0.947112,
		-0.011862, -0.952558, 0.304127,
		-0.994535, -0.020310, -0.102402,
		36.878227, 37.241501, 33.534531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564117, 36.617310, 33.182175>,  <37.574402, 37.255718, 33.606213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564117, 36.617310, 33.182175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216793, 36.810558, 33.137215>,  <37.008400, 36.926506, 33.110237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216793, 36.810558, 33.137215>,  <37.564117, 36.617310, 33.182175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216793, 36.810558, 33.137215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063956, -0.115668, -0.991227,
		-0.491880, -0.867882, 0.069537,
		-0.868311, 0.483117, -0.112401,
		36.956299, 36.955494, 33.103493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140747, 36.290829, 32.711113>,  <37.564117, 36.617310, 33.182175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140747, 36.290829, 32.711113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969051, 36.651318, 32.734924>,  <36.866032, 36.867611, 32.749210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969051, 36.651318, 32.734924>,  <37.140747, 36.290829, 32.711113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969051, 36.651318, 32.734924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065329, 0.034758, -0.997258,
		-0.900824, -0.431953, 0.043956,
		-0.429241, 0.901226, 0.059530,
		36.840279, 36.921684, 32.752785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752678, 36.225601, 32.229153>,  <37.140747, 36.290829, 32.711113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752678, 36.225601, 32.229153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.748386, 36.623672, 32.268143>,  <36.745811, 36.862514, 32.291538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.748386, 36.623672, 32.268143>,  <36.752678, 36.225601, 32.229153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748386, 36.623672, 32.268143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029843, 0.097759, -0.994762,
		-0.999497, -0.007759, -0.030748,
		-0.010724, 0.995180, 0.097478,
		36.745171, 36.922226, 32.297386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134136, 36.449650, 31.782625>,  <36.752678, 36.225601, 32.229153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134136, 36.449650, 31.782625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380306, 36.760803, 31.833460>,  <36.528008, 36.947495, 31.863960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380306, 36.760803, 31.833460>,  <36.134136, 36.449650, 31.782625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380306, 36.760803, 31.833460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026050, 0.141074, -0.989656,
		-0.787764, 0.612371, 0.066557,
		0.615426, 0.777882, 0.127085,
		36.564934, 36.994167, 31.871586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941666, 37.032150, 31.355371>,  <36.134136, 36.449650, 31.782625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941666, 37.032150, 31.355371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332264, 37.073006, 31.431295>,  <36.566624, 37.097519, 31.476851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332264, 37.073006, 31.431295>,  <35.941666, 37.032150, 31.355371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332264, 37.073006, 31.431295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191209, -0.003990, -0.981541,
		-0.099492, 0.994763, -0.023426,
		0.976494, 0.102135, 0.189810,
		36.625214, 37.103645, 31.488239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143410, 37.569050, 30.875334>,  <35.941666, 37.032150, 31.355371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143410, 37.569050, 30.875334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471527, 37.360260, 30.968851>,  <36.668396, 37.234985, 31.024961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471527, 37.360260, 30.968851>,  <36.143410, 37.569050, 30.875334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471527, 37.360260, 30.968851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135491, -0.219789, -0.966093,
		0.555665, 0.824155, -0.109568,
		0.820292, -0.521978, 0.233794,
		36.717613, 37.203667, 31.038990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703674, 37.782681, 30.461372>,  <36.143410, 37.569050, 30.875334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703674, 37.782681, 30.461372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798157, 37.417526, 30.594543>,  <36.854847, 37.198433, 30.674446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798157, 37.417526, 30.594543>,  <36.703674, 37.782681, 30.461372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798157, 37.417526, 30.594543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110896, -0.315061, -0.942570,
		0.965353, 0.259565, 0.026816,
		0.236210, -0.912887, 0.332930,
		36.869019, 37.143661, 30.694422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238377, 37.769020, 30.176504>,  <36.703674, 37.782681, 30.461372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238377, 37.769020, 30.176504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186821, 37.383926, 30.271608>,  <37.155888, 37.152870, 30.328671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186821, 37.383926, 30.271608>,  <37.238377, 37.769020, 30.176504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186821, 37.383926, 30.271608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094929, -0.250640, -0.963415,
		0.987105, -0.101606, 0.123697,
		-0.128892, -0.962734, 0.237762,
		37.148155, 37.095108, 30.342937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669933, 37.440601, 29.737785>,  <37.238377, 37.769020, 30.176504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669933, 37.440601, 29.737785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451790, 37.127636, 29.858065>,  <37.320904, 36.939857, 29.930233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451790, 37.127636, 29.858065>,  <37.669933, 37.440601, 29.737785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451790, 37.127636, 29.858065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109962, -0.422423, -0.899704,
		0.830959, -0.457595, 0.316407,
		-0.545358, -0.782410, 0.300698,
		37.288181, 36.892914, 29.948275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079506, 36.823524, 29.549749>,  <37.669933, 37.440601, 29.737785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079506, 36.823524, 29.549749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690525, 36.735493, 29.580452>,  <37.457134, 36.682674, 29.598873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690525, 36.735493, 29.580452>,  <38.079506, 36.823524, 29.549749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690525, 36.735493, 29.580452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043370, -0.494404, -0.868150,
		0.229012, -0.840909, 0.490332,
		-0.972457, -0.220083, 0.076754,
		37.398788, 36.669468, 29.603477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005951, 36.109520, 29.385183>,  <38.079506, 36.823524, 29.549749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005951, 36.109520, 29.385183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651608, 36.284084, 29.322187>,  <37.439003, 36.388821, 29.284389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651608, 36.284084, 29.322187>,  <38.005951, 36.109520, 29.385183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651608, 36.284084, 29.322187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074422, -0.468715, -0.880208,
		-0.457941, -0.768023, 0.447695,
		-0.885862, 0.436402, -0.157486,
		37.385849, 36.415009, 29.274940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527245, 35.571754, 29.217331>,  <38.005951, 36.109520, 29.385183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527245, 35.571754, 29.217331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.353645, 35.908165, 29.088133>,  <37.249485, 36.110012, 29.010614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.353645, 35.908165, 29.088133>,  <37.527245, 35.571754, 29.217331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353645, 35.908165, 29.088133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111832, -0.406038, -0.906988,
		-0.893948, -0.357506, 0.270272,
		-0.433994, 0.841025, -0.322997,
		37.223446, 36.160473, 28.991234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980423, 35.385704, 28.942036>,  <37.527245, 35.571754, 29.217331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980423, 35.385704, 28.942036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065014, 35.741161, 28.779264>,  <37.115768, 35.954437, 28.681601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065014, 35.741161, 28.779264>,  <36.980423, 35.385704, 28.942036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065014, 35.741161, 28.779264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213005, -0.364435, -0.906541,
		-0.953889, 0.278393, 0.112214,
		0.211480, 0.888642, -0.406930,
		37.128456, 36.007755, 28.657185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436745, 35.557190, 28.335564>,  <36.980423, 35.385704, 28.942036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436745, 35.557190, 28.335564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716255, 35.841183, 28.300615>,  <36.883961, 36.011578, 28.279646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716255, 35.841183, 28.300615>,  <36.436745, 35.557190, 28.335564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716255, 35.841183, 28.300615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114879, -0.009176, -0.993337,
		-0.706055, 0.704158, 0.075150,
		0.698777, 0.709984, -0.087372,
		36.925888, 36.054176, 28.274405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144737, 35.991310, 27.882296>,  <36.436745, 35.557190, 28.335564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144737, 35.991310, 27.882296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.537895, 36.062729, 27.864269>,  <36.773792, 36.105579, 27.853453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.537895, 36.062729, 27.864269>,  <36.144737, 35.991310, 27.882296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537895, 36.062729, 27.864269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068871, 0.129449, -0.989191,
		-0.170787, 0.975378, 0.139532,
		0.982898, 0.178550, -0.045067,
		36.832764, 36.116295, 27.850750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217636, 36.594021, 27.456118>,  <36.144737, 35.991310, 27.882296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217636, 36.594021, 27.456118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.573730, 36.412128, 27.445568>,  <36.787388, 36.302994, 27.439238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.573730, 36.412128, 27.445568>,  <36.217636, 36.594021, 27.456118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573730, 36.412128, 27.445568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049793, -0.039595, -0.997975,
		0.452762, 0.889750, -0.057891,
		0.890240, -0.454727, -0.026376,
		36.840801, 36.275711, 27.437654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522793, 36.856392, 26.905466>,  <36.217636, 36.594021, 27.456118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522793, 36.856392, 26.905466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731468, 36.523376, 26.979996>,  <36.856674, 36.323566, 27.024714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731468, 36.523376, 26.979996>,  <36.522793, 36.856392, 26.905466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731468, 36.523376, 26.979996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098356, -0.158253, -0.982488,
		0.847449, 0.530877, -0.000673,
		0.521686, -0.832542, 0.186326,
		36.887974, 36.273613, 27.035894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097530, 36.925228, 26.516888>,  <36.522793, 36.856392, 26.905466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097530, 36.925228, 26.516888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072575, 36.530285, 26.575184>,  <37.057602, 36.293320, 26.610161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072575, 36.530285, 26.575184>,  <37.097530, 36.925228, 26.516888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072575, 36.530285, 26.575184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023210, -0.144548, -0.989226,
		0.997782, -0.065100, -0.013899,
		-0.062389, -0.987354, 0.145739,
		37.053856, 36.234077, 26.618906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580219, 36.632961, 25.955494>,  <37.097530, 36.925228, 26.516888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580219, 36.632961, 25.955494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342865, 36.332615, 26.071491>,  <37.200451, 36.152409, 26.141090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342865, 36.332615, 26.071491>,  <37.580219, 36.632961, 25.955494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342865, 36.332615, 26.071491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259669, -0.162444, -0.951937,
		0.761884, -0.640167, -0.098584,
		-0.593384, -0.750865, 0.289995,
		37.164848, 36.107357, 26.158489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169796, 36.357246, 26.294907>,  <37.580219, 36.632961, 25.955494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169796, 36.357246, 26.294907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545902, 36.491615, 26.272757>,  <38.771564, 36.572235, 26.259466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545902, 36.491615, 26.272757>,  <38.169796, 36.357246, 26.294907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545902, 36.491615, 26.272757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000604, 0.164292, 0.986412,
		0.340453, -0.927451, 0.154681,
		0.940262, 0.335920, -0.055374,
		38.827980, 36.592392, 26.256145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501640, 36.139179, 26.843939>,  <38.169796, 36.357246, 26.294907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501640, 36.139179, 26.843939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739365, 36.439857, 26.729570>,  <38.882000, 36.620266, 26.660950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739365, 36.439857, 26.729570>,  <38.501640, 36.139179, 26.843939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739365, 36.439857, 26.729570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088926, 0.291919, 0.952300,
		0.799306, -0.591385, 0.106644,
		0.594308, 0.751696, -0.285922,
		38.917656, 36.665367, 26.643793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222786, 36.030190, 27.165703>,  <38.501640, 36.139179, 26.843939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222786, 36.030190, 27.165703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163975, 36.420818, 27.102848>,  <39.128689, 36.655197, 27.065136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163975, 36.420818, 27.102848>,  <39.222786, 36.030190, 27.165703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163975, 36.420818, 27.102848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019318, 0.161668, 0.986656,
		0.988943, 0.142031, -0.042635,
		-0.147028, 0.976571, -0.157136,
		39.119865, 36.713791, 27.055708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698738, 36.392971, 27.549883>,  <39.222786, 36.030190, 27.165703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698738, 36.392971, 27.549883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.462643, 36.709049, 27.483900>,  <39.320988, 36.898697, 27.444311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.462643, 36.709049, 27.483900>,  <39.698738, 36.392971, 27.549883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462643, 36.709049, 27.483900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112172, 0.282654, 0.952641,
		0.799400, 0.543778, -0.255470,
		-0.590235, 0.790198, -0.164956,
		39.285572, 36.946110, 27.434414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022659, 37.002193, 27.665565>,  <39.698738, 36.392971, 27.549883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022659, 37.002193, 27.665565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.640766, 37.107349, 27.721233>,  <39.411629, 37.170444, 27.754633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.640766, 37.107349, 27.721233>,  <40.022659, 37.002193, 27.665565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640766, 37.107349, 27.721233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156968, 0.047857, 0.986444,
		0.252668, 0.963638, -0.086956,
		-0.954736, 0.262892, 0.139168,
		39.354347, 37.186218, 27.762983>
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
